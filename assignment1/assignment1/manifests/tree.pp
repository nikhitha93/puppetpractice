class assignment1::tree($message='install packages based on respective OS family'){
    $package_name= $facts['os']['family']?{
        'Debian' => ['tree', 'git'],
        'RedHat' => 'tree'
    }
    package { '$package_name':
        ensure => installed,
        
    }
    service { "$package_name":
        ensure     => running,
        enable     => true,
        
    }
}