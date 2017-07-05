# 2. Write a script which will demonstrate User,Group Creation and Deletion.
# User Deletion :

user { "sanaQ":
  ensure => "absent",
}

''' OUTPUT :
[root@agent tmp]# id sanaQ
id: sanaQ: no such user
'''
