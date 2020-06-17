000100200612     H
000200200612
000300200614     D qsnddtaq        PR                  extpgm('QSNDDTAQ')
000400200612     D   dtaq                        10A   options(*varsize) const
000500200612     D   lib                         10A   options(*varsize) const
000600200612     D   size                         5P 0 const
000700200614     D   data                      8500A   options(*varsize) const
000800200614
000900200614      *-------------------------------------------------------------------------
001000200614      * Prototypes
001100200614
001200200614     D getDataQueueEntry...
001300200614     D                 pr          8500    varying
001400200614     D   p_logType...
001500200614     D                               32    const varying
001600200614     D   p_loggingStructure...
001700200614     D                                     likeds(loggingStructure)
001800200614     D                                     const
001900200614
002000200614     D getTimeStamp...
002100200614     D                 pr            32    varying
002200200614
002300200614     D loggingStructure...
002400200614     D                 ds                  qualified
002500200614     D   program...
002600200614     D                               21    varying
002700200614     D   procedure...
002800200614     D                             4096    varying
002900200614     D   message...
003000200614     D                             4096    varying
003100200614     D data...
003200200614     D                 s           8500    varying
003300200614
003400200614       //*********************************************************
003500200609       //Main Code
003600200609       //*********************************************************
003700200609
003800200614       loggingStructure.program = 'AWG/LOGTEST';
003900200614       loggingStructure.procedure = 'MAIN';
004000200614       loggingStructure.message = 'Something about the burning deck';
004100200614       eval data = getDataQueueEntry('FATAL': loggingStructure);
004200200614
004300200614       QSNDDTAQ ('LOGGERTEST': 'AWG': %len(data): data);
004400200615
004500200615       QSNDDTAQ ('LOGGERTEST': 'AWG': 3: 'END');
004600200609
004700200609       *inlr = *ON;
004800200609       RETURN;
004900200614
005000200614      *=========================================================================
005100200614      *  Procedure log
005200200614      *
005300200614      *  Do the logging based on the log type and logging structure.
005400200614      *
005500200614      *  Parameters
005600200614      *
005700200614      *     p_logType - type of log entry.
005800200614      *
005900200614      *     p_loggingStructure - the related logging structure.
006000200614      ****************************************************************
006100200614     P getDataQueueEntry...
006200200614     P                 B
006300200614      *-------------------------------------------------------------------------
006400200614      * Procedure interface
006500200614
006600200614     D getDataQueueEntry...
006700200614     D                 pi          8500    varying
006800200614     D   p_logType...
006900200614     D                               32    const varying
007000200614     D   p_loggingStructure...
007100200614     D                                     likeds(loggingStructure)
007200200614     D                                     const
007300200614
007400200614      /Free
007500200614
007600200614       Return getTimeStamp() + ' | ' +
007700200614                  p_logType + ' | ' +
007800200614                  p_loggingStructure.program + ' | ' +
007900200614                  p_loggingStructure.procedure + ' | ' +
008000200614                  p_loggingStructure.message + ' |';
008100200614
008200200614      /End-Free
008300200614
008400200614     P getDataQueueEntry...
008500200614     P                 E
008600200614
008700200614      *=========================================================================
008800200614      *  Procedure getTimeStamp
008900200614      *
009000200614      *  Get the current time stamp in a standard character presentation
009100200614      *
009200200614      *  Return
009300200614      *
009400200614      *     Character represntation of the current time stamp
009500200614      ****************************************************************
009600200614     P getTimeStamp...
009700200614     P                 B
009800200614      *-------------------------------------------------------------------------
009900200614      * Procedure interface
010000200614
010100200614     D getTimeStamp...
010200200614     D                 pi            32    varying
010300200614
010400200614      /Free
010500200614
010600200614       Return %char(%timestamp() : *ISO);
010700200614
010800200614      /End-Free
010900200614
011000200614     P getTimeStamp...
011100200614     P                 E
