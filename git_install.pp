# 4.Write a script which will configure a git and clone some repository through it.
# Configuration of Git :
# puppet module install puppetlabs/git

include git
git::config{ "user.name":
  value => "sanaqureshi",
}
git::config{ "user.email":
  value => "qsanam8@gmail.com",
}

# Git Repository Cloning :
# puppet module install puppetlabs-vcsrepo

vcsrepo { "/tmp/git":
  ensure   => "present",
  provider => "git",
  source   => "https://github.com/sanaqureshi/MyPuppet.git",
}

''' OUTPUT :

[root@agent tmp]# git --version
git version 1.8.3.1
[root@agent puppet]# puppet agent -t
Info: Retrieving pluginfactsInfo: Retrieving plugin
Notice: /File[/var/lib/puppet/lib/puppet/provider/vcsrepo]/ensure: created
Notice: /File[/var/lib/puppet/lib/puppet/provider/vcsrepo/p4.rb]/ensure: defined content as '{md5}0fae3e6f0f13417d0fc8b21bc1bca706'
Notice: /File[/var/lib/puppet/lib/puppet/provider/vcsrepo.rb]/ensure: defined content as '{md5}6847be7631b6ed335162b60d6bb020d6'
Notice: /File[/var/lib/puppet/lib/puppet/provider/vcsrepo/bzr.rb]/ensure: defined content as '{md5}84406aa49dab4568c4b921f19e18ef09'
Notice: /File[/var/lib/puppet/lib/puppet/provider/vcsrepo/svn.rb]/ensure: defined content as '{md5}7cfce386054f05b71b313b8344930f16'
Notice: /File[/var/lib/puppet/lib/puppet/provider/vcsrepo/hg.rb]/ensure: defined content as '{md5}cafa00c310fbcd8470c125a87f9dde1f'
Notice: /File[/var/lib/puppet/lib/puppet/provider/vcsrepo/dummy.rb]/ensure: defined content as '{md5}4f4735047e53b95ee8562aae279a41d3'
Notice: /File[/var/lib/puppet/lib/puppet/type/vcsrepo.rb]/ensure: defined content as '{md5}64549c1b00b53b4f3f128b36993f6c59'
Notice: /File[/var/lib/puppet/lib/facter/vcsrepo_svn_ver.rb]/ensure: defined content as '{md5}8f5209cf9afdfb5f56f44a1aa64054c3'
Notice: /File[/var/lib/puppet/lib/puppet/provider/vcsrepo/git.rb]/ensure: defined content as '{md5}476abea766a2c9015647e1d8d4401753'
Notice: /File[/var/lib/puppet/lib/puppet/provider/vcsrepo/cvs.rb]/ensure: defined content as '{md5}d1120b8b82984f0a42d4700ecaed7142'
Info: Loading facts
Info: Caching catalog for agent.c.hardy-symbol-169914.internal
Info: Applying configuration version '1498640856'
Notice: /Stage[main]/Main/Vcsrepo[/tmp/git]/ensure: created
Notice: /Stage[main]/Main/Git::Config[user.name]/Git_config[user.name]/value: value changed 'qsanam8' to 'sanaqureshi'
Notice: Finished catalog run in 0.68 seconds
[root@agent puppet]# cd /tmp/
[root@agent tmp]# ls
File1.txt  git  ssh-MGTefUIQZ3  systemd-private-00d7c76b87324c0197a6f9f3a3a04141-ntpd.service-Cyylh4
[root@agent tmp]# cd git
[root@agent git]# ls
README.md
[root@agent git]# git config --list
user.email=qsanam8@gmail.com
user.name=sanaqureshicore.repositoryformatversion=0
core.filemode=true
core.bare=false
core.logallrefupdates=true
remote.origin.url=https://github.com/sanaqureshi/MyPuppet.gitremote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
branch.master.remote=origin
branch.master.merge=refs/heads/master
[root@agent git]# 

'''
