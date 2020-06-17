000100200612     H
000200200612
000300200614     D qsnddtaq        PR                  extpgm('QSNDDTAQ')
000400200612     D   dtaq                        10A   options(*varsize) const
000500200612     D   lib                         10A   options(*varsize) const
000600200612     D   size                         5P 0 const
000700200614     D   data                      8500A   options(*varsize) const
000800200614
000900200614       //*********************************************************
001000200609       //Main Code
001100200609       //*********************************************************
001200200614
001300200616       QSNDDTAQ ('ILELOGDTAQ': 'STTCQGPL': 3: 'END');
001400200609
001500200609       *inlr = *ON;
001600200609       RETURN;
