file { "/tmp/File1.txt":
  ensure => "file",
  owner  => "root",
  group  => "root",
  mode   => "755",
  content => "Congratulations..!!!!
  Puppet has created this file....!!!!",
 }
 
 #import  'fileCreate.pp'
 import 'fileDelete.pp'
 
 #import 'userCreate.pp'
 import 'userDelete.pp'
 
 #import 'groupCreate.pp'
 import 'groupDelete.pp'
 
 import 'tomcat_install.pp'
 
 import 'git_install.pp'
 
