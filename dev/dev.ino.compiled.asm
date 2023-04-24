
.\dev.ino.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 53 08 	jmp	0x10a6	; 0x10a6 <__ctors_end>
       4:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
       8:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
       c:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      10:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      14:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      18:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      1c:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      20:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      24:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      28:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      2c:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      30:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      34:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      38:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      3c:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      40:	0c 94 91 08 	jmp	0x1122	; 0x1122 <__vector_16>
      44:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      48:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      4c:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      50:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      54:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      58:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      5c:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      60:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>
      64:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__bad_interrupt>

00000068 <__trampolines_end>:
      68:	00 00       	nop
      6a:	00 00       	nop
      6c:	18 1b       	sub	r17, r24
      6e:	1b 03       	fmul	r17, r19
      70:	1b 18       	sub	r1, r11
      72:	20 00       	.word	0x0020	; ????
      74:	03 06       	cpc	r0, r19
      76:	03 04       	cpc	r0, r3
      78:	04 24       	eor	r0, r4
      7a:	24 06       	cpc	r2, r20
      7c:	06 06       	cpc	r0, r22
      7e:	06 36       	cpi	r16, 0x66	; 102
      80:	04 04       	cpc	r0, r4
      82:	06 06       	cpc	r0, r22
      84:	06 06       	cpc	r0, r22
      86:	06 06       	cpc	r0, r22
      88:	06 1e       	adc	r0, r22
      8a:	1e 06       	cpc	r1, r30
      8c:	04 06       	cpc	r0, r20
      8e:	1e 1e       	adc	r1, r30
      90:	1e 06       	cpc	r1, r30
      92:	1e 1e       	adc	r1, r30
      94:	1e 1e       	adc	r1, r30
      96:	1e 06       	cpc	r1, r30
      98:	1e 1c       	adc	r1, r14
      9a:	04 04       	cpc	r0, r4
      9c:	04 04       	cpc	r0, r4
      9e:	1e 1b       	sub	r17, r30
      a0:	18 03       	fmul	r17, r16
      a2:	00 00       	nop
      a4:	18 18       	sub	r1, r8
      a6:	18 18       	sub	r1, r8
      a8:	00 00       	nop
      aa:	00 18       	sub	r0, r0
      ac:	00 00       	nop
      ae:	00 18       	sub	r0, r0
      b0:	1b 03       	fmul	r17, r19
      b2:	26 03       	mulsu	r18, r22
      b4:	06 04       	cpc	r0, r6
      b6:	24 04       	cpc	r2, r4
      b8:	04 24       	eor	r0, r4
      ba:	04 24       	eor	r0, r4
      bc:	04 04       	cpc	r0, r4
      be:	06 1e       	adc	r0, r22
      c0:	36 06       	cpc	r3, r22
      c2:	06 04       	cpc	r0, r6
      c4:	06 06       	cpc	r0, r22
      c6:	04 07       	cpc	r16, r20
      c8:	06 1c       	adc	r0, r6
      ca:	07 04       	cpc	r0, r7
      cc:	06 04       	cpc	r0, r6
      ce:	06 06       	cpc	r0, r22
      d0:	06 07       	cpc	r16, r22
      d2:	06 1e       	adc	r0, r22
      d4:	1e 1c       	adc	r1, r14
      d6:	06 06       	cpc	r0, r22
      d8:	06 1e       	adc	r0, r22
      da:	1e 06       	cpc	r1, r30
      dc:	04 04       	cpc	r0, r4
      de:	1c 1e       	adc	r1, r28
      e0:	03 06       	cpc	r0, r19
      e2:	03 00       	.word	0x0003	; ????
      e4:	00 18       	sub	r0, r0
      e6:	18 18       	sub	r1, r8
      e8:	00 00       	nop
      ea:	00 00       	nop
      ec:	00 00       	nop
      ee:	03 00       	.word	0x0003	; ????
      f0:	00 02       	muls	r16, r16
      f2:	23 06       	cpc	r2, r19
      f4:	03 04       	cpc	r0, r3
      f6:	04 04       	cpc	r0, r4
      f8:	04 04       	cpc	r0, r4
      fa:	04 04       	cpc	r0, r4
      fc:	04 06       	cpc	r0, r20
      fe:	04 04       	cpc	r0, r4
     100:	1e 3c       	cpi	r17, 0xCE	; 206
     102:	06 07       	cpc	r16, r22
     104:	04 04       	cpc	r0, r4
     106:	07 04       	cpc	r0, r7
     108:	04 06       	cpc	r0, r20
     10a:	04 04       	cpc	r0, r4
     10c:	04 04       	cpc	r0, r4
     10e:	04 04       	cpc	r0, r4
     110:	06 04       	cpc	r0, r6
     112:	07 07       	cpc	r16, r23
     114:	1e 06       	cpc	r1, r30
     116:	04 06       	cpc	r0, r20
     118:	06 06       	cpc	r0, r22
     11a:	06 04       	cpc	r0, r6
     11c:	06 04       	cpc	r0, r6
     11e:	04 04       	cpc	r0, r4
     120:	04 06       	cpc	r0, r20
     122:	06 03       	mulsu	r16, r22
     124:	03 00       	.word	0x0003	; ????
     126:	18 00       	.word	0x0018	; ????
     128:	00 00       	nop
     12a:	00 00       	nop
     12c:	00 03       	mulsu	r16, r16
     12e:	03 03       	mulsu	r16, r19
     130:	03 03       	mulsu	r16, r19
     132:	06 04       	cpc	r0, r6
     134:	04 04       	cpc	r0, r4
     136:	04 04       	cpc	r0, r4
     138:	06 06       	cpc	r0, r22
     13a:	04 24       	eor	r0, r4
     13c:	06 04       	cpc	r0, r6
     13e:	06 06       	cpc	r0, r22
     140:	06 18       	sub	r0, r6
     142:	36 04       	cpc	r3, r6
     144:	04 04       	cpc	r0, r4
     146:	04 04       	cpc	r0, r4
     148:	04 04       	cpc	r0, r4
     14a:	04 04       	cpc	r0, r4
     14c:	04 04       	cpc	r0, r4
     14e:	04 04       	cpc	r0, r4
     150:	04 06       	cpc	r0, r20
     152:	04 06       	cpc	r0, r20
     154:	07 06       	cpc	r0, r23
     156:	06 06       	cpc	r0, r22
     158:	06 04       	cpc	r0, r6
     15a:	04 06       	cpc	r0, r20
     15c:	06 06       	cpc	r0, r22
     15e:	06 04       	cpc	r0, r6
     160:	04 06       	cpc	r0, r20
     162:	00 06       	cpc	r0, r16
     164:	00 03       	mulsu	r16, r16
	...
     16e:	00 00       	nop
     170:	06 06       	cpc	r0, r22
     172:	03 04       	cpc	r0, r3
     174:	04 04       	cpc	r0, r4
     176:	24 24       	eor	r2, r4
     178:	06 06       	cpc	r0, r22
     17a:	26 24       	eor	r2, r6
     17c:	04 06       	cpc	r0, r20
     17e:	06 06       	cpc	r0, r22
     180:	00 06       	cpc	r0, r16
     182:	18 34       	cpi	r17, 0x48	; 72
     184:	06 06       	cpc	r0, r22
     186:	04 06       	cpc	r0, r20
     188:	04 04       	cpc	r0, r4
     18a:	04 04       	cpc	r0, r4
     18c:	04 04       	cpc	r0, r4
     18e:	04 04       	cpc	r0, r4
     190:	04 04       	cpc	r0, r4
     192:	06 06       	cpc	r0, r22
     194:	06 06       	cpc	r0, r22
     196:	06 06       	cpc	r0, r22
     198:	06 06       	cpc	r0, r22
     19a:	06 06       	cpc	r0, r22
     19c:	06 06       	cpc	r0, r22
     19e:	04 06       	cpc	r0, r20
     1a0:	04 04       	cpc	r0, r4
     1a2:	06 03       	mulsu	r16, r22
     1a4:	03 00       	.word	0x0003	; ????
     1a6:	00 00       	nop
     1a8:	00 00       	nop
     1aa:	03 00       	.word	0x0003	; ????
     1ac:	03 03       	mulsu	r16, r19
     1ae:	03 03       	mulsu	r16, r19
     1b0:	03 03       	mulsu	r16, r19
     1b2:	06 03       	mulsu	r16, r22
     1b4:	04 04       	cpc	r0, r4
     1b6:	24 34       	cpi	r18, 0x44	; 68
     1b8:	04 06       	cpc	r0, r20
     1ba:	26 34       	cpi	r18, 0x46	; 70
     1bc:	06 04       	cpc	r0, r6
     1be:	04 06       	cpc	r0, r20
     1c0:	06 06       	cpc	r0, r22
     1c2:	06 1e       	adc	r0, r22
     1c4:	3e 06       	cpc	r3, r30
     1c6:	06 06       	cpc	r0, r22
     1c8:	06 04       	cpc	r0, r6
     1ca:	06 04       	cpc	r0, r6
     1cc:	04 04       	cpc	r0, r4
     1ce:	04 04       	cpc	r0, r4
     1d0:	04 04       	cpc	r0, r4
     1d2:	04 07       	cpc	r16, r20
     1d4:	07 06       	cpc	r0, r23
     1d6:	06 04       	cpc	r0, r6
     1d8:	04 04       	cpc	r0, r4
     1da:	04 06       	cpc	r0, r20
     1dc:	06 06       	cpc	r0, r22
     1de:	06 06       	cpc	r0, r22
     1e0:	04 04       	cpc	r0, r4
     1e2:	03 06       	cpc	r0, r19
     1e4:	00 00       	nop
     1e6:	03 00       	.word	0x0003	; ????
     1e8:	00 00       	nop
     1ea:	00 03       	mulsu	r16, r16
     1ec:	03 03       	mulsu	r16, r19
     1ee:	03 03       	mulsu	r16, r19
     1f0:	06 06       	cpc	r0, r22
     1f2:	06 04       	cpc	r0, r6
     1f4:	04 04       	cpc	r0, r4
     1f6:	24 24       	eor	r2, r4
     1f8:	06 04       	cpc	r0, r6
     1fa:	06 24       	eor	r0, r6
     1fc:	04 04       	cpc	r0, r4
     1fe:	04 00       	.word	0x0004	; ????
     200:	06 04       	cpc	r0, r6
     202:	06 06       	cpc	r0, r22
     204:	18 36       	cpi	r17, 0x68	; 104
     206:	00 06       	cpc	r0, r16
     208:	06 07       	cpc	r16, r22
     20a:	06 06       	cpc	r0, r22
     20c:	06 06       	cpc	r0, r22
     20e:	04 04       	cpc	r0, r4
     210:	04 04       	cpc	r0, r4
     212:	06 06       	cpc	r0, r22
     214:	06 06       	cpc	r0, r22
     216:	06 06       	cpc	r0, r22
     218:	06 06       	cpc	r0, r22
     21a:	06 06       	cpc	r0, r22
     21c:	04 06       	cpc	r0, r20
     21e:	04 06       	cpc	r0, r20
     220:	04 04       	cpc	r0, r4
     222:	04 04       	cpc	r0, r4
     224:	03 03       	mulsu	r16, r19
	...
     22e:	03 03       	mulsu	r16, r19
     230:	03 03       	mulsu	r16, r19
     232:	06 03       	mulsu	r16, r22
     234:	04 04       	cpc	r0, r4
     236:	04 00       	.word	0x0004	; ????
     238:	04 04       	cpc	r0, r4
     23a:	04 04       	cpc	r0, r4
     23c:	04 06       	cpc	r0, r20
     23e:	00 06       	cpc	r0, r16
     240:	00 06       	cpc	r0, r16
     242:	06 06       	cpc	r0, r22
     244:	06 00       	.word	0x0006	; ????
     246:	06 06       	cpc	r0, r22
     248:	07 06       	cpc	r0, r23
     24a:	06 06       	cpc	r0, r22
     24c:	07 06       	cpc	r0, r23
     24e:	06 04       	cpc	r0, r6
     250:	04 06       	cpc	r0, r20
     252:	06 06       	cpc	r0, r22
     254:	06 06       	cpc	r0, r22
     256:	06 06       	cpc	r0, r22
     258:	06 06       	cpc	r0, r22
     25a:	06 06       	cpc	r0, r22
     25c:	06 04       	cpc	r0, r6
     25e:	06 04       	cpc	r0, r6
     260:	04 04       	cpc	r0, r4
     262:	04 04       	cpc	r0, r4
     264:	00 06       	cpc	r0, r16
     266:	03 00       	.word	0x0003	; ????
	...
     270:	03 06       	cpc	r0, r19
     272:	03 00       	.word	0x0003	; ????
     274:	03 04       	cpc	r0, r3
     276:	00 00       	nop
     278:	00 00       	nop
     27a:	04 00       	.word	0x0004	; ????
     27c:	04 04       	cpc	r0, r4
     27e:	04 04       	cpc	r0, r4
     280:	06 06       	cpc	r0, r22
     282:	04 06       	cpc	r0, r20
     284:	06 06       	cpc	r0, r22
     286:	06 06       	cpc	r0, r22
     288:	06 04       	cpc	r0, r6
     28a:	06 06       	cpc	r0, r22
     28c:	06 04       	cpc	r0, r6
     28e:	04 04       	cpc	r0, r4
     290:	04 04       	cpc	r0, r4
     292:	06 06       	cpc	r0, r22
     294:	06 06       	cpc	r0, r22
     296:	06 06       	cpc	r0, r22
     298:	06 06       	cpc	r0, r22
     29a:	06 06       	cpc	r0, r22
     29c:	04 04       	cpc	r0, r4
     29e:	04 06       	cpc	r0, r20
     2a0:	06 06       	cpc	r0, r22
     2a2:	04 04       	cpc	r0, r4
     2a4:	04 04       	cpc	r0, r4
     2a6:	06 03       	mulsu	r16, r22
	...
     2b0:	03 03       	mulsu	r16, r19
     2b2:	04 04       	cpc	r0, r4
     2b4:	04 00       	.word	0x0004	; ????
     2b6:	00 00       	nop
     2b8:	30 34       	cpi	r19, 0x40	; 64
     2ba:	00 20       	and	r0, r0
     2bc:	33 34       	cpi	r19, 0x43	; 67
     2be:	04 04       	cpc	r0, r4
     2c0:	04 00       	.word	0x0004	; ????
     2c2:	04 00       	.word	0x0004	; ????
     2c4:	07 06       	cpc	r0, r23
     2c6:	06 06       	cpc	r0, r22
     2c8:	00 06       	cpc	r0, r16
     2ca:	00 06       	cpc	r0, r16
     2cc:	04 06       	cpc	r0, r20
     2ce:	03 03       	mulsu	r16, r19
     2d0:	00 03       	mulsu	r16, r16
     2d2:	06 04       	cpc	r0, r6
     2d4:	06 06       	cpc	r0, r22
     2d6:	06 04       	cpc	r0, r6
     2d8:	06 06       	cpc	r0, r22
     2da:	06 04       	cpc	r0, r6
     2dc:	04 06       	cpc	r0, r20
     2de:	06 06       	cpc	r0, r22
     2e0:	06 04       	cpc	r0, r6
     2e2:	06 04       	cpc	r0, r6
     2e4:	04 03       	mulsu	r16, r20
	...
     2f2:	00 04       	cpc	r0, r0
     2f4:	1c 18       	sub	r1, r12
     2f6:	00 00       	nop
     2f8:	00 34       	cpi	r16, 0x40	; 64
     2fa:	04 00       	.word	0x0004	; ????
     2fc:	00 1c       	adc	r0, r0
     2fe:	34 04       	cpc	r3, r4
     300:	04 04       	cpc	r0, r4
     302:	00 04       	cpc	r0, r0
     304:	04 04       	cpc	r0, r4
     306:	06 04       	cpc	r0, r6
     308:	04 00       	.word	0x0004	; ????
     30a:	04 04       	cpc	r0, r4
     30c:	06 03       	mulsu	r16, r22
     30e:	00 00       	nop
     310:	03 00       	.word	0x0003	; ????
     312:	03 04       	cpc	r0, r3
     314:	04 06       	cpc	r0, r20
     316:	06 06       	cpc	r0, r22
     318:	06 04       	cpc	r0, r6
     31a:	06 06       	cpc	r0, r22
     31c:	04 06       	cpc	r0, r20
     31e:	06 04       	cpc	r0, r6
     320:	06 06       	cpc	r0, r22
     322:	04 04       	cpc	r0, r4
     324:	04 03       	mulsu	r16, r20
     326:	03 00       	.word	0x0003	; ????
	...
     330:	00 00       	nop
     332:	00 04       	cpc	r0, r0
     334:	03 00       	.word	0x0003	; ????
     336:	00 00       	nop
     338:	04 00       	.word	0x0004	; ????
     33a:	00 00       	nop
     33c:	00 00       	nop
     33e:	04 1c       	adc	r0, r4
     340:	30 04       	cpc	r3, r0
     342:	04 04       	cpc	r0, r4
     344:	04 04       	cpc	r0, r4
     346:	04 04       	cpc	r0, r4
     348:	04 06       	cpc	r0, r20
     34a:	04 06       	cpc	r0, r20
     34c:	03 03       	mulsu	r16, r19
     34e:	00 00       	nop
     350:	00 03       	mulsu	r16, r16
     352:	00 06       	cpc	r0, r16
     354:	04 06       	cpc	r0, r20
     356:	04 06       	cpc	r0, r20
     358:	06 06       	cpc	r0, r22
     35a:	04 04       	cpc	r0, r4
     35c:	06 04       	cpc	r0, r6
     35e:	06 06       	cpc	r0, r22
     360:	06 04       	cpc	r0, r6
     362:	06 04       	cpc	r0, r6
     364:	04 06       	cpc	r0, r20
     366:	03 00       	.word	0x0003	; ????
	...
     378:	04 00       	.word	0x0004	; ????
     37a:	00 00       	nop
     37c:	00 00       	nop
     37e:	00 04       	cpc	r0, r0
     380:	04 04       	cpc	r0, r4
     382:	04 04       	cpc	r0, r4
     384:	04 04       	cpc	r0, r4
     386:	04 04       	cpc	r0, r4
     388:	06 00       	.word	0x0006	; ????
     38a:	06 00       	.word	0x0006	; ????
     38c:	00 03       	mulsu	r16, r16
     38e:	00 00       	nop
     390:	00 03       	mulsu	r16, r16
     392:	03 00       	.word	0x0003	; ????
     394:	06 04       	cpc	r0, r6
     396:	06 04       	cpc	r0, r6
     398:	04 04       	cpc	r0, r4
     39a:	04 06       	cpc	r0, r20
     39c:	03 06       	cpc	r0, r19
     39e:	04 06       	cpc	r0, r20
     3a0:	06 06       	cpc	r0, r22
     3a2:	04 04       	cpc	r0, r4
     3a4:	04 04       	cpc	r0, r4
     3a6:	06 00       	.word	0x0006	; ????
	...
     3b0:	10 00       	.word	0x0010	; ????
	...
     3be:	00 04       	cpc	r0, r0
     3c0:	04 04       	cpc	r0, r4
     3c2:	04 14       	cp	r0, r4
     3c4:	06 04       	cpc	r0, r6
     3c6:	06 06       	cpc	r0, r22
     3c8:	00 06       	cpc	r0, r16
     3ca:	00 00       	nop
     3cc:	03 00       	.word	0x0003	; ????
     3ce:	03 00       	.word	0x0003	; ????
     3d0:	00 00       	nop
     3d2:	03 03       	mulsu	r16, r19
     3d4:	00 03       	mulsu	r16, r16
     3d6:	03 04       	cpc	r0, r3
     3d8:	04 00       	.word	0x0004	; ????
     3da:	06 03       	mulsu	r16, r22
     3dc:	03 03       	mulsu	r16, r19
     3de:	03 04       	cpc	r0, r3
     3e0:	04 04       	cpc	r0, r4
     3e2:	04 04       	cpc	r0, r4
     3e4:	04 04       	cpc	r0, r4
     3e6:	06 00       	.word	0x0006	; ????
     3e8:	00 00       	nop
     3ea:	00 00       	nop
     3ec:	10 30       	cpi	r17, 0x00	; 0
     3ee:	00 10       	cpse	r0, r0
     3f0:	00 00       	nop
     3f2:	04 00       	.word	0x0004	; ????
     3f4:	00 00       	nop
     3f6:	00 00       	nop
     3f8:	00 00       	nop
     3fa:	00 04       	cpc	r0, r0
     3fc:	04 04       	cpc	r0, r4
     3fe:	00 00       	nop
     400:	00 00       	nop
     402:	00 00       	nop
     404:	00 16       	cp	r0, r16
     406:	00 00       	nop
     408:	06 00       	.word	0x0006	; ????
     40a:	03 00       	.word	0x0003	; ????
     40c:	00 00       	nop
     40e:	03 00       	.word	0x0003	; ????
     410:	03 03       	mulsu	r16, r19
     412:	00 03       	mulsu	r16, r16
     414:	00 03       	mulsu	r16, r16
     416:	03 03       	mulsu	r16, r19
     418:	00 00       	nop
     41a:	03 03       	mulsu	r16, r19
     41c:	03 03       	mulsu	r16, r19
     41e:	03 04       	cpc	r0, r3
     420:	03 03       	mulsu	r16, r19
     422:	03 04       	cpc	r0, r3
     424:	04 03       	mulsu	r16, r20
     426:	04 04       	cpc	r0, r4
     428:	00 00       	nop
     42a:	10 00       	.word	0x0010	; ????
     42c:	13 03       	mulsu	r17, r19
     42e:	33 00       	.word	0x0033	; ????
     430:	03 03       	mulsu	r16, r19
     432:	04 00       	.word	0x0004	; ????
     434:	00 00       	nop
     436:	04 00       	.word	0x0004	; ????
     438:	00 04       	cpc	r0, r0
     43a:	04 00       	.word	0x0004	; ????
     43c:	00 00       	nop
     43e:	00 06       	cpc	r0, r16
     440:	00 00       	nop
     442:	00 30       	cpi	r16, 0x00	; 0
     444:	10 00       	.word	0x0010	; ????
     446:	30 00       	.word	0x0030	; ????
     448:	10 33       	cpi	r17, 0x30	; 48
     44a:	03 00       	.word	0x0003	; ????
     44c:	00 00       	nop
     44e:	03 03       	mulsu	r16, r19
     450:	13 00       	.word	0x0013	; ????
     452:	03 03       	mulsu	r16, r19
     454:	03 03       	mulsu	r16, r19
     456:	03 00       	.word	0x0003	; ????
     458:	03 03       	mulsu	r16, r19
     45a:	00 00       	nop
     45c:	00 00       	nop
     45e:	03 03       	mulsu	r16, r19
     460:	03 00       	.word	0x0003	; ????
     462:	00 00       	nop
     464:	03 03       	mulsu	r16, r19
     466:	03 03       	mulsu	r16, r19
     468:	19 19       	sub	r17, r9
     46a:	19 19       	sub	r17, r9
     46c:	03 00       	.word	0x0003	; ????
     46e:	00 08       	sbc	r0, r0
     470:	24 03       	mulsu	r18, r20
     472:	03 23       	and	r16, r19
     474:	00 25       	eor	r16, r0
     476:	24 26       	eor	r2, r20
     478:	06 36       	cpi	r16, 0x66	; 102
     47a:	06 05       	cpc	r16, r6
     47c:	05 05       	cpc	r16, r5
     47e:	25 3d       	cpi	r18, 0xD5	; 213
     480:	1e 1f       	adc	r17, r30
     482:	1f 1d       	adc	r17, r15
     484:	1d 1e       	adc	r1, r29
     486:	1e 1e       	adc	r1, r30
     488:	0e 07       	cpc	r16, r30
     48a:	27 0f       	add	r18, r23
     48c:	1e 1f       	adc	r17, r30
     48e:	07 06       	cpc	r0, r23
     490:	06 1d       	adc	r16, r6
     492:	05 05       	cpc	r16, r5
     494:	06 05       	cpc	r16, r6
     496:	05 0d       	add	r16, r5
     498:	05 26       	eor	r0, r21
     49a:	1e 1e       	adc	r1, r30
     49c:	1e 1e       	adc	r1, r30
     49e:	05 00       	.word	0x0005	; ????
     4a0:	03 18       	sub	r0, r3
     4a2:	1b 0b       	sbc	r17, r27
     4a4:	01 03       	mulsu	r16, r17
     4a6:	03 01       	movw	r0, r6
     4a8:	09 1b       	sub	r16, r25
     4aa:	1b 01       	movw	r2, r22
     4ac:	1b 1b       	sub	r17, r27
     4ae:	1b 03       	fmul	r17, r19
     4b0:	00 18       	sub	r0, r0
     4b2:	05 20       	and	r0, r5
     4b4:	05 26       	eor	r0, r21
     4b6:	06 26       	eor	r0, r22
     4b8:	06 06       	cpc	r0, r22
     4ba:	07 06       	cpc	r0, r23
     4bc:	1e 1e       	adc	r1, r30
     4be:	05 05       	cpc	r16, r5
     4c0:	3e 1e       	adc	r3, r30
     4c2:	1d 1e       	adc	r1, r29
     4c4:	1f 1f       	adc	r17, r31
     4c6:	1e 0e       	add	r1, r30
     4c8:	05 06       	cpc	r0, r21
     4ca:	0e 07       	cpc	r16, r30
     4cc:	0d 1f       	adc	r16, r29
     4ce:	0f 1f       	adc	r16, r31
     4d0:	1f 1e       	adc	r1, r31
     4d2:	1d 05       	cpc	r17, r13
     4d4:	05 07       	cpc	r16, r21
     4d6:	0d 0e       	add	r0, r29
     4d8:	0e 26       	eor	r0, r30
     4da:	05 1d       	adc	r16, r5
     4dc:	1f 1f       	adc	r17, r31
     4de:	06 05       	cpc	r16, r6
     4e0:	18 1d       	adc	r17, r8
     4e2:	08 0b       	sbc	r16, r24
     4e4:	0b 21       	and	r16, r11
     4e6:	01 21       	and	r16, r1
     4e8:	09 19       	sub	r16, r9
     4ea:	19 1b       	sub	r17, r25
     4ec:	19 1b       	sub	r17, r25
     4ee:	18 1b       	sub	r17, r24
     4f0:	1b 19       	sub	r17, r11
     4f2:	04 25       	eor	r16, r4
     4f4:	04 06       	cpc	r0, r20
     4f6:	06 06       	cpc	r0, r22
     4f8:	06 06       	cpc	r0, r22
     4fa:	1e 27       	eor	r17, r30
     4fc:	1e 1d       	adc	r17, r14
     4fe:	1e 1e       	adc	r1, r30
     500:	07 36       	cpi	r16, 0x67	; 103
     502:	1f 1e       	adc	r1, r31
     504:	1e 1e       	adc	r1, r30
     506:	0e 06       	cpc	r0, r30
     508:	1e 0d       	add	r17, r14
     50a:	06 06       	cpc	r0, r22
     50c:	0e 0e       	add	r0, r30
     50e:	07 0e       	add	r0, r23
     510:	1d 1e       	adc	r1, r29
     512:	1e 0e       	add	r1, r30
     514:	07 0d       	add	r16, r7
     516:	0e 0d       	add	r16, r14
     518:	0d 0d       	add	r16, r13
     51a:	1d 1e       	adc	r1, r29
     51c:	1d 1e       	adc	r1, r29
     51e:	1e 1e       	adc	r1, r30
     520:	1e 0d       	add	r17, r14
     522:	1d 08       	sbc	r1, r13
     524:	08 0b       	sbc	r16, r24
     526:	23 19       	sub	r18, r3
     528:	0b 0b       	sbc	r16, r27
     52a:	1b 1b       	sub	r17, r27
     52c:	1b 18       	sub	r1, r11
     52e:	18 18       	sub	r1, r8
     530:	18 1c       	adc	r1, r8
     532:	1d 26       	eor	r1, r29
     534:	06 06       	cpc	r0, r22
     536:	06 06       	cpc	r0, r22
     538:	05 0f       	add	r16, r21
     53a:	1e 36       	cpi	r17, 0x6E	; 110
     53c:	1d 1e       	adc	r1, r29
     53e:	1d 1d       	adc	r17, r13
     540:	1d 00       	.word	0x001d	; ????
     542:	3d 1e       	adc	r3, r29
     544:	1f 0e       	add	r1, r31
     546:	0e 06       	cpc	r0, r30
     548:	0e 0e       	add	r0, r30
     54a:	06 0e       	add	r0, r22
     54c:	06 08       	sbc	r0, r6
     54e:	0e 06       	cpc	r0, r30
     550:	0e 1d       	adc	r16, r14
     552:	0e 1f       	adc	r16, r30
     554:	0e 1e       	adc	r0, r30
     556:	0e 0d       	add	r16, r14
     558:	1d 0e       	add	r1, r29
     55a:	1e 1e       	adc	r1, r30
     55c:	1e 1d       	adc	r17, r14
     55e:	0d 1f       	adc	r16, r29
     560:	1e 1d       	adc	r17, r14
     562:	1b 1d       	adc	r17, r11
     564:	1b 18       	sub	r1, r11
     566:	19 19       	sub	r17, r9
     568:	09 09       	sbc	r16, r9
     56a:	1b 19       	sub	r17, r11
     56c:	1b 1b       	sub	r17, r27
     56e:	1b 1b       	sub	r17, r27
     570:	1d 1d       	adc	r17, r13
     572:	1c 1e       	adc	r1, r28
     574:	27 06       	cpc	r2, r23
     576:	06 36       	cpi	r16, 0x66	; 102
     578:	0d 1d       	adc	r16, r13
     57a:	07 36       	cpi	r16, 0x67	; 103
     57c:	1f 1d       	adc	r17, r15
     57e:	1d 1d       	adc	r17, r13
     580:	18 0d       	add	r17, r8
     582:	00 3e       	cpi	r16, 0xE0	; 224
     584:	0d 0f       	add	r16, r29
     586:	06 0f       	add	r16, r22
     588:	0e 06       	cpc	r0, r30
     58a:	06 0e       	add	r0, r22
     58c:	00 0e       	add	r0, r16
     58e:	08 06       	cpc	r0, r24
     590:	08 1e       	adc	r0, r24
     592:	1d 1d       	adc	r17, r13
     594:	1d 1d       	adc	r17, r13
     596:	0d 1e       	adc	r0, r29
     598:	0e 1d       	adc	r16, r14
     59a:	1d 1d       	adc	r17, r13
     59c:	1d 0d       	add	r17, r13
     59e:	1e 0d       	add	r17, r14
     5a0:	0e 1e       	adc	r0, r30
     5a2:	1d 1c       	adc	r1, r13
     5a4:	18 1b       	sub	r17, r24
     5a6:	0b 19       	sub	r16, r11
     5a8:	09 0b       	sbc	r16, r25
     5aa:	0c 0b       	sbc	r16, r28
     5ac:	1c 0c       	add	r1, r12
     5ae:	18 18       	sub	r1, r8
     5b0:	18 1c       	adc	r1, r8
     5b2:	1d 1c       	adc	r1, r13
     5b4:	1e 1e       	adc	r1, r30
     5b6:	06 2e       	mov	r0, r22
     5b8:	1e 1d       	adc	r17, r14
     5ba:	07 2e       	mov	r0, r23
     5bc:	1d 0e       	add	r1, r29
     5be:	1e 0e       	add	r1, r30
     5c0:	0e 0e       	add	r0, r30
     5c2:	0d 05       	cpc	r16, r13
     5c4:	36 0e       	add	r3, r22
     5c6:	0e 06       	cpc	r0, r30
     5c8:	0d 06       	cpc	r0, r29
     5ca:	05 0e       	add	r0, r21
     5cc:	06 06       	cpc	r0, r22
     5ce:	0e 08       	sbc	r0, r14
     5d0:	06 08       	sbc	r0, r6
     5d2:	1e 1e       	adc	r1, r30
     5d4:	1e 0f       	add	r17, r30
     5d6:	1f 0e       	add	r1, r31
     5d8:	0e 0f       	add	r16, r30
     5da:	1e 0d       	add	r17, r14
     5dc:	0e 0e       	add	r0, r30
     5de:	0d 0d       	add	r16, r13
     5e0:	1f 0e       	add	r1, r31
     5e2:	18 0d       	add	r17, r8
     5e4:	1b 0b       	sbc	r17, r27
     5e6:	08 0b       	sbc	r16, r24
     5e8:	03 09       	sbc	r16, r3
     5ea:	0b 08       	sbc	r0, r11
     5ec:	08 08       	sbc	r0, r8
     5ee:	0c 18       	sub	r0, r12
     5f0:	0d 1d       	adc	r16, r13
     5f2:	1f 0e       	add	r1, r31
     5f4:	1e 0e       	add	r1, r30
     5f6:	06 36       	cpi	r16, 0x66	; 102
     5f8:	0d 0e       	add	r0, r29
     5fa:	27 36       	cpi	r18, 0x67	; 103
     5fc:	0e 1e       	adc	r0, r30
     5fe:	0e 08       	sbc	r0, r14
     600:	0d 0e       	add	r0, r29
     602:	06 06       	cpc	r0, r22
     604:	00 3d       	cpi	r16, 0xD0	; 208
     606:	00 0f       	add	r16, r16
     608:	1f 06       	cpc	r1, r31
     60a:	05 0f       	add	r16, r21
     60c:	0f 07       	cpc	r16, r31
     60e:	06 0e       	add	r0, r22
     610:	00 0e       	add	r0, r16
     612:	0d 1f       	adc	r16, r29
     614:	0d 0d       	add	r16, r13
     616:	0e 0e       	add	r0, r30
     618:	0e 0e       	add	r0, r30
     61a:	0e 0d       	add	r16, r14
     61c:	0e 1d       	adc	r16, r14
     61e:	0e 0d       	add	r16, r14
     620:	0e 0e       	add	r0, r30
     622:	0e 0e       	add	r0, r30
     624:	0c 08       	sbc	r0, r12
     626:	0b 09       	sbc	r16, r11
     628:	03 0b       	sbc	r16, r19
     62a:	03 0b       	sbc	r16, r19
     62c:	0b 0b       	sbc	r16, r27
     62e:	0c 0c       	add	r0, r12
     630:	18 0c       	add	r1, r8
     632:	0d 1c       	adc	r0, r13
     634:	0e 0e       	add	r0, r30
     636:	26 24       	eor	r2, r6
     638:	0e 08       	sbc	r0, r14
     63a:	26 26       	eor	r2, r22
     63c:	0e 0d       	add	r16, r14
     63e:	08 0d       	add	r16, r8
     640:	08 0d       	add	r16, r8
     642:	0d 05       	cpc	r16, r13
     644:	0d 00       	.word	0x000d	; ????
     646:	06 05       	cpc	r16, r6
     648:	0e 05       	cpc	r16, r14
     64a:	0e 06       	cpc	r0, r30
     64c:	0e 0f       	add	r16, r30
     64e:	07 0e       	add	r0, r23
     650:	08 05       	cpc	r16, r8
     652:	07 0e       	add	r0, r23
     654:	0e 0e       	add	r0, r30
     656:	0d 0d       	add	r16, r13
     658:	0d 0d       	add	r16, r13
     65a:	0d 0d       	add	r16, r13
     65c:	1d 0e       	add	r1, r29
     65e:	1d 0e       	add	r1, r29
     660:	0e 0e       	add	r0, r30
     662:	0e 0e       	add	r0, r30
     664:	0b 0d       	add	r16, r11
     666:	08 09       	sbc	r16, r8
     668:	00 00       	nop
     66a:	08 0b       	sbc	r16, r24
     66c:	0b 0b       	sbc	r16, r27
     66e:	0b 0b       	sbc	r16, r27
     670:	0c 0d       	add	r16, r12
     672:	0c 09       	sbc	r16, r12
     674:	0c 08       	sbc	r0, r12
     676:	23 21       	and	r18, r3
     678:	08 08       	sbc	r0, r8
     67a:	20 24       	eor	r2, r0
     67c:	0e 0e       	add	r0, r30
     67e:	0e 0e       	add	r0, r30
     680:	05 0d       	add	r16, r5
     682:	0e 0e       	add	r0, r30
     684:	0d 05       	cpc	r16, r13
     686:	07 0d       	add	r16, r7
     688:	0d 06       	cpc	r0, r29
     68a:	05 0f       	add	r16, r21
     68c:	07 0e       	add	r0, r23
     68e:	06 00       	.word	0x0006	; ????
     690:	0e 06       	cpc	r0, r30
     692:	0f 0f       	add	r16, r31
     694:	0f 0d       	add	r16, r15
     696:	1d 1e       	adc	r1, r29
     698:	1e 0e       	add	r1, r30
     69a:	0d 0d       	add	r16, r13
     69c:	0e 0e       	add	r0, r30
     69e:	1e 0d       	add	r17, r14
     6a0:	0e 0d       	add	r16, r14
     6a2:	0e 06       	cpc	r0, r30
     6a4:	0e 0e       	add	r0, r30
     6a6:	0d 08       	sbc	r0, r13
     6a8:	00 00       	nop
     6aa:	00 08       	sbc	r0, r0
     6ac:	00 08       	sbc	r0, r0
     6ae:	08 08       	sbc	r0, r8
     6b0:	04 0c       	add	r0, r4
     6b2:	08 08       	sbc	r0, r8
     6b4:	08 0b       	sbc	r16, r24
     6b6:	21 20       	and	r2, r1
     6b8:	28 2e       	mov	r2, r24
     6ba:	24 01       	movw	r4, r8
     6bc:	28 2f       	mov	r18, r24
     6be:	06 06       	cpc	r0, r22
     6c0:	06 00       	.word	0x0006	; ????
     6c2:	0e 08       	sbc	r0, r14
     6c4:	06 05       	cpc	r16, r6
     6c6:	0d 0e       	add	r0, r29
     6c8:	00 06       	cpc	r0, r16
     6ca:	08 07       	cpc	r16, r24
     6cc:	06 0d       	add	r16, r6
     6ce:	0c 04       	cpc	r0, r12
     6d0:	0b 0c       	add	r0, r11
     6d2:	05 0e       	add	r0, r21
     6d4:	0f 1f       	adc	r16, r31
     6d6:	0f 0f       	add	r16, r31
     6d8:	0d 1d       	adc	r16, r13
     6da:	0d 0e       	add	r0, r29
     6dc:	0e 0d       	add	r16, r14
     6de:	0e 0e       	add	r0, r30
     6e0:	0d 0e       	add	r0, r29
     6e2:	0d 0e       	add	r0, r29
     6e4:	06 08       	sbc	r0, r6
     6e6:	0b 0b       	sbc	r16, r27
     6e8:	00 00       	nop
     6ea:	00 00       	nop
     6ec:	00 00       	nop
     6ee:	08 00       	.word	0x0008	; ????
     6f0:	08 01       	movw	r0, r16
     6f2:	09 1e       	adc	r0, r25
     6f4:	20 21       	and	r18, r0
     6f6:	00 00       	nop
     6f8:	20 28       	or	r2, r0
     6fa:	07 00       	.word	0x0007	; ????
     6fc:	23 26       	eor	r2, r19
     6fe:	2e 06       	cpc	r2, r30
     700:	06 06       	cpc	r0, r22
     702:	00 06       	cpc	r0, r16
     704:	06 0f       	add	r16, r22
     706:	07 06       	cpc	r0, r23
     708:	0e 08       	sbc	r0, r14
     70a:	06 0e       	add	r0, r22
     70c:	0d 04       	cpc	r0, r13
     70e:	0b 0b       	sbc	r16, r27
     710:	04 0b       	sbc	r16, r20
     712:	04 0e       	add	r0, r20
     714:	06 0d       	add	r16, r6
     716:	0d 0d       	add	r16, r13
     718:	0d 0e       	add	r0, r29
     71a:	0d 0d       	add	r16, r13
     71c:	07 05       	cpc	r16, r7
     71e:	0d 0e       	add	r0, r29
     720:	0f 0d       	add	r16, r15
     722:	0e 0e       	add	r0, r30
     724:	16 10       	cpse	r1, r6
     726:	00 13       	cpse	r16, r16
     728:	01 01       	movw	r0, r2
     72a:	01 01       	movw	r0, r2
     72c:	00 00       	nop
     72e:	00 00       	nop
     730:	00 00       	nop
     732:	19 00       	.word	0x0019	; ????
     734:	04 1b       	sub	r16, r20
     736:	01 00       	.word	0x0001	; ????
     738:	18 1c       	adc	r1, r8
     73a:	00 00       	nop
     73c:	1b 1c       	adc	r1, r11
     73e:	1e 26       	eor	r1, r30
     740:	2c 06       	cpc	r2, r28
     742:	06 07       	cpc	r16, r22
     744:	06 06       	cpc	r0, r22
     746:	0e 06       	cpc	r0, r30
     748:	07 05       	cpc	r16, r7
     74a:	0e 05       	cpc	r16, r14
     74c:	04 08       	sbc	r0, r4
     74e:	03 0b       	sbc	r16, r19
     750:	03 08       	sbc	r0, r3
     752:	03 05       	cpc	r16, r3
     754:	0f 0d       	add	r16, r15
     756:	0e 05       	cpc	r16, r14
     758:	0d 0d       	add	r16, r13
     75a:	06 06       	cpc	r0, r22
     75c:	0d 06       	cpc	r0, r29
     75e:	0d 05       	cpc	r16, r13
     760:	0d 16       	cp	r0, r29
     762:	05 16       	cp	r0, r21
     764:	06 05       	cpc	r16, r6
     766:	10 03       	mulsu	r17, r16
     768:	03 01       	movw	r0, r6
     76a:	01 01       	movw	r0, r2
     76c:	01 01       	movw	r0, r2
     76e:	00 00       	nop
     770:	00 00       	nop
     772:	18 19       	sub	r17, r8
     774:	18 01       	movw	r2, r16
     776:	00 00       	nop
     778:	00 1c       	adc	r0, r0
     77a:	00 19       	sub	r16, r0
     77c:	04 04       	cpc	r0, r4
     77e:	04 18       	sub	r0, r4
     780:	1e 00       	.word	0x001e	; ????
     782:	06 06       	cpc	r0, r22
     784:	06 06       	cpc	r0, r22
     786:	06 06       	cpc	r0, r22
     788:	05 03       	mulsu	r16, r21
     78a:	05 03       	mulsu	r16, r21
     78c:	03 04       	cpc	r0, r3
     78e:	0b 03       	fmul	r16, r19
     790:	03 00       	.word	0x0003	; ????
     792:	00 03       	mulsu	r16, r16
     794:	05 0e       	add	r0, r21
     796:	05 06       	cpc	r0, r21
     798:	06 06       	cpc	r0, r22
     79a:	06 0d       	add	r16, r6
     79c:	00 0d       	add	r16, r0
     79e:	06 0d       	add	r16, r6
     7a0:	15 05       	cpc	r17, r5
     7a2:	16 06       	cpc	r1, r22
     7a4:	07 06       	cpc	r0, r23
     7a6:	05 13       	cpse	r16, r21
     7a8:	03 03       	mulsu	r16, r19
     7aa:	01 01       	movw	r0, r2
     7ac:	01 01       	movw	r0, r2
     7ae:	01 11       	cpse	r16, r1
     7b0:	20 18       	sub	r2, r0
     7b2:	18 04       	cpc	r1, r8
     7b4:	00 04       	cpc	r0, r0
     7b6:	00 04       	cpc	r0, r0
     7b8:	04 00       	.word	0x0004	; ????
     7ba:	01 00       	.word	0x0001	; ????
     7bc:	04 00       	.word	0x0004	; ????
     7be:	04 00       	.word	0x0004	; ????
     7c0:	18 06       	cpc	r1, r24
     7c2:	16 27       	eor	r17, r22
     7c4:	05 06       	cpc	r0, r21
     7c6:	05 05       	cpc	r16, r5
     7c8:	03 05       	cpc	r16, r3
     7ca:	03 03       	mulsu	r16, r19
     7cc:	04 03       	mulsu	r16, r20
     7ce:	04 03       	mulsu	r16, r20
     7d0:	03 03       	mulsu	r16, r19
     7d2:	04 00       	.word	0x0004	; ????
     7d4:	03 00       	.word	0x0003	; ????
     7d6:	00 06       	cpc	r0, r16
     7d8:	06 03       	mulsu	r16, r22
     7da:	05 00       	.word	0x0005	; ????
     7dc:	00 00       	nop
     7de:	10 06       	cpc	r1, r16
     7e0:	06 06       	cpc	r0, r22
     7e2:	06 06       	cpc	r0, r22
     7e4:	06 06       	cpc	r0, r22
     7e6:	05 03       	mulsu	r16, r21
     7e8:	03 03       	mulsu	r16, r19
     7ea:	03 01       	movw	r0, r6
     7ec:	21 31       	cpi	r18, 0x11	; 17
     7ee:	11 21       	and	r17, r1
     7f0:	01 18       	sub	r0, r1
     7f2:	00 04       	cpc	r0, r0
     7f4:	00 04       	cpc	r0, r0
     7f6:	00 04       	cpc	r0, r0
     7f8:	04 00       	.word	0x0004	; ????
     7fa:	00 06       	cpc	r0, r16
     7fc:	00 06       	cpc	r0, r16
     7fe:	04 04       	cpc	r0, r4
     800:	03 1b       	sub	r16, r19
     802:	1b 13       	cpse	r17, r27
     804:	13 25       	eor	r17, r3
     806:	13 03       	mulsu	r17, r19
     808:	05 03       	mulsu	r16, r21
     80a:	00 03       	mulsu	r16, r16
     80c:	03 03       	mulsu	r16, r19
     80e:	04 03       	mulsu	r16, r20
     810:	00 00       	nop
     812:	03 00       	.word	0x0003	; ????
     814:	03 04       	cpc	r0, r3
     816:	00 00       	nop
     818:	03 03       	mulsu	r16, r19
     81a:	00 00       	nop
     81c:	00 14       	cp	r0, r0
     81e:	00 06       	cpc	r0, r16
     820:	00 00       	nop
     822:	00 06       	cpc	r0, r16
     824:	06 00       	.word	0x0006	; ????
     826:	06 06       	cpc	r0, r22
     828:	03 03       	mulsu	r16, r19
     82a:	23 13       	cpse	r18, r19
     82c:	20 14       	cp	r2, r0
     82e:	30 01       	movw	r6, r0
     830:	18 00       	.word	0x0018	; ????
     832:	00 04       	cpc	r0, r0
     834:	00 04       	cpc	r0, r0
     836:	00 04       	cpc	r0, r0
     838:	00 06       	cpc	r0, r16
     83a:	00 00       	nop
     83c:	00 00       	nop
     83e:	04 07       	cpc	r16, r20
     840:	03 03       	mulsu	r16, r19
     842:	1b 33       	cpi	r17, 0x3B	; 59
     844:	23 13       	cpse	r18, r19
     846:	33 13       	cpse	r19, r19
     848:	21 30       	cpi	r18, 0x01	; 1
     84a:	00 01       	movw	r0, r0
     84c:	03 03       	mulsu	r16, r19
     84e:	00 00       	nop
     850:	20 03       	mulsu	r18, r16
     852:	00 04       	cpc	r0, r0
     854:	00 04       	cpc	r0, r0
     856:	04 01       	movw	r0, r8
     858:	00 00       	nop
     85a:	03 03       	mulsu	r16, r19
     85c:	03 03       	mulsu	r16, r19
     85e:	00 00       	nop
     860:	00 03       	mulsu	r16, r16
     862:	03 01       	movw	r0, r6
     864:	00 04       	cpc	r0, r0
     866:	00 00       	nop
     868:	3a 3a       	cpi	r19, 0xAA	; 170
     86a:	3a 22       	and	r3, r26
     86c:	27 24       	eor	r2, r7
     86e:	24 14       	cp	r2, r4
     870:	00 27       	eor	r16, r16
     872:	17 07       	cpc	r17, r23
     874:	24 06       	cpc	r2, r20
     876:	34 05       	cpc	r19, r4
     878:	0d 2f       	mov	r16, r29
     87a:	1f 3e       	cpi	r17, 0xEF	; 239
     87c:	3e 3e       	cpi	r19, 0xEE	; 238
     87e:	06 2e       	mov	r0, r22
     880:	3f 3e       	cpi	r19, 0xEF	; 239
     882:	25 3e       	cpi	r18, 0xE5	; 229
     884:	26 27       	eor	r18, r22
     886:	3f 3f       	cpi	r19, 0xFF	; 255
     888:	17 25       	eor	r17, r7
     88a:	05 15       	cp	r16, r5
     88c:	3f 25       	eor	r19, r15
     88e:	27 27       	eor	r18, r23
     890:	27 3e       	cpi	r18, 0xE7	; 231
     892:	26 26       	eor	r2, r22
     894:	27 26       	eor	r2, r23
     896:	26 16       	cp	r2, r22
     898:	26 07       	cpc	r18, r22
     89a:	1f 27       	eor	r17, r31
     89c:	3f 27       	eor	r19, r31
     89e:	26 24       	eor	r2, r6
     8a0:	27 24       	eor	r2, r7
     8a2:	3f 17       	cp	r19, r31
     8a4:	22 27       	eor	r18, r18
     8a6:	27 22       	and	r2, r23
     8a8:	12 3b       	cpi	r17, 0xB2	; 178
     8aa:	3f 22       	and	r3, r31
     8ac:	27 3f       	cpi	r18, 0xF7	; 247
     8ae:	27 27       	eor	r18, r23
     8b0:	24 24       	eor	r2, r4
     8b2:	16 04       	cpc	r1, r6
     8b4:	26 07       	cpc	r18, r22
     8b6:	15 05       	cpc	r17, r5
     8b8:	0f 1d       	adc	r16, r15
     8ba:	3e 1f       	adc	r19, r30
     8bc:	3f 3f       	cpi	r19, 0xFF	; 255
     8be:	26 26       	eor	r2, r22
     8c0:	2f 3f       	cpi	r18, 0xFF	; 255
     8c2:	3e 27       	eor	r19, r30
     8c4:	3d 27       	eor	r19, r29
     8c6:	27 14       	cp	r2, r7
     8c8:	0e 25       	eor	r16, r14
     8ca:	14 0e       	add	r1, r20
     8cc:	16 3e       	cpi	r17, 0xE6	; 230
     8ce:	15 3d       	cpi	r17, 0xD5	; 213
     8d0:	3d 24       	eor	r3, r13
     8d2:	3e 26       	eor	r3, r30
     8d4:	26 26       	eor	r2, r22
     8d6:	16 17       	cp	r17, r22
     8d8:	17 07       	cpc	r17, r23
     8da:	26 3e       	cpi	r18, 0xE6	; 230
     8dc:	26 3e       	cpi	r18, 0xE6	; 230
     8de:	27 26       	eor	r2, r23
     8e0:	3c 3e       	cpi	r19, 0xEC	; 236
     8e2:	14 17       	cp	r17, r20
     8e4:	17 02       	muls	r17, r23
     8e6:	22 02       	muls	r18, r18
     8e8:	12 3a       	cpi	r17, 0xA2	; 162
     8ea:	3a 1f       	adc	r19, r26
     8ec:	3a 27       	eor	r19, r26
     8ee:	3c 3f       	cpi	r19, 0xFC	; 252
     8f0:	3f 3d       	cpi	r19, 0xDF	; 223
     8f2:	14 06       	cpc	r1, r20
     8f4:	24 27       	eor	r18, r20
     8f6:	0d 0f       	add	r16, r29
     8f8:	0d 0d       	add	r16, r13
     8fa:	3d 36       	cpi	r19, 0x6D	; 109
     8fc:	3f 3e       	cpi	r19, 0xEF	; 239
     8fe:	3f 3f       	cpi	r19, 0xFF	; 255
     900:	25 27       	eor	r18, r21
     902:	3d 3c       	cpi	r19, 0xCD	; 205
     904:	3d 3f       	cpi	r19, 0xFD	; 253
     906:	14 0f       	add	r17, r20
     908:	25 16       	cp	r2, r21
     90a:	0d 0d       	add	r16, r13
     90c:	15 15       	cp	r17, r5
     90e:	0e 15       	cp	r16, r14
     910:	3e 3d       	cpi	r19, 0xDE	; 222
     912:	3c 14       	cp	r3, r12
     914:	25 16       	cp	r2, r21
     916:	17 16       	cp	r1, r23
     918:	16 16       	cp	r1, r22
     91a:	3e 3f       	cpi	r19, 0xFE	; 254
     91c:	3e 3f       	cpi	r19, 0xFE	; 254
     91e:	3f 3f       	cpi	r19, 0xFF	; 255
     920:	3d 16       	cp	r3, r29
     922:	3e 14       	cp	r3, r14
     924:	14 17       	cp	r17, r20
     926:	03 3a       	cpi	r16, 0xA3	; 163
     928:	17 17       	cp	r17, r23
     92a:	3f 3f       	cpi	r19, 0xFF	; 255
     92c:	3f 3c       	cpi	r19, 0xCF	; 207
     92e:	3c 3c       	cpi	r19, 0xCC	; 204
     930:	3c 3c       	cpi	r19, 0xCC	; 204
     932:	3e 05       	cpc	r19, r14
     934:	27 25       	eor	r18, r7
     936:	0d 0d       	add	r16, r13
     938:	0e 15       	cp	r16, r14
     93a:	3d 3d       	cpi	r19, 0xDD	; 221
     93c:	3e 3f       	cpi	r19, 0xFE	; 254
     93e:	3e 3e       	cpi	r19, 0xEE	; 238
     940:	3e 21       	and	r19, r14
     942:	2e 3f       	cpi	r18, 0xFE	; 254
     944:	3e 15       	cp	r19, r14
     946:	17 0d       	add	r17, r7
     948:	17 15       	cp	r17, r7
     94a:	0f 17       	cp	r16, r31
     94c:	0d 13       	cpse	r16, r29
     94e:	15 0f       	add	r17, r21
     950:	15 3e       	cpi	r17, 0xE5	; 229
     952:	17 3d       	cpi	r17, 0xD7	; 215
     954:	14 3f       	cpi	r17, 0xF4	; 244
     956:	17 16       	cp	r1, r23
     958:	3e 17       	cp	r19, r30
     95a:	3f 3f       	cpi	r19, 0xFF	; 255
     95c:	3f 3e       	cpi	r19, 0xEF	; 239
     95e:	16 3e       	cpi	r17, 0xE6	; 230
     960:	3f 3e       	cpi	r19, 0xEF	; 239
     962:	3f 3e       	cpi	r19, 0xEF	; 239
     964:	3b 3c       	cpi	r19, 0xCB	; 203
     966:	3a 3a       	cpi	r19, 0xAA	; 170
     968:	12 12       	cpse	r1, r18
     96a:	3b 3a       	cpi	r19, 0xAB	; 171
     96c:	3f 3f       	cpi	r19, 0xFF	; 255
     96e:	3f 3f       	cpi	r19, 0xFF	; 255
     970:	3e 3e       	cpi	r19, 0xEE	; 238
     972:	3c 3f       	cpi	r19, 0xFC	; 252
     974:	06 27       	eor	r16, r22
     976:	15 3c       	cpi	r17, 0xC5	; 197
     978:	16 1e       	adc	r1, r22
     97a:	15 3d       	cpi	r17, 0xD5	; 213
     97c:	3e 3e       	cpi	r19, 0xEE	; 238
     97e:	3e 3e       	cpi	r19, 0xEE	; 238
     980:	39 16       	cp	r3, r25
     982:	21 2d       	mov	r18, r1
     984:	16 15       	cp	r17, r6
     986:	0d 15       	cp	r16, r13
     988:	15 0f       	add	r17, r21
     98a:	0d 15       	cp	r16, r13
     98c:	0b 15       	cp	r16, r11
     98e:	13 0d       	add	r17, r3
     990:	13 3d       	cpi	r17, 0xD3	; 211
     992:	3e 3e       	cpi	r19, 0xEE	; 238
     994:	3e 3e       	cpi	r19, 0xEE	; 238
     996:	16 3f       	cpi	r17, 0xF6	; 246
     998:	17 3e       	cpi	r17, 0xE7	; 231
     99a:	3e 3e       	cpi	r19, 0xEE	; 238
     99c:	1e 16       	cp	r1, r30
     99e:	3f 16       	cp	r3, r31
     9a0:	17 3d       	cpi	r17, 0xD7	; 215
     9a2:	3e 38       	cpi	r19, 0x8E	; 142
     9a4:	3c 3f       	cpi	r19, 0xFC	; 252
     9a6:	17 3a       	cpi	r17, 0xA7	; 167
     9a8:	12 17       	cp	r17, r18
     9aa:	10 17       	cp	r17, r16
     9ac:	38 10       	cpse	r3, r8
     9ae:	3c 3c       	cpi	r19, 0xCC	; 204
     9b0:	3c 3c       	cpi	r19, 0xCC	; 204
     9b2:	3e 3c       	cpi	r19, 0xCE	; 206
     9b4:	3f 3d       	cpi	r19, 0xDF	; 223
     9b6:	17 34       	cpi	r17, 0x47	; 71
     9b8:	3c 3e       	cpi	r19, 0xEC	; 236
     9ba:	15 35       	cpi	r17, 0x55	; 85
     9bc:	3e 17       	cp	r19, r30
     9be:	3f 17       	cp	r19, r31
     9c0:	17 17       	cp	r17, r23
     9c2:	16 26       	eor	r1, r22
     9c4:	27 17       	cp	r18, r23
     9c6:	17 0f       	add	r17, r23
     9c8:	16 0d       	add	r17, r6
     9ca:	0e 17       	cp	r16, r30
     9cc:	0d 0f       	add	r16, r29
     9ce:	15 13       	cpse	r17, r21
     9d0:	0d 13       	cpse	r16, r29
     9d2:	3d 1c       	adc	r3, r13
     9d4:	3c 15       	cp	r19, r12
     9d6:	3d 17       	cp	r19, r29
     9d8:	17 16       	cp	r1, r23
     9da:	3f 16       	cp	r3, r31
     9dc:	17 17       	cp	r17, r23
     9de:	16 16       	cp	r1, r22
     9e0:	3e 17       	cp	r19, r30
     9e2:	3c 16       	cp	r3, r28
     9e4:	3f 17       	cp	r19, r31
     9e6:	14 17       	cp	r17, r20
     9e8:	1f 12       	cpse	r1, r31
     9ea:	17 14       	cp	r1, r7
     9ec:	14 14       	cp	r1, r4
     9ee:	10 3c       	cpi	r17, 0xC0	; 192
     9f0:	16 3e       	cpi	r17, 0xE6	; 230
     9f2:	3c 17       	cp	r19, r28
     9f4:	3d 17       	cp	r19, r29
     9f6:	15 3c       	cpi	r17, 0xC5	; 197
     9f8:	16 14       	cp	r1, r6
     9fa:	34 3d       	cpi	r19, 0xD4	; 212
     9fc:	15 3f       	cpi	r17, 0xF5	; 245
     9fe:	17 11       	cpse	r17, r7
     a00:	16 17       	cp	r17, r22
     a02:	0f 0f       	add	r16, r31
     a04:	21 2e       	mov	r2, r17
     a06:	09 15       	cp	r16, r9
     a08:	3d 0c       	add	r3, r13
     a0a:	0e 15       	cp	r16, r14
     a0c:	15 0d       	add	r17, r5
     a0e:	0f 15       	cp	r16, r15
     a10:	0b 15       	cp	r16, r11
     a12:	16 3d       	cpi	r17, 0xD6	; 214
     a14:	16 16       	cp	r1, r22
     a16:	17 17       	cp	r17, r23
     a18:	17 17       	cp	r17, r23
     a1a:	17 16       	cp	r1, r23
     a1c:	17 3e       	cpi	r17, 0xE7	; 231
     a1e:	17 16       	cp	r1, r23
     a20:	17 15       	cp	r17, r7
     a22:	15 15       	cp	r17, r5
     a24:	10 14       	cp	r1, r0
     a26:	17 12       	cpse	r1, r23
     a28:	1f 17       	cp	r17, r31
     a2a:	1f 17       	cp	r17, r31
     a2c:	17 17       	cp	r17, r23
     a2e:	10 10       	cpse	r1, r0
     a30:	3c 14       	cp	r3, r12
     a32:	16 3c       	cpi	r17, 0xC6	; 198
     a34:	15 15       	cp	r17, r5
     a36:	05 00       	.word	0x0005	; ????
     a38:	14 14       	cp	r1, r4
     a3a:	05 05       	cpc	r16, r5
     a3c:	17 16       	cp	r1, r23
     a3e:	11 16       	cp	r1, r17
     a40:	11 16       	cp	r1, r17
     a42:	16 0e       	add	r1, r22
     a44:	16 09       	sbc	r17, r6
     a46:	0f 0e       	add	r0, r31
     a48:	14 0e       	add	r1, r20
     a4a:	17 0f       	add	r17, r23
     a4c:	14 15       	cp	r17, r4
     a4e:	0d 15       	cp	r16, r13
     a50:	13 0e       	add	r1, r19
     a52:	0d 17       	cp	r16, r29
     a54:	17 17       	cp	r17, r23
     a56:	16 16       	cp	r1, r22
     a58:	16 16       	cp	r1, r22
     a5a:	16 16       	cp	r1, r22
     a5c:	3e 17       	cp	r19, r30
     a5e:	3e 17       	cp	r19, r30
     a60:	17 17       	cp	r17, r23
     a62:	17 17       	cp	r17, r23
     a64:	17 16       	cp	r1, r23
     a66:	14 12       	cpse	r1, r20
     a68:	1b 1b       	sub	r17, r27
     a6a:	13 17       	cp	r17, r19
     a6c:	17 17       	cp	r17, r23
     a6e:	17 17       	cp	r17, r23
     a70:	14 16       	cp	r1, r20
     a72:	14 12       	cpse	r1, r20
     a74:	10 13       	cpse	r17, r16
     a76:	07 32       	cpi	r16, 0x27	; 39
     a78:	11 11       	cpse	r17, r1
     a7a:	02 30       	cpi	r16, 0x02	; 2
     a7c:	17 17       	cp	r17, r23
     a7e:	17 17       	cp	r17, r23
     a80:	1e 16       	cp	r1, r30
     a82:	17 17       	cp	r17, r23
     a84:	16 0e       	add	r1, r22
     a86:	0c 16       	cp	r0, r28
     a88:	16 0f       	add	r17, r22
     a8a:	0e 15       	cp	r16, r14
     a8c:	0d 17       	cp	r16, r29
     a8e:	0d 0b       	sbc	r16, r29
     a90:	15 0d       	add	r17, r5
     a92:	15 15       	cp	r17, r5
     a94:	15 16       	cp	r1, r21
     a96:	3e 3f       	cpi	r19, 0xFE	; 254
     a98:	3f 17       	cp	r19, r31
     a9a:	16 16       	cp	r1, r22
     a9c:	17 17       	cp	r17, r23
     a9e:	3f 16       	cp	r3, r31
     aa0:	17 16       	cp	r1, r23
     aa2:	17 1f       	adc	r17, r23
     aa4:	15 15       	cp	r17, r5
     aa6:	16 14       	cp	r1, r6
     aa8:	1b 19       	sub	r17, r11
     aaa:	19 11       	cpse	r17, r9
     aac:	19 11       	cpse	r17, r9
     aae:	11 11       	cpse	r17, r1
     ab0:	1c 14       	cp	r1, r12
     ab2:	13 13       	cpse	r17, r19
     ab4:	13 17       	cp	r17, r19
     ab6:	02 31       	cpi	r16, 0x12	; 18
     ab8:	34 37       	cpi	r19, 0x74	; 116
     aba:	00 12       	cpse	r0, r16
     abc:	34 36       	cpi	r19, 0x64	; 100
     abe:	1f 1d       	adc	r17, r15
     ac0:	1d 19       	sub	r17, r13
     ac2:	17 11       	cpse	r17, r7
     ac4:	1c 1e       	adc	r1, r28
     ac6:	16 17       	cp	r17, r22
     ac8:	19 0f       	add	r17, r25
     aca:	11 0d       	add	r17, r1
     acc:	0f 16       	cp	r0, r31
     ace:	10 0c       	add	r1, r0
     ad0:	14 14       	cp	r1, r4
     ad2:	0e 17       	cp	r16, r30
     ad4:	15 3d       	cpi	r17, 0xD5	; 213
     ad6:	15 16       	cp	r1, r21
     ad8:	16 3e       	cpi	r17, 0xE6	; 230
     ada:	16 17       	cp	r17, r22
     adc:	17 16       	cp	r1, r23
     ade:	17 17       	cp	r17, r23
     ae0:	16 17       	cp	r17, r22
     ae2:	16 17       	cp	r17, r22
     ae4:	1f 14       	cp	r1, r15
     ae6:	17 17       	cp	r17, r23
     ae8:	19 19       	sub	r17, r9
     aea:	19 19       	sub	r17, r9
     aec:	19 19       	sub	r17, r9
     aee:	11 19       	sub	r17, r1
     af0:	11 1a       	sub	r1, r17
     af2:	12 25       	eor	r17, r2
     af4:	03 22       	and	r0, r19
     af6:	21 21       	and	r18, r1
     af8:	04 32       	cpi	r16, 0x24	; 36
     afa:	26 21       	and	r18, r6
     afc:	07 27       	eor	r16, r23
     afe:	37 1f       	adc	r19, r23
     b00:	1f 1d       	adc	r17, r15
     b02:	19 1d       	adc	r17, r9
     b04:	1f 16       	cp	r1, r31
     b06:	1d 1f       	adc	r17, r29
     b08:	15 11       	cpse	r17, r5
     b0a:	0f 17       	cp	r16, r31
     b0c:	16 0c       	add	r1, r6
     b0e:	17 17       	cp	r17, r23
     b10:	0c 14       	cp	r0, r12
     b12:	1c 17       	cp	r17, r28
     b14:	1f 16       	cp	r1, r31
     b16:	16 16       	cp	r1, r22
     b18:	16 17       	cp	r17, r22
     b1a:	16 16       	cp	r1, r22
     b1c:	1e 1e       	adc	r1, r30
     b1e:	16 17       	cp	r17, r22
     b20:	14 16       	cp	r1, r20
     b22:	17 15       	cp	r17, r7
     b24:	05 04       	cpc	r0, r5
     b26:	1c 07       	cpc	r17, r28
     b28:	0a 1a       	sub	r0, r26
     b2a:	1a 1a       	sub	r1, r26
     b2c:	19 09       	sbc	r17, r9
     b2e:	19 09       	sbc	r17, r9
     b30:	1b 0b       	sbc	r17, r27
     b32:	22 3b       	cpi	r18, 0xB2	; 178
     b34:	0c 2b       	or	r16, r28
     b36:	3a 39       	cpi	r19, 0x9A	; 154
     b38:	22 20       	and	r2, r2
     b3a:	39 39       	cpi	r19, 0x99	; 153
     b3c:	27 20       	and	r2, r7
     b3e:	27 27       	eor	r18, r23
     b40:	36 1f       	adc	r19, r22
     b42:	1f 1e       	adc	r1, r31
     b44:	1f 1d       	adc	r17, r15
     b46:	15 1d       	adc	r17, r5
     b48:	1e 1e       	adc	r1, r30
     b4a:	17 1e       	adc	r1, r23
     b4c:	1c 14       	cp	r1, r12
     b4e:	1c 17       	cp	r17, r28
     b50:	1c 14       	cp	r1, r12
     b52:	1c 1e       	adc	r1, r28
     b54:	16 16       	cp	r1, r22
     b56:	17 1e       	adc	r1, r23
     b58:	16 16       	cp	r1, r22
     b5a:	1f 1f       	adc	r17, r31
     b5c:	16 1f       	adc	r17, r22
     b5e:	16 1e       	adc	r1, r22
     b60:	16 07       	cpc	r17, r22
     b62:	1e 17       	cp	r17, r30
     b64:	1f 1e       	adc	r1, r31
     b66:	04 1f       	adc	r16, r20
     b68:	0f 0a       	sbc	r0, r31
     b6a:	1a 1a       	sub	r1, r26
     b6c:	0a 0a       	sbc	r0, r26
     b6e:	09 0b       	sbc	r16, r25
     b70:	0b 0b       	sbc	r16, r27
     b72:	23 22       	and	r2, r19
     b74:	23 0a       	sbc	r2, r19
     b76:	39 09       	sbc	r19, r9
     b78:	3a 20       	and	r3, r10
     b7a:	09 22       	and	r0, r25
     b7c:	38 38       	cpi	r19, 0x88	; 136
     b7e:	3e 22       	and	r3, r30
     b80:	27 0a       	sbc	r2, r23
     b82:	0f 0d       	add	r16, r15
     b84:	0d 1d       	adc	r16, r13
     b86:	1f 1f       	adc	r17, r31
     b88:	1e 1f       	adc	r17, r30
     b8a:	1e 1f       	adc	r17, r30
     b8c:	1c 1c       	adc	r1, r12
     b8e:	13 1c       	adc	r1, r3
     b90:	1f 1c       	adc	r1, r15
     b92:	1c 1f       	adc	r17, r28
     b94:	1e 17       	cp	r17, r30
     b96:	1e 1f       	adc	r17, r30
     b98:	1f 1f       	adc	r17, r31
     b9a:	1f 16       	cp	r1, r31
     b9c:	1c 16       	cp	r1, r28
     b9e:	1f 16       	cp	r1, r31
     ba0:	16 1e       	adc	r1, r22
     ba2:	17 1f       	adc	r17, r23
     ba4:	1e 1d       	adc	r17, r14
     ba6:	1e 03       	fmul	r17, r22
     ba8:	0f 0f       	add	r16, r31
     baa:	0a 0a       	sbc	r0, r26
     bac:	0a 0a       	sbc	r0, r26
     bae:	0a 02       	muls	r16, r26
     bb0:	03 23       	and	r16, r19
     bb2:	23 3e       	cpi	r18, 0xE3	; 227
     bb4:	0c 08       	sbc	r0, r12
     bb6:	09 3e       	cpi	r16, 0xE9	; 233
     bb8:	08 39       	cpi	r16, 0x98	; 152
     bba:	3a 09       	sbc	r19, r10
     bbc:	08 3c       	cpi	r16, 0xC8	; 200
     bbe:	08 3a       	cpi	r16, 0xA8	; 168
     bc0:	22 3f       	cpi	r18, 0xF2	; 242
     bc2:	07 06       	cpc	r0, r23
     bc4:	0e 0f       	add	r16, r30
     bc6:	0e 1e       	adc	r0, r30
     bc8:	0f 0e       	add	r0, r31
     bca:	0f 1c       	adc	r0, r15
     bcc:	08 1c       	adc	r0, r8
     bce:	18 1f       	adc	r17, r24
     bd0:	1c 1f       	adc	r17, r28
     bd2:	18 1c       	adc	r1, r8
     bd4:	1f 1c       	adc	r1, r15
     bd6:	1c 1f       	adc	r17, r28
     bd8:	1f 1f       	adc	r17, r31
     bda:	1e 1c       	adc	r1, r14
     bdc:	1c 1c       	adc	r1, r12
     bde:	04 1f       	adc	r16, r20
     be0:	1f 1f       	adc	r17, r31
     be2:	1f 0d       	add	r17, r15
     be4:	1d 0d       	add	r17, r13
     be6:	1e 1f       	adc	r17, r30
     be8:	0f 0f       	add	r16, r31
     bea:	0c 0a       	sbc	r0, r28
     bec:	02 3a       	cpi	r16, 0xA2	; 162
     bee:	02 02       	muls	r16, r18
     bf0:	3a 23       	and	r19, r26
     bf2:	3a 08       	sbc	r3, r10
     bf4:	3c 08       	sbc	r3, r12
     bf6:	39 0e       	add	r3, r25
     bf8:	08 39       	cpi	r16, 0x98	; 152
     bfa:	09 0d       	add	r16, r9
     bfc:	0b 0d       	add	r16, r11
     bfe:	08 38       	cpi	r16, 0x88	; 136
     c00:	3c 24       	eor	r3, r12
     c02:	27 04       	cpc	r2, r7
     c04:	17 06       	cpc	r1, r23
     c06:	07 0f       	add	r16, r23
     c08:	0e 0f       	add	r16, r30
     c0a:	0c 0f       	add	r16, r28
     c0c:	1c 0f       	add	r17, r28
     c0e:	08 0f       	add	r16, r24
     c10:	0c 0c       	add	r0, r12
     c12:	0f 0c       	add	r0, r15
     c14:	1f 08       	sbc	r1, r15
     c16:	0c 1c       	adc	r0, r12
     c18:	1f 1f       	adc	r17, r31
     c1a:	0c 1c       	adc	r0, r12
     c1c:	1c 00       	.word	0x001c	; ????
     c1e:	1c 1f       	adc	r17, r28
     c20:	1c 0c       	add	r1, r12
     c22:	1c 1f       	adc	r17, r28
     c24:	0f 1c       	adc	r0, r15
     c26:	0d 0d       	add	r16, r13
     c28:	0f 0f       	add	r16, r31
     c2a:	07 04       	cpc	r0, r7
     c2c:	04 00       	.word	0x0004	; ????
     c2e:	3c 3a       	cpi	r19, 0xAC	; 172
     c30:	24 3c       	cpi	r18, 0xC4	; 196
     c32:	0a 38       	cpi	r16, 0x8A	; 138
     c34:	0c 08       	sbc	r0, r12
     c36:	0a 08       	sbc	r0, r10
     c38:	09 0d       	add	r16, r9
     c3a:	0b 3f       	cpi	r16, 0xFB	; 251
     c3c:	0f 0f       	add	r16, r31
     c3e:	08 0d       	add	r16, r8
     c40:	3f 3f       	cpi	r19, 0xFF	; 255
     c42:	2c 3f       	cpi	r18, 0xFC	; 252
     c44:	04 14       	cp	r0, r4
     c46:	3f 07       	cpc	r19, r31
     c48:	02 3c       	cpi	r16, 0xC2	; 194
     c4a:	0c 0a       	sbc	r0, r28
     c4c:	0f 0c       	add	r0, r15
     c4e:	0c 0c       	add	r0, r12
     c50:	04 0f       	add	r16, r20
     c52:	0c 08       	sbc	r0, r12
     c54:	0c 08       	sbc	r0, r12
     c56:	08 0a       	sbc	r0, r24
     c58:	0c 0c       	add	r0, r12
     c5a:	0f 1c       	adc	r0, r15
     c5c:	1f 1c       	adc	r1, r15
     c5e:	1c 1c       	adc	r1, r12
     c60:	0c 1c       	adc	r0, r12
     c62:	0f 0a       	sbc	r0, r31
     c64:	1c 08       	sbc	r1, r12
     c66:	0c 1c       	adc	r0, r12
     c68:	06 06       	cpc	r0, r22
     c6a:	06 3e       	cpi	r16, 0xE6	; 230
     c6c:	30 36       	cpi	r19, 0x60	; 96
     c6e:	36 34       	cpi	r19, 0x46	; 70
     c70:	12 32       	cpi	r17, 0x22	; 34
     c72:	08 38       	cpi	r16, 0x88	; 136
     c74:	1e 3f       	cpi	r17, 0xFE	; 254
     c76:	28 39       	cpi	r18, 0x98	; 152
     c78:	19 09       	sbc	r17, r9
     c7a:	21 2f       	mov	r18, r17
     c7c:	2f 2f       	mov	r18, r31
     c7e:	3f 3f       	cpi	r19, 0xFF	; 255
     c80:	15 04       	cpc	r1, r5
     c82:	3b 07       	cpc	r19, r27
     c84:	3f 3d       	cpi	r19, 0xDF	; 223
     c86:	01 01       	movw	r0, r2
     c88:	21 37       	cpi	r18, 0x71	; 113
     c8a:	17 23       	and	r17, r23
     c8c:	01 3f       	cpi	r16, 0xF1	; 241
     c8e:	35 31       	cpi	r19, 0x15	; 21
     c90:	31 07       	cpc	r19, r17
     c92:	37 37       	cpi	r19, 0x77	; 119
     c94:	30 27       	eor	r19, r16
     c96:	37 37       	cpi	r19, 0x77	; 119
     c98:	37 11       	cpse	r19, r7
     c9a:	21 39       	cpi	r18, 0x91	; 145
     c9c:	01 39       	cpi	r16, 0x91	; 145
     c9e:	37 26       	eor	r3, r23
     ca0:	30 3e       	cpi	r19, 0xE0	; 224
     ca2:	10 30       	cpi	r17, 0x00	; 0
     ca4:	36 32       	cpi	r19, 0x26	; 38
     ca6:	30 36       	cpi	r19, 0x60	; 96
     ca8:	36 04       	cpc	r3, r6
     caa:	00 36       	cpi	r16, 0x60	; 96
     cac:	38 00       	.word	0x0038	; ????
     cae:	38 30       	cpi	r19, 0x08	; 8
     cb0:	36 3e       	cpi	r19, 0xE6	; 230
     cb2:	0f 3e       	cpi	r16, 0xEF	; 239
     cb4:	1f 3d       	cpi	r17, 0xDF	; 223
     cb6:	09 39       	cpi	r16, 0x99	; 153
     cb8:	19 21       	and	r17, r9
     cba:	2c 21       	and	r18, r12
     cbc:	05 01       	movw	r0, r10
     cbe:	1f 37       	cpi	r17, 0x7F	; 127
     cc0:	39 01       	movw	r6, r18
     cc2:	07 39       	cpi	r16, 0x97	; 151
     cc4:	07 3d       	cpi	r16, 0xD7	; 215
     cc6:	39 26       	eor	r3, r25
     cc8:	1f 35       	cpi	r17, 0x5F	; 95
     cca:	26 18       	sub	r2, r6
     ccc:	27 04       	cpc	r2, r7
     cce:	27 07       	cpc	r18, r23
     cd0:	07 3e       	cpi	r16, 0xE7	; 231
     cd2:	03 37       	cpi	r16, 0x73	; 115
     cd4:	37 30       	cpi	r19, 0x07	; 7
     cd6:	37 31       	cpi	r19, 0x17	; 23
     cd8:	31 11       	cpse	r19, r1
     cda:	33 07       	cpc	r19, r19
     cdc:	38 10       	cpse	r3, r8
     cde:	31 37       	cpi	r19, 0x71	; 113
     ce0:	04 07       	cpc	r16, r20
     ce2:	36 30       	cpi	r19, 0x06	; 6
     ce4:	32 16       	cp	r3, r18
     ce6:	26 16       	cp	r2, r22
     ce8:	36 06       	cpc	r3, r22
     cea:	06 20       	and	r0, r6
     cec:	16 38       	cpi	r17, 0x86	; 134
     cee:	06 10       	cpse	r0, r6
     cf0:	00 07       	cpc	r16, r16
     cf2:	09 3f       	cpi	r16, 0xF9	; 249
     cf4:	18 19       	sub	r17, r8
     cf6:	19 19       	sub	r17, r9
     cf8:	1d 19       	sub	r17, r13
     cfa:	11 2c       	mov	r1, r1
     cfc:	11 07       	cpc	r17, r17
     cfe:	01 01       	movw	r0, r2
     d00:	27 31       	cpi	r18, 0x17	; 23
     d02:	07 06       	cpc	r0, r23
     d04:	01 05       	cpc	r16, r1
     d06:	26 19       	sub	r18, r6
     d08:	39 27       	eor	r19, r25
     d0a:	19 19       	sub	r17, r9
     d0c:	21 21       	and	r18, r1
     d0e:	1c 21       	and	r17, r12
     d10:	07 01       	movw	r0, r14
     d12:	16 36       	cpi	r17, 0x66	; 102
     d14:	27 37       	cpi	r18, 0x77	; 119
     d16:	31 37       	cpi	r19, 0x71	; 113
     d18:	37 37       	cpi	r19, 0x77	; 119
     d1a:	07 15       	cp	r16, r7
     d1c:	07 01       	movw	r0, r14
     d1e:	01 01       	movw	r0, r2
     d20:	01 37       	cpi	r16, 0x71	; 113
     d22:	07 36       	cpi	r16, 0x67	; 103
     d24:	34 30       	cpi	r19, 0x04	; 4
     d26:	14 06       	cpc	r1, r20
     d28:	30 30       	cpi	r19, 0x00	; 0
     d2a:	00 00       	nop
     d2c:	00 06       	cpc	r0, r16
     d2e:	16 06       	cpc	r1, r22
     d30:	04 01       	movw	r0, r8
     d32:	07 39       	cpi	r16, 0x97	; 151
     d34:	19 19       	sub	r17, r9
     d36:	19 19       	sub	r17, r9
     d38:	1f 37       	cpi	r17, 0x7F	; 127
     d3a:	01 29       	or	r16, r1
     d3c:	07 05       	cpc	r16, r7
     d3e:	07 17       	cp	r16, r23
     d40:	03 33       	cpi	r16, 0x33	; 51
     d42:	3f 01       	movw	r6, r30
     d44:	00 31       	cpi	r16, 0x10	; 16
     d46:	25 19       	sub	r18, r5
     d48:	21 21       	and	r18, r1
     d4a:	1d 25       	eor	r17, r13
     d4c:	19 24       	eor	r1, r9
     d4e:	21 19       	sub	r18, r1
     d50:	21 07       	cpc	r18, r17
     d52:	31 07       	cpc	r19, r17
     d54:	36 00       	.word	0x0036	; ????
     d56:	31 37       	cpi	r19, 0x71	; 113
     d58:	07 31       	cpi	r16, 0x17	; 23
     d5a:	01 05       	cpc	r16, r1
     d5c:	01 07       	cpc	r16, r17
     d5e:	33 00       	.word	0x0033	; ????
     d60:	01 07       	cpc	r16, r17
     d62:	02 07       	cpc	r16, r18
     d64:	04 06       	cpc	r0, r20
     d66:	06 16       	cp	r0, r22
     d68:	36 36       	cpi	r19, 0x66	; 102
     d6a:	04 06       	cpc	r0, r20
     d6c:	00 00       	nop
     d6e:	00 00       	nop
     d70:	07 07       	cpc	r16, r23
     d72:	00 01       	movw	r0, r0
     d74:	38 19       	sub	r19, r8
     d76:	09 0f       	add	r16, r25
     d78:	37 37       	cpi	r19, 0x77	; 119
     d7a:	0f 09       	sbc	r16, r15
     d7c:	00 03       	mulsu	r16, r16
     d7e:	07 07       	cpc	r16, r23
     d80:	03 37       	cpi	r16, 0x73	; 115
     d82:	33 39       	cpi	r19, 0x93	; 147
     d84:	27 27       	eor	r18, r23
     d86:	19 37       	cpi	r17, 0x79	; 121
     d88:	31 19       	sub	r19, r1
     d8a:	19 21       	and	r17, r9
     d8c:	1c 21       	and	r17, r12
     d8e:	24 19       	sub	r18, r4
     d90:	24 11       	cpse	r18, r4
     d92:	07 07       	cpc	r16, r23
     d94:	07 07       	cpc	r16, r23
     d96:	37 11       	cpse	r19, r7
     d98:	30 17       	cp	r19, r16
     d9a:	07 07       	cpc	r16, r23
     d9c:	27 37       	cpi	r18, 0x77	; 119
     d9e:	01 37       	cpi	r16, 0x71	; 113
     da0:	35 01       	movw	r6, r10
     da2:	17 02       	muls	r17, r23
     da4:	06 10       	cpse	r0, r6
     da6:	32 16       	cp	r3, r18
     da8:	36 30       	cpi	r19, 0x06	; 6
     daa:	32 30       	cpi	r19, 0x02	; 2
     dac:	02 32       	cpi	r16, 0x22	; 34
     dae:	04 16       	cp	r0, r20
     db0:	16 02       	muls	r17, r22
     db2:	07 01       	movw	r0, r14
     db4:	01 11       	cpse	r16, r1
     db6:	09 3f       	cpi	r16, 0xF9	; 249
     db8:	05 07       	cpc	r16, r21
     dba:	0f 39       	cpi	r16, 0x9F	; 159
     dbc:	07 31       	cpi	r16, 0x17	; 23
     dbe:	05 30       	cpi	r16, 0x05	; 5
     dc0:	31 35       	cpi	r19, 0x51	; 81
     dc2:	37 27       	eor	r19, r23
     dc4:	31 31       	cpi	r19, 0x11	; 17
     dc6:	21 19       	sub	r18, r1
     dc8:	37 1d       	adc	r19, r7
     dca:	1f 31       	cpi	r17, 0x1F	; 31
     dcc:	19 1d       	adc	r17, r9
     dce:	25 24       	eor	r2, r5
     dd0:	19 24       	eor	r1, r9
     dd2:	01 26       	eor	r0, r17
     dd4:	06 37       	cpi	r16, 0x76	; 118
     dd6:	07 31       	cpi	r16, 0x17	; 23
     dd8:	31 34       	cpi	r19, 0x41	; 65
     dda:	01 37       	cpi	r16, 0x71	; 113
     ddc:	31 30       	cpi	r19, 0x01	; 1
     dde:	37 37       	cpi	r19, 0x77	; 119
     de0:	04 31       	cpi	r16, 0x14	; 20
     de2:	06 37       	cpi	r16, 0x76	; 118
     de4:	00 32       	cpi	r16, 0x20	; 32
     de6:	36 30       	cpi	r19, 0x06	; 6
     de8:	00 36       	cpi	r16, 0x60	; 96
     dea:	30 36       	cpi	r19, 0x60	; 96
     dec:	36 36       	cpi	r19, 0x66	; 102
     dee:	32 06       	cpc	r3, r18
     df0:	37 07       	cpc	r19, r23
     df2:	05 31       	cpi	r16, 0x15	; 21
     df4:	05 31       	cpi	r16, 0x15	; 21
     df6:	0d 0f       	add	r16, r29
     df8:	37 37       	cpi	r19, 0x77	; 119
     dfa:	29 09       	sbc	r18, r9
     dfc:	31 05       	cpc	r19, r1
     dfe:	31 33       	cpi	r19, 0x31	; 49
     e00:	37 31       	cpi	r19, 0x17	; 23
     e02:	19 18       	sub	r1, r9
     e04:	23 3f       	cpi	r18, 0xF3	; 243
     e06:	1b 27       	eor	r17, r27
     e08:	07 1e       	adc	r0, r23
     e0a:	1f 27       	eor	r17, r31
     e0c:	27 1f       	adc	r18, r23
     e0e:	19 31       	cpi	r17, 0x19	; 25
     e10:	1c 21       	and	r17, r12
     e12:	37 07       	cpc	r19, r23
     e14:	37 37       	cpi	r19, 0x77	; 119
     e16:	31 31       	cpi	r19, 0x11	; 17
     e18:	31 31       	cpi	r19, 0x11	; 17
     e1a:	31 37       	cpi	r19, 0x71	; 113
     e1c:	31 17       	cp	r19, r17
     e1e:	35 37       	cpi	r19, 0x75	; 117
     e20:	31 31       	cpi	r19, 0x11	; 17
     e22:	31 31       	cpi	r19, 0x11	; 17
     e24:	32 36       	cpi	r19, 0x62	; 98
     e26:	30 36       	cpi	r19, 0x60	; 96
     e28:	00 30       	cpi	r16, 0x00	; 0
     e2a:	00 30       	cpi	r16, 0x00	; 0
     e2c:	32 30       	cpi	r19, 0x02	; 2
     e2e:	32 32       	cpi	r19, 0x22	; 34
     e30:	16 30       	cpi	r17, 0x06	; 6
     e32:	37 11       	cpse	r19, r7
     e34:	31 31       	cpi	r19, 0x11	; 17
     e36:	39 3f       	cpi	r19, 0xF9	; 249
     e38:	37 31       	cpi	r19, 0x17	; 23
     e3a:	39 39       	cpi	r19, 0x99	; 153
     e3c:	31 37       	cpi	r19, 0x71	; 113
     e3e:	33 37       	cpi	r19, 0x73	; 115
     e40:	33 37       	cpi	r19, 0x73	; 115
     e42:	37 1f       	adc	r19, r23
     e44:	37 1b       	sub	r19, r23
     e46:	19 1f       	adc	r17, r25
     e48:	36 1f       	adc	r19, r22
     e4a:	21 1d       	adc	r18, r1
     e4c:	26 37       	cpi	r18, 0x76	; 118
     e4e:	1f 21       	and	r17, r15
     e50:	34 1f       	adc	r19, r20
     e52:	1f 31       	cpi	r17, 0x1F	; 31
     e54:	31 35       	cpi	r19, 0x51	; 81
     e56:	37 37       	cpi	r19, 0x77	; 119
     e58:	37 37       	cpi	r19, 0x77	; 119
     e5a:	37 37       	cpi	r19, 0x77	; 119
     e5c:	07 31       	cpi	r16, 0x17	; 23
     e5e:	07 31       	cpi	r16, 0x17	; 23
     e60:	31 31       	cpi	r19, 0x11	; 17
     e62:	35 35       	cpi	r19, 0x55	; 85
     e64:	30 37       	cpi	r19, 0x70	; 112
     e66:	36 36       	cpi	r19, 0x66	; 102
     e68:	00 00       	nop
     e6a:	30 32       	cpi	r19, 0x20	; 32
     e6c:	30 30       	cpi	r19, 0x00	; 0
     e6e:	30 30       	cpi	r19, 0x00	; 0
     e70:	31 37       	cpi	r19, 0x71	; 113
     e72:	31 36       	cpi	r19, 0x61	; 97
     e74:	32 34       	cpi	r19, 0x42	; 66
     e76:	38 2e       	mov	r3, r24
     e78:	33 33       	cpi	r19, 0x33	; 51
     e7a:	39 2f       	mov	r19, r25
     e7c:	31 31       	cpi	r19, 0x11	; 17
     e7e:	31 31       	cpi	r19, 0x11	; 17
     e80:	07 37       	cpi	r16, 0x77	; 119
     e82:	31 31       	cpi	r19, 0x11	; 17
     e84:	37 1f       	adc	r19, r23
     e86:	1d 37       	cpi	r17, 0x7D	; 125
     e88:	37 19       	sub	r19, r7
     e8a:	1f 37       	cpi	r17, 0x7F	; 127
     e8c:	1f 31       	cpi	r17, 0x1F	; 31
     e8e:	19 1c       	adc	r1, r9
     e90:	31 19       	sub	r19, r1
     e92:	37 37       	cpi	r19, 0x77	; 119
     e94:	37 37       	cpi	r19, 0x77	; 119
     e96:	07 01       	movw	r0, r14
     e98:	01 35       	cpi	r16, 0x51	; 81
     e9a:	37 37       	cpi	r19, 0x77	; 119
     e9c:	35 31       	cpi	r19, 0x15	; 21
     e9e:	05 37       	cpi	r16, 0x75	; 117
     ea0:	31 37       	cpi	r19, 0x71	; 113
     ea2:	31 01       	movw	r6, r2
     ea4:	31 31       	cpi	r19, 0x11	; 17
     ea6:	37 36       	cpi	r19, 0x67	; 103
     ea8:	00 03       	mulsu	r16, r16
     eaa:	03 33       	cpi	r16, 0x33	; 51
     eac:	03 33       	cpi	r16, 0x33	; 51
     eae:	33 33       	cpi	r19, 0x33	; 51
     eb0:	01 31       	cpi	r16, 0x11	; 17
     eb2:	34 34       	cpi	r19, 0x44	; 68
     eb4:	34 30       	cpi	r19, 0x04	; 4
     eb6:	3e 2b       	or	r19, r30
     eb8:	3f 3d       	cpi	r19, 0xDF	; 223
     eba:	3f 0e       	add	r3, r31
     ebc:	3e 38       	cpi	r19, 0x8E	; 142
     ebe:	01 01       	movw	r0, r2
     ec0:	05 03       	mulsu	r16, r21
     ec2:	35 33       	cpi	r19, 0x35	; 53
     ec4:	06 07       	cpc	r16, r22
     ec6:	37 31       	cpi	r19, 0x17	; 23
     ec8:	03 19       	sub	r16, r3
     eca:	33 1f       	adc	r19, r19
     ecc:	19 37       	cpi	r17, 0x79	; 121
     ece:	30 19       	sub	r19, r0
     ed0:	37 32       	cpi	r19, 0x27	; 39
     ed2:	1f 31       	cpi	r17, 0x1F	; 31
     ed4:	37 07       	cpc	r19, r23
     ed6:	37 30       	cpi	r19, 0x07	; 7
     ed8:	37 07       	cpc	r19, r23
     eda:	37 31       	cpi	r19, 0x17	; 23
     edc:	31 37       	cpi	r19, 0x71	; 113
     ede:	31 30       	cpi	r19, 0x01	; 1
     ee0:	37 31       	cpi	r19, 0x17	; 23
     ee2:	37 31       	cpi	r19, 0x17	; 23
     ee4:	01 34       	cpi	r16, 0x41	; 65
     ee6:	30 30       	cpi	r19, 0x00	; 0
     ee8:	03 03       	mulsu	r16, r19
     eea:	03 03       	mulsu	r16, r19
     eec:	03 03       	mulsu	r16, r19
     eee:	33 03       	mulsu	r19, r19
     ef0:	33 06       	cpc	r3, r19
     ef2:	36 39       	cpi	r19, 0x96	; 150
     ef4:	24 0e       	add	r2, r20
     ef6:	1b 1b       	sub	r17, r27
     ef8:	3b 39       	cpi	r19, 0x9B	; 155
     efa:	18 1b       	sub	r17, r24
     efc:	3a 01       	movw	r6, r20
     efe:	39 05       	cpc	r19, r9
     f00:	01 01       	movw	r0, r2
     f02:	03 01       	movw	r0, r6
     f04:	01 34       	cpi	r16, 0x41	; 65
     f06:	07 05       	cpc	r16, r7
     f08:	31 33       	cpi	r19, 0x31	; 49
     f0a:	19 31       	cpi	r17, 0x19	; 25
     f0c:	37 18       	sub	r3, r7
     f0e:	30 32       	cpi	r19, 0x20	; 32
     f10:	19 37       	cpi	r17, 0x79	; 121
     f12:	01 35       	cpi	r16, 0x51	; 81
     f14:	01 37       	cpi	r16, 0x71	; 113
     f16:	37 37       	cpi	r19, 0x77	; 119
     f18:	37 31       	cpi	r19, 0x17	; 23
     f1a:	37 37       	cpi	r19, 0x77	; 119
     f1c:	00 07       	cpc	r16, r16
     f1e:	37 31       	cpi	r19, 0x17	; 23
     f20:	35 37       	cpi	r19, 0x75	; 117
     f22:	31 31       	cpi	r19, 0x11	; 17
     f24:	19 1e       	adc	r1, r25
     f26:	06 1a       	sub	r0, r22
     f28:	1e 06       	cpc	r1, r30
     f2a:	06 06       	cpc	r0, r22
     f2c:	03 1b       	sub	r16, r19
     f2e:	03 1b       	sub	r16, r19
     f30:	00 18       	sub	r0, r0
     f32:	3e 1c       	adc	r3, r14
     f34:	30 34       	cpi	r19, 0x40	; 64
     f36:	1e 1b       	sub	r17, r30
     f38:	39 3f       	cpi	r19, 0xF9	; 249
     f3a:	1b 1b       	sub	r17, r27
     f3c:	38 3f       	cpi	r19, 0xF8	; 248
     f3e:	39 01       	movw	r6, r18
     f40:	3d 01       	movw	r6, r26
     f42:	01 04       	cpc	r0, r1
     f44:	05 01       	movw	r0, r10
     f46:	31 05       	cpc	r19, r1
     f48:	00 07       	cpc	r16, r16
     f4a:	31 07       	cpc	r19, r17
     f4c:	01 36       	cpi	r16, 0x61	; 97
     f4e:	07 30       	cpi	r16, 0x07	; 7
     f50:	07 34       	cpi	r16, 0x47	; 71
     f52:	07 07       	cpc	r16, r23
     f54:	30 37       	cpi	r19, 0x70	; 112
     f56:	35 07       	cpc	r19, r21
     f58:	37 37       	cpi	r19, 0x77	; 119
     f5a:	05 01       	movw	r0, r10
     f5c:	37 01       	movw	r6, r14
     f5e:	37 07       	cpc	r19, r23
     f60:	37 19       	sub	r19, r7
     f62:	07 0d       	add	r16, r7
     f64:	01 07       	cpc	r16, r17
     f66:	1c 00       	.word	0x001c	; ????
     f68:	18 1e       	adc	r1, r24
     f6a:	06 06       	cpc	r0, r22
     f6c:	1e 1e       	adc	r1, r30
     f6e:	1b 18       	sub	r1, r11
     f70:	18 18       	sub	r1, r8
     f72:	38 3e       	cpi	r19, 0xE8	; 232
     f74:	38 36       	cpi	r19, 0x68	; 104
     f76:	1b 33       	cpi	r17, 0x3B	; 59
     f78:	19 3f       	cpi	r17, 0xF9	; 249
     f7a:	33 3e       	cpi	r19, 0xE3	; 227
     f7c:	1f 1f       	adc	r17, r31
     f7e:	1d 39       	cpi	r17, 0x9D	; 157
     f80:	39 19       	sub	r19, r9
     f82:	19 19       	sub	r17, r9
     f84:	19 01       	movw	r2, r18
     f86:	01 01       	movw	r0, r2
     f88:	07 00       	.word	0x0007	; ????
     f8a:	07 00       	.word	0x0007	; ????
     f8c:	07 02       	muls	r16, r23
     f8e:	34 07       	cpc	r19, r20
     f90:	00 06       	cpc	r0, r16
     f92:	06 00       	.word	0x0006	; ????
     f94:	07 31       	cpi	r16, 0x17	; 23
     f96:	07 01       	movw	r0, r14
     f98:	05 01       	movw	r0, r10
     f9a:	01 37       	cpi	r16, 0x71	; 113
     f9c:	06 37       	cpi	r16, 0x76	; 118
     f9e:	01 37       	cpi	r16, 0x71	; 113
     fa0:	0f 07       	cpc	r16, r31
     fa2:	0d 01       	movw	r0, r26
     fa4:	04 01       	movw	r0, r8
     fa6:	07 1c       	adc	r0, r7
     fa8:	18 18       	sub	r1, r8
     faa:	1e 1e       	adc	r1, r30
     fac:	1e 1e       	adc	r1, r30
     fae:	1e 1e       	adc	r1, r30
     fb0:	18 38       	cpi	r17, 0x88	; 136
     fb2:	38 1d       	adc	r19, r8
     fb4:	33 37       	cpi	r19, 0x73	; 115
     fb6:	33 1d       	adc	r19, r3
     fb8:	37 1b       	sub	r19, r23
     fba:	1e 33       	cpi	r17, 0x3E	; 62
     fbc:	37 1b       	sub	r19, r23
     fbe:	37 19       	sub	r19, r7
     fc0:	39 19       	sub	r19, r9
     fc2:	19 18       	sub	r1, r9
     fc4:	1f 19       	sub	r17, r15
     fc6:	1f 07       	cpc	r17, r31
     fc8:	18 1f       	adc	r17, r24
     fca:	1a 07       	cpc	r17, r26
     fcc:	1d 07       	cpc	r17, r29
     fce:	02 00       	.word	0x0002	; ????
     fd0:	07 00       	.word	0x0007	; ????
     fd2:	02 06       	cpc	r0, r18
     fd4:	00 06       	cpc	r0, r16
     fd6:	06 05       	cpc	r16, r6
     fd8:	01 02       	muls	r16, r17
     fda:	07 04       	cpc	r0, r7
     fdc:	04 06       	cpc	r0, r20
     fde:	1e 01       	movw	r2, r28
     fe0:	01 01       	movw	r0, r2
     fe2:	05 19       	sub	r16, r5
     fe4:	01 1d       	adc	r16, r1
     fe6:	07 00       	.word	0x0007	; ????
     fe8:	1a 18       	sub	r1, r10
     fea:	1f 1e       	adc	r1, r31
     fec:	1e 0e       	add	r1, r30
     fee:	1e 1e       	adc	r1, r30
     ff0:	1e 38       	cpi	r17, 0x8E	; 142
     ff2:	19 37       	cpi	r17, 0x79	; 121
     ff4:	1b 37       	cpi	r17, 0x7B	; 123
     ff6:	1b 35       	cpi	r17, 0x5B	; 91
     ff8:	37 1b       	sub	r19, r23
     ffa:	33 31       	cpi	r19, 0x13	; 19
     ffc:	34 31       	cpi	r19, 0x14	; 20
     ffe:	37 1f       	adc	r19, r23
    1000:	1f 3f       	cpi	r17, 0xFF	; 255
    1002:	38 1f       	adc	r19, r24
    1004:	08 1f       	adc	r16, r24
    1006:	18 1a       	sub	r1, r24
    1008:	1f 18       	sub	r1, r15
    100a:	1e 18       	sub	r1, r14
    100c:	07 18       	sub	r0, r7
    100e:	1a 18       	sub	r1, r10
    1010:	1e 1e       	adc	r1, r30
    1012:	18 1e       	adc	r1, r24
    1014:	00 1a       	sub	r0, r16
    1016:	1e 06       	cpc	r1, r30
    1018:	00 00       	nop
    101a:	1e 06       	cpc	r1, r30
    101c:	06 1a       	sub	r0, r22
    101e:	06 05       	cpc	r16, r6
    1020:	06 1e       	adc	r0, r22
    1022:	06 01       	movw	r0, r12
    1024:	19 06       	cpc	r1, r25
    1026:	19 19       	sub	r17, r9
    1028:	18 18       	sub	r1, r8
    102a:	18 1f       	adc	r17, r24
    102c:	1c 1a       	sub	r1, r28
    102e:	06 1e       	adc	r0, r22
    1030:	3e 1e       	adc	r3, r30
    1032:	31 1f       	adc	r19, r17
    1034:	33 37       	cpi	r19, 0x73	; 115
    1036:	31 37       	cpi	r19, 0x71	; 113
    1038:	33 31       	cpi	r19, 0x13	; 19
    103a:	34 1d       	adc	r19, r4
    103c:	35 35       	cpi	r19, 0x55	; 85
    103e:	37 37       	cpi	r19, 0x77	; 119
    1040:	18 18       	sub	r1, r8
    1042:	37 00       	.word	0x0037	; ????
    1044:	1f 0f       	add	r17, r31
    1046:	0a 18       	sub	r0, r10
    1048:	1c 06       	cpc	r1, r28
    104a:	1e 1c       	adc	r1, r14
    104c:	1a 1f       	adc	r17, r26
    104e:	1e 1e       	adc	r1, r30
    1050:	1e 1a       	sub	r1, r30
    1052:	1c 1a       	sub	r1, r28
    1054:	1e 1a       	sub	r1, r30
    1056:	1a 1e       	adc	r1, r26
    1058:	1e 1e       	adc	r1, r30
    105a:	18 07       	cpc	r17, r24
    105c:	00 07       	cpc	r16, r16
    105e:	06 06       	cpc	r0, r22
    1060:	1c 07       	cpc	r17, r28
    1062:	18 1e       	adc	r1, r24
    1064:	04 1a       	sub	r0, r20
    1066:	1e 06       	cpc	r1, r30

00001068 <port_to_output_PGM>:
    1068:	00 00 00 00 25 00 28 00 2b 00                       ....%.(.+.

00001072 <port_to_mode_PGM>:
    1072:	00 00 00 00 24 00 27 00 2a 00                       ....$.'.*.

0000107c <digital_pin_to_port_PGM>:
    107c:	04 04 04 04 04 04 04 04 02 02 02 02 02 02 03 03     ................
    108c:	03 03 03 03                                         ....

00001090 <digital_pin_to_bit_mask_PGM>:
    1090:	01 02 04 08 10 20 40 80 01 02 04 08 10 20 01 02     ..... @...... ..
    10a0:	04 08 10 20                                         ... 

000010a4 <__ctors_start>:
    10a4:	55 2a       	or	r5, r21

000010a6 <__ctors_end>:
    10a6:	11 24       	eor	r1, r1
    10a8:	1f be       	out	0x3f, r1	; 63
    10aa:	cf ef       	ldi	r28, 0xFF	; 255
    10ac:	d8 e0       	ldi	r29, 0x08	; 8
    10ae:	de bf       	out	0x3e, r29	; 62
    10b0:	cd bf       	out	0x3d, r28	; 61

000010b2 <__do_clear_bss>:
    10b2:	21 e0       	ldi	r18, 0x01	; 1
    10b4:	a0 e0       	ldi	r26, 0x00	; 0
    10b6:	b1 e0       	ldi	r27, 0x01	; 1
    10b8:	01 c0       	rjmp	.+2      	; 0x10bc <.do_clear_bss_start>

000010ba <.do_clear_bss_loop>:
    10ba:	1d 92       	st	X+, r1

000010bc <.do_clear_bss_start>:
    10bc:	a1 31       	cpi	r26, 0x11	; 17
    10be:	b2 07       	cpc	r27, r18
    10c0:	e1 f7       	brne	.-8      	; 0x10ba <.do_clear_bss_loop>

000010c2 <__do_global_ctors>:
    10c2:	18 e0       	ldi	r17, 0x08	; 8
    10c4:	c3 e5       	ldi	r28, 0x53	; 83
    10c6:	d8 e0       	ldi	r29, 0x08	; 8
    10c8:	04 c0       	rjmp	.+8      	; 0x10d2 <__do_global_ctors+0x10>
    10ca:	21 97       	sbiw	r28, 0x01	; 1
    10cc:	fe 01       	movw	r30, r28
    10ce:	0e 94 84 2a 	call	0x5508	; 0x5508 <__tablejump2__>
    10d2:	c2 35       	cpi	r28, 0x52	; 82
    10d4:	d1 07       	cpc	r29, r17
    10d6:	c9 f7       	brne	.-14     	; 0x10ca <__do_global_ctors+0x8>
    10d8:	0e 94 db 08 	call	0x11b6	; 0x11b6 <main>
    10dc:	0c 94 8a 2a 	jmp	0x5514	; 0x5514 <_exit>

000010e0 <__bad_interrupt>:
    10e0:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000010e4 <pinMode.constprop.2>:
#include "wiring_private.h"
#include "pins_arduino.h"

void pinMode(uint8_t pin, uint8_t mode)
{
	uint8_t bit = digitalPinToBitMask(pin);
    10e4:	90 e0       	ldi	r25, 0x00	; 0
    10e6:	fc 01       	movw	r30, r24
    10e8:	e0 57       	subi	r30, 0x70	; 112
    10ea:	ff 4e       	sbci	r31, 0xEF	; 239
    10ec:	24 91       	lpm	r18, Z
	uint8_t port = digitalPinToPort(pin);
    10ee:	84 58       	subi	r24, 0x84	; 132
    10f0:	9f 4e       	sbci	r25, 0xEF	; 239
    10f2:	fc 01       	movw	r30, r24
    10f4:	84 91       	lpm	r24, Z
	volatile uint8_t *reg, *out;

	if (port == NOT_A_PIN) return;
    10f6:	88 23       	and	r24, r24
    10f8:	99 f0       	breq	.+38     	; 0x1120 <pinMode.constprop.2+0x3c>

	// JWS: can I let the optimizer do this?
	reg = portModeRegister(port);
    10fa:	90 e0       	ldi	r25, 0x00	; 0
    10fc:	88 0f       	add	r24, r24
    10fe:	99 1f       	adc	r25, r25
    1100:	fc 01       	movw	r30, r24
    1102:	ee 58       	subi	r30, 0x8E	; 142
    1104:	ff 4e       	sbci	r31, 0xEF	; 239
    1106:	a5 91       	lpm	r26, Z+
    1108:	b4 91       	lpm	r27, Z
	out = portOutputRegister(port);
    110a:	fc 01       	movw	r30, r24
    110c:	e8 59       	subi	r30, 0x98	; 152
    110e:	ff 4e       	sbci	r31, 0xEF	; 239
    1110:	85 91       	lpm	r24, Z+
    1112:	94 91       	lpm	r25, Z
                cli();
		*reg &= ~bit;
		*out |= bit;
		SREG = oldSREG;
	} else {
		uint8_t oldSREG = SREG;
    1114:	8f b7       	in	r24, 0x3f	; 63
                cli();
    1116:	f8 94       	cli
		*reg |= bit;
    1118:	ec 91       	ld	r30, X
    111a:	e2 2b       	or	r30, r18
    111c:	ec 93       	st	X, r30
		SREG = oldSREG;
    111e:	8f bf       	out	0x3f, r24	; 63
	}
}
    1120:	08 95       	ret

00001122 <__vector_16>:
#if defined(TIM0_OVF_vect)
ISR(TIM0_OVF_vect)
#else
ISR(TIMER0_OVF_vect)
#endif
{
    1122:	1f 92       	push	r1
    1124:	0f 92       	push	r0
    1126:	0f b6       	in	r0, 0x3f	; 63
    1128:	0f 92       	push	r0
    112a:	11 24       	eor	r1, r1
    112c:	2f 93       	push	r18
    112e:	3f 93       	push	r19
    1130:	8f 93       	push	r24
    1132:	9f 93       	push	r25
    1134:	af 93       	push	r26
    1136:	bf 93       	push	r27
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
    1138:	80 91 0d 01 	lds	r24, 0x010D	; 0x80010d <timer0_millis>
    113c:	90 91 0e 01 	lds	r25, 0x010E	; 0x80010e <timer0_millis+0x1>
    1140:	a0 91 0f 01 	lds	r26, 0x010F	; 0x80010f <timer0_millis+0x2>
    1144:	b0 91 10 01 	lds	r27, 0x0110	; 0x800110 <timer0_millis+0x3>
	unsigned char f = timer0_fract;
    1148:	30 91 0c 01 	lds	r19, 0x010C	; 0x80010c <timer0_fract>

	m += MILLIS_INC;
	f += FRACT_INC;
    114c:	23 e0       	ldi	r18, 0x03	; 3
    114e:	23 0f       	add	r18, r19
	if (f >= FRACT_MAX) {
    1150:	2d 37       	cpi	r18, 0x7D	; 125
    1152:	58 f5       	brcc	.+86     	; 0x11aa <__vector_16+0x88>
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
	unsigned char f = timer0_fract;

	m += MILLIS_INC;
    1154:	01 96       	adiw	r24, 0x01	; 1
    1156:	a1 1d       	adc	r26, r1
    1158:	b1 1d       	adc	r27, r1
	if (f >= FRACT_MAX) {
		f -= FRACT_MAX;
		m += 1;
	}

	timer0_fract = f;
    115a:	20 93 0c 01 	sts	0x010C, r18	; 0x80010c <timer0_fract>
	timer0_millis = m;
    115e:	80 93 0d 01 	sts	0x010D, r24	; 0x80010d <timer0_millis>
    1162:	90 93 0e 01 	sts	0x010E, r25	; 0x80010e <timer0_millis+0x1>
    1166:	a0 93 0f 01 	sts	0x010F, r26	; 0x80010f <timer0_millis+0x2>
    116a:	b0 93 10 01 	sts	0x0110, r27	; 0x800110 <timer0_millis+0x3>
	timer0_overflow_count++;
    116e:	80 91 08 01 	lds	r24, 0x0108	; 0x800108 <timer0_overflow_count>
    1172:	90 91 09 01 	lds	r25, 0x0109	; 0x800109 <timer0_overflow_count+0x1>
    1176:	a0 91 0a 01 	lds	r26, 0x010A	; 0x80010a <timer0_overflow_count+0x2>
    117a:	b0 91 0b 01 	lds	r27, 0x010B	; 0x80010b <timer0_overflow_count+0x3>
    117e:	01 96       	adiw	r24, 0x01	; 1
    1180:	a1 1d       	adc	r26, r1
    1182:	b1 1d       	adc	r27, r1
    1184:	80 93 08 01 	sts	0x0108, r24	; 0x800108 <timer0_overflow_count>
    1188:	90 93 09 01 	sts	0x0109, r25	; 0x800109 <timer0_overflow_count+0x1>
    118c:	a0 93 0a 01 	sts	0x010A, r26	; 0x80010a <timer0_overflow_count+0x2>
    1190:	b0 93 0b 01 	sts	0x010B, r27	; 0x80010b <timer0_overflow_count+0x3>
}
    1194:	bf 91       	pop	r27
    1196:	af 91       	pop	r26
    1198:	9f 91       	pop	r25
    119a:	8f 91       	pop	r24
    119c:	3f 91       	pop	r19
    119e:	2f 91       	pop	r18
    11a0:	0f 90       	pop	r0
    11a2:	0f be       	out	0x3f, r0	; 63
    11a4:	0f 90       	pop	r0
    11a6:	1f 90       	pop	r1
    11a8:	18 95       	reti
	unsigned char f = timer0_fract;

	m += MILLIS_INC;
	f += FRACT_INC;
	if (f >= FRACT_MAX) {
		f -= FRACT_MAX;
    11aa:	26 e8       	ldi	r18, 0x86	; 134
    11ac:	23 0f       	add	r18, r19
		m += 1;
    11ae:	02 96       	adiw	r24, 0x02	; 2
    11b0:	a1 1d       	adc	r26, r1
    11b2:	b1 1d       	adc	r27, r1
    11b4:	d2 cf       	rjmp	.-92     	; 0x115a <__vector_16+0x38>

000011b6 <main>:

void init()
{
	// this needs to be called before setup() or some functions won't
	// work there
	sei();
    11b6:	78 94       	sei
	
	// on the ATmega168, timer 0 is also used for fast hardware pwm
	// (using phase-correct PWM would mean that timer 0 overflowed half as often
	// resulting in different millis() behavior on the ATmega8 and ATmega168)
#if defined(TCCR0A) && defined(WGM01)
	sbi(TCCR0A, WGM01);
    11b8:	84 b5       	in	r24, 0x24	; 36
    11ba:	82 60       	ori	r24, 0x02	; 2
    11bc:	84 bd       	out	0x24, r24	; 36
	sbi(TCCR0A, WGM00);
    11be:	84 b5       	in	r24, 0x24	; 36
    11c0:	81 60       	ori	r24, 0x01	; 1
    11c2:	84 bd       	out	0x24, r24	; 36
	// this combination is for the standard atmega8
	sbi(TCCR0, CS01);
	sbi(TCCR0, CS00);
#elif defined(TCCR0B) && defined(CS01) && defined(CS00)
	// this combination is for the standard 168/328/1280/2560
	sbi(TCCR0B, CS01);
    11c4:	85 b5       	in	r24, 0x25	; 37
    11c6:	82 60       	ori	r24, 0x02	; 2
    11c8:	85 bd       	out	0x25, r24	; 37
	sbi(TCCR0B, CS00);
    11ca:	85 b5       	in	r24, 0x25	; 37
    11cc:	81 60       	ori	r24, 0x01	; 1
    11ce:	85 bd       	out	0x25, r24	; 37

	// enable timer 0 overflow interrupt
#if defined(TIMSK) && defined(TOIE0)
	sbi(TIMSK, TOIE0);
#elif defined(TIMSK0) && defined(TOIE0)
	sbi(TIMSK0, TOIE0);
    11d0:	80 91 6e 00 	lds	r24, 0x006E	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
    11d4:	81 60       	ori	r24, 0x01	; 1
    11d6:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
	// this is better for motors as it ensures an even waveform
	// note, however, that fast pwm mode can achieve a frequency of up
	// 8 MHz (with a 16 MHz clock) at 50% duty cycle

#if defined(TCCR1B) && defined(CS11) && defined(CS10)
	TCCR1B = 0;
    11da:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>

	// set timer 1 prescale factor to 64
	sbi(TCCR1B, CS11);
    11de:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    11e2:	82 60       	ori	r24, 0x02	; 2
    11e4:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
#if F_CPU >= 8000000L
	sbi(TCCR1B, CS10);
    11e8:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    11ec:	81 60       	ori	r24, 0x01	; 1
    11ee:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
	sbi(TCCR1, CS10);
#endif
#endif
	// put timer 1 in 8-bit phase correct pwm mode
#if defined(TCCR1A) && defined(WGM10)
	sbi(TCCR1A, WGM10);
    11f2:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    11f6:	81 60       	ori	r24, 0x01	; 1
    11f8:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>

	// set timer 2 prescale factor to 64
#if defined(TCCR2) && defined(CS22)
	sbi(TCCR2, CS22);
#elif defined(TCCR2B) && defined(CS22)
	sbi(TCCR2B, CS22);
    11fc:	80 91 b1 00 	lds	r24, 0x00B1	; 0x8000b1 <__DATA_REGION_ORIGIN__+0x51>
    1200:	84 60       	ori	r24, 0x04	; 4
    1202:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__DATA_REGION_ORIGIN__+0x51>

	// configure timer 2 for phase correct pwm (8-bit)
#if defined(TCCR2) && defined(WGM20)
	sbi(TCCR2, WGM20);
#elif defined(TCCR2A) && defined(WGM20)
	sbi(TCCR2A, WGM20);
    1206:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
    120a:	81 60       	ori	r24, 0x01	; 1
    120c:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
#endif

#if defined(ADCSRA)
	// set a2d prescaler so we are inside the desired 50-200 KHz range.
	#if F_CPU >= 16000000 // 16 MHz / 128 = 125 KHz
		sbi(ADCSRA, ADPS2);
    1210:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    1214:	84 60       	ori	r24, 0x04	; 4
    1216:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		sbi(ADCSRA, ADPS1);
    121a:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    121e:	82 60       	ori	r24, 0x02	; 2
    1220:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		sbi(ADCSRA, ADPS0);
    1224:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    1228:	81 60       	ori	r24, 0x01	; 1
    122a:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		cbi(ADCSRA, ADPS2);
		cbi(ADCSRA, ADPS1);
		sbi(ADCSRA, ADPS0);
	#endif
	// enable a2d conversions
	sbi(ADCSRA, ADEN);
    122e:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    1232:	80 68       	ori	r24, 0x80	; 128
    1234:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
	// here so they can be used as normal digital i/o; they will be
	// reconnected in Serial.begin()
#if defined(UCSRB)
	UCSRB = 0;
#elif defined(UCSR0B)
	UCSR0B = 0;
    1238:	10 92 c1 00 	sts	0x00C1, r1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
	
	setup();
    
	for (;;) {
		loop();
		if (serialEventRun) serialEventRun();
    123c:	c0 e0       	ldi	r28, 0x00	; 0
    123e:	d0 e0       	ldi	r29, 0x00	; 0

void setupUSB() __attribute__((weak));
void setupUSB() { }

int main(void)
{
    1240:	50 e0       	ldi	r21, 0x00	; 0
    1242:	40 e0       	ldi	r20, 0x00	; 0
private:
    uint8_t rows = 0, coloumns = 0, row = 0, red = 0, green = 0, blue = 0;

    inline void stepRow()
    {
        if (row == 0)
    1244:	80 91 04 01 	lds	r24, 0x0104	; 0x800104 <_edata+0x4>
    1248:	81 11       	cpse	r24, r1
    124a:	0c 94 51 2a 	jmp	0x54a2	; 0x54a2 <main+0x42ec>
        {
            HIGH_RC;
    124e:	42 9a       	sbi	0x08, 2	; 8
            HIGH_RA;
    1250:	40 9a       	sbi	0x08, 0	; 8
            CLEAR_RA;
    1252:	40 98       	cbi	0x08, 0	; 8
            CLEAR_RC;
    1254:	42 98       	cbi	0x08, 2	; 8
        else
        {
            HIGH_RA;
            CLEAR_RA;
        }
        row = (row + 1) & 31;
    1256:	8f 5f       	subi	r24, 0xFF	; 255
    1258:	8f 71       	andi	r24, 0x1F	; 31
    125a:	80 93 04 01 	sts	0x0104, r24	; 0x800104 <_edata+0x4>
            // we integer divide the screen by 2 and then set 16 led to 8 values in pairs
            // bitness needs to be between 1 and 12, changes sent bitdepth. the lower, the faster
            // advance over 16 led to the next chip (4 led at 2x2 real life led per index in buffer -> 16/4/2=2) so 8 times every second row

            // we send first the MMSB, then MSB, LSB, LLSB
            index = ((y & ~1) << 5);
    125e:	ca 01       	movw	r24, r20
    1260:	80 7c       	andi	r24, 0xC0	; 192

#pragma region MMSB
            // chip 0
            SET_COLOR(pgm_read_byte(buffer + index + 0));
    1262:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1266:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    126a:	e8 0f       	add	r30, r24
    126c:	f9 1f       	adc	r31, r25
    126e:	e4 91       	lpm	r30, Z
    1270:	2b b1       	in	r18, 0x0b	; 11
    1272:	34 e0       	ldi	r19, 0x04	; 4
    1274:	e3 9f       	mul	r30, r19
    1276:	f0 01       	movw	r30, r0
    1278:	11 24       	eor	r1, r1
    127a:	23 70       	andi	r18, 0x03	; 3
    127c:	e2 2b       	or	r30, r18
    127e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1280:	25 b1       	in	r18, 0x05	; 5
    1282:	2a 60       	ori	r18, 0x0A	; 10
    1284:	25 b9       	out	0x05, r18	; 5
    1286:	25 b1       	in	r18, 0x05	; 5
    1288:	25 7f       	andi	r18, 0xF5	; 245
    128a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    128c:	25 b1       	in	r18, 0x05	; 5
    128e:	2a 60       	ori	r18, 0x0A	; 10
    1290:	25 b9       	out	0x05, r18	; 5
    1292:	25 b1       	in	r18, 0x05	; 5
    1294:	25 7f       	andi	r18, 0xF5	; 245
    1296:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 1));
    1298:	9c 01       	movw	r18, r24
    129a:	2f 5f       	subi	r18, 0xFF	; 255
    129c:	3f 4f       	sbci	r19, 0xFF	; 255
    129e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    12a2:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    12a6:	e2 0f       	add	r30, r18
    12a8:	f3 1f       	adc	r31, r19
    12aa:	e4 91       	lpm	r30, Z
    12ac:	2b b1       	in	r18, 0x0b	; 11
    12ae:	64 e0       	ldi	r22, 0x04	; 4
    12b0:	e6 9f       	mul	r30, r22
    12b2:	f0 01       	movw	r30, r0
    12b4:	11 24       	eor	r1, r1
    12b6:	23 70       	andi	r18, 0x03	; 3
    12b8:	e2 2b       	or	r30, r18
    12ba:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    12bc:	25 b1       	in	r18, 0x05	; 5
    12be:	2a 60       	ori	r18, 0x0A	; 10
    12c0:	25 b9       	out	0x05, r18	; 5
    12c2:	25 b1       	in	r18, 0x05	; 5
    12c4:	25 7f       	andi	r18, 0xF5	; 245
    12c6:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    12c8:	25 b1       	in	r18, 0x05	; 5
    12ca:	2a 60       	ori	r18, 0x0A	; 10
    12cc:	25 b9       	out	0x05, r18	; 5
    12ce:	25 b1       	in	r18, 0x05	; 5
    12d0:	25 7f       	andi	r18, 0xF5	; 245
    12d2:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 2));
    12d4:	9c 01       	movw	r18, r24
    12d6:	2e 5f       	subi	r18, 0xFE	; 254
    12d8:	3f 4f       	sbci	r19, 0xFF	; 255
    12da:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    12de:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    12e2:	e2 0f       	add	r30, r18
    12e4:	f3 1f       	adc	r31, r19
    12e6:	e4 91       	lpm	r30, Z
    12e8:	2b b1       	in	r18, 0x0b	; 11
    12ea:	74 e0       	ldi	r23, 0x04	; 4
    12ec:	e7 9f       	mul	r30, r23
    12ee:	f0 01       	movw	r30, r0
    12f0:	11 24       	eor	r1, r1
    12f2:	23 70       	andi	r18, 0x03	; 3
    12f4:	e2 2b       	or	r30, r18
    12f6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    12f8:	25 b1       	in	r18, 0x05	; 5
    12fa:	2a 60       	ori	r18, 0x0A	; 10
    12fc:	25 b9       	out	0x05, r18	; 5
    12fe:	25 b1       	in	r18, 0x05	; 5
    1300:	25 7f       	andi	r18, 0xF5	; 245
    1302:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1304:	25 b1       	in	r18, 0x05	; 5
    1306:	2a 60       	ori	r18, 0x0A	; 10
    1308:	25 b9       	out	0x05, r18	; 5
    130a:	25 b1       	in	r18, 0x05	; 5
    130c:	25 7f       	andi	r18, 0xF5	; 245
    130e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 3));
    1310:	9c 01       	movw	r18, r24
    1312:	2d 5f       	subi	r18, 0xFD	; 253
    1314:	3f 4f       	sbci	r19, 0xFF	; 255
    1316:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    131a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    131e:	e2 0f       	add	r30, r18
    1320:	f3 1f       	adc	r31, r19
    1322:	e4 91       	lpm	r30, Z
    1324:	2b b1       	in	r18, 0x0b	; 11
    1326:	34 e0       	ldi	r19, 0x04	; 4
    1328:	e3 9f       	mul	r30, r19
    132a:	f0 01       	movw	r30, r0
    132c:	11 24       	eor	r1, r1
    132e:	23 70       	andi	r18, 0x03	; 3
    1330:	e2 2b       	or	r30, r18
    1332:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1334:	25 b1       	in	r18, 0x05	; 5
    1336:	2a 60       	ori	r18, 0x0A	; 10
    1338:	25 b9       	out	0x05, r18	; 5
    133a:	25 b1       	in	r18, 0x05	; 5
    133c:	25 7f       	andi	r18, 0xF5	; 245
    133e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1340:	25 b1       	in	r18, 0x05	; 5
    1342:	2a 60       	ori	r18, 0x0A	; 10
    1344:	25 b9       	out	0x05, r18	; 5
    1346:	25 b1       	in	r18, 0x05	; 5
    1348:	25 7f       	andi	r18, 0xF5	; 245
    134a:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 4));
    134c:	9c 01       	movw	r18, r24
    134e:	2c 5f       	subi	r18, 0xFC	; 252
    1350:	3f 4f       	sbci	r19, 0xFF	; 255
    1352:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1356:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    135a:	e2 0f       	add	r30, r18
    135c:	f3 1f       	adc	r31, r19
    135e:	e4 91       	lpm	r30, Z
    1360:	2b b1       	in	r18, 0x0b	; 11
    1362:	64 e0       	ldi	r22, 0x04	; 4
    1364:	e6 9f       	mul	r30, r22
    1366:	f0 01       	movw	r30, r0
    1368:	11 24       	eor	r1, r1
    136a:	23 70       	andi	r18, 0x03	; 3
    136c:	e2 2b       	or	r30, r18
    136e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1370:	25 b1       	in	r18, 0x05	; 5
    1372:	2a 60       	ori	r18, 0x0A	; 10
    1374:	25 b9       	out	0x05, r18	; 5
    1376:	25 b1       	in	r18, 0x05	; 5
    1378:	25 7f       	andi	r18, 0xF5	; 245
    137a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    137c:	25 b1       	in	r18, 0x05	; 5
    137e:	2a 60       	ori	r18, 0x0A	; 10
    1380:	25 b9       	out	0x05, r18	; 5
    1382:	25 b1       	in	r18, 0x05	; 5
    1384:	25 7f       	andi	r18, 0xF5	; 245
    1386:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 5));
    1388:	9c 01       	movw	r18, r24
    138a:	2b 5f       	subi	r18, 0xFB	; 251
    138c:	3f 4f       	sbci	r19, 0xFF	; 255
    138e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1392:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1396:	e2 0f       	add	r30, r18
    1398:	f3 1f       	adc	r31, r19
    139a:	e4 91       	lpm	r30, Z
    139c:	2b b1       	in	r18, 0x0b	; 11
    139e:	74 e0       	ldi	r23, 0x04	; 4
    13a0:	e7 9f       	mul	r30, r23
    13a2:	f0 01       	movw	r30, r0
    13a4:	11 24       	eor	r1, r1
    13a6:	23 70       	andi	r18, 0x03	; 3
    13a8:	e2 2b       	or	r30, r18
    13aa:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    13ac:	25 b1       	in	r18, 0x05	; 5
    13ae:	2a 60       	ori	r18, 0x0A	; 10
    13b0:	25 b9       	out	0x05, r18	; 5
    13b2:	25 b1       	in	r18, 0x05	; 5
    13b4:	25 7f       	andi	r18, 0xF5	; 245
    13b6:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    13b8:	25 b1       	in	r18, 0x05	; 5
    13ba:	2a 60       	ori	r18, 0x0A	; 10
    13bc:	25 b9       	out	0x05, r18	; 5
    13be:	25 b1       	in	r18, 0x05	; 5
    13c0:	25 7f       	andi	r18, 0xF5	; 245
    13c2:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 6));
    13c4:	9c 01       	movw	r18, r24
    13c6:	2a 5f       	subi	r18, 0xFA	; 250
    13c8:	3f 4f       	sbci	r19, 0xFF	; 255
    13ca:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    13ce:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    13d2:	e2 0f       	add	r30, r18
    13d4:	f3 1f       	adc	r31, r19
    13d6:	e4 91       	lpm	r30, Z
    13d8:	2b b1       	in	r18, 0x0b	; 11
    13da:	34 e0       	ldi	r19, 0x04	; 4
    13dc:	e3 9f       	mul	r30, r19
    13de:	f0 01       	movw	r30, r0
    13e0:	11 24       	eor	r1, r1
    13e2:	23 70       	andi	r18, 0x03	; 3
    13e4:	e2 2b       	or	r30, r18
    13e6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    13e8:	25 b1       	in	r18, 0x05	; 5
    13ea:	2a 60       	ori	r18, 0x0A	; 10
    13ec:	25 b9       	out	0x05, r18	; 5
    13ee:	25 b1       	in	r18, 0x05	; 5
    13f0:	25 7f       	andi	r18, 0xF5	; 245
    13f2:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    13f4:	25 b1       	in	r18, 0x05	; 5
    13f6:	2a 60       	ori	r18, 0x0A	; 10
    13f8:	25 b9       	out	0x05, r18	; 5
    13fa:	25 b1       	in	r18, 0x05	; 5
    13fc:	25 7f       	andi	r18, 0xF5	; 245
    13fe:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 7));
    1400:	9c 01       	movw	r18, r24
    1402:	29 5f       	subi	r18, 0xF9	; 249
    1404:	3f 4f       	sbci	r19, 0xFF	; 255
    1406:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    140a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    140e:	e2 0f       	add	r30, r18
    1410:	f3 1f       	adc	r31, r19
    1412:	e4 91       	lpm	r30, Z
    1414:	2b b1       	in	r18, 0x0b	; 11
    1416:	64 e0       	ldi	r22, 0x04	; 4
    1418:	e6 9f       	mul	r30, r22
    141a:	f0 01       	movw	r30, r0
    141c:	11 24       	eor	r1, r1
    141e:	23 70       	andi	r18, 0x03	; 3
    1420:	e2 2b       	or	r30, r18
    1422:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1424:	25 b1       	in	r18, 0x05	; 5
    1426:	2a 60       	ori	r18, 0x0A	; 10
    1428:	25 b9       	out	0x05, r18	; 5
    142a:	25 b1       	in	r18, 0x05	; 5
    142c:	25 7f       	andi	r18, 0xF5	; 245
    142e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1430:	25 b1       	in	r18, 0x05	; 5
    1432:	2a 60       	ori	r18, 0x0A	; 10
    1434:	25 b9       	out	0x05, r18	; 5
    1436:	25 b1       	in	r18, 0x05	; 5
    1438:	25 7f       	andi	r18, 0xF5	; 245
    143a:	25 b9       	out	0x05, r18	; 5

            // chip 1
            SET_COLOR(pgm_read_byte(buffer + index + 8));
    143c:	9c 01       	movw	r18, r24
    143e:	28 5f       	subi	r18, 0xF8	; 248
    1440:	3f 4f       	sbci	r19, 0xFF	; 255
    1442:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1446:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    144a:	e2 0f       	add	r30, r18
    144c:	f3 1f       	adc	r31, r19
    144e:	e4 91       	lpm	r30, Z
    1450:	2b b1       	in	r18, 0x0b	; 11
    1452:	74 e0       	ldi	r23, 0x04	; 4
    1454:	e7 9f       	mul	r30, r23
    1456:	f0 01       	movw	r30, r0
    1458:	11 24       	eor	r1, r1
    145a:	23 70       	andi	r18, 0x03	; 3
    145c:	e2 2b       	or	r30, r18
    145e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1460:	25 b1       	in	r18, 0x05	; 5
    1462:	2a 60       	ori	r18, 0x0A	; 10
    1464:	25 b9       	out	0x05, r18	; 5
    1466:	25 b1       	in	r18, 0x05	; 5
    1468:	25 7f       	andi	r18, 0xF5	; 245
    146a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    146c:	25 b1       	in	r18, 0x05	; 5
    146e:	2a 60       	ori	r18, 0x0A	; 10
    1470:	25 b9       	out	0x05, r18	; 5
    1472:	25 b1       	in	r18, 0x05	; 5
    1474:	25 7f       	andi	r18, 0xF5	; 245
    1476:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 9));
    1478:	9c 01       	movw	r18, r24
    147a:	27 5f       	subi	r18, 0xF7	; 247
    147c:	3f 4f       	sbci	r19, 0xFF	; 255
    147e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1482:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1486:	e2 0f       	add	r30, r18
    1488:	f3 1f       	adc	r31, r19
    148a:	e4 91       	lpm	r30, Z
    148c:	2b b1       	in	r18, 0x0b	; 11
    148e:	34 e0       	ldi	r19, 0x04	; 4
    1490:	e3 9f       	mul	r30, r19
    1492:	f0 01       	movw	r30, r0
    1494:	11 24       	eor	r1, r1
    1496:	23 70       	andi	r18, 0x03	; 3
    1498:	e2 2b       	or	r30, r18
    149a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    149c:	25 b1       	in	r18, 0x05	; 5
    149e:	2a 60       	ori	r18, 0x0A	; 10
    14a0:	25 b9       	out	0x05, r18	; 5
    14a2:	25 b1       	in	r18, 0x05	; 5
    14a4:	25 7f       	andi	r18, 0xF5	; 245
    14a6:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    14a8:	25 b1       	in	r18, 0x05	; 5
    14aa:	2a 60       	ori	r18, 0x0A	; 10
    14ac:	25 b9       	out	0x05, r18	; 5
    14ae:	25 b1       	in	r18, 0x05	; 5
    14b0:	25 7f       	andi	r18, 0xF5	; 245
    14b2:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 10));
    14b4:	9c 01       	movw	r18, r24
    14b6:	26 5f       	subi	r18, 0xF6	; 246
    14b8:	3f 4f       	sbci	r19, 0xFF	; 255
    14ba:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    14be:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    14c2:	e2 0f       	add	r30, r18
    14c4:	f3 1f       	adc	r31, r19
    14c6:	e4 91       	lpm	r30, Z
    14c8:	2b b1       	in	r18, 0x0b	; 11
    14ca:	64 e0       	ldi	r22, 0x04	; 4
    14cc:	e6 9f       	mul	r30, r22
    14ce:	f0 01       	movw	r30, r0
    14d0:	11 24       	eor	r1, r1
    14d2:	23 70       	andi	r18, 0x03	; 3
    14d4:	e2 2b       	or	r30, r18
    14d6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    14d8:	25 b1       	in	r18, 0x05	; 5
    14da:	2a 60       	ori	r18, 0x0A	; 10
    14dc:	25 b9       	out	0x05, r18	; 5
    14de:	25 b1       	in	r18, 0x05	; 5
    14e0:	25 7f       	andi	r18, 0xF5	; 245
    14e2:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    14e4:	25 b1       	in	r18, 0x05	; 5
    14e6:	2a 60       	ori	r18, 0x0A	; 10
    14e8:	25 b9       	out	0x05, r18	; 5
    14ea:	25 b1       	in	r18, 0x05	; 5
    14ec:	25 7f       	andi	r18, 0xF5	; 245
    14ee:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 11));
    14f0:	9c 01       	movw	r18, r24
    14f2:	25 5f       	subi	r18, 0xF5	; 245
    14f4:	3f 4f       	sbci	r19, 0xFF	; 255
    14f6:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    14fa:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    14fe:	e2 0f       	add	r30, r18
    1500:	f3 1f       	adc	r31, r19
    1502:	e4 91       	lpm	r30, Z
    1504:	2b b1       	in	r18, 0x0b	; 11
    1506:	74 e0       	ldi	r23, 0x04	; 4
    1508:	e7 9f       	mul	r30, r23
    150a:	f0 01       	movw	r30, r0
    150c:	11 24       	eor	r1, r1
    150e:	23 70       	andi	r18, 0x03	; 3
    1510:	e2 2b       	or	r30, r18
    1512:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1514:	25 b1       	in	r18, 0x05	; 5
    1516:	2a 60       	ori	r18, 0x0A	; 10
    1518:	25 b9       	out	0x05, r18	; 5
    151a:	25 b1       	in	r18, 0x05	; 5
    151c:	25 7f       	andi	r18, 0xF5	; 245
    151e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1520:	25 b1       	in	r18, 0x05	; 5
    1522:	2a 60       	ori	r18, 0x0A	; 10
    1524:	25 b9       	out	0x05, r18	; 5
    1526:	25 b1       	in	r18, 0x05	; 5
    1528:	25 7f       	andi	r18, 0xF5	; 245
    152a:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 12));
    152c:	9c 01       	movw	r18, r24
    152e:	24 5f       	subi	r18, 0xF4	; 244
    1530:	3f 4f       	sbci	r19, 0xFF	; 255
    1532:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1536:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    153a:	e2 0f       	add	r30, r18
    153c:	f3 1f       	adc	r31, r19
    153e:	e4 91       	lpm	r30, Z
    1540:	2b b1       	in	r18, 0x0b	; 11
    1542:	34 e0       	ldi	r19, 0x04	; 4
    1544:	e3 9f       	mul	r30, r19
    1546:	f0 01       	movw	r30, r0
    1548:	11 24       	eor	r1, r1
    154a:	23 70       	andi	r18, 0x03	; 3
    154c:	e2 2b       	or	r30, r18
    154e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1550:	25 b1       	in	r18, 0x05	; 5
    1552:	2a 60       	ori	r18, 0x0A	; 10
    1554:	25 b9       	out	0x05, r18	; 5
    1556:	25 b1       	in	r18, 0x05	; 5
    1558:	25 7f       	andi	r18, 0xF5	; 245
    155a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    155c:	25 b1       	in	r18, 0x05	; 5
    155e:	2a 60       	ori	r18, 0x0A	; 10
    1560:	25 b9       	out	0x05, r18	; 5
    1562:	25 b1       	in	r18, 0x05	; 5
    1564:	25 7f       	andi	r18, 0xF5	; 245
    1566:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 13));
    1568:	9c 01       	movw	r18, r24
    156a:	23 5f       	subi	r18, 0xF3	; 243
    156c:	3f 4f       	sbci	r19, 0xFF	; 255
    156e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1572:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1576:	e2 0f       	add	r30, r18
    1578:	f3 1f       	adc	r31, r19
    157a:	e4 91       	lpm	r30, Z
    157c:	2b b1       	in	r18, 0x0b	; 11
    157e:	64 e0       	ldi	r22, 0x04	; 4
    1580:	e6 9f       	mul	r30, r22
    1582:	f0 01       	movw	r30, r0
    1584:	11 24       	eor	r1, r1
    1586:	23 70       	andi	r18, 0x03	; 3
    1588:	e2 2b       	or	r30, r18
    158a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    158c:	25 b1       	in	r18, 0x05	; 5
    158e:	2a 60       	ori	r18, 0x0A	; 10
    1590:	25 b9       	out	0x05, r18	; 5
    1592:	25 b1       	in	r18, 0x05	; 5
    1594:	25 7f       	andi	r18, 0xF5	; 245
    1596:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1598:	25 b1       	in	r18, 0x05	; 5
    159a:	2a 60       	ori	r18, 0x0A	; 10
    159c:	25 b9       	out	0x05, r18	; 5
    159e:	25 b1       	in	r18, 0x05	; 5
    15a0:	25 7f       	andi	r18, 0xF5	; 245
    15a2:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 14));
    15a4:	9c 01       	movw	r18, r24
    15a6:	22 5f       	subi	r18, 0xF2	; 242
    15a8:	3f 4f       	sbci	r19, 0xFF	; 255
    15aa:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    15ae:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    15b2:	e2 0f       	add	r30, r18
    15b4:	f3 1f       	adc	r31, r19
    15b6:	e4 91       	lpm	r30, Z
    15b8:	2b b1       	in	r18, 0x0b	; 11
    15ba:	74 e0       	ldi	r23, 0x04	; 4
    15bc:	e7 9f       	mul	r30, r23
    15be:	f0 01       	movw	r30, r0
    15c0:	11 24       	eor	r1, r1
    15c2:	23 70       	andi	r18, 0x03	; 3
    15c4:	e2 2b       	or	r30, r18
    15c6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    15c8:	25 b1       	in	r18, 0x05	; 5
    15ca:	2a 60       	ori	r18, 0x0A	; 10
    15cc:	25 b9       	out	0x05, r18	; 5
    15ce:	25 b1       	in	r18, 0x05	; 5
    15d0:	25 7f       	andi	r18, 0xF5	; 245
    15d2:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    15d4:	25 b1       	in	r18, 0x05	; 5
    15d6:	2a 60       	ori	r18, 0x0A	; 10
    15d8:	25 b9       	out	0x05, r18	; 5
    15da:	25 b1       	in	r18, 0x05	; 5
    15dc:	25 7f       	andi	r18, 0xF5	; 245
    15de:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 15));
    15e0:	9c 01       	movw	r18, r24
    15e2:	21 5f       	subi	r18, 0xF1	; 241
    15e4:	3f 4f       	sbci	r19, 0xFF	; 255
    15e6:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    15ea:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    15ee:	e2 0f       	add	r30, r18
    15f0:	f3 1f       	adc	r31, r19
    15f2:	e4 91       	lpm	r30, Z
    15f4:	2b b1       	in	r18, 0x0b	; 11
    15f6:	34 e0       	ldi	r19, 0x04	; 4
    15f8:	e3 9f       	mul	r30, r19
    15fa:	f0 01       	movw	r30, r0
    15fc:	11 24       	eor	r1, r1
    15fe:	23 70       	andi	r18, 0x03	; 3
    1600:	e2 2b       	or	r30, r18
    1602:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1604:	25 b1       	in	r18, 0x05	; 5
    1606:	2a 60       	ori	r18, 0x0A	; 10
    1608:	25 b9       	out	0x05, r18	; 5
    160a:	25 b1       	in	r18, 0x05	; 5
    160c:	25 7f       	andi	r18, 0xF5	; 245
    160e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1610:	25 b1       	in	r18, 0x05	; 5
    1612:	2a 60       	ori	r18, 0x0A	; 10
    1614:	25 b9       	out	0x05, r18	; 5
    1616:	25 b1       	in	r18, 0x05	; 5
    1618:	25 7f       	andi	r18, 0xF5	; 245
    161a:	25 b9       	out	0x05, r18	; 5

            // chip 2
            SET_COLOR(pgm_read_byte(buffer + index + 16));
    161c:	9c 01       	movw	r18, r24
    161e:	20 5f       	subi	r18, 0xF0	; 240
    1620:	3f 4f       	sbci	r19, 0xFF	; 255
    1622:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1626:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    162a:	e2 0f       	add	r30, r18
    162c:	f3 1f       	adc	r31, r19
    162e:	e4 91       	lpm	r30, Z
    1630:	2b b1       	in	r18, 0x0b	; 11
    1632:	64 e0       	ldi	r22, 0x04	; 4
    1634:	e6 9f       	mul	r30, r22
    1636:	f0 01       	movw	r30, r0
    1638:	11 24       	eor	r1, r1
    163a:	23 70       	andi	r18, 0x03	; 3
    163c:	e2 2b       	or	r30, r18
    163e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1640:	25 b1       	in	r18, 0x05	; 5
    1642:	2a 60       	ori	r18, 0x0A	; 10
    1644:	25 b9       	out	0x05, r18	; 5
    1646:	25 b1       	in	r18, 0x05	; 5
    1648:	25 7f       	andi	r18, 0xF5	; 245
    164a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    164c:	25 b1       	in	r18, 0x05	; 5
    164e:	2a 60       	ori	r18, 0x0A	; 10
    1650:	25 b9       	out	0x05, r18	; 5
    1652:	25 b1       	in	r18, 0x05	; 5
    1654:	25 7f       	andi	r18, 0xF5	; 245
    1656:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 17));
    1658:	9c 01       	movw	r18, r24
    165a:	2f 5e       	subi	r18, 0xEF	; 239
    165c:	3f 4f       	sbci	r19, 0xFF	; 255
    165e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1662:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1666:	e2 0f       	add	r30, r18
    1668:	f3 1f       	adc	r31, r19
    166a:	e4 91       	lpm	r30, Z
    166c:	2b b1       	in	r18, 0x0b	; 11
    166e:	74 e0       	ldi	r23, 0x04	; 4
    1670:	e7 9f       	mul	r30, r23
    1672:	f0 01       	movw	r30, r0
    1674:	11 24       	eor	r1, r1
    1676:	23 70       	andi	r18, 0x03	; 3
    1678:	e2 2b       	or	r30, r18
    167a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    167c:	25 b1       	in	r18, 0x05	; 5
    167e:	2a 60       	ori	r18, 0x0A	; 10
    1680:	25 b9       	out	0x05, r18	; 5
    1682:	25 b1       	in	r18, 0x05	; 5
    1684:	25 7f       	andi	r18, 0xF5	; 245
    1686:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1688:	25 b1       	in	r18, 0x05	; 5
    168a:	2a 60       	ori	r18, 0x0A	; 10
    168c:	25 b9       	out	0x05, r18	; 5
    168e:	25 b1       	in	r18, 0x05	; 5
    1690:	25 7f       	andi	r18, 0xF5	; 245
    1692:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 18));
    1694:	9c 01       	movw	r18, r24
    1696:	2e 5e       	subi	r18, 0xEE	; 238
    1698:	3f 4f       	sbci	r19, 0xFF	; 255
    169a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    169e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    16a2:	e2 0f       	add	r30, r18
    16a4:	f3 1f       	adc	r31, r19
    16a6:	e4 91       	lpm	r30, Z
    16a8:	2b b1       	in	r18, 0x0b	; 11
    16aa:	34 e0       	ldi	r19, 0x04	; 4
    16ac:	e3 9f       	mul	r30, r19
    16ae:	f0 01       	movw	r30, r0
    16b0:	11 24       	eor	r1, r1
    16b2:	23 70       	andi	r18, 0x03	; 3
    16b4:	e2 2b       	or	r30, r18
    16b6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    16b8:	25 b1       	in	r18, 0x05	; 5
    16ba:	2a 60       	ori	r18, 0x0A	; 10
    16bc:	25 b9       	out	0x05, r18	; 5
    16be:	25 b1       	in	r18, 0x05	; 5
    16c0:	25 7f       	andi	r18, 0xF5	; 245
    16c2:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    16c4:	25 b1       	in	r18, 0x05	; 5
    16c6:	2a 60       	ori	r18, 0x0A	; 10
    16c8:	25 b9       	out	0x05, r18	; 5
    16ca:	25 b1       	in	r18, 0x05	; 5
    16cc:	25 7f       	andi	r18, 0xF5	; 245
    16ce:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 19));
    16d0:	9c 01       	movw	r18, r24
    16d2:	2d 5e       	subi	r18, 0xED	; 237
    16d4:	3f 4f       	sbci	r19, 0xFF	; 255
    16d6:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    16da:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    16de:	e2 0f       	add	r30, r18
    16e0:	f3 1f       	adc	r31, r19
    16e2:	e4 91       	lpm	r30, Z
    16e4:	2b b1       	in	r18, 0x0b	; 11
    16e6:	64 e0       	ldi	r22, 0x04	; 4
    16e8:	e6 9f       	mul	r30, r22
    16ea:	f0 01       	movw	r30, r0
    16ec:	11 24       	eor	r1, r1
    16ee:	23 70       	andi	r18, 0x03	; 3
    16f0:	e2 2b       	or	r30, r18
    16f2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    16f4:	25 b1       	in	r18, 0x05	; 5
    16f6:	2a 60       	ori	r18, 0x0A	; 10
    16f8:	25 b9       	out	0x05, r18	; 5
    16fa:	25 b1       	in	r18, 0x05	; 5
    16fc:	25 7f       	andi	r18, 0xF5	; 245
    16fe:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1700:	25 b1       	in	r18, 0x05	; 5
    1702:	2a 60       	ori	r18, 0x0A	; 10
    1704:	25 b9       	out	0x05, r18	; 5
    1706:	25 b1       	in	r18, 0x05	; 5
    1708:	25 7f       	andi	r18, 0xF5	; 245
    170a:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 20));
    170c:	9c 01       	movw	r18, r24
    170e:	2c 5e       	subi	r18, 0xEC	; 236
    1710:	3f 4f       	sbci	r19, 0xFF	; 255
    1712:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1716:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    171a:	e2 0f       	add	r30, r18
    171c:	f3 1f       	adc	r31, r19
    171e:	e4 91       	lpm	r30, Z
    1720:	2b b1       	in	r18, 0x0b	; 11
    1722:	74 e0       	ldi	r23, 0x04	; 4
    1724:	e7 9f       	mul	r30, r23
    1726:	f0 01       	movw	r30, r0
    1728:	11 24       	eor	r1, r1
    172a:	23 70       	andi	r18, 0x03	; 3
    172c:	e2 2b       	or	r30, r18
    172e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1730:	25 b1       	in	r18, 0x05	; 5
    1732:	2a 60       	ori	r18, 0x0A	; 10
    1734:	25 b9       	out	0x05, r18	; 5
    1736:	25 b1       	in	r18, 0x05	; 5
    1738:	25 7f       	andi	r18, 0xF5	; 245
    173a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    173c:	25 b1       	in	r18, 0x05	; 5
    173e:	2a 60       	ori	r18, 0x0A	; 10
    1740:	25 b9       	out	0x05, r18	; 5
    1742:	25 b1       	in	r18, 0x05	; 5
    1744:	25 7f       	andi	r18, 0xF5	; 245
    1746:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 21));
    1748:	9c 01       	movw	r18, r24
    174a:	2b 5e       	subi	r18, 0xEB	; 235
    174c:	3f 4f       	sbci	r19, 0xFF	; 255
    174e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1752:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1756:	e2 0f       	add	r30, r18
    1758:	f3 1f       	adc	r31, r19
    175a:	e4 91       	lpm	r30, Z
    175c:	2b b1       	in	r18, 0x0b	; 11
    175e:	34 e0       	ldi	r19, 0x04	; 4
    1760:	e3 9f       	mul	r30, r19
    1762:	f0 01       	movw	r30, r0
    1764:	11 24       	eor	r1, r1
    1766:	23 70       	andi	r18, 0x03	; 3
    1768:	e2 2b       	or	r30, r18
    176a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    176c:	25 b1       	in	r18, 0x05	; 5
    176e:	2a 60       	ori	r18, 0x0A	; 10
    1770:	25 b9       	out	0x05, r18	; 5
    1772:	25 b1       	in	r18, 0x05	; 5
    1774:	25 7f       	andi	r18, 0xF5	; 245
    1776:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1778:	25 b1       	in	r18, 0x05	; 5
    177a:	2a 60       	ori	r18, 0x0A	; 10
    177c:	25 b9       	out	0x05, r18	; 5
    177e:	25 b1       	in	r18, 0x05	; 5
    1780:	25 7f       	andi	r18, 0xF5	; 245
    1782:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 22));
    1784:	9c 01       	movw	r18, r24
    1786:	2a 5e       	subi	r18, 0xEA	; 234
    1788:	3f 4f       	sbci	r19, 0xFF	; 255
    178a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    178e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1792:	e2 0f       	add	r30, r18
    1794:	f3 1f       	adc	r31, r19
    1796:	e4 91       	lpm	r30, Z
    1798:	2b b1       	in	r18, 0x0b	; 11
    179a:	64 e0       	ldi	r22, 0x04	; 4
    179c:	e6 9f       	mul	r30, r22
    179e:	f0 01       	movw	r30, r0
    17a0:	11 24       	eor	r1, r1
    17a2:	23 70       	andi	r18, 0x03	; 3
    17a4:	e2 2b       	or	r30, r18
    17a6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    17a8:	25 b1       	in	r18, 0x05	; 5
    17aa:	2a 60       	ori	r18, 0x0A	; 10
    17ac:	25 b9       	out	0x05, r18	; 5
    17ae:	25 b1       	in	r18, 0x05	; 5
    17b0:	25 7f       	andi	r18, 0xF5	; 245
    17b2:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    17b4:	25 b1       	in	r18, 0x05	; 5
    17b6:	2a 60       	ori	r18, 0x0A	; 10
    17b8:	25 b9       	out	0x05, r18	; 5
    17ba:	25 b1       	in	r18, 0x05	; 5
    17bc:	25 7f       	andi	r18, 0xF5	; 245
    17be:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 23));
    17c0:	9c 01       	movw	r18, r24
    17c2:	29 5e       	subi	r18, 0xE9	; 233
    17c4:	3f 4f       	sbci	r19, 0xFF	; 255
    17c6:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    17ca:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    17ce:	e2 0f       	add	r30, r18
    17d0:	f3 1f       	adc	r31, r19
    17d2:	e4 91       	lpm	r30, Z
    17d4:	2b b1       	in	r18, 0x0b	; 11
    17d6:	74 e0       	ldi	r23, 0x04	; 4
    17d8:	e7 9f       	mul	r30, r23
    17da:	f0 01       	movw	r30, r0
    17dc:	11 24       	eor	r1, r1
    17de:	23 70       	andi	r18, 0x03	; 3
    17e0:	e2 2b       	or	r30, r18
    17e2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    17e4:	25 b1       	in	r18, 0x05	; 5
    17e6:	2a 60       	ori	r18, 0x0A	; 10
    17e8:	25 b9       	out	0x05, r18	; 5
    17ea:	25 b1       	in	r18, 0x05	; 5
    17ec:	25 7f       	andi	r18, 0xF5	; 245
    17ee:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    17f0:	25 b1       	in	r18, 0x05	; 5
    17f2:	2a 60       	ori	r18, 0x0A	; 10
    17f4:	25 b9       	out	0x05, r18	; 5
    17f6:	25 b1       	in	r18, 0x05	; 5
    17f8:	25 7f       	andi	r18, 0xF5	; 245
    17fa:	25 b9       	out	0x05, r18	; 5

            // chip 3
            SET_COLOR(pgm_read_byte(buffer + index + 24));
    17fc:	9c 01       	movw	r18, r24
    17fe:	28 5e       	subi	r18, 0xE8	; 232
    1800:	3f 4f       	sbci	r19, 0xFF	; 255
    1802:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1806:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    180a:	e2 0f       	add	r30, r18
    180c:	f3 1f       	adc	r31, r19
    180e:	e4 91       	lpm	r30, Z
    1810:	2b b1       	in	r18, 0x0b	; 11
    1812:	34 e0       	ldi	r19, 0x04	; 4
    1814:	e3 9f       	mul	r30, r19
    1816:	f0 01       	movw	r30, r0
    1818:	11 24       	eor	r1, r1
    181a:	23 70       	andi	r18, 0x03	; 3
    181c:	e2 2b       	or	r30, r18
    181e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1820:	25 b1       	in	r18, 0x05	; 5
    1822:	2a 60       	ori	r18, 0x0A	; 10
    1824:	25 b9       	out	0x05, r18	; 5
    1826:	25 b1       	in	r18, 0x05	; 5
    1828:	25 7f       	andi	r18, 0xF5	; 245
    182a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    182c:	25 b1       	in	r18, 0x05	; 5
    182e:	2a 60       	ori	r18, 0x0A	; 10
    1830:	25 b9       	out	0x05, r18	; 5
    1832:	25 b1       	in	r18, 0x05	; 5
    1834:	25 7f       	andi	r18, 0xF5	; 245
    1836:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 25));
    1838:	9c 01       	movw	r18, r24
    183a:	27 5e       	subi	r18, 0xE7	; 231
    183c:	3f 4f       	sbci	r19, 0xFF	; 255
    183e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1842:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1846:	e2 0f       	add	r30, r18
    1848:	f3 1f       	adc	r31, r19
    184a:	e4 91       	lpm	r30, Z
    184c:	2b b1       	in	r18, 0x0b	; 11
    184e:	64 e0       	ldi	r22, 0x04	; 4
    1850:	e6 9f       	mul	r30, r22
    1852:	f0 01       	movw	r30, r0
    1854:	11 24       	eor	r1, r1
    1856:	23 70       	andi	r18, 0x03	; 3
    1858:	e2 2b       	or	r30, r18
    185a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    185c:	25 b1       	in	r18, 0x05	; 5
    185e:	2a 60       	ori	r18, 0x0A	; 10
    1860:	25 b9       	out	0x05, r18	; 5
    1862:	25 b1       	in	r18, 0x05	; 5
    1864:	25 7f       	andi	r18, 0xF5	; 245
    1866:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1868:	25 b1       	in	r18, 0x05	; 5
    186a:	2a 60       	ori	r18, 0x0A	; 10
    186c:	25 b9       	out	0x05, r18	; 5
    186e:	25 b1       	in	r18, 0x05	; 5
    1870:	25 7f       	andi	r18, 0xF5	; 245
    1872:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 26));
    1874:	9c 01       	movw	r18, r24
    1876:	26 5e       	subi	r18, 0xE6	; 230
    1878:	3f 4f       	sbci	r19, 0xFF	; 255
    187a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    187e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1882:	e2 0f       	add	r30, r18
    1884:	f3 1f       	adc	r31, r19
    1886:	e4 91       	lpm	r30, Z
    1888:	2b b1       	in	r18, 0x0b	; 11
    188a:	74 e0       	ldi	r23, 0x04	; 4
    188c:	e7 9f       	mul	r30, r23
    188e:	f0 01       	movw	r30, r0
    1890:	11 24       	eor	r1, r1
    1892:	23 70       	andi	r18, 0x03	; 3
    1894:	e2 2b       	or	r30, r18
    1896:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1898:	25 b1       	in	r18, 0x05	; 5
    189a:	2a 60       	ori	r18, 0x0A	; 10
    189c:	25 b9       	out	0x05, r18	; 5
    189e:	25 b1       	in	r18, 0x05	; 5
    18a0:	25 7f       	andi	r18, 0xF5	; 245
    18a2:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    18a4:	25 b1       	in	r18, 0x05	; 5
    18a6:	2a 60       	ori	r18, 0x0A	; 10
    18a8:	25 b9       	out	0x05, r18	; 5
    18aa:	25 b1       	in	r18, 0x05	; 5
    18ac:	25 7f       	andi	r18, 0xF5	; 245
    18ae:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 27));
    18b0:	9c 01       	movw	r18, r24
    18b2:	25 5e       	subi	r18, 0xE5	; 229
    18b4:	3f 4f       	sbci	r19, 0xFF	; 255
    18b6:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    18ba:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    18be:	e2 0f       	add	r30, r18
    18c0:	f3 1f       	adc	r31, r19
    18c2:	e4 91       	lpm	r30, Z
    18c4:	2b b1       	in	r18, 0x0b	; 11
    18c6:	34 e0       	ldi	r19, 0x04	; 4
    18c8:	e3 9f       	mul	r30, r19
    18ca:	f0 01       	movw	r30, r0
    18cc:	11 24       	eor	r1, r1
    18ce:	23 70       	andi	r18, 0x03	; 3
    18d0:	e2 2b       	or	r30, r18
    18d2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    18d4:	25 b1       	in	r18, 0x05	; 5
    18d6:	2a 60       	ori	r18, 0x0A	; 10
    18d8:	25 b9       	out	0x05, r18	; 5
    18da:	25 b1       	in	r18, 0x05	; 5
    18dc:	25 7f       	andi	r18, 0xF5	; 245
    18de:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    18e0:	25 b1       	in	r18, 0x05	; 5
    18e2:	2a 60       	ori	r18, 0x0A	; 10
    18e4:	25 b9       	out	0x05, r18	; 5
    18e6:	25 b1       	in	r18, 0x05	; 5
    18e8:	25 7f       	andi	r18, 0xF5	; 245
    18ea:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 28));
    18ec:	9c 01       	movw	r18, r24
    18ee:	24 5e       	subi	r18, 0xE4	; 228
    18f0:	3f 4f       	sbci	r19, 0xFF	; 255
    18f2:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    18f6:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    18fa:	e2 0f       	add	r30, r18
    18fc:	f3 1f       	adc	r31, r19
    18fe:	e4 91       	lpm	r30, Z
    1900:	2b b1       	in	r18, 0x0b	; 11
    1902:	64 e0       	ldi	r22, 0x04	; 4
    1904:	e6 9f       	mul	r30, r22
    1906:	f0 01       	movw	r30, r0
    1908:	11 24       	eor	r1, r1
    190a:	23 70       	andi	r18, 0x03	; 3
    190c:	e2 2b       	or	r30, r18
    190e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1910:	25 b1       	in	r18, 0x05	; 5
    1912:	2a 60       	ori	r18, 0x0A	; 10
    1914:	25 b9       	out	0x05, r18	; 5
    1916:	25 b1       	in	r18, 0x05	; 5
    1918:	25 7f       	andi	r18, 0xF5	; 245
    191a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    191c:	25 b1       	in	r18, 0x05	; 5
    191e:	2a 60       	ori	r18, 0x0A	; 10
    1920:	25 b9       	out	0x05, r18	; 5
    1922:	25 b1       	in	r18, 0x05	; 5
    1924:	25 7f       	andi	r18, 0xF5	; 245
    1926:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 29));
    1928:	9c 01       	movw	r18, r24
    192a:	23 5e       	subi	r18, 0xE3	; 227
    192c:	3f 4f       	sbci	r19, 0xFF	; 255
    192e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1932:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1936:	e2 0f       	add	r30, r18
    1938:	f3 1f       	adc	r31, r19
    193a:	e4 91       	lpm	r30, Z
    193c:	2b b1       	in	r18, 0x0b	; 11
    193e:	74 e0       	ldi	r23, 0x04	; 4
    1940:	e7 9f       	mul	r30, r23
    1942:	f0 01       	movw	r30, r0
    1944:	11 24       	eor	r1, r1
    1946:	23 70       	andi	r18, 0x03	; 3
    1948:	e2 2b       	or	r30, r18
    194a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    194c:	25 b1       	in	r18, 0x05	; 5
    194e:	2a 60       	ori	r18, 0x0A	; 10
    1950:	25 b9       	out	0x05, r18	; 5
    1952:	25 b1       	in	r18, 0x05	; 5
    1954:	25 7f       	andi	r18, 0xF5	; 245
    1956:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1958:	25 b1       	in	r18, 0x05	; 5
    195a:	2a 60       	ori	r18, 0x0A	; 10
    195c:	25 b9       	out	0x05, r18	; 5
    195e:	25 b1       	in	r18, 0x05	; 5
    1960:	25 7f       	andi	r18, 0xF5	; 245
    1962:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 30));
    1964:	9c 01       	movw	r18, r24
    1966:	22 5e       	subi	r18, 0xE2	; 226
    1968:	3f 4f       	sbci	r19, 0xFF	; 255
    196a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    196e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1972:	e2 0f       	add	r30, r18
    1974:	f3 1f       	adc	r31, r19
    1976:	e4 91       	lpm	r30, Z
    1978:	2b b1       	in	r18, 0x0b	; 11
    197a:	34 e0       	ldi	r19, 0x04	; 4
    197c:	e3 9f       	mul	r30, r19
    197e:	f0 01       	movw	r30, r0
    1980:	11 24       	eor	r1, r1
    1982:	23 70       	andi	r18, 0x03	; 3
    1984:	e2 2b       	or	r30, r18
    1986:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1988:	25 b1       	in	r18, 0x05	; 5
    198a:	2a 60       	ori	r18, 0x0A	; 10
    198c:	25 b9       	out	0x05, r18	; 5
    198e:	25 b1       	in	r18, 0x05	; 5
    1990:	25 7f       	andi	r18, 0xF5	; 245
    1992:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1994:	25 b1       	in	r18, 0x05	; 5
    1996:	2a 60       	ori	r18, 0x0A	; 10
    1998:	25 b9       	out	0x05, r18	; 5
    199a:	25 b1       	in	r18, 0x05	; 5
    199c:	25 7f       	andi	r18, 0xF5	; 245
    199e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 31));
    19a0:	9c 01       	movw	r18, r24
    19a2:	21 5e       	subi	r18, 0xE1	; 225
    19a4:	3f 4f       	sbci	r19, 0xFF	; 255
    19a6:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    19aa:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    19ae:	e2 0f       	add	r30, r18
    19b0:	f3 1f       	adc	r31, r19
    19b2:	e4 91       	lpm	r30, Z
    19b4:	2b b1       	in	r18, 0x0b	; 11
    19b6:	64 e0       	ldi	r22, 0x04	; 4
    19b8:	e6 9f       	mul	r30, r22
    19ba:	f0 01       	movw	r30, r0
    19bc:	11 24       	eor	r1, r1
    19be:	23 70       	andi	r18, 0x03	; 3
    19c0:	e2 2b       	or	r30, r18
    19c2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    19c4:	25 b1       	in	r18, 0x05	; 5
    19c6:	2a 60       	ori	r18, 0x0A	; 10
    19c8:	25 b9       	out	0x05, r18	; 5
    19ca:	25 b1       	in	r18, 0x05	; 5
    19cc:	25 7f       	andi	r18, 0xF5	; 245
    19ce:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    19d0:	25 b1       	in	r18, 0x05	; 5
    19d2:	2a 60       	ori	r18, 0x0A	; 10
    19d4:	25 b9       	out	0x05, r18	; 5
    19d6:	25 b1       	in	r18, 0x05	; 5
    19d8:	25 7f       	andi	r18, 0xF5	; 245
    19da:	25 b9       	out	0x05, r18	; 5

            // chip 4
            SET_COLOR(pgm_read_byte(buffer + index + 32));
    19dc:	9c 01       	movw	r18, r24
    19de:	20 5e       	subi	r18, 0xE0	; 224
    19e0:	3f 4f       	sbci	r19, 0xFF	; 255
    19e2:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    19e6:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    19ea:	e2 0f       	add	r30, r18
    19ec:	f3 1f       	adc	r31, r19
    19ee:	e4 91       	lpm	r30, Z
    19f0:	2b b1       	in	r18, 0x0b	; 11
    19f2:	74 e0       	ldi	r23, 0x04	; 4
    19f4:	e7 9f       	mul	r30, r23
    19f6:	f0 01       	movw	r30, r0
    19f8:	11 24       	eor	r1, r1
    19fa:	23 70       	andi	r18, 0x03	; 3
    19fc:	e2 2b       	or	r30, r18
    19fe:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1a00:	25 b1       	in	r18, 0x05	; 5
    1a02:	2a 60       	ori	r18, 0x0A	; 10
    1a04:	25 b9       	out	0x05, r18	; 5
    1a06:	25 b1       	in	r18, 0x05	; 5
    1a08:	25 7f       	andi	r18, 0xF5	; 245
    1a0a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1a0c:	25 b1       	in	r18, 0x05	; 5
    1a0e:	2a 60       	ori	r18, 0x0A	; 10
    1a10:	25 b9       	out	0x05, r18	; 5
    1a12:	25 b1       	in	r18, 0x05	; 5
    1a14:	25 7f       	andi	r18, 0xF5	; 245
    1a16:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 33));
    1a18:	9c 01       	movw	r18, r24
    1a1a:	2f 5d       	subi	r18, 0xDF	; 223
    1a1c:	3f 4f       	sbci	r19, 0xFF	; 255
    1a1e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1a22:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1a26:	e2 0f       	add	r30, r18
    1a28:	f3 1f       	adc	r31, r19
    1a2a:	e4 91       	lpm	r30, Z
    1a2c:	2b b1       	in	r18, 0x0b	; 11
    1a2e:	34 e0       	ldi	r19, 0x04	; 4
    1a30:	e3 9f       	mul	r30, r19
    1a32:	f0 01       	movw	r30, r0
    1a34:	11 24       	eor	r1, r1
    1a36:	23 70       	andi	r18, 0x03	; 3
    1a38:	e2 2b       	or	r30, r18
    1a3a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1a3c:	25 b1       	in	r18, 0x05	; 5
    1a3e:	2a 60       	ori	r18, 0x0A	; 10
    1a40:	25 b9       	out	0x05, r18	; 5
    1a42:	25 b1       	in	r18, 0x05	; 5
    1a44:	25 7f       	andi	r18, 0xF5	; 245
    1a46:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1a48:	25 b1       	in	r18, 0x05	; 5
    1a4a:	2a 60       	ori	r18, 0x0A	; 10
    1a4c:	25 b9       	out	0x05, r18	; 5
    1a4e:	25 b1       	in	r18, 0x05	; 5
    1a50:	25 7f       	andi	r18, 0xF5	; 245
    1a52:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 34));
    1a54:	9c 01       	movw	r18, r24
    1a56:	2e 5d       	subi	r18, 0xDE	; 222
    1a58:	3f 4f       	sbci	r19, 0xFF	; 255
    1a5a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1a5e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1a62:	e2 0f       	add	r30, r18
    1a64:	f3 1f       	adc	r31, r19
    1a66:	e4 91       	lpm	r30, Z
    1a68:	2b b1       	in	r18, 0x0b	; 11
    1a6a:	64 e0       	ldi	r22, 0x04	; 4
    1a6c:	e6 9f       	mul	r30, r22
    1a6e:	f0 01       	movw	r30, r0
    1a70:	11 24       	eor	r1, r1
    1a72:	23 70       	andi	r18, 0x03	; 3
    1a74:	e2 2b       	or	r30, r18
    1a76:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1a78:	25 b1       	in	r18, 0x05	; 5
    1a7a:	2a 60       	ori	r18, 0x0A	; 10
    1a7c:	25 b9       	out	0x05, r18	; 5
    1a7e:	25 b1       	in	r18, 0x05	; 5
    1a80:	25 7f       	andi	r18, 0xF5	; 245
    1a82:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1a84:	25 b1       	in	r18, 0x05	; 5
    1a86:	2a 60       	ori	r18, 0x0A	; 10
    1a88:	25 b9       	out	0x05, r18	; 5
    1a8a:	25 b1       	in	r18, 0x05	; 5
    1a8c:	25 7f       	andi	r18, 0xF5	; 245
    1a8e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 35));
    1a90:	9c 01       	movw	r18, r24
    1a92:	2d 5d       	subi	r18, 0xDD	; 221
    1a94:	3f 4f       	sbci	r19, 0xFF	; 255
    1a96:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1a9a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1a9e:	e2 0f       	add	r30, r18
    1aa0:	f3 1f       	adc	r31, r19
    1aa2:	e4 91       	lpm	r30, Z
    1aa4:	2b b1       	in	r18, 0x0b	; 11
    1aa6:	74 e0       	ldi	r23, 0x04	; 4
    1aa8:	e7 9f       	mul	r30, r23
    1aaa:	f0 01       	movw	r30, r0
    1aac:	11 24       	eor	r1, r1
    1aae:	23 70       	andi	r18, 0x03	; 3
    1ab0:	e2 2b       	or	r30, r18
    1ab2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1ab4:	25 b1       	in	r18, 0x05	; 5
    1ab6:	2a 60       	ori	r18, 0x0A	; 10
    1ab8:	25 b9       	out	0x05, r18	; 5
    1aba:	25 b1       	in	r18, 0x05	; 5
    1abc:	25 7f       	andi	r18, 0xF5	; 245
    1abe:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1ac0:	25 b1       	in	r18, 0x05	; 5
    1ac2:	2a 60       	ori	r18, 0x0A	; 10
    1ac4:	25 b9       	out	0x05, r18	; 5
    1ac6:	25 b1       	in	r18, 0x05	; 5
    1ac8:	25 7f       	andi	r18, 0xF5	; 245
    1aca:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 36));
    1acc:	9c 01       	movw	r18, r24
    1ace:	2c 5d       	subi	r18, 0xDC	; 220
    1ad0:	3f 4f       	sbci	r19, 0xFF	; 255
    1ad2:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1ad6:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1ada:	e2 0f       	add	r30, r18
    1adc:	f3 1f       	adc	r31, r19
    1ade:	e4 91       	lpm	r30, Z
    1ae0:	2b b1       	in	r18, 0x0b	; 11
    1ae2:	34 e0       	ldi	r19, 0x04	; 4
    1ae4:	e3 9f       	mul	r30, r19
    1ae6:	f0 01       	movw	r30, r0
    1ae8:	11 24       	eor	r1, r1
    1aea:	23 70       	andi	r18, 0x03	; 3
    1aec:	e2 2b       	or	r30, r18
    1aee:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1af0:	25 b1       	in	r18, 0x05	; 5
    1af2:	2a 60       	ori	r18, 0x0A	; 10
    1af4:	25 b9       	out	0x05, r18	; 5
    1af6:	25 b1       	in	r18, 0x05	; 5
    1af8:	25 7f       	andi	r18, 0xF5	; 245
    1afa:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1afc:	25 b1       	in	r18, 0x05	; 5
    1afe:	2a 60       	ori	r18, 0x0A	; 10
    1b00:	25 b9       	out	0x05, r18	; 5
    1b02:	25 b1       	in	r18, 0x05	; 5
    1b04:	25 7f       	andi	r18, 0xF5	; 245
    1b06:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 37));
    1b08:	9c 01       	movw	r18, r24
    1b0a:	2b 5d       	subi	r18, 0xDB	; 219
    1b0c:	3f 4f       	sbci	r19, 0xFF	; 255
    1b0e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1b12:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1b16:	e2 0f       	add	r30, r18
    1b18:	f3 1f       	adc	r31, r19
    1b1a:	e4 91       	lpm	r30, Z
    1b1c:	2b b1       	in	r18, 0x0b	; 11
    1b1e:	64 e0       	ldi	r22, 0x04	; 4
    1b20:	e6 9f       	mul	r30, r22
    1b22:	f0 01       	movw	r30, r0
    1b24:	11 24       	eor	r1, r1
    1b26:	23 70       	andi	r18, 0x03	; 3
    1b28:	e2 2b       	or	r30, r18
    1b2a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1b2c:	25 b1       	in	r18, 0x05	; 5
    1b2e:	2a 60       	ori	r18, 0x0A	; 10
    1b30:	25 b9       	out	0x05, r18	; 5
    1b32:	25 b1       	in	r18, 0x05	; 5
    1b34:	25 7f       	andi	r18, 0xF5	; 245
    1b36:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1b38:	25 b1       	in	r18, 0x05	; 5
    1b3a:	2a 60       	ori	r18, 0x0A	; 10
    1b3c:	25 b9       	out	0x05, r18	; 5
    1b3e:	25 b1       	in	r18, 0x05	; 5
    1b40:	25 7f       	andi	r18, 0xF5	; 245
    1b42:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 38));
    1b44:	9c 01       	movw	r18, r24
    1b46:	2a 5d       	subi	r18, 0xDA	; 218
    1b48:	3f 4f       	sbci	r19, 0xFF	; 255
    1b4a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1b4e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1b52:	e2 0f       	add	r30, r18
    1b54:	f3 1f       	adc	r31, r19
    1b56:	e4 91       	lpm	r30, Z
    1b58:	2b b1       	in	r18, 0x0b	; 11
    1b5a:	74 e0       	ldi	r23, 0x04	; 4
    1b5c:	e7 9f       	mul	r30, r23
    1b5e:	f0 01       	movw	r30, r0
    1b60:	11 24       	eor	r1, r1
    1b62:	23 70       	andi	r18, 0x03	; 3
    1b64:	e2 2b       	or	r30, r18
    1b66:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1b68:	25 b1       	in	r18, 0x05	; 5
    1b6a:	2a 60       	ori	r18, 0x0A	; 10
    1b6c:	25 b9       	out	0x05, r18	; 5
    1b6e:	25 b1       	in	r18, 0x05	; 5
    1b70:	25 7f       	andi	r18, 0xF5	; 245
    1b72:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1b74:	25 b1       	in	r18, 0x05	; 5
    1b76:	2a 60       	ori	r18, 0x0A	; 10
    1b78:	25 b9       	out	0x05, r18	; 5
    1b7a:	25 b1       	in	r18, 0x05	; 5
    1b7c:	25 7f       	andi	r18, 0xF5	; 245
    1b7e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 39));
    1b80:	9c 01       	movw	r18, r24
    1b82:	29 5d       	subi	r18, 0xD9	; 217
    1b84:	3f 4f       	sbci	r19, 0xFF	; 255
    1b86:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1b8a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1b8e:	e2 0f       	add	r30, r18
    1b90:	f3 1f       	adc	r31, r19
    1b92:	e4 91       	lpm	r30, Z
    1b94:	2b b1       	in	r18, 0x0b	; 11
    1b96:	34 e0       	ldi	r19, 0x04	; 4
    1b98:	e3 9f       	mul	r30, r19
    1b9a:	f0 01       	movw	r30, r0
    1b9c:	11 24       	eor	r1, r1
    1b9e:	23 70       	andi	r18, 0x03	; 3
    1ba0:	e2 2b       	or	r30, r18
    1ba2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1ba4:	25 b1       	in	r18, 0x05	; 5
    1ba6:	2a 60       	ori	r18, 0x0A	; 10
    1ba8:	25 b9       	out	0x05, r18	; 5
    1baa:	25 b1       	in	r18, 0x05	; 5
    1bac:	25 7f       	andi	r18, 0xF5	; 245
    1bae:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1bb0:	25 b1       	in	r18, 0x05	; 5
    1bb2:	2a 60       	ori	r18, 0x0A	; 10
    1bb4:	25 b9       	out	0x05, r18	; 5
    1bb6:	25 b1       	in	r18, 0x05	; 5
    1bb8:	25 7f       	andi	r18, 0xF5	; 245
    1bba:	25 b9       	out	0x05, r18	; 5

            // chip 5
            SET_COLOR(pgm_read_byte(buffer + index + 40));
    1bbc:	9c 01       	movw	r18, r24
    1bbe:	28 5d       	subi	r18, 0xD8	; 216
    1bc0:	3f 4f       	sbci	r19, 0xFF	; 255
    1bc2:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1bc6:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1bca:	e2 0f       	add	r30, r18
    1bcc:	f3 1f       	adc	r31, r19
    1bce:	e4 91       	lpm	r30, Z
    1bd0:	2b b1       	in	r18, 0x0b	; 11
    1bd2:	64 e0       	ldi	r22, 0x04	; 4
    1bd4:	e6 9f       	mul	r30, r22
    1bd6:	f0 01       	movw	r30, r0
    1bd8:	11 24       	eor	r1, r1
    1bda:	23 70       	andi	r18, 0x03	; 3
    1bdc:	e2 2b       	or	r30, r18
    1bde:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1be0:	25 b1       	in	r18, 0x05	; 5
    1be2:	2a 60       	ori	r18, 0x0A	; 10
    1be4:	25 b9       	out	0x05, r18	; 5
    1be6:	25 b1       	in	r18, 0x05	; 5
    1be8:	25 7f       	andi	r18, 0xF5	; 245
    1bea:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1bec:	25 b1       	in	r18, 0x05	; 5
    1bee:	2a 60       	ori	r18, 0x0A	; 10
    1bf0:	25 b9       	out	0x05, r18	; 5
    1bf2:	25 b1       	in	r18, 0x05	; 5
    1bf4:	25 7f       	andi	r18, 0xF5	; 245
    1bf6:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 41));
    1bf8:	9c 01       	movw	r18, r24
    1bfa:	27 5d       	subi	r18, 0xD7	; 215
    1bfc:	3f 4f       	sbci	r19, 0xFF	; 255
    1bfe:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1c02:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1c06:	e2 0f       	add	r30, r18
    1c08:	f3 1f       	adc	r31, r19
    1c0a:	e4 91       	lpm	r30, Z
    1c0c:	2b b1       	in	r18, 0x0b	; 11
    1c0e:	74 e0       	ldi	r23, 0x04	; 4
    1c10:	e7 9f       	mul	r30, r23
    1c12:	f0 01       	movw	r30, r0
    1c14:	11 24       	eor	r1, r1
    1c16:	23 70       	andi	r18, 0x03	; 3
    1c18:	e2 2b       	or	r30, r18
    1c1a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1c1c:	25 b1       	in	r18, 0x05	; 5
    1c1e:	2a 60       	ori	r18, 0x0A	; 10
    1c20:	25 b9       	out	0x05, r18	; 5
    1c22:	25 b1       	in	r18, 0x05	; 5
    1c24:	25 7f       	andi	r18, 0xF5	; 245
    1c26:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1c28:	25 b1       	in	r18, 0x05	; 5
    1c2a:	2a 60       	ori	r18, 0x0A	; 10
    1c2c:	25 b9       	out	0x05, r18	; 5
    1c2e:	25 b1       	in	r18, 0x05	; 5
    1c30:	25 7f       	andi	r18, 0xF5	; 245
    1c32:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 42));
    1c34:	9c 01       	movw	r18, r24
    1c36:	26 5d       	subi	r18, 0xD6	; 214
    1c38:	3f 4f       	sbci	r19, 0xFF	; 255
    1c3a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1c3e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1c42:	e2 0f       	add	r30, r18
    1c44:	f3 1f       	adc	r31, r19
    1c46:	e4 91       	lpm	r30, Z
    1c48:	2b b1       	in	r18, 0x0b	; 11
    1c4a:	34 e0       	ldi	r19, 0x04	; 4
    1c4c:	e3 9f       	mul	r30, r19
    1c4e:	f0 01       	movw	r30, r0
    1c50:	11 24       	eor	r1, r1
    1c52:	23 70       	andi	r18, 0x03	; 3
    1c54:	e2 2b       	or	r30, r18
    1c56:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1c58:	25 b1       	in	r18, 0x05	; 5
    1c5a:	2a 60       	ori	r18, 0x0A	; 10
    1c5c:	25 b9       	out	0x05, r18	; 5
    1c5e:	25 b1       	in	r18, 0x05	; 5
    1c60:	25 7f       	andi	r18, 0xF5	; 245
    1c62:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1c64:	25 b1       	in	r18, 0x05	; 5
    1c66:	2a 60       	ori	r18, 0x0A	; 10
    1c68:	25 b9       	out	0x05, r18	; 5
    1c6a:	25 b1       	in	r18, 0x05	; 5
    1c6c:	25 7f       	andi	r18, 0xF5	; 245
    1c6e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 43));
    1c70:	9c 01       	movw	r18, r24
    1c72:	25 5d       	subi	r18, 0xD5	; 213
    1c74:	3f 4f       	sbci	r19, 0xFF	; 255
    1c76:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1c7a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1c7e:	e2 0f       	add	r30, r18
    1c80:	f3 1f       	adc	r31, r19
    1c82:	e4 91       	lpm	r30, Z
    1c84:	2b b1       	in	r18, 0x0b	; 11
    1c86:	64 e0       	ldi	r22, 0x04	; 4
    1c88:	e6 9f       	mul	r30, r22
    1c8a:	f0 01       	movw	r30, r0
    1c8c:	11 24       	eor	r1, r1
    1c8e:	23 70       	andi	r18, 0x03	; 3
    1c90:	e2 2b       	or	r30, r18
    1c92:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1c94:	25 b1       	in	r18, 0x05	; 5
    1c96:	2a 60       	ori	r18, 0x0A	; 10
    1c98:	25 b9       	out	0x05, r18	; 5
    1c9a:	25 b1       	in	r18, 0x05	; 5
    1c9c:	25 7f       	andi	r18, 0xF5	; 245
    1c9e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1ca0:	25 b1       	in	r18, 0x05	; 5
    1ca2:	2a 60       	ori	r18, 0x0A	; 10
    1ca4:	25 b9       	out	0x05, r18	; 5
    1ca6:	25 b1       	in	r18, 0x05	; 5
    1ca8:	25 7f       	andi	r18, 0xF5	; 245
    1caa:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 44));
    1cac:	9c 01       	movw	r18, r24
    1cae:	24 5d       	subi	r18, 0xD4	; 212
    1cb0:	3f 4f       	sbci	r19, 0xFF	; 255
    1cb2:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1cb6:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1cba:	e2 0f       	add	r30, r18
    1cbc:	f3 1f       	adc	r31, r19
    1cbe:	e4 91       	lpm	r30, Z
    1cc0:	2b b1       	in	r18, 0x0b	; 11
    1cc2:	74 e0       	ldi	r23, 0x04	; 4
    1cc4:	e7 9f       	mul	r30, r23
    1cc6:	f0 01       	movw	r30, r0
    1cc8:	11 24       	eor	r1, r1
    1cca:	23 70       	andi	r18, 0x03	; 3
    1ccc:	e2 2b       	or	r30, r18
    1cce:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1cd0:	25 b1       	in	r18, 0x05	; 5
    1cd2:	2a 60       	ori	r18, 0x0A	; 10
    1cd4:	25 b9       	out	0x05, r18	; 5
    1cd6:	25 b1       	in	r18, 0x05	; 5
    1cd8:	25 7f       	andi	r18, 0xF5	; 245
    1cda:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1cdc:	25 b1       	in	r18, 0x05	; 5
    1cde:	2a 60       	ori	r18, 0x0A	; 10
    1ce0:	25 b9       	out	0x05, r18	; 5
    1ce2:	25 b1       	in	r18, 0x05	; 5
    1ce4:	25 7f       	andi	r18, 0xF5	; 245
    1ce6:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 45));
    1ce8:	9c 01       	movw	r18, r24
    1cea:	23 5d       	subi	r18, 0xD3	; 211
    1cec:	3f 4f       	sbci	r19, 0xFF	; 255
    1cee:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1cf2:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1cf6:	e2 0f       	add	r30, r18
    1cf8:	f3 1f       	adc	r31, r19
    1cfa:	e4 91       	lpm	r30, Z
    1cfc:	2b b1       	in	r18, 0x0b	; 11
    1cfe:	34 e0       	ldi	r19, 0x04	; 4
    1d00:	e3 9f       	mul	r30, r19
    1d02:	f0 01       	movw	r30, r0
    1d04:	11 24       	eor	r1, r1
    1d06:	23 70       	andi	r18, 0x03	; 3
    1d08:	e2 2b       	or	r30, r18
    1d0a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1d0c:	25 b1       	in	r18, 0x05	; 5
    1d0e:	2a 60       	ori	r18, 0x0A	; 10
    1d10:	25 b9       	out	0x05, r18	; 5
    1d12:	25 b1       	in	r18, 0x05	; 5
    1d14:	25 7f       	andi	r18, 0xF5	; 245
    1d16:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1d18:	25 b1       	in	r18, 0x05	; 5
    1d1a:	2a 60       	ori	r18, 0x0A	; 10
    1d1c:	25 b9       	out	0x05, r18	; 5
    1d1e:	25 b1       	in	r18, 0x05	; 5
    1d20:	25 7f       	andi	r18, 0xF5	; 245
    1d22:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 46));
    1d24:	9c 01       	movw	r18, r24
    1d26:	22 5d       	subi	r18, 0xD2	; 210
    1d28:	3f 4f       	sbci	r19, 0xFF	; 255
    1d2a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1d2e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1d32:	e2 0f       	add	r30, r18
    1d34:	f3 1f       	adc	r31, r19
    1d36:	e4 91       	lpm	r30, Z
    1d38:	2b b1       	in	r18, 0x0b	; 11
    1d3a:	64 e0       	ldi	r22, 0x04	; 4
    1d3c:	e6 9f       	mul	r30, r22
    1d3e:	f0 01       	movw	r30, r0
    1d40:	11 24       	eor	r1, r1
    1d42:	23 70       	andi	r18, 0x03	; 3
    1d44:	e2 2b       	or	r30, r18
    1d46:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1d48:	25 b1       	in	r18, 0x05	; 5
    1d4a:	2a 60       	ori	r18, 0x0A	; 10
    1d4c:	25 b9       	out	0x05, r18	; 5
    1d4e:	25 b1       	in	r18, 0x05	; 5
    1d50:	25 7f       	andi	r18, 0xF5	; 245
    1d52:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1d54:	25 b1       	in	r18, 0x05	; 5
    1d56:	2a 60       	ori	r18, 0x0A	; 10
    1d58:	25 b9       	out	0x05, r18	; 5
    1d5a:	25 b1       	in	r18, 0x05	; 5
    1d5c:	25 7f       	andi	r18, 0xF5	; 245
    1d5e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 47));
    1d60:	9c 01       	movw	r18, r24
    1d62:	21 5d       	subi	r18, 0xD1	; 209
    1d64:	3f 4f       	sbci	r19, 0xFF	; 255
    1d66:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1d6a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1d6e:	e2 0f       	add	r30, r18
    1d70:	f3 1f       	adc	r31, r19
    1d72:	e4 91       	lpm	r30, Z
    1d74:	2b b1       	in	r18, 0x0b	; 11
    1d76:	74 e0       	ldi	r23, 0x04	; 4
    1d78:	e7 9f       	mul	r30, r23
    1d7a:	f0 01       	movw	r30, r0
    1d7c:	11 24       	eor	r1, r1
    1d7e:	23 70       	andi	r18, 0x03	; 3
    1d80:	e2 2b       	or	r30, r18
    1d82:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1d84:	25 b1       	in	r18, 0x05	; 5
    1d86:	2a 60       	ori	r18, 0x0A	; 10
    1d88:	25 b9       	out	0x05, r18	; 5
    1d8a:	25 b1       	in	r18, 0x05	; 5
    1d8c:	25 7f       	andi	r18, 0xF5	; 245
    1d8e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1d90:	25 b1       	in	r18, 0x05	; 5
    1d92:	2a 60       	ori	r18, 0x0A	; 10
    1d94:	25 b9       	out	0x05, r18	; 5
    1d96:	25 b1       	in	r18, 0x05	; 5
    1d98:	25 7f       	andi	r18, 0xF5	; 245
    1d9a:	25 b9       	out	0x05, r18	; 5

            // chip 6
            SET_COLOR(pgm_read_byte(buffer + index + 48));
    1d9c:	9c 01       	movw	r18, r24
    1d9e:	20 5d       	subi	r18, 0xD0	; 208
    1da0:	3f 4f       	sbci	r19, 0xFF	; 255
    1da2:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1da6:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1daa:	e2 0f       	add	r30, r18
    1dac:	f3 1f       	adc	r31, r19
    1dae:	e4 91       	lpm	r30, Z
    1db0:	2b b1       	in	r18, 0x0b	; 11
    1db2:	34 e0       	ldi	r19, 0x04	; 4
    1db4:	e3 9f       	mul	r30, r19
    1db6:	f0 01       	movw	r30, r0
    1db8:	11 24       	eor	r1, r1
    1dba:	23 70       	andi	r18, 0x03	; 3
    1dbc:	e2 2b       	or	r30, r18
    1dbe:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1dc0:	25 b1       	in	r18, 0x05	; 5
    1dc2:	2a 60       	ori	r18, 0x0A	; 10
    1dc4:	25 b9       	out	0x05, r18	; 5
    1dc6:	25 b1       	in	r18, 0x05	; 5
    1dc8:	25 7f       	andi	r18, 0xF5	; 245
    1dca:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1dcc:	25 b1       	in	r18, 0x05	; 5
    1dce:	2a 60       	ori	r18, 0x0A	; 10
    1dd0:	25 b9       	out	0x05, r18	; 5
    1dd2:	25 b1       	in	r18, 0x05	; 5
    1dd4:	25 7f       	andi	r18, 0xF5	; 245
    1dd6:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 49));
    1dd8:	9c 01       	movw	r18, r24
    1dda:	2f 5c       	subi	r18, 0xCF	; 207
    1ddc:	3f 4f       	sbci	r19, 0xFF	; 255
    1dde:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1de2:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1de6:	e2 0f       	add	r30, r18
    1de8:	f3 1f       	adc	r31, r19
    1dea:	e4 91       	lpm	r30, Z
    1dec:	2b b1       	in	r18, 0x0b	; 11
    1dee:	64 e0       	ldi	r22, 0x04	; 4
    1df0:	e6 9f       	mul	r30, r22
    1df2:	f0 01       	movw	r30, r0
    1df4:	11 24       	eor	r1, r1
    1df6:	23 70       	andi	r18, 0x03	; 3
    1df8:	e2 2b       	or	r30, r18
    1dfa:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1dfc:	25 b1       	in	r18, 0x05	; 5
    1dfe:	2a 60       	ori	r18, 0x0A	; 10
    1e00:	25 b9       	out	0x05, r18	; 5
    1e02:	25 b1       	in	r18, 0x05	; 5
    1e04:	25 7f       	andi	r18, 0xF5	; 245
    1e06:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1e08:	25 b1       	in	r18, 0x05	; 5
    1e0a:	2a 60       	ori	r18, 0x0A	; 10
    1e0c:	25 b9       	out	0x05, r18	; 5
    1e0e:	25 b1       	in	r18, 0x05	; 5
    1e10:	25 7f       	andi	r18, 0xF5	; 245
    1e12:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 50));
    1e14:	9c 01       	movw	r18, r24
    1e16:	2e 5c       	subi	r18, 0xCE	; 206
    1e18:	3f 4f       	sbci	r19, 0xFF	; 255
    1e1a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1e1e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1e22:	e2 0f       	add	r30, r18
    1e24:	f3 1f       	adc	r31, r19
    1e26:	e4 91       	lpm	r30, Z
    1e28:	2b b1       	in	r18, 0x0b	; 11
    1e2a:	74 e0       	ldi	r23, 0x04	; 4
    1e2c:	e7 9f       	mul	r30, r23
    1e2e:	f0 01       	movw	r30, r0
    1e30:	11 24       	eor	r1, r1
    1e32:	23 70       	andi	r18, 0x03	; 3
    1e34:	e2 2b       	or	r30, r18
    1e36:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1e38:	25 b1       	in	r18, 0x05	; 5
    1e3a:	2a 60       	ori	r18, 0x0A	; 10
    1e3c:	25 b9       	out	0x05, r18	; 5
    1e3e:	25 b1       	in	r18, 0x05	; 5
    1e40:	25 7f       	andi	r18, 0xF5	; 245
    1e42:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1e44:	25 b1       	in	r18, 0x05	; 5
    1e46:	2a 60       	ori	r18, 0x0A	; 10
    1e48:	25 b9       	out	0x05, r18	; 5
    1e4a:	25 b1       	in	r18, 0x05	; 5
    1e4c:	25 7f       	andi	r18, 0xF5	; 245
    1e4e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 51));
    1e50:	9c 01       	movw	r18, r24
    1e52:	2d 5c       	subi	r18, 0xCD	; 205
    1e54:	3f 4f       	sbci	r19, 0xFF	; 255
    1e56:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1e5a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1e5e:	e2 0f       	add	r30, r18
    1e60:	f3 1f       	adc	r31, r19
    1e62:	e4 91       	lpm	r30, Z
    1e64:	2b b1       	in	r18, 0x0b	; 11
    1e66:	34 e0       	ldi	r19, 0x04	; 4
    1e68:	e3 9f       	mul	r30, r19
    1e6a:	f0 01       	movw	r30, r0
    1e6c:	11 24       	eor	r1, r1
    1e6e:	23 70       	andi	r18, 0x03	; 3
    1e70:	e2 2b       	or	r30, r18
    1e72:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1e74:	25 b1       	in	r18, 0x05	; 5
    1e76:	2a 60       	ori	r18, 0x0A	; 10
    1e78:	25 b9       	out	0x05, r18	; 5
    1e7a:	25 b1       	in	r18, 0x05	; 5
    1e7c:	25 7f       	andi	r18, 0xF5	; 245
    1e7e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1e80:	25 b1       	in	r18, 0x05	; 5
    1e82:	2a 60       	ori	r18, 0x0A	; 10
    1e84:	25 b9       	out	0x05, r18	; 5
    1e86:	25 b1       	in	r18, 0x05	; 5
    1e88:	25 7f       	andi	r18, 0xF5	; 245
    1e8a:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 52));
    1e8c:	9c 01       	movw	r18, r24
    1e8e:	2c 5c       	subi	r18, 0xCC	; 204
    1e90:	3f 4f       	sbci	r19, 0xFF	; 255
    1e92:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1e96:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1e9a:	e2 0f       	add	r30, r18
    1e9c:	f3 1f       	adc	r31, r19
    1e9e:	e4 91       	lpm	r30, Z
    1ea0:	2b b1       	in	r18, 0x0b	; 11
    1ea2:	64 e0       	ldi	r22, 0x04	; 4
    1ea4:	e6 9f       	mul	r30, r22
    1ea6:	f0 01       	movw	r30, r0
    1ea8:	11 24       	eor	r1, r1
    1eaa:	23 70       	andi	r18, 0x03	; 3
    1eac:	e2 2b       	or	r30, r18
    1eae:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1eb0:	25 b1       	in	r18, 0x05	; 5
    1eb2:	2a 60       	ori	r18, 0x0A	; 10
    1eb4:	25 b9       	out	0x05, r18	; 5
    1eb6:	25 b1       	in	r18, 0x05	; 5
    1eb8:	25 7f       	andi	r18, 0xF5	; 245
    1eba:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1ebc:	25 b1       	in	r18, 0x05	; 5
    1ebe:	2a 60       	ori	r18, 0x0A	; 10
    1ec0:	25 b9       	out	0x05, r18	; 5
    1ec2:	25 b1       	in	r18, 0x05	; 5
    1ec4:	25 7f       	andi	r18, 0xF5	; 245
    1ec6:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 53));
    1ec8:	9c 01       	movw	r18, r24
    1eca:	2b 5c       	subi	r18, 0xCB	; 203
    1ecc:	3f 4f       	sbci	r19, 0xFF	; 255
    1ece:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1ed2:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1ed6:	e2 0f       	add	r30, r18
    1ed8:	f3 1f       	adc	r31, r19
    1eda:	e4 91       	lpm	r30, Z
    1edc:	2b b1       	in	r18, 0x0b	; 11
    1ede:	74 e0       	ldi	r23, 0x04	; 4
    1ee0:	e7 9f       	mul	r30, r23
    1ee2:	f0 01       	movw	r30, r0
    1ee4:	11 24       	eor	r1, r1
    1ee6:	23 70       	andi	r18, 0x03	; 3
    1ee8:	e2 2b       	or	r30, r18
    1eea:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1eec:	25 b1       	in	r18, 0x05	; 5
    1eee:	2a 60       	ori	r18, 0x0A	; 10
    1ef0:	25 b9       	out	0x05, r18	; 5
    1ef2:	25 b1       	in	r18, 0x05	; 5
    1ef4:	25 7f       	andi	r18, 0xF5	; 245
    1ef6:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1ef8:	25 b1       	in	r18, 0x05	; 5
    1efa:	2a 60       	ori	r18, 0x0A	; 10
    1efc:	25 b9       	out	0x05, r18	; 5
    1efe:	25 b1       	in	r18, 0x05	; 5
    1f00:	25 7f       	andi	r18, 0xF5	; 245
    1f02:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 54));
    1f04:	9c 01       	movw	r18, r24
    1f06:	2a 5c       	subi	r18, 0xCA	; 202
    1f08:	3f 4f       	sbci	r19, 0xFF	; 255
    1f0a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1f0e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1f12:	e2 0f       	add	r30, r18
    1f14:	f3 1f       	adc	r31, r19
    1f16:	e4 91       	lpm	r30, Z
    1f18:	2b b1       	in	r18, 0x0b	; 11
    1f1a:	34 e0       	ldi	r19, 0x04	; 4
    1f1c:	e3 9f       	mul	r30, r19
    1f1e:	f0 01       	movw	r30, r0
    1f20:	11 24       	eor	r1, r1
    1f22:	23 70       	andi	r18, 0x03	; 3
    1f24:	e2 2b       	or	r30, r18
    1f26:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1f28:	25 b1       	in	r18, 0x05	; 5
    1f2a:	2a 60       	ori	r18, 0x0A	; 10
    1f2c:	25 b9       	out	0x05, r18	; 5
    1f2e:	25 b1       	in	r18, 0x05	; 5
    1f30:	25 7f       	andi	r18, 0xF5	; 245
    1f32:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1f34:	25 b1       	in	r18, 0x05	; 5
    1f36:	2a 60       	ori	r18, 0x0A	; 10
    1f38:	25 b9       	out	0x05, r18	; 5
    1f3a:	25 b1       	in	r18, 0x05	; 5
    1f3c:	25 7f       	andi	r18, 0xF5	; 245
    1f3e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 55));
    1f40:	9c 01       	movw	r18, r24
    1f42:	29 5c       	subi	r18, 0xC9	; 201
    1f44:	3f 4f       	sbci	r19, 0xFF	; 255
    1f46:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1f4a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1f4e:	e2 0f       	add	r30, r18
    1f50:	f3 1f       	adc	r31, r19
    1f52:	e4 91       	lpm	r30, Z
    1f54:	2b b1       	in	r18, 0x0b	; 11
    1f56:	64 e0       	ldi	r22, 0x04	; 4
    1f58:	e6 9f       	mul	r30, r22
    1f5a:	f0 01       	movw	r30, r0
    1f5c:	11 24       	eor	r1, r1
    1f5e:	23 70       	andi	r18, 0x03	; 3
    1f60:	e2 2b       	or	r30, r18
    1f62:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1f64:	25 b1       	in	r18, 0x05	; 5
    1f66:	2a 60       	ori	r18, 0x0A	; 10
    1f68:	25 b9       	out	0x05, r18	; 5
    1f6a:	25 b1       	in	r18, 0x05	; 5
    1f6c:	25 7f       	andi	r18, 0xF5	; 245
    1f6e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1f70:	25 b1       	in	r18, 0x05	; 5
    1f72:	2a 60       	ori	r18, 0x0A	; 10
    1f74:	25 b9       	out	0x05, r18	; 5
    1f76:	25 b1       	in	r18, 0x05	; 5
    1f78:	25 7f       	andi	r18, 0xF5	; 245
    1f7a:	25 b9       	out	0x05, r18	; 5

            // chip 7
            SET_COLOR(pgm_read_byte(buffer + index + 56));
    1f7c:	9c 01       	movw	r18, r24
    1f7e:	28 5c       	subi	r18, 0xC8	; 200
    1f80:	3f 4f       	sbci	r19, 0xFF	; 255
    1f82:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1f86:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1f8a:	e2 0f       	add	r30, r18
    1f8c:	f3 1f       	adc	r31, r19
    1f8e:	e4 91       	lpm	r30, Z
    1f90:	2b b1       	in	r18, 0x0b	; 11
    1f92:	74 e0       	ldi	r23, 0x04	; 4
    1f94:	e7 9f       	mul	r30, r23
    1f96:	f0 01       	movw	r30, r0
    1f98:	11 24       	eor	r1, r1
    1f9a:	23 70       	andi	r18, 0x03	; 3
    1f9c:	e2 2b       	or	r30, r18
    1f9e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1fa0:	25 b1       	in	r18, 0x05	; 5
    1fa2:	2a 60       	ori	r18, 0x0A	; 10
    1fa4:	25 b9       	out	0x05, r18	; 5
    1fa6:	25 b1       	in	r18, 0x05	; 5
    1fa8:	25 7f       	andi	r18, 0xF5	; 245
    1faa:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1fac:	25 b1       	in	r18, 0x05	; 5
    1fae:	2a 60       	ori	r18, 0x0A	; 10
    1fb0:	25 b9       	out	0x05, r18	; 5
    1fb2:	25 b1       	in	r18, 0x05	; 5
    1fb4:	25 7f       	andi	r18, 0xF5	; 245
    1fb6:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 57));
    1fb8:	9c 01       	movw	r18, r24
    1fba:	27 5c       	subi	r18, 0xC7	; 199
    1fbc:	3f 4f       	sbci	r19, 0xFF	; 255
    1fbe:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1fc2:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    1fc6:	e2 0f       	add	r30, r18
    1fc8:	f3 1f       	adc	r31, r19
    1fca:	e4 91       	lpm	r30, Z
    1fcc:	2b b1       	in	r18, 0x0b	; 11
    1fce:	34 e0       	ldi	r19, 0x04	; 4
    1fd0:	e3 9f       	mul	r30, r19
    1fd2:	f0 01       	movw	r30, r0
    1fd4:	11 24       	eor	r1, r1
    1fd6:	23 70       	andi	r18, 0x03	; 3
    1fd8:	e2 2b       	or	r30, r18
    1fda:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1fdc:	25 b1       	in	r18, 0x05	; 5
    1fde:	2a 60       	ori	r18, 0x0A	; 10
    1fe0:	25 b9       	out	0x05, r18	; 5
    1fe2:	25 b1       	in	r18, 0x05	; 5
    1fe4:	25 7f       	andi	r18, 0xF5	; 245
    1fe6:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    1fe8:	25 b1       	in	r18, 0x05	; 5
    1fea:	2a 60       	ori	r18, 0x0A	; 10
    1fec:	25 b9       	out	0x05, r18	; 5
    1fee:	25 b1       	in	r18, 0x05	; 5
    1ff0:	25 7f       	andi	r18, 0xF5	; 245
    1ff2:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 58));
    1ff4:	9c 01       	movw	r18, r24
    1ff6:	26 5c       	subi	r18, 0xC6	; 198
    1ff8:	3f 4f       	sbci	r19, 0xFF	; 255
    1ffa:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    1ffe:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2002:	e2 0f       	add	r30, r18
    2004:	f3 1f       	adc	r31, r19
    2006:	e4 91       	lpm	r30, Z
    2008:	2b b1       	in	r18, 0x0b	; 11
    200a:	64 e0       	ldi	r22, 0x04	; 4
    200c:	e6 9f       	mul	r30, r22
    200e:	f0 01       	movw	r30, r0
    2010:	11 24       	eor	r1, r1
    2012:	23 70       	andi	r18, 0x03	; 3
    2014:	e2 2b       	or	r30, r18
    2016:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2018:	25 b1       	in	r18, 0x05	; 5
    201a:	2a 60       	ori	r18, 0x0A	; 10
    201c:	25 b9       	out	0x05, r18	; 5
    201e:	25 b1       	in	r18, 0x05	; 5
    2020:	25 7f       	andi	r18, 0xF5	; 245
    2022:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    2024:	25 b1       	in	r18, 0x05	; 5
    2026:	2a 60       	ori	r18, 0x0A	; 10
    2028:	25 b9       	out	0x05, r18	; 5
    202a:	25 b1       	in	r18, 0x05	; 5
    202c:	25 7f       	andi	r18, 0xF5	; 245
    202e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 59));
    2030:	9c 01       	movw	r18, r24
    2032:	25 5c       	subi	r18, 0xC5	; 197
    2034:	3f 4f       	sbci	r19, 0xFF	; 255
    2036:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    203a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    203e:	e2 0f       	add	r30, r18
    2040:	f3 1f       	adc	r31, r19
    2042:	e4 91       	lpm	r30, Z
    2044:	2b b1       	in	r18, 0x0b	; 11
    2046:	74 e0       	ldi	r23, 0x04	; 4
    2048:	e7 9f       	mul	r30, r23
    204a:	f0 01       	movw	r30, r0
    204c:	11 24       	eor	r1, r1
    204e:	23 70       	andi	r18, 0x03	; 3
    2050:	e2 2b       	or	r30, r18
    2052:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2054:	25 b1       	in	r18, 0x05	; 5
    2056:	2a 60       	ori	r18, 0x0A	; 10
    2058:	25 b9       	out	0x05, r18	; 5
    205a:	25 b1       	in	r18, 0x05	; 5
    205c:	25 7f       	andi	r18, 0xF5	; 245
    205e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    2060:	25 b1       	in	r18, 0x05	; 5
    2062:	2a 60       	ori	r18, 0x0A	; 10
    2064:	25 b9       	out	0x05, r18	; 5
    2066:	25 b1       	in	r18, 0x05	; 5
    2068:	25 7f       	andi	r18, 0xF5	; 245
    206a:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 60));
    206c:	9c 01       	movw	r18, r24
    206e:	24 5c       	subi	r18, 0xC4	; 196
    2070:	3f 4f       	sbci	r19, 0xFF	; 255
    2072:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2076:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    207a:	e2 0f       	add	r30, r18
    207c:	f3 1f       	adc	r31, r19
    207e:	e4 91       	lpm	r30, Z
    2080:	2b b1       	in	r18, 0x0b	; 11
    2082:	34 e0       	ldi	r19, 0x04	; 4
    2084:	e3 9f       	mul	r30, r19
    2086:	f0 01       	movw	r30, r0
    2088:	11 24       	eor	r1, r1
    208a:	23 70       	andi	r18, 0x03	; 3
    208c:	e2 2b       	or	r30, r18
    208e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2090:	25 b1       	in	r18, 0x05	; 5
    2092:	2a 60       	ori	r18, 0x0A	; 10
    2094:	25 b9       	out	0x05, r18	; 5
    2096:	25 b1       	in	r18, 0x05	; 5
    2098:	25 7f       	andi	r18, 0xF5	; 245
    209a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    209c:	25 b1       	in	r18, 0x05	; 5
    209e:	2a 60       	ori	r18, 0x0A	; 10
    20a0:	25 b9       	out	0x05, r18	; 5
    20a2:	25 b1       	in	r18, 0x05	; 5
    20a4:	25 7f       	andi	r18, 0xF5	; 245
    20a6:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 61));
    20a8:	9c 01       	movw	r18, r24
    20aa:	23 5c       	subi	r18, 0xC3	; 195
    20ac:	3f 4f       	sbci	r19, 0xFF	; 255
    20ae:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    20b2:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    20b6:	e2 0f       	add	r30, r18
    20b8:	f3 1f       	adc	r31, r19
    20ba:	e4 91       	lpm	r30, Z
    20bc:	2b b1       	in	r18, 0x0b	; 11
    20be:	64 e0       	ldi	r22, 0x04	; 4
    20c0:	e6 9f       	mul	r30, r22
    20c2:	f0 01       	movw	r30, r0
    20c4:	11 24       	eor	r1, r1
    20c6:	23 70       	andi	r18, 0x03	; 3
    20c8:	e2 2b       	or	r30, r18
    20ca:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    20cc:	25 b1       	in	r18, 0x05	; 5
    20ce:	2a 60       	ori	r18, 0x0A	; 10
    20d0:	25 b9       	out	0x05, r18	; 5
    20d2:	25 b1       	in	r18, 0x05	; 5
    20d4:	25 7f       	andi	r18, 0xF5	; 245
    20d6:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    20d8:	25 b1       	in	r18, 0x05	; 5
    20da:	2a 60       	ori	r18, 0x0A	; 10
    20dc:	25 b9       	out	0x05, r18	; 5
    20de:	25 b1       	in	r18, 0x05	; 5
    20e0:	25 7f       	andi	r18, 0xF5	; 245
    20e2:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 62));
    20e4:	9c 01       	movw	r18, r24
    20e6:	22 5c       	subi	r18, 0xC2	; 194
    20e8:	3f 4f       	sbci	r19, 0xFF	; 255
    20ea:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    20ee:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    20f2:	e2 0f       	add	r30, r18
    20f4:	f3 1f       	adc	r31, r19
    20f6:	e4 91       	lpm	r30, Z
    20f8:	2b b1       	in	r18, 0x0b	; 11
    20fa:	74 e0       	ldi	r23, 0x04	; 4
    20fc:	e7 9f       	mul	r30, r23
    20fe:	f0 01       	movw	r30, r0
    2100:	11 24       	eor	r1, r1
    2102:	23 70       	andi	r18, 0x03	; 3
    2104:	e2 2b       	or	r30, r18
    2106:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2108:	25 b1       	in	r18, 0x05	; 5
    210a:	2a 60       	ori	r18, 0x0A	; 10
    210c:	25 b9       	out	0x05, r18	; 5
    210e:	25 b1       	in	r18, 0x05	; 5
    2110:	25 7f       	andi	r18, 0xF5	; 245
    2112:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    2114:	25 b1       	in	r18, 0x05	; 5
    2116:	2a 60       	ori	r18, 0x0A	; 10
    2118:	25 b9       	out	0x05, r18	; 5
    211a:	25 b1       	in	r18, 0x05	; 5
    211c:	25 7f       	andi	r18, 0xF5	; 245
    211e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 63));
    2120:	9c 01       	movw	r18, r24
    2122:	21 5c       	subi	r18, 0xC1	; 193
    2124:	3f 4f       	sbci	r19, 0xFF	; 255
    2126:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    212a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    212e:	e2 0f       	add	r30, r18
    2130:	f3 1f       	adc	r31, r19
    2132:	e4 91       	lpm	r30, Z
    2134:	2b b1       	in	r18, 0x0b	; 11
    2136:	34 e0       	ldi	r19, 0x04	; 4
    2138:	e3 9f       	mul	r30, r19
    213a:	f0 01       	movw	r30, r0
    213c:	11 24       	eor	r1, r1
    213e:	23 70       	andi	r18, 0x03	; 3
    2140:	e2 2b       	or	r30, r18
    2142:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2144:	25 b1       	in	r18, 0x05	; 5
    2146:	2a 60       	ori	r18, 0x0A	; 10
    2148:	25 b9       	out	0x05, r18	; 5
    214a:	25 b1       	in	r18, 0x05	; 5
    214c:	25 7f       	andi	r18, 0xF5	; 245
    214e:	25 b9       	out	0x05, r18	; 5

            // shift data into buffers
            HIGH_LAT;
    2150:	2a 9a       	sbi	0x05, 2	; 5
            PWCLK_GCLK;
    2152:	25 b1       	in	r18, 0x05	; 5
    2154:	2a 60       	ori	r18, 0x0A	; 10
    2156:	25 b9       	out	0x05, r18	; 5
    2158:	25 b1       	in	r18, 0x05	; 5
    215a:	25 7f       	andi	r18, 0xF5	; 245
    215c:	25 b9       	out	0x05, r18	; 5
            CLEAR_LAT;
    215e:	2a 98       	cbi	0x05, 2	; 5

#pragma endregion // MMSB

            index = ((y & ~1) << 5) + (PANEL_BUFFERSIZE / 4);
    2160:	9c 01       	movw	r18, r24
    2162:	3c 5f       	subi	r19, 0xFC	; 252

#pragma region MSB
            // chip 0
            SET_COLOR(pgm_read_byte(buffer + index + 0));
    2164:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2168:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    216c:	e2 0f       	add	r30, r18
    216e:	f3 1f       	adc	r31, r19
    2170:	e4 91       	lpm	r30, Z
    2172:	6b b1       	in	r22, 0x0b	; 11
    2174:	74 e0       	ldi	r23, 0x04	; 4
    2176:	e7 9f       	mul	r30, r23
    2178:	f0 01       	movw	r30, r0
    217a:	11 24       	eor	r1, r1
    217c:	63 70       	andi	r22, 0x03	; 3
    217e:	e6 2b       	or	r30, r22
    2180:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2182:	65 b1       	in	r22, 0x05	; 5
    2184:	6a 60       	ori	r22, 0x0A	; 10
    2186:	65 b9       	out	0x05, r22	; 5
    2188:	65 b1       	in	r22, 0x05	; 5
    218a:	65 7f       	andi	r22, 0xF5	; 245
    218c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    218e:	65 b1       	in	r22, 0x05	; 5
    2190:	6a 60       	ori	r22, 0x0A	; 10
    2192:	65 b9       	out	0x05, r22	; 5
    2194:	65 b1       	in	r22, 0x05	; 5
    2196:	65 7f       	andi	r22, 0xF5	; 245
    2198:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 1));
    219a:	b9 01       	movw	r22, r18
    219c:	6f 5f       	subi	r22, 0xFF	; 255
    219e:	7f 4f       	sbci	r23, 0xFF	; 255
    21a0:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    21a4:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    21a8:	e6 0f       	add	r30, r22
    21aa:	f7 1f       	adc	r31, r23
    21ac:	e4 91       	lpm	r30, Z
    21ae:	6b b1       	in	r22, 0x0b	; 11
    21b0:	74 e0       	ldi	r23, 0x04	; 4
    21b2:	e7 9f       	mul	r30, r23
    21b4:	f0 01       	movw	r30, r0
    21b6:	11 24       	eor	r1, r1
    21b8:	63 70       	andi	r22, 0x03	; 3
    21ba:	e6 2b       	or	r30, r22
    21bc:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    21be:	65 b1       	in	r22, 0x05	; 5
    21c0:	6a 60       	ori	r22, 0x0A	; 10
    21c2:	65 b9       	out	0x05, r22	; 5
    21c4:	65 b1       	in	r22, 0x05	; 5
    21c6:	65 7f       	andi	r22, 0xF5	; 245
    21c8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    21ca:	65 b1       	in	r22, 0x05	; 5
    21cc:	6a 60       	ori	r22, 0x0A	; 10
    21ce:	65 b9       	out	0x05, r22	; 5
    21d0:	65 b1       	in	r22, 0x05	; 5
    21d2:	65 7f       	andi	r22, 0xF5	; 245
    21d4:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 2));
    21d6:	b9 01       	movw	r22, r18
    21d8:	6e 5f       	subi	r22, 0xFE	; 254
    21da:	7f 4f       	sbci	r23, 0xFF	; 255
    21dc:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    21e0:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    21e4:	e6 0f       	add	r30, r22
    21e6:	f7 1f       	adc	r31, r23
    21e8:	e4 91       	lpm	r30, Z
    21ea:	6b b1       	in	r22, 0x0b	; 11
    21ec:	74 e0       	ldi	r23, 0x04	; 4
    21ee:	e7 9f       	mul	r30, r23
    21f0:	f0 01       	movw	r30, r0
    21f2:	11 24       	eor	r1, r1
    21f4:	63 70       	andi	r22, 0x03	; 3
    21f6:	e6 2b       	or	r30, r22
    21f8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    21fa:	65 b1       	in	r22, 0x05	; 5
    21fc:	6a 60       	ori	r22, 0x0A	; 10
    21fe:	65 b9       	out	0x05, r22	; 5
    2200:	65 b1       	in	r22, 0x05	; 5
    2202:	65 7f       	andi	r22, 0xF5	; 245
    2204:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2206:	65 b1       	in	r22, 0x05	; 5
    2208:	6a 60       	ori	r22, 0x0A	; 10
    220a:	65 b9       	out	0x05, r22	; 5
    220c:	65 b1       	in	r22, 0x05	; 5
    220e:	65 7f       	andi	r22, 0xF5	; 245
    2210:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 3));
    2212:	b9 01       	movw	r22, r18
    2214:	6d 5f       	subi	r22, 0xFD	; 253
    2216:	7f 4f       	sbci	r23, 0xFF	; 255
    2218:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    221c:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2220:	e6 0f       	add	r30, r22
    2222:	f7 1f       	adc	r31, r23
    2224:	e4 91       	lpm	r30, Z
    2226:	6b b1       	in	r22, 0x0b	; 11
    2228:	74 e0       	ldi	r23, 0x04	; 4
    222a:	e7 9f       	mul	r30, r23
    222c:	f0 01       	movw	r30, r0
    222e:	11 24       	eor	r1, r1
    2230:	63 70       	andi	r22, 0x03	; 3
    2232:	e6 2b       	or	r30, r22
    2234:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2236:	65 b1       	in	r22, 0x05	; 5
    2238:	6a 60       	ori	r22, 0x0A	; 10
    223a:	65 b9       	out	0x05, r22	; 5
    223c:	65 b1       	in	r22, 0x05	; 5
    223e:	65 7f       	andi	r22, 0xF5	; 245
    2240:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2242:	65 b1       	in	r22, 0x05	; 5
    2244:	6a 60       	ori	r22, 0x0A	; 10
    2246:	65 b9       	out	0x05, r22	; 5
    2248:	65 b1       	in	r22, 0x05	; 5
    224a:	65 7f       	andi	r22, 0xF5	; 245
    224c:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 4));
    224e:	b9 01       	movw	r22, r18
    2250:	6c 5f       	subi	r22, 0xFC	; 252
    2252:	7f 4f       	sbci	r23, 0xFF	; 255
    2254:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2258:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    225c:	e6 0f       	add	r30, r22
    225e:	f7 1f       	adc	r31, r23
    2260:	e4 91       	lpm	r30, Z
    2262:	6b b1       	in	r22, 0x0b	; 11
    2264:	74 e0       	ldi	r23, 0x04	; 4
    2266:	e7 9f       	mul	r30, r23
    2268:	f0 01       	movw	r30, r0
    226a:	11 24       	eor	r1, r1
    226c:	63 70       	andi	r22, 0x03	; 3
    226e:	e6 2b       	or	r30, r22
    2270:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2272:	65 b1       	in	r22, 0x05	; 5
    2274:	6a 60       	ori	r22, 0x0A	; 10
    2276:	65 b9       	out	0x05, r22	; 5
    2278:	65 b1       	in	r22, 0x05	; 5
    227a:	65 7f       	andi	r22, 0xF5	; 245
    227c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    227e:	65 b1       	in	r22, 0x05	; 5
    2280:	6a 60       	ori	r22, 0x0A	; 10
    2282:	65 b9       	out	0x05, r22	; 5
    2284:	65 b1       	in	r22, 0x05	; 5
    2286:	65 7f       	andi	r22, 0xF5	; 245
    2288:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 5));
    228a:	b9 01       	movw	r22, r18
    228c:	6b 5f       	subi	r22, 0xFB	; 251
    228e:	7f 4f       	sbci	r23, 0xFF	; 255
    2290:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2294:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2298:	e6 0f       	add	r30, r22
    229a:	f7 1f       	adc	r31, r23
    229c:	e4 91       	lpm	r30, Z
    229e:	6b b1       	in	r22, 0x0b	; 11
    22a0:	74 e0       	ldi	r23, 0x04	; 4
    22a2:	e7 9f       	mul	r30, r23
    22a4:	f0 01       	movw	r30, r0
    22a6:	11 24       	eor	r1, r1
    22a8:	63 70       	andi	r22, 0x03	; 3
    22aa:	e6 2b       	or	r30, r22
    22ac:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    22ae:	65 b1       	in	r22, 0x05	; 5
    22b0:	6a 60       	ori	r22, 0x0A	; 10
    22b2:	65 b9       	out	0x05, r22	; 5
    22b4:	65 b1       	in	r22, 0x05	; 5
    22b6:	65 7f       	andi	r22, 0xF5	; 245
    22b8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    22ba:	65 b1       	in	r22, 0x05	; 5
    22bc:	6a 60       	ori	r22, 0x0A	; 10
    22be:	65 b9       	out	0x05, r22	; 5
    22c0:	65 b1       	in	r22, 0x05	; 5
    22c2:	65 7f       	andi	r22, 0xF5	; 245
    22c4:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 6));
    22c6:	b9 01       	movw	r22, r18
    22c8:	6a 5f       	subi	r22, 0xFA	; 250
    22ca:	7f 4f       	sbci	r23, 0xFF	; 255
    22cc:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    22d0:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    22d4:	e6 0f       	add	r30, r22
    22d6:	f7 1f       	adc	r31, r23
    22d8:	e4 91       	lpm	r30, Z
    22da:	6b b1       	in	r22, 0x0b	; 11
    22dc:	74 e0       	ldi	r23, 0x04	; 4
    22de:	e7 9f       	mul	r30, r23
    22e0:	f0 01       	movw	r30, r0
    22e2:	11 24       	eor	r1, r1
    22e4:	63 70       	andi	r22, 0x03	; 3
    22e6:	e6 2b       	or	r30, r22
    22e8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    22ea:	65 b1       	in	r22, 0x05	; 5
    22ec:	6a 60       	ori	r22, 0x0A	; 10
    22ee:	65 b9       	out	0x05, r22	; 5
    22f0:	65 b1       	in	r22, 0x05	; 5
    22f2:	65 7f       	andi	r22, 0xF5	; 245
    22f4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    22f6:	65 b1       	in	r22, 0x05	; 5
    22f8:	6a 60       	ori	r22, 0x0A	; 10
    22fa:	65 b9       	out	0x05, r22	; 5
    22fc:	65 b1       	in	r22, 0x05	; 5
    22fe:	65 7f       	andi	r22, 0xF5	; 245
    2300:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 7));
    2302:	b9 01       	movw	r22, r18
    2304:	69 5f       	subi	r22, 0xF9	; 249
    2306:	7f 4f       	sbci	r23, 0xFF	; 255
    2308:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    230c:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2310:	e6 0f       	add	r30, r22
    2312:	f7 1f       	adc	r31, r23
    2314:	e4 91       	lpm	r30, Z
    2316:	6b b1       	in	r22, 0x0b	; 11
    2318:	74 e0       	ldi	r23, 0x04	; 4
    231a:	e7 9f       	mul	r30, r23
    231c:	f0 01       	movw	r30, r0
    231e:	11 24       	eor	r1, r1
    2320:	63 70       	andi	r22, 0x03	; 3
    2322:	e6 2b       	or	r30, r22
    2324:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2326:	65 b1       	in	r22, 0x05	; 5
    2328:	6a 60       	ori	r22, 0x0A	; 10
    232a:	65 b9       	out	0x05, r22	; 5
    232c:	65 b1       	in	r22, 0x05	; 5
    232e:	65 7f       	andi	r22, 0xF5	; 245
    2330:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2332:	65 b1       	in	r22, 0x05	; 5
    2334:	6a 60       	ori	r22, 0x0A	; 10
    2336:	65 b9       	out	0x05, r22	; 5
    2338:	65 b1       	in	r22, 0x05	; 5
    233a:	65 7f       	andi	r22, 0xF5	; 245
    233c:	65 b9       	out	0x05, r22	; 5

            // chip 1
            SET_COLOR(pgm_read_byte(buffer + index + 8));
    233e:	b9 01       	movw	r22, r18
    2340:	68 5f       	subi	r22, 0xF8	; 248
    2342:	7f 4f       	sbci	r23, 0xFF	; 255
    2344:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2348:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    234c:	e6 0f       	add	r30, r22
    234e:	f7 1f       	adc	r31, r23
    2350:	e4 91       	lpm	r30, Z
    2352:	6b b1       	in	r22, 0x0b	; 11
    2354:	74 e0       	ldi	r23, 0x04	; 4
    2356:	e7 9f       	mul	r30, r23
    2358:	f0 01       	movw	r30, r0
    235a:	11 24       	eor	r1, r1
    235c:	63 70       	andi	r22, 0x03	; 3
    235e:	e6 2b       	or	r30, r22
    2360:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2362:	65 b1       	in	r22, 0x05	; 5
    2364:	6a 60       	ori	r22, 0x0A	; 10
    2366:	65 b9       	out	0x05, r22	; 5
    2368:	65 b1       	in	r22, 0x05	; 5
    236a:	65 7f       	andi	r22, 0xF5	; 245
    236c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    236e:	65 b1       	in	r22, 0x05	; 5
    2370:	6a 60       	ori	r22, 0x0A	; 10
    2372:	65 b9       	out	0x05, r22	; 5
    2374:	65 b1       	in	r22, 0x05	; 5
    2376:	65 7f       	andi	r22, 0xF5	; 245
    2378:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 9));
    237a:	b9 01       	movw	r22, r18
    237c:	67 5f       	subi	r22, 0xF7	; 247
    237e:	7f 4f       	sbci	r23, 0xFF	; 255
    2380:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2384:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2388:	e6 0f       	add	r30, r22
    238a:	f7 1f       	adc	r31, r23
    238c:	e4 91       	lpm	r30, Z
    238e:	6b b1       	in	r22, 0x0b	; 11
    2390:	74 e0       	ldi	r23, 0x04	; 4
    2392:	e7 9f       	mul	r30, r23
    2394:	f0 01       	movw	r30, r0
    2396:	11 24       	eor	r1, r1
    2398:	63 70       	andi	r22, 0x03	; 3
    239a:	e6 2b       	or	r30, r22
    239c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    239e:	65 b1       	in	r22, 0x05	; 5
    23a0:	6a 60       	ori	r22, 0x0A	; 10
    23a2:	65 b9       	out	0x05, r22	; 5
    23a4:	65 b1       	in	r22, 0x05	; 5
    23a6:	65 7f       	andi	r22, 0xF5	; 245
    23a8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    23aa:	65 b1       	in	r22, 0x05	; 5
    23ac:	6a 60       	ori	r22, 0x0A	; 10
    23ae:	65 b9       	out	0x05, r22	; 5
    23b0:	65 b1       	in	r22, 0x05	; 5
    23b2:	65 7f       	andi	r22, 0xF5	; 245
    23b4:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 10));
    23b6:	b9 01       	movw	r22, r18
    23b8:	66 5f       	subi	r22, 0xF6	; 246
    23ba:	7f 4f       	sbci	r23, 0xFF	; 255
    23bc:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    23c0:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    23c4:	e6 0f       	add	r30, r22
    23c6:	f7 1f       	adc	r31, r23
    23c8:	e4 91       	lpm	r30, Z
    23ca:	6b b1       	in	r22, 0x0b	; 11
    23cc:	74 e0       	ldi	r23, 0x04	; 4
    23ce:	e7 9f       	mul	r30, r23
    23d0:	f0 01       	movw	r30, r0
    23d2:	11 24       	eor	r1, r1
    23d4:	63 70       	andi	r22, 0x03	; 3
    23d6:	e6 2b       	or	r30, r22
    23d8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    23da:	65 b1       	in	r22, 0x05	; 5
    23dc:	6a 60       	ori	r22, 0x0A	; 10
    23de:	65 b9       	out	0x05, r22	; 5
    23e0:	65 b1       	in	r22, 0x05	; 5
    23e2:	65 7f       	andi	r22, 0xF5	; 245
    23e4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    23e6:	65 b1       	in	r22, 0x05	; 5
    23e8:	6a 60       	ori	r22, 0x0A	; 10
    23ea:	65 b9       	out	0x05, r22	; 5
    23ec:	65 b1       	in	r22, 0x05	; 5
    23ee:	65 7f       	andi	r22, 0xF5	; 245
    23f0:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 11));
    23f2:	b9 01       	movw	r22, r18
    23f4:	65 5f       	subi	r22, 0xF5	; 245
    23f6:	7f 4f       	sbci	r23, 0xFF	; 255
    23f8:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    23fc:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2400:	e6 0f       	add	r30, r22
    2402:	f7 1f       	adc	r31, r23
    2404:	e4 91       	lpm	r30, Z
    2406:	6b b1       	in	r22, 0x0b	; 11
    2408:	74 e0       	ldi	r23, 0x04	; 4
    240a:	e7 9f       	mul	r30, r23
    240c:	f0 01       	movw	r30, r0
    240e:	11 24       	eor	r1, r1
    2410:	63 70       	andi	r22, 0x03	; 3
    2412:	e6 2b       	or	r30, r22
    2414:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2416:	65 b1       	in	r22, 0x05	; 5
    2418:	6a 60       	ori	r22, 0x0A	; 10
    241a:	65 b9       	out	0x05, r22	; 5
    241c:	65 b1       	in	r22, 0x05	; 5
    241e:	65 7f       	andi	r22, 0xF5	; 245
    2420:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2422:	65 b1       	in	r22, 0x05	; 5
    2424:	6a 60       	ori	r22, 0x0A	; 10
    2426:	65 b9       	out	0x05, r22	; 5
    2428:	65 b1       	in	r22, 0x05	; 5
    242a:	65 7f       	andi	r22, 0xF5	; 245
    242c:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 12));
    242e:	b9 01       	movw	r22, r18
    2430:	64 5f       	subi	r22, 0xF4	; 244
    2432:	7f 4f       	sbci	r23, 0xFF	; 255
    2434:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2438:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    243c:	e6 0f       	add	r30, r22
    243e:	f7 1f       	adc	r31, r23
    2440:	e4 91       	lpm	r30, Z
    2442:	6b b1       	in	r22, 0x0b	; 11
    2444:	74 e0       	ldi	r23, 0x04	; 4
    2446:	e7 9f       	mul	r30, r23
    2448:	f0 01       	movw	r30, r0
    244a:	11 24       	eor	r1, r1
    244c:	63 70       	andi	r22, 0x03	; 3
    244e:	e6 2b       	or	r30, r22
    2450:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2452:	65 b1       	in	r22, 0x05	; 5
    2454:	6a 60       	ori	r22, 0x0A	; 10
    2456:	65 b9       	out	0x05, r22	; 5
    2458:	65 b1       	in	r22, 0x05	; 5
    245a:	65 7f       	andi	r22, 0xF5	; 245
    245c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    245e:	65 b1       	in	r22, 0x05	; 5
    2460:	6a 60       	ori	r22, 0x0A	; 10
    2462:	65 b9       	out	0x05, r22	; 5
    2464:	65 b1       	in	r22, 0x05	; 5
    2466:	65 7f       	andi	r22, 0xF5	; 245
    2468:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 13));
    246a:	b9 01       	movw	r22, r18
    246c:	63 5f       	subi	r22, 0xF3	; 243
    246e:	7f 4f       	sbci	r23, 0xFF	; 255
    2470:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2474:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2478:	e6 0f       	add	r30, r22
    247a:	f7 1f       	adc	r31, r23
    247c:	e4 91       	lpm	r30, Z
    247e:	6b b1       	in	r22, 0x0b	; 11
    2480:	74 e0       	ldi	r23, 0x04	; 4
    2482:	e7 9f       	mul	r30, r23
    2484:	f0 01       	movw	r30, r0
    2486:	11 24       	eor	r1, r1
    2488:	63 70       	andi	r22, 0x03	; 3
    248a:	e6 2b       	or	r30, r22
    248c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    248e:	65 b1       	in	r22, 0x05	; 5
    2490:	6a 60       	ori	r22, 0x0A	; 10
    2492:	65 b9       	out	0x05, r22	; 5
    2494:	65 b1       	in	r22, 0x05	; 5
    2496:	65 7f       	andi	r22, 0xF5	; 245
    2498:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    249a:	65 b1       	in	r22, 0x05	; 5
    249c:	6a 60       	ori	r22, 0x0A	; 10
    249e:	65 b9       	out	0x05, r22	; 5
    24a0:	65 b1       	in	r22, 0x05	; 5
    24a2:	65 7f       	andi	r22, 0xF5	; 245
    24a4:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 14));
    24a6:	b9 01       	movw	r22, r18
    24a8:	62 5f       	subi	r22, 0xF2	; 242
    24aa:	7f 4f       	sbci	r23, 0xFF	; 255
    24ac:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    24b0:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    24b4:	e6 0f       	add	r30, r22
    24b6:	f7 1f       	adc	r31, r23
    24b8:	e4 91       	lpm	r30, Z
    24ba:	6b b1       	in	r22, 0x0b	; 11
    24bc:	74 e0       	ldi	r23, 0x04	; 4
    24be:	e7 9f       	mul	r30, r23
    24c0:	f0 01       	movw	r30, r0
    24c2:	11 24       	eor	r1, r1
    24c4:	63 70       	andi	r22, 0x03	; 3
    24c6:	e6 2b       	or	r30, r22
    24c8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    24ca:	65 b1       	in	r22, 0x05	; 5
    24cc:	6a 60       	ori	r22, 0x0A	; 10
    24ce:	65 b9       	out	0x05, r22	; 5
    24d0:	65 b1       	in	r22, 0x05	; 5
    24d2:	65 7f       	andi	r22, 0xF5	; 245
    24d4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    24d6:	65 b1       	in	r22, 0x05	; 5
    24d8:	6a 60       	ori	r22, 0x0A	; 10
    24da:	65 b9       	out	0x05, r22	; 5
    24dc:	65 b1       	in	r22, 0x05	; 5
    24de:	65 7f       	andi	r22, 0xF5	; 245
    24e0:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 15));
    24e2:	b9 01       	movw	r22, r18
    24e4:	61 5f       	subi	r22, 0xF1	; 241
    24e6:	7f 4f       	sbci	r23, 0xFF	; 255
    24e8:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    24ec:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    24f0:	e6 0f       	add	r30, r22
    24f2:	f7 1f       	adc	r31, r23
    24f4:	e4 91       	lpm	r30, Z
    24f6:	6b b1       	in	r22, 0x0b	; 11
    24f8:	74 e0       	ldi	r23, 0x04	; 4
    24fa:	e7 9f       	mul	r30, r23
    24fc:	f0 01       	movw	r30, r0
    24fe:	11 24       	eor	r1, r1
    2500:	63 70       	andi	r22, 0x03	; 3
    2502:	e6 2b       	or	r30, r22
    2504:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2506:	65 b1       	in	r22, 0x05	; 5
    2508:	6a 60       	ori	r22, 0x0A	; 10
    250a:	65 b9       	out	0x05, r22	; 5
    250c:	65 b1       	in	r22, 0x05	; 5
    250e:	65 7f       	andi	r22, 0xF5	; 245
    2510:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2512:	65 b1       	in	r22, 0x05	; 5
    2514:	6a 60       	ori	r22, 0x0A	; 10
    2516:	65 b9       	out	0x05, r22	; 5
    2518:	65 b1       	in	r22, 0x05	; 5
    251a:	65 7f       	andi	r22, 0xF5	; 245
    251c:	65 b9       	out	0x05, r22	; 5

            // chip 2
            SET_COLOR(pgm_read_byte(buffer + index + 16));
    251e:	b9 01       	movw	r22, r18
    2520:	60 5f       	subi	r22, 0xF0	; 240
    2522:	7f 4f       	sbci	r23, 0xFF	; 255
    2524:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2528:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    252c:	e6 0f       	add	r30, r22
    252e:	f7 1f       	adc	r31, r23
    2530:	e4 91       	lpm	r30, Z
    2532:	6b b1       	in	r22, 0x0b	; 11
    2534:	74 e0       	ldi	r23, 0x04	; 4
    2536:	e7 9f       	mul	r30, r23
    2538:	f0 01       	movw	r30, r0
    253a:	11 24       	eor	r1, r1
    253c:	63 70       	andi	r22, 0x03	; 3
    253e:	e6 2b       	or	r30, r22
    2540:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2542:	65 b1       	in	r22, 0x05	; 5
    2544:	6a 60       	ori	r22, 0x0A	; 10
    2546:	65 b9       	out	0x05, r22	; 5
    2548:	65 b1       	in	r22, 0x05	; 5
    254a:	65 7f       	andi	r22, 0xF5	; 245
    254c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    254e:	65 b1       	in	r22, 0x05	; 5
    2550:	6a 60       	ori	r22, 0x0A	; 10
    2552:	65 b9       	out	0x05, r22	; 5
    2554:	65 b1       	in	r22, 0x05	; 5
    2556:	65 7f       	andi	r22, 0xF5	; 245
    2558:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 17));
    255a:	b9 01       	movw	r22, r18
    255c:	6f 5e       	subi	r22, 0xEF	; 239
    255e:	7f 4f       	sbci	r23, 0xFF	; 255
    2560:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2564:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2568:	e6 0f       	add	r30, r22
    256a:	f7 1f       	adc	r31, r23
    256c:	e4 91       	lpm	r30, Z
    256e:	6b b1       	in	r22, 0x0b	; 11
    2570:	74 e0       	ldi	r23, 0x04	; 4
    2572:	e7 9f       	mul	r30, r23
    2574:	f0 01       	movw	r30, r0
    2576:	11 24       	eor	r1, r1
    2578:	63 70       	andi	r22, 0x03	; 3
    257a:	e6 2b       	or	r30, r22
    257c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    257e:	65 b1       	in	r22, 0x05	; 5
    2580:	6a 60       	ori	r22, 0x0A	; 10
    2582:	65 b9       	out	0x05, r22	; 5
    2584:	65 b1       	in	r22, 0x05	; 5
    2586:	65 7f       	andi	r22, 0xF5	; 245
    2588:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    258a:	65 b1       	in	r22, 0x05	; 5
    258c:	6a 60       	ori	r22, 0x0A	; 10
    258e:	65 b9       	out	0x05, r22	; 5
    2590:	65 b1       	in	r22, 0x05	; 5
    2592:	65 7f       	andi	r22, 0xF5	; 245
    2594:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 18));
    2596:	b9 01       	movw	r22, r18
    2598:	6e 5e       	subi	r22, 0xEE	; 238
    259a:	7f 4f       	sbci	r23, 0xFF	; 255
    259c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    25a0:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    25a4:	e6 0f       	add	r30, r22
    25a6:	f7 1f       	adc	r31, r23
    25a8:	e4 91       	lpm	r30, Z
    25aa:	6b b1       	in	r22, 0x0b	; 11
    25ac:	74 e0       	ldi	r23, 0x04	; 4
    25ae:	e7 9f       	mul	r30, r23
    25b0:	f0 01       	movw	r30, r0
    25b2:	11 24       	eor	r1, r1
    25b4:	63 70       	andi	r22, 0x03	; 3
    25b6:	e6 2b       	or	r30, r22
    25b8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    25ba:	65 b1       	in	r22, 0x05	; 5
    25bc:	6a 60       	ori	r22, 0x0A	; 10
    25be:	65 b9       	out	0x05, r22	; 5
    25c0:	65 b1       	in	r22, 0x05	; 5
    25c2:	65 7f       	andi	r22, 0xF5	; 245
    25c4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    25c6:	65 b1       	in	r22, 0x05	; 5
    25c8:	6a 60       	ori	r22, 0x0A	; 10
    25ca:	65 b9       	out	0x05, r22	; 5
    25cc:	65 b1       	in	r22, 0x05	; 5
    25ce:	65 7f       	andi	r22, 0xF5	; 245
    25d0:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 19));
    25d2:	b9 01       	movw	r22, r18
    25d4:	6d 5e       	subi	r22, 0xED	; 237
    25d6:	7f 4f       	sbci	r23, 0xFF	; 255
    25d8:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    25dc:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    25e0:	e6 0f       	add	r30, r22
    25e2:	f7 1f       	adc	r31, r23
    25e4:	e4 91       	lpm	r30, Z
    25e6:	6b b1       	in	r22, 0x0b	; 11
    25e8:	74 e0       	ldi	r23, 0x04	; 4
    25ea:	e7 9f       	mul	r30, r23
    25ec:	f0 01       	movw	r30, r0
    25ee:	11 24       	eor	r1, r1
    25f0:	63 70       	andi	r22, 0x03	; 3
    25f2:	e6 2b       	or	r30, r22
    25f4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    25f6:	65 b1       	in	r22, 0x05	; 5
    25f8:	6a 60       	ori	r22, 0x0A	; 10
    25fa:	65 b9       	out	0x05, r22	; 5
    25fc:	65 b1       	in	r22, 0x05	; 5
    25fe:	65 7f       	andi	r22, 0xF5	; 245
    2600:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2602:	65 b1       	in	r22, 0x05	; 5
    2604:	6a 60       	ori	r22, 0x0A	; 10
    2606:	65 b9       	out	0x05, r22	; 5
    2608:	65 b1       	in	r22, 0x05	; 5
    260a:	65 7f       	andi	r22, 0xF5	; 245
    260c:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 20));
    260e:	b9 01       	movw	r22, r18
    2610:	6c 5e       	subi	r22, 0xEC	; 236
    2612:	7f 4f       	sbci	r23, 0xFF	; 255
    2614:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2618:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    261c:	e6 0f       	add	r30, r22
    261e:	f7 1f       	adc	r31, r23
    2620:	e4 91       	lpm	r30, Z
    2622:	6b b1       	in	r22, 0x0b	; 11
    2624:	74 e0       	ldi	r23, 0x04	; 4
    2626:	e7 9f       	mul	r30, r23
    2628:	f0 01       	movw	r30, r0
    262a:	11 24       	eor	r1, r1
    262c:	63 70       	andi	r22, 0x03	; 3
    262e:	e6 2b       	or	r30, r22
    2630:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2632:	65 b1       	in	r22, 0x05	; 5
    2634:	6a 60       	ori	r22, 0x0A	; 10
    2636:	65 b9       	out	0x05, r22	; 5
    2638:	65 b1       	in	r22, 0x05	; 5
    263a:	65 7f       	andi	r22, 0xF5	; 245
    263c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    263e:	65 b1       	in	r22, 0x05	; 5
    2640:	6a 60       	ori	r22, 0x0A	; 10
    2642:	65 b9       	out	0x05, r22	; 5
    2644:	65 b1       	in	r22, 0x05	; 5
    2646:	65 7f       	andi	r22, 0xF5	; 245
    2648:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 21));
    264a:	b9 01       	movw	r22, r18
    264c:	6b 5e       	subi	r22, 0xEB	; 235
    264e:	7f 4f       	sbci	r23, 0xFF	; 255
    2650:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2654:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2658:	e6 0f       	add	r30, r22
    265a:	f7 1f       	adc	r31, r23
    265c:	e4 91       	lpm	r30, Z
    265e:	6b b1       	in	r22, 0x0b	; 11
    2660:	74 e0       	ldi	r23, 0x04	; 4
    2662:	e7 9f       	mul	r30, r23
    2664:	f0 01       	movw	r30, r0
    2666:	11 24       	eor	r1, r1
    2668:	63 70       	andi	r22, 0x03	; 3
    266a:	e6 2b       	or	r30, r22
    266c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    266e:	65 b1       	in	r22, 0x05	; 5
    2670:	6a 60       	ori	r22, 0x0A	; 10
    2672:	65 b9       	out	0x05, r22	; 5
    2674:	65 b1       	in	r22, 0x05	; 5
    2676:	65 7f       	andi	r22, 0xF5	; 245
    2678:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    267a:	65 b1       	in	r22, 0x05	; 5
    267c:	6a 60       	ori	r22, 0x0A	; 10
    267e:	65 b9       	out	0x05, r22	; 5
    2680:	65 b1       	in	r22, 0x05	; 5
    2682:	65 7f       	andi	r22, 0xF5	; 245
    2684:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 22));
    2686:	b9 01       	movw	r22, r18
    2688:	6a 5e       	subi	r22, 0xEA	; 234
    268a:	7f 4f       	sbci	r23, 0xFF	; 255
    268c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2690:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2694:	e6 0f       	add	r30, r22
    2696:	f7 1f       	adc	r31, r23
    2698:	e4 91       	lpm	r30, Z
    269a:	6b b1       	in	r22, 0x0b	; 11
    269c:	74 e0       	ldi	r23, 0x04	; 4
    269e:	e7 9f       	mul	r30, r23
    26a0:	f0 01       	movw	r30, r0
    26a2:	11 24       	eor	r1, r1
    26a4:	63 70       	andi	r22, 0x03	; 3
    26a6:	e6 2b       	or	r30, r22
    26a8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    26aa:	65 b1       	in	r22, 0x05	; 5
    26ac:	6a 60       	ori	r22, 0x0A	; 10
    26ae:	65 b9       	out	0x05, r22	; 5
    26b0:	65 b1       	in	r22, 0x05	; 5
    26b2:	65 7f       	andi	r22, 0xF5	; 245
    26b4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    26b6:	65 b1       	in	r22, 0x05	; 5
    26b8:	6a 60       	ori	r22, 0x0A	; 10
    26ba:	65 b9       	out	0x05, r22	; 5
    26bc:	65 b1       	in	r22, 0x05	; 5
    26be:	65 7f       	andi	r22, 0xF5	; 245
    26c0:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 23));
    26c2:	b9 01       	movw	r22, r18
    26c4:	69 5e       	subi	r22, 0xE9	; 233
    26c6:	7f 4f       	sbci	r23, 0xFF	; 255
    26c8:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    26cc:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    26d0:	e6 0f       	add	r30, r22
    26d2:	f7 1f       	adc	r31, r23
    26d4:	e4 91       	lpm	r30, Z
    26d6:	6b b1       	in	r22, 0x0b	; 11
    26d8:	74 e0       	ldi	r23, 0x04	; 4
    26da:	e7 9f       	mul	r30, r23
    26dc:	f0 01       	movw	r30, r0
    26de:	11 24       	eor	r1, r1
    26e0:	63 70       	andi	r22, 0x03	; 3
    26e2:	e6 2b       	or	r30, r22
    26e4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    26e6:	65 b1       	in	r22, 0x05	; 5
    26e8:	6a 60       	ori	r22, 0x0A	; 10
    26ea:	65 b9       	out	0x05, r22	; 5
    26ec:	65 b1       	in	r22, 0x05	; 5
    26ee:	65 7f       	andi	r22, 0xF5	; 245
    26f0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    26f2:	65 b1       	in	r22, 0x05	; 5
    26f4:	6a 60       	ori	r22, 0x0A	; 10
    26f6:	65 b9       	out	0x05, r22	; 5
    26f8:	65 b1       	in	r22, 0x05	; 5
    26fa:	65 7f       	andi	r22, 0xF5	; 245
    26fc:	65 b9       	out	0x05, r22	; 5

            // chip 3
            SET_COLOR(pgm_read_byte(buffer + index + 24));
    26fe:	b9 01       	movw	r22, r18
    2700:	68 5e       	subi	r22, 0xE8	; 232
    2702:	7f 4f       	sbci	r23, 0xFF	; 255
    2704:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2708:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    270c:	e6 0f       	add	r30, r22
    270e:	f7 1f       	adc	r31, r23
    2710:	e4 91       	lpm	r30, Z
    2712:	6b b1       	in	r22, 0x0b	; 11
    2714:	74 e0       	ldi	r23, 0x04	; 4
    2716:	e7 9f       	mul	r30, r23
    2718:	f0 01       	movw	r30, r0
    271a:	11 24       	eor	r1, r1
    271c:	63 70       	andi	r22, 0x03	; 3
    271e:	e6 2b       	or	r30, r22
    2720:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2722:	65 b1       	in	r22, 0x05	; 5
    2724:	6a 60       	ori	r22, 0x0A	; 10
    2726:	65 b9       	out	0x05, r22	; 5
    2728:	65 b1       	in	r22, 0x05	; 5
    272a:	65 7f       	andi	r22, 0xF5	; 245
    272c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    272e:	65 b1       	in	r22, 0x05	; 5
    2730:	6a 60       	ori	r22, 0x0A	; 10
    2732:	65 b9       	out	0x05, r22	; 5
    2734:	65 b1       	in	r22, 0x05	; 5
    2736:	65 7f       	andi	r22, 0xF5	; 245
    2738:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 25));
    273a:	b9 01       	movw	r22, r18
    273c:	67 5e       	subi	r22, 0xE7	; 231
    273e:	7f 4f       	sbci	r23, 0xFF	; 255
    2740:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2744:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2748:	e6 0f       	add	r30, r22
    274a:	f7 1f       	adc	r31, r23
    274c:	e4 91       	lpm	r30, Z
    274e:	6b b1       	in	r22, 0x0b	; 11
    2750:	74 e0       	ldi	r23, 0x04	; 4
    2752:	e7 9f       	mul	r30, r23
    2754:	f0 01       	movw	r30, r0
    2756:	11 24       	eor	r1, r1
    2758:	63 70       	andi	r22, 0x03	; 3
    275a:	e6 2b       	or	r30, r22
    275c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    275e:	65 b1       	in	r22, 0x05	; 5
    2760:	6a 60       	ori	r22, 0x0A	; 10
    2762:	65 b9       	out	0x05, r22	; 5
    2764:	65 b1       	in	r22, 0x05	; 5
    2766:	65 7f       	andi	r22, 0xF5	; 245
    2768:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    276a:	65 b1       	in	r22, 0x05	; 5
    276c:	6a 60       	ori	r22, 0x0A	; 10
    276e:	65 b9       	out	0x05, r22	; 5
    2770:	65 b1       	in	r22, 0x05	; 5
    2772:	65 7f       	andi	r22, 0xF5	; 245
    2774:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 26));
    2776:	b9 01       	movw	r22, r18
    2778:	66 5e       	subi	r22, 0xE6	; 230
    277a:	7f 4f       	sbci	r23, 0xFF	; 255
    277c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2780:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2784:	e6 0f       	add	r30, r22
    2786:	f7 1f       	adc	r31, r23
    2788:	e4 91       	lpm	r30, Z
    278a:	6b b1       	in	r22, 0x0b	; 11
    278c:	74 e0       	ldi	r23, 0x04	; 4
    278e:	e7 9f       	mul	r30, r23
    2790:	f0 01       	movw	r30, r0
    2792:	11 24       	eor	r1, r1
    2794:	63 70       	andi	r22, 0x03	; 3
    2796:	e6 2b       	or	r30, r22
    2798:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    279a:	65 b1       	in	r22, 0x05	; 5
    279c:	6a 60       	ori	r22, 0x0A	; 10
    279e:	65 b9       	out	0x05, r22	; 5
    27a0:	65 b1       	in	r22, 0x05	; 5
    27a2:	65 7f       	andi	r22, 0xF5	; 245
    27a4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    27a6:	65 b1       	in	r22, 0x05	; 5
    27a8:	6a 60       	ori	r22, 0x0A	; 10
    27aa:	65 b9       	out	0x05, r22	; 5
    27ac:	65 b1       	in	r22, 0x05	; 5
    27ae:	65 7f       	andi	r22, 0xF5	; 245
    27b0:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 27));
    27b2:	b9 01       	movw	r22, r18
    27b4:	65 5e       	subi	r22, 0xE5	; 229
    27b6:	7f 4f       	sbci	r23, 0xFF	; 255
    27b8:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    27bc:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    27c0:	e6 0f       	add	r30, r22
    27c2:	f7 1f       	adc	r31, r23
    27c4:	e4 91       	lpm	r30, Z
    27c6:	6b b1       	in	r22, 0x0b	; 11
    27c8:	74 e0       	ldi	r23, 0x04	; 4
    27ca:	e7 9f       	mul	r30, r23
    27cc:	f0 01       	movw	r30, r0
    27ce:	11 24       	eor	r1, r1
    27d0:	63 70       	andi	r22, 0x03	; 3
    27d2:	e6 2b       	or	r30, r22
    27d4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    27d6:	65 b1       	in	r22, 0x05	; 5
    27d8:	6a 60       	ori	r22, 0x0A	; 10
    27da:	65 b9       	out	0x05, r22	; 5
    27dc:	65 b1       	in	r22, 0x05	; 5
    27de:	65 7f       	andi	r22, 0xF5	; 245
    27e0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    27e2:	65 b1       	in	r22, 0x05	; 5
    27e4:	6a 60       	ori	r22, 0x0A	; 10
    27e6:	65 b9       	out	0x05, r22	; 5
    27e8:	65 b1       	in	r22, 0x05	; 5
    27ea:	65 7f       	andi	r22, 0xF5	; 245
    27ec:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 28));
    27ee:	b9 01       	movw	r22, r18
    27f0:	64 5e       	subi	r22, 0xE4	; 228
    27f2:	7f 4f       	sbci	r23, 0xFF	; 255
    27f4:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    27f8:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    27fc:	e6 0f       	add	r30, r22
    27fe:	f7 1f       	adc	r31, r23
    2800:	e4 91       	lpm	r30, Z
    2802:	6b b1       	in	r22, 0x0b	; 11
    2804:	74 e0       	ldi	r23, 0x04	; 4
    2806:	e7 9f       	mul	r30, r23
    2808:	f0 01       	movw	r30, r0
    280a:	11 24       	eor	r1, r1
    280c:	63 70       	andi	r22, 0x03	; 3
    280e:	e6 2b       	or	r30, r22
    2810:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2812:	65 b1       	in	r22, 0x05	; 5
    2814:	6a 60       	ori	r22, 0x0A	; 10
    2816:	65 b9       	out	0x05, r22	; 5
    2818:	65 b1       	in	r22, 0x05	; 5
    281a:	65 7f       	andi	r22, 0xF5	; 245
    281c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    281e:	65 b1       	in	r22, 0x05	; 5
    2820:	6a 60       	ori	r22, 0x0A	; 10
    2822:	65 b9       	out	0x05, r22	; 5
    2824:	65 b1       	in	r22, 0x05	; 5
    2826:	65 7f       	andi	r22, 0xF5	; 245
    2828:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 29));
    282a:	b9 01       	movw	r22, r18
    282c:	63 5e       	subi	r22, 0xE3	; 227
    282e:	7f 4f       	sbci	r23, 0xFF	; 255
    2830:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2834:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2838:	e6 0f       	add	r30, r22
    283a:	f7 1f       	adc	r31, r23
    283c:	e4 91       	lpm	r30, Z
    283e:	6b b1       	in	r22, 0x0b	; 11
    2840:	74 e0       	ldi	r23, 0x04	; 4
    2842:	e7 9f       	mul	r30, r23
    2844:	f0 01       	movw	r30, r0
    2846:	11 24       	eor	r1, r1
    2848:	63 70       	andi	r22, 0x03	; 3
    284a:	e6 2b       	or	r30, r22
    284c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    284e:	65 b1       	in	r22, 0x05	; 5
    2850:	6a 60       	ori	r22, 0x0A	; 10
    2852:	65 b9       	out	0x05, r22	; 5
    2854:	65 b1       	in	r22, 0x05	; 5
    2856:	65 7f       	andi	r22, 0xF5	; 245
    2858:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    285a:	65 b1       	in	r22, 0x05	; 5
    285c:	6a 60       	ori	r22, 0x0A	; 10
    285e:	65 b9       	out	0x05, r22	; 5
    2860:	65 b1       	in	r22, 0x05	; 5
    2862:	65 7f       	andi	r22, 0xF5	; 245
    2864:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 30));
    2866:	b9 01       	movw	r22, r18
    2868:	62 5e       	subi	r22, 0xE2	; 226
    286a:	7f 4f       	sbci	r23, 0xFF	; 255
    286c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2870:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2874:	e6 0f       	add	r30, r22
    2876:	f7 1f       	adc	r31, r23
    2878:	e4 91       	lpm	r30, Z
    287a:	6b b1       	in	r22, 0x0b	; 11
    287c:	74 e0       	ldi	r23, 0x04	; 4
    287e:	e7 9f       	mul	r30, r23
    2880:	f0 01       	movw	r30, r0
    2882:	11 24       	eor	r1, r1
    2884:	63 70       	andi	r22, 0x03	; 3
    2886:	e6 2b       	or	r30, r22
    2888:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    288a:	65 b1       	in	r22, 0x05	; 5
    288c:	6a 60       	ori	r22, 0x0A	; 10
    288e:	65 b9       	out	0x05, r22	; 5
    2890:	65 b1       	in	r22, 0x05	; 5
    2892:	65 7f       	andi	r22, 0xF5	; 245
    2894:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2896:	65 b1       	in	r22, 0x05	; 5
    2898:	6a 60       	ori	r22, 0x0A	; 10
    289a:	65 b9       	out	0x05, r22	; 5
    289c:	65 b1       	in	r22, 0x05	; 5
    289e:	65 7f       	andi	r22, 0xF5	; 245
    28a0:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 31));
    28a2:	b9 01       	movw	r22, r18
    28a4:	61 5e       	subi	r22, 0xE1	; 225
    28a6:	7f 4f       	sbci	r23, 0xFF	; 255
    28a8:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    28ac:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    28b0:	e6 0f       	add	r30, r22
    28b2:	f7 1f       	adc	r31, r23
    28b4:	e4 91       	lpm	r30, Z
    28b6:	6b b1       	in	r22, 0x0b	; 11
    28b8:	74 e0       	ldi	r23, 0x04	; 4
    28ba:	e7 9f       	mul	r30, r23
    28bc:	f0 01       	movw	r30, r0
    28be:	11 24       	eor	r1, r1
    28c0:	63 70       	andi	r22, 0x03	; 3
    28c2:	e6 2b       	or	r30, r22
    28c4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    28c6:	65 b1       	in	r22, 0x05	; 5
    28c8:	6a 60       	ori	r22, 0x0A	; 10
    28ca:	65 b9       	out	0x05, r22	; 5
    28cc:	65 b1       	in	r22, 0x05	; 5
    28ce:	65 7f       	andi	r22, 0xF5	; 245
    28d0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    28d2:	65 b1       	in	r22, 0x05	; 5
    28d4:	6a 60       	ori	r22, 0x0A	; 10
    28d6:	65 b9       	out	0x05, r22	; 5
    28d8:	65 b1       	in	r22, 0x05	; 5
    28da:	65 7f       	andi	r22, 0xF5	; 245
    28dc:	65 b9       	out	0x05, r22	; 5

            // chip 4
            SET_COLOR(pgm_read_byte(buffer + index + 32));
    28de:	b9 01       	movw	r22, r18
    28e0:	60 5e       	subi	r22, 0xE0	; 224
    28e2:	7f 4f       	sbci	r23, 0xFF	; 255
    28e4:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    28e8:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    28ec:	e6 0f       	add	r30, r22
    28ee:	f7 1f       	adc	r31, r23
    28f0:	e4 91       	lpm	r30, Z
    28f2:	6b b1       	in	r22, 0x0b	; 11
    28f4:	74 e0       	ldi	r23, 0x04	; 4
    28f6:	e7 9f       	mul	r30, r23
    28f8:	f0 01       	movw	r30, r0
    28fa:	11 24       	eor	r1, r1
    28fc:	63 70       	andi	r22, 0x03	; 3
    28fe:	e6 2b       	or	r30, r22
    2900:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2902:	65 b1       	in	r22, 0x05	; 5
    2904:	6a 60       	ori	r22, 0x0A	; 10
    2906:	65 b9       	out	0x05, r22	; 5
    2908:	65 b1       	in	r22, 0x05	; 5
    290a:	65 7f       	andi	r22, 0xF5	; 245
    290c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    290e:	65 b1       	in	r22, 0x05	; 5
    2910:	6a 60       	ori	r22, 0x0A	; 10
    2912:	65 b9       	out	0x05, r22	; 5
    2914:	65 b1       	in	r22, 0x05	; 5
    2916:	65 7f       	andi	r22, 0xF5	; 245
    2918:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 33));
    291a:	b9 01       	movw	r22, r18
    291c:	6f 5d       	subi	r22, 0xDF	; 223
    291e:	7f 4f       	sbci	r23, 0xFF	; 255
    2920:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2924:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2928:	e6 0f       	add	r30, r22
    292a:	f7 1f       	adc	r31, r23
    292c:	e4 91       	lpm	r30, Z
    292e:	6b b1       	in	r22, 0x0b	; 11
    2930:	74 e0       	ldi	r23, 0x04	; 4
    2932:	e7 9f       	mul	r30, r23
    2934:	f0 01       	movw	r30, r0
    2936:	11 24       	eor	r1, r1
    2938:	63 70       	andi	r22, 0x03	; 3
    293a:	e6 2b       	or	r30, r22
    293c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    293e:	65 b1       	in	r22, 0x05	; 5
    2940:	6a 60       	ori	r22, 0x0A	; 10
    2942:	65 b9       	out	0x05, r22	; 5
    2944:	65 b1       	in	r22, 0x05	; 5
    2946:	65 7f       	andi	r22, 0xF5	; 245
    2948:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    294a:	65 b1       	in	r22, 0x05	; 5
    294c:	6a 60       	ori	r22, 0x0A	; 10
    294e:	65 b9       	out	0x05, r22	; 5
    2950:	65 b1       	in	r22, 0x05	; 5
    2952:	65 7f       	andi	r22, 0xF5	; 245
    2954:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 34));
    2956:	b9 01       	movw	r22, r18
    2958:	6e 5d       	subi	r22, 0xDE	; 222
    295a:	7f 4f       	sbci	r23, 0xFF	; 255
    295c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2960:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2964:	e6 0f       	add	r30, r22
    2966:	f7 1f       	adc	r31, r23
    2968:	e4 91       	lpm	r30, Z
    296a:	6b b1       	in	r22, 0x0b	; 11
    296c:	74 e0       	ldi	r23, 0x04	; 4
    296e:	e7 9f       	mul	r30, r23
    2970:	f0 01       	movw	r30, r0
    2972:	11 24       	eor	r1, r1
    2974:	63 70       	andi	r22, 0x03	; 3
    2976:	e6 2b       	or	r30, r22
    2978:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    297a:	65 b1       	in	r22, 0x05	; 5
    297c:	6a 60       	ori	r22, 0x0A	; 10
    297e:	65 b9       	out	0x05, r22	; 5
    2980:	65 b1       	in	r22, 0x05	; 5
    2982:	65 7f       	andi	r22, 0xF5	; 245
    2984:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2986:	65 b1       	in	r22, 0x05	; 5
    2988:	6a 60       	ori	r22, 0x0A	; 10
    298a:	65 b9       	out	0x05, r22	; 5
    298c:	65 b1       	in	r22, 0x05	; 5
    298e:	65 7f       	andi	r22, 0xF5	; 245
    2990:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 35));
    2992:	b9 01       	movw	r22, r18
    2994:	6d 5d       	subi	r22, 0xDD	; 221
    2996:	7f 4f       	sbci	r23, 0xFF	; 255
    2998:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    299c:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    29a0:	e6 0f       	add	r30, r22
    29a2:	f7 1f       	adc	r31, r23
    29a4:	e4 91       	lpm	r30, Z
    29a6:	6b b1       	in	r22, 0x0b	; 11
    29a8:	74 e0       	ldi	r23, 0x04	; 4
    29aa:	e7 9f       	mul	r30, r23
    29ac:	f0 01       	movw	r30, r0
    29ae:	11 24       	eor	r1, r1
    29b0:	63 70       	andi	r22, 0x03	; 3
    29b2:	e6 2b       	or	r30, r22
    29b4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    29b6:	65 b1       	in	r22, 0x05	; 5
    29b8:	6a 60       	ori	r22, 0x0A	; 10
    29ba:	65 b9       	out	0x05, r22	; 5
    29bc:	65 b1       	in	r22, 0x05	; 5
    29be:	65 7f       	andi	r22, 0xF5	; 245
    29c0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    29c2:	65 b1       	in	r22, 0x05	; 5
    29c4:	6a 60       	ori	r22, 0x0A	; 10
    29c6:	65 b9       	out	0x05, r22	; 5
    29c8:	65 b1       	in	r22, 0x05	; 5
    29ca:	65 7f       	andi	r22, 0xF5	; 245
    29cc:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 36));
    29ce:	b9 01       	movw	r22, r18
    29d0:	6c 5d       	subi	r22, 0xDC	; 220
    29d2:	7f 4f       	sbci	r23, 0xFF	; 255
    29d4:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    29d8:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    29dc:	e6 0f       	add	r30, r22
    29de:	f7 1f       	adc	r31, r23
    29e0:	e4 91       	lpm	r30, Z
    29e2:	6b b1       	in	r22, 0x0b	; 11
    29e4:	74 e0       	ldi	r23, 0x04	; 4
    29e6:	e7 9f       	mul	r30, r23
    29e8:	f0 01       	movw	r30, r0
    29ea:	11 24       	eor	r1, r1
    29ec:	63 70       	andi	r22, 0x03	; 3
    29ee:	e6 2b       	or	r30, r22
    29f0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    29f2:	65 b1       	in	r22, 0x05	; 5
    29f4:	6a 60       	ori	r22, 0x0A	; 10
    29f6:	65 b9       	out	0x05, r22	; 5
    29f8:	65 b1       	in	r22, 0x05	; 5
    29fa:	65 7f       	andi	r22, 0xF5	; 245
    29fc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    29fe:	65 b1       	in	r22, 0x05	; 5
    2a00:	6a 60       	ori	r22, 0x0A	; 10
    2a02:	65 b9       	out	0x05, r22	; 5
    2a04:	65 b1       	in	r22, 0x05	; 5
    2a06:	65 7f       	andi	r22, 0xF5	; 245
    2a08:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 37));
    2a0a:	b9 01       	movw	r22, r18
    2a0c:	6b 5d       	subi	r22, 0xDB	; 219
    2a0e:	7f 4f       	sbci	r23, 0xFF	; 255
    2a10:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2a14:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2a18:	e6 0f       	add	r30, r22
    2a1a:	f7 1f       	adc	r31, r23
    2a1c:	e4 91       	lpm	r30, Z
    2a1e:	6b b1       	in	r22, 0x0b	; 11
    2a20:	74 e0       	ldi	r23, 0x04	; 4
    2a22:	e7 9f       	mul	r30, r23
    2a24:	f0 01       	movw	r30, r0
    2a26:	11 24       	eor	r1, r1
    2a28:	63 70       	andi	r22, 0x03	; 3
    2a2a:	e6 2b       	or	r30, r22
    2a2c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2a2e:	65 b1       	in	r22, 0x05	; 5
    2a30:	6a 60       	ori	r22, 0x0A	; 10
    2a32:	65 b9       	out	0x05, r22	; 5
    2a34:	65 b1       	in	r22, 0x05	; 5
    2a36:	65 7f       	andi	r22, 0xF5	; 245
    2a38:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2a3a:	65 b1       	in	r22, 0x05	; 5
    2a3c:	6a 60       	ori	r22, 0x0A	; 10
    2a3e:	65 b9       	out	0x05, r22	; 5
    2a40:	65 b1       	in	r22, 0x05	; 5
    2a42:	65 7f       	andi	r22, 0xF5	; 245
    2a44:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 38));
    2a46:	b9 01       	movw	r22, r18
    2a48:	6a 5d       	subi	r22, 0xDA	; 218
    2a4a:	7f 4f       	sbci	r23, 0xFF	; 255
    2a4c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2a50:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2a54:	e6 0f       	add	r30, r22
    2a56:	f7 1f       	adc	r31, r23
    2a58:	e4 91       	lpm	r30, Z
    2a5a:	6b b1       	in	r22, 0x0b	; 11
    2a5c:	74 e0       	ldi	r23, 0x04	; 4
    2a5e:	e7 9f       	mul	r30, r23
    2a60:	f0 01       	movw	r30, r0
    2a62:	11 24       	eor	r1, r1
    2a64:	63 70       	andi	r22, 0x03	; 3
    2a66:	e6 2b       	or	r30, r22
    2a68:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2a6a:	65 b1       	in	r22, 0x05	; 5
    2a6c:	6a 60       	ori	r22, 0x0A	; 10
    2a6e:	65 b9       	out	0x05, r22	; 5
    2a70:	65 b1       	in	r22, 0x05	; 5
    2a72:	65 7f       	andi	r22, 0xF5	; 245
    2a74:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2a76:	65 b1       	in	r22, 0x05	; 5
    2a78:	6a 60       	ori	r22, 0x0A	; 10
    2a7a:	65 b9       	out	0x05, r22	; 5
    2a7c:	65 b1       	in	r22, 0x05	; 5
    2a7e:	65 7f       	andi	r22, 0xF5	; 245
    2a80:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 39));
    2a82:	b9 01       	movw	r22, r18
    2a84:	69 5d       	subi	r22, 0xD9	; 217
    2a86:	7f 4f       	sbci	r23, 0xFF	; 255
    2a88:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2a8c:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2a90:	e6 0f       	add	r30, r22
    2a92:	f7 1f       	adc	r31, r23
    2a94:	e4 91       	lpm	r30, Z
    2a96:	6b b1       	in	r22, 0x0b	; 11
    2a98:	74 e0       	ldi	r23, 0x04	; 4
    2a9a:	e7 9f       	mul	r30, r23
    2a9c:	f0 01       	movw	r30, r0
    2a9e:	11 24       	eor	r1, r1
    2aa0:	63 70       	andi	r22, 0x03	; 3
    2aa2:	e6 2b       	or	r30, r22
    2aa4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2aa6:	65 b1       	in	r22, 0x05	; 5
    2aa8:	6a 60       	ori	r22, 0x0A	; 10
    2aaa:	65 b9       	out	0x05, r22	; 5
    2aac:	65 b1       	in	r22, 0x05	; 5
    2aae:	65 7f       	andi	r22, 0xF5	; 245
    2ab0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2ab2:	65 b1       	in	r22, 0x05	; 5
    2ab4:	6a 60       	ori	r22, 0x0A	; 10
    2ab6:	65 b9       	out	0x05, r22	; 5
    2ab8:	65 b1       	in	r22, 0x05	; 5
    2aba:	65 7f       	andi	r22, 0xF5	; 245
    2abc:	65 b9       	out	0x05, r22	; 5

            // chip 5
            SET_COLOR(pgm_read_byte(buffer + index + 40));
    2abe:	b9 01       	movw	r22, r18
    2ac0:	68 5d       	subi	r22, 0xD8	; 216
    2ac2:	7f 4f       	sbci	r23, 0xFF	; 255
    2ac4:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2ac8:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2acc:	e6 0f       	add	r30, r22
    2ace:	f7 1f       	adc	r31, r23
    2ad0:	e4 91       	lpm	r30, Z
    2ad2:	6b b1       	in	r22, 0x0b	; 11
    2ad4:	74 e0       	ldi	r23, 0x04	; 4
    2ad6:	e7 9f       	mul	r30, r23
    2ad8:	f0 01       	movw	r30, r0
    2ada:	11 24       	eor	r1, r1
    2adc:	63 70       	andi	r22, 0x03	; 3
    2ade:	e6 2b       	or	r30, r22
    2ae0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2ae2:	65 b1       	in	r22, 0x05	; 5
    2ae4:	6a 60       	ori	r22, 0x0A	; 10
    2ae6:	65 b9       	out	0x05, r22	; 5
    2ae8:	65 b1       	in	r22, 0x05	; 5
    2aea:	65 7f       	andi	r22, 0xF5	; 245
    2aec:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2aee:	65 b1       	in	r22, 0x05	; 5
    2af0:	6a 60       	ori	r22, 0x0A	; 10
    2af2:	65 b9       	out	0x05, r22	; 5
    2af4:	65 b1       	in	r22, 0x05	; 5
    2af6:	65 7f       	andi	r22, 0xF5	; 245
    2af8:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 41));
    2afa:	b9 01       	movw	r22, r18
    2afc:	67 5d       	subi	r22, 0xD7	; 215
    2afe:	7f 4f       	sbci	r23, 0xFF	; 255
    2b00:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2b04:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2b08:	e6 0f       	add	r30, r22
    2b0a:	f7 1f       	adc	r31, r23
    2b0c:	e4 91       	lpm	r30, Z
    2b0e:	6b b1       	in	r22, 0x0b	; 11
    2b10:	74 e0       	ldi	r23, 0x04	; 4
    2b12:	e7 9f       	mul	r30, r23
    2b14:	f0 01       	movw	r30, r0
    2b16:	11 24       	eor	r1, r1
    2b18:	63 70       	andi	r22, 0x03	; 3
    2b1a:	e6 2b       	or	r30, r22
    2b1c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2b1e:	65 b1       	in	r22, 0x05	; 5
    2b20:	6a 60       	ori	r22, 0x0A	; 10
    2b22:	65 b9       	out	0x05, r22	; 5
    2b24:	65 b1       	in	r22, 0x05	; 5
    2b26:	65 7f       	andi	r22, 0xF5	; 245
    2b28:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2b2a:	65 b1       	in	r22, 0x05	; 5
    2b2c:	6a 60       	ori	r22, 0x0A	; 10
    2b2e:	65 b9       	out	0x05, r22	; 5
    2b30:	65 b1       	in	r22, 0x05	; 5
    2b32:	65 7f       	andi	r22, 0xF5	; 245
    2b34:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 42));
    2b36:	b9 01       	movw	r22, r18
    2b38:	66 5d       	subi	r22, 0xD6	; 214
    2b3a:	7f 4f       	sbci	r23, 0xFF	; 255
    2b3c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2b40:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2b44:	e6 0f       	add	r30, r22
    2b46:	f7 1f       	adc	r31, r23
    2b48:	e4 91       	lpm	r30, Z
    2b4a:	6b b1       	in	r22, 0x0b	; 11
    2b4c:	74 e0       	ldi	r23, 0x04	; 4
    2b4e:	e7 9f       	mul	r30, r23
    2b50:	f0 01       	movw	r30, r0
    2b52:	11 24       	eor	r1, r1
    2b54:	63 70       	andi	r22, 0x03	; 3
    2b56:	e6 2b       	or	r30, r22
    2b58:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2b5a:	65 b1       	in	r22, 0x05	; 5
    2b5c:	6a 60       	ori	r22, 0x0A	; 10
    2b5e:	65 b9       	out	0x05, r22	; 5
    2b60:	65 b1       	in	r22, 0x05	; 5
    2b62:	65 7f       	andi	r22, 0xF5	; 245
    2b64:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2b66:	65 b1       	in	r22, 0x05	; 5
    2b68:	6a 60       	ori	r22, 0x0A	; 10
    2b6a:	65 b9       	out	0x05, r22	; 5
    2b6c:	65 b1       	in	r22, 0x05	; 5
    2b6e:	65 7f       	andi	r22, 0xF5	; 245
    2b70:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 43));
    2b72:	b9 01       	movw	r22, r18
    2b74:	65 5d       	subi	r22, 0xD5	; 213
    2b76:	7f 4f       	sbci	r23, 0xFF	; 255
    2b78:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2b7c:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2b80:	e6 0f       	add	r30, r22
    2b82:	f7 1f       	adc	r31, r23
    2b84:	e4 91       	lpm	r30, Z
    2b86:	6b b1       	in	r22, 0x0b	; 11
    2b88:	74 e0       	ldi	r23, 0x04	; 4
    2b8a:	e7 9f       	mul	r30, r23
    2b8c:	f0 01       	movw	r30, r0
    2b8e:	11 24       	eor	r1, r1
    2b90:	63 70       	andi	r22, 0x03	; 3
    2b92:	e6 2b       	or	r30, r22
    2b94:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2b96:	65 b1       	in	r22, 0x05	; 5
    2b98:	6a 60       	ori	r22, 0x0A	; 10
    2b9a:	65 b9       	out	0x05, r22	; 5
    2b9c:	65 b1       	in	r22, 0x05	; 5
    2b9e:	65 7f       	andi	r22, 0xF5	; 245
    2ba0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2ba2:	65 b1       	in	r22, 0x05	; 5
    2ba4:	6a 60       	ori	r22, 0x0A	; 10
    2ba6:	65 b9       	out	0x05, r22	; 5
    2ba8:	65 b1       	in	r22, 0x05	; 5
    2baa:	65 7f       	andi	r22, 0xF5	; 245
    2bac:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 44));
    2bae:	b9 01       	movw	r22, r18
    2bb0:	64 5d       	subi	r22, 0xD4	; 212
    2bb2:	7f 4f       	sbci	r23, 0xFF	; 255
    2bb4:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2bb8:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2bbc:	e6 0f       	add	r30, r22
    2bbe:	f7 1f       	adc	r31, r23
    2bc0:	e4 91       	lpm	r30, Z
    2bc2:	6b b1       	in	r22, 0x0b	; 11
    2bc4:	74 e0       	ldi	r23, 0x04	; 4
    2bc6:	e7 9f       	mul	r30, r23
    2bc8:	f0 01       	movw	r30, r0
    2bca:	11 24       	eor	r1, r1
    2bcc:	63 70       	andi	r22, 0x03	; 3
    2bce:	e6 2b       	or	r30, r22
    2bd0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2bd2:	65 b1       	in	r22, 0x05	; 5
    2bd4:	6a 60       	ori	r22, 0x0A	; 10
    2bd6:	65 b9       	out	0x05, r22	; 5
    2bd8:	65 b1       	in	r22, 0x05	; 5
    2bda:	65 7f       	andi	r22, 0xF5	; 245
    2bdc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2bde:	65 b1       	in	r22, 0x05	; 5
    2be0:	6a 60       	ori	r22, 0x0A	; 10
    2be2:	65 b9       	out	0x05, r22	; 5
    2be4:	65 b1       	in	r22, 0x05	; 5
    2be6:	65 7f       	andi	r22, 0xF5	; 245
    2be8:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 45));
    2bea:	b9 01       	movw	r22, r18
    2bec:	63 5d       	subi	r22, 0xD3	; 211
    2bee:	7f 4f       	sbci	r23, 0xFF	; 255
    2bf0:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2bf4:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2bf8:	e6 0f       	add	r30, r22
    2bfa:	f7 1f       	adc	r31, r23
    2bfc:	e4 91       	lpm	r30, Z
    2bfe:	6b b1       	in	r22, 0x0b	; 11
    2c00:	74 e0       	ldi	r23, 0x04	; 4
    2c02:	e7 9f       	mul	r30, r23
    2c04:	f0 01       	movw	r30, r0
    2c06:	11 24       	eor	r1, r1
    2c08:	63 70       	andi	r22, 0x03	; 3
    2c0a:	e6 2b       	or	r30, r22
    2c0c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2c0e:	65 b1       	in	r22, 0x05	; 5
    2c10:	6a 60       	ori	r22, 0x0A	; 10
    2c12:	65 b9       	out	0x05, r22	; 5
    2c14:	65 b1       	in	r22, 0x05	; 5
    2c16:	65 7f       	andi	r22, 0xF5	; 245
    2c18:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2c1a:	65 b1       	in	r22, 0x05	; 5
    2c1c:	6a 60       	ori	r22, 0x0A	; 10
    2c1e:	65 b9       	out	0x05, r22	; 5
    2c20:	65 b1       	in	r22, 0x05	; 5
    2c22:	65 7f       	andi	r22, 0xF5	; 245
    2c24:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 46));
    2c26:	b9 01       	movw	r22, r18
    2c28:	62 5d       	subi	r22, 0xD2	; 210
    2c2a:	7f 4f       	sbci	r23, 0xFF	; 255
    2c2c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2c30:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2c34:	e6 0f       	add	r30, r22
    2c36:	f7 1f       	adc	r31, r23
    2c38:	e4 91       	lpm	r30, Z
    2c3a:	6b b1       	in	r22, 0x0b	; 11
    2c3c:	74 e0       	ldi	r23, 0x04	; 4
    2c3e:	e7 9f       	mul	r30, r23
    2c40:	f0 01       	movw	r30, r0
    2c42:	11 24       	eor	r1, r1
    2c44:	63 70       	andi	r22, 0x03	; 3
    2c46:	e6 2b       	or	r30, r22
    2c48:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2c4a:	65 b1       	in	r22, 0x05	; 5
    2c4c:	6a 60       	ori	r22, 0x0A	; 10
    2c4e:	65 b9       	out	0x05, r22	; 5
    2c50:	65 b1       	in	r22, 0x05	; 5
    2c52:	65 7f       	andi	r22, 0xF5	; 245
    2c54:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2c56:	65 b1       	in	r22, 0x05	; 5
    2c58:	6a 60       	ori	r22, 0x0A	; 10
    2c5a:	65 b9       	out	0x05, r22	; 5
    2c5c:	65 b1       	in	r22, 0x05	; 5
    2c5e:	65 7f       	andi	r22, 0xF5	; 245
    2c60:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 47));
    2c62:	b9 01       	movw	r22, r18
    2c64:	61 5d       	subi	r22, 0xD1	; 209
    2c66:	7f 4f       	sbci	r23, 0xFF	; 255
    2c68:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2c6c:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2c70:	e6 0f       	add	r30, r22
    2c72:	f7 1f       	adc	r31, r23
    2c74:	e4 91       	lpm	r30, Z
    2c76:	6b b1       	in	r22, 0x0b	; 11
    2c78:	74 e0       	ldi	r23, 0x04	; 4
    2c7a:	e7 9f       	mul	r30, r23
    2c7c:	f0 01       	movw	r30, r0
    2c7e:	11 24       	eor	r1, r1
    2c80:	63 70       	andi	r22, 0x03	; 3
    2c82:	e6 2b       	or	r30, r22
    2c84:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2c86:	65 b1       	in	r22, 0x05	; 5
    2c88:	6a 60       	ori	r22, 0x0A	; 10
    2c8a:	65 b9       	out	0x05, r22	; 5
    2c8c:	65 b1       	in	r22, 0x05	; 5
    2c8e:	65 7f       	andi	r22, 0xF5	; 245
    2c90:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2c92:	65 b1       	in	r22, 0x05	; 5
    2c94:	6a 60       	ori	r22, 0x0A	; 10
    2c96:	65 b9       	out	0x05, r22	; 5
    2c98:	65 b1       	in	r22, 0x05	; 5
    2c9a:	65 7f       	andi	r22, 0xF5	; 245
    2c9c:	65 b9       	out	0x05, r22	; 5

            // chip 6
            SET_COLOR(pgm_read_byte(buffer + index + 48));
    2c9e:	b9 01       	movw	r22, r18
    2ca0:	60 5d       	subi	r22, 0xD0	; 208
    2ca2:	7f 4f       	sbci	r23, 0xFF	; 255
    2ca4:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2ca8:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2cac:	e6 0f       	add	r30, r22
    2cae:	f7 1f       	adc	r31, r23
    2cb0:	e4 91       	lpm	r30, Z
    2cb2:	6b b1       	in	r22, 0x0b	; 11
    2cb4:	74 e0       	ldi	r23, 0x04	; 4
    2cb6:	e7 9f       	mul	r30, r23
    2cb8:	f0 01       	movw	r30, r0
    2cba:	11 24       	eor	r1, r1
    2cbc:	63 70       	andi	r22, 0x03	; 3
    2cbe:	e6 2b       	or	r30, r22
    2cc0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2cc2:	65 b1       	in	r22, 0x05	; 5
    2cc4:	6a 60       	ori	r22, 0x0A	; 10
    2cc6:	65 b9       	out	0x05, r22	; 5
    2cc8:	65 b1       	in	r22, 0x05	; 5
    2cca:	65 7f       	andi	r22, 0xF5	; 245
    2ccc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2cce:	65 b1       	in	r22, 0x05	; 5
    2cd0:	6a 60       	ori	r22, 0x0A	; 10
    2cd2:	65 b9       	out	0x05, r22	; 5
    2cd4:	65 b1       	in	r22, 0x05	; 5
    2cd6:	65 7f       	andi	r22, 0xF5	; 245
    2cd8:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 49));
    2cda:	b9 01       	movw	r22, r18
    2cdc:	6f 5c       	subi	r22, 0xCF	; 207
    2cde:	7f 4f       	sbci	r23, 0xFF	; 255
    2ce0:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2ce4:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2ce8:	e6 0f       	add	r30, r22
    2cea:	f7 1f       	adc	r31, r23
    2cec:	e4 91       	lpm	r30, Z
    2cee:	6b b1       	in	r22, 0x0b	; 11
    2cf0:	74 e0       	ldi	r23, 0x04	; 4
    2cf2:	e7 9f       	mul	r30, r23
    2cf4:	f0 01       	movw	r30, r0
    2cf6:	11 24       	eor	r1, r1
    2cf8:	63 70       	andi	r22, 0x03	; 3
    2cfa:	e6 2b       	or	r30, r22
    2cfc:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2cfe:	65 b1       	in	r22, 0x05	; 5
    2d00:	6a 60       	ori	r22, 0x0A	; 10
    2d02:	65 b9       	out	0x05, r22	; 5
    2d04:	65 b1       	in	r22, 0x05	; 5
    2d06:	65 7f       	andi	r22, 0xF5	; 245
    2d08:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2d0a:	65 b1       	in	r22, 0x05	; 5
    2d0c:	6a 60       	ori	r22, 0x0A	; 10
    2d0e:	65 b9       	out	0x05, r22	; 5
    2d10:	65 b1       	in	r22, 0x05	; 5
    2d12:	65 7f       	andi	r22, 0xF5	; 245
    2d14:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 50));
    2d16:	b9 01       	movw	r22, r18
    2d18:	6e 5c       	subi	r22, 0xCE	; 206
    2d1a:	7f 4f       	sbci	r23, 0xFF	; 255
    2d1c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2d20:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2d24:	e6 0f       	add	r30, r22
    2d26:	f7 1f       	adc	r31, r23
    2d28:	e4 91       	lpm	r30, Z
    2d2a:	6b b1       	in	r22, 0x0b	; 11
    2d2c:	74 e0       	ldi	r23, 0x04	; 4
    2d2e:	e7 9f       	mul	r30, r23
    2d30:	f0 01       	movw	r30, r0
    2d32:	11 24       	eor	r1, r1
    2d34:	63 70       	andi	r22, 0x03	; 3
    2d36:	e6 2b       	or	r30, r22
    2d38:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2d3a:	65 b1       	in	r22, 0x05	; 5
    2d3c:	6a 60       	ori	r22, 0x0A	; 10
    2d3e:	65 b9       	out	0x05, r22	; 5
    2d40:	65 b1       	in	r22, 0x05	; 5
    2d42:	65 7f       	andi	r22, 0xF5	; 245
    2d44:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2d46:	65 b1       	in	r22, 0x05	; 5
    2d48:	6a 60       	ori	r22, 0x0A	; 10
    2d4a:	65 b9       	out	0x05, r22	; 5
    2d4c:	65 b1       	in	r22, 0x05	; 5
    2d4e:	65 7f       	andi	r22, 0xF5	; 245
    2d50:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 51));
    2d52:	b9 01       	movw	r22, r18
    2d54:	6d 5c       	subi	r22, 0xCD	; 205
    2d56:	7f 4f       	sbci	r23, 0xFF	; 255
    2d58:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2d5c:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2d60:	e6 0f       	add	r30, r22
    2d62:	f7 1f       	adc	r31, r23
    2d64:	e4 91       	lpm	r30, Z
    2d66:	6b b1       	in	r22, 0x0b	; 11
    2d68:	74 e0       	ldi	r23, 0x04	; 4
    2d6a:	e7 9f       	mul	r30, r23
    2d6c:	f0 01       	movw	r30, r0
    2d6e:	11 24       	eor	r1, r1
    2d70:	63 70       	andi	r22, 0x03	; 3
    2d72:	e6 2b       	or	r30, r22
    2d74:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2d76:	65 b1       	in	r22, 0x05	; 5
    2d78:	6a 60       	ori	r22, 0x0A	; 10
    2d7a:	65 b9       	out	0x05, r22	; 5
    2d7c:	65 b1       	in	r22, 0x05	; 5
    2d7e:	65 7f       	andi	r22, 0xF5	; 245
    2d80:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2d82:	65 b1       	in	r22, 0x05	; 5
    2d84:	6a 60       	ori	r22, 0x0A	; 10
    2d86:	65 b9       	out	0x05, r22	; 5
    2d88:	65 b1       	in	r22, 0x05	; 5
    2d8a:	65 7f       	andi	r22, 0xF5	; 245
    2d8c:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 52));
    2d8e:	b9 01       	movw	r22, r18
    2d90:	6c 5c       	subi	r22, 0xCC	; 204
    2d92:	7f 4f       	sbci	r23, 0xFF	; 255
    2d94:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2d98:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2d9c:	e6 0f       	add	r30, r22
    2d9e:	f7 1f       	adc	r31, r23
    2da0:	e4 91       	lpm	r30, Z
    2da2:	6b b1       	in	r22, 0x0b	; 11
    2da4:	74 e0       	ldi	r23, 0x04	; 4
    2da6:	e7 9f       	mul	r30, r23
    2da8:	f0 01       	movw	r30, r0
    2daa:	11 24       	eor	r1, r1
    2dac:	63 70       	andi	r22, 0x03	; 3
    2dae:	e6 2b       	or	r30, r22
    2db0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2db2:	65 b1       	in	r22, 0x05	; 5
    2db4:	6a 60       	ori	r22, 0x0A	; 10
    2db6:	65 b9       	out	0x05, r22	; 5
    2db8:	65 b1       	in	r22, 0x05	; 5
    2dba:	65 7f       	andi	r22, 0xF5	; 245
    2dbc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2dbe:	65 b1       	in	r22, 0x05	; 5
    2dc0:	6a 60       	ori	r22, 0x0A	; 10
    2dc2:	65 b9       	out	0x05, r22	; 5
    2dc4:	65 b1       	in	r22, 0x05	; 5
    2dc6:	65 7f       	andi	r22, 0xF5	; 245
    2dc8:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 53));
    2dca:	b9 01       	movw	r22, r18
    2dcc:	6b 5c       	subi	r22, 0xCB	; 203
    2dce:	7f 4f       	sbci	r23, 0xFF	; 255
    2dd0:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2dd4:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2dd8:	e6 0f       	add	r30, r22
    2dda:	f7 1f       	adc	r31, r23
    2ddc:	e4 91       	lpm	r30, Z
    2dde:	6b b1       	in	r22, 0x0b	; 11
    2de0:	74 e0       	ldi	r23, 0x04	; 4
    2de2:	e7 9f       	mul	r30, r23
    2de4:	f0 01       	movw	r30, r0
    2de6:	11 24       	eor	r1, r1
    2de8:	63 70       	andi	r22, 0x03	; 3
    2dea:	e6 2b       	or	r30, r22
    2dec:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2dee:	65 b1       	in	r22, 0x05	; 5
    2df0:	6a 60       	ori	r22, 0x0A	; 10
    2df2:	65 b9       	out	0x05, r22	; 5
    2df4:	65 b1       	in	r22, 0x05	; 5
    2df6:	65 7f       	andi	r22, 0xF5	; 245
    2df8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2dfa:	65 b1       	in	r22, 0x05	; 5
    2dfc:	6a 60       	ori	r22, 0x0A	; 10
    2dfe:	65 b9       	out	0x05, r22	; 5
    2e00:	65 b1       	in	r22, 0x05	; 5
    2e02:	65 7f       	andi	r22, 0xF5	; 245
    2e04:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 54));
    2e06:	b9 01       	movw	r22, r18
    2e08:	6a 5c       	subi	r22, 0xCA	; 202
    2e0a:	7f 4f       	sbci	r23, 0xFF	; 255
    2e0c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2e10:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2e14:	e6 0f       	add	r30, r22
    2e16:	f7 1f       	adc	r31, r23
    2e18:	e4 91       	lpm	r30, Z
    2e1a:	6b b1       	in	r22, 0x0b	; 11
    2e1c:	74 e0       	ldi	r23, 0x04	; 4
    2e1e:	e7 9f       	mul	r30, r23
    2e20:	f0 01       	movw	r30, r0
    2e22:	11 24       	eor	r1, r1
    2e24:	63 70       	andi	r22, 0x03	; 3
    2e26:	e6 2b       	or	r30, r22
    2e28:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2e2a:	65 b1       	in	r22, 0x05	; 5
    2e2c:	6a 60       	ori	r22, 0x0A	; 10
    2e2e:	65 b9       	out	0x05, r22	; 5
    2e30:	65 b1       	in	r22, 0x05	; 5
    2e32:	65 7f       	andi	r22, 0xF5	; 245
    2e34:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2e36:	65 b1       	in	r22, 0x05	; 5
    2e38:	6a 60       	ori	r22, 0x0A	; 10
    2e3a:	65 b9       	out	0x05, r22	; 5
    2e3c:	65 b1       	in	r22, 0x05	; 5
    2e3e:	65 7f       	andi	r22, 0xF5	; 245
    2e40:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 55));
    2e42:	b9 01       	movw	r22, r18
    2e44:	69 5c       	subi	r22, 0xC9	; 201
    2e46:	7f 4f       	sbci	r23, 0xFF	; 255
    2e48:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2e4c:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2e50:	e6 0f       	add	r30, r22
    2e52:	f7 1f       	adc	r31, r23
    2e54:	e4 91       	lpm	r30, Z
    2e56:	6b b1       	in	r22, 0x0b	; 11
    2e58:	74 e0       	ldi	r23, 0x04	; 4
    2e5a:	e7 9f       	mul	r30, r23
    2e5c:	f0 01       	movw	r30, r0
    2e5e:	11 24       	eor	r1, r1
    2e60:	63 70       	andi	r22, 0x03	; 3
    2e62:	e6 2b       	or	r30, r22
    2e64:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2e66:	65 b1       	in	r22, 0x05	; 5
    2e68:	6a 60       	ori	r22, 0x0A	; 10
    2e6a:	65 b9       	out	0x05, r22	; 5
    2e6c:	65 b1       	in	r22, 0x05	; 5
    2e6e:	65 7f       	andi	r22, 0xF5	; 245
    2e70:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2e72:	65 b1       	in	r22, 0x05	; 5
    2e74:	6a 60       	ori	r22, 0x0A	; 10
    2e76:	65 b9       	out	0x05, r22	; 5
    2e78:	65 b1       	in	r22, 0x05	; 5
    2e7a:	65 7f       	andi	r22, 0xF5	; 245
    2e7c:	65 b9       	out	0x05, r22	; 5

            // chip 7
            SET_COLOR(pgm_read_byte(buffer + index + 56));
    2e7e:	b9 01       	movw	r22, r18
    2e80:	68 5c       	subi	r22, 0xC8	; 200
    2e82:	7f 4f       	sbci	r23, 0xFF	; 255
    2e84:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2e88:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2e8c:	e6 0f       	add	r30, r22
    2e8e:	f7 1f       	adc	r31, r23
    2e90:	e4 91       	lpm	r30, Z
    2e92:	6b b1       	in	r22, 0x0b	; 11
    2e94:	74 e0       	ldi	r23, 0x04	; 4
    2e96:	e7 9f       	mul	r30, r23
    2e98:	f0 01       	movw	r30, r0
    2e9a:	11 24       	eor	r1, r1
    2e9c:	63 70       	andi	r22, 0x03	; 3
    2e9e:	e6 2b       	or	r30, r22
    2ea0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2ea2:	65 b1       	in	r22, 0x05	; 5
    2ea4:	6a 60       	ori	r22, 0x0A	; 10
    2ea6:	65 b9       	out	0x05, r22	; 5
    2ea8:	65 b1       	in	r22, 0x05	; 5
    2eaa:	65 7f       	andi	r22, 0xF5	; 245
    2eac:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2eae:	65 b1       	in	r22, 0x05	; 5
    2eb0:	6a 60       	ori	r22, 0x0A	; 10
    2eb2:	65 b9       	out	0x05, r22	; 5
    2eb4:	65 b1       	in	r22, 0x05	; 5
    2eb6:	65 7f       	andi	r22, 0xF5	; 245
    2eb8:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 57));
    2eba:	b9 01       	movw	r22, r18
    2ebc:	67 5c       	subi	r22, 0xC7	; 199
    2ebe:	7f 4f       	sbci	r23, 0xFF	; 255
    2ec0:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2ec4:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2ec8:	e6 0f       	add	r30, r22
    2eca:	f7 1f       	adc	r31, r23
    2ecc:	e4 91       	lpm	r30, Z
    2ece:	6b b1       	in	r22, 0x0b	; 11
    2ed0:	74 e0       	ldi	r23, 0x04	; 4
    2ed2:	e7 9f       	mul	r30, r23
    2ed4:	f0 01       	movw	r30, r0
    2ed6:	11 24       	eor	r1, r1
    2ed8:	63 70       	andi	r22, 0x03	; 3
    2eda:	e6 2b       	or	r30, r22
    2edc:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2ede:	65 b1       	in	r22, 0x05	; 5
    2ee0:	6a 60       	ori	r22, 0x0A	; 10
    2ee2:	65 b9       	out	0x05, r22	; 5
    2ee4:	65 b1       	in	r22, 0x05	; 5
    2ee6:	65 7f       	andi	r22, 0xF5	; 245
    2ee8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2eea:	65 b1       	in	r22, 0x05	; 5
    2eec:	6a 60       	ori	r22, 0x0A	; 10
    2eee:	65 b9       	out	0x05, r22	; 5
    2ef0:	65 b1       	in	r22, 0x05	; 5
    2ef2:	65 7f       	andi	r22, 0xF5	; 245
    2ef4:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 58));
    2ef6:	b9 01       	movw	r22, r18
    2ef8:	66 5c       	subi	r22, 0xC6	; 198
    2efa:	7f 4f       	sbci	r23, 0xFF	; 255
    2efc:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2f00:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2f04:	e6 0f       	add	r30, r22
    2f06:	f7 1f       	adc	r31, r23
    2f08:	e4 91       	lpm	r30, Z
    2f0a:	6b b1       	in	r22, 0x0b	; 11
    2f0c:	74 e0       	ldi	r23, 0x04	; 4
    2f0e:	e7 9f       	mul	r30, r23
    2f10:	f0 01       	movw	r30, r0
    2f12:	11 24       	eor	r1, r1
    2f14:	63 70       	andi	r22, 0x03	; 3
    2f16:	e6 2b       	or	r30, r22
    2f18:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2f1a:	65 b1       	in	r22, 0x05	; 5
    2f1c:	6a 60       	ori	r22, 0x0A	; 10
    2f1e:	65 b9       	out	0x05, r22	; 5
    2f20:	65 b1       	in	r22, 0x05	; 5
    2f22:	65 7f       	andi	r22, 0xF5	; 245
    2f24:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2f26:	65 b1       	in	r22, 0x05	; 5
    2f28:	6a 60       	ori	r22, 0x0A	; 10
    2f2a:	65 b9       	out	0x05, r22	; 5
    2f2c:	65 b1       	in	r22, 0x05	; 5
    2f2e:	65 7f       	andi	r22, 0xF5	; 245
    2f30:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 59));
    2f32:	b9 01       	movw	r22, r18
    2f34:	65 5c       	subi	r22, 0xC5	; 197
    2f36:	7f 4f       	sbci	r23, 0xFF	; 255
    2f38:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2f3c:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2f40:	e6 0f       	add	r30, r22
    2f42:	f7 1f       	adc	r31, r23
    2f44:	e4 91       	lpm	r30, Z
    2f46:	6b b1       	in	r22, 0x0b	; 11
    2f48:	74 e0       	ldi	r23, 0x04	; 4
    2f4a:	e7 9f       	mul	r30, r23
    2f4c:	f0 01       	movw	r30, r0
    2f4e:	11 24       	eor	r1, r1
    2f50:	63 70       	andi	r22, 0x03	; 3
    2f52:	e6 2b       	or	r30, r22
    2f54:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2f56:	65 b1       	in	r22, 0x05	; 5
    2f58:	6a 60       	ori	r22, 0x0A	; 10
    2f5a:	65 b9       	out	0x05, r22	; 5
    2f5c:	65 b1       	in	r22, 0x05	; 5
    2f5e:	65 7f       	andi	r22, 0xF5	; 245
    2f60:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2f62:	65 b1       	in	r22, 0x05	; 5
    2f64:	6a 60       	ori	r22, 0x0A	; 10
    2f66:	65 b9       	out	0x05, r22	; 5
    2f68:	65 b1       	in	r22, 0x05	; 5
    2f6a:	65 7f       	andi	r22, 0xF5	; 245
    2f6c:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 60));
    2f6e:	b9 01       	movw	r22, r18
    2f70:	64 5c       	subi	r22, 0xC4	; 196
    2f72:	7f 4f       	sbci	r23, 0xFF	; 255
    2f74:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2f78:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2f7c:	e6 0f       	add	r30, r22
    2f7e:	f7 1f       	adc	r31, r23
    2f80:	e4 91       	lpm	r30, Z
    2f82:	6b b1       	in	r22, 0x0b	; 11
    2f84:	74 e0       	ldi	r23, 0x04	; 4
    2f86:	e7 9f       	mul	r30, r23
    2f88:	f0 01       	movw	r30, r0
    2f8a:	11 24       	eor	r1, r1
    2f8c:	63 70       	andi	r22, 0x03	; 3
    2f8e:	e6 2b       	or	r30, r22
    2f90:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2f92:	65 b1       	in	r22, 0x05	; 5
    2f94:	6a 60       	ori	r22, 0x0A	; 10
    2f96:	65 b9       	out	0x05, r22	; 5
    2f98:	65 b1       	in	r22, 0x05	; 5
    2f9a:	65 7f       	andi	r22, 0xF5	; 245
    2f9c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2f9e:	65 b1       	in	r22, 0x05	; 5
    2fa0:	6a 60       	ori	r22, 0x0A	; 10
    2fa2:	65 b9       	out	0x05, r22	; 5
    2fa4:	65 b1       	in	r22, 0x05	; 5
    2fa6:	65 7f       	andi	r22, 0xF5	; 245
    2fa8:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 61));
    2faa:	b9 01       	movw	r22, r18
    2fac:	63 5c       	subi	r22, 0xC3	; 195
    2fae:	7f 4f       	sbci	r23, 0xFF	; 255
    2fb0:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2fb4:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2fb8:	e6 0f       	add	r30, r22
    2fba:	f7 1f       	adc	r31, r23
    2fbc:	e4 91       	lpm	r30, Z
    2fbe:	6b b1       	in	r22, 0x0b	; 11
    2fc0:	74 e0       	ldi	r23, 0x04	; 4
    2fc2:	e7 9f       	mul	r30, r23
    2fc4:	f0 01       	movw	r30, r0
    2fc6:	11 24       	eor	r1, r1
    2fc8:	63 70       	andi	r22, 0x03	; 3
    2fca:	e6 2b       	or	r30, r22
    2fcc:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2fce:	65 b1       	in	r22, 0x05	; 5
    2fd0:	6a 60       	ori	r22, 0x0A	; 10
    2fd2:	65 b9       	out	0x05, r22	; 5
    2fd4:	65 b1       	in	r22, 0x05	; 5
    2fd6:	65 7f       	andi	r22, 0xF5	; 245
    2fd8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2fda:	65 b1       	in	r22, 0x05	; 5
    2fdc:	6a 60       	ori	r22, 0x0A	; 10
    2fde:	65 b9       	out	0x05, r22	; 5
    2fe0:	65 b1       	in	r22, 0x05	; 5
    2fe2:	65 7f       	andi	r22, 0xF5	; 245
    2fe4:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 62));
    2fe6:	b9 01       	movw	r22, r18
    2fe8:	62 5c       	subi	r22, 0xC2	; 194
    2fea:	7f 4f       	sbci	r23, 0xFF	; 255
    2fec:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    2ff0:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    2ff4:	e6 0f       	add	r30, r22
    2ff6:	f7 1f       	adc	r31, r23
    2ff8:	e4 91       	lpm	r30, Z
    2ffa:	6b b1       	in	r22, 0x0b	; 11
    2ffc:	74 e0       	ldi	r23, 0x04	; 4
    2ffe:	e7 9f       	mul	r30, r23
    3000:	f0 01       	movw	r30, r0
    3002:	11 24       	eor	r1, r1
    3004:	63 70       	andi	r22, 0x03	; 3
    3006:	e6 2b       	or	r30, r22
    3008:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    300a:	65 b1       	in	r22, 0x05	; 5
    300c:	6a 60       	ori	r22, 0x0A	; 10
    300e:	65 b9       	out	0x05, r22	; 5
    3010:	65 b1       	in	r22, 0x05	; 5
    3012:	65 7f       	andi	r22, 0xF5	; 245
    3014:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3016:	65 b1       	in	r22, 0x05	; 5
    3018:	6a 60       	ori	r22, 0x0A	; 10
    301a:	65 b9       	out	0x05, r22	; 5
    301c:	65 b1       	in	r22, 0x05	; 5
    301e:	65 7f       	andi	r22, 0xF5	; 245
    3020:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 63));
    3022:	21 5c       	subi	r18, 0xC1	; 193
    3024:	3f 4f       	sbci	r19, 0xFF	; 255
    3026:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    302a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    302e:	e2 0f       	add	r30, r18
    3030:	f3 1f       	adc	r31, r19
    3032:	24 91       	lpm	r18, Z
    3034:	3b b1       	in	r19, 0x0b	; 11
    3036:	64 e0       	ldi	r22, 0x04	; 4
    3038:	26 9f       	mul	r18, r22
    303a:	f0 01       	movw	r30, r0
    303c:	11 24       	eor	r1, r1
    303e:	33 70       	andi	r19, 0x03	; 3
    3040:	e3 2b       	or	r30, r19
    3042:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3044:	25 b1       	in	r18, 0x05	; 5
    3046:	2a 60       	ori	r18, 0x0A	; 10
    3048:	25 b9       	out	0x05, r18	; 5
    304a:	25 b1       	in	r18, 0x05	; 5
    304c:	25 7f       	andi	r18, 0xF5	; 245
    304e:	25 b9       	out	0x05, r18	; 5

            // shift data into buffers
            HIGH_LAT;
    3050:	2a 9a       	sbi	0x05, 2	; 5
            PWCLK_GCLK;
    3052:	25 b1       	in	r18, 0x05	; 5
    3054:	2a 60       	ori	r18, 0x0A	; 10
    3056:	25 b9       	out	0x05, r18	; 5
    3058:	25 b1       	in	r18, 0x05	; 5
    305a:	25 7f       	andi	r18, 0xF5	; 245
    305c:	25 b9       	out	0x05, r18	; 5
            CLEAR_LAT;
    305e:	2a 98       	cbi	0x05, 2	; 5

#pragma endregion // MSB

            index = ((y & ~1) << 5) + (PANEL_BUFFERSIZE / 2); // advance index to next section
    3060:	9c 01       	movw	r18, r24
    3062:	38 5f       	subi	r19, 0xF8	; 248

#pragma region LSB
            // chip 0
            SET_COLOR(pgm_read_byte(buffer + index + 0));
    3064:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3068:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    306c:	e2 0f       	add	r30, r18
    306e:	f3 1f       	adc	r31, r19
    3070:	e4 91       	lpm	r30, Z
    3072:	6b b1       	in	r22, 0x0b	; 11
    3074:	74 e0       	ldi	r23, 0x04	; 4
    3076:	e7 9f       	mul	r30, r23
    3078:	f0 01       	movw	r30, r0
    307a:	11 24       	eor	r1, r1
    307c:	63 70       	andi	r22, 0x03	; 3
    307e:	e6 2b       	or	r30, r22
    3080:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3082:	65 b1       	in	r22, 0x05	; 5
    3084:	6a 60       	ori	r22, 0x0A	; 10
    3086:	65 b9       	out	0x05, r22	; 5
    3088:	65 b1       	in	r22, 0x05	; 5
    308a:	65 7f       	andi	r22, 0xF5	; 245
    308c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    308e:	65 b1       	in	r22, 0x05	; 5
    3090:	6a 60       	ori	r22, 0x0A	; 10
    3092:	65 b9       	out	0x05, r22	; 5
    3094:	65 b1       	in	r22, 0x05	; 5
    3096:	65 7f       	andi	r22, 0xF5	; 245
    3098:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 1));
    309a:	b9 01       	movw	r22, r18
    309c:	6f 5f       	subi	r22, 0xFF	; 255
    309e:	7f 4f       	sbci	r23, 0xFF	; 255
    30a0:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    30a4:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    30a8:	e6 0f       	add	r30, r22
    30aa:	f7 1f       	adc	r31, r23
    30ac:	e4 91       	lpm	r30, Z
    30ae:	6b b1       	in	r22, 0x0b	; 11
    30b0:	74 e0       	ldi	r23, 0x04	; 4
    30b2:	e7 9f       	mul	r30, r23
    30b4:	f0 01       	movw	r30, r0
    30b6:	11 24       	eor	r1, r1
    30b8:	63 70       	andi	r22, 0x03	; 3
    30ba:	e6 2b       	or	r30, r22
    30bc:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    30be:	65 b1       	in	r22, 0x05	; 5
    30c0:	6a 60       	ori	r22, 0x0A	; 10
    30c2:	65 b9       	out	0x05, r22	; 5
    30c4:	65 b1       	in	r22, 0x05	; 5
    30c6:	65 7f       	andi	r22, 0xF5	; 245
    30c8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    30ca:	65 b1       	in	r22, 0x05	; 5
    30cc:	6a 60       	ori	r22, 0x0A	; 10
    30ce:	65 b9       	out	0x05, r22	; 5
    30d0:	65 b1       	in	r22, 0x05	; 5
    30d2:	65 7f       	andi	r22, 0xF5	; 245
    30d4:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 2));
    30d6:	b9 01       	movw	r22, r18
    30d8:	6e 5f       	subi	r22, 0xFE	; 254
    30da:	7f 4f       	sbci	r23, 0xFF	; 255
    30dc:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    30e0:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    30e4:	e6 0f       	add	r30, r22
    30e6:	f7 1f       	adc	r31, r23
    30e8:	e4 91       	lpm	r30, Z
    30ea:	6b b1       	in	r22, 0x0b	; 11
    30ec:	74 e0       	ldi	r23, 0x04	; 4
    30ee:	e7 9f       	mul	r30, r23
    30f0:	f0 01       	movw	r30, r0
    30f2:	11 24       	eor	r1, r1
    30f4:	63 70       	andi	r22, 0x03	; 3
    30f6:	e6 2b       	or	r30, r22
    30f8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    30fa:	65 b1       	in	r22, 0x05	; 5
    30fc:	6a 60       	ori	r22, 0x0A	; 10
    30fe:	65 b9       	out	0x05, r22	; 5
    3100:	65 b1       	in	r22, 0x05	; 5
    3102:	65 7f       	andi	r22, 0xF5	; 245
    3104:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3106:	65 b1       	in	r22, 0x05	; 5
    3108:	6a 60       	ori	r22, 0x0A	; 10
    310a:	65 b9       	out	0x05, r22	; 5
    310c:	65 b1       	in	r22, 0x05	; 5
    310e:	65 7f       	andi	r22, 0xF5	; 245
    3110:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 3));
    3112:	b9 01       	movw	r22, r18
    3114:	6d 5f       	subi	r22, 0xFD	; 253
    3116:	7f 4f       	sbci	r23, 0xFF	; 255
    3118:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    311c:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3120:	e6 0f       	add	r30, r22
    3122:	f7 1f       	adc	r31, r23
    3124:	e4 91       	lpm	r30, Z
    3126:	6b b1       	in	r22, 0x0b	; 11
    3128:	74 e0       	ldi	r23, 0x04	; 4
    312a:	e7 9f       	mul	r30, r23
    312c:	f0 01       	movw	r30, r0
    312e:	11 24       	eor	r1, r1
    3130:	63 70       	andi	r22, 0x03	; 3
    3132:	e6 2b       	or	r30, r22
    3134:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3136:	65 b1       	in	r22, 0x05	; 5
    3138:	6a 60       	ori	r22, 0x0A	; 10
    313a:	65 b9       	out	0x05, r22	; 5
    313c:	65 b1       	in	r22, 0x05	; 5
    313e:	65 7f       	andi	r22, 0xF5	; 245
    3140:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3142:	65 b1       	in	r22, 0x05	; 5
    3144:	6a 60       	ori	r22, 0x0A	; 10
    3146:	65 b9       	out	0x05, r22	; 5
    3148:	65 b1       	in	r22, 0x05	; 5
    314a:	65 7f       	andi	r22, 0xF5	; 245
    314c:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 4));
    314e:	b9 01       	movw	r22, r18
    3150:	6c 5f       	subi	r22, 0xFC	; 252
    3152:	7f 4f       	sbci	r23, 0xFF	; 255
    3154:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3158:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    315c:	e6 0f       	add	r30, r22
    315e:	f7 1f       	adc	r31, r23
    3160:	e4 91       	lpm	r30, Z
    3162:	6b b1       	in	r22, 0x0b	; 11
    3164:	74 e0       	ldi	r23, 0x04	; 4
    3166:	e7 9f       	mul	r30, r23
    3168:	f0 01       	movw	r30, r0
    316a:	11 24       	eor	r1, r1
    316c:	63 70       	andi	r22, 0x03	; 3
    316e:	e6 2b       	or	r30, r22
    3170:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3172:	65 b1       	in	r22, 0x05	; 5
    3174:	6a 60       	ori	r22, 0x0A	; 10
    3176:	65 b9       	out	0x05, r22	; 5
    3178:	65 b1       	in	r22, 0x05	; 5
    317a:	65 7f       	andi	r22, 0xF5	; 245
    317c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    317e:	65 b1       	in	r22, 0x05	; 5
    3180:	6a 60       	ori	r22, 0x0A	; 10
    3182:	65 b9       	out	0x05, r22	; 5
    3184:	65 b1       	in	r22, 0x05	; 5
    3186:	65 7f       	andi	r22, 0xF5	; 245
    3188:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 5));
    318a:	b9 01       	movw	r22, r18
    318c:	6b 5f       	subi	r22, 0xFB	; 251
    318e:	7f 4f       	sbci	r23, 0xFF	; 255
    3190:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3194:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3198:	e6 0f       	add	r30, r22
    319a:	f7 1f       	adc	r31, r23
    319c:	e4 91       	lpm	r30, Z
    319e:	6b b1       	in	r22, 0x0b	; 11
    31a0:	74 e0       	ldi	r23, 0x04	; 4
    31a2:	e7 9f       	mul	r30, r23
    31a4:	f0 01       	movw	r30, r0
    31a6:	11 24       	eor	r1, r1
    31a8:	63 70       	andi	r22, 0x03	; 3
    31aa:	e6 2b       	or	r30, r22
    31ac:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    31ae:	65 b1       	in	r22, 0x05	; 5
    31b0:	6a 60       	ori	r22, 0x0A	; 10
    31b2:	65 b9       	out	0x05, r22	; 5
    31b4:	65 b1       	in	r22, 0x05	; 5
    31b6:	65 7f       	andi	r22, 0xF5	; 245
    31b8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    31ba:	65 b1       	in	r22, 0x05	; 5
    31bc:	6a 60       	ori	r22, 0x0A	; 10
    31be:	65 b9       	out	0x05, r22	; 5
    31c0:	65 b1       	in	r22, 0x05	; 5
    31c2:	65 7f       	andi	r22, 0xF5	; 245
    31c4:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 6));
    31c6:	b9 01       	movw	r22, r18
    31c8:	6a 5f       	subi	r22, 0xFA	; 250
    31ca:	7f 4f       	sbci	r23, 0xFF	; 255
    31cc:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    31d0:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    31d4:	e6 0f       	add	r30, r22
    31d6:	f7 1f       	adc	r31, r23
    31d8:	e4 91       	lpm	r30, Z
    31da:	6b b1       	in	r22, 0x0b	; 11
    31dc:	74 e0       	ldi	r23, 0x04	; 4
    31de:	e7 9f       	mul	r30, r23
    31e0:	f0 01       	movw	r30, r0
    31e2:	11 24       	eor	r1, r1
    31e4:	63 70       	andi	r22, 0x03	; 3
    31e6:	e6 2b       	or	r30, r22
    31e8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    31ea:	65 b1       	in	r22, 0x05	; 5
    31ec:	6a 60       	ori	r22, 0x0A	; 10
    31ee:	65 b9       	out	0x05, r22	; 5
    31f0:	65 b1       	in	r22, 0x05	; 5
    31f2:	65 7f       	andi	r22, 0xF5	; 245
    31f4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    31f6:	65 b1       	in	r22, 0x05	; 5
    31f8:	6a 60       	ori	r22, 0x0A	; 10
    31fa:	65 b9       	out	0x05, r22	; 5
    31fc:	65 b1       	in	r22, 0x05	; 5
    31fe:	65 7f       	andi	r22, 0xF5	; 245
    3200:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 7));
    3202:	b9 01       	movw	r22, r18
    3204:	69 5f       	subi	r22, 0xF9	; 249
    3206:	7f 4f       	sbci	r23, 0xFF	; 255
    3208:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    320c:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3210:	e6 0f       	add	r30, r22
    3212:	f7 1f       	adc	r31, r23
    3214:	e4 91       	lpm	r30, Z
    3216:	6b b1       	in	r22, 0x0b	; 11
    3218:	74 e0       	ldi	r23, 0x04	; 4
    321a:	e7 9f       	mul	r30, r23
    321c:	f0 01       	movw	r30, r0
    321e:	11 24       	eor	r1, r1
    3220:	63 70       	andi	r22, 0x03	; 3
    3222:	e6 2b       	or	r30, r22
    3224:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3226:	65 b1       	in	r22, 0x05	; 5
    3228:	6a 60       	ori	r22, 0x0A	; 10
    322a:	65 b9       	out	0x05, r22	; 5
    322c:	65 b1       	in	r22, 0x05	; 5
    322e:	65 7f       	andi	r22, 0xF5	; 245
    3230:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3232:	65 b1       	in	r22, 0x05	; 5
    3234:	6a 60       	ori	r22, 0x0A	; 10
    3236:	65 b9       	out	0x05, r22	; 5
    3238:	65 b1       	in	r22, 0x05	; 5
    323a:	65 7f       	andi	r22, 0xF5	; 245
    323c:	65 b9       	out	0x05, r22	; 5

            // chip 1
            SET_COLOR(pgm_read_byte(buffer + index + 8));
    323e:	b9 01       	movw	r22, r18
    3240:	68 5f       	subi	r22, 0xF8	; 248
    3242:	7f 4f       	sbci	r23, 0xFF	; 255
    3244:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3248:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    324c:	e6 0f       	add	r30, r22
    324e:	f7 1f       	adc	r31, r23
    3250:	e4 91       	lpm	r30, Z
    3252:	6b b1       	in	r22, 0x0b	; 11
    3254:	74 e0       	ldi	r23, 0x04	; 4
    3256:	e7 9f       	mul	r30, r23
    3258:	f0 01       	movw	r30, r0
    325a:	11 24       	eor	r1, r1
    325c:	63 70       	andi	r22, 0x03	; 3
    325e:	e6 2b       	or	r30, r22
    3260:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3262:	65 b1       	in	r22, 0x05	; 5
    3264:	6a 60       	ori	r22, 0x0A	; 10
    3266:	65 b9       	out	0x05, r22	; 5
    3268:	65 b1       	in	r22, 0x05	; 5
    326a:	65 7f       	andi	r22, 0xF5	; 245
    326c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    326e:	65 b1       	in	r22, 0x05	; 5
    3270:	6a 60       	ori	r22, 0x0A	; 10
    3272:	65 b9       	out	0x05, r22	; 5
    3274:	65 b1       	in	r22, 0x05	; 5
    3276:	65 7f       	andi	r22, 0xF5	; 245
    3278:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 9));
    327a:	b9 01       	movw	r22, r18
    327c:	67 5f       	subi	r22, 0xF7	; 247
    327e:	7f 4f       	sbci	r23, 0xFF	; 255
    3280:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3284:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3288:	e6 0f       	add	r30, r22
    328a:	f7 1f       	adc	r31, r23
    328c:	e4 91       	lpm	r30, Z
    328e:	6b b1       	in	r22, 0x0b	; 11
    3290:	74 e0       	ldi	r23, 0x04	; 4
    3292:	e7 9f       	mul	r30, r23
    3294:	f0 01       	movw	r30, r0
    3296:	11 24       	eor	r1, r1
    3298:	63 70       	andi	r22, 0x03	; 3
    329a:	e6 2b       	or	r30, r22
    329c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    329e:	65 b1       	in	r22, 0x05	; 5
    32a0:	6a 60       	ori	r22, 0x0A	; 10
    32a2:	65 b9       	out	0x05, r22	; 5
    32a4:	65 b1       	in	r22, 0x05	; 5
    32a6:	65 7f       	andi	r22, 0xF5	; 245
    32a8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    32aa:	65 b1       	in	r22, 0x05	; 5
    32ac:	6a 60       	ori	r22, 0x0A	; 10
    32ae:	65 b9       	out	0x05, r22	; 5
    32b0:	65 b1       	in	r22, 0x05	; 5
    32b2:	65 7f       	andi	r22, 0xF5	; 245
    32b4:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 10));
    32b6:	b9 01       	movw	r22, r18
    32b8:	66 5f       	subi	r22, 0xF6	; 246
    32ba:	7f 4f       	sbci	r23, 0xFF	; 255
    32bc:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    32c0:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    32c4:	e6 0f       	add	r30, r22
    32c6:	f7 1f       	adc	r31, r23
    32c8:	e4 91       	lpm	r30, Z
    32ca:	6b b1       	in	r22, 0x0b	; 11
    32cc:	74 e0       	ldi	r23, 0x04	; 4
    32ce:	e7 9f       	mul	r30, r23
    32d0:	f0 01       	movw	r30, r0
    32d2:	11 24       	eor	r1, r1
    32d4:	63 70       	andi	r22, 0x03	; 3
    32d6:	e6 2b       	or	r30, r22
    32d8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    32da:	65 b1       	in	r22, 0x05	; 5
    32dc:	6a 60       	ori	r22, 0x0A	; 10
    32de:	65 b9       	out	0x05, r22	; 5
    32e0:	65 b1       	in	r22, 0x05	; 5
    32e2:	65 7f       	andi	r22, 0xF5	; 245
    32e4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    32e6:	65 b1       	in	r22, 0x05	; 5
    32e8:	6a 60       	ori	r22, 0x0A	; 10
    32ea:	65 b9       	out	0x05, r22	; 5
    32ec:	65 b1       	in	r22, 0x05	; 5
    32ee:	65 7f       	andi	r22, 0xF5	; 245
    32f0:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 11));
    32f2:	b9 01       	movw	r22, r18
    32f4:	65 5f       	subi	r22, 0xF5	; 245
    32f6:	7f 4f       	sbci	r23, 0xFF	; 255
    32f8:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    32fc:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3300:	e6 0f       	add	r30, r22
    3302:	f7 1f       	adc	r31, r23
    3304:	e4 91       	lpm	r30, Z
    3306:	6b b1       	in	r22, 0x0b	; 11
    3308:	74 e0       	ldi	r23, 0x04	; 4
    330a:	e7 9f       	mul	r30, r23
    330c:	f0 01       	movw	r30, r0
    330e:	11 24       	eor	r1, r1
    3310:	63 70       	andi	r22, 0x03	; 3
    3312:	e6 2b       	or	r30, r22
    3314:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3316:	65 b1       	in	r22, 0x05	; 5
    3318:	6a 60       	ori	r22, 0x0A	; 10
    331a:	65 b9       	out	0x05, r22	; 5
    331c:	65 b1       	in	r22, 0x05	; 5
    331e:	65 7f       	andi	r22, 0xF5	; 245
    3320:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3322:	65 b1       	in	r22, 0x05	; 5
    3324:	6a 60       	ori	r22, 0x0A	; 10
    3326:	65 b9       	out	0x05, r22	; 5
    3328:	65 b1       	in	r22, 0x05	; 5
    332a:	65 7f       	andi	r22, 0xF5	; 245
    332c:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 12));
    332e:	b9 01       	movw	r22, r18
    3330:	64 5f       	subi	r22, 0xF4	; 244
    3332:	7f 4f       	sbci	r23, 0xFF	; 255
    3334:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3338:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    333c:	e6 0f       	add	r30, r22
    333e:	f7 1f       	adc	r31, r23
    3340:	e4 91       	lpm	r30, Z
    3342:	6b b1       	in	r22, 0x0b	; 11
    3344:	74 e0       	ldi	r23, 0x04	; 4
    3346:	e7 9f       	mul	r30, r23
    3348:	f0 01       	movw	r30, r0
    334a:	11 24       	eor	r1, r1
    334c:	63 70       	andi	r22, 0x03	; 3
    334e:	e6 2b       	or	r30, r22
    3350:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3352:	65 b1       	in	r22, 0x05	; 5
    3354:	6a 60       	ori	r22, 0x0A	; 10
    3356:	65 b9       	out	0x05, r22	; 5
    3358:	65 b1       	in	r22, 0x05	; 5
    335a:	65 7f       	andi	r22, 0xF5	; 245
    335c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    335e:	65 b1       	in	r22, 0x05	; 5
    3360:	6a 60       	ori	r22, 0x0A	; 10
    3362:	65 b9       	out	0x05, r22	; 5
    3364:	65 b1       	in	r22, 0x05	; 5
    3366:	65 7f       	andi	r22, 0xF5	; 245
    3368:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 13));
    336a:	b9 01       	movw	r22, r18
    336c:	63 5f       	subi	r22, 0xF3	; 243
    336e:	7f 4f       	sbci	r23, 0xFF	; 255
    3370:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3374:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3378:	e6 0f       	add	r30, r22
    337a:	f7 1f       	adc	r31, r23
    337c:	e4 91       	lpm	r30, Z
    337e:	6b b1       	in	r22, 0x0b	; 11
    3380:	74 e0       	ldi	r23, 0x04	; 4
    3382:	e7 9f       	mul	r30, r23
    3384:	f0 01       	movw	r30, r0
    3386:	11 24       	eor	r1, r1
    3388:	63 70       	andi	r22, 0x03	; 3
    338a:	e6 2b       	or	r30, r22
    338c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    338e:	65 b1       	in	r22, 0x05	; 5
    3390:	6a 60       	ori	r22, 0x0A	; 10
    3392:	65 b9       	out	0x05, r22	; 5
    3394:	65 b1       	in	r22, 0x05	; 5
    3396:	65 7f       	andi	r22, 0xF5	; 245
    3398:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    339a:	65 b1       	in	r22, 0x05	; 5
    339c:	6a 60       	ori	r22, 0x0A	; 10
    339e:	65 b9       	out	0x05, r22	; 5
    33a0:	65 b1       	in	r22, 0x05	; 5
    33a2:	65 7f       	andi	r22, 0xF5	; 245
    33a4:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 14));
    33a6:	b9 01       	movw	r22, r18
    33a8:	62 5f       	subi	r22, 0xF2	; 242
    33aa:	7f 4f       	sbci	r23, 0xFF	; 255
    33ac:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    33b0:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    33b4:	e6 0f       	add	r30, r22
    33b6:	f7 1f       	adc	r31, r23
    33b8:	e4 91       	lpm	r30, Z
    33ba:	6b b1       	in	r22, 0x0b	; 11
    33bc:	74 e0       	ldi	r23, 0x04	; 4
    33be:	e7 9f       	mul	r30, r23
    33c0:	f0 01       	movw	r30, r0
    33c2:	11 24       	eor	r1, r1
    33c4:	63 70       	andi	r22, 0x03	; 3
    33c6:	e6 2b       	or	r30, r22
    33c8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    33ca:	65 b1       	in	r22, 0x05	; 5
    33cc:	6a 60       	ori	r22, 0x0A	; 10
    33ce:	65 b9       	out	0x05, r22	; 5
    33d0:	65 b1       	in	r22, 0x05	; 5
    33d2:	65 7f       	andi	r22, 0xF5	; 245
    33d4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    33d6:	65 b1       	in	r22, 0x05	; 5
    33d8:	6a 60       	ori	r22, 0x0A	; 10
    33da:	65 b9       	out	0x05, r22	; 5
    33dc:	65 b1       	in	r22, 0x05	; 5
    33de:	65 7f       	andi	r22, 0xF5	; 245
    33e0:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 15));
    33e2:	b9 01       	movw	r22, r18
    33e4:	61 5f       	subi	r22, 0xF1	; 241
    33e6:	7f 4f       	sbci	r23, 0xFF	; 255
    33e8:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    33ec:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    33f0:	e6 0f       	add	r30, r22
    33f2:	f7 1f       	adc	r31, r23
    33f4:	e4 91       	lpm	r30, Z
    33f6:	6b b1       	in	r22, 0x0b	; 11
    33f8:	74 e0       	ldi	r23, 0x04	; 4
    33fa:	e7 9f       	mul	r30, r23
    33fc:	f0 01       	movw	r30, r0
    33fe:	11 24       	eor	r1, r1
    3400:	63 70       	andi	r22, 0x03	; 3
    3402:	e6 2b       	or	r30, r22
    3404:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3406:	65 b1       	in	r22, 0x05	; 5
    3408:	6a 60       	ori	r22, 0x0A	; 10
    340a:	65 b9       	out	0x05, r22	; 5
    340c:	65 b1       	in	r22, 0x05	; 5
    340e:	65 7f       	andi	r22, 0xF5	; 245
    3410:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3412:	65 b1       	in	r22, 0x05	; 5
    3414:	6a 60       	ori	r22, 0x0A	; 10
    3416:	65 b9       	out	0x05, r22	; 5
    3418:	65 b1       	in	r22, 0x05	; 5
    341a:	65 7f       	andi	r22, 0xF5	; 245
    341c:	65 b9       	out	0x05, r22	; 5

            // chip 2
            SET_COLOR(pgm_read_byte(buffer + index + 16));
    341e:	b9 01       	movw	r22, r18
    3420:	60 5f       	subi	r22, 0xF0	; 240
    3422:	7f 4f       	sbci	r23, 0xFF	; 255
    3424:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3428:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    342c:	e6 0f       	add	r30, r22
    342e:	f7 1f       	adc	r31, r23
    3430:	e4 91       	lpm	r30, Z
    3432:	6b b1       	in	r22, 0x0b	; 11
    3434:	74 e0       	ldi	r23, 0x04	; 4
    3436:	e7 9f       	mul	r30, r23
    3438:	f0 01       	movw	r30, r0
    343a:	11 24       	eor	r1, r1
    343c:	63 70       	andi	r22, 0x03	; 3
    343e:	e6 2b       	or	r30, r22
    3440:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3442:	65 b1       	in	r22, 0x05	; 5
    3444:	6a 60       	ori	r22, 0x0A	; 10
    3446:	65 b9       	out	0x05, r22	; 5
    3448:	65 b1       	in	r22, 0x05	; 5
    344a:	65 7f       	andi	r22, 0xF5	; 245
    344c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    344e:	65 b1       	in	r22, 0x05	; 5
    3450:	6a 60       	ori	r22, 0x0A	; 10
    3452:	65 b9       	out	0x05, r22	; 5
    3454:	65 b1       	in	r22, 0x05	; 5
    3456:	65 7f       	andi	r22, 0xF5	; 245
    3458:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 17));
    345a:	b9 01       	movw	r22, r18
    345c:	6f 5e       	subi	r22, 0xEF	; 239
    345e:	7f 4f       	sbci	r23, 0xFF	; 255
    3460:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3464:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3468:	e6 0f       	add	r30, r22
    346a:	f7 1f       	adc	r31, r23
    346c:	e4 91       	lpm	r30, Z
    346e:	6b b1       	in	r22, 0x0b	; 11
    3470:	74 e0       	ldi	r23, 0x04	; 4
    3472:	e7 9f       	mul	r30, r23
    3474:	f0 01       	movw	r30, r0
    3476:	11 24       	eor	r1, r1
    3478:	63 70       	andi	r22, 0x03	; 3
    347a:	e6 2b       	or	r30, r22
    347c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    347e:	65 b1       	in	r22, 0x05	; 5
    3480:	6a 60       	ori	r22, 0x0A	; 10
    3482:	65 b9       	out	0x05, r22	; 5
    3484:	65 b1       	in	r22, 0x05	; 5
    3486:	65 7f       	andi	r22, 0xF5	; 245
    3488:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    348a:	65 b1       	in	r22, 0x05	; 5
    348c:	6a 60       	ori	r22, 0x0A	; 10
    348e:	65 b9       	out	0x05, r22	; 5
    3490:	65 b1       	in	r22, 0x05	; 5
    3492:	65 7f       	andi	r22, 0xF5	; 245
    3494:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 18));
    3496:	b9 01       	movw	r22, r18
    3498:	6e 5e       	subi	r22, 0xEE	; 238
    349a:	7f 4f       	sbci	r23, 0xFF	; 255
    349c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    34a0:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    34a4:	e6 0f       	add	r30, r22
    34a6:	f7 1f       	adc	r31, r23
    34a8:	e4 91       	lpm	r30, Z
    34aa:	6b b1       	in	r22, 0x0b	; 11
    34ac:	74 e0       	ldi	r23, 0x04	; 4
    34ae:	e7 9f       	mul	r30, r23
    34b0:	f0 01       	movw	r30, r0
    34b2:	11 24       	eor	r1, r1
    34b4:	63 70       	andi	r22, 0x03	; 3
    34b6:	e6 2b       	or	r30, r22
    34b8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    34ba:	65 b1       	in	r22, 0x05	; 5
    34bc:	6a 60       	ori	r22, 0x0A	; 10
    34be:	65 b9       	out	0x05, r22	; 5
    34c0:	65 b1       	in	r22, 0x05	; 5
    34c2:	65 7f       	andi	r22, 0xF5	; 245
    34c4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    34c6:	65 b1       	in	r22, 0x05	; 5
    34c8:	6a 60       	ori	r22, 0x0A	; 10
    34ca:	65 b9       	out	0x05, r22	; 5
    34cc:	65 b1       	in	r22, 0x05	; 5
    34ce:	65 7f       	andi	r22, 0xF5	; 245
    34d0:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 19));
    34d2:	b9 01       	movw	r22, r18
    34d4:	6d 5e       	subi	r22, 0xED	; 237
    34d6:	7f 4f       	sbci	r23, 0xFF	; 255
    34d8:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    34dc:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    34e0:	e6 0f       	add	r30, r22
    34e2:	f7 1f       	adc	r31, r23
    34e4:	e4 91       	lpm	r30, Z
    34e6:	6b b1       	in	r22, 0x0b	; 11
    34e8:	74 e0       	ldi	r23, 0x04	; 4
    34ea:	e7 9f       	mul	r30, r23
    34ec:	f0 01       	movw	r30, r0
    34ee:	11 24       	eor	r1, r1
    34f0:	63 70       	andi	r22, 0x03	; 3
    34f2:	e6 2b       	or	r30, r22
    34f4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    34f6:	65 b1       	in	r22, 0x05	; 5
    34f8:	6a 60       	ori	r22, 0x0A	; 10
    34fa:	65 b9       	out	0x05, r22	; 5
    34fc:	65 b1       	in	r22, 0x05	; 5
    34fe:	65 7f       	andi	r22, 0xF5	; 245
    3500:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3502:	65 b1       	in	r22, 0x05	; 5
    3504:	6a 60       	ori	r22, 0x0A	; 10
    3506:	65 b9       	out	0x05, r22	; 5
    3508:	65 b1       	in	r22, 0x05	; 5
    350a:	65 7f       	andi	r22, 0xF5	; 245
    350c:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 20));
    350e:	b9 01       	movw	r22, r18
    3510:	6c 5e       	subi	r22, 0xEC	; 236
    3512:	7f 4f       	sbci	r23, 0xFF	; 255
    3514:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3518:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    351c:	e6 0f       	add	r30, r22
    351e:	f7 1f       	adc	r31, r23
    3520:	e4 91       	lpm	r30, Z
    3522:	6b b1       	in	r22, 0x0b	; 11
    3524:	74 e0       	ldi	r23, 0x04	; 4
    3526:	e7 9f       	mul	r30, r23
    3528:	f0 01       	movw	r30, r0
    352a:	11 24       	eor	r1, r1
    352c:	63 70       	andi	r22, 0x03	; 3
    352e:	e6 2b       	or	r30, r22
    3530:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3532:	65 b1       	in	r22, 0x05	; 5
    3534:	6a 60       	ori	r22, 0x0A	; 10
    3536:	65 b9       	out	0x05, r22	; 5
    3538:	65 b1       	in	r22, 0x05	; 5
    353a:	65 7f       	andi	r22, 0xF5	; 245
    353c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    353e:	65 b1       	in	r22, 0x05	; 5
    3540:	6a 60       	ori	r22, 0x0A	; 10
    3542:	65 b9       	out	0x05, r22	; 5
    3544:	65 b1       	in	r22, 0x05	; 5
    3546:	65 7f       	andi	r22, 0xF5	; 245
    3548:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 21));
    354a:	b9 01       	movw	r22, r18
    354c:	6b 5e       	subi	r22, 0xEB	; 235
    354e:	7f 4f       	sbci	r23, 0xFF	; 255
    3550:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3554:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3558:	e6 0f       	add	r30, r22
    355a:	f7 1f       	adc	r31, r23
    355c:	e4 91       	lpm	r30, Z
    355e:	6b b1       	in	r22, 0x0b	; 11
    3560:	74 e0       	ldi	r23, 0x04	; 4
    3562:	e7 9f       	mul	r30, r23
    3564:	f0 01       	movw	r30, r0
    3566:	11 24       	eor	r1, r1
    3568:	63 70       	andi	r22, 0x03	; 3
    356a:	e6 2b       	or	r30, r22
    356c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    356e:	65 b1       	in	r22, 0x05	; 5
    3570:	6a 60       	ori	r22, 0x0A	; 10
    3572:	65 b9       	out	0x05, r22	; 5
    3574:	65 b1       	in	r22, 0x05	; 5
    3576:	65 7f       	andi	r22, 0xF5	; 245
    3578:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    357a:	65 b1       	in	r22, 0x05	; 5
    357c:	6a 60       	ori	r22, 0x0A	; 10
    357e:	65 b9       	out	0x05, r22	; 5
    3580:	65 b1       	in	r22, 0x05	; 5
    3582:	65 7f       	andi	r22, 0xF5	; 245
    3584:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 22));
    3586:	b9 01       	movw	r22, r18
    3588:	6a 5e       	subi	r22, 0xEA	; 234
    358a:	7f 4f       	sbci	r23, 0xFF	; 255
    358c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3590:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3594:	e6 0f       	add	r30, r22
    3596:	f7 1f       	adc	r31, r23
    3598:	e4 91       	lpm	r30, Z
    359a:	6b b1       	in	r22, 0x0b	; 11
    359c:	74 e0       	ldi	r23, 0x04	; 4
    359e:	e7 9f       	mul	r30, r23
    35a0:	f0 01       	movw	r30, r0
    35a2:	11 24       	eor	r1, r1
    35a4:	63 70       	andi	r22, 0x03	; 3
    35a6:	e6 2b       	or	r30, r22
    35a8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    35aa:	65 b1       	in	r22, 0x05	; 5
    35ac:	6a 60       	ori	r22, 0x0A	; 10
    35ae:	65 b9       	out	0x05, r22	; 5
    35b0:	65 b1       	in	r22, 0x05	; 5
    35b2:	65 7f       	andi	r22, 0xF5	; 245
    35b4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    35b6:	65 b1       	in	r22, 0x05	; 5
    35b8:	6a 60       	ori	r22, 0x0A	; 10
    35ba:	65 b9       	out	0x05, r22	; 5
    35bc:	65 b1       	in	r22, 0x05	; 5
    35be:	65 7f       	andi	r22, 0xF5	; 245
    35c0:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 23));
    35c2:	b9 01       	movw	r22, r18
    35c4:	69 5e       	subi	r22, 0xE9	; 233
    35c6:	7f 4f       	sbci	r23, 0xFF	; 255
    35c8:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    35cc:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    35d0:	e6 0f       	add	r30, r22
    35d2:	f7 1f       	adc	r31, r23
    35d4:	e4 91       	lpm	r30, Z
    35d6:	6b b1       	in	r22, 0x0b	; 11
    35d8:	74 e0       	ldi	r23, 0x04	; 4
    35da:	e7 9f       	mul	r30, r23
    35dc:	f0 01       	movw	r30, r0
    35de:	11 24       	eor	r1, r1
    35e0:	63 70       	andi	r22, 0x03	; 3
    35e2:	e6 2b       	or	r30, r22
    35e4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    35e6:	65 b1       	in	r22, 0x05	; 5
    35e8:	6a 60       	ori	r22, 0x0A	; 10
    35ea:	65 b9       	out	0x05, r22	; 5
    35ec:	65 b1       	in	r22, 0x05	; 5
    35ee:	65 7f       	andi	r22, 0xF5	; 245
    35f0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    35f2:	65 b1       	in	r22, 0x05	; 5
    35f4:	6a 60       	ori	r22, 0x0A	; 10
    35f6:	65 b9       	out	0x05, r22	; 5
    35f8:	65 b1       	in	r22, 0x05	; 5
    35fa:	65 7f       	andi	r22, 0xF5	; 245
    35fc:	65 b9       	out	0x05, r22	; 5

            // chip 3
            SET_COLOR(pgm_read_byte(buffer + index + 24));
    35fe:	b9 01       	movw	r22, r18
    3600:	68 5e       	subi	r22, 0xE8	; 232
    3602:	7f 4f       	sbci	r23, 0xFF	; 255
    3604:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3608:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    360c:	e6 0f       	add	r30, r22
    360e:	f7 1f       	adc	r31, r23
    3610:	e4 91       	lpm	r30, Z
    3612:	6b b1       	in	r22, 0x0b	; 11
    3614:	74 e0       	ldi	r23, 0x04	; 4
    3616:	e7 9f       	mul	r30, r23
    3618:	f0 01       	movw	r30, r0
    361a:	11 24       	eor	r1, r1
    361c:	63 70       	andi	r22, 0x03	; 3
    361e:	e6 2b       	or	r30, r22
    3620:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3622:	65 b1       	in	r22, 0x05	; 5
    3624:	6a 60       	ori	r22, 0x0A	; 10
    3626:	65 b9       	out	0x05, r22	; 5
    3628:	65 b1       	in	r22, 0x05	; 5
    362a:	65 7f       	andi	r22, 0xF5	; 245
    362c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    362e:	65 b1       	in	r22, 0x05	; 5
    3630:	6a 60       	ori	r22, 0x0A	; 10
    3632:	65 b9       	out	0x05, r22	; 5
    3634:	65 b1       	in	r22, 0x05	; 5
    3636:	65 7f       	andi	r22, 0xF5	; 245
    3638:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 25));
    363a:	b9 01       	movw	r22, r18
    363c:	67 5e       	subi	r22, 0xE7	; 231
    363e:	7f 4f       	sbci	r23, 0xFF	; 255
    3640:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3644:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3648:	e6 0f       	add	r30, r22
    364a:	f7 1f       	adc	r31, r23
    364c:	e4 91       	lpm	r30, Z
    364e:	6b b1       	in	r22, 0x0b	; 11
    3650:	74 e0       	ldi	r23, 0x04	; 4
    3652:	e7 9f       	mul	r30, r23
    3654:	f0 01       	movw	r30, r0
    3656:	11 24       	eor	r1, r1
    3658:	63 70       	andi	r22, 0x03	; 3
    365a:	e6 2b       	or	r30, r22
    365c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    365e:	65 b1       	in	r22, 0x05	; 5
    3660:	6a 60       	ori	r22, 0x0A	; 10
    3662:	65 b9       	out	0x05, r22	; 5
    3664:	65 b1       	in	r22, 0x05	; 5
    3666:	65 7f       	andi	r22, 0xF5	; 245
    3668:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    366a:	65 b1       	in	r22, 0x05	; 5
    366c:	6a 60       	ori	r22, 0x0A	; 10
    366e:	65 b9       	out	0x05, r22	; 5
    3670:	65 b1       	in	r22, 0x05	; 5
    3672:	65 7f       	andi	r22, 0xF5	; 245
    3674:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 26));
    3676:	b9 01       	movw	r22, r18
    3678:	66 5e       	subi	r22, 0xE6	; 230
    367a:	7f 4f       	sbci	r23, 0xFF	; 255
    367c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3680:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3684:	e6 0f       	add	r30, r22
    3686:	f7 1f       	adc	r31, r23
    3688:	e4 91       	lpm	r30, Z
    368a:	6b b1       	in	r22, 0x0b	; 11
    368c:	74 e0       	ldi	r23, 0x04	; 4
    368e:	e7 9f       	mul	r30, r23
    3690:	f0 01       	movw	r30, r0
    3692:	11 24       	eor	r1, r1
    3694:	63 70       	andi	r22, 0x03	; 3
    3696:	e6 2b       	or	r30, r22
    3698:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    369a:	65 b1       	in	r22, 0x05	; 5
    369c:	6a 60       	ori	r22, 0x0A	; 10
    369e:	65 b9       	out	0x05, r22	; 5
    36a0:	65 b1       	in	r22, 0x05	; 5
    36a2:	65 7f       	andi	r22, 0xF5	; 245
    36a4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    36a6:	65 b1       	in	r22, 0x05	; 5
    36a8:	6a 60       	ori	r22, 0x0A	; 10
    36aa:	65 b9       	out	0x05, r22	; 5
    36ac:	65 b1       	in	r22, 0x05	; 5
    36ae:	65 7f       	andi	r22, 0xF5	; 245
    36b0:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 27));
    36b2:	b9 01       	movw	r22, r18
    36b4:	65 5e       	subi	r22, 0xE5	; 229
    36b6:	7f 4f       	sbci	r23, 0xFF	; 255
    36b8:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    36bc:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    36c0:	e6 0f       	add	r30, r22
    36c2:	f7 1f       	adc	r31, r23
    36c4:	e4 91       	lpm	r30, Z
    36c6:	6b b1       	in	r22, 0x0b	; 11
    36c8:	74 e0       	ldi	r23, 0x04	; 4
    36ca:	e7 9f       	mul	r30, r23
    36cc:	f0 01       	movw	r30, r0
    36ce:	11 24       	eor	r1, r1
    36d0:	63 70       	andi	r22, 0x03	; 3
    36d2:	e6 2b       	or	r30, r22
    36d4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    36d6:	65 b1       	in	r22, 0x05	; 5
    36d8:	6a 60       	ori	r22, 0x0A	; 10
    36da:	65 b9       	out	0x05, r22	; 5
    36dc:	65 b1       	in	r22, 0x05	; 5
    36de:	65 7f       	andi	r22, 0xF5	; 245
    36e0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    36e2:	65 b1       	in	r22, 0x05	; 5
    36e4:	6a 60       	ori	r22, 0x0A	; 10
    36e6:	65 b9       	out	0x05, r22	; 5
    36e8:	65 b1       	in	r22, 0x05	; 5
    36ea:	65 7f       	andi	r22, 0xF5	; 245
    36ec:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 28));
    36ee:	b9 01       	movw	r22, r18
    36f0:	64 5e       	subi	r22, 0xE4	; 228
    36f2:	7f 4f       	sbci	r23, 0xFF	; 255
    36f4:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    36f8:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    36fc:	e6 0f       	add	r30, r22
    36fe:	f7 1f       	adc	r31, r23
    3700:	e4 91       	lpm	r30, Z
    3702:	6b b1       	in	r22, 0x0b	; 11
    3704:	74 e0       	ldi	r23, 0x04	; 4
    3706:	e7 9f       	mul	r30, r23
    3708:	f0 01       	movw	r30, r0
    370a:	11 24       	eor	r1, r1
    370c:	63 70       	andi	r22, 0x03	; 3
    370e:	e6 2b       	or	r30, r22
    3710:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3712:	65 b1       	in	r22, 0x05	; 5
    3714:	6a 60       	ori	r22, 0x0A	; 10
    3716:	65 b9       	out	0x05, r22	; 5
    3718:	65 b1       	in	r22, 0x05	; 5
    371a:	65 7f       	andi	r22, 0xF5	; 245
    371c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    371e:	65 b1       	in	r22, 0x05	; 5
    3720:	6a 60       	ori	r22, 0x0A	; 10
    3722:	65 b9       	out	0x05, r22	; 5
    3724:	65 b1       	in	r22, 0x05	; 5
    3726:	65 7f       	andi	r22, 0xF5	; 245
    3728:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 29));
    372a:	b9 01       	movw	r22, r18
    372c:	63 5e       	subi	r22, 0xE3	; 227
    372e:	7f 4f       	sbci	r23, 0xFF	; 255
    3730:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3734:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3738:	e6 0f       	add	r30, r22
    373a:	f7 1f       	adc	r31, r23
    373c:	e4 91       	lpm	r30, Z
    373e:	6b b1       	in	r22, 0x0b	; 11
    3740:	74 e0       	ldi	r23, 0x04	; 4
    3742:	e7 9f       	mul	r30, r23
    3744:	f0 01       	movw	r30, r0
    3746:	11 24       	eor	r1, r1
    3748:	63 70       	andi	r22, 0x03	; 3
    374a:	e6 2b       	or	r30, r22
    374c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    374e:	65 b1       	in	r22, 0x05	; 5
    3750:	6a 60       	ori	r22, 0x0A	; 10
    3752:	65 b9       	out	0x05, r22	; 5
    3754:	65 b1       	in	r22, 0x05	; 5
    3756:	65 7f       	andi	r22, 0xF5	; 245
    3758:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    375a:	65 b1       	in	r22, 0x05	; 5
    375c:	6a 60       	ori	r22, 0x0A	; 10
    375e:	65 b9       	out	0x05, r22	; 5
    3760:	65 b1       	in	r22, 0x05	; 5
    3762:	65 7f       	andi	r22, 0xF5	; 245
    3764:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 30));
    3766:	b9 01       	movw	r22, r18
    3768:	62 5e       	subi	r22, 0xE2	; 226
    376a:	7f 4f       	sbci	r23, 0xFF	; 255
    376c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3770:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3774:	e6 0f       	add	r30, r22
    3776:	f7 1f       	adc	r31, r23
    3778:	e4 91       	lpm	r30, Z
    377a:	6b b1       	in	r22, 0x0b	; 11
    377c:	74 e0       	ldi	r23, 0x04	; 4
    377e:	e7 9f       	mul	r30, r23
    3780:	f0 01       	movw	r30, r0
    3782:	11 24       	eor	r1, r1
    3784:	63 70       	andi	r22, 0x03	; 3
    3786:	e6 2b       	or	r30, r22
    3788:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    378a:	65 b1       	in	r22, 0x05	; 5
    378c:	6a 60       	ori	r22, 0x0A	; 10
    378e:	65 b9       	out	0x05, r22	; 5
    3790:	65 b1       	in	r22, 0x05	; 5
    3792:	65 7f       	andi	r22, 0xF5	; 245
    3794:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3796:	65 b1       	in	r22, 0x05	; 5
    3798:	6a 60       	ori	r22, 0x0A	; 10
    379a:	65 b9       	out	0x05, r22	; 5
    379c:	65 b1       	in	r22, 0x05	; 5
    379e:	65 7f       	andi	r22, 0xF5	; 245
    37a0:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 31));
    37a2:	b9 01       	movw	r22, r18
    37a4:	61 5e       	subi	r22, 0xE1	; 225
    37a6:	7f 4f       	sbci	r23, 0xFF	; 255
    37a8:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    37ac:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    37b0:	e6 0f       	add	r30, r22
    37b2:	f7 1f       	adc	r31, r23
    37b4:	e4 91       	lpm	r30, Z
    37b6:	6b b1       	in	r22, 0x0b	; 11
    37b8:	74 e0       	ldi	r23, 0x04	; 4
    37ba:	e7 9f       	mul	r30, r23
    37bc:	f0 01       	movw	r30, r0
    37be:	11 24       	eor	r1, r1
    37c0:	63 70       	andi	r22, 0x03	; 3
    37c2:	e6 2b       	or	r30, r22
    37c4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    37c6:	65 b1       	in	r22, 0x05	; 5
    37c8:	6a 60       	ori	r22, 0x0A	; 10
    37ca:	65 b9       	out	0x05, r22	; 5
    37cc:	65 b1       	in	r22, 0x05	; 5
    37ce:	65 7f       	andi	r22, 0xF5	; 245
    37d0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    37d2:	65 b1       	in	r22, 0x05	; 5
    37d4:	6a 60       	ori	r22, 0x0A	; 10
    37d6:	65 b9       	out	0x05, r22	; 5
    37d8:	65 b1       	in	r22, 0x05	; 5
    37da:	65 7f       	andi	r22, 0xF5	; 245
    37dc:	65 b9       	out	0x05, r22	; 5

            // chip 4
            SET_COLOR(pgm_read_byte(buffer + index + 32));
    37de:	b9 01       	movw	r22, r18
    37e0:	60 5e       	subi	r22, 0xE0	; 224
    37e2:	7f 4f       	sbci	r23, 0xFF	; 255
    37e4:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    37e8:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    37ec:	e6 0f       	add	r30, r22
    37ee:	f7 1f       	adc	r31, r23
    37f0:	e4 91       	lpm	r30, Z
    37f2:	6b b1       	in	r22, 0x0b	; 11
    37f4:	74 e0       	ldi	r23, 0x04	; 4
    37f6:	e7 9f       	mul	r30, r23
    37f8:	f0 01       	movw	r30, r0
    37fa:	11 24       	eor	r1, r1
    37fc:	63 70       	andi	r22, 0x03	; 3
    37fe:	e6 2b       	or	r30, r22
    3800:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3802:	65 b1       	in	r22, 0x05	; 5
    3804:	6a 60       	ori	r22, 0x0A	; 10
    3806:	65 b9       	out	0x05, r22	; 5
    3808:	65 b1       	in	r22, 0x05	; 5
    380a:	65 7f       	andi	r22, 0xF5	; 245
    380c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    380e:	65 b1       	in	r22, 0x05	; 5
    3810:	6a 60       	ori	r22, 0x0A	; 10
    3812:	65 b9       	out	0x05, r22	; 5
    3814:	65 b1       	in	r22, 0x05	; 5
    3816:	65 7f       	andi	r22, 0xF5	; 245
    3818:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 33));
    381a:	b9 01       	movw	r22, r18
    381c:	6f 5d       	subi	r22, 0xDF	; 223
    381e:	7f 4f       	sbci	r23, 0xFF	; 255
    3820:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3824:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3828:	e6 0f       	add	r30, r22
    382a:	f7 1f       	adc	r31, r23
    382c:	e4 91       	lpm	r30, Z
    382e:	6b b1       	in	r22, 0x0b	; 11
    3830:	74 e0       	ldi	r23, 0x04	; 4
    3832:	e7 9f       	mul	r30, r23
    3834:	f0 01       	movw	r30, r0
    3836:	11 24       	eor	r1, r1
    3838:	63 70       	andi	r22, 0x03	; 3
    383a:	e6 2b       	or	r30, r22
    383c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    383e:	65 b1       	in	r22, 0x05	; 5
    3840:	6a 60       	ori	r22, 0x0A	; 10
    3842:	65 b9       	out	0x05, r22	; 5
    3844:	65 b1       	in	r22, 0x05	; 5
    3846:	65 7f       	andi	r22, 0xF5	; 245
    3848:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    384a:	65 b1       	in	r22, 0x05	; 5
    384c:	6a 60       	ori	r22, 0x0A	; 10
    384e:	65 b9       	out	0x05, r22	; 5
    3850:	65 b1       	in	r22, 0x05	; 5
    3852:	65 7f       	andi	r22, 0xF5	; 245
    3854:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 34));
    3856:	b9 01       	movw	r22, r18
    3858:	6e 5d       	subi	r22, 0xDE	; 222
    385a:	7f 4f       	sbci	r23, 0xFF	; 255
    385c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3860:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3864:	e6 0f       	add	r30, r22
    3866:	f7 1f       	adc	r31, r23
    3868:	e4 91       	lpm	r30, Z
    386a:	6b b1       	in	r22, 0x0b	; 11
    386c:	74 e0       	ldi	r23, 0x04	; 4
    386e:	e7 9f       	mul	r30, r23
    3870:	f0 01       	movw	r30, r0
    3872:	11 24       	eor	r1, r1
    3874:	63 70       	andi	r22, 0x03	; 3
    3876:	e6 2b       	or	r30, r22
    3878:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    387a:	65 b1       	in	r22, 0x05	; 5
    387c:	6a 60       	ori	r22, 0x0A	; 10
    387e:	65 b9       	out	0x05, r22	; 5
    3880:	65 b1       	in	r22, 0x05	; 5
    3882:	65 7f       	andi	r22, 0xF5	; 245
    3884:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3886:	65 b1       	in	r22, 0x05	; 5
    3888:	6a 60       	ori	r22, 0x0A	; 10
    388a:	65 b9       	out	0x05, r22	; 5
    388c:	65 b1       	in	r22, 0x05	; 5
    388e:	65 7f       	andi	r22, 0xF5	; 245
    3890:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 35));
    3892:	b9 01       	movw	r22, r18
    3894:	6d 5d       	subi	r22, 0xDD	; 221
    3896:	7f 4f       	sbci	r23, 0xFF	; 255
    3898:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    389c:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    38a0:	e6 0f       	add	r30, r22
    38a2:	f7 1f       	adc	r31, r23
    38a4:	e4 91       	lpm	r30, Z
    38a6:	6b b1       	in	r22, 0x0b	; 11
    38a8:	74 e0       	ldi	r23, 0x04	; 4
    38aa:	e7 9f       	mul	r30, r23
    38ac:	f0 01       	movw	r30, r0
    38ae:	11 24       	eor	r1, r1
    38b0:	63 70       	andi	r22, 0x03	; 3
    38b2:	e6 2b       	or	r30, r22
    38b4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    38b6:	65 b1       	in	r22, 0x05	; 5
    38b8:	6a 60       	ori	r22, 0x0A	; 10
    38ba:	65 b9       	out	0x05, r22	; 5
    38bc:	65 b1       	in	r22, 0x05	; 5
    38be:	65 7f       	andi	r22, 0xF5	; 245
    38c0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    38c2:	65 b1       	in	r22, 0x05	; 5
    38c4:	6a 60       	ori	r22, 0x0A	; 10
    38c6:	65 b9       	out	0x05, r22	; 5
    38c8:	65 b1       	in	r22, 0x05	; 5
    38ca:	65 7f       	andi	r22, 0xF5	; 245
    38cc:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 36));
    38ce:	b9 01       	movw	r22, r18
    38d0:	6c 5d       	subi	r22, 0xDC	; 220
    38d2:	7f 4f       	sbci	r23, 0xFF	; 255
    38d4:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    38d8:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    38dc:	e6 0f       	add	r30, r22
    38de:	f7 1f       	adc	r31, r23
    38e0:	e4 91       	lpm	r30, Z
    38e2:	6b b1       	in	r22, 0x0b	; 11
    38e4:	74 e0       	ldi	r23, 0x04	; 4
    38e6:	e7 9f       	mul	r30, r23
    38e8:	f0 01       	movw	r30, r0
    38ea:	11 24       	eor	r1, r1
    38ec:	63 70       	andi	r22, 0x03	; 3
    38ee:	e6 2b       	or	r30, r22
    38f0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    38f2:	65 b1       	in	r22, 0x05	; 5
    38f4:	6a 60       	ori	r22, 0x0A	; 10
    38f6:	65 b9       	out	0x05, r22	; 5
    38f8:	65 b1       	in	r22, 0x05	; 5
    38fa:	65 7f       	andi	r22, 0xF5	; 245
    38fc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    38fe:	65 b1       	in	r22, 0x05	; 5
    3900:	6a 60       	ori	r22, 0x0A	; 10
    3902:	65 b9       	out	0x05, r22	; 5
    3904:	65 b1       	in	r22, 0x05	; 5
    3906:	65 7f       	andi	r22, 0xF5	; 245
    3908:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 37));
    390a:	b9 01       	movw	r22, r18
    390c:	6b 5d       	subi	r22, 0xDB	; 219
    390e:	7f 4f       	sbci	r23, 0xFF	; 255
    3910:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3914:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3918:	e6 0f       	add	r30, r22
    391a:	f7 1f       	adc	r31, r23
    391c:	e4 91       	lpm	r30, Z
    391e:	6b b1       	in	r22, 0x0b	; 11
    3920:	74 e0       	ldi	r23, 0x04	; 4
    3922:	e7 9f       	mul	r30, r23
    3924:	f0 01       	movw	r30, r0
    3926:	11 24       	eor	r1, r1
    3928:	63 70       	andi	r22, 0x03	; 3
    392a:	e6 2b       	or	r30, r22
    392c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    392e:	65 b1       	in	r22, 0x05	; 5
    3930:	6a 60       	ori	r22, 0x0A	; 10
    3932:	65 b9       	out	0x05, r22	; 5
    3934:	65 b1       	in	r22, 0x05	; 5
    3936:	65 7f       	andi	r22, 0xF5	; 245
    3938:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    393a:	65 b1       	in	r22, 0x05	; 5
    393c:	6a 60       	ori	r22, 0x0A	; 10
    393e:	65 b9       	out	0x05, r22	; 5
    3940:	65 b1       	in	r22, 0x05	; 5
    3942:	65 7f       	andi	r22, 0xF5	; 245
    3944:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 38));
    3946:	b9 01       	movw	r22, r18
    3948:	6a 5d       	subi	r22, 0xDA	; 218
    394a:	7f 4f       	sbci	r23, 0xFF	; 255
    394c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3950:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3954:	e6 0f       	add	r30, r22
    3956:	f7 1f       	adc	r31, r23
    3958:	e4 91       	lpm	r30, Z
    395a:	6b b1       	in	r22, 0x0b	; 11
    395c:	74 e0       	ldi	r23, 0x04	; 4
    395e:	e7 9f       	mul	r30, r23
    3960:	f0 01       	movw	r30, r0
    3962:	11 24       	eor	r1, r1
    3964:	63 70       	andi	r22, 0x03	; 3
    3966:	e6 2b       	or	r30, r22
    3968:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    396a:	65 b1       	in	r22, 0x05	; 5
    396c:	6a 60       	ori	r22, 0x0A	; 10
    396e:	65 b9       	out	0x05, r22	; 5
    3970:	65 b1       	in	r22, 0x05	; 5
    3972:	65 7f       	andi	r22, 0xF5	; 245
    3974:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3976:	65 b1       	in	r22, 0x05	; 5
    3978:	6a 60       	ori	r22, 0x0A	; 10
    397a:	65 b9       	out	0x05, r22	; 5
    397c:	65 b1       	in	r22, 0x05	; 5
    397e:	65 7f       	andi	r22, 0xF5	; 245
    3980:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 39));
    3982:	b9 01       	movw	r22, r18
    3984:	69 5d       	subi	r22, 0xD9	; 217
    3986:	7f 4f       	sbci	r23, 0xFF	; 255
    3988:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    398c:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3990:	e6 0f       	add	r30, r22
    3992:	f7 1f       	adc	r31, r23
    3994:	e4 91       	lpm	r30, Z
    3996:	6b b1       	in	r22, 0x0b	; 11
    3998:	74 e0       	ldi	r23, 0x04	; 4
    399a:	e7 9f       	mul	r30, r23
    399c:	f0 01       	movw	r30, r0
    399e:	11 24       	eor	r1, r1
    39a0:	63 70       	andi	r22, 0x03	; 3
    39a2:	e6 2b       	or	r30, r22
    39a4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    39a6:	65 b1       	in	r22, 0x05	; 5
    39a8:	6a 60       	ori	r22, 0x0A	; 10
    39aa:	65 b9       	out	0x05, r22	; 5
    39ac:	65 b1       	in	r22, 0x05	; 5
    39ae:	65 7f       	andi	r22, 0xF5	; 245
    39b0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    39b2:	65 b1       	in	r22, 0x05	; 5
    39b4:	6a 60       	ori	r22, 0x0A	; 10
    39b6:	65 b9       	out	0x05, r22	; 5
    39b8:	65 b1       	in	r22, 0x05	; 5
    39ba:	65 7f       	andi	r22, 0xF5	; 245
    39bc:	65 b9       	out	0x05, r22	; 5

            // chip 5
            SET_COLOR(pgm_read_byte(buffer + index + 40));
    39be:	b9 01       	movw	r22, r18
    39c0:	68 5d       	subi	r22, 0xD8	; 216
    39c2:	7f 4f       	sbci	r23, 0xFF	; 255
    39c4:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    39c8:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    39cc:	e6 0f       	add	r30, r22
    39ce:	f7 1f       	adc	r31, r23
    39d0:	e4 91       	lpm	r30, Z
    39d2:	6b b1       	in	r22, 0x0b	; 11
    39d4:	74 e0       	ldi	r23, 0x04	; 4
    39d6:	e7 9f       	mul	r30, r23
    39d8:	f0 01       	movw	r30, r0
    39da:	11 24       	eor	r1, r1
    39dc:	63 70       	andi	r22, 0x03	; 3
    39de:	e6 2b       	or	r30, r22
    39e0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    39e2:	65 b1       	in	r22, 0x05	; 5
    39e4:	6a 60       	ori	r22, 0x0A	; 10
    39e6:	65 b9       	out	0x05, r22	; 5
    39e8:	65 b1       	in	r22, 0x05	; 5
    39ea:	65 7f       	andi	r22, 0xF5	; 245
    39ec:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    39ee:	65 b1       	in	r22, 0x05	; 5
    39f0:	6a 60       	ori	r22, 0x0A	; 10
    39f2:	65 b9       	out	0x05, r22	; 5
    39f4:	65 b1       	in	r22, 0x05	; 5
    39f6:	65 7f       	andi	r22, 0xF5	; 245
    39f8:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 41));
    39fa:	b9 01       	movw	r22, r18
    39fc:	67 5d       	subi	r22, 0xD7	; 215
    39fe:	7f 4f       	sbci	r23, 0xFF	; 255
    3a00:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3a04:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3a08:	e6 0f       	add	r30, r22
    3a0a:	f7 1f       	adc	r31, r23
    3a0c:	e4 91       	lpm	r30, Z
    3a0e:	6b b1       	in	r22, 0x0b	; 11
    3a10:	74 e0       	ldi	r23, 0x04	; 4
    3a12:	e7 9f       	mul	r30, r23
    3a14:	f0 01       	movw	r30, r0
    3a16:	11 24       	eor	r1, r1
    3a18:	63 70       	andi	r22, 0x03	; 3
    3a1a:	e6 2b       	or	r30, r22
    3a1c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3a1e:	65 b1       	in	r22, 0x05	; 5
    3a20:	6a 60       	ori	r22, 0x0A	; 10
    3a22:	65 b9       	out	0x05, r22	; 5
    3a24:	65 b1       	in	r22, 0x05	; 5
    3a26:	65 7f       	andi	r22, 0xF5	; 245
    3a28:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3a2a:	65 b1       	in	r22, 0x05	; 5
    3a2c:	6a 60       	ori	r22, 0x0A	; 10
    3a2e:	65 b9       	out	0x05, r22	; 5
    3a30:	65 b1       	in	r22, 0x05	; 5
    3a32:	65 7f       	andi	r22, 0xF5	; 245
    3a34:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 42));
    3a36:	b9 01       	movw	r22, r18
    3a38:	66 5d       	subi	r22, 0xD6	; 214
    3a3a:	7f 4f       	sbci	r23, 0xFF	; 255
    3a3c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3a40:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3a44:	e6 0f       	add	r30, r22
    3a46:	f7 1f       	adc	r31, r23
    3a48:	e4 91       	lpm	r30, Z
    3a4a:	6b b1       	in	r22, 0x0b	; 11
    3a4c:	74 e0       	ldi	r23, 0x04	; 4
    3a4e:	e7 9f       	mul	r30, r23
    3a50:	f0 01       	movw	r30, r0
    3a52:	11 24       	eor	r1, r1
    3a54:	63 70       	andi	r22, 0x03	; 3
    3a56:	e6 2b       	or	r30, r22
    3a58:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3a5a:	65 b1       	in	r22, 0x05	; 5
    3a5c:	6a 60       	ori	r22, 0x0A	; 10
    3a5e:	65 b9       	out	0x05, r22	; 5
    3a60:	65 b1       	in	r22, 0x05	; 5
    3a62:	65 7f       	andi	r22, 0xF5	; 245
    3a64:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3a66:	65 b1       	in	r22, 0x05	; 5
    3a68:	6a 60       	ori	r22, 0x0A	; 10
    3a6a:	65 b9       	out	0x05, r22	; 5
    3a6c:	65 b1       	in	r22, 0x05	; 5
    3a6e:	65 7f       	andi	r22, 0xF5	; 245
    3a70:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 43));
    3a72:	b9 01       	movw	r22, r18
    3a74:	65 5d       	subi	r22, 0xD5	; 213
    3a76:	7f 4f       	sbci	r23, 0xFF	; 255
    3a78:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3a7c:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3a80:	e6 0f       	add	r30, r22
    3a82:	f7 1f       	adc	r31, r23
    3a84:	e4 91       	lpm	r30, Z
    3a86:	6b b1       	in	r22, 0x0b	; 11
    3a88:	74 e0       	ldi	r23, 0x04	; 4
    3a8a:	e7 9f       	mul	r30, r23
    3a8c:	f0 01       	movw	r30, r0
    3a8e:	11 24       	eor	r1, r1
    3a90:	63 70       	andi	r22, 0x03	; 3
    3a92:	e6 2b       	or	r30, r22
    3a94:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3a96:	65 b1       	in	r22, 0x05	; 5
    3a98:	6a 60       	ori	r22, 0x0A	; 10
    3a9a:	65 b9       	out	0x05, r22	; 5
    3a9c:	65 b1       	in	r22, 0x05	; 5
    3a9e:	65 7f       	andi	r22, 0xF5	; 245
    3aa0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3aa2:	65 b1       	in	r22, 0x05	; 5
    3aa4:	6a 60       	ori	r22, 0x0A	; 10
    3aa6:	65 b9       	out	0x05, r22	; 5
    3aa8:	65 b1       	in	r22, 0x05	; 5
    3aaa:	65 7f       	andi	r22, 0xF5	; 245
    3aac:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 44));
    3aae:	b9 01       	movw	r22, r18
    3ab0:	64 5d       	subi	r22, 0xD4	; 212
    3ab2:	7f 4f       	sbci	r23, 0xFF	; 255
    3ab4:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3ab8:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3abc:	e6 0f       	add	r30, r22
    3abe:	f7 1f       	adc	r31, r23
    3ac0:	e4 91       	lpm	r30, Z
    3ac2:	6b b1       	in	r22, 0x0b	; 11
    3ac4:	74 e0       	ldi	r23, 0x04	; 4
    3ac6:	e7 9f       	mul	r30, r23
    3ac8:	f0 01       	movw	r30, r0
    3aca:	11 24       	eor	r1, r1
    3acc:	63 70       	andi	r22, 0x03	; 3
    3ace:	e6 2b       	or	r30, r22
    3ad0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3ad2:	65 b1       	in	r22, 0x05	; 5
    3ad4:	6a 60       	ori	r22, 0x0A	; 10
    3ad6:	65 b9       	out	0x05, r22	; 5
    3ad8:	65 b1       	in	r22, 0x05	; 5
    3ada:	65 7f       	andi	r22, 0xF5	; 245
    3adc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3ade:	65 b1       	in	r22, 0x05	; 5
    3ae0:	6a 60       	ori	r22, 0x0A	; 10
    3ae2:	65 b9       	out	0x05, r22	; 5
    3ae4:	65 b1       	in	r22, 0x05	; 5
    3ae6:	65 7f       	andi	r22, 0xF5	; 245
    3ae8:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 45));
    3aea:	b9 01       	movw	r22, r18
    3aec:	63 5d       	subi	r22, 0xD3	; 211
    3aee:	7f 4f       	sbci	r23, 0xFF	; 255
    3af0:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3af4:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3af8:	e6 0f       	add	r30, r22
    3afa:	f7 1f       	adc	r31, r23
    3afc:	e4 91       	lpm	r30, Z
    3afe:	6b b1       	in	r22, 0x0b	; 11
    3b00:	74 e0       	ldi	r23, 0x04	; 4
    3b02:	e7 9f       	mul	r30, r23
    3b04:	f0 01       	movw	r30, r0
    3b06:	11 24       	eor	r1, r1
    3b08:	63 70       	andi	r22, 0x03	; 3
    3b0a:	e6 2b       	or	r30, r22
    3b0c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3b0e:	65 b1       	in	r22, 0x05	; 5
    3b10:	6a 60       	ori	r22, 0x0A	; 10
    3b12:	65 b9       	out	0x05, r22	; 5
    3b14:	65 b1       	in	r22, 0x05	; 5
    3b16:	65 7f       	andi	r22, 0xF5	; 245
    3b18:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3b1a:	65 b1       	in	r22, 0x05	; 5
    3b1c:	6a 60       	ori	r22, 0x0A	; 10
    3b1e:	65 b9       	out	0x05, r22	; 5
    3b20:	65 b1       	in	r22, 0x05	; 5
    3b22:	65 7f       	andi	r22, 0xF5	; 245
    3b24:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 46));
    3b26:	b9 01       	movw	r22, r18
    3b28:	62 5d       	subi	r22, 0xD2	; 210
    3b2a:	7f 4f       	sbci	r23, 0xFF	; 255
    3b2c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3b30:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3b34:	e6 0f       	add	r30, r22
    3b36:	f7 1f       	adc	r31, r23
    3b38:	e4 91       	lpm	r30, Z
    3b3a:	6b b1       	in	r22, 0x0b	; 11
    3b3c:	74 e0       	ldi	r23, 0x04	; 4
    3b3e:	e7 9f       	mul	r30, r23
    3b40:	f0 01       	movw	r30, r0
    3b42:	11 24       	eor	r1, r1
    3b44:	63 70       	andi	r22, 0x03	; 3
    3b46:	e6 2b       	or	r30, r22
    3b48:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3b4a:	65 b1       	in	r22, 0x05	; 5
    3b4c:	6a 60       	ori	r22, 0x0A	; 10
    3b4e:	65 b9       	out	0x05, r22	; 5
    3b50:	65 b1       	in	r22, 0x05	; 5
    3b52:	65 7f       	andi	r22, 0xF5	; 245
    3b54:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3b56:	65 b1       	in	r22, 0x05	; 5
    3b58:	6a 60       	ori	r22, 0x0A	; 10
    3b5a:	65 b9       	out	0x05, r22	; 5
    3b5c:	65 b1       	in	r22, 0x05	; 5
    3b5e:	65 7f       	andi	r22, 0xF5	; 245
    3b60:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 47));
    3b62:	b9 01       	movw	r22, r18
    3b64:	61 5d       	subi	r22, 0xD1	; 209
    3b66:	7f 4f       	sbci	r23, 0xFF	; 255
    3b68:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3b6c:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3b70:	e6 0f       	add	r30, r22
    3b72:	f7 1f       	adc	r31, r23
    3b74:	e4 91       	lpm	r30, Z
    3b76:	6b b1       	in	r22, 0x0b	; 11
    3b78:	74 e0       	ldi	r23, 0x04	; 4
    3b7a:	e7 9f       	mul	r30, r23
    3b7c:	f0 01       	movw	r30, r0
    3b7e:	11 24       	eor	r1, r1
    3b80:	63 70       	andi	r22, 0x03	; 3
    3b82:	e6 2b       	or	r30, r22
    3b84:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3b86:	65 b1       	in	r22, 0x05	; 5
    3b88:	6a 60       	ori	r22, 0x0A	; 10
    3b8a:	65 b9       	out	0x05, r22	; 5
    3b8c:	65 b1       	in	r22, 0x05	; 5
    3b8e:	65 7f       	andi	r22, 0xF5	; 245
    3b90:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3b92:	65 b1       	in	r22, 0x05	; 5
    3b94:	6a 60       	ori	r22, 0x0A	; 10
    3b96:	65 b9       	out	0x05, r22	; 5
    3b98:	65 b1       	in	r22, 0x05	; 5
    3b9a:	65 7f       	andi	r22, 0xF5	; 245
    3b9c:	65 b9       	out	0x05, r22	; 5

            // chip 6
            SET_COLOR(pgm_read_byte(buffer + index + 48));
    3b9e:	b9 01       	movw	r22, r18
    3ba0:	60 5d       	subi	r22, 0xD0	; 208
    3ba2:	7f 4f       	sbci	r23, 0xFF	; 255
    3ba4:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3ba8:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3bac:	e6 0f       	add	r30, r22
    3bae:	f7 1f       	adc	r31, r23
    3bb0:	e4 91       	lpm	r30, Z
    3bb2:	6b b1       	in	r22, 0x0b	; 11
    3bb4:	74 e0       	ldi	r23, 0x04	; 4
    3bb6:	e7 9f       	mul	r30, r23
    3bb8:	f0 01       	movw	r30, r0
    3bba:	11 24       	eor	r1, r1
    3bbc:	63 70       	andi	r22, 0x03	; 3
    3bbe:	e6 2b       	or	r30, r22
    3bc0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3bc2:	65 b1       	in	r22, 0x05	; 5
    3bc4:	6a 60       	ori	r22, 0x0A	; 10
    3bc6:	65 b9       	out	0x05, r22	; 5
    3bc8:	65 b1       	in	r22, 0x05	; 5
    3bca:	65 7f       	andi	r22, 0xF5	; 245
    3bcc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3bce:	65 b1       	in	r22, 0x05	; 5
    3bd0:	6a 60       	ori	r22, 0x0A	; 10
    3bd2:	65 b9       	out	0x05, r22	; 5
    3bd4:	65 b1       	in	r22, 0x05	; 5
    3bd6:	65 7f       	andi	r22, 0xF5	; 245
    3bd8:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 49));
    3bda:	b9 01       	movw	r22, r18
    3bdc:	6f 5c       	subi	r22, 0xCF	; 207
    3bde:	7f 4f       	sbci	r23, 0xFF	; 255
    3be0:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3be4:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3be8:	e6 0f       	add	r30, r22
    3bea:	f7 1f       	adc	r31, r23
    3bec:	e4 91       	lpm	r30, Z
    3bee:	6b b1       	in	r22, 0x0b	; 11
    3bf0:	74 e0       	ldi	r23, 0x04	; 4
    3bf2:	e7 9f       	mul	r30, r23
    3bf4:	f0 01       	movw	r30, r0
    3bf6:	11 24       	eor	r1, r1
    3bf8:	63 70       	andi	r22, 0x03	; 3
    3bfa:	e6 2b       	or	r30, r22
    3bfc:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3bfe:	65 b1       	in	r22, 0x05	; 5
    3c00:	6a 60       	ori	r22, 0x0A	; 10
    3c02:	65 b9       	out	0x05, r22	; 5
    3c04:	65 b1       	in	r22, 0x05	; 5
    3c06:	65 7f       	andi	r22, 0xF5	; 245
    3c08:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3c0a:	65 b1       	in	r22, 0x05	; 5
    3c0c:	6a 60       	ori	r22, 0x0A	; 10
    3c0e:	65 b9       	out	0x05, r22	; 5
    3c10:	65 b1       	in	r22, 0x05	; 5
    3c12:	65 7f       	andi	r22, 0xF5	; 245
    3c14:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 50));
    3c16:	b9 01       	movw	r22, r18
    3c18:	6e 5c       	subi	r22, 0xCE	; 206
    3c1a:	7f 4f       	sbci	r23, 0xFF	; 255
    3c1c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3c20:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3c24:	e6 0f       	add	r30, r22
    3c26:	f7 1f       	adc	r31, r23
    3c28:	e4 91       	lpm	r30, Z
    3c2a:	6b b1       	in	r22, 0x0b	; 11
    3c2c:	74 e0       	ldi	r23, 0x04	; 4
    3c2e:	e7 9f       	mul	r30, r23
    3c30:	f0 01       	movw	r30, r0
    3c32:	11 24       	eor	r1, r1
    3c34:	63 70       	andi	r22, 0x03	; 3
    3c36:	e6 2b       	or	r30, r22
    3c38:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3c3a:	65 b1       	in	r22, 0x05	; 5
    3c3c:	6a 60       	ori	r22, 0x0A	; 10
    3c3e:	65 b9       	out	0x05, r22	; 5
    3c40:	65 b1       	in	r22, 0x05	; 5
    3c42:	65 7f       	andi	r22, 0xF5	; 245
    3c44:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3c46:	65 b1       	in	r22, 0x05	; 5
    3c48:	6a 60       	ori	r22, 0x0A	; 10
    3c4a:	65 b9       	out	0x05, r22	; 5
    3c4c:	65 b1       	in	r22, 0x05	; 5
    3c4e:	65 7f       	andi	r22, 0xF5	; 245
    3c50:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 51));
    3c52:	b9 01       	movw	r22, r18
    3c54:	6d 5c       	subi	r22, 0xCD	; 205
    3c56:	7f 4f       	sbci	r23, 0xFF	; 255
    3c58:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3c5c:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3c60:	e6 0f       	add	r30, r22
    3c62:	f7 1f       	adc	r31, r23
    3c64:	e4 91       	lpm	r30, Z
    3c66:	6b b1       	in	r22, 0x0b	; 11
    3c68:	74 e0       	ldi	r23, 0x04	; 4
    3c6a:	e7 9f       	mul	r30, r23
    3c6c:	f0 01       	movw	r30, r0
    3c6e:	11 24       	eor	r1, r1
    3c70:	63 70       	andi	r22, 0x03	; 3
    3c72:	e6 2b       	or	r30, r22
    3c74:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3c76:	65 b1       	in	r22, 0x05	; 5
    3c78:	6a 60       	ori	r22, 0x0A	; 10
    3c7a:	65 b9       	out	0x05, r22	; 5
    3c7c:	65 b1       	in	r22, 0x05	; 5
    3c7e:	65 7f       	andi	r22, 0xF5	; 245
    3c80:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3c82:	65 b1       	in	r22, 0x05	; 5
    3c84:	6a 60       	ori	r22, 0x0A	; 10
    3c86:	65 b9       	out	0x05, r22	; 5
    3c88:	65 b1       	in	r22, 0x05	; 5
    3c8a:	65 7f       	andi	r22, 0xF5	; 245
    3c8c:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 52));
    3c8e:	b9 01       	movw	r22, r18
    3c90:	6c 5c       	subi	r22, 0xCC	; 204
    3c92:	7f 4f       	sbci	r23, 0xFF	; 255
    3c94:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3c98:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3c9c:	e6 0f       	add	r30, r22
    3c9e:	f7 1f       	adc	r31, r23
    3ca0:	e4 91       	lpm	r30, Z
    3ca2:	6b b1       	in	r22, 0x0b	; 11
    3ca4:	74 e0       	ldi	r23, 0x04	; 4
    3ca6:	e7 9f       	mul	r30, r23
    3ca8:	f0 01       	movw	r30, r0
    3caa:	11 24       	eor	r1, r1
    3cac:	63 70       	andi	r22, 0x03	; 3
    3cae:	e6 2b       	or	r30, r22
    3cb0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3cb2:	65 b1       	in	r22, 0x05	; 5
    3cb4:	6a 60       	ori	r22, 0x0A	; 10
    3cb6:	65 b9       	out	0x05, r22	; 5
    3cb8:	65 b1       	in	r22, 0x05	; 5
    3cba:	65 7f       	andi	r22, 0xF5	; 245
    3cbc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3cbe:	65 b1       	in	r22, 0x05	; 5
    3cc0:	6a 60       	ori	r22, 0x0A	; 10
    3cc2:	65 b9       	out	0x05, r22	; 5
    3cc4:	65 b1       	in	r22, 0x05	; 5
    3cc6:	65 7f       	andi	r22, 0xF5	; 245
    3cc8:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 53));
    3cca:	b9 01       	movw	r22, r18
    3ccc:	6b 5c       	subi	r22, 0xCB	; 203
    3cce:	7f 4f       	sbci	r23, 0xFF	; 255
    3cd0:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3cd4:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3cd8:	e6 0f       	add	r30, r22
    3cda:	f7 1f       	adc	r31, r23
    3cdc:	e4 91       	lpm	r30, Z
    3cde:	6b b1       	in	r22, 0x0b	; 11
    3ce0:	74 e0       	ldi	r23, 0x04	; 4
    3ce2:	e7 9f       	mul	r30, r23
    3ce4:	f0 01       	movw	r30, r0
    3ce6:	11 24       	eor	r1, r1
    3ce8:	63 70       	andi	r22, 0x03	; 3
    3cea:	e6 2b       	or	r30, r22
    3cec:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3cee:	65 b1       	in	r22, 0x05	; 5
    3cf0:	6a 60       	ori	r22, 0x0A	; 10
    3cf2:	65 b9       	out	0x05, r22	; 5
    3cf4:	65 b1       	in	r22, 0x05	; 5
    3cf6:	65 7f       	andi	r22, 0xF5	; 245
    3cf8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3cfa:	65 b1       	in	r22, 0x05	; 5
    3cfc:	6a 60       	ori	r22, 0x0A	; 10
    3cfe:	65 b9       	out	0x05, r22	; 5
    3d00:	65 b1       	in	r22, 0x05	; 5
    3d02:	65 7f       	andi	r22, 0xF5	; 245
    3d04:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 54));
    3d06:	b9 01       	movw	r22, r18
    3d08:	6a 5c       	subi	r22, 0xCA	; 202
    3d0a:	7f 4f       	sbci	r23, 0xFF	; 255
    3d0c:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3d10:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3d14:	e6 0f       	add	r30, r22
    3d16:	f7 1f       	adc	r31, r23
    3d18:	e4 91       	lpm	r30, Z
    3d1a:	6b b1       	in	r22, 0x0b	; 11
    3d1c:	74 e0       	ldi	r23, 0x04	; 4
    3d1e:	e7 9f       	mul	r30, r23
    3d20:	f0 01       	movw	r30, r0
    3d22:	11 24       	eor	r1, r1
    3d24:	63 70       	andi	r22, 0x03	; 3
    3d26:	e6 2b       	or	r30, r22
    3d28:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3d2a:	65 b1       	in	r22, 0x05	; 5
    3d2c:	6a 60       	ori	r22, 0x0A	; 10
    3d2e:	65 b9       	out	0x05, r22	; 5
    3d30:	65 b1       	in	r22, 0x05	; 5
    3d32:	65 7f       	andi	r22, 0xF5	; 245
    3d34:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3d36:	65 b1       	in	r22, 0x05	; 5
    3d38:	6a 60       	ori	r22, 0x0A	; 10
    3d3a:	65 b9       	out	0x05, r22	; 5
    3d3c:	65 b1       	in	r22, 0x05	; 5
    3d3e:	65 7f       	andi	r22, 0xF5	; 245
    3d40:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 55));
    3d42:	b9 01       	movw	r22, r18
    3d44:	69 5c       	subi	r22, 0xC9	; 201
    3d46:	7f 4f       	sbci	r23, 0xFF	; 255
    3d48:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3d4c:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3d50:	e6 0f       	add	r30, r22
    3d52:	f7 1f       	adc	r31, r23
    3d54:	e4 91       	lpm	r30, Z
    3d56:	6b b1       	in	r22, 0x0b	; 11
    3d58:	74 e0       	ldi	r23, 0x04	; 4
    3d5a:	e7 9f       	mul	r30, r23
    3d5c:	f0 01       	movw	r30, r0
    3d5e:	11 24       	eor	r1, r1
    3d60:	63 70       	andi	r22, 0x03	; 3
    3d62:	e6 2b       	or	r30, r22
    3d64:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3d66:	65 b1       	in	r22, 0x05	; 5
    3d68:	6a 60       	ori	r22, 0x0A	; 10
    3d6a:	65 b9       	out	0x05, r22	; 5
    3d6c:	65 b1       	in	r22, 0x05	; 5
    3d6e:	65 7f       	andi	r22, 0xF5	; 245
    3d70:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3d72:	65 b1       	in	r22, 0x05	; 5
    3d74:	6a 60       	ori	r22, 0x0A	; 10
    3d76:	65 b9       	out	0x05, r22	; 5
    3d78:	65 b1       	in	r22, 0x05	; 5
    3d7a:	65 7f       	andi	r22, 0xF5	; 245
    3d7c:	65 b9       	out	0x05, r22	; 5

            // chip 7
            SET_COLOR(pgm_read_byte(buffer + index + 56));
    3d7e:	b9 01       	movw	r22, r18
    3d80:	68 5c       	subi	r22, 0xC8	; 200
    3d82:	7f 4f       	sbci	r23, 0xFF	; 255
    3d84:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3d88:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3d8c:	e6 0f       	add	r30, r22
    3d8e:	f7 1f       	adc	r31, r23
    3d90:	e4 91       	lpm	r30, Z
    3d92:	6b b1       	in	r22, 0x0b	; 11
    3d94:	74 e0       	ldi	r23, 0x04	; 4
    3d96:	e7 9f       	mul	r30, r23
    3d98:	f0 01       	movw	r30, r0
    3d9a:	11 24       	eor	r1, r1
    3d9c:	63 70       	andi	r22, 0x03	; 3
    3d9e:	e6 2b       	or	r30, r22
    3da0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3da2:	65 b1       	in	r22, 0x05	; 5
    3da4:	6a 60       	ori	r22, 0x0A	; 10
    3da6:	65 b9       	out	0x05, r22	; 5
    3da8:	65 b1       	in	r22, 0x05	; 5
    3daa:	65 7f       	andi	r22, 0xF5	; 245
    3dac:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3dae:	65 b1       	in	r22, 0x05	; 5
    3db0:	6a 60       	ori	r22, 0x0A	; 10
    3db2:	65 b9       	out	0x05, r22	; 5
    3db4:	65 b1       	in	r22, 0x05	; 5
    3db6:	65 7f       	andi	r22, 0xF5	; 245
    3db8:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 57));
    3dba:	b9 01       	movw	r22, r18
    3dbc:	67 5c       	subi	r22, 0xC7	; 199
    3dbe:	7f 4f       	sbci	r23, 0xFF	; 255
    3dc0:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3dc4:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3dc8:	e6 0f       	add	r30, r22
    3dca:	f7 1f       	adc	r31, r23
    3dcc:	e4 91       	lpm	r30, Z
    3dce:	6b b1       	in	r22, 0x0b	; 11
    3dd0:	74 e0       	ldi	r23, 0x04	; 4
    3dd2:	e7 9f       	mul	r30, r23
    3dd4:	f0 01       	movw	r30, r0
    3dd6:	11 24       	eor	r1, r1
    3dd8:	63 70       	andi	r22, 0x03	; 3
    3dda:	e6 2b       	or	r30, r22
    3ddc:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3dde:	65 b1       	in	r22, 0x05	; 5
    3de0:	6a 60       	ori	r22, 0x0A	; 10
    3de2:	65 b9       	out	0x05, r22	; 5
    3de4:	65 b1       	in	r22, 0x05	; 5
    3de6:	65 7f       	andi	r22, 0xF5	; 245
    3de8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3dea:	65 b1       	in	r22, 0x05	; 5
    3dec:	6a 60       	ori	r22, 0x0A	; 10
    3dee:	65 b9       	out	0x05, r22	; 5
    3df0:	65 b1       	in	r22, 0x05	; 5
    3df2:	65 7f       	andi	r22, 0xF5	; 245
    3df4:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 58));
    3df6:	b9 01       	movw	r22, r18
    3df8:	66 5c       	subi	r22, 0xC6	; 198
    3dfa:	7f 4f       	sbci	r23, 0xFF	; 255
    3dfc:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3e00:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3e04:	e6 0f       	add	r30, r22
    3e06:	f7 1f       	adc	r31, r23
    3e08:	e4 91       	lpm	r30, Z
    3e0a:	6b b1       	in	r22, 0x0b	; 11
    3e0c:	74 e0       	ldi	r23, 0x04	; 4
    3e0e:	e7 9f       	mul	r30, r23
    3e10:	f0 01       	movw	r30, r0
    3e12:	11 24       	eor	r1, r1
    3e14:	63 70       	andi	r22, 0x03	; 3
    3e16:	e6 2b       	or	r30, r22
    3e18:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3e1a:	65 b1       	in	r22, 0x05	; 5
    3e1c:	6a 60       	ori	r22, 0x0A	; 10
    3e1e:	65 b9       	out	0x05, r22	; 5
    3e20:	65 b1       	in	r22, 0x05	; 5
    3e22:	65 7f       	andi	r22, 0xF5	; 245
    3e24:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3e26:	65 b1       	in	r22, 0x05	; 5
    3e28:	6a 60       	ori	r22, 0x0A	; 10
    3e2a:	65 b9       	out	0x05, r22	; 5
    3e2c:	65 b1       	in	r22, 0x05	; 5
    3e2e:	65 7f       	andi	r22, 0xF5	; 245
    3e30:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 59));
    3e32:	b9 01       	movw	r22, r18
    3e34:	65 5c       	subi	r22, 0xC5	; 197
    3e36:	7f 4f       	sbci	r23, 0xFF	; 255
    3e38:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3e3c:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3e40:	e6 0f       	add	r30, r22
    3e42:	f7 1f       	adc	r31, r23
    3e44:	e4 91       	lpm	r30, Z
    3e46:	6b b1       	in	r22, 0x0b	; 11
    3e48:	74 e0       	ldi	r23, 0x04	; 4
    3e4a:	e7 9f       	mul	r30, r23
    3e4c:	f0 01       	movw	r30, r0
    3e4e:	11 24       	eor	r1, r1
    3e50:	63 70       	andi	r22, 0x03	; 3
    3e52:	e6 2b       	or	r30, r22
    3e54:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3e56:	65 b1       	in	r22, 0x05	; 5
    3e58:	6a 60       	ori	r22, 0x0A	; 10
    3e5a:	65 b9       	out	0x05, r22	; 5
    3e5c:	65 b1       	in	r22, 0x05	; 5
    3e5e:	65 7f       	andi	r22, 0xF5	; 245
    3e60:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3e62:	65 b1       	in	r22, 0x05	; 5
    3e64:	6a 60       	ori	r22, 0x0A	; 10
    3e66:	65 b9       	out	0x05, r22	; 5
    3e68:	65 b1       	in	r22, 0x05	; 5
    3e6a:	65 7f       	andi	r22, 0xF5	; 245
    3e6c:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 60));
    3e6e:	b9 01       	movw	r22, r18
    3e70:	64 5c       	subi	r22, 0xC4	; 196
    3e72:	7f 4f       	sbci	r23, 0xFF	; 255
    3e74:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3e78:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3e7c:	e6 0f       	add	r30, r22
    3e7e:	f7 1f       	adc	r31, r23
    3e80:	e4 91       	lpm	r30, Z
    3e82:	6b b1       	in	r22, 0x0b	; 11
    3e84:	74 e0       	ldi	r23, 0x04	; 4
    3e86:	e7 9f       	mul	r30, r23
    3e88:	f0 01       	movw	r30, r0
    3e8a:	11 24       	eor	r1, r1
    3e8c:	63 70       	andi	r22, 0x03	; 3
    3e8e:	e6 2b       	or	r30, r22
    3e90:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3e92:	65 b1       	in	r22, 0x05	; 5
    3e94:	6a 60       	ori	r22, 0x0A	; 10
    3e96:	65 b9       	out	0x05, r22	; 5
    3e98:	65 b1       	in	r22, 0x05	; 5
    3e9a:	65 7f       	andi	r22, 0xF5	; 245
    3e9c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3e9e:	65 b1       	in	r22, 0x05	; 5
    3ea0:	6a 60       	ori	r22, 0x0A	; 10
    3ea2:	65 b9       	out	0x05, r22	; 5
    3ea4:	65 b1       	in	r22, 0x05	; 5
    3ea6:	65 7f       	andi	r22, 0xF5	; 245
    3ea8:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 61));
    3eaa:	b9 01       	movw	r22, r18
    3eac:	63 5c       	subi	r22, 0xC3	; 195
    3eae:	7f 4f       	sbci	r23, 0xFF	; 255
    3eb0:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3eb4:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3eb8:	e6 0f       	add	r30, r22
    3eba:	f7 1f       	adc	r31, r23
    3ebc:	e4 91       	lpm	r30, Z
    3ebe:	6b b1       	in	r22, 0x0b	; 11
    3ec0:	74 e0       	ldi	r23, 0x04	; 4
    3ec2:	e7 9f       	mul	r30, r23
    3ec4:	f0 01       	movw	r30, r0
    3ec6:	11 24       	eor	r1, r1
    3ec8:	63 70       	andi	r22, 0x03	; 3
    3eca:	e6 2b       	or	r30, r22
    3ecc:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3ece:	65 b1       	in	r22, 0x05	; 5
    3ed0:	6a 60       	ori	r22, 0x0A	; 10
    3ed2:	65 b9       	out	0x05, r22	; 5
    3ed4:	65 b1       	in	r22, 0x05	; 5
    3ed6:	65 7f       	andi	r22, 0xF5	; 245
    3ed8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3eda:	65 b1       	in	r22, 0x05	; 5
    3edc:	6a 60       	ori	r22, 0x0A	; 10
    3ede:	65 b9       	out	0x05, r22	; 5
    3ee0:	65 b1       	in	r22, 0x05	; 5
    3ee2:	65 7f       	andi	r22, 0xF5	; 245
    3ee4:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 62));
    3ee6:	b9 01       	movw	r22, r18
    3ee8:	62 5c       	subi	r22, 0xC2	; 194
    3eea:	7f 4f       	sbci	r23, 0xFF	; 255
    3eec:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3ef0:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3ef4:	e6 0f       	add	r30, r22
    3ef6:	f7 1f       	adc	r31, r23
    3ef8:	e4 91       	lpm	r30, Z
    3efa:	6b b1       	in	r22, 0x0b	; 11
    3efc:	74 e0       	ldi	r23, 0x04	; 4
    3efe:	e7 9f       	mul	r30, r23
    3f00:	f0 01       	movw	r30, r0
    3f02:	11 24       	eor	r1, r1
    3f04:	63 70       	andi	r22, 0x03	; 3
    3f06:	e6 2b       	or	r30, r22
    3f08:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3f0a:	65 b1       	in	r22, 0x05	; 5
    3f0c:	6a 60       	ori	r22, 0x0A	; 10
    3f0e:	65 b9       	out	0x05, r22	; 5
    3f10:	65 b1       	in	r22, 0x05	; 5
    3f12:	65 7f       	andi	r22, 0xF5	; 245
    3f14:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3f16:	65 b1       	in	r22, 0x05	; 5
    3f18:	6a 60       	ori	r22, 0x0A	; 10
    3f1a:	65 b9       	out	0x05, r22	; 5
    3f1c:	65 b1       	in	r22, 0x05	; 5
    3f1e:	65 7f       	andi	r22, 0xF5	; 245
    3f20:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 63));
    3f22:	21 5c       	subi	r18, 0xC1	; 193
    3f24:	3f 4f       	sbci	r19, 0xFF	; 255
    3f26:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3f2a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3f2e:	e2 0f       	add	r30, r18
    3f30:	f3 1f       	adc	r31, r19
    3f32:	24 91       	lpm	r18, Z
    3f34:	3b b1       	in	r19, 0x0b	; 11
    3f36:	64 e0       	ldi	r22, 0x04	; 4
    3f38:	26 9f       	mul	r18, r22
    3f3a:	f0 01       	movw	r30, r0
    3f3c:	11 24       	eor	r1, r1
    3f3e:	33 70       	andi	r19, 0x03	; 3
    3f40:	e3 2b       	or	r30, r19
    3f42:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3f44:	25 b1       	in	r18, 0x05	; 5
    3f46:	2a 60       	ori	r18, 0x0A	; 10
    3f48:	25 b9       	out	0x05, r18	; 5
    3f4a:	25 b1       	in	r18, 0x05	; 5
    3f4c:	25 7f       	andi	r18, 0xF5	; 245
    3f4e:	25 b9       	out	0x05, r18	; 5

            // shift data into buffers
            HIGH_LAT;
    3f50:	2a 9a       	sbi	0x05, 2	; 5
            PWCLK_GCLK;
    3f52:	25 b1       	in	r18, 0x05	; 5
    3f54:	2a 60       	ori	r18, 0x0A	; 10
    3f56:	25 b9       	out	0x05, r18	; 5
    3f58:	25 b1       	in	r18, 0x05	; 5
    3f5a:	25 7f       	andi	r18, 0xF5	; 245
    3f5c:	25 b9       	out	0x05, r18	; 5
            CLEAR_LAT;
    3f5e:	2a 98       	cbi	0x05, 2	; 5

#pragma endregion // LSB

            index = ((y & ~1) << 5) + (PANEL_BUFFERSIZE * 3 / 4); // advance index to next section
    3f60:	94 5f       	subi	r25, 0xF4	; 244

#pragma region LLSB
            // chip 0
            SET_COLOR(pgm_read_byte(buffer + index + 0));
    3f62:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3f66:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3f6a:	e8 0f       	add	r30, r24
    3f6c:	f9 1f       	adc	r31, r25
    3f6e:	e4 91       	lpm	r30, Z
    3f70:	2b b1       	in	r18, 0x0b	; 11
    3f72:	74 e0       	ldi	r23, 0x04	; 4
    3f74:	e7 9f       	mul	r30, r23
    3f76:	f0 01       	movw	r30, r0
    3f78:	11 24       	eor	r1, r1
    3f7a:	23 70       	andi	r18, 0x03	; 3
    3f7c:	e2 2b       	or	r30, r18
    3f7e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3f80:	25 b1       	in	r18, 0x05	; 5
    3f82:	2a 60       	ori	r18, 0x0A	; 10
    3f84:	25 b9       	out	0x05, r18	; 5
    3f86:	25 b1       	in	r18, 0x05	; 5
    3f88:	25 7f       	andi	r18, 0xF5	; 245
    3f8a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3f8c:	25 b1       	in	r18, 0x05	; 5
    3f8e:	2a 60       	ori	r18, 0x0A	; 10
    3f90:	25 b9       	out	0x05, r18	; 5
    3f92:	25 b1       	in	r18, 0x05	; 5
    3f94:	25 7f       	andi	r18, 0xF5	; 245
    3f96:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 1));
    3f98:	9c 01       	movw	r18, r24
    3f9a:	2f 5f       	subi	r18, 0xFF	; 255
    3f9c:	3f 4f       	sbci	r19, 0xFF	; 255
    3f9e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3fa2:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3fa6:	e2 0f       	add	r30, r18
    3fa8:	f3 1f       	adc	r31, r19
    3faa:	e4 91       	lpm	r30, Z
    3fac:	2b b1       	in	r18, 0x0b	; 11
    3fae:	34 e0       	ldi	r19, 0x04	; 4
    3fb0:	e3 9f       	mul	r30, r19
    3fb2:	f0 01       	movw	r30, r0
    3fb4:	11 24       	eor	r1, r1
    3fb6:	23 70       	andi	r18, 0x03	; 3
    3fb8:	e2 2b       	or	r30, r18
    3fba:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3fbc:	25 b1       	in	r18, 0x05	; 5
    3fbe:	2a 60       	ori	r18, 0x0A	; 10
    3fc0:	25 b9       	out	0x05, r18	; 5
    3fc2:	25 b1       	in	r18, 0x05	; 5
    3fc4:	25 7f       	andi	r18, 0xF5	; 245
    3fc6:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3fc8:	25 b1       	in	r18, 0x05	; 5
    3fca:	2a 60       	ori	r18, 0x0A	; 10
    3fcc:	25 b9       	out	0x05, r18	; 5
    3fce:	25 b1       	in	r18, 0x05	; 5
    3fd0:	25 7f       	andi	r18, 0xF5	; 245
    3fd2:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 2));
    3fd4:	9c 01       	movw	r18, r24
    3fd6:	2e 5f       	subi	r18, 0xFE	; 254
    3fd8:	3f 4f       	sbci	r19, 0xFF	; 255
    3fda:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    3fde:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    3fe2:	e2 0f       	add	r30, r18
    3fe4:	f3 1f       	adc	r31, r19
    3fe6:	e4 91       	lpm	r30, Z
    3fe8:	2b b1       	in	r18, 0x0b	; 11
    3fea:	64 e0       	ldi	r22, 0x04	; 4
    3fec:	e6 9f       	mul	r30, r22
    3fee:	f0 01       	movw	r30, r0
    3ff0:	11 24       	eor	r1, r1
    3ff2:	23 70       	andi	r18, 0x03	; 3
    3ff4:	e2 2b       	or	r30, r18
    3ff6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3ff8:	25 b1       	in	r18, 0x05	; 5
    3ffa:	2a 60       	ori	r18, 0x0A	; 10
    3ffc:	25 b9       	out	0x05, r18	; 5
    3ffe:	25 b1       	in	r18, 0x05	; 5
    4000:	25 7f       	andi	r18, 0xF5	; 245
    4002:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4004:	25 b1       	in	r18, 0x05	; 5
    4006:	2a 60       	ori	r18, 0x0A	; 10
    4008:	25 b9       	out	0x05, r18	; 5
    400a:	25 b1       	in	r18, 0x05	; 5
    400c:	25 7f       	andi	r18, 0xF5	; 245
    400e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 3));
    4010:	9c 01       	movw	r18, r24
    4012:	2d 5f       	subi	r18, 0xFD	; 253
    4014:	3f 4f       	sbci	r19, 0xFF	; 255
    4016:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    401a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    401e:	e2 0f       	add	r30, r18
    4020:	f3 1f       	adc	r31, r19
    4022:	e4 91       	lpm	r30, Z
    4024:	2b b1       	in	r18, 0x0b	; 11
    4026:	74 e0       	ldi	r23, 0x04	; 4
    4028:	e7 9f       	mul	r30, r23
    402a:	f0 01       	movw	r30, r0
    402c:	11 24       	eor	r1, r1
    402e:	23 70       	andi	r18, 0x03	; 3
    4030:	e2 2b       	or	r30, r18
    4032:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4034:	25 b1       	in	r18, 0x05	; 5
    4036:	2a 60       	ori	r18, 0x0A	; 10
    4038:	25 b9       	out	0x05, r18	; 5
    403a:	25 b1       	in	r18, 0x05	; 5
    403c:	25 7f       	andi	r18, 0xF5	; 245
    403e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4040:	25 b1       	in	r18, 0x05	; 5
    4042:	2a 60       	ori	r18, 0x0A	; 10
    4044:	25 b9       	out	0x05, r18	; 5
    4046:	25 b1       	in	r18, 0x05	; 5
    4048:	25 7f       	andi	r18, 0xF5	; 245
    404a:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 4));
    404c:	9c 01       	movw	r18, r24
    404e:	2c 5f       	subi	r18, 0xFC	; 252
    4050:	3f 4f       	sbci	r19, 0xFF	; 255
    4052:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4056:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    405a:	e2 0f       	add	r30, r18
    405c:	f3 1f       	adc	r31, r19
    405e:	e4 91       	lpm	r30, Z
    4060:	2b b1       	in	r18, 0x0b	; 11
    4062:	34 e0       	ldi	r19, 0x04	; 4
    4064:	e3 9f       	mul	r30, r19
    4066:	f0 01       	movw	r30, r0
    4068:	11 24       	eor	r1, r1
    406a:	23 70       	andi	r18, 0x03	; 3
    406c:	e2 2b       	or	r30, r18
    406e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4070:	25 b1       	in	r18, 0x05	; 5
    4072:	2a 60       	ori	r18, 0x0A	; 10
    4074:	25 b9       	out	0x05, r18	; 5
    4076:	25 b1       	in	r18, 0x05	; 5
    4078:	25 7f       	andi	r18, 0xF5	; 245
    407a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    407c:	25 b1       	in	r18, 0x05	; 5
    407e:	2a 60       	ori	r18, 0x0A	; 10
    4080:	25 b9       	out	0x05, r18	; 5
    4082:	25 b1       	in	r18, 0x05	; 5
    4084:	25 7f       	andi	r18, 0xF5	; 245
    4086:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 5));
    4088:	9c 01       	movw	r18, r24
    408a:	2b 5f       	subi	r18, 0xFB	; 251
    408c:	3f 4f       	sbci	r19, 0xFF	; 255
    408e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4092:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4096:	e2 0f       	add	r30, r18
    4098:	f3 1f       	adc	r31, r19
    409a:	e4 91       	lpm	r30, Z
    409c:	2b b1       	in	r18, 0x0b	; 11
    409e:	64 e0       	ldi	r22, 0x04	; 4
    40a0:	e6 9f       	mul	r30, r22
    40a2:	f0 01       	movw	r30, r0
    40a4:	11 24       	eor	r1, r1
    40a6:	23 70       	andi	r18, 0x03	; 3
    40a8:	e2 2b       	or	r30, r18
    40aa:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    40ac:	25 b1       	in	r18, 0x05	; 5
    40ae:	2a 60       	ori	r18, 0x0A	; 10
    40b0:	25 b9       	out	0x05, r18	; 5
    40b2:	25 b1       	in	r18, 0x05	; 5
    40b4:	25 7f       	andi	r18, 0xF5	; 245
    40b6:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    40b8:	25 b1       	in	r18, 0x05	; 5
    40ba:	2a 60       	ori	r18, 0x0A	; 10
    40bc:	25 b9       	out	0x05, r18	; 5
    40be:	25 b1       	in	r18, 0x05	; 5
    40c0:	25 7f       	andi	r18, 0xF5	; 245
    40c2:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 6));
    40c4:	9c 01       	movw	r18, r24
    40c6:	2a 5f       	subi	r18, 0xFA	; 250
    40c8:	3f 4f       	sbci	r19, 0xFF	; 255
    40ca:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    40ce:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    40d2:	e2 0f       	add	r30, r18
    40d4:	f3 1f       	adc	r31, r19
    40d6:	e4 91       	lpm	r30, Z
    40d8:	2b b1       	in	r18, 0x0b	; 11
    40da:	74 e0       	ldi	r23, 0x04	; 4
    40dc:	e7 9f       	mul	r30, r23
    40de:	f0 01       	movw	r30, r0
    40e0:	11 24       	eor	r1, r1
    40e2:	23 70       	andi	r18, 0x03	; 3
    40e4:	e2 2b       	or	r30, r18
    40e6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    40e8:	25 b1       	in	r18, 0x05	; 5
    40ea:	2a 60       	ori	r18, 0x0A	; 10
    40ec:	25 b9       	out	0x05, r18	; 5
    40ee:	25 b1       	in	r18, 0x05	; 5
    40f0:	25 7f       	andi	r18, 0xF5	; 245
    40f2:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    40f4:	25 b1       	in	r18, 0x05	; 5
    40f6:	2a 60       	ori	r18, 0x0A	; 10
    40f8:	25 b9       	out	0x05, r18	; 5
    40fa:	25 b1       	in	r18, 0x05	; 5
    40fc:	25 7f       	andi	r18, 0xF5	; 245
    40fe:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 7));
    4100:	9c 01       	movw	r18, r24
    4102:	29 5f       	subi	r18, 0xF9	; 249
    4104:	3f 4f       	sbci	r19, 0xFF	; 255
    4106:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    410a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    410e:	e2 0f       	add	r30, r18
    4110:	f3 1f       	adc	r31, r19
    4112:	e4 91       	lpm	r30, Z
    4114:	2b b1       	in	r18, 0x0b	; 11
    4116:	34 e0       	ldi	r19, 0x04	; 4
    4118:	e3 9f       	mul	r30, r19
    411a:	f0 01       	movw	r30, r0
    411c:	11 24       	eor	r1, r1
    411e:	23 70       	andi	r18, 0x03	; 3
    4120:	e2 2b       	or	r30, r18
    4122:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4124:	25 b1       	in	r18, 0x05	; 5
    4126:	2a 60       	ori	r18, 0x0A	; 10
    4128:	25 b9       	out	0x05, r18	; 5
    412a:	25 b1       	in	r18, 0x05	; 5
    412c:	25 7f       	andi	r18, 0xF5	; 245
    412e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4130:	25 b1       	in	r18, 0x05	; 5
    4132:	2a 60       	ori	r18, 0x0A	; 10
    4134:	25 b9       	out	0x05, r18	; 5
    4136:	25 b1       	in	r18, 0x05	; 5
    4138:	25 7f       	andi	r18, 0xF5	; 245
    413a:	25 b9       	out	0x05, r18	; 5

            // chip 1
            SET_COLOR(pgm_read_byte(buffer + index + 8));
    413c:	9c 01       	movw	r18, r24
    413e:	28 5f       	subi	r18, 0xF8	; 248
    4140:	3f 4f       	sbci	r19, 0xFF	; 255
    4142:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4146:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    414a:	e2 0f       	add	r30, r18
    414c:	f3 1f       	adc	r31, r19
    414e:	e4 91       	lpm	r30, Z
    4150:	2b b1       	in	r18, 0x0b	; 11
    4152:	64 e0       	ldi	r22, 0x04	; 4
    4154:	e6 9f       	mul	r30, r22
    4156:	f0 01       	movw	r30, r0
    4158:	11 24       	eor	r1, r1
    415a:	23 70       	andi	r18, 0x03	; 3
    415c:	e2 2b       	or	r30, r18
    415e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4160:	25 b1       	in	r18, 0x05	; 5
    4162:	2a 60       	ori	r18, 0x0A	; 10
    4164:	25 b9       	out	0x05, r18	; 5
    4166:	25 b1       	in	r18, 0x05	; 5
    4168:	25 7f       	andi	r18, 0xF5	; 245
    416a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    416c:	25 b1       	in	r18, 0x05	; 5
    416e:	2a 60       	ori	r18, 0x0A	; 10
    4170:	25 b9       	out	0x05, r18	; 5
    4172:	25 b1       	in	r18, 0x05	; 5
    4174:	25 7f       	andi	r18, 0xF5	; 245
    4176:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 9));
    4178:	9c 01       	movw	r18, r24
    417a:	27 5f       	subi	r18, 0xF7	; 247
    417c:	3f 4f       	sbci	r19, 0xFF	; 255
    417e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4182:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4186:	e2 0f       	add	r30, r18
    4188:	f3 1f       	adc	r31, r19
    418a:	e4 91       	lpm	r30, Z
    418c:	2b b1       	in	r18, 0x0b	; 11
    418e:	74 e0       	ldi	r23, 0x04	; 4
    4190:	e7 9f       	mul	r30, r23
    4192:	f0 01       	movw	r30, r0
    4194:	11 24       	eor	r1, r1
    4196:	23 70       	andi	r18, 0x03	; 3
    4198:	e2 2b       	or	r30, r18
    419a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    419c:	25 b1       	in	r18, 0x05	; 5
    419e:	2a 60       	ori	r18, 0x0A	; 10
    41a0:	25 b9       	out	0x05, r18	; 5
    41a2:	25 b1       	in	r18, 0x05	; 5
    41a4:	25 7f       	andi	r18, 0xF5	; 245
    41a6:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    41a8:	25 b1       	in	r18, 0x05	; 5
    41aa:	2a 60       	ori	r18, 0x0A	; 10
    41ac:	25 b9       	out	0x05, r18	; 5
    41ae:	25 b1       	in	r18, 0x05	; 5
    41b0:	25 7f       	andi	r18, 0xF5	; 245
    41b2:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 10));
    41b4:	9c 01       	movw	r18, r24
    41b6:	26 5f       	subi	r18, 0xF6	; 246
    41b8:	3f 4f       	sbci	r19, 0xFF	; 255
    41ba:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    41be:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    41c2:	e2 0f       	add	r30, r18
    41c4:	f3 1f       	adc	r31, r19
    41c6:	e4 91       	lpm	r30, Z
    41c8:	2b b1       	in	r18, 0x0b	; 11
    41ca:	34 e0       	ldi	r19, 0x04	; 4
    41cc:	e3 9f       	mul	r30, r19
    41ce:	f0 01       	movw	r30, r0
    41d0:	11 24       	eor	r1, r1
    41d2:	23 70       	andi	r18, 0x03	; 3
    41d4:	e2 2b       	or	r30, r18
    41d6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    41d8:	25 b1       	in	r18, 0x05	; 5
    41da:	2a 60       	ori	r18, 0x0A	; 10
    41dc:	25 b9       	out	0x05, r18	; 5
    41de:	25 b1       	in	r18, 0x05	; 5
    41e0:	25 7f       	andi	r18, 0xF5	; 245
    41e2:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    41e4:	25 b1       	in	r18, 0x05	; 5
    41e6:	2a 60       	ori	r18, 0x0A	; 10
    41e8:	25 b9       	out	0x05, r18	; 5
    41ea:	25 b1       	in	r18, 0x05	; 5
    41ec:	25 7f       	andi	r18, 0xF5	; 245
    41ee:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 11));
    41f0:	9c 01       	movw	r18, r24
    41f2:	25 5f       	subi	r18, 0xF5	; 245
    41f4:	3f 4f       	sbci	r19, 0xFF	; 255
    41f6:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    41fa:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    41fe:	e2 0f       	add	r30, r18
    4200:	f3 1f       	adc	r31, r19
    4202:	e4 91       	lpm	r30, Z
    4204:	2b b1       	in	r18, 0x0b	; 11
    4206:	64 e0       	ldi	r22, 0x04	; 4
    4208:	e6 9f       	mul	r30, r22
    420a:	f0 01       	movw	r30, r0
    420c:	11 24       	eor	r1, r1
    420e:	23 70       	andi	r18, 0x03	; 3
    4210:	e2 2b       	or	r30, r18
    4212:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4214:	25 b1       	in	r18, 0x05	; 5
    4216:	2a 60       	ori	r18, 0x0A	; 10
    4218:	25 b9       	out	0x05, r18	; 5
    421a:	25 b1       	in	r18, 0x05	; 5
    421c:	25 7f       	andi	r18, 0xF5	; 245
    421e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4220:	25 b1       	in	r18, 0x05	; 5
    4222:	2a 60       	ori	r18, 0x0A	; 10
    4224:	25 b9       	out	0x05, r18	; 5
    4226:	25 b1       	in	r18, 0x05	; 5
    4228:	25 7f       	andi	r18, 0xF5	; 245
    422a:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 12));
    422c:	9c 01       	movw	r18, r24
    422e:	24 5f       	subi	r18, 0xF4	; 244
    4230:	3f 4f       	sbci	r19, 0xFF	; 255
    4232:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4236:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    423a:	e2 0f       	add	r30, r18
    423c:	f3 1f       	adc	r31, r19
    423e:	e4 91       	lpm	r30, Z
    4240:	2b b1       	in	r18, 0x0b	; 11
    4242:	74 e0       	ldi	r23, 0x04	; 4
    4244:	e7 9f       	mul	r30, r23
    4246:	f0 01       	movw	r30, r0
    4248:	11 24       	eor	r1, r1
    424a:	23 70       	andi	r18, 0x03	; 3
    424c:	e2 2b       	or	r30, r18
    424e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4250:	25 b1       	in	r18, 0x05	; 5
    4252:	2a 60       	ori	r18, 0x0A	; 10
    4254:	25 b9       	out	0x05, r18	; 5
    4256:	25 b1       	in	r18, 0x05	; 5
    4258:	25 7f       	andi	r18, 0xF5	; 245
    425a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    425c:	25 b1       	in	r18, 0x05	; 5
    425e:	2a 60       	ori	r18, 0x0A	; 10
    4260:	25 b9       	out	0x05, r18	; 5
    4262:	25 b1       	in	r18, 0x05	; 5
    4264:	25 7f       	andi	r18, 0xF5	; 245
    4266:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 13));
    4268:	9c 01       	movw	r18, r24
    426a:	23 5f       	subi	r18, 0xF3	; 243
    426c:	3f 4f       	sbci	r19, 0xFF	; 255
    426e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4272:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4276:	e2 0f       	add	r30, r18
    4278:	f3 1f       	adc	r31, r19
    427a:	e4 91       	lpm	r30, Z
    427c:	2b b1       	in	r18, 0x0b	; 11
    427e:	34 e0       	ldi	r19, 0x04	; 4
    4280:	e3 9f       	mul	r30, r19
    4282:	f0 01       	movw	r30, r0
    4284:	11 24       	eor	r1, r1
    4286:	23 70       	andi	r18, 0x03	; 3
    4288:	e2 2b       	or	r30, r18
    428a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    428c:	25 b1       	in	r18, 0x05	; 5
    428e:	2a 60       	ori	r18, 0x0A	; 10
    4290:	25 b9       	out	0x05, r18	; 5
    4292:	25 b1       	in	r18, 0x05	; 5
    4294:	25 7f       	andi	r18, 0xF5	; 245
    4296:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4298:	25 b1       	in	r18, 0x05	; 5
    429a:	2a 60       	ori	r18, 0x0A	; 10
    429c:	25 b9       	out	0x05, r18	; 5
    429e:	25 b1       	in	r18, 0x05	; 5
    42a0:	25 7f       	andi	r18, 0xF5	; 245
    42a2:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 14));
    42a4:	9c 01       	movw	r18, r24
    42a6:	22 5f       	subi	r18, 0xF2	; 242
    42a8:	3f 4f       	sbci	r19, 0xFF	; 255
    42aa:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    42ae:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    42b2:	e2 0f       	add	r30, r18
    42b4:	f3 1f       	adc	r31, r19
    42b6:	e4 91       	lpm	r30, Z
    42b8:	2b b1       	in	r18, 0x0b	; 11
    42ba:	64 e0       	ldi	r22, 0x04	; 4
    42bc:	e6 9f       	mul	r30, r22
    42be:	f0 01       	movw	r30, r0
    42c0:	11 24       	eor	r1, r1
    42c2:	23 70       	andi	r18, 0x03	; 3
    42c4:	e2 2b       	or	r30, r18
    42c6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    42c8:	25 b1       	in	r18, 0x05	; 5
    42ca:	2a 60       	ori	r18, 0x0A	; 10
    42cc:	25 b9       	out	0x05, r18	; 5
    42ce:	25 b1       	in	r18, 0x05	; 5
    42d0:	25 7f       	andi	r18, 0xF5	; 245
    42d2:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    42d4:	25 b1       	in	r18, 0x05	; 5
    42d6:	2a 60       	ori	r18, 0x0A	; 10
    42d8:	25 b9       	out	0x05, r18	; 5
    42da:	25 b1       	in	r18, 0x05	; 5
    42dc:	25 7f       	andi	r18, 0xF5	; 245
    42de:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 15));
    42e0:	9c 01       	movw	r18, r24
    42e2:	21 5f       	subi	r18, 0xF1	; 241
    42e4:	3f 4f       	sbci	r19, 0xFF	; 255
    42e6:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    42ea:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    42ee:	e2 0f       	add	r30, r18
    42f0:	f3 1f       	adc	r31, r19
    42f2:	e4 91       	lpm	r30, Z
    42f4:	2b b1       	in	r18, 0x0b	; 11
    42f6:	74 e0       	ldi	r23, 0x04	; 4
    42f8:	e7 9f       	mul	r30, r23
    42fa:	f0 01       	movw	r30, r0
    42fc:	11 24       	eor	r1, r1
    42fe:	23 70       	andi	r18, 0x03	; 3
    4300:	e2 2b       	or	r30, r18
    4302:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4304:	25 b1       	in	r18, 0x05	; 5
    4306:	2a 60       	ori	r18, 0x0A	; 10
    4308:	25 b9       	out	0x05, r18	; 5
    430a:	25 b1       	in	r18, 0x05	; 5
    430c:	25 7f       	andi	r18, 0xF5	; 245
    430e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4310:	25 b1       	in	r18, 0x05	; 5
    4312:	2a 60       	ori	r18, 0x0A	; 10
    4314:	25 b9       	out	0x05, r18	; 5
    4316:	25 b1       	in	r18, 0x05	; 5
    4318:	25 7f       	andi	r18, 0xF5	; 245
    431a:	25 b9       	out	0x05, r18	; 5

            // chip 2
            SET_COLOR(pgm_read_byte(buffer + index + 16));
    431c:	9c 01       	movw	r18, r24
    431e:	20 5f       	subi	r18, 0xF0	; 240
    4320:	3f 4f       	sbci	r19, 0xFF	; 255
    4322:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4326:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    432a:	e2 0f       	add	r30, r18
    432c:	f3 1f       	adc	r31, r19
    432e:	e4 91       	lpm	r30, Z
    4330:	2b b1       	in	r18, 0x0b	; 11
    4332:	34 e0       	ldi	r19, 0x04	; 4
    4334:	e3 9f       	mul	r30, r19
    4336:	f0 01       	movw	r30, r0
    4338:	11 24       	eor	r1, r1
    433a:	23 70       	andi	r18, 0x03	; 3
    433c:	e2 2b       	or	r30, r18
    433e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4340:	25 b1       	in	r18, 0x05	; 5
    4342:	2a 60       	ori	r18, 0x0A	; 10
    4344:	25 b9       	out	0x05, r18	; 5
    4346:	25 b1       	in	r18, 0x05	; 5
    4348:	25 7f       	andi	r18, 0xF5	; 245
    434a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    434c:	25 b1       	in	r18, 0x05	; 5
    434e:	2a 60       	ori	r18, 0x0A	; 10
    4350:	25 b9       	out	0x05, r18	; 5
    4352:	25 b1       	in	r18, 0x05	; 5
    4354:	25 7f       	andi	r18, 0xF5	; 245
    4356:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 17));
    4358:	9c 01       	movw	r18, r24
    435a:	2f 5e       	subi	r18, 0xEF	; 239
    435c:	3f 4f       	sbci	r19, 0xFF	; 255
    435e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4362:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4366:	e2 0f       	add	r30, r18
    4368:	f3 1f       	adc	r31, r19
    436a:	e4 91       	lpm	r30, Z
    436c:	2b b1       	in	r18, 0x0b	; 11
    436e:	64 e0       	ldi	r22, 0x04	; 4
    4370:	e6 9f       	mul	r30, r22
    4372:	f0 01       	movw	r30, r0
    4374:	11 24       	eor	r1, r1
    4376:	23 70       	andi	r18, 0x03	; 3
    4378:	e2 2b       	or	r30, r18
    437a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    437c:	25 b1       	in	r18, 0x05	; 5
    437e:	2a 60       	ori	r18, 0x0A	; 10
    4380:	25 b9       	out	0x05, r18	; 5
    4382:	25 b1       	in	r18, 0x05	; 5
    4384:	25 7f       	andi	r18, 0xF5	; 245
    4386:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4388:	25 b1       	in	r18, 0x05	; 5
    438a:	2a 60       	ori	r18, 0x0A	; 10
    438c:	25 b9       	out	0x05, r18	; 5
    438e:	25 b1       	in	r18, 0x05	; 5
    4390:	25 7f       	andi	r18, 0xF5	; 245
    4392:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 18));
    4394:	9c 01       	movw	r18, r24
    4396:	2e 5e       	subi	r18, 0xEE	; 238
    4398:	3f 4f       	sbci	r19, 0xFF	; 255
    439a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    439e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    43a2:	e2 0f       	add	r30, r18
    43a4:	f3 1f       	adc	r31, r19
    43a6:	e4 91       	lpm	r30, Z
    43a8:	2b b1       	in	r18, 0x0b	; 11
    43aa:	74 e0       	ldi	r23, 0x04	; 4
    43ac:	e7 9f       	mul	r30, r23
    43ae:	f0 01       	movw	r30, r0
    43b0:	11 24       	eor	r1, r1
    43b2:	23 70       	andi	r18, 0x03	; 3
    43b4:	e2 2b       	or	r30, r18
    43b6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    43b8:	25 b1       	in	r18, 0x05	; 5
    43ba:	2a 60       	ori	r18, 0x0A	; 10
    43bc:	25 b9       	out	0x05, r18	; 5
    43be:	25 b1       	in	r18, 0x05	; 5
    43c0:	25 7f       	andi	r18, 0xF5	; 245
    43c2:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    43c4:	25 b1       	in	r18, 0x05	; 5
    43c6:	2a 60       	ori	r18, 0x0A	; 10
    43c8:	25 b9       	out	0x05, r18	; 5
    43ca:	25 b1       	in	r18, 0x05	; 5
    43cc:	25 7f       	andi	r18, 0xF5	; 245
    43ce:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 19));
    43d0:	9c 01       	movw	r18, r24
    43d2:	2d 5e       	subi	r18, 0xED	; 237
    43d4:	3f 4f       	sbci	r19, 0xFF	; 255
    43d6:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    43da:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    43de:	e2 0f       	add	r30, r18
    43e0:	f3 1f       	adc	r31, r19
    43e2:	e4 91       	lpm	r30, Z
    43e4:	2b b1       	in	r18, 0x0b	; 11
    43e6:	34 e0       	ldi	r19, 0x04	; 4
    43e8:	e3 9f       	mul	r30, r19
    43ea:	f0 01       	movw	r30, r0
    43ec:	11 24       	eor	r1, r1
    43ee:	23 70       	andi	r18, 0x03	; 3
    43f0:	e2 2b       	or	r30, r18
    43f2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    43f4:	25 b1       	in	r18, 0x05	; 5
    43f6:	2a 60       	ori	r18, 0x0A	; 10
    43f8:	25 b9       	out	0x05, r18	; 5
    43fa:	25 b1       	in	r18, 0x05	; 5
    43fc:	25 7f       	andi	r18, 0xF5	; 245
    43fe:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4400:	25 b1       	in	r18, 0x05	; 5
    4402:	2a 60       	ori	r18, 0x0A	; 10
    4404:	25 b9       	out	0x05, r18	; 5
    4406:	25 b1       	in	r18, 0x05	; 5
    4408:	25 7f       	andi	r18, 0xF5	; 245
    440a:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 20));
    440c:	9c 01       	movw	r18, r24
    440e:	2c 5e       	subi	r18, 0xEC	; 236
    4410:	3f 4f       	sbci	r19, 0xFF	; 255
    4412:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4416:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    441a:	e2 0f       	add	r30, r18
    441c:	f3 1f       	adc	r31, r19
    441e:	e4 91       	lpm	r30, Z
    4420:	2b b1       	in	r18, 0x0b	; 11
    4422:	64 e0       	ldi	r22, 0x04	; 4
    4424:	e6 9f       	mul	r30, r22
    4426:	f0 01       	movw	r30, r0
    4428:	11 24       	eor	r1, r1
    442a:	23 70       	andi	r18, 0x03	; 3
    442c:	e2 2b       	or	r30, r18
    442e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4430:	25 b1       	in	r18, 0x05	; 5
    4432:	2a 60       	ori	r18, 0x0A	; 10
    4434:	25 b9       	out	0x05, r18	; 5
    4436:	25 b1       	in	r18, 0x05	; 5
    4438:	25 7f       	andi	r18, 0xF5	; 245
    443a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    443c:	25 b1       	in	r18, 0x05	; 5
    443e:	2a 60       	ori	r18, 0x0A	; 10
    4440:	25 b9       	out	0x05, r18	; 5
    4442:	25 b1       	in	r18, 0x05	; 5
    4444:	25 7f       	andi	r18, 0xF5	; 245
    4446:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 21));
    4448:	9c 01       	movw	r18, r24
    444a:	2b 5e       	subi	r18, 0xEB	; 235
    444c:	3f 4f       	sbci	r19, 0xFF	; 255
    444e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4452:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4456:	e2 0f       	add	r30, r18
    4458:	f3 1f       	adc	r31, r19
    445a:	e4 91       	lpm	r30, Z
    445c:	2b b1       	in	r18, 0x0b	; 11
    445e:	74 e0       	ldi	r23, 0x04	; 4
    4460:	e7 9f       	mul	r30, r23
    4462:	f0 01       	movw	r30, r0
    4464:	11 24       	eor	r1, r1
    4466:	23 70       	andi	r18, 0x03	; 3
    4468:	e2 2b       	or	r30, r18
    446a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    446c:	25 b1       	in	r18, 0x05	; 5
    446e:	2a 60       	ori	r18, 0x0A	; 10
    4470:	25 b9       	out	0x05, r18	; 5
    4472:	25 b1       	in	r18, 0x05	; 5
    4474:	25 7f       	andi	r18, 0xF5	; 245
    4476:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4478:	25 b1       	in	r18, 0x05	; 5
    447a:	2a 60       	ori	r18, 0x0A	; 10
    447c:	25 b9       	out	0x05, r18	; 5
    447e:	25 b1       	in	r18, 0x05	; 5
    4480:	25 7f       	andi	r18, 0xF5	; 245
    4482:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 22));
    4484:	9c 01       	movw	r18, r24
    4486:	2a 5e       	subi	r18, 0xEA	; 234
    4488:	3f 4f       	sbci	r19, 0xFF	; 255
    448a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    448e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4492:	e2 0f       	add	r30, r18
    4494:	f3 1f       	adc	r31, r19
    4496:	e4 91       	lpm	r30, Z
    4498:	2b b1       	in	r18, 0x0b	; 11
    449a:	34 e0       	ldi	r19, 0x04	; 4
    449c:	e3 9f       	mul	r30, r19
    449e:	f0 01       	movw	r30, r0
    44a0:	11 24       	eor	r1, r1
    44a2:	23 70       	andi	r18, 0x03	; 3
    44a4:	e2 2b       	or	r30, r18
    44a6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    44a8:	25 b1       	in	r18, 0x05	; 5
    44aa:	2a 60       	ori	r18, 0x0A	; 10
    44ac:	25 b9       	out	0x05, r18	; 5
    44ae:	25 b1       	in	r18, 0x05	; 5
    44b0:	25 7f       	andi	r18, 0xF5	; 245
    44b2:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    44b4:	25 b1       	in	r18, 0x05	; 5
    44b6:	2a 60       	ori	r18, 0x0A	; 10
    44b8:	25 b9       	out	0x05, r18	; 5
    44ba:	25 b1       	in	r18, 0x05	; 5
    44bc:	25 7f       	andi	r18, 0xF5	; 245
    44be:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 23));
    44c0:	9c 01       	movw	r18, r24
    44c2:	29 5e       	subi	r18, 0xE9	; 233
    44c4:	3f 4f       	sbci	r19, 0xFF	; 255
    44c6:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    44ca:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    44ce:	e2 0f       	add	r30, r18
    44d0:	f3 1f       	adc	r31, r19
    44d2:	e4 91       	lpm	r30, Z
    44d4:	2b b1       	in	r18, 0x0b	; 11
    44d6:	64 e0       	ldi	r22, 0x04	; 4
    44d8:	e6 9f       	mul	r30, r22
    44da:	f0 01       	movw	r30, r0
    44dc:	11 24       	eor	r1, r1
    44de:	23 70       	andi	r18, 0x03	; 3
    44e0:	e2 2b       	or	r30, r18
    44e2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    44e4:	25 b1       	in	r18, 0x05	; 5
    44e6:	2a 60       	ori	r18, 0x0A	; 10
    44e8:	25 b9       	out	0x05, r18	; 5
    44ea:	25 b1       	in	r18, 0x05	; 5
    44ec:	25 7f       	andi	r18, 0xF5	; 245
    44ee:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    44f0:	25 b1       	in	r18, 0x05	; 5
    44f2:	2a 60       	ori	r18, 0x0A	; 10
    44f4:	25 b9       	out	0x05, r18	; 5
    44f6:	25 b1       	in	r18, 0x05	; 5
    44f8:	25 7f       	andi	r18, 0xF5	; 245
    44fa:	25 b9       	out	0x05, r18	; 5

            // chip 3
            SET_COLOR(pgm_read_byte(buffer + index + 24));
    44fc:	9c 01       	movw	r18, r24
    44fe:	28 5e       	subi	r18, 0xE8	; 232
    4500:	3f 4f       	sbci	r19, 0xFF	; 255
    4502:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4506:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    450a:	e2 0f       	add	r30, r18
    450c:	f3 1f       	adc	r31, r19
    450e:	e4 91       	lpm	r30, Z
    4510:	2b b1       	in	r18, 0x0b	; 11
    4512:	74 e0       	ldi	r23, 0x04	; 4
    4514:	e7 9f       	mul	r30, r23
    4516:	f0 01       	movw	r30, r0
    4518:	11 24       	eor	r1, r1
    451a:	23 70       	andi	r18, 0x03	; 3
    451c:	e2 2b       	or	r30, r18
    451e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4520:	25 b1       	in	r18, 0x05	; 5
    4522:	2a 60       	ori	r18, 0x0A	; 10
    4524:	25 b9       	out	0x05, r18	; 5
    4526:	25 b1       	in	r18, 0x05	; 5
    4528:	25 7f       	andi	r18, 0xF5	; 245
    452a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    452c:	25 b1       	in	r18, 0x05	; 5
    452e:	2a 60       	ori	r18, 0x0A	; 10
    4530:	25 b9       	out	0x05, r18	; 5
    4532:	25 b1       	in	r18, 0x05	; 5
    4534:	25 7f       	andi	r18, 0xF5	; 245
    4536:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 25));
    4538:	9c 01       	movw	r18, r24
    453a:	27 5e       	subi	r18, 0xE7	; 231
    453c:	3f 4f       	sbci	r19, 0xFF	; 255
    453e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4542:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4546:	e2 0f       	add	r30, r18
    4548:	f3 1f       	adc	r31, r19
    454a:	e4 91       	lpm	r30, Z
    454c:	2b b1       	in	r18, 0x0b	; 11
    454e:	34 e0       	ldi	r19, 0x04	; 4
    4550:	e3 9f       	mul	r30, r19
    4552:	f0 01       	movw	r30, r0
    4554:	11 24       	eor	r1, r1
    4556:	23 70       	andi	r18, 0x03	; 3
    4558:	e2 2b       	or	r30, r18
    455a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    455c:	25 b1       	in	r18, 0x05	; 5
    455e:	2a 60       	ori	r18, 0x0A	; 10
    4560:	25 b9       	out	0x05, r18	; 5
    4562:	25 b1       	in	r18, 0x05	; 5
    4564:	25 7f       	andi	r18, 0xF5	; 245
    4566:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4568:	25 b1       	in	r18, 0x05	; 5
    456a:	2a 60       	ori	r18, 0x0A	; 10
    456c:	25 b9       	out	0x05, r18	; 5
    456e:	25 b1       	in	r18, 0x05	; 5
    4570:	25 7f       	andi	r18, 0xF5	; 245
    4572:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 26));
    4574:	9c 01       	movw	r18, r24
    4576:	26 5e       	subi	r18, 0xE6	; 230
    4578:	3f 4f       	sbci	r19, 0xFF	; 255
    457a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    457e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4582:	e2 0f       	add	r30, r18
    4584:	f3 1f       	adc	r31, r19
    4586:	e4 91       	lpm	r30, Z
    4588:	2b b1       	in	r18, 0x0b	; 11
    458a:	64 e0       	ldi	r22, 0x04	; 4
    458c:	e6 9f       	mul	r30, r22
    458e:	f0 01       	movw	r30, r0
    4590:	11 24       	eor	r1, r1
    4592:	23 70       	andi	r18, 0x03	; 3
    4594:	e2 2b       	or	r30, r18
    4596:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4598:	25 b1       	in	r18, 0x05	; 5
    459a:	2a 60       	ori	r18, 0x0A	; 10
    459c:	25 b9       	out	0x05, r18	; 5
    459e:	25 b1       	in	r18, 0x05	; 5
    45a0:	25 7f       	andi	r18, 0xF5	; 245
    45a2:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    45a4:	25 b1       	in	r18, 0x05	; 5
    45a6:	2a 60       	ori	r18, 0x0A	; 10
    45a8:	25 b9       	out	0x05, r18	; 5
    45aa:	25 b1       	in	r18, 0x05	; 5
    45ac:	25 7f       	andi	r18, 0xF5	; 245
    45ae:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 27));
    45b0:	9c 01       	movw	r18, r24
    45b2:	25 5e       	subi	r18, 0xE5	; 229
    45b4:	3f 4f       	sbci	r19, 0xFF	; 255
    45b6:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    45ba:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    45be:	e2 0f       	add	r30, r18
    45c0:	f3 1f       	adc	r31, r19
    45c2:	e4 91       	lpm	r30, Z
    45c4:	2b b1       	in	r18, 0x0b	; 11
    45c6:	74 e0       	ldi	r23, 0x04	; 4
    45c8:	e7 9f       	mul	r30, r23
    45ca:	f0 01       	movw	r30, r0
    45cc:	11 24       	eor	r1, r1
    45ce:	23 70       	andi	r18, 0x03	; 3
    45d0:	e2 2b       	or	r30, r18
    45d2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    45d4:	25 b1       	in	r18, 0x05	; 5
    45d6:	2a 60       	ori	r18, 0x0A	; 10
    45d8:	25 b9       	out	0x05, r18	; 5
    45da:	25 b1       	in	r18, 0x05	; 5
    45dc:	25 7f       	andi	r18, 0xF5	; 245
    45de:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    45e0:	25 b1       	in	r18, 0x05	; 5
    45e2:	2a 60       	ori	r18, 0x0A	; 10
    45e4:	25 b9       	out	0x05, r18	; 5
    45e6:	25 b1       	in	r18, 0x05	; 5
    45e8:	25 7f       	andi	r18, 0xF5	; 245
    45ea:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 28));
    45ec:	9c 01       	movw	r18, r24
    45ee:	24 5e       	subi	r18, 0xE4	; 228
    45f0:	3f 4f       	sbci	r19, 0xFF	; 255
    45f2:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    45f6:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    45fa:	e2 0f       	add	r30, r18
    45fc:	f3 1f       	adc	r31, r19
    45fe:	e4 91       	lpm	r30, Z
    4600:	2b b1       	in	r18, 0x0b	; 11
    4602:	34 e0       	ldi	r19, 0x04	; 4
    4604:	e3 9f       	mul	r30, r19
    4606:	f0 01       	movw	r30, r0
    4608:	11 24       	eor	r1, r1
    460a:	23 70       	andi	r18, 0x03	; 3
    460c:	e2 2b       	or	r30, r18
    460e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4610:	25 b1       	in	r18, 0x05	; 5
    4612:	2a 60       	ori	r18, 0x0A	; 10
    4614:	25 b9       	out	0x05, r18	; 5
    4616:	25 b1       	in	r18, 0x05	; 5
    4618:	25 7f       	andi	r18, 0xF5	; 245
    461a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    461c:	25 b1       	in	r18, 0x05	; 5
    461e:	2a 60       	ori	r18, 0x0A	; 10
    4620:	25 b9       	out	0x05, r18	; 5
    4622:	25 b1       	in	r18, 0x05	; 5
    4624:	25 7f       	andi	r18, 0xF5	; 245
    4626:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 29));
    4628:	9c 01       	movw	r18, r24
    462a:	23 5e       	subi	r18, 0xE3	; 227
    462c:	3f 4f       	sbci	r19, 0xFF	; 255
    462e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4632:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4636:	e2 0f       	add	r30, r18
    4638:	f3 1f       	adc	r31, r19
    463a:	e4 91       	lpm	r30, Z
    463c:	2b b1       	in	r18, 0x0b	; 11
    463e:	64 e0       	ldi	r22, 0x04	; 4
    4640:	e6 9f       	mul	r30, r22
    4642:	f0 01       	movw	r30, r0
    4644:	11 24       	eor	r1, r1
    4646:	23 70       	andi	r18, 0x03	; 3
    4648:	e2 2b       	or	r30, r18
    464a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    464c:	25 b1       	in	r18, 0x05	; 5
    464e:	2a 60       	ori	r18, 0x0A	; 10
    4650:	25 b9       	out	0x05, r18	; 5
    4652:	25 b1       	in	r18, 0x05	; 5
    4654:	25 7f       	andi	r18, 0xF5	; 245
    4656:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4658:	25 b1       	in	r18, 0x05	; 5
    465a:	2a 60       	ori	r18, 0x0A	; 10
    465c:	25 b9       	out	0x05, r18	; 5
    465e:	25 b1       	in	r18, 0x05	; 5
    4660:	25 7f       	andi	r18, 0xF5	; 245
    4662:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 30));
    4664:	9c 01       	movw	r18, r24
    4666:	22 5e       	subi	r18, 0xE2	; 226
    4668:	3f 4f       	sbci	r19, 0xFF	; 255
    466a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    466e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4672:	e2 0f       	add	r30, r18
    4674:	f3 1f       	adc	r31, r19
    4676:	e4 91       	lpm	r30, Z
    4678:	2b b1       	in	r18, 0x0b	; 11
    467a:	74 e0       	ldi	r23, 0x04	; 4
    467c:	e7 9f       	mul	r30, r23
    467e:	f0 01       	movw	r30, r0
    4680:	11 24       	eor	r1, r1
    4682:	23 70       	andi	r18, 0x03	; 3
    4684:	e2 2b       	or	r30, r18
    4686:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4688:	25 b1       	in	r18, 0x05	; 5
    468a:	2a 60       	ori	r18, 0x0A	; 10
    468c:	25 b9       	out	0x05, r18	; 5
    468e:	25 b1       	in	r18, 0x05	; 5
    4690:	25 7f       	andi	r18, 0xF5	; 245
    4692:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4694:	25 b1       	in	r18, 0x05	; 5
    4696:	2a 60       	ori	r18, 0x0A	; 10
    4698:	25 b9       	out	0x05, r18	; 5
    469a:	25 b1       	in	r18, 0x05	; 5
    469c:	25 7f       	andi	r18, 0xF5	; 245
    469e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 31));
    46a0:	9c 01       	movw	r18, r24
    46a2:	21 5e       	subi	r18, 0xE1	; 225
    46a4:	3f 4f       	sbci	r19, 0xFF	; 255
    46a6:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    46aa:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    46ae:	e2 0f       	add	r30, r18
    46b0:	f3 1f       	adc	r31, r19
    46b2:	e4 91       	lpm	r30, Z
    46b4:	2b b1       	in	r18, 0x0b	; 11
    46b6:	34 e0       	ldi	r19, 0x04	; 4
    46b8:	e3 9f       	mul	r30, r19
    46ba:	f0 01       	movw	r30, r0
    46bc:	11 24       	eor	r1, r1
    46be:	23 70       	andi	r18, 0x03	; 3
    46c0:	e2 2b       	or	r30, r18
    46c2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    46c4:	25 b1       	in	r18, 0x05	; 5
    46c6:	2a 60       	ori	r18, 0x0A	; 10
    46c8:	25 b9       	out	0x05, r18	; 5
    46ca:	25 b1       	in	r18, 0x05	; 5
    46cc:	25 7f       	andi	r18, 0xF5	; 245
    46ce:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    46d0:	25 b1       	in	r18, 0x05	; 5
    46d2:	2a 60       	ori	r18, 0x0A	; 10
    46d4:	25 b9       	out	0x05, r18	; 5
    46d6:	25 b1       	in	r18, 0x05	; 5
    46d8:	25 7f       	andi	r18, 0xF5	; 245
    46da:	25 b9       	out	0x05, r18	; 5

            // chip 4
            SET_COLOR(pgm_read_byte(buffer + index + 32));
    46dc:	9c 01       	movw	r18, r24
    46de:	20 5e       	subi	r18, 0xE0	; 224
    46e0:	3f 4f       	sbci	r19, 0xFF	; 255
    46e2:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    46e6:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    46ea:	e2 0f       	add	r30, r18
    46ec:	f3 1f       	adc	r31, r19
    46ee:	e4 91       	lpm	r30, Z
    46f0:	2b b1       	in	r18, 0x0b	; 11
    46f2:	64 e0       	ldi	r22, 0x04	; 4
    46f4:	e6 9f       	mul	r30, r22
    46f6:	f0 01       	movw	r30, r0
    46f8:	11 24       	eor	r1, r1
    46fa:	23 70       	andi	r18, 0x03	; 3
    46fc:	e2 2b       	or	r30, r18
    46fe:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4700:	25 b1       	in	r18, 0x05	; 5
    4702:	2a 60       	ori	r18, 0x0A	; 10
    4704:	25 b9       	out	0x05, r18	; 5
    4706:	25 b1       	in	r18, 0x05	; 5
    4708:	25 7f       	andi	r18, 0xF5	; 245
    470a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    470c:	25 b1       	in	r18, 0x05	; 5
    470e:	2a 60       	ori	r18, 0x0A	; 10
    4710:	25 b9       	out	0x05, r18	; 5
    4712:	25 b1       	in	r18, 0x05	; 5
    4714:	25 7f       	andi	r18, 0xF5	; 245
    4716:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 33));
    4718:	9c 01       	movw	r18, r24
    471a:	2f 5d       	subi	r18, 0xDF	; 223
    471c:	3f 4f       	sbci	r19, 0xFF	; 255
    471e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4722:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4726:	e2 0f       	add	r30, r18
    4728:	f3 1f       	adc	r31, r19
    472a:	e4 91       	lpm	r30, Z
    472c:	2b b1       	in	r18, 0x0b	; 11
    472e:	74 e0       	ldi	r23, 0x04	; 4
    4730:	e7 9f       	mul	r30, r23
    4732:	f0 01       	movw	r30, r0
    4734:	11 24       	eor	r1, r1
    4736:	23 70       	andi	r18, 0x03	; 3
    4738:	e2 2b       	or	r30, r18
    473a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    473c:	25 b1       	in	r18, 0x05	; 5
    473e:	2a 60       	ori	r18, 0x0A	; 10
    4740:	25 b9       	out	0x05, r18	; 5
    4742:	25 b1       	in	r18, 0x05	; 5
    4744:	25 7f       	andi	r18, 0xF5	; 245
    4746:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4748:	25 b1       	in	r18, 0x05	; 5
    474a:	2a 60       	ori	r18, 0x0A	; 10
    474c:	25 b9       	out	0x05, r18	; 5
    474e:	25 b1       	in	r18, 0x05	; 5
    4750:	25 7f       	andi	r18, 0xF5	; 245
    4752:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 34));
    4754:	9c 01       	movw	r18, r24
    4756:	2e 5d       	subi	r18, 0xDE	; 222
    4758:	3f 4f       	sbci	r19, 0xFF	; 255
    475a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    475e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4762:	e2 0f       	add	r30, r18
    4764:	f3 1f       	adc	r31, r19
    4766:	e4 91       	lpm	r30, Z
    4768:	2b b1       	in	r18, 0x0b	; 11
    476a:	34 e0       	ldi	r19, 0x04	; 4
    476c:	e3 9f       	mul	r30, r19
    476e:	f0 01       	movw	r30, r0
    4770:	11 24       	eor	r1, r1
    4772:	23 70       	andi	r18, 0x03	; 3
    4774:	e2 2b       	or	r30, r18
    4776:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4778:	25 b1       	in	r18, 0x05	; 5
    477a:	2a 60       	ori	r18, 0x0A	; 10
    477c:	25 b9       	out	0x05, r18	; 5
    477e:	25 b1       	in	r18, 0x05	; 5
    4780:	25 7f       	andi	r18, 0xF5	; 245
    4782:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4784:	25 b1       	in	r18, 0x05	; 5
    4786:	2a 60       	ori	r18, 0x0A	; 10
    4788:	25 b9       	out	0x05, r18	; 5
    478a:	25 b1       	in	r18, 0x05	; 5
    478c:	25 7f       	andi	r18, 0xF5	; 245
    478e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 35));
    4790:	9c 01       	movw	r18, r24
    4792:	2d 5d       	subi	r18, 0xDD	; 221
    4794:	3f 4f       	sbci	r19, 0xFF	; 255
    4796:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    479a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    479e:	e2 0f       	add	r30, r18
    47a0:	f3 1f       	adc	r31, r19
    47a2:	e4 91       	lpm	r30, Z
    47a4:	2b b1       	in	r18, 0x0b	; 11
    47a6:	64 e0       	ldi	r22, 0x04	; 4
    47a8:	e6 9f       	mul	r30, r22
    47aa:	f0 01       	movw	r30, r0
    47ac:	11 24       	eor	r1, r1
    47ae:	23 70       	andi	r18, 0x03	; 3
    47b0:	e2 2b       	or	r30, r18
    47b2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    47b4:	25 b1       	in	r18, 0x05	; 5
    47b6:	2a 60       	ori	r18, 0x0A	; 10
    47b8:	25 b9       	out	0x05, r18	; 5
    47ba:	25 b1       	in	r18, 0x05	; 5
    47bc:	25 7f       	andi	r18, 0xF5	; 245
    47be:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    47c0:	25 b1       	in	r18, 0x05	; 5
    47c2:	2a 60       	ori	r18, 0x0A	; 10
    47c4:	25 b9       	out	0x05, r18	; 5
    47c6:	25 b1       	in	r18, 0x05	; 5
    47c8:	25 7f       	andi	r18, 0xF5	; 245
    47ca:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 36));
    47cc:	9c 01       	movw	r18, r24
    47ce:	2c 5d       	subi	r18, 0xDC	; 220
    47d0:	3f 4f       	sbci	r19, 0xFF	; 255
    47d2:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    47d6:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    47da:	e2 0f       	add	r30, r18
    47dc:	f3 1f       	adc	r31, r19
    47de:	e4 91       	lpm	r30, Z
    47e0:	2b b1       	in	r18, 0x0b	; 11
    47e2:	74 e0       	ldi	r23, 0x04	; 4
    47e4:	e7 9f       	mul	r30, r23
    47e6:	f0 01       	movw	r30, r0
    47e8:	11 24       	eor	r1, r1
    47ea:	23 70       	andi	r18, 0x03	; 3
    47ec:	e2 2b       	or	r30, r18
    47ee:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    47f0:	25 b1       	in	r18, 0x05	; 5
    47f2:	2a 60       	ori	r18, 0x0A	; 10
    47f4:	25 b9       	out	0x05, r18	; 5
    47f6:	25 b1       	in	r18, 0x05	; 5
    47f8:	25 7f       	andi	r18, 0xF5	; 245
    47fa:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    47fc:	25 b1       	in	r18, 0x05	; 5
    47fe:	2a 60       	ori	r18, 0x0A	; 10
    4800:	25 b9       	out	0x05, r18	; 5
    4802:	25 b1       	in	r18, 0x05	; 5
    4804:	25 7f       	andi	r18, 0xF5	; 245
    4806:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 37));
    4808:	9c 01       	movw	r18, r24
    480a:	2b 5d       	subi	r18, 0xDB	; 219
    480c:	3f 4f       	sbci	r19, 0xFF	; 255
    480e:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4812:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4816:	e2 0f       	add	r30, r18
    4818:	f3 1f       	adc	r31, r19
    481a:	e4 91       	lpm	r30, Z
    481c:	2b b1       	in	r18, 0x0b	; 11
    481e:	34 e0       	ldi	r19, 0x04	; 4
    4820:	e3 9f       	mul	r30, r19
    4822:	f0 01       	movw	r30, r0
    4824:	11 24       	eor	r1, r1
    4826:	23 70       	andi	r18, 0x03	; 3
    4828:	e2 2b       	or	r30, r18
    482a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    482c:	25 b1       	in	r18, 0x05	; 5
    482e:	2a 60       	ori	r18, 0x0A	; 10
    4830:	25 b9       	out	0x05, r18	; 5
    4832:	25 b1       	in	r18, 0x05	; 5
    4834:	25 7f       	andi	r18, 0xF5	; 245
    4836:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4838:	25 b1       	in	r18, 0x05	; 5
    483a:	2a 60       	ori	r18, 0x0A	; 10
    483c:	25 b9       	out	0x05, r18	; 5
    483e:	25 b1       	in	r18, 0x05	; 5
    4840:	25 7f       	andi	r18, 0xF5	; 245
    4842:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 38));
    4844:	9c 01       	movw	r18, r24
    4846:	2a 5d       	subi	r18, 0xDA	; 218
    4848:	3f 4f       	sbci	r19, 0xFF	; 255
    484a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    484e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4852:	e2 0f       	add	r30, r18
    4854:	f3 1f       	adc	r31, r19
    4856:	e4 91       	lpm	r30, Z
    4858:	2b b1       	in	r18, 0x0b	; 11
    485a:	64 e0       	ldi	r22, 0x04	; 4
    485c:	e6 9f       	mul	r30, r22
    485e:	f0 01       	movw	r30, r0
    4860:	11 24       	eor	r1, r1
    4862:	23 70       	andi	r18, 0x03	; 3
    4864:	e2 2b       	or	r30, r18
    4866:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4868:	25 b1       	in	r18, 0x05	; 5
    486a:	2a 60       	ori	r18, 0x0A	; 10
    486c:	25 b9       	out	0x05, r18	; 5
    486e:	25 b1       	in	r18, 0x05	; 5
    4870:	25 7f       	andi	r18, 0xF5	; 245
    4872:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4874:	25 b1       	in	r18, 0x05	; 5
    4876:	2a 60       	ori	r18, 0x0A	; 10
    4878:	25 b9       	out	0x05, r18	; 5
    487a:	25 b1       	in	r18, 0x05	; 5
    487c:	25 7f       	andi	r18, 0xF5	; 245
    487e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 39));
    4880:	9c 01       	movw	r18, r24
    4882:	29 5d       	subi	r18, 0xD9	; 217
    4884:	3f 4f       	sbci	r19, 0xFF	; 255
    4886:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    488a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    488e:	e2 0f       	add	r30, r18
    4890:	f3 1f       	adc	r31, r19
    4892:	e4 91       	lpm	r30, Z
    4894:	2b b1       	in	r18, 0x0b	; 11
    4896:	74 e0       	ldi	r23, 0x04	; 4
    4898:	e7 9f       	mul	r30, r23
    489a:	f0 01       	movw	r30, r0
    489c:	11 24       	eor	r1, r1
    489e:	23 70       	andi	r18, 0x03	; 3
    48a0:	e2 2b       	or	r30, r18
    48a2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    48a4:	25 b1       	in	r18, 0x05	; 5
    48a6:	2a 60       	ori	r18, 0x0A	; 10
    48a8:	25 b9       	out	0x05, r18	; 5
    48aa:	25 b1       	in	r18, 0x05	; 5
    48ac:	25 7f       	andi	r18, 0xF5	; 245
    48ae:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    48b0:	25 b1       	in	r18, 0x05	; 5
    48b2:	2a 60       	ori	r18, 0x0A	; 10
    48b4:	25 b9       	out	0x05, r18	; 5
    48b6:	25 b1       	in	r18, 0x05	; 5
    48b8:	25 7f       	andi	r18, 0xF5	; 245
    48ba:	25 b9       	out	0x05, r18	; 5

            // chip 5
            SET_COLOR(pgm_read_byte(buffer + index + 40));
    48bc:	9c 01       	movw	r18, r24
    48be:	28 5d       	subi	r18, 0xD8	; 216
    48c0:	3f 4f       	sbci	r19, 0xFF	; 255
    48c2:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    48c6:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    48ca:	e2 0f       	add	r30, r18
    48cc:	f3 1f       	adc	r31, r19
    48ce:	e4 91       	lpm	r30, Z
    48d0:	2b b1       	in	r18, 0x0b	; 11
    48d2:	34 e0       	ldi	r19, 0x04	; 4
    48d4:	e3 9f       	mul	r30, r19
    48d6:	f0 01       	movw	r30, r0
    48d8:	11 24       	eor	r1, r1
    48da:	23 70       	andi	r18, 0x03	; 3
    48dc:	e2 2b       	or	r30, r18
    48de:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    48e0:	25 b1       	in	r18, 0x05	; 5
    48e2:	2a 60       	ori	r18, 0x0A	; 10
    48e4:	25 b9       	out	0x05, r18	; 5
    48e6:	25 b1       	in	r18, 0x05	; 5
    48e8:	25 7f       	andi	r18, 0xF5	; 245
    48ea:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    48ec:	25 b1       	in	r18, 0x05	; 5
    48ee:	2a 60       	ori	r18, 0x0A	; 10
    48f0:	25 b9       	out	0x05, r18	; 5
    48f2:	25 b1       	in	r18, 0x05	; 5
    48f4:	25 7f       	andi	r18, 0xF5	; 245
    48f6:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 41));
    48f8:	9c 01       	movw	r18, r24
    48fa:	27 5d       	subi	r18, 0xD7	; 215
    48fc:	3f 4f       	sbci	r19, 0xFF	; 255
    48fe:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4902:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4906:	e2 0f       	add	r30, r18
    4908:	f3 1f       	adc	r31, r19
    490a:	e4 91       	lpm	r30, Z
    490c:	2b b1       	in	r18, 0x0b	; 11
    490e:	64 e0       	ldi	r22, 0x04	; 4
    4910:	e6 9f       	mul	r30, r22
    4912:	f0 01       	movw	r30, r0
    4914:	11 24       	eor	r1, r1
    4916:	23 70       	andi	r18, 0x03	; 3
    4918:	e2 2b       	or	r30, r18
    491a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    491c:	25 b1       	in	r18, 0x05	; 5
    491e:	2a 60       	ori	r18, 0x0A	; 10
    4920:	25 b9       	out	0x05, r18	; 5
    4922:	25 b1       	in	r18, 0x05	; 5
    4924:	25 7f       	andi	r18, 0xF5	; 245
    4926:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4928:	25 b1       	in	r18, 0x05	; 5
    492a:	2a 60       	ori	r18, 0x0A	; 10
    492c:	25 b9       	out	0x05, r18	; 5
    492e:	25 b1       	in	r18, 0x05	; 5
    4930:	25 7f       	andi	r18, 0xF5	; 245
    4932:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 42));
    4934:	9c 01       	movw	r18, r24
    4936:	26 5d       	subi	r18, 0xD6	; 214
    4938:	3f 4f       	sbci	r19, 0xFF	; 255
    493a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    493e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4942:	e2 0f       	add	r30, r18
    4944:	f3 1f       	adc	r31, r19
    4946:	e4 91       	lpm	r30, Z
    4948:	2b b1       	in	r18, 0x0b	; 11
    494a:	74 e0       	ldi	r23, 0x04	; 4
    494c:	e7 9f       	mul	r30, r23
    494e:	f0 01       	movw	r30, r0
    4950:	11 24       	eor	r1, r1
    4952:	23 70       	andi	r18, 0x03	; 3
    4954:	e2 2b       	or	r30, r18
    4956:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4958:	25 b1       	in	r18, 0x05	; 5
    495a:	2a 60       	ori	r18, 0x0A	; 10
    495c:	25 b9       	out	0x05, r18	; 5
    495e:	25 b1       	in	r18, 0x05	; 5
    4960:	25 7f       	andi	r18, 0xF5	; 245
    4962:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4964:	25 b1       	in	r18, 0x05	; 5
    4966:	2a 60       	ori	r18, 0x0A	; 10
    4968:	25 b9       	out	0x05, r18	; 5
    496a:	25 b1       	in	r18, 0x05	; 5
    496c:	25 7f       	andi	r18, 0xF5	; 245
    496e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 43));
    4970:	9c 01       	movw	r18, r24
    4972:	25 5d       	subi	r18, 0xD5	; 213
    4974:	3f 4f       	sbci	r19, 0xFF	; 255
    4976:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    497a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    497e:	e2 0f       	add	r30, r18
    4980:	f3 1f       	adc	r31, r19
    4982:	e4 91       	lpm	r30, Z
    4984:	2b b1       	in	r18, 0x0b	; 11
    4986:	34 e0       	ldi	r19, 0x04	; 4
    4988:	e3 9f       	mul	r30, r19
    498a:	f0 01       	movw	r30, r0
    498c:	11 24       	eor	r1, r1
    498e:	23 70       	andi	r18, 0x03	; 3
    4990:	e2 2b       	or	r30, r18
    4992:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4994:	25 b1       	in	r18, 0x05	; 5
    4996:	2a 60       	ori	r18, 0x0A	; 10
    4998:	25 b9       	out	0x05, r18	; 5
    499a:	25 b1       	in	r18, 0x05	; 5
    499c:	25 7f       	andi	r18, 0xF5	; 245
    499e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    49a0:	25 b1       	in	r18, 0x05	; 5
    49a2:	2a 60       	ori	r18, 0x0A	; 10
    49a4:	25 b9       	out	0x05, r18	; 5
    49a6:	25 b1       	in	r18, 0x05	; 5
    49a8:	25 7f       	andi	r18, 0xF5	; 245
    49aa:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 44));
    49ac:	9c 01       	movw	r18, r24
    49ae:	24 5d       	subi	r18, 0xD4	; 212
    49b0:	3f 4f       	sbci	r19, 0xFF	; 255
    49b2:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    49b6:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    49ba:	e2 0f       	add	r30, r18
    49bc:	f3 1f       	adc	r31, r19
    49be:	e4 91       	lpm	r30, Z
    49c0:	2b b1       	in	r18, 0x0b	; 11
    49c2:	64 e0       	ldi	r22, 0x04	; 4
    49c4:	e6 9f       	mul	r30, r22
    49c6:	f0 01       	movw	r30, r0
    49c8:	11 24       	eor	r1, r1
    49ca:	23 70       	andi	r18, 0x03	; 3
    49cc:	e2 2b       	or	r30, r18
    49ce:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    49d0:	25 b1       	in	r18, 0x05	; 5
    49d2:	2a 60       	ori	r18, 0x0A	; 10
    49d4:	25 b9       	out	0x05, r18	; 5
    49d6:	25 b1       	in	r18, 0x05	; 5
    49d8:	25 7f       	andi	r18, 0xF5	; 245
    49da:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    49dc:	25 b1       	in	r18, 0x05	; 5
    49de:	2a 60       	ori	r18, 0x0A	; 10
    49e0:	25 b9       	out	0x05, r18	; 5
    49e2:	25 b1       	in	r18, 0x05	; 5
    49e4:	25 7f       	andi	r18, 0xF5	; 245
    49e6:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 45));
    49e8:	9c 01       	movw	r18, r24
    49ea:	23 5d       	subi	r18, 0xD3	; 211
    49ec:	3f 4f       	sbci	r19, 0xFF	; 255
    49ee:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    49f2:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    49f6:	e2 0f       	add	r30, r18
    49f8:	f3 1f       	adc	r31, r19
    49fa:	e4 91       	lpm	r30, Z
    49fc:	2b b1       	in	r18, 0x0b	; 11
    49fe:	74 e0       	ldi	r23, 0x04	; 4
    4a00:	e7 9f       	mul	r30, r23
    4a02:	f0 01       	movw	r30, r0
    4a04:	11 24       	eor	r1, r1
    4a06:	23 70       	andi	r18, 0x03	; 3
    4a08:	e2 2b       	or	r30, r18
    4a0a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4a0c:	25 b1       	in	r18, 0x05	; 5
    4a0e:	2a 60       	ori	r18, 0x0A	; 10
    4a10:	25 b9       	out	0x05, r18	; 5
    4a12:	25 b1       	in	r18, 0x05	; 5
    4a14:	25 7f       	andi	r18, 0xF5	; 245
    4a16:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4a18:	25 b1       	in	r18, 0x05	; 5
    4a1a:	2a 60       	ori	r18, 0x0A	; 10
    4a1c:	25 b9       	out	0x05, r18	; 5
    4a1e:	25 b1       	in	r18, 0x05	; 5
    4a20:	25 7f       	andi	r18, 0xF5	; 245
    4a22:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 46));
    4a24:	9c 01       	movw	r18, r24
    4a26:	22 5d       	subi	r18, 0xD2	; 210
    4a28:	3f 4f       	sbci	r19, 0xFF	; 255
    4a2a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4a2e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4a32:	e2 0f       	add	r30, r18
    4a34:	f3 1f       	adc	r31, r19
    4a36:	e4 91       	lpm	r30, Z
    4a38:	2b b1       	in	r18, 0x0b	; 11
    4a3a:	34 e0       	ldi	r19, 0x04	; 4
    4a3c:	e3 9f       	mul	r30, r19
    4a3e:	f0 01       	movw	r30, r0
    4a40:	11 24       	eor	r1, r1
    4a42:	23 70       	andi	r18, 0x03	; 3
    4a44:	e2 2b       	or	r30, r18
    4a46:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4a48:	25 b1       	in	r18, 0x05	; 5
    4a4a:	2a 60       	ori	r18, 0x0A	; 10
    4a4c:	25 b9       	out	0x05, r18	; 5
    4a4e:	25 b1       	in	r18, 0x05	; 5
    4a50:	25 7f       	andi	r18, 0xF5	; 245
    4a52:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4a54:	25 b1       	in	r18, 0x05	; 5
    4a56:	2a 60       	ori	r18, 0x0A	; 10
    4a58:	25 b9       	out	0x05, r18	; 5
    4a5a:	25 b1       	in	r18, 0x05	; 5
    4a5c:	25 7f       	andi	r18, 0xF5	; 245
    4a5e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 47));
    4a60:	9c 01       	movw	r18, r24
    4a62:	21 5d       	subi	r18, 0xD1	; 209
    4a64:	3f 4f       	sbci	r19, 0xFF	; 255
    4a66:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4a6a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4a6e:	e2 0f       	add	r30, r18
    4a70:	f3 1f       	adc	r31, r19
    4a72:	e4 91       	lpm	r30, Z
    4a74:	2b b1       	in	r18, 0x0b	; 11
    4a76:	64 e0       	ldi	r22, 0x04	; 4
    4a78:	e6 9f       	mul	r30, r22
    4a7a:	f0 01       	movw	r30, r0
    4a7c:	11 24       	eor	r1, r1
    4a7e:	23 70       	andi	r18, 0x03	; 3
    4a80:	e2 2b       	or	r30, r18
    4a82:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4a84:	25 b1       	in	r18, 0x05	; 5
    4a86:	2a 60       	ori	r18, 0x0A	; 10
    4a88:	25 b9       	out	0x05, r18	; 5
    4a8a:	25 b1       	in	r18, 0x05	; 5
    4a8c:	25 7f       	andi	r18, 0xF5	; 245
    4a8e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4a90:	25 b1       	in	r18, 0x05	; 5
    4a92:	2a 60       	ori	r18, 0x0A	; 10
    4a94:	25 b9       	out	0x05, r18	; 5
    4a96:	25 b1       	in	r18, 0x05	; 5
    4a98:	25 7f       	andi	r18, 0xF5	; 245
    4a9a:	25 b9       	out	0x05, r18	; 5

            // chip 6
            SET_COLOR(pgm_read_byte(buffer + index + 48));
    4a9c:	9c 01       	movw	r18, r24
    4a9e:	20 5d       	subi	r18, 0xD0	; 208
    4aa0:	3f 4f       	sbci	r19, 0xFF	; 255
    4aa2:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4aa6:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4aaa:	e2 0f       	add	r30, r18
    4aac:	f3 1f       	adc	r31, r19
    4aae:	e4 91       	lpm	r30, Z
    4ab0:	2b b1       	in	r18, 0x0b	; 11
    4ab2:	74 e0       	ldi	r23, 0x04	; 4
    4ab4:	e7 9f       	mul	r30, r23
    4ab6:	f0 01       	movw	r30, r0
    4ab8:	11 24       	eor	r1, r1
    4aba:	23 70       	andi	r18, 0x03	; 3
    4abc:	e2 2b       	or	r30, r18
    4abe:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4ac0:	25 b1       	in	r18, 0x05	; 5
    4ac2:	2a 60       	ori	r18, 0x0A	; 10
    4ac4:	25 b9       	out	0x05, r18	; 5
    4ac6:	25 b1       	in	r18, 0x05	; 5
    4ac8:	25 7f       	andi	r18, 0xF5	; 245
    4aca:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4acc:	25 b1       	in	r18, 0x05	; 5
    4ace:	2a 60       	ori	r18, 0x0A	; 10
    4ad0:	25 b9       	out	0x05, r18	; 5
    4ad2:	25 b1       	in	r18, 0x05	; 5
    4ad4:	25 7f       	andi	r18, 0xF5	; 245
    4ad6:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 49));
    4ad8:	9c 01       	movw	r18, r24
    4ada:	2f 5c       	subi	r18, 0xCF	; 207
    4adc:	3f 4f       	sbci	r19, 0xFF	; 255
    4ade:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4ae2:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4ae6:	e2 0f       	add	r30, r18
    4ae8:	f3 1f       	adc	r31, r19
    4aea:	e4 91       	lpm	r30, Z
    4aec:	2b b1       	in	r18, 0x0b	; 11
    4aee:	34 e0       	ldi	r19, 0x04	; 4
    4af0:	e3 9f       	mul	r30, r19
    4af2:	f0 01       	movw	r30, r0
    4af4:	11 24       	eor	r1, r1
    4af6:	23 70       	andi	r18, 0x03	; 3
    4af8:	e2 2b       	or	r30, r18
    4afa:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4afc:	25 b1       	in	r18, 0x05	; 5
    4afe:	2a 60       	ori	r18, 0x0A	; 10
    4b00:	25 b9       	out	0x05, r18	; 5
    4b02:	25 b1       	in	r18, 0x05	; 5
    4b04:	25 7f       	andi	r18, 0xF5	; 245
    4b06:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4b08:	25 b1       	in	r18, 0x05	; 5
    4b0a:	2a 60       	ori	r18, 0x0A	; 10
    4b0c:	25 b9       	out	0x05, r18	; 5
    4b0e:	25 b1       	in	r18, 0x05	; 5
    4b10:	25 7f       	andi	r18, 0xF5	; 245
    4b12:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 50));
    4b14:	9c 01       	movw	r18, r24
    4b16:	2e 5c       	subi	r18, 0xCE	; 206
    4b18:	3f 4f       	sbci	r19, 0xFF	; 255
    4b1a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4b1e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4b22:	e2 0f       	add	r30, r18
    4b24:	f3 1f       	adc	r31, r19
    4b26:	e4 91       	lpm	r30, Z
    4b28:	2b b1       	in	r18, 0x0b	; 11
    4b2a:	64 e0       	ldi	r22, 0x04	; 4
    4b2c:	e6 9f       	mul	r30, r22
    4b2e:	f0 01       	movw	r30, r0
    4b30:	11 24       	eor	r1, r1
    4b32:	23 70       	andi	r18, 0x03	; 3
    4b34:	e2 2b       	or	r30, r18
    4b36:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4b38:	25 b1       	in	r18, 0x05	; 5
    4b3a:	2a 60       	ori	r18, 0x0A	; 10
    4b3c:	25 b9       	out	0x05, r18	; 5
    4b3e:	25 b1       	in	r18, 0x05	; 5
    4b40:	25 7f       	andi	r18, 0xF5	; 245
    4b42:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4b44:	25 b1       	in	r18, 0x05	; 5
    4b46:	2a 60       	ori	r18, 0x0A	; 10
    4b48:	25 b9       	out	0x05, r18	; 5
    4b4a:	25 b1       	in	r18, 0x05	; 5
    4b4c:	25 7f       	andi	r18, 0xF5	; 245
    4b4e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 51));
    4b50:	9c 01       	movw	r18, r24
    4b52:	2d 5c       	subi	r18, 0xCD	; 205
    4b54:	3f 4f       	sbci	r19, 0xFF	; 255
    4b56:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4b5a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4b5e:	e2 0f       	add	r30, r18
    4b60:	f3 1f       	adc	r31, r19
    4b62:	e4 91       	lpm	r30, Z
    4b64:	2b b1       	in	r18, 0x0b	; 11
    4b66:	74 e0       	ldi	r23, 0x04	; 4
    4b68:	e7 9f       	mul	r30, r23
    4b6a:	f0 01       	movw	r30, r0
    4b6c:	11 24       	eor	r1, r1
    4b6e:	23 70       	andi	r18, 0x03	; 3
    4b70:	e2 2b       	or	r30, r18
    4b72:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4b74:	25 b1       	in	r18, 0x05	; 5
    4b76:	2a 60       	ori	r18, 0x0A	; 10
    4b78:	25 b9       	out	0x05, r18	; 5
    4b7a:	25 b1       	in	r18, 0x05	; 5
    4b7c:	25 7f       	andi	r18, 0xF5	; 245
    4b7e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4b80:	25 b1       	in	r18, 0x05	; 5
    4b82:	2a 60       	ori	r18, 0x0A	; 10
    4b84:	25 b9       	out	0x05, r18	; 5
    4b86:	25 b1       	in	r18, 0x05	; 5
    4b88:	25 7f       	andi	r18, 0xF5	; 245
    4b8a:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 52));
    4b8c:	9c 01       	movw	r18, r24
    4b8e:	2c 5c       	subi	r18, 0xCC	; 204
    4b90:	3f 4f       	sbci	r19, 0xFF	; 255
    4b92:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4b96:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4b9a:	e2 0f       	add	r30, r18
    4b9c:	f3 1f       	adc	r31, r19
    4b9e:	e4 91       	lpm	r30, Z
    4ba0:	2b b1       	in	r18, 0x0b	; 11
    4ba2:	34 e0       	ldi	r19, 0x04	; 4
    4ba4:	e3 9f       	mul	r30, r19
    4ba6:	f0 01       	movw	r30, r0
    4ba8:	11 24       	eor	r1, r1
    4baa:	23 70       	andi	r18, 0x03	; 3
    4bac:	e2 2b       	or	r30, r18
    4bae:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4bb0:	25 b1       	in	r18, 0x05	; 5
    4bb2:	2a 60       	ori	r18, 0x0A	; 10
    4bb4:	25 b9       	out	0x05, r18	; 5
    4bb6:	25 b1       	in	r18, 0x05	; 5
    4bb8:	25 7f       	andi	r18, 0xF5	; 245
    4bba:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4bbc:	25 b1       	in	r18, 0x05	; 5
    4bbe:	2a 60       	ori	r18, 0x0A	; 10
    4bc0:	25 b9       	out	0x05, r18	; 5
    4bc2:	25 b1       	in	r18, 0x05	; 5
    4bc4:	25 7f       	andi	r18, 0xF5	; 245
    4bc6:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 53));
    4bc8:	9c 01       	movw	r18, r24
    4bca:	2b 5c       	subi	r18, 0xCB	; 203
    4bcc:	3f 4f       	sbci	r19, 0xFF	; 255
    4bce:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4bd2:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4bd6:	e2 0f       	add	r30, r18
    4bd8:	f3 1f       	adc	r31, r19
    4bda:	e4 91       	lpm	r30, Z
    4bdc:	2b b1       	in	r18, 0x0b	; 11
    4bde:	64 e0       	ldi	r22, 0x04	; 4
    4be0:	e6 9f       	mul	r30, r22
    4be2:	f0 01       	movw	r30, r0
    4be4:	11 24       	eor	r1, r1
    4be6:	23 70       	andi	r18, 0x03	; 3
    4be8:	e2 2b       	or	r30, r18
    4bea:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4bec:	25 b1       	in	r18, 0x05	; 5
    4bee:	2a 60       	ori	r18, 0x0A	; 10
    4bf0:	25 b9       	out	0x05, r18	; 5
    4bf2:	25 b1       	in	r18, 0x05	; 5
    4bf4:	25 7f       	andi	r18, 0xF5	; 245
    4bf6:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4bf8:	25 b1       	in	r18, 0x05	; 5
    4bfa:	2a 60       	ori	r18, 0x0A	; 10
    4bfc:	25 b9       	out	0x05, r18	; 5
    4bfe:	25 b1       	in	r18, 0x05	; 5
    4c00:	25 7f       	andi	r18, 0xF5	; 245
    4c02:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 54));
    4c04:	9c 01       	movw	r18, r24
    4c06:	2a 5c       	subi	r18, 0xCA	; 202
    4c08:	3f 4f       	sbci	r19, 0xFF	; 255
    4c0a:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4c0e:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4c12:	e2 0f       	add	r30, r18
    4c14:	f3 1f       	adc	r31, r19
    4c16:	e4 91       	lpm	r30, Z
    4c18:	2b b1       	in	r18, 0x0b	; 11
    4c1a:	74 e0       	ldi	r23, 0x04	; 4
    4c1c:	e7 9f       	mul	r30, r23
    4c1e:	f0 01       	movw	r30, r0
    4c20:	11 24       	eor	r1, r1
    4c22:	23 70       	andi	r18, 0x03	; 3
    4c24:	e2 2b       	or	r30, r18
    4c26:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4c28:	25 b1       	in	r18, 0x05	; 5
    4c2a:	2a 60       	ori	r18, 0x0A	; 10
    4c2c:	25 b9       	out	0x05, r18	; 5
    4c2e:	25 b1       	in	r18, 0x05	; 5
    4c30:	25 7f       	andi	r18, 0xF5	; 245
    4c32:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4c34:	25 b1       	in	r18, 0x05	; 5
    4c36:	2a 60       	ori	r18, 0x0A	; 10
    4c38:	25 b9       	out	0x05, r18	; 5
    4c3a:	25 b1       	in	r18, 0x05	; 5
    4c3c:	25 7f       	andi	r18, 0xF5	; 245
    4c3e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 55));
    4c40:	9c 01       	movw	r18, r24
    4c42:	29 5c       	subi	r18, 0xC9	; 201
    4c44:	3f 4f       	sbci	r19, 0xFF	; 255
    4c46:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4c4a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4c4e:	e2 0f       	add	r30, r18
    4c50:	f3 1f       	adc	r31, r19
    4c52:	e4 91       	lpm	r30, Z
    4c54:	2b b1       	in	r18, 0x0b	; 11
    4c56:	34 e0       	ldi	r19, 0x04	; 4
    4c58:	e3 9f       	mul	r30, r19
    4c5a:	f0 01       	movw	r30, r0
    4c5c:	11 24       	eor	r1, r1
    4c5e:	23 70       	andi	r18, 0x03	; 3
    4c60:	e2 2b       	or	r30, r18
    4c62:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4c64:	25 b1       	in	r18, 0x05	; 5
    4c66:	2a 60       	ori	r18, 0x0A	; 10
    4c68:	25 b9       	out	0x05, r18	; 5
    4c6a:	25 b1       	in	r18, 0x05	; 5
    4c6c:	25 7f       	andi	r18, 0xF5	; 245
    4c6e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4c70:	25 b1       	in	r18, 0x05	; 5
    4c72:	2a 60       	ori	r18, 0x0A	; 10
    4c74:	25 b9       	out	0x05, r18	; 5
    4c76:	25 b1       	in	r18, 0x05	; 5
    4c78:	25 7f       	andi	r18, 0xF5	; 245
    4c7a:	25 b9       	out	0x05, r18	; 5

            // chip 7
            SET_COLOR(pgm_read_byte(buffer + index + 56));
    4c7c:	9c 01       	movw	r18, r24
    4c7e:	28 5c       	subi	r18, 0xC8	; 200
    4c80:	3f 4f       	sbci	r19, 0xFF	; 255
    4c82:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4c86:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4c8a:	e2 0f       	add	r30, r18
    4c8c:	f3 1f       	adc	r31, r19
    4c8e:	e4 91       	lpm	r30, Z
    4c90:	2b b1       	in	r18, 0x0b	; 11
    4c92:	64 e0       	ldi	r22, 0x04	; 4
    4c94:	e6 9f       	mul	r30, r22
    4c96:	f0 01       	movw	r30, r0
    4c98:	11 24       	eor	r1, r1
    4c9a:	23 70       	andi	r18, 0x03	; 3
    4c9c:	e2 2b       	or	r30, r18
    4c9e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4ca0:	25 b1       	in	r18, 0x05	; 5
    4ca2:	2a 60       	ori	r18, 0x0A	; 10
    4ca4:	25 b9       	out	0x05, r18	; 5
    4ca6:	25 b1       	in	r18, 0x05	; 5
    4ca8:	25 7f       	andi	r18, 0xF5	; 245
    4caa:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4cac:	25 b1       	in	r18, 0x05	; 5
    4cae:	2a 60       	ori	r18, 0x0A	; 10
    4cb0:	25 b9       	out	0x05, r18	; 5
    4cb2:	25 b1       	in	r18, 0x05	; 5
    4cb4:	25 7f       	andi	r18, 0xF5	; 245
    4cb6:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 57));
    4cb8:	9c 01       	movw	r18, r24
    4cba:	27 5c       	subi	r18, 0xC7	; 199
    4cbc:	3f 4f       	sbci	r19, 0xFF	; 255
    4cbe:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4cc2:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4cc6:	e2 0f       	add	r30, r18
    4cc8:	f3 1f       	adc	r31, r19
    4cca:	e4 91       	lpm	r30, Z
    4ccc:	2b b1       	in	r18, 0x0b	; 11
    4cce:	74 e0       	ldi	r23, 0x04	; 4
    4cd0:	e7 9f       	mul	r30, r23
    4cd2:	f0 01       	movw	r30, r0
    4cd4:	11 24       	eor	r1, r1
    4cd6:	23 70       	andi	r18, 0x03	; 3
    4cd8:	e2 2b       	or	r30, r18
    4cda:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4cdc:	25 b1       	in	r18, 0x05	; 5
    4cde:	2a 60       	ori	r18, 0x0A	; 10
    4ce0:	25 b9       	out	0x05, r18	; 5
    4ce2:	25 b1       	in	r18, 0x05	; 5
    4ce4:	25 7f       	andi	r18, 0xF5	; 245
    4ce6:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4ce8:	25 b1       	in	r18, 0x05	; 5
    4cea:	2a 60       	ori	r18, 0x0A	; 10
    4cec:	25 b9       	out	0x05, r18	; 5
    4cee:	25 b1       	in	r18, 0x05	; 5
    4cf0:	25 7f       	andi	r18, 0xF5	; 245
    4cf2:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 58));
    4cf4:	9c 01       	movw	r18, r24
    4cf6:	26 5c       	subi	r18, 0xC6	; 198
    4cf8:	3f 4f       	sbci	r19, 0xFF	; 255
    4cfa:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4cfe:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4d02:	e2 0f       	add	r30, r18
    4d04:	f3 1f       	adc	r31, r19
    4d06:	e4 91       	lpm	r30, Z
    4d08:	2b b1       	in	r18, 0x0b	; 11
    4d0a:	34 e0       	ldi	r19, 0x04	; 4
    4d0c:	e3 9f       	mul	r30, r19
    4d0e:	f0 01       	movw	r30, r0
    4d10:	11 24       	eor	r1, r1
    4d12:	23 70       	andi	r18, 0x03	; 3
    4d14:	e2 2b       	or	r30, r18
    4d16:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4d18:	25 b1       	in	r18, 0x05	; 5
    4d1a:	2a 60       	ori	r18, 0x0A	; 10
    4d1c:	25 b9       	out	0x05, r18	; 5
    4d1e:	25 b1       	in	r18, 0x05	; 5
    4d20:	25 7f       	andi	r18, 0xF5	; 245
    4d22:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4d24:	25 b1       	in	r18, 0x05	; 5
    4d26:	2a 60       	ori	r18, 0x0A	; 10
    4d28:	25 b9       	out	0x05, r18	; 5
    4d2a:	25 b1       	in	r18, 0x05	; 5
    4d2c:	25 7f       	andi	r18, 0xF5	; 245
    4d2e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 59));
    4d30:	9c 01       	movw	r18, r24
    4d32:	25 5c       	subi	r18, 0xC5	; 197
    4d34:	3f 4f       	sbci	r19, 0xFF	; 255
    4d36:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4d3a:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4d3e:	e2 0f       	add	r30, r18
    4d40:	f3 1f       	adc	r31, r19
    4d42:	e4 91       	lpm	r30, Z
    4d44:	2b b1       	in	r18, 0x0b	; 11
    4d46:	64 e0       	ldi	r22, 0x04	; 4
    4d48:	e6 9f       	mul	r30, r22
    4d4a:	f0 01       	movw	r30, r0
    4d4c:	11 24       	eor	r1, r1
    4d4e:	23 70       	andi	r18, 0x03	; 3
    4d50:	e2 2b       	or	r30, r18
    4d52:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4d54:	25 b1       	in	r18, 0x05	; 5
    4d56:	2a 60       	ori	r18, 0x0A	; 10
    4d58:	25 b9       	out	0x05, r18	; 5
    4d5a:	25 b1       	in	r18, 0x05	; 5
    4d5c:	25 7f       	andi	r18, 0xF5	; 245
    4d5e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4d60:	25 b1       	in	r18, 0x05	; 5
    4d62:	2a 60       	ori	r18, 0x0A	; 10
    4d64:	25 b9       	out	0x05, r18	; 5
    4d66:	25 b1       	in	r18, 0x05	; 5
    4d68:	25 7f       	andi	r18, 0xF5	; 245
    4d6a:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 60));
    4d6c:	9c 01       	movw	r18, r24
    4d6e:	24 5c       	subi	r18, 0xC4	; 196
    4d70:	3f 4f       	sbci	r19, 0xFF	; 255
    4d72:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4d76:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4d7a:	e2 0f       	add	r30, r18
    4d7c:	f3 1f       	adc	r31, r19
    4d7e:	e4 91       	lpm	r30, Z
    4d80:	2b b1       	in	r18, 0x0b	; 11
    4d82:	74 e0       	ldi	r23, 0x04	; 4
    4d84:	e7 9f       	mul	r30, r23
    4d86:	f0 01       	movw	r30, r0
    4d88:	11 24       	eor	r1, r1
    4d8a:	23 70       	andi	r18, 0x03	; 3
    4d8c:	e2 2b       	or	r30, r18
    4d8e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4d90:	25 b1       	in	r18, 0x05	; 5
    4d92:	2a 60       	ori	r18, 0x0A	; 10
    4d94:	25 b9       	out	0x05, r18	; 5
    4d96:	25 b1       	in	r18, 0x05	; 5
    4d98:	25 7f       	andi	r18, 0xF5	; 245
    4d9a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4d9c:	25 b1       	in	r18, 0x05	; 5
    4d9e:	2a 60       	ori	r18, 0x0A	; 10
    4da0:	25 b9       	out	0x05, r18	; 5
    4da2:	25 b1       	in	r18, 0x05	; 5
    4da4:	25 7f       	andi	r18, 0xF5	; 245
    4da6:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 61));
    4da8:	9c 01       	movw	r18, r24
    4daa:	23 5c       	subi	r18, 0xC3	; 195
    4dac:	3f 4f       	sbci	r19, 0xFF	; 255
    4dae:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4db2:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4db6:	e2 0f       	add	r30, r18
    4db8:	f3 1f       	adc	r31, r19
    4dba:	e4 91       	lpm	r30, Z
    4dbc:	2b b1       	in	r18, 0x0b	; 11
    4dbe:	34 e0       	ldi	r19, 0x04	; 4
    4dc0:	e3 9f       	mul	r30, r19
    4dc2:	f0 01       	movw	r30, r0
    4dc4:	11 24       	eor	r1, r1
    4dc6:	23 70       	andi	r18, 0x03	; 3
    4dc8:	e2 2b       	or	r30, r18
    4dca:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4dcc:	25 b1       	in	r18, 0x05	; 5
    4dce:	2a 60       	ori	r18, 0x0A	; 10
    4dd0:	25 b9       	out	0x05, r18	; 5
    4dd2:	25 b1       	in	r18, 0x05	; 5
    4dd4:	25 7f       	andi	r18, 0xF5	; 245
    4dd6:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4dd8:	25 b1       	in	r18, 0x05	; 5
    4dda:	2a 60       	ori	r18, 0x0A	; 10
    4ddc:	25 b9       	out	0x05, r18	; 5
    4dde:	25 b1       	in	r18, 0x05	; 5
    4de0:	25 7f       	andi	r18, 0xF5	; 245
    4de2:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 62));
    4de4:	9c 01       	movw	r18, r24
    4de6:	22 5c       	subi	r18, 0xC2	; 194
    4de8:	3f 4f       	sbci	r19, 0xFF	; 255
    4dea:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4dee:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4df2:	e2 0f       	add	r30, r18
    4df4:	f3 1f       	adc	r31, r19
    4df6:	e4 91       	lpm	r30, Z
    4df8:	2b b1       	in	r18, 0x0b	; 11
    4dfa:	64 e0       	ldi	r22, 0x04	; 4
    4dfc:	e6 9f       	mul	r30, r22
    4dfe:	f0 01       	movw	r30, r0
    4e00:	11 24       	eor	r1, r1
    4e02:	23 70       	andi	r18, 0x03	; 3
    4e04:	e2 2b       	or	r30, r18
    4e06:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4e08:	25 b1       	in	r18, 0x05	; 5
    4e0a:	2a 60       	ori	r18, 0x0A	; 10
    4e0c:	25 b9       	out	0x05, r18	; 5
    4e0e:	25 b1       	in	r18, 0x05	; 5
    4e10:	25 7f       	andi	r18, 0xF5	; 245
    4e12:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4e14:	25 b1       	in	r18, 0x05	; 5
    4e16:	2a 60       	ori	r18, 0x0A	; 10
    4e18:	25 b9       	out	0x05, r18	; 5
    4e1a:	25 b1       	in	r18, 0x05	; 5
    4e1c:	25 7f       	andi	r18, 0xF5	; 245
    4e1e:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(buffer + index + 63));
    4e20:	cf 96       	adiw	r24, 0x3f	; 63
    4e22:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <_edata>
    4e26:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <_edata+0x1>
    4e2a:	e8 0f       	add	r30, r24
    4e2c:	f9 1f       	adc	r31, r25
    4e2e:	84 91       	lpm	r24, Z
    4e30:	eb b1       	in	r30, 0x0b	; 11
    4e32:	74 e0       	ldi	r23, 0x04	; 4
    4e34:	87 9f       	mul	r24, r23
    4e36:	c0 01       	movw	r24, r0
    4e38:	11 24       	eor	r1, r1
    4e3a:	e3 70       	andi	r30, 0x03	; 3
    4e3c:	8e 2b       	or	r24, r30
    4e3e:	8b b9       	out	0x0b, r24	; 11
            PWCLK_GCLK;
    4e40:	85 b1       	in	r24, 0x05	; 5
    4e42:	8a 60       	ori	r24, 0x0A	; 10
    4e44:	85 b9       	out	0x05, r24	; 5
    4e46:	85 b1       	in	r24, 0x05	; 5
    4e48:	85 7f       	andi	r24, 0xF5	; 245
    4e4a:	85 b9       	out	0x05, r24	; 5

            // shift data into buffers
            HIGH_LAT;
    4e4c:	2a 9a       	sbi	0x05, 2	; 5
            PWCLK_GCLK;
    4e4e:	85 b1       	in	r24, 0x05	; 5
    4e50:	8a 60       	ori	r24, 0x0A	; 10
    4e52:	85 b9       	out	0x05, r24	; 5
    4e54:	85 b1       	in	r24, 0x05	; 5
    4e56:	85 7f       	andi	r24, 0xF5	; 245
    4e58:	85 b9       	out	0x05, r24	; 5
            CLEAR_LAT;
    4e5a:	2a 98       	cbi	0x05, 2	; 5

#pragma endregion // LLSB

#pragma region LSB_fake
            SET_COLOR(0);
    4e5c:	8b b1       	in	r24, 0x0b	; 11
    4e5e:	83 70       	andi	r24, 0x03	; 3
    4e60:	8b b9       	out	0x0b, r24	; 11

            PWCLK_GCLK;
    4e62:	85 b1       	in	r24, 0x05	; 5
    4e64:	8a 60       	ori	r24, 0x0A	; 10
    4e66:	85 b9       	out	0x05, r24	; 5
    4e68:	85 b1       	in	r24, 0x05	; 5
    4e6a:	85 7f       	andi	r24, 0xF5	; 245
    4e6c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4e6e:	85 b1       	in	r24, 0x05	; 5
    4e70:	8a 60       	ori	r24, 0x0A	; 10
    4e72:	85 b9       	out	0x05, r24	; 5
    4e74:	85 b1       	in	r24, 0x05	; 5
    4e76:	85 7f       	andi	r24, 0xF5	; 245
    4e78:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4e7a:	85 b1       	in	r24, 0x05	; 5
    4e7c:	8a 60       	ori	r24, 0x0A	; 10
    4e7e:	85 b9       	out	0x05, r24	; 5
    4e80:	85 b1       	in	r24, 0x05	; 5
    4e82:	85 7f       	andi	r24, 0xF5	; 245
    4e84:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4e86:	85 b1       	in	r24, 0x05	; 5
    4e88:	8a 60       	ori	r24, 0x0A	; 10
    4e8a:	85 b9       	out	0x05, r24	; 5
    4e8c:	85 b1       	in	r24, 0x05	; 5
    4e8e:	85 7f       	andi	r24, 0xF5	; 245
    4e90:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4e92:	85 b1       	in	r24, 0x05	; 5
    4e94:	8a 60       	ori	r24, 0x0A	; 10
    4e96:	85 b9       	out	0x05, r24	; 5
    4e98:	85 b1       	in	r24, 0x05	; 5
    4e9a:	85 7f       	andi	r24, 0xF5	; 245
    4e9c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4e9e:	85 b1       	in	r24, 0x05	; 5
    4ea0:	8a 60       	ori	r24, 0x0A	; 10
    4ea2:	85 b9       	out	0x05, r24	; 5
    4ea4:	85 b1       	in	r24, 0x05	; 5
    4ea6:	85 7f       	andi	r24, 0xF5	; 245
    4ea8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4eaa:	85 b1       	in	r24, 0x05	; 5
    4eac:	8a 60       	ori	r24, 0x0A	; 10
    4eae:	85 b9       	out	0x05, r24	; 5
    4eb0:	85 b1       	in	r24, 0x05	; 5
    4eb2:	85 7f       	andi	r24, 0xF5	; 245
    4eb4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4eb6:	85 b1       	in	r24, 0x05	; 5
    4eb8:	8a 60       	ori	r24, 0x0A	; 10
    4eba:	85 b9       	out	0x05, r24	; 5
    4ebc:	85 b1       	in	r24, 0x05	; 5
    4ebe:	85 7f       	andi	r24, 0xF5	; 245
    4ec0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4ec2:	85 b1       	in	r24, 0x05	; 5
    4ec4:	8a 60       	ori	r24, 0x0A	; 10
    4ec6:	85 b9       	out	0x05, r24	; 5
    4ec8:	85 b1       	in	r24, 0x05	; 5
    4eca:	85 7f       	andi	r24, 0xF5	; 245
    4ecc:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4ece:	85 b1       	in	r24, 0x05	; 5
    4ed0:	8a 60       	ori	r24, 0x0A	; 10
    4ed2:	85 b9       	out	0x05, r24	; 5
    4ed4:	85 b1       	in	r24, 0x05	; 5
    4ed6:	85 7f       	andi	r24, 0xF5	; 245
    4ed8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4eda:	85 b1       	in	r24, 0x05	; 5
    4edc:	8a 60       	ori	r24, 0x0A	; 10
    4ede:	85 b9       	out	0x05, r24	; 5
    4ee0:	85 b1       	in	r24, 0x05	; 5
    4ee2:	85 7f       	andi	r24, 0xF5	; 245
    4ee4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4ee6:	85 b1       	in	r24, 0x05	; 5
    4ee8:	8a 60       	ori	r24, 0x0A	; 10
    4eea:	85 b9       	out	0x05, r24	; 5
    4eec:	85 b1       	in	r24, 0x05	; 5
    4eee:	85 7f       	andi	r24, 0xF5	; 245
    4ef0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4ef2:	85 b1       	in	r24, 0x05	; 5
    4ef4:	8a 60       	ori	r24, 0x0A	; 10
    4ef6:	85 b9       	out	0x05, r24	; 5
    4ef8:	85 b1       	in	r24, 0x05	; 5
    4efa:	85 7f       	andi	r24, 0xF5	; 245
    4efc:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4efe:	85 b1       	in	r24, 0x05	; 5
    4f00:	8a 60       	ori	r24, 0x0A	; 10
    4f02:	85 b9       	out	0x05, r24	; 5
    4f04:	85 b1       	in	r24, 0x05	; 5
    4f06:	85 7f       	andi	r24, 0xF5	; 245
    4f08:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4f0a:	85 b1       	in	r24, 0x05	; 5
    4f0c:	8a 60       	ori	r24, 0x0A	; 10
    4f0e:	85 b9       	out	0x05, r24	; 5
    4f10:	85 b1       	in	r24, 0x05	; 5
    4f12:	85 7f       	andi	r24, 0xF5	; 245
    4f14:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4f16:	85 b1       	in	r24, 0x05	; 5
    4f18:	8a 60       	ori	r24, 0x0A	; 10
    4f1a:	85 b9       	out	0x05, r24	; 5
    4f1c:	85 b1       	in	r24, 0x05	; 5
    4f1e:	85 7f       	andi	r24, 0xF5	; 245
    4f20:	85 b9       	out	0x05, r24	; 5

            PWCLK_GCLK;
    4f22:	85 b1       	in	r24, 0x05	; 5
    4f24:	8a 60       	ori	r24, 0x0A	; 10
    4f26:	85 b9       	out	0x05, r24	; 5
    4f28:	85 b1       	in	r24, 0x05	; 5
    4f2a:	85 7f       	andi	r24, 0xF5	; 245
    4f2c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4f2e:	85 b1       	in	r24, 0x05	; 5
    4f30:	8a 60       	ori	r24, 0x0A	; 10
    4f32:	85 b9       	out	0x05, r24	; 5
    4f34:	85 b1       	in	r24, 0x05	; 5
    4f36:	85 7f       	andi	r24, 0xF5	; 245
    4f38:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4f3a:	85 b1       	in	r24, 0x05	; 5
    4f3c:	8a 60       	ori	r24, 0x0A	; 10
    4f3e:	85 b9       	out	0x05, r24	; 5
    4f40:	85 b1       	in	r24, 0x05	; 5
    4f42:	85 7f       	andi	r24, 0xF5	; 245
    4f44:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4f46:	85 b1       	in	r24, 0x05	; 5
    4f48:	8a 60       	ori	r24, 0x0A	; 10
    4f4a:	85 b9       	out	0x05, r24	; 5
    4f4c:	85 b1       	in	r24, 0x05	; 5
    4f4e:	85 7f       	andi	r24, 0xF5	; 245
    4f50:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4f52:	85 b1       	in	r24, 0x05	; 5
    4f54:	8a 60       	ori	r24, 0x0A	; 10
    4f56:	85 b9       	out	0x05, r24	; 5
    4f58:	85 b1       	in	r24, 0x05	; 5
    4f5a:	85 7f       	andi	r24, 0xF5	; 245
    4f5c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4f5e:	85 b1       	in	r24, 0x05	; 5
    4f60:	8a 60       	ori	r24, 0x0A	; 10
    4f62:	85 b9       	out	0x05, r24	; 5
    4f64:	85 b1       	in	r24, 0x05	; 5
    4f66:	85 7f       	andi	r24, 0xF5	; 245
    4f68:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4f6a:	85 b1       	in	r24, 0x05	; 5
    4f6c:	8a 60       	ori	r24, 0x0A	; 10
    4f6e:	85 b9       	out	0x05, r24	; 5
    4f70:	85 b1       	in	r24, 0x05	; 5
    4f72:	85 7f       	andi	r24, 0xF5	; 245
    4f74:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4f76:	85 b1       	in	r24, 0x05	; 5
    4f78:	8a 60       	ori	r24, 0x0A	; 10
    4f7a:	85 b9       	out	0x05, r24	; 5
    4f7c:	85 b1       	in	r24, 0x05	; 5
    4f7e:	85 7f       	andi	r24, 0xF5	; 245
    4f80:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4f82:	85 b1       	in	r24, 0x05	; 5
    4f84:	8a 60       	ori	r24, 0x0A	; 10
    4f86:	85 b9       	out	0x05, r24	; 5
    4f88:	85 b1       	in	r24, 0x05	; 5
    4f8a:	85 7f       	andi	r24, 0xF5	; 245
    4f8c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4f8e:	85 b1       	in	r24, 0x05	; 5
    4f90:	8a 60       	ori	r24, 0x0A	; 10
    4f92:	85 b9       	out	0x05, r24	; 5
    4f94:	85 b1       	in	r24, 0x05	; 5
    4f96:	85 7f       	andi	r24, 0xF5	; 245
    4f98:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4f9a:	85 b1       	in	r24, 0x05	; 5
    4f9c:	8a 60       	ori	r24, 0x0A	; 10
    4f9e:	85 b9       	out	0x05, r24	; 5
    4fa0:	85 b1       	in	r24, 0x05	; 5
    4fa2:	85 7f       	andi	r24, 0xF5	; 245
    4fa4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4fa6:	85 b1       	in	r24, 0x05	; 5
    4fa8:	8a 60       	ori	r24, 0x0A	; 10
    4faa:	85 b9       	out	0x05, r24	; 5
    4fac:	85 b1       	in	r24, 0x05	; 5
    4fae:	85 7f       	andi	r24, 0xF5	; 245
    4fb0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4fb2:	85 b1       	in	r24, 0x05	; 5
    4fb4:	8a 60       	ori	r24, 0x0A	; 10
    4fb6:	85 b9       	out	0x05, r24	; 5
    4fb8:	85 b1       	in	r24, 0x05	; 5
    4fba:	85 7f       	andi	r24, 0xF5	; 245
    4fbc:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4fbe:	85 b1       	in	r24, 0x05	; 5
    4fc0:	8a 60       	ori	r24, 0x0A	; 10
    4fc2:	85 b9       	out	0x05, r24	; 5
    4fc4:	85 b1       	in	r24, 0x05	; 5
    4fc6:	85 7f       	andi	r24, 0xF5	; 245
    4fc8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4fca:	85 b1       	in	r24, 0x05	; 5
    4fcc:	8a 60       	ori	r24, 0x0A	; 10
    4fce:	85 b9       	out	0x05, r24	; 5
    4fd0:	85 b1       	in	r24, 0x05	; 5
    4fd2:	85 7f       	andi	r24, 0xF5	; 245
    4fd4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4fd6:	85 b1       	in	r24, 0x05	; 5
    4fd8:	8a 60       	ori	r24, 0x0A	; 10
    4fda:	85 b9       	out	0x05, r24	; 5
    4fdc:	85 b1       	in	r24, 0x05	; 5
    4fde:	85 7f       	andi	r24, 0xF5	; 245
    4fe0:	85 b9       	out	0x05, r24	; 5

            PWCLK_GCLK;
    4fe2:	85 b1       	in	r24, 0x05	; 5
    4fe4:	8a 60       	ori	r24, 0x0A	; 10
    4fe6:	85 b9       	out	0x05, r24	; 5
    4fe8:	85 b1       	in	r24, 0x05	; 5
    4fea:	85 7f       	andi	r24, 0xF5	; 245
    4fec:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4fee:	85 b1       	in	r24, 0x05	; 5
    4ff0:	8a 60       	ori	r24, 0x0A	; 10
    4ff2:	85 b9       	out	0x05, r24	; 5
    4ff4:	85 b1       	in	r24, 0x05	; 5
    4ff6:	85 7f       	andi	r24, 0xF5	; 245
    4ff8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4ffa:	85 b1       	in	r24, 0x05	; 5
    4ffc:	8a 60       	ori	r24, 0x0A	; 10
    4ffe:	85 b9       	out	0x05, r24	; 5
    5000:	85 b1       	in	r24, 0x05	; 5
    5002:	85 7f       	andi	r24, 0xF5	; 245
    5004:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5006:	85 b1       	in	r24, 0x05	; 5
    5008:	8a 60       	ori	r24, 0x0A	; 10
    500a:	85 b9       	out	0x05, r24	; 5
    500c:	85 b1       	in	r24, 0x05	; 5
    500e:	85 7f       	andi	r24, 0xF5	; 245
    5010:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5012:	85 b1       	in	r24, 0x05	; 5
    5014:	8a 60       	ori	r24, 0x0A	; 10
    5016:	85 b9       	out	0x05, r24	; 5
    5018:	85 b1       	in	r24, 0x05	; 5
    501a:	85 7f       	andi	r24, 0xF5	; 245
    501c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    501e:	85 b1       	in	r24, 0x05	; 5
    5020:	8a 60       	ori	r24, 0x0A	; 10
    5022:	85 b9       	out	0x05, r24	; 5
    5024:	85 b1       	in	r24, 0x05	; 5
    5026:	85 7f       	andi	r24, 0xF5	; 245
    5028:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    502a:	85 b1       	in	r24, 0x05	; 5
    502c:	8a 60       	ori	r24, 0x0A	; 10
    502e:	85 b9       	out	0x05, r24	; 5
    5030:	85 b1       	in	r24, 0x05	; 5
    5032:	85 7f       	andi	r24, 0xF5	; 245
    5034:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5036:	85 b1       	in	r24, 0x05	; 5
    5038:	8a 60       	ori	r24, 0x0A	; 10
    503a:	85 b9       	out	0x05, r24	; 5
    503c:	85 b1       	in	r24, 0x05	; 5
    503e:	85 7f       	andi	r24, 0xF5	; 245
    5040:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5042:	85 b1       	in	r24, 0x05	; 5
    5044:	8a 60       	ori	r24, 0x0A	; 10
    5046:	85 b9       	out	0x05, r24	; 5
    5048:	85 b1       	in	r24, 0x05	; 5
    504a:	85 7f       	andi	r24, 0xF5	; 245
    504c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    504e:	85 b1       	in	r24, 0x05	; 5
    5050:	8a 60       	ori	r24, 0x0A	; 10
    5052:	85 b9       	out	0x05, r24	; 5
    5054:	85 b1       	in	r24, 0x05	; 5
    5056:	85 7f       	andi	r24, 0xF5	; 245
    5058:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    505a:	85 b1       	in	r24, 0x05	; 5
    505c:	8a 60       	ori	r24, 0x0A	; 10
    505e:	85 b9       	out	0x05, r24	; 5
    5060:	85 b1       	in	r24, 0x05	; 5
    5062:	85 7f       	andi	r24, 0xF5	; 245
    5064:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5066:	85 b1       	in	r24, 0x05	; 5
    5068:	8a 60       	ori	r24, 0x0A	; 10
    506a:	85 b9       	out	0x05, r24	; 5
    506c:	85 b1       	in	r24, 0x05	; 5
    506e:	85 7f       	andi	r24, 0xF5	; 245
    5070:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5072:	85 b1       	in	r24, 0x05	; 5
    5074:	8a 60       	ori	r24, 0x0A	; 10
    5076:	85 b9       	out	0x05, r24	; 5
    5078:	85 b1       	in	r24, 0x05	; 5
    507a:	85 7f       	andi	r24, 0xF5	; 245
    507c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    507e:	85 b1       	in	r24, 0x05	; 5
    5080:	8a 60       	ori	r24, 0x0A	; 10
    5082:	85 b9       	out	0x05, r24	; 5
    5084:	85 b1       	in	r24, 0x05	; 5
    5086:	85 7f       	andi	r24, 0xF5	; 245
    5088:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    508a:	85 b1       	in	r24, 0x05	; 5
    508c:	8a 60       	ori	r24, 0x0A	; 10
    508e:	85 b9       	out	0x05, r24	; 5
    5090:	85 b1       	in	r24, 0x05	; 5
    5092:	85 7f       	andi	r24, 0xF5	; 245
    5094:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5096:	85 b1       	in	r24, 0x05	; 5
    5098:	8a 60       	ori	r24, 0x0A	; 10
    509a:	85 b9       	out	0x05, r24	; 5
    509c:	85 b1       	in	r24, 0x05	; 5
    509e:	85 7f       	andi	r24, 0xF5	; 245
    50a0:	85 b9       	out	0x05, r24	; 5

            PWCLK_GCLK;
    50a2:	85 b1       	in	r24, 0x05	; 5
    50a4:	8a 60       	ori	r24, 0x0A	; 10
    50a6:	85 b9       	out	0x05, r24	; 5
    50a8:	85 b1       	in	r24, 0x05	; 5
    50aa:	85 7f       	andi	r24, 0xF5	; 245
    50ac:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    50ae:	85 b1       	in	r24, 0x05	; 5
    50b0:	8a 60       	ori	r24, 0x0A	; 10
    50b2:	85 b9       	out	0x05, r24	; 5
    50b4:	85 b1       	in	r24, 0x05	; 5
    50b6:	85 7f       	andi	r24, 0xF5	; 245
    50b8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    50ba:	85 b1       	in	r24, 0x05	; 5
    50bc:	8a 60       	ori	r24, 0x0A	; 10
    50be:	85 b9       	out	0x05, r24	; 5
    50c0:	85 b1       	in	r24, 0x05	; 5
    50c2:	85 7f       	andi	r24, 0xF5	; 245
    50c4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    50c6:	85 b1       	in	r24, 0x05	; 5
    50c8:	8a 60       	ori	r24, 0x0A	; 10
    50ca:	85 b9       	out	0x05, r24	; 5
    50cc:	85 b1       	in	r24, 0x05	; 5
    50ce:	85 7f       	andi	r24, 0xF5	; 245
    50d0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    50d2:	85 b1       	in	r24, 0x05	; 5
    50d4:	8a 60       	ori	r24, 0x0A	; 10
    50d6:	85 b9       	out	0x05, r24	; 5
    50d8:	85 b1       	in	r24, 0x05	; 5
    50da:	85 7f       	andi	r24, 0xF5	; 245
    50dc:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    50de:	85 b1       	in	r24, 0x05	; 5
    50e0:	8a 60       	ori	r24, 0x0A	; 10
    50e2:	85 b9       	out	0x05, r24	; 5
    50e4:	85 b1       	in	r24, 0x05	; 5
    50e6:	85 7f       	andi	r24, 0xF5	; 245
    50e8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    50ea:	85 b1       	in	r24, 0x05	; 5
    50ec:	8a 60       	ori	r24, 0x0A	; 10
    50ee:	85 b9       	out	0x05, r24	; 5
    50f0:	85 b1       	in	r24, 0x05	; 5
    50f2:	85 7f       	andi	r24, 0xF5	; 245
    50f4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    50f6:	85 b1       	in	r24, 0x05	; 5
    50f8:	8a 60       	ori	r24, 0x0A	; 10
    50fa:	85 b9       	out	0x05, r24	; 5
    50fc:	85 b1       	in	r24, 0x05	; 5
    50fe:	85 7f       	andi	r24, 0xF5	; 245
    5100:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5102:	85 b1       	in	r24, 0x05	; 5
    5104:	8a 60       	ori	r24, 0x0A	; 10
    5106:	85 b9       	out	0x05, r24	; 5
    5108:	85 b1       	in	r24, 0x05	; 5
    510a:	85 7f       	andi	r24, 0xF5	; 245
    510c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    510e:	85 b1       	in	r24, 0x05	; 5
    5110:	8a 60       	ori	r24, 0x0A	; 10
    5112:	85 b9       	out	0x05, r24	; 5
    5114:	85 b1       	in	r24, 0x05	; 5
    5116:	85 7f       	andi	r24, 0xF5	; 245
    5118:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    511a:	85 b1       	in	r24, 0x05	; 5
    511c:	8a 60       	ori	r24, 0x0A	; 10
    511e:	85 b9       	out	0x05, r24	; 5
    5120:	85 b1       	in	r24, 0x05	; 5
    5122:	85 7f       	andi	r24, 0xF5	; 245
    5124:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5126:	85 b1       	in	r24, 0x05	; 5
    5128:	8a 60       	ori	r24, 0x0A	; 10
    512a:	85 b9       	out	0x05, r24	; 5
    512c:	85 b1       	in	r24, 0x05	; 5
    512e:	85 7f       	andi	r24, 0xF5	; 245
    5130:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5132:	85 b1       	in	r24, 0x05	; 5
    5134:	8a 60       	ori	r24, 0x0A	; 10
    5136:	85 b9       	out	0x05, r24	; 5
    5138:	85 b1       	in	r24, 0x05	; 5
    513a:	85 7f       	andi	r24, 0xF5	; 245
    513c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    513e:	85 b1       	in	r24, 0x05	; 5
    5140:	8a 60       	ori	r24, 0x0A	; 10
    5142:	85 b9       	out	0x05, r24	; 5
    5144:	85 b1       	in	r24, 0x05	; 5
    5146:	85 7f       	andi	r24, 0xF5	; 245
    5148:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    514a:	85 b1       	in	r24, 0x05	; 5
    514c:	8a 60       	ori	r24, 0x0A	; 10
    514e:	85 b9       	out	0x05, r24	; 5
    5150:	85 b1       	in	r24, 0x05	; 5
    5152:	85 7f       	andi	r24, 0xF5	; 245
    5154:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5156:	85 b1       	in	r24, 0x05	; 5
    5158:	8a 60       	ori	r24, 0x0A	; 10
    515a:	85 b9       	out	0x05, r24	; 5
    515c:	85 b1       	in	r24, 0x05	; 5
    515e:	85 7f       	andi	r24, 0xF5	; 245
    5160:	85 b9       	out	0x05, r24	; 5

            PWCLK_GCLK;
    5162:	85 b1       	in	r24, 0x05	; 5
    5164:	8a 60       	ori	r24, 0x0A	; 10
    5166:	85 b9       	out	0x05, r24	; 5
    5168:	85 b1       	in	r24, 0x05	; 5
    516a:	85 7f       	andi	r24, 0xF5	; 245
    516c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    516e:	85 b1       	in	r24, 0x05	; 5
    5170:	8a 60       	ori	r24, 0x0A	; 10
    5172:	85 b9       	out	0x05, r24	; 5
    5174:	85 b1       	in	r24, 0x05	; 5
    5176:	85 7f       	andi	r24, 0xF5	; 245
    5178:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    517a:	85 b1       	in	r24, 0x05	; 5
    517c:	8a 60       	ori	r24, 0x0A	; 10
    517e:	85 b9       	out	0x05, r24	; 5
    5180:	85 b1       	in	r24, 0x05	; 5
    5182:	85 7f       	andi	r24, 0xF5	; 245
    5184:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5186:	85 b1       	in	r24, 0x05	; 5
    5188:	8a 60       	ori	r24, 0x0A	; 10
    518a:	85 b9       	out	0x05, r24	; 5
    518c:	85 b1       	in	r24, 0x05	; 5
    518e:	85 7f       	andi	r24, 0xF5	; 245
    5190:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5192:	85 b1       	in	r24, 0x05	; 5
    5194:	8a 60       	ori	r24, 0x0A	; 10
    5196:	85 b9       	out	0x05, r24	; 5
    5198:	85 b1       	in	r24, 0x05	; 5
    519a:	85 7f       	andi	r24, 0xF5	; 245
    519c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    519e:	85 b1       	in	r24, 0x05	; 5
    51a0:	8a 60       	ori	r24, 0x0A	; 10
    51a2:	85 b9       	out	0x05, r24	; 5
    51a4:	85 b1       	in	r24, 0x05	; 5
    51a6:	85 7f       	andi	r24, 0xF5	; 245
    51a8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    51aa:	85 b1       	in	r24, 0x05	; 5
    51ac:	8a 60       	ori	r24, 0x0A	; 10
    51ae:	85 b9       	out	0x05, r24	; 5
    51b0:	85 b1       	in	r24, 0x05	; 5
    51b2:	85 7f       	andi	r24, 0xF5	; 245
    51b4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    51b6:	85 b1       	in	r24, 0x05	; 5
    51b8:	8a 60       	ori	r24, 0x0A	; 10
    51ba:	85 b9       	out	0x05, r24	; 5
    51bc:	85 b1       	in	r24, 0x05	; 5
    51be:	85 7f       	andi	r24, 0xF5	; 245
    51c0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    51c2:	85 b1       	in	r24, 0x05	; 5
    51c4:	8a 60       	ori	r24, 0x0A	; 10
    51c6:	85 b9       	out	0x05, r24	; 5
    51c8:	85 b1       	in	r24, 0x05	; 5
    51ca:	85 7f       	andi	r24, 0xF5	; 245
    51cc:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    51ce:	85 b1       	in	r24, 0x05	; 5
    51d0:	8a 60       	ori	r24, 0x0A	; 10
    51d2:	85 b9       	out	0x05, r24	; 5
    51d4:	85 b1       	in	r24, 0x05	; 5
    51d6:	85 7f       	andi	r24, 0xF5	; 245
    51d8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    51da:	85 b1       	in	r24, 0x05	; 5
    51dc:	8a 60       	ori	r24, 0x0A	; 10
    51de:	85 b9       	out	0x05, r24	; 5
    51e0:	85 b1       	in	r24, 0x05	; 5
    51e2:	85 7f       	andi	r24, 0xF5	; 245
    51e4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    51e6:	85 b1       	in	r24, 0x05	; 5
    51e8:	8a 60       	ori	r24, 0x0A	; 10
    51ea:	85 b9       	out	0x05, r24	; 5
    51ec:	85 b1       	in	r24, 0x05	; 5
    51ee:	85 7f       	andi	r24, 0xF5	; 245
    51f0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    51f2:	85 b1       	in	r24, 0x05	; 5
    51f4:	8a 60       	ori	r24, 0x0A	; 10
    51f6:	85 b9       	out	0x05, r24	; 5
    51f8:	85 b1       	in	r24, 0x05	; 5
    51fa:	85 7f       	andi	r24, 0xF5	; 245
    51fc:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    51fe:	85 b1       	in	r24, 0x05	; 5
    5200:	8a 60       	ori	r24, 0x0A	; 10
    5202:	85 b9       	out	0x05, r24	; 5
    5204:	85 b1       	in	r24, 0x05	; 5
    5206:	85 7f       	andi	r24, 0xF5	; 245
    5208:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    520a:	85 b1       	in	r24, 0x05	; 5
    520c:	8a 60       	ori	r24, 0x0A	; 10
    520e:	85 b9       	out	0x05, r24	; 5
    5210:	85 b1       	in	r24, 0x05	; 5
    5212:	85 7f       	andi	r24, 0xF5	; 245
    5214:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5216:	85 b1       	in	r24, 0x05	; 5
    5218:	8a 60       	ori	r24, 0x0A	; 10
    521a:	85 b9       	out	0x05, r24	; 5
    521c:	85 b1       	in	r24, 0x05	; 5
    521e:	85 7f       	andi	r24, 0xF5	; 245
    5220:	85 b9       	out	0x05, r24	; 5

            PWCLK_GCLK;
    5222:	85 b1       	in	r24, 0x05	; 5
    5224:	8a 60       	ori	r24, 0x0A	; 10
    5226:	85 b9       	out	0x05, r24	; 5
    5228:	85 b1       	in	r24, 0x05	; 5
    522a:	85 7f       	andi	r24, 0xF5	; 245
    522c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    522e:	85 b1       	in	r24, 0x05	; 5
    5230:	8a 60       	ori	r24, 0x0A	; 10
    5232:	85 b9       	out	0x05, r24	; 5
    5234:	85 b1       	in	r24, 0x05	; 5
    5236:	85 7f       	andi	r24, 0xF5	; 245
    5238:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    523a:	85 b1       	in	r24, 0x05	; 5
    523c:	8a 60       	ori	r24, 0x0A	; 10
    523e:	85 b9       	out	0x05, r24	; 5
    5240:	85 b1       	in	r24, 0x05	; 5
    5242:	85 7f       	andi	r24, 0xF5	; 245
    5244:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5246:	85 b1       	in	r24, 0x05	; 5
    5248:	8a 60       	ori	r24, 0x0A	; 10
    524a:	85 b9       	out	0x05, r24	; 5
    524c:	85 b1       	in	r24, 0x05	; 5
    524e:	85 7f       	andi	r24, 0xF5	; 245
    5250:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5252:	85 b1       	in	r24, 0x05	; 5
    5254:	8a 60       	ori	r24, 0x0A	; 10
    5256:	85 b9       	out	0x05, r24	; 5
    5258:	85 b1       	in	r24, 0x05	; 5
    525a:	85 7f       	andi	r24, 0xF5	; 245
    525c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    525e:	85 b1       	in	r24, 0x05	; 5
    5260:	8a 60       	ori	r24, 0x0A	; 10
    5262:	85 b9       	out	0x05, r24	; 5
    5264:	85 b1       	in	r24, 0x05	; 5
    5266:	85 7f       	andi	r24, 0xF5	; 245
    5268:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    526a:	85 b1       	in	r24, 0x05	; 5
    526c:	8a 60       	ori	r24, 0x0A	; 10
    526e:	85 b9       	out	0x05, r24	; 5
    5270:	85 b1       	in	r24, 0x05	; 5
    5272:	85 7f       	andi	r24, 0xF5	; 245
    5274:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5276:	85 b1       	in	r24, 0x05	; 5
    5278:	8a 60       	ori	r24, 0x0A	; 10
    527a:	85 b9       	out	0x05, r24	; 5
    527c:	85 b1       	in	r24, 0x05	; 5
    527e:	85 7f       	andi	r24, 0xF5	; 245
    5280:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5282:	85 b1       	in	r24, 0x05	; 5
    5284:	8a 60       	ori	r24, 0x0A	; 10
    5286:	85 b9       	out	0x05, r24	; 5
    5288:	85 b1       	in	r24, 0x05	; 5
    528a:	85 7f       	andi	r24, 0xF5	; 245
    528c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    528e:	85 b1       	in	r24, 0x05	; 5
    5290:	8a 60       	ori	r24, 0x0A	; 10
    5292:	85 b9       	out	0x05, r24	; 5
    5294:	85 b1       	in	r24, 0x05	; 5
    5296:	85 7f       	andi	r24, 0xF5	; 245
    5298:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    529a:	85 b1       	in	r24, 0x05	; 5
    529c:	8a 60       	ori	r24, 0x0A	; 10
    529e:	85 b9       	out	0x05, r24	; 5
    52a0:	85 b1       	in	r24, 0x05	; 5
    52a2:	85 7f       	andi	r24, 0xF5	; 245
    52a4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    52a6:	85 b1       	in	r24, 0x05	; 5
    52a8:	8a 60       	ori	r24, 0x0A	; 10
    52aa:	85 b9       	out	0x05, r24	; 5
    52ac:	85 b1       	in	r24, 0x05	; 5
    52ae:	85 7f       	andi	r24, 0xF5	; 245
    52b0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    52b2:	85 b1       	in	r24, 0x05	; 5
    52b4:	8a 60       	ori	r24, 0x0A	; 10
    52b6:	85 b9       	out	0x05, r24	; 5
    52b8:	85 b1       	in	r24, 0x05	; 5
    52ba:	85 7f       	andi	r24, 0xF5	; 245
    52bc:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    52be:	85 b1       	in	r24, 0x05	; 5
    52c0:	8a 60       	ori	r24, 0x0A	; 10
    52c2:	85 b9       	out	0x05, r24	; 5
    52c4:	85 b1       	in	r24, 0x05	; 5
    52c6:	85 7f       	andi	r24, 0xF5	; 245
    52c8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    52ca:	85 b1       	in	r24, 0x05	; 5
    52cc:	8a 60       	ori	r24, 0x0A	; 10
    52ce:	85 b9       	out	0x05, r24	; 5
    52d0:	85 b1       	in	r24, 0x05	; 5
    52d2:	85 7f       	andi	r24, 0xF5	; 245
    52d4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    52d6:	85 b1       	in	r24, 0x05	; 5
    52d8:	8a 60       	ori	r24, 0x0A	; 10
    52da:	85 b9       	out	0x05, r24	; 5
    52dc:	85 b1       	in	r24, 0x05	; 5
    52de:	85 7f       	andi	r24, 0xF5	; 245
    52e0:	85 b9       	out	0x05, r24	; 5

            PWCLK_GCLK;
    52e2:	85 b1       	in	r24, 0x05	; 5
    52e4:	8a 60       	ori	r24, 0x0A	; 10
    52e6:	85 b9       	out	0x05, r24	; 5
    52e8:	85 b1       	in	r24, 0x05	; 5
    52ea:	85 7f       	andi	r24, 0xF5	; 245
    52ec:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    52ee:	85 b1       	in	r24, 0x05	; 5
    52f0:	8a 60       	ori	r24, 0x0A	; 10
    52f2:	85 b9       	out	0x05, r24	; 5
    52f4:	85 b1       	in	r24, 0x05	; 5
    52f6:	85 7f       	andi	r24, 0xF5	; 245
    52f8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    52fa:	85 b1       	in	r24, 0x05	; 5
    52fc:	8a 60       	ori	r24, 0x0A	; 10
    52fe:	85 b9       	out	0x05, r24	; 5
    5300:	85 b1       	in	r24, 0x05	; 5
    5302:	85 7f       	andi	r24, 0xF5	; 245
    5304:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5306:	85 b1       	in	r24, 0x05	; 5
    5308:	8a 60       	ori	r24, 0x0A	; 10
    530a:	85 b9       	out	0x05, r24	; 5
    530c:	85 b1       	in	r24, 0x05	; 5
    530e:	85 7f       	andi	r24, 0xF5	; 245
    5310:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5312:	85 b1       	in	r24, 0x05	; 5
    5314:	8a 60       	ori	r24, 0x0A	; 10
    5316:	85 b9       	out	0x05, r24	; 5
    5318:	85 b1       	in	r24, 0x05	; 5
    531a:	85 7f       	andi	r24, 0xF5	; 245
    531c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    531e:	85 b1       	in	r24, 0x05	; 5
    5320:	8a 60       	ori	r24, 0x0A	; 10
    5322:	85 b9       	out	0x05, r24	; 5
    5324:	85 b1       	in	r24, 0x05	; 5
    5326:	85 7f       	andi	r24, 0xF5	; 245
    5328:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    532a:	85 b1       	in	r24, 0x05	; 5
    532c:	8a 60       	ori	r24, 0x0A	; 10
    532e:	85 b9       	out	0x05, r24	; 5
    5330:	85 b1       	in	r24, 0x05	; 5
    5332:	85 7f       	andi	r24, 0xF5	; 245
    5334:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5336:	85 b1       	in	r24, 0x05	; 5
    5338:	8a 60       	ori	r24, 0x0A	; 10
    533a:	85 b9       	out	0x05, r24	; 5
    533c:	85 b1       	in	r24, 0x05	; 5
    533e:	85 7f       	andi	r24, 0xF5	; 245
    5340:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5342:	85 b1       	in	r24, 0x05	; 5
    5344:	8a 60       	ori	r24, 0x0A	; 10
    5346:	85 b9       	out	0x05, r24	; 5
    5348:	85 b1       	in	r24, 0x05	; 5
    534a:	85 7f       	andi	r24, 0xF5	; 245
    534c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    534e:	85 b1       	in	r24, 0x05	; 5
    5350:	8a 60       	ori	r24, 0x0A	; 10
    5352:	85 b9       	out	0x05, r24	; 5
    5354:	85 b1       	in	r24, 0x05	; 5
    5356:	85 7f       	andi	r24, 0xF5	; 245
    5358:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    535a:	85 b1       	in	r24, 0x05	; 5
    535c:	8a 60       	ori	r24, 0x0A	; 10
    535e:	85 b9       	out	0x05, r24	; 5
    5360:	85 b1       	in	r24, 0x05	; 5
    5362:	85 7f       	andi	r24, 0xF5	; 245
    5364:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5366:	85 b1       	in	r24, 0x05	; 5
    5368:	8a 60       	ori	r24, 0x0A	; 10
    536a:	85 b9       	out	0x05, r24	; 5
    536c:	85 b1       	in	r24, 0x05	; 5
    536e:	85 7f       	andi	r24, 0xF5	; 245
    5370:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5372:	85 b1       	in	r24, 0x05	; 5
    5374:	8a 60       	ori	r24, 0x0A	; 10
    5376:	85 b9       	out	0x05, r24	; 5
    5378:	85 b1       	in	r24, 0x05	; 5
    537a:	85 7f       	andi	r24, 0xF5	; 245
    537c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    537e:	85 b1       	in	r24, 0x05	; 5
    5380:	8a 60       	ori	r24, 0x0A	; 10
    5382:	85 b9       	out	0x05, r24	; 5
    5384:	85 b1       	in	r24, 0x05	; 5
    5386:	85 7f       	andi	r24, 0xF5	; 245
    5388:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    538a:	85 b1       	in	r24, 0x05	; 5
    538c:	8a 60       	ori	r24, 0x0A	; 10
    538e:	85 b9       	out	0x05, r24	; 5
    5390:	85 b1       	in	r24, 0x05	; 5
    5392:	85 7f       	andi	r24, 0xF5	; 245
    5394:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5396:	85 b1       	in	r24, 0x05	; 5
    5398:	8a 60       	ori	r24, 0x0A	; 10
    539a:	85 b9       	out	0x05, r24	; 5
    539c:	85 b1       	in	r24, 0x05	; 5
    539e:	85 7f       	andi	r24, 0xF5	; 245
    53a0:	85 b9       	out	0x05, r24	; 5

            PWCLK_GCLK;
    53a2:	85 b1       	in	r24, 0x05	; 5
    53a4:	8a 60       	ori	r24, 0x0A	; 10
    53a6:	85 b9       	out	0x05, r24	; 5
    53a8:	85 b1       	in	r24, 0x05	; 5
    53aa:	85 7f       	andi	r24, 0xF5	; 245
    53ac:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    53ae:	85 b1       	in	r24, 0x05	; 5
    53b0:	8a 60       	ori	r24, 0x0A	; 10
    53b2:	85 b9       	out	0x05, r24	; 5
    53b4:	85 b1       	in	r24, 0x05	; 5
    53b6:	85 7f       	andi	r24, 0xF5	; 245
    53b8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    53ba:	85 b1       	in	r24, 0x05	; 5
    53bc:	8a 60       	ori	r24, 0x0A	; 10
    53be:	85 b9       	out	0x05, r24	; 5
    53c0:	85 b1       	in	r24, 0x05	; 5
    53c2:	85 7f       	andi	r24, 0xF5	; 245
    53c4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    53c6:	85 b1       	in	r24, 0x05	; 5
    53c8:	8a 60       	ori	r24, 0x0A	; 10
    53ca:	85 b9       	out	0x05, r24	; 5
    53cc:	85 b1       	in	r24, 0x05	; 5
    53ce:	85 7f       	andi	r24, 0xF5	; 245
    53d0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    53d2:	85 b1       	in	r24, 0x05	; 5
    53d4:	8a 60       	ori	r24, 0x0A	; 10
    53d6:	85 b9       	out	0x05, r24	; 5
    53d8:	85 b1       	in	r24, 0x05	; 5
    53da:	85 7f       	andi	r24, 0xF5	; 245
    53dc:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    53de:	85 b1       	in	r24, 0x05	; 5
    53e0:	8a 60       	ori	r24, 0x0A	; 10
    53e2:	85 b9       	out	0x05, r24	; 5
    53e4:	85 b1       	in	r24, 0x05	; 5
    53e6:	85 7f       	andi	r24, 0xF5	; 245
    53e8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    53ea:	85 b1       	in	r24, 0x05	; 5
    53ec:	8a 60       	ori	r24, 0x0A	; 10
    53ee:	85 b9       	out	0x05, r24	; 5
    53f0:	85 b1       	in	r24, 0x05	; 5
    53f2:	85 7f       	andi	r24, 0xF5	; 245
    53f4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    53f6:	85 b1       	in	r24, 0x05	; 5
    53f8:	8a 60       	ori	r24, 0x0A	; 10
    53fa:	85 b9       	out	0x05, r24	; 5
    53fc:	85 b1       	in	r24, 0x05	; 5
    53fe:	85 7f       	andi	r24, 0xF5	; 245
    5400:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5402:	85 b1       	in	r24, 0x05	; 5
    5404:	8a 60       	ori	r24, 0x0A	; 10
    5406:	85 b9       	out	0x05, r24	; 5
    5408:	85 b1       	in	r24, 0x05	; 5
    540a:	85 7f       	andi	r24, 0xF5	; 245
    540c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    540e:	85 b1       	in	r24, 0x05	; 5
    5410:	8a 60       	ori	r24, 0x0A	; 10
    5412:	85 b9       	out	0x05, r24	; 5
    5414:	85 b1       	in	r24, 0x05	; 5
    5416:	85 7f       	andi	r24, 0xF5	; 245
    5418:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    541a:	85 b1       	in	r24, 0x05	; 5
    541c:	8a 60       	ori	r24, 0x0A	; 10
    541e:	85 b9       	out	0x05, r24	; 5
    5420:	85 b1       	in	r24, 0x05	; 5
    5422:	85 7f       	andi	r24, 0xF5	; 245
    5424:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5426:	85 b1       	in	r24, 0x05	; 5
    5428:	8a 60       	ori	r24, 0x0A	; 10
    542a:	85 b9       	out	0x05, r24	; 5
    542c:	85 b1       	in	r24, 0x05	; 5
    542e:	85 7f       	andi	r24, 0xF5	; 245
    5430:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    5432:	85 b1       	in	r24, 0x05	; 5
    5434:	8a 60       	ori	r24, 0x0A	; 10
    5436:	85 b9       	out	0x05, r24	; 5
    5438:	85 b1       	in	r24, 0x05	; 5
    543a:	85 7f       	andi	r24, 0xF5	; 245
    543c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    543e:	85 b1       	in	r24, 0x05	; 5
    5440:	8a 60       	ori	r24, 0x0A	; 10
    5442:	85 b9       	out	0x05, r24	; 5
    5444:	85 b1       	in	r24, 0x05	; 5
    5446:	85 7f       	andi	r24, 0xF5	; 245
    5448:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    544a:	85 b1       	in	r24, 0x05	; 5
    544c:	8a 60       	ori	r24, 0x0A	; 10
    544e:	85 b9       	out	0x05, r24	; 5
    5450:	85 b1       	in	r24, 0x05	; 5
    5452:	85 7f       	andi	r24, 0xF5	; 245
    5454:	85 b9       	out	0x05, r24	; 5

            HIGH_LAT;
    5456:	2a 9a       	sbi	0x05, 2	; 5
            PWCLK_GCLK;
    5458:	85 b1       	in	r24, 0x05	; 5
    545a:	8a 60       	ori	r24, 0x0A	; 10
    545c:	85 b9       	out	0x05, r24	; 5
    545e:	85 b1       	in	r24, 0x05	; 5
    5460:	85 7f       	andi	r24, 0xF5	; 245
    5462:	85 b9       	out	0x05, r24	; 5
            CLEAR_LAT;
    5464:	2a 98       	cbi	0x05, 2	; 5
    5466:	40 5e       	subi	r20, 0xE0	; 224
    5468:	5f 4f       	sbci	r21, 0xFF	; 255
#endif

    void displayFlashBuffer()
    {
        uint16_t index = 0;
        for (uint8_t y = 0; y < 32; y++) // 32 rows
    546a:	41 15       	cp	r20, r1
    546c:	84 e0       	ldi	r24, 0x04	; 4
    546e:	58 07       	cpc	r21, r24
    5470:	11 f0       	breq	.+4      	; 0x5476 <main+0x42c0>
    5472:	0c 94 22 09 	jmp	0x1244	; 0x1244 <main+0x8e>
            CLEAR_LAT;
#pragma endregion // LSB_fake
        }

        //  display all leds once done, so move data from latch registers to pwm modules, now with two/four bits of information
        HIGH_LAT;
    5476:	2a 9a       	sbi	0x05, 2	; 5
        PWCLK_GCLK;
    5478:	85 b1       	in	r24, 0x05	; 5
    547a:	8a 60       	ori	r24, 0x0A	; 10
    547c:	85 b9       	out	0x05, r24	; 5
    547e:	85 b1       	in	r24, 0x05	; 5
    5480:	85 7f       	andi	r24, 0xF5	; 245
    5482:	85 b9       	out	0x05, r24	; 5
        PWCLK_GCLK;
    5484:	85 b1       	in	r24, 0x05	; 5
    5486:	8a 60       	ori	r24, 0x0A	; 10
    5488:	85 b9       	out	0x05, r24	; 5
    548a:	85 b1       	in	r24, 0x05	; 5
    548c:	85 7f       	andi	r24, 0xF5	; 245
    548e:	85 b9       	out	0x05, r24	; 5
        CLEAR_LAT;
    5490:	2a 98       	cbi	0x05, 2	; 5
	
	setup();
    
	for (;;) {
		loop();
		if (serialEventRun) serialEventRun();
    5492:	20 97       	sbiw	r28, 0x00	; 0
    5494:	11 f4       	brne	.+4      	; 0x549a <main+0x42e4>
    5496:	0c 94 20 09 	jmp	0x1240	; 0x1240 <main+0x8a>
    549a:	0e 94 00 00 	call	0	; 0x0 <__vectors>
    549e:	0c 94 20 09 	jmp	0x1240	; 0x1240 <main+0x8a>
            CLEAR_RA;
            CLEAR_RC;
        }
        else
        {
            HIGH_RA;
    54a2:	40 9a       	sbi	0x08, 0	; 8
            CLEAR_RA;
    54a4:	40 98       	cbi	0x08, 0	; 8
    54a6:	0c 94 2b 09 	jmp	0x1256	; 0x1256 <main+0xa0>

000054aa <_GLOBAL__sub_I_panel>:
class Panel
{
public:
#ifdef PANEL_FLASH
    Panel(PGM_VOID_P buffer_in)
    {
    54aa:	e0 e0       	ldi	r30, 0x00	; 0
    54ac:	f1 e0       	ldi	r31, 0x01	; 1
    54ae:	14 82       	std	Z+4, r1	; 0x04
    54b0:	15 82       	std	Z+5, r1	; 0x05
    54b2:	16 82       	std	Z+6, r1	; 0x06
    54b4:	17 82       	std	Z+7, r1	; 0x07
        buffer = buffer_in;
    54b6:	88 e6       	ldi	r24, 0x68	; 104
    54b8:	90 e0       	ldi	r25, 0x00	; 0
    54ba:	91 83       	std	Z+1, r25	; 0x01
    54bc:	80 83       	st	Z, r24
        coloumns = PANEL_X;
    54be:	80 e4       	ldi	r24, 0x40	; 64
    54c0:	83 83       	std	Z+3, r24	; 0x03
        rows = PANEL_Y;
    54c2:	80 e2       	ldi	r24, 0x20	; 32
    54c4:	82 83       	std	Z+2, r24	; 0x02
        pinMode(RA, OUTPUT);
    54c6:	8e e0       	ldi	r24, 0x0E	; 14
    54c8:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(RC, OUTPUT);
    54cc:	80 e1       	ldi	r24, 0x10	; 16
    54ce:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(CLK, OUTPUT);
    54d2:	89 e0       	ldi	r24, 0x09	; 9
    54d4:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(RF, OUTPUT);
    54d8:	82 e0       	ldi	r24, 0x02	; 2
    54da:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(RS, OUTPUT);
    54de:	85 e0       	ldi	r24, 0x05	; 5
    54e0:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(GF, OUTPUT);
    54e4:	83 e0       	ldi	r24, 0x03	; 3
    54e6:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(GS, OUTPUT);
    54ea:	86 e0       	ldi	r24, 0x06	; 6
    54ec:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(BF, OUTPUT);
    54f0:	84 e0       	ldi	r24, 0x04	; 4
    54f2:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(BS, OUTPUT);
    54f6:	87 e0       	ldi	r24, 0x07	; 7
    54f8:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(LAT, OUTPUT);
    54fc:	8a e0       	ldi	r24, 0x0A	; 10
    54fe:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(OE, OUTPUT);
    5502:	8b e0       	ldi	r24, 0x0B	; 11
    5504:	0c 94 72 08 	jmp	0x10e4	; 0x10e4 <pinMode.constprop.2>

00005508 <__tablejump2__>:
    5508:	ee 0f       	add	r30, r30
    550a:	ff 1f       	adc	r31, r31
    550c:	05 90       	lpm	r0, Z+
    550e:	f4 91       	lpm	r31, Z
    5510:	e0 2d       	mov	r30, r0
    5512:	09 94       	ijmp

00005514 <_exit>:
    5514:	f8 94       	cli

00005516 <__stop_program>:
    5516:	ff cf       	rjmp	.-2      	; 0x5516 <__stop_program>
