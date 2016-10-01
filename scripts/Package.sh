#echo off
export workspace=/Users/danhuang/Documents/workspace/Dan.Huang.SVC.miw.upm.es
export PATH=/Users/danhuang/Documents/workspace/apache-maven-3.3.9/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home
echo -----------------------------------------------
echo  ". (C) MIW"
echo -----------------------------------------------
echo .
cd $workspace
echo "============ mvn -ff clean test (profile: develop)=========================================="
echo .
mvn -ff clean test
if [ $? -gt 0 ] ; then
	echo .
	echo .
	echo .
	echo "######## ERRORES..."
else
	echo .
	echo ":: -Dmaven.test.skip=true. To skip running the tests for a particular project"
	echo "============ call mvn -Dmaven.test.skip=true package -Denvironment.type=preproduction (profile: preproduction) ================"
	echo .
	mvn -Dmaven.test.skip=true package -Denvironment.type=preproduction
	exit    
fi