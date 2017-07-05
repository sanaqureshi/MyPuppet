# 3.Write a script which do the installation of tomcat server and deploy a war file through it.
# Installing Tomcat :
# puppet module install puppetlabs/java

class { "java":
  package => "java-1.8.0-openjdk-devel",
}

# puppet module install puppetlabs/tomcat
tomcat::install { "/opt/tomcat":
  source_url => "https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M21/bin/apache-tomcat-9.0.0.M21.tar.gz",
}
tomcat::instance { "default":
  catalina_home => "/opt/tomcat",
}

# Deploying war file :

tomcat::war { "sample.war":
  catalina_base => "/opt/tomcat",
  war_source    => "/opt/tomcat/webapps/docs/appdev/sample/sample.war",
}

''' OUTPUT :
'''
