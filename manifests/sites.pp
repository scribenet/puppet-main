node default {

  include sudo
  include ntp
  include apt
  include cron
  include htop
  include generaltools
  include monit

  cron::job{ 'updatedb':
    minute      => '*/1',
    hour        => '*',
    date        => '*',
    month       => '*',
    weekday     => '*',
    user        => 'root',
    command     => 'updatedb',
    environment => [ 'MAILTO=root', 'PATH="/usr/bin:/bin"' ];
  }

  apt::ppa { 'ppa:ondrej/php5': }
 
}