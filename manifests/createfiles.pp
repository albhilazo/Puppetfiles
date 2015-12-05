# Can be included using:
#
# class { 'mymodule::createfiles':
#     path_project => '/other/path'
# }

class mymodule::createfiles ($path_project = '/var/www/myproject')
{
    file { "${path_project}/index.php":
        ensure  => 'present',
        content => "Hello World. Operating System: ${operatingsystem} ${operatingsystemrelease}",
        mode    => '0644',
    }

    # Using source file
    file { "${path_project}/info.php":
        ensure => 'present',
        source => "puppet:///modules/mymodule/info.php",
        mode   => '0644',
    }
}