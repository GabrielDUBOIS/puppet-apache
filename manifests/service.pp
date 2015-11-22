class apache::service {
    notice('Lancement du service')
    service { 'apache2' :
        ensure => running,
    }
}
