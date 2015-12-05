class mymodule::time
{
    # Ensure time zone and region
    class { 'timezone':
        timezone => 'Europe/Andorra'
    }

    # NTP
    class { '::ntp':
        server => [ '1.es.pool.ntp.org', '2.europe.pool.ntp.org', '3.europe.pool.ntp.org' ]
    }
}