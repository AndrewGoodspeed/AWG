000100200611addenvvar = "ADDENVVAR LEVEL(*JOB)"
000200200611
000300200611addenvvar "ENVVAR(ILELOGGERROOT) VALUE('/QOpenSys/AwgTest/testdir')"
000400200611
000500200611command = addenvvar "ENVVAR(JAVA_HOME)"
000600200611command = command "VALUE('/QOpenSys/QIBM/ProdData/JavaVM/jdk80/64bit')"
000700200611command
000800200611
000900200611command = addenvvar "ENVVAR(CLASSPATH) VALUE("
001000200615command = command"'/QOpenSys/AwgTest/*.jar:"
001100200615command = command"/QIBM/ProdData/HTTP/Public/jt400/lib/jt400Native.jar')"
001200200611command
