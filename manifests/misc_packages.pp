class mymodule::misc_packages
{
    # Install miscellaneous packages
    $misc_packages = [
        'sendmail','vim-enhanced','telnet','zip','unzip','screen',
        'libssh2','libssh2-devel','gcc','gcc-c++','autoconf','automake','postgresql-libs'
    ]

    package { $misc_packages: ensure => latest }
}