class firstmodule::apache{
    $package_name = $facts['os']['family']?{
        'Debian' => 'apache2',
        'RedHat' => 'httpd'
    }

    package { $package_name:
        ensure => installed,
    }
    service { $package_name:
        ensure     => running,
        enable     => true
    }
}