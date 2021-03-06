#!/bin/bash

set -e

FILES_BUILT=$(git diff --name-status HEAD~1 HEAD | grep '^[AM]' | grep 'Formula' | cut -f2)

[ -z "$FILES_BUILT" ] && echo "No formulae to bottle right now." && exit 0

echo "Collecting signatures for $FILES_BUILT"

pip install awscli

git config user.email "circleci@fishtownanalytics.com"
git config user.name "CircleCI Bottling Bot"

while read -r line; do
    FORMULA_NAME_WITH_RB_EXTENSION="${line/Formula\//}"
    FORMULA_NAME="${FORMULA_NAME_WITH_RB_EXTENSION/.rb/}"
    if [[ "$FORMULA_NAME" == "dbt" ]]; then
        FORMULA_VERSION=$(grep '^  url' Formula/dbt.rb | head -1 | sed 's#.*/dbt-\([0-9].*\)\.tar\.gz"#\1#')
        JSON_NAME="^dbt-${FORMULA_VERSION//./\.}_.*\.json"
        COMMIT_MSG="[BOT] dbt ${FORMULA_VERSION} bottled"
    else
        FORMULA_VERSION="${FORMULA_NAME/#dbt@/}"
        FORMULA_VERSION_NOHYPHEN="${FORMULA_VERSION/-/}"
        JSON_NAME="${FORMULA_NAME//./\.}-${FORMULA_VERSION_NOHYPHEN//./\.}.*\.json"
        COMMIT_MSG="[BOT] dbt ${FORMULA_NAME} bottled"

    fi
    [[ -z $FORMULA_NAME ]] && echo "No formula name found???" && exit 1

    echo "------ COLLECTING JSON FILES -------"
    [[ -e json ]] && rm -r json
    mkdir -p json
    JSON_FILES=$(python -m awscli s3 ls 's3://bottles.getdbt.com/' | awk '{print $4}' | grep "${JSON_NAME}")
    while read -r json_path; do
        echo "copying s3://bottles.getdbt.com/${json_path}"
        python -m awscli s3 cp "s3://bottles.getdbt.com/${json_path}" ./json/
    done <<< "$JSON_FILES"

    echo "------ WRITING BOTTLE HASHES -------"
    python ./.circleci/rewrite-formula.py "$line"

    echo "--------- COMMIT CHANGES -----------"
    git add $line
    git commit -m "${COMMIT_MSG}"
    git push

done <<< "$FILES_BUILT"

echo 'added BOT commits for all forumlae'
