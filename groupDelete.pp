# 2. Write a script which will demonstrate User,Group Creation and Deletion.
# Group Deletion :

group { "sanaQ_Group":
  ensure => "absent",
}

'''OUTPUT :
[root@agent tmp]# grep sanaQ_Group /etc/group
[root@agent tmp]# 
'''
