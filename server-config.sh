 sudo yum install java-1.8.0-openjdk-devel -y
 sudo yum install git -y
 sudo yum install maven -y
 if [ -d "preethid-addressbook" ]
 then
  echo 'repo is cloned'
  cd /home/ec2-user/preethid-addressbook
  git pull origin jenkins1
 else
  git clone https://github.com/Devopsvenkatesh/preethid-addressbook.git
 fi
 cd /home/ec2-user/preethid-addressbook
 mvn package