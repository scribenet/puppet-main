class htop {

  package { 'sudo':
    ensure => installed,
  }

  file { '/etc/sudoers':
    ensure  => file,
    source  => 'puppet:///modules/sudo/etc/sudoers',
    owner   => 'root',
    group   => 'root',
    mode    => '0440',
    require => Package['sudo'],
  }

}