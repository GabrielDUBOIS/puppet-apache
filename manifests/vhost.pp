class apache::vhost (
    $hisDocumentRoot = undef,
    $hisServerName = undef,
    $hisPublication = true
) inherits apache::params {
    file { "${hisDocumentRoot}":
        ensure  => directory,
        owner     => 'www-data',
        group     => 'www-data',
        mode    => '0644'
    }
    file { "${virtualConfDir}/${hisServerName}":
        ensure  => present,
        owner     => 'root',
        group     => 'root',
        mode    => '0640',
        source  => template(''),
    }
}
