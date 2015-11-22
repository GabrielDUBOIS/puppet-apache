class apache::install {
    notice ("Installation d'apache")
    class { 'apache::package': 
    } ->
    class { 'apache::config': 
    } ~>
    class { 'apache::service':
    }
}
