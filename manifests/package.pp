class apache::package {
    package { 'apache2' :
        ensure => present,
        install_options => '--assume-yes',
    }
}
