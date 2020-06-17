000100200610      * Before runing set environment variables for Java 8, and so that the
000200200612      *    logger support classes can be located. See LOGSETUP REXX procedure.
000300200610
000400200610     H Option(*NoDebugIo:*SrcStmt:*ShowCpy)
000500200610     D Logger          PR                  ExtProc(*JAVA:
000600200610     D                                     'com.gallaspeed.ilelogger.IleLogger':
000700200609     D                                     'log')
000800200609     D                                     STATIC
000900200609     D   p_logLevel                    O   Class(*JAVA:'java.lang.String') CONST
001000200609     D   p_program                     O   Class(*JAVA:'java.lang.String') CONST
001100200609     D   p_procedure                   O   Class(*JAVA:'java.lang.String') CONST
001200200609     D   p_message                     O   Class(*JAVA:'java.lang.String') CONST
001300200609     D*
001400200609     D NewString       PR              O   ExtProc(*JAVA:
001500200609     D                                     'java.lang.String':
001600200609     D                                     *CONSTRUCTOR)
001700200609     D   p_bytes                   4096A   CONST VARYING
001800200609     D*
001900200609       //*********************************************************
002000200609       //Main Code
002100200609       //*********************************************************
002200200609
002300200609       Logger( NewString('FATAL') :
002400200611               NewString('AWG/LOGTEST') :
002500200609               NewString('MAIN') :
002600200609               NewString('Something about the burning deck') );
002700200609
002800200609       Logger( NewString('WARN') :
002900200611               NewString('AWG\LOGTEST') :
003000200609               NewString('MAIN') :
003100200609               NewString('I just thought you should know') );
003200200609
003300200609       Logger( NewString('INFO') :
003400200609               NewString('LOGTEST') :
003500200609               NewString('MAIN') :
003600200609               NewString('Does anybody really care') );
003700200609
003800200609       *inlr = *ON;
003900200609       RETURN;
004000200609
