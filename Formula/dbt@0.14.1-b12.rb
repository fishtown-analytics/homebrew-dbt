class DbtAT0141B12 < Formula
  include Language::Python::Virtualenv

  desc "Data build tool"
  homepage "https://github.com/fishtown-analytics/dbt"
  url "https://test-files.pythonhosted.org/packages/bb/36/6ed81f1cbd3f9e0d458ddd98f44e156e2edb0e80e84b7c880a3428456b61/dbt-0.14.1b12.tar.gz"
  sha256 "1e689f032740e53f34073e232dc02b510ee6570052d684682d13e58dbcc8dbf9"
  revision 1

  bottle do
    root_url "http://bottles.getdbt.com"
    # bottle hashes + versions go here
  end

  depends_on "libffi"
  depends_on "openssl@1.1"
  depends_on "postgresql"
  depends_on "python"

  resource "dbt-bigquery" do # dbt-bigquery==0.14.1b12
    url "https://test-files.pythonhosted.org/packages/7e/c5/b12ef48d9e3cdf3d5a18a4a41ebeaa3f4b4d2d105980737dd386a94893ce/dbt-bigquery-0.14.1b12.tar.gz"
    sha256 "7c634b03988448438dd98a7b6732560a2d6d842f3f3d33c881afa5012832e319"
  end

  resource "dbt-core" do # dbt-core==0.14.1b12
    url "https://test-files.pythonhosted.org/packages/94/f8/f9f021342f1236bf4b782d268dc8feceb3fd9f0093df38a91bd2edf21df0/dbt-core-0.14.1b12.tar.gz"
    sha256 "2ff4715be3ee902ead677d7baf48a217b07586183226c2a223dac72a20e40ff3"
  end

  resource "dbt-postgres" do # dbt-postgres==0.14.1b12
    url "https://test-files.pythonhosted.org/packages/21/e4/0de39ca98e8cbd4988ad4f8d39b753c5731a18e8ca0726c6f3ace0414e41/dbt-postgres-0.14.1b12.tar.gz"
    sha256 "fb73f55f4016472b88fb1c220f6256c38c9c07036242e298eea39dbfbc240ecf"
  end

  resource "dbt-redshift" do # dbt-redshift==0.14.1b12
    url "https://test-files.pythonhosted.org/packages/ce/a1/944de8dc6d28cd44d8f201abeab17451364b4971af31ea595107046d4676/dbt-redshift-0.14.1b12.tar.gz"
    sha256 "611097aaa9e5957d96575628c4b21cb7614da42ba0780bfe90b4be62fca96277"
  end

  resource "dbt-snowflake" do # dbt-snowflake==0.14.1b12
    url "https://test-files.pythonhosted.org/packages/98/2d/fc6b535438d0f95fc31107c54d86f63d047d2c1e3f79721baa416ee968b4/dbt-snowflake-0.14.1b12.tar.gz"
    sha256 "cbfabb25b621a846e00c6b5b01a0996133b965b14d2df2f6aa68de42a8b2c60c"
  end

  resource "agate" do # agate==1.6.1
    url "https://files.pythonhosted.org/packages/d4/1c/99fb34c81c68012c71e8d35a1f16a6b25952322e23c911c81327c8464be8/agate-1.6.1.tar.gz"
    sha256 "c93aaa500b439d71e4a5cf088d0006d2ce2c76f1950960c8843114e5f361dfd3"
  end

  resource "asn1crypto" do # asn1crypto==1.3.0
    url "https://files.pythonhosted.org/packages/9f/3d/8beae739ed8c1c8f00ceac0ab6b0e97299b42da869e24cf82851b27a9123/asn1crypto-1.3.0.tar.gz"
    sha256 "5a215cb8dc12f892244e3a113fe05397ee23c5c4ca7a69cd6e69811755efc42d"
  end

  resource "attrs" do # attrs==19.3.0
    url "https://files.pythonhosted.org/packages/98/c3/2c227e66b5e896e15ccdae2e00bbc69aa46e9a8ce8869cc5fa96310bf612/attrs-19.3.0.tar.gz"
    sha256 "f7b7ce16570fe9965acd6d30101a28f62fb4a7f9e926b3bbc9b61f8b04247e72"
  end

  resource "azure-common" do # azure-common==1.1.25
    url "https://files.pythonhosted.org/packages/7e/c5/27ebe1f286036f0fda02274d57f3303d3e3cbac09e188b5faa47d3649488/azure-common-1.1.25.zip"
    sha256 "ce0f1013e6d0e9faebaf3188cc069f4892fc60a6ec552e3f817c1a2f92835054"
  end

  resource "azure-storage-blob" do # azure-storage-blob==2.1.0
    url "https://files.pythonhosted.org/packages/0e/76/bd6eadc0f2b481bcfb43c37caacf77372401fc013c1431861561b794e06a/azure-storage-blob-2.1.0.tar.gz"
    sha256 "b90323aad60f207f9f90a0c4cf94c10acc313c20b39403398dfba51f25f7b454"
  end

  resource "azure-storage-common" do # azure-storage-common==2.1.0
    url "https://files.pythonhosted.org/packages/48/12/e074fe454bc327fbe2a61e20d3260473ee4a0fd85387baf249dc83c8e774/azure-storage-common-2.1.0.tar.gz"
    sha256 "ccedef5c67227bc4d6670ffd37cec18fb529a1b7c3a5e53e4096eb0cf23dc73f"
  end

  resource "Babel" do # Babel==2.8.0
    url "https://files.pythonhosted.org/packages/34/18/8706cfa5b2c73f5a549fdc0ef2e24db71812a2685959cff31cbdfc010136/Babel-2.8.0.tar.gz"
    sha256 "1aac2ae2d0d8ea368fa90906567f5c08463d98ade155c0c4bfedd6a0f7160e38"
  end

  resource "boto3" do # boto3==1.11.17
    url "https://files.pythonhosted.org/packages/01/fd/b65e271fcf58b898d3288e217c400a9bebed6017dd5bd469140cef4d1ba9/boto3-1.11.17.tar.gz"
    sha256 "3f02c5ec585fe0c7c843026f0f3db3a7bb98a830072b0eb151456ed07ba8e46d"
  end

  resource "botocore" do # botocore==1.14.17
    url "https://files.pythonhosted.org/packages/09/e8/b32eeab0260a881bc73194550975c76a62b2aab01427cf0e0b1a22058030/botocore-1.14.17.tar.gz"
    sha256 "75c759fcd89c4b2c717b40c2bd43915716bf15cfb7fb5bfccdc9bd9f697ac75f"
  end

  resource "cachetools" do # cachetools==4.1.0
    url "https://files.pythonhosted.org/packages/30/62/88fda08df9053141647b6941141b71b4c2a23d0fabab485feb917428ab46/cachetools-4.1.0.tar.gz"
    sha256 "1d057645db16ca7fe1f3bd953558897603d6f0b9c51ed9d11eb4d071ec4e2aab"
  end

  resource "certifi" do # certifi==2020.4.5.1
    url "https://files.pythonhosted.org/packages/b8/e2/a3a86a67c3fc8249ed305fc7b7d290ebe5e4d46ad45573884761ef4dea7b/certifi-2020.4.5.1.tar.gz"
    sha256 "51fcb31174be6e6664c5f69e3e1691a2d72a1a12e90f872cbdb1567eb47b6519"
  end

  resource "cffi" do # cffi==1.13.2
    url "https://files.pythonhosted.org/packages/2d/bf/960e5a422db3ac1a5e612cb35ca436c3fc985ed4b7ed13a1b4879006f450/cffi-1.13.2.tar.gz"
    sha256 "599a1e8ff057ac530c9ad1778293c665cb81a791421f46922d80a86473c13346"
  end

  resource "chardet" do # chardet==3.0.4
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "colorama" do # colorama==0.4.3
    url "https://files.pythonhosted.org/packages/82/75/f2a4c0c94c85e2693c229142eb448840fba0f9230111faa889d1f541d12d/colorama-0.4.3.tar.gz"
    sha256 "e96da0d330793e2cb9485e9ddfd918d456036c7149416295932478192f4436a1"
  end

  resource "cryptography" do # cryptography==2.9.2
    url "https://files.pythonhosted.org/packages/56/3b/78c6816918fdf2405d62c98e48589112669f36711e50158a0c15d804c30d/cryptography-2.9.2.tar.gz"
    sha256 "a0c30272fb4ddda5f5ffc1089d7405b7a71b0b0f51993cb4e5dbb4590b2fc229"
  end

  resource "decorator" do # decorator==4.4.2
    url "https://files.pythonhosted.org/packages/da/93/84fa12f2dc341f8cf5f022ee09e109961055749df2d0c75c5f98746cfe6c/decorator-4.4.2.tar.gz"
    sha256 "e3a62f0520172440ca0dcc823749319382e377f37f140a0b99ef45fecb84bfe7"
  end

  resource "docutils" do # docutils==0.15.2
    url "https://files.pythonhosted.org/packages/93/22/953e071b589b0b1fee420ab06a0d15e5aa0c7470eb9966d60393ce58ad61/docutils-0.15.2.tar.gz"
    sha256 "a2aeea129088da402665e92e0b25b04b073c04b2dce4ab65caaa38b7ce2e1a99"
  end

  resource "google-api-core" do # google-api-core==1.16.0
    url "https://files.pythonhosted.org/packages/b9/c6/b9483b94e85e4088198bc99c807a6a458800d278ae49f79a0dee0cfdc171/google-api-core-1.16.0.tar.gz"
    sha256 "92e962a087f1c4b8d1c5c88ade1c1dfd550047dcffb320c57ef6a534a20403e2"
  end

  resource "google-auth" do # google-auth==1.16.1
    url "https://files.pythonhosted.org/packages/ea/a9/295c9a8604f8707d77e92a8e5d765da33e49648dfd156bc0e13efa4233da/google-auth-1.16.1.tar.gz"
    sha256 "2f1a6bc3031fc7cd0c1aeb225ad34febcb60268f71f5df75d5976dd20a52c002"
  end

  resource "google-cloud-bigquery" do # google-cloud-bigquery==1.24.0
    url "https://files.pythonhosted.org/packages/e0/3a/7719095d13947103bff842cee54b6b62fac499cbe18d32d9c15e316c642c/google-cloud-bigquery-1.24.0.tar.gz"
    sha256 "7ffcceed8becea20cb4ce4bdf9b924822780416ff1a9d497f9a1238a3f1442b1"
  end

  resource "google-cloud-core" do # google-cloud-core==1.3.0
    url "https://files.pythonhosted.org/packages/a8/b8/34847b0833ce80c078258e982510cf65a336fd3ec0d560e4ae546791fa9e/google-cloud-core-1.3.0.tar.gz"
    sha256 "878f9ad080a40cdcec85b92242c4b5819eeb8f120ebc5c9f640935e24fc129d8"
  end

  resource "google-resumable-media" do # google-resumable-media==0.5.1
    url "https://files.pythonhosted.org/packages/79/70/8d2afddae61b0a0189dbefcdcd024a4030c9c696ca3ea410e43498520ed9/google-resumable-media-0.5.1.tar.gz"
    sha256 "97155236971970382b738921f978a6f86a7b5a0b0311703d991e065d3cb55773"
  end

  resource "googleapis-common-protos" do # googleapis-common-protos==1.6.0
    url "https://files.pythonhosted.org/packages/eb/ee/e59e74ecac678a14d6abefb9054f0bbcb318a6452a30df3776f133886d7d/googleapis-common-protos-1.6.0.tar.gz"
    sha256 "e61b8ed5e36b976b487c6e7b15f31bb10c7a0ca7bd5c0e837f4afab64b53a0c6"
  end

  resource "hologram" do # hologram==0.0.7
    url "https://files.pythonhosted.org/packages/02/40/a6a701377a1fba764be5f8fd4b25e498d8fa061e74bba91f9836508c2c43/hologram-0.0.7.tar.gz"
    sha256 "89547367edfb8722262d35623aa79d13f3f26c4d77a1015fc8b81f779f50b732"
  end

  resource "idna" do # idna==2.8
    url "https://files.pythonhosted.org/packages/ad/13/eb56951b6f7950cadb579ca166e448ba77f9d24efc03edd7e55fa57d04b7/idna-2.8.tar.gz"
    sha256 "c357b3f628cf53ae2c4c05627ecc484553142ca23264e593d327bcde5e9c3407"
  end

  resource "ijson" do # ijson==2.6.1
    url "https://files.pythonhosted.org/packages/d0/12/3116e1d5752aa9d480eb58ae4b348d38c1aeaf792c5fbca22e44c27d4bf1/ijson-2.6.1.tar.gz"
    sha256 "75ebc60b23abfb1c97f475ab5d07a5ed725ad4bd1f58513d8b258c21f02703d0"
  end

  resource "importlib-metadata" do # importlib-metadata==1.6.0
    url "https://files.pythonhosted.org/packages/b4/1b/baab42e3cd64c9d5caac25a9d6c054f8324cdc38975a44d600569f1f7158/importlib_metadata-1.6.0.tar.gz"
    sha256 "34513a8a0c4962bc66d35b359558fd8a5e10cd472d37aec5f66858addef32c1e"
  end

  resource "isodate" do # isodate==0.6.0
    url "https://files.pythonhosted.org/packages/b1/80/fb8c13a4cd38eb5021dc3741a9e588e4d1de88d895c1910c6fc8a08b7a70/isodate-0.6.0.tar.gz"
    sha256 "2e364a3d5759479cdb2d37cce6b9376ea504db2ff90252a2e5b7cc89cc9ff2d8"
  end

  resource "Jinja2" do # Jinja2==2.11.2
    url "https://files.pythonhosted.org/packages/64/a7/45e11eebf2f15bf987c3bc11d37dcc838d9dc81250e67e4c5968f6008b6c/Jinja2-2.11.2.tar.gz"
    sha256 "89aab215427ef59c34ad58735269eb58b1a5808103067f7bb9d5836c651b3bb0"
  end

  resource "jmespath" do # jmespath==0.10.0
    url "https://files.pythonhosted.org/packages/3c/56/3f325b1eef9791759784aa5046a8f6a1aff8f7c898a2e34506771d3b99d8/jmespath-0.10.0.tar.gz"
    sha256 "b85d0567b8666149a93172712e68920734333c0ce7e89b78b3e987f71e5ed4f9"
  end

  resource "json-rpc" do # json-rpc==1.13.0
    url "https://files.pythonhosted.org/packages/43/5a/7c2ea59e622682fff34d5aa3b301aa9a10bb0dbf0120f85cd391e4badad8/json-rpc-1.13.0.tar.gz"
    sha256 "def0dbcf5b7084fc31d677f2f5990d988d06497f2f47f13024274cfb2d5d7589"
  end

  resource "jsonschema" do # jsonschema==3.1.1
    url "https://files.pythonhosted.org/packages/43/52/0a4dabd8d42efe6bb039d61731cb20a73d5425e29be16a7a2003b923e542/jsonschema-3.1.1.tar.gz"
    sha256 "2fa0684276b6333ff3c0b1b27081f4b2305f0a36cf702a23db50edb141893c3f"
  end

  resource "leather" do # leather==0.3.3
    url "https://files.pythonhosted.org/packages/a0/44/1acad8bfe958874c66825a4bdddbd277a549580b88c5daf3a4c128c521b0/leather-0.3.3.tar.gz"
    sha256 "076d1603b5281488285718ce1a5ce78cf1027fe1e76adf9c548caf83c519b988"
  end

  resource "Logbook" do # Logbook==1.5.3
    url "https://files.pythonhosted.org/packages/2f/d9/16ac346f7c0102835814cc9e5b684aaadea101560bb932a2403bd26b2320/Logbook-1.5.3.tar.gz"
    sha256 "66f454ada0f56eae43066f604a222b09893f98c1adc18df169710761b8f32fe8"
  end

  resource "MarkupSafe" do # MarkupSafe==1.1.1
    url "https://files.pythonhosted.org/packages/b9/2e/64db92e53b86efccfaea71321f597fa2e1b2bd3853d8ce658568f7a13094/MarkupSafe-1.1.1.tar.gz"
    sha256 "29872e92839765e546828bb7754a68c418d927cd064fd4708fab9fe9c8bb116b"
  end

  resource "minimal-snowplow-tracker" do # minimal-snowplow-tracker==0.0.2
    url "https://files.pythonhosted.org/packages/e4/9f/004f810169a48ed5c520279d98327e7793b6491f09d42cb2c5636c994f34/minimal-snowplow-tracker-0.0.2.tar.gz"
    sha256 "acabf7572db0e7f5cbf6983d495eef54081f71be392330eb3aadb9ccb39daaa4"
  end

  resource "more-itertools" do # more-itertools==8.3.0
    url "https://files.pythonhosted.org/packages/16/e8/b371710ad458e56b6c74b82352fdf1625e75c03511c66a75314f1084f057/more-itertools-8.3.0.tar.gz"
    sha256 "558bb897a2232f5e4f8e2399089e35aecb746e1f9191b6584a151647e89267be"
  end

  resource "networkx" do # networkx==2.4
    url "https://files.pythonhosted.org/packages/bf/63/7b579dd3b1c49ce6b7fd8f6f864038f255201410905dd183cf7f4a3845cf/networkx-2.4.tar.gz"
    sha256 "f8f4ff0b6f96e4f9b16af6b84622597b5334bf9cae8cf9b2e42e7985d5c95c64"
  end

  resource "oscrypto" do # oscrypto==1.2.0
    url "https://files.pythonhosted.org/packages/1e/da/11eb7141582415eca72d41f7d6075405f515303b21ba548fe492a26e300a/oscrypto-1.2.0.tar.gz"
    sha256 "2f53f50813ecc5114fd126b89766fabdb9448e0bb080814451cc4bb92acafca4"
  end

  resource "packaging" do # packaging==20.4
    url "https://files.pythonhosted.org/packages/55/fd/fc1aca9cf51ed2f2c11748fa797370027babd82f87829c7a8e6dbe720145/packaging-20.4.tar.gz"
    sha256 "4357f74f47b9c12db93624a82154e9b120fa8293699949152b22065d556079f8"
  end

  resource "parsedatetime" do # parsedatetime==2.6
    url "https://files.pythonhosted.org/packages/a8/20/cb587f6672dbe585d101f590c3871d16e7aec5a576a1694997a3777312ac/parsedatetime-2.6.tar.gz"
    sha256 "4cb368fbb18a0b7231f4d76119165451c8d2e35951455dfee97c62a87b04d455"
  end

  resource "pluggy" do # pluggy==0.13.1
    url "https://files.pythonhosted.org/packages/f8/04/7a8542bed4b16a65c2714bf76cf5a0b026157da7f75e87cc88774aa10b14/pluggy-0.13.1.tar.gz"
    sha256 "15b2acde666561e1298d71b523007ed7364de07029219b604cf808bfa1c765b0"
  end

  resource "protobuf" do # protobuf==3.11.3
    url "https://files.pythonhosted.org/packages/c9/d5/e6e789e50e478463a84bd1cdb45aa408d49a2e1aaffc45da43d10722c007/protobuf-3.11.3.tar.gz"
    sha256 "c77c974d1dadf246d789f6dad1c24426137c9091e930dbf50e0a29c1fcf00b1f"
  end

  resource "psycopg2-binary" do # psycopg2-binary==2.8.5
    url "https://files.pythonhosted.org/packages/97/00/ed4c82364741031d745867f83820d4f373aa891098a5785841850491c9ba/psycopg2-binary-2.8.5.tar.gz"
    sha256 "ccdc6a87f32b491129ada4b87a43b1895cf2c20fdb7f98ad979647506ffc41b6"
  end

  resource "py" do # py==1.8.1
    url "https://files.pythonhosted.org/packages/bd/8f/169d08dcac7d6e311333c96b63cbe92e7947778475e1a619b674989ba1ed/py-1.8.1.tar.gz"
    sha256 "5e27081401262157467ad6e7f851b7aa402c5852dbcb3dae06768434de5752aa"
  end

  resource "pyasn1" do # pyasn1==0.4.8
    url "https://files.pythonhosted.org/packages/a4/db/fffec68299e6d7bad3d504147f9094830b704527a7fc098b721d38cc7fa7/pyasn1-0.4.8.tar.gz"
    sha256 "aef77c9fb94a3ac588e87841208bdec464471d9871bd5050a287cc9a475cd0ba"
  end

  resource "pyasn1-modules" do # pyasn1-modules==0.2.8
    url "https://files.pythonhosted.org/packages/88/87/72eb9ccf8a58021c542de2588a867dbefc7556e14b2866d1e40e9e2b587e/pyasn1-modules-0.2.8.tar.gz"
    sha256 "905f84c712230b2c592c19470d3ca8d552de726050d1d1716282a1f6146be65e"
  end

  resource "pycparser" do # pycparser==2.20
    url "https://files.pythonhosted.org/packages/0f/86/e19659527668d70be91d0369aeaa055b4eb396b0f387a4f92293a20035bd/pycparser-2.20.tar.gz"
    sha256 "2d475327684562c3a96cc71adf7dc8c4f0565175cf86b6d7a404ff4c771f15f0"
  end

  resource "pycryptodomex" do # pycryptodomex==3.9.7
    url "https://files.pythonhosted.org/packages/7f/3c/80cfaec41c3a9d0f524fe29bca9ab22d02ac84b5bfd6e22ade97d405bdba/pycryptodomex-3.9.7.tar.gz"
    sha256 "50163324834edd0c9ce3e4512ded3e221c969086e10fdd5d3fdcaadac5e24a78"
  end

  resource "PyJWT" do # PyJWT==1.7.1
    url "https://files.pythonhosted.org/packages/2f/38/ff37a24c0243c5f45f5798bd120c0f873eeed073994133c084e1cf13b95c/PyJWT-1.7.1.tar.gz"
    sha256 "8d59a976fb773f3e6a39c85636357c4f0e242707394cadadd9814f5cbaa20e96"
  end

  resource "pyOpenSSL" do # pyOpenSSL==19.1.0
    url "https://files.pythonhosted.org/packages/0d/1d/6cc4bd4e79f78be6640fab268555a11af48474fac9df187c3361a1d1d2f0/pyOpenSSL-19.1.0.tar.gz"
    sha256 "9a24494b2602aaf402be5c9e30a0b82d4a5c67528fe8fb475e3f3bc00dd69507"
  end

  resource "pyparsing" do # pyparsing==2.4.7
    url "https://files.pythonhosted.org/packages/c1/47/dfc9c342c9842bbe0036c7f763d2d6686bcf5eb1808ba3e170afdb282210/pyparsing-2.4.7.tar.gz"
    sha256 "c203ec8783bf771a155b207279b9bccb8dea02d8f0c9e5f8ead507bc3246ecc1"
  end

  resource "pyrsistent" do # pyrsistent==0.16.0
    url "https://files.pythonhosted.org/packages/9f/0d/cbca4d0bbc5671822a59f270e4ce3f2195f8a899c97d0d5abb81b191efb5/pyrsistent-0.16.0.tar.gz"
    sha256 "28669905fe725965daa16184933676547c5bb40a5153055a8dee2a4bd7933ad3"
  end

  resource "pytest" do # pytest==5.4.3
    url "https://files.pythonhosted.org/packages/8f/c4/e4a645f8a3d6c6993cb3934ee593e705947dfafad4ca5148b9a0fde7359c/pytest-5.4.3.tar.gz"
    sha256 "7979331bfcba207414f5e1263b5a0f8f521d0f457318836a7355531ed1a4c7d8"
  end

  resource "pytest-logbook" do # pytest-logbook==1.2.0
    url "https://files.pythonhosted.org/packages/d0/1a/d3d5c361d6c5030ea2b0165081cb43e95d9e1624065dc383fb1cf35f4792/pytest-logbook-1.2.0.tar.gz"
    sha256 "9454453230989a3d5149689c3449445554808d429b651a3d89c4464054a4c2dc"
  end

  resource "python-dateutil" do # python-dateutil==2.8.1
    url "https://files.pythonhosted.org/packages/be/ed/5bbc91f03fa4c839c4c7360375da77f9659af5f7086b7a7bdda65771c8e0/python-dateutil-2.8.1.tar.gz"
    sha256 "73ebfe9dbf22e832286dafa60473e4cd239f8592f699aa5adaf10050e6e1823c"
  end

  resource "python-slugify" do # python-slugify==4.0.0
    url "https://files.pythonhosted.org/packages/92/5f/7b84a0bba8a0fdd50c046f8b57dcf179dc16237ad33446079b7c484de04c/python-slugify-4.0.0.tar.gz"
    sha256 "a8fc3433821140e8f409a9831d13ae5deccd0b033d4744d94b31fea141bdd84c"
  end

  resource "pytimeparse" do # pytimeparse==1.1.8
    url "https://files.pythonhosted.org/packages/37/5d/231f5f33c81e09682708fb323f9e4041408d8223e2f0fb9742843328778f/pytimeparse-1.1.8.tar.gz"
    sha256 "e86136477be924d7e670646a98561957e8ca7308d44841e21f5ddea757556a0a"
  end

  resource "pytz" do # pytz==2020.1
    url "https://files.pythonhosted.org/packages/f4/f6/94fee50f4d54f58637d4b9987a1b862aeb6cd969e73623e02c5c00755577/pytz-2020.1.tar.gz"
    sha256 "c35965d010ce31b23eeb663ed3cc8c906275d6be1a34393a1d73a41febf4a048"
  end

  resource "PyYAML" do # PyYAML==5.3.1
    url "https://files.pythonhosted.org/packages/64/c2/b80047c7ac2478f9501676c988a5411ed5572f35d1beff9cae07d321512c/PyYAML-5.3.1.tar.gz"
    sha256 "b8eac752c5e14d3eca0e6dd9199cd627518cb5ec06add0de9d32baeee6fe645d"
  end

  resource "requests" do # requests==2.22.0
    url "https://files.pythonhosted.org/packages/01/62/ddcf76d1d19885e8579acb1b1df26a852b03472c0e46d2b959a714c90608/requests-2.22.0.tar.gz"
    sha256 "11e007a8a2aa0323f5a921e9e6a2d7e4e67d9877e85773fba9ba6419025cbeb4"
  end

  resource "rsa" do # rsa==4.0
    url "https://files.pythonhosted.org/packages/cb/d0/8f99b91432a60ca4b1cd478fd0bdf28c1901c58e3a9f14f4ba3dba86b57f/rsa-4.0.tar.gz"
    sha256 "1a836406405730121ae9823e19c6e806c62bbad73f890574fff50efa4122c487"
  end

  resource "s3transfer" do # s3transfer==0.3.3
    url "https://files.pythonhosted.org/packages/50/de/2b688c062107942486c81a739383b1432a72717d9a85a6a1a692f003c70c/s3transfer-0.3.3.tar.gz"
    sha256 "921a37e2aefc64145e7b73d50c71bb4f26f46e4c9f414dc648c6245ff92cf7db"
  end

  resource "six" do # six==1.15.0
    url "https://files.pythonhosted.org/packages/6b/34/415834bfdafca3c5f451532e8a8d9ba89a21c9743a0c59fbd0205c7f9426/six-1.15.0.tar.gz"
    sha256 "30639c035cdb23534cd4aa2dd52c3bf48f06e5f4a941509c8bafd8ce11080259"
  end

  resource "snowflake-connector-python" do # snowflake-connector-python==2.2.1
    url "https://files.pythonhosted.org/packages/35/98/a26c0a8cf710b89ab2f36eb406a0a79274ad1371e3514ca524f7477d11ce/snowflake-connector-python-2.2.1.tar.gz"
    sha256 "b47308eab40a21d8825d237229cfbf660f47ed3023b54951a80b61951473bdd5"
  end

  resource "sqlparse" do # sqlparse==0.3.1
    url "https://files.pythonhosted.org/packages/67/4b/253b6902c1526885af6d361ca8c6b1400292e649f0e9c95ee0d2e8ec8681/sqlparse-0.3.1.tar.gz"
    sha256 "e162203737712307dfe78860cc56c8da8a852ab2ee33750e33aeadf38d12c548"
  end

  resource "text-unidecode" do # text-unidecode==1.3
    url "https://files.pythonhosted.org/packages/ab/e2/e9a00f0ccb71718418230718b3d900e71a5d16e701a3dae079a21e9cd8f8/text-unidecode-1.3.tar.gz"
    sha256 "bad6603bb14d279193107714b288be206cac565dfa49aa5b105294dd5c4aab93"
  end

  resource "typing-extensions" do # typing-extensions==3.7.4.2
    url "https://files.pythonhosted.org/packages/6a/28/d32852f2af6b5ead85d396249d5bdf450833f3a69896d76eb480d9c5e406/typing_extensions-3.7.4.2.tar.gz"
    sha256 "79ee589a3caca649a9bfd2a8de4709837400dfa00b6cc81962a1e6a1815969ae"
  end

  resource "urllib3" do # urllib3==1.25.9
    url "https://files.pythonhosted.org/packages/05/8c/40cd6949373e23081b3ea20d5594ae523e681b6f472e600fbc95ed046a36/urllib3-1.25.9.tar.gz"
    sha256 "3018294ebefce6572a474f0604c2021e33b3fd8006ecd11d62107a5d2a963527"
  end

  resource "wcwidth" do # wcwidth==0.2.3
    url "https://files.pythonhosted.org/packages/97/23/3c0fde825b1c6a015e7360e105da2bdf3034fe670ede8f03d21194c1b910/wcwidth-0.2.3.tar.gz"
    sha256 "edbc2b718b4db6cdf393eefe3a420183947d6aa312505ce6754516f458ff8830"
  end

  resource "Werkzeug" do # Werkzeug==0.16.1
    url "https://files.pythonhosted.org/packages/c3/1d/1c0761d9365d166dc9d882a48c437111d22b0df564d6d5768045d9a51fd0/Werkzeug-0.16.1.tar.gz"
    sha256 "b353856d37dec59d6511359f97f6a4b2468442e454bd1c98298ddce53cac1f04"
  end

  resource "zipp" do # zipp==3.1.0
    url "https://files.pythonhosted.org/packages/ce/8c/2c5f7dc1b418f659d36c04dec9446612fc7b45c8095cc7369dd772513055/zipp-3.1.0.tar.gz"
    sha256 "c599e4d75c98f6798c509911d08a22e6c021d074469042177c8c86fb92eefd96"
  end

  def install
    virtualenv_install_with_resources :using => "python3"
    bin.install_symlink "#{libexec}/bin/dbt" => "dbt"
  end

  test do
    (testpath/"dbt_project.yml").write(
      "{name: 'test', version: '0.0.1', profile: 'default'}",
    )
    (testpath/".dbt/profiles.yml").write(
      "{default: {outputs: {default: {type: 'postgres',
      threads: 1, host: 'localhost', port: 5432, user: 'root',
      pass: 'password', dbname: 'test', schema: 'test'}},
      target: 'default'}}",
    )
    (testpath/"models/test.sql").write("select * from test")
    system "#{bin}/dbt", "test"
  end
end
