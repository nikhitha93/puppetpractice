#variable decleration
$package_name = "httpd"  

#array
# $package_name = ["httpd", "apache", "Welcome to Puppet"] 

#hashes
# $package_name= {
    
#     'redhat' => 'httpd',
#     'ubuntu' => 'apache',
#     'message' => 'Welcome to puppet'
# }

# $package_name = 'test'
# # $package_string = "This is puppet ${package_name}"

#Heredoc
# $package_multiple = @("START")
# This is puppet example
# today is Sat ${package_name}
# START
# #This is dummy line

# notify { $package_multiple: } 

package { $package_name:
    ensure => installed,    
}
service { $package_name:
    ensure     => running,
    enable     => true,
}