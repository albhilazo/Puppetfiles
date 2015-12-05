class mymodule::hosts
{
    # Edit /etc/hosts files
    host { 'localhost':
        ensure       => 'present',
        target       => '/etc/hosts',
        ip           => '127.0.0.1',
        host_aliases => [
            'mysql1',
            'memcached1'
        ]
    }
}