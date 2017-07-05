# 2. Write a script which will demonstrate User,Group Creation and Deletion.
# Group Creation :

group { "sanaQ_Group":
  ensure => "present",
  gid => "2000",
  members => "sanaQ",
}

''' OUTPUT :
[root@agent tmp]# grep sanaQ_Group /etc/group
sanaQ_Group:x:2000:
'''

