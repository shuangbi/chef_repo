# Attributes for SFTP chroot server.
#
# Attributes:: openssh
# Cookbook:: sftp
# Author:: Greg Albrecht <gba@onbeep.com>
# Copyright:: Copyright 2014 OnBeep, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/OnBeep/cookbook-sftp
#


default['openssh']['server']['subsystem'] = 'sftp internal-sftp'
default['openssh']['server']['match'] = {
  'Group sftp' => {
    'ChrootDirectory' => '%h',
    'ForceCommand' => 'internal-sftp',
    'AllowTcpForwarding' => 'no'
  }
}
