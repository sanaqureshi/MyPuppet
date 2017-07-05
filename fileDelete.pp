# 1.Write a script which will demonstrate File Creation and Deletion.
# File Deletion :

file { "/tmp/File2.txt":
  ensure => "absent", 
}

''' OUTPUT :
[root@agent tmp]# ls -la
total 12drwxrwxrwt. 11 root    root    4096 Jun 28 08:17 .
dr-xr-xr-x. 17 root    root    4096 Jun 28 06:26 ..
drwxr-xr-x.  3 root    root      19 Jun 20 19:24 .config
-rwxr-xr-x.  1 root    root      58 Jun 28 07:15 File1.txt
drwxrwxrwt.  2 root    root       6 Jun 20 19:22 .font-unix
drwxrwxrwt.  2 root    root       6 Jun 20 19:22 .ICE-unix
drwxr-----.  3 root    root      18 Jun 20 19:23 .pki
drwx------.  2 qsanam8 qsanam8   22 Jun 28 06:29 ssh-MGTefUIQZ3
drwx------.  3 root    root      16 Jun 28 06:26 systemd-private-00d7c76b87324c0197a6f9f3a3a04141-ntpd.service-Cyylh4
drwxrwxrwt.  2 root    root       6 Jun 20 19:22 .Test-unix
drwxrwxrwt.  2 root    root       6 Jun 20 19:22 .X11-unix
drwxrwxrwt.  2 root    root       6 Jun 20 19:22 .XIM-unix
[root@agent tmp]# cat File2.txt
cat: File2.txt: No such file or directory
[root@agent tmp]# 
'''
