class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC2+EnniAp0VvMmMj0TH2dkcQkWjXEbJI2ukpPIvxs0Twji8tMYcVxVfxYBUqrlB1sNgoezdmrMRUvOmgGNsm1LpNVLrMJ4K+l0lrhuFA/N5t+zohEqtleOr/BO+A3bSVhRv8SdX94b3wRpXSjDqYw4Z1EzZ/q9vooM5LZw/b1l4Qh8L1an4DuTdW/16cRV4VekBst8FSe/ovzyJp1tnzGawZ4M9QQdfiWb0Uc/GN+3gvaw7NpI7lpDLeGZxpMwuYUlH+BxoeaGhglvoSLf+DHFQFV2hNrIaN9kiAOMxBE0mgVULtILL1y6m/5qGwphUept6Ghg5LJJbAK41p+g9loH',
  }
}
