000100200611addenvvar = "ADDENVVAR LEVEL(*JOB)"
000200200611
000300200611addenvvar "ENVVAR(ILELOGGERROOT) VALUE('/QOpenSys/AwgTest/testdir')"
000400200611
000500200611command = addenvvar "ENVVAR(JAVA_HOME)"
000600200611command = command "VALUE('/QOpenSys/QIBM/ProdData/JavaVM/jdk80/64bit')"
000700200611command
000800200611
000900200611command = addenvvar "ENVVAR(CLASSPATH) VALUE("
001000200611command = command"'/QOpenSys/AwgTest/IleLogger.jar:"
001100200612command = command"/QIBM/ProdData/HTTP/Public/jt400/lib/jt400Native.jar:"
001200200611command = command"/QOpenSys/AwgTest/groovy-3.0.4.jar:"
001300200614command = command"/QOpenSys/AwgTest/groovy-datetime-3.0.4.jar:"
001400200611command = command"/QOpenSys/AwgTest/logback-classic-1.2.3.jar:"
001500200611command = command"/QOpenSys/AwgTest/logback-core-1.2.3.jar:"
001600200611command = command"/QOpenSys/AwgTest/slf4j-api-1.7.26.jar')"
001700200611command
