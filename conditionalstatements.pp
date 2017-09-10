$package_name = $facts['os']['family']?{
    'Debian' => 'apache2',
    'RedHat' => 'httpd'
}

$pac_names = ['wget', 'git', 'vim']

$pac_names.each |$pac_name|{
    notify { $pac_name: } 
}