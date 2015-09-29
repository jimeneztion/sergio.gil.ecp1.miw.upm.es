@echo off


echo LANZANDO PACKAGE
echo Autor:Sergio Gil Jiménez


echo -----------------------------------------
echo .  Configurando variables del sistema
echo -----------------------------------------
set workspace=D:\PERSONAL\MASTER\Proyectos\workspace\sergio.gil.ecp1.miw.upm.es
set PATH=%PATH%C:\Program Files\Java\jdk1.8.0_51\bin;D:\PERSONAL\MASTER\Proyectos\apache-maven-3.3.3\bin
set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_51
set M2_HOME=D:\PERSONAL\MASTER\Proyectos\apache-maven-3.3.3

echo -----------------------------------------
echo Clean y test en el perfil develop y un package en el perfil preproduction . (C) MIW
echo -----------------------------------------
echo .
echo Workspace --- %workspace%
echo .
echo .

cd %workspace%
:: -ff, --fail-fast. Stop at first failure in reactorized builds. Línea de comentario
echo ============ mvn -ff clean test (profile: develop) =========================================================================
echo .
call mvn -ff clean test 
if errorLevel 1 goto errorDevelop


echo .
:: -Dmaven.test.skip=true. To skip running the tests for a particular project
echo ============ call mvn -Dmaven.test.skip=true install -Denvironment.type=preproduction (profile: preproduction) ================
echo .
call mvn -Dmaven.test.skip=true install -Denvironment.type=preproduction
pause
exit

:errorDevelop
echo .
echo .
echo .
echo ########  ERRORES...
pause
