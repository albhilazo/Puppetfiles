class mymodule::apache
{
    $pathMyProject = '/var/www/myproject'

    class{ 'apache': }

    apache::vhost { 'myproject.dev':
        port => '80',
        docroot => $pathMyProject
    }

    # PHP module
    # include apache::mod::php
}