class monit {

  package { 'monit':
    ensure => installed,
  }
 
  file { '/etc/monit/monitrc':
    ensure  => file,
    source  => 'puppet:///modules/monit/etc/monit/monitrc',
    owner   => 'root',
    group   => 'root',
    mode    => '0444',
    require => Package['monit'],
    notify  => Service['monit'],
  }

  file { '/etc/monit/conf.d/ssh':
    ensure  => file,
    source  => 'puppet:///modules/monit/etc/monit/conf.d/ssh',
    owner   => 'root',
    group   => 'root',
    mode    => '0444',
    require => Package['monit'],
    notify  => Service['monit'],
  }

    file { '/etc/monit/conf.d/sendmail':
    ensure  => file,
    source  => 'puppet:///modules/monit/etc/monit/conf.d/sendmail',
    owner   => 'root',
    group   => 'root',
    mode    => '0444',
    require => Package['monit'],
    notify  => Service['monit'],
  }

  file { '/etc/monit/conf.d/nginx':
    ensure  => file,
    source  => 'puppet:///modules/monit/etc/monit/conf.d/nginx',
    owner   => 'root',
    group   => 'root',
    mode    => '0444',
    require => Package['monit'],
    notify  => Service['monit'],
  }

  file { '/etc/monit/conf.d/mysql':
    ensure  => file,
    source  => 'puppet:///modules/monit/etc/monit/conf.d/mysql',
    owner   => 'root',
    group   => 'root',
    mode    => '0444',
    require => Package['monit'],
    notify  => Service['monit'],
  }
 
  service { 'monit':
    ensure => 'running',
    enable => 'true',
  }

}