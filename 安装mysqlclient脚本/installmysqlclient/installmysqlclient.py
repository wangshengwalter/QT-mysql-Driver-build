import subprocess

# Run the command with sudo privileges
subprocess.run(['sudo', 'apt-get', 'install', 'libmysql++-dev'])
subprocess.run(['sudo', 'apt-get', 'install', 'libmysqlclient-dev'])
subprocess.run(['sudo', 'apt-get', 'install', 'libmysqlcppconn-dev'])

# Copy the file to #distination folder
subprocess.run(['sudo', 'cp', 'libqsqlmysql.so', '/usr/lib/x86_64-linux-gnu/qt5/plugins/sqldrivers'])

