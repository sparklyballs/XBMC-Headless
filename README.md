XBMC-Unraid-Docker
==================


Used wernerb's xbmc docker to create a more compact docker of headless gotham based xbmx and just adapted it a little to suit unraid environment.

Pull the git or download the zip and then to build 

docker build --rm=true -t $(whoami)/docker-xbmc-server .

to run 

docker run -d --net=host -e MYSQLip:\<yourhostip\> -e MYSQLport:\<yourhostport\> -e MYSQLuser:\<databaseusername\> -e MYSQLpass:\<databasepassword\> --privileged -v \<local folder for storing config\>:/root.xbmc $(whoami)/docker-xbmc-server


variables are

MYSQLip : MYSQL host, must be ipaddress and not hostname
MYSQLport  : port for MYSQL host (usually 3306)
MYSQLuser  : user for xbmc mysql 
MYSQLpass  : password for xbmc mysql

/root/.xbmc is config folder within the image.




