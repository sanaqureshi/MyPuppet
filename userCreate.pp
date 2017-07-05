# 2. Write a script which will demonstrate User,Group Creation and Deletion.
# User Creation :

user { "sanaQ":
  ensure => "present",
  uid => "507",
  shell => "/bin/bash",
  managehome => "true",
  }
  
''' OUTPUT :
[root@agent tmp]# id sanaQ
uid=507(sanaQ) gid=1002(sanaQ) groups=1002(sanaQ)
'''
  
