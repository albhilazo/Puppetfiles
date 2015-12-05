class mymodule::php56
{
    include ::yum::repo::remi
    package { 'libzip-last':
        require => Yumrepo['remi']
    }

    class { '::yum::repo::remi_php56':
        require => Package['libzip-last']
    }

    class { 'php':
        version => 'latest',
        require => Yumrepo['remi-php56']
    }

    php::module { [ 'devel', 'pear', 'xml', 'mbstring', 'pecl-memcache', 'soap' ]: }
}