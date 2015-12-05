class mymodule::mysql
{
    class { '::mysql::server':
        root_password => 'mypass'
    }

    mysql::db { 'mydb':
        user     => 'mydbuser',
        password => 'mydbuser'
    }

    mysql::db { 'myotherdb':
        user     => 'mydbuser',
        password => 'mydbuser',
        host     => 'localhost',
        grant    => ['SELECT', 'UPDATE']
    }
}