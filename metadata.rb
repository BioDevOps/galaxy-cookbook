name             'galaxy'
maintainer       "RIKEN ACCC"
maintainer_email "yo-tanaka@riken.jp"
license          "Apache 2.0"
description      "Installs and Configures for galaxy"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '2.0.0'

%w{ poise-python }.each do |cb|
    depends  cb
end
