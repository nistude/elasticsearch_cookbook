name              "elasticsearch"
maintainer        "Nikolay Sturm"
maintainer_email  "opscode@erisiandiscord.de"
license           "Apache 2.0"
description       "Install elasticsearch the open source, distributed, RESTful, search engine"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.0.5"

depends "java"
depends "runit"
