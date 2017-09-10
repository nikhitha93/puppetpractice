if $facts['os']['family'] == 'RedHat' {
    $package_name = "httpd"
}

elsif $facts['os']['family'] == 'Debian' {
    $package_name = "apache"
}

package { $package_name:
    ensure => installed,
    
}

service { $package_name:
    ensure     => running,
    enable     => true,
}

