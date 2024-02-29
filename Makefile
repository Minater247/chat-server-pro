all:
	javac -encoding utf-8 -g -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java
	java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore SemanticAnalysisHandlerTests

host: all
	java ChatServer 1998
