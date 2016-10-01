#echo off
export workspace=/Users/danhuang/Documents/workspace/Dan.Huang.SVC.miw.upm.es
export PATH=/Users/danhuang/Documents/workspace/apache-maven-3.3.9/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home
echo -----------------------------------------------
echo  ". (C) MIW"
echo -----------------------------------------------
echo .
cd $workspace
echo  "============ mvn clean test (profile: develop)================================"
echo .
mvn clean test
exit

