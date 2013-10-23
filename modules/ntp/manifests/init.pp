class ntp {

  package { 'ntp':
    ensure => installed,
  }
 
  file { '/etc/ntp.conf':
    ensure  => file,
    source  => 'puppet:///modules/ntp/etc/ntp.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '0444',
    require => Package['ntp'],
    notify  => Service['ntp'],
  }
 
  service { 'ntp':
    ensure => 'running',
    enable => 'true',
  }

}