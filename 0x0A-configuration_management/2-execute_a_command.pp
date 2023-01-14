#a manifest that kills a process named killmenow
exec { 'kill_killmeow':
command => 'kill $(pgrep killmenow)',
path    => '/usr/bin',
onlyif  => 'pgrep killmenow',
}
