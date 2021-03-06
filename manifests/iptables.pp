class mymodule::iptables
{
    # Accept HTTP
    firewall { '100 allow httpd':
        chain  => 'INPUT',
        state  => ['NEW'],
        dport  => '80',
        proto  => 'tcp',
        action => 'accept'
    }


    # Alternative: using file
    # Puppet will search in "files" folder
    package { 'iptables':
        ensure => present,
        before => File['/etc/sysconfig/iptables']
    }

    file { '/etc/sysconfig/iptables':
        ensure  => file,
        owner   => "root",
        group   => "root",
        mode    => 600,
        replace => true,
        source  => "puppet:///modules/mymodule/iptables.txt"
    }

    service { 'iptables':
        ensure     => running,
        enable     => true,
        subscribe  => File['/etc/sysconfig/iptables']
    }
}