name "test"
description "test test"
run_list [ 
	"recipe[cokkbook-name]", 
	"recipe[cookbook-name::recipe]",
]

default_attributes ({
    "php_version" 		=> '7.1',
    "document_root" 		=> '/var/www/'
  })