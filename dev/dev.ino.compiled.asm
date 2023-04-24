
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
    10a4:	67 23       	and	r22, r23

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
    10ce:	0e 94 96 23 	call	0x472c	; 0x472c <__tablejump2__>
    10d2:	c2 35       	cpi	r28, 0x52	; 82
    10d4:	d1 07       	cpc	r29, r17
    10d6:	c9 f7       	brne	.-14     	; 0x10ca <__do_global_ctors+0x8>
    10d8:	0e 94 db 08 	call	0x11b6	; 0x11b6 <main>
    10dc:	0c 94 9c 23 	jmp	0x4738	; 0x4738 <_exit>

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
    124a:	0c 94 63 23 	jmp	0x46c6	; 0x46c6 <main+0x3510>
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
            index = buffer + ((y & ~1) << 5);
    125e:	ca 01       	movw	r24, r20
    1260:	80 7c       	andi	r24, 0xC0	; 192
    1262:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <_edata>
    1266:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <_edata+0x1>
    126a:	28 0f       	add	r18, r24
    126c:	39 1f       	adc	r19, r25

#pragma region MMSB
            // chip 0
            SET_COLOR(pgm_read_byte(index++));
    126e:	f9 01       	movw	r30, r18
    1270:	a4 91       	lpm	r26, Z
    1272:	6b b1       	in	r22, 0x0b	; 11
    1274:	74 e0       	ldi	r23, 0x04	; 4
    1276:	a7 9f       	mul	r26, r23
    1278:	f0 01       	movw	r30, r0
    127a:	11 24       	eor	r1, r1
    127c:	63 70       	andi	r22, 0x03	; 3
    127e:	6e 2b       	or	r22, r30
    1280:	6b b9       	out	0x0b, r22	; 11
            PWCLK_GCLK;
    1282:	65 b1       	in	r22, 0x05	; 5
    1284:	6a 60       	ori	r22, 0x0A	; 10
    1286:	65 b9       	out	0x05, r22	; 5
    1288:	65 b1       	in	r22, 0x05	; 5
    128a:	65 7f       	andi	r22, 0xF5	; 245
    128c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    128e:	65 b1       	in	r22, 0x05	; 5
    1290:	6a 60       	ori	r22, 0x0A	; 10
    1292:	65 b9       	out	0x05, r22	; 5
    1294:	65 b1       	in	r22, 0x05	; 5
    1296:	65 7f       	andi	r22, 0xF5	; 245
    1298:	65 b9       	out	0x05, r22	; 5
            // we send first the MMSB, then MSB, LSB, LLSB
            index = buffer + ((y & ~1) << 5);

#pragma region MMSB
            // chip 0
            SET_COLOR(pgm_read_byte(index++));
    129a:	f9 01       	movw	r30, r18
    129c:	31 96       	adiw	r30, 0x01	; 1
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    129e:	64 91       	lpm	r22, Z
    12a0:	eb b1       	in	r30, 0x0b	; 11
    12a2:	f4 e0       	ldi	r31, 0x04	; 4
    12a4:	6f 9f       	mul	r22, r31
    12a6:	b0 01       	movw	r22, r0
    12a8:	11 24       	eor	r1, r1
    12aa:	e3 70       	andi	r30, 0x03	; 3
    12ac:	e6 2b       	or	r30, r22
    12ae:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    12b0:	65 b1       	in	r22, 0x05	; 5
    12b2:	6a 60       	ori	r22, 0x0A	; 10
    12b4:	65 b9       	out	0x05, r22	; 5
    12b6:	65 b1       	in	r22, 0x05	; 5
    12b8:	65 7f       	andi	r22, 0xF5	; 245
    12ba:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    12bc:	65 b1       	in	r22, 0x05	; 5
    12be:	6a 60       	ori	r22, 0x0A	; 10
    12c0:	65 b9       	out	0x05, r22	; 5
    12c2:	65 b1       	in	r22, 0x05	; 5
    12c4:	65 7f       	andi	r22, 0xF5	; 245
    12c6:	65 b9       	out	0x05, r22	; 5
#pragma region MMSB
            // chip 0
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    12c8:	f9 01       	movw	r30, r18
    12ca:	32 96       	adiw	r30, 0x02	; 2
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    12cc:	64 91       	lpm	r22, Z
    12ce:	eb b1       	in	r30, 0x0b	; 11
    12d0:	f4 e0       	ldi	r31, 0x04	; 4
    12d2:	6f 9f       	mul	r22, r31
    12d4:	b0 01       	movw	r22, r0
    12d6:	11 24       	eor	r1, r1
    12d8:	e3 70       	andi	r30, 0x03	; 3
    12da:	e6 2b       	or	r30, r22
    12dc:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    12de:	65 b1       	in	r22, 0x05	; 5
    12e0:	6a 60       	ori	r22, 0x0A	; 10
    12e2:	65 b9       	out	0x05, r22	; 5
    12e4:	65 b1       	in	r22, 0x05	; 5
    12e6:	65 7f       	andi	r22, 0xF5	; 245
    12e8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    12ea:	65 b1       	in	r22, 0x05	; 5
    12ec:	6a 60       	ori	r22, 0x0A	; 10
    12ee:	65 b9       	out	0x05, r22	; 5
    12f0:	65 b1       	in	r22, 0x05	; 5
    12f2:	65 7f       	andi	r22, 0xF5	; 245
    12f4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    12f6:	f9 01       	movw	r30, r18
    12f8:	33 96       	adiw	r30, 0x03	; 3
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    12fa:	64 91       	lpm	r22, Z
    12fc:	eb b1       	in	r30, 0x0b	; 11
    12fe:	f4 e0       	ldi	r31, 0x04	; 4
    1300:	6f 9f       	mul	r22, r31
    1302:	b0 01       	movw	r22, r0
    1304:	11 24       	eor	r1, r1
    1306:	e3 70       	andi	r30, 0x03	; 3
    1308:	e6 2b       	or	r30, r22
    130a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    130c:	65 b1       	in	r22, 0x05	; 5
    130e:	6a 60       	ori	r22, 0x0A	; 10
    1310:	65 b9       	out	0x05, r22	; 5
    1312:	65 b1       	in	r22, 0x05	; 5
    1314:	65 7f       	andi	r22, 0xF5	; 245
    1316:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1318:	65 b1       	in	r22, 0x05	; 5
    131a:	6a 60       	ori	r22, 0x0A	; 10
    131c:	65 b9       	out	0x05, r22	; 5
    131e:	65 b1       	in	r22, 0x05	; 5
    1320:	65 7f       	andi	r22, 0xF5	; 245
    1322:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1324:	f9 01       	movw	r30, r18
    1326:	34 96       	adiw	r30, 0x04	; 4
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1328:	64 91       	lpm	r22, Z
    132a:	eb b1       	in	r30, 0x0b	; 11
    132c:	f4 e0       	ldi	r31, 0x04	; 4
    132e:	6f 9f       	mul	r22, r31
    1330:	b0 01       	movw	r22, r0
    1332:	11 24       	eor	r1, r1
    1334:	e3 70       	andi	r30, 0x03	; 3
    1336:	e6 2b       	or	r30, r22
    1338:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    133a:	65 b1       	in	r22, 0x05	; 5
    133c:	6a 60       	ori	r22, 0x0A	; 10
    133e:	65 b9       	out	0x05, r22	; 5
    1340:	65 b1       	in	r22, 0x05	; 5
    1342:	65 7f       	andi	r22, 0xF5	; 245
    1344:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1346:	65 b1       	in	r22, 0x05	; 5
    1348:	6a 60       	ori	r22, 0x0A	; 10
    134a:	65 b9       	out	0x05, r22	; 5
    134c:	65 b1       	in	r22, 0x05	; 5
    134e:	65 7f       	andi	r22, 0xF5	; 245
    1350:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1352:	f9 01       	movw	r30, r18
    1354:	35 96       	adiw	r30, 0x05	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1356:	64 91       	lpm	r22, Z
    1358:	eb b1       	in	r30, 0x0b	; 11
    135a:	f4 e0       	ldi	r31, 0x04	; 4
    135c:	6f 9f       	mul	r22, r31
    135e:	b0 01       	movw	r22, r0
    1360:	11 24       	eor	r1, r1
    1362:	e3 70       	andi	r30, 0x03	; 3
    1364:	e6 2b       	or	r30, r22
    1366:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1368:	65 b1       	in	r22, 0x05	; 5
    136a:	6a 60       	ori	r22, 0x0A	; 10
    136c:	65 b9       	out	0x05, r22	; 5
    136e:	65 b1       	in	r22, 0x05	; 5
    1370:	65 7f       	andi	r22, 0xF5	; 245
    1372:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1374:	65 b1       	in	r22, 0x05	; 5
    1376:	6a 60       	ori	r22, 0x0A	; 10
    1378:	65 b9       	out	0x05, r22	; 5
    137a:	65 b1       	in	r22, 0x05	; 5
    137c:	65 7f       	andi	r22, 0xF5	; 245
    137e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1380:	f9 01       	movw	r30, r18
    1382:	36 96       	adiw	r30, 0x06	; 6
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1384:	64 91       	lpm	r22, Z
    1386:	eb b1       	in	r30, 0x0b	; 11
    1388:	f4 e0       	ldi	r31, 0x04	; 4
    138a:	6f 9f       	mul	r22, r31
    138c:	b0 01       	movw	r22, r0
    138e:	11 24       	eor	r1, r1
    1390:	e3 70       	andi	r30, 0x03	; 3
    1392:	e6 2b       	or	r30, r22
    1394:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1396:	65 b1       	in	r22, 0x05	; 5
    1398:	6a 60       	ori	r22, 0x0A	; 10
    139a:	65 b9       	out	0x05, r22	; 5
    139c:	65 b1       	in	r22, 0x05	; 5
    139e:	65 7f       	andi	r22, 0xF5	; 245
    13a0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    13a2:	65 b1       	in	r22, 0x05	; 5
    13a4:	6a 60       	ori	r22, 0x0A	; 10
    13a6:	65 b9       	out	0x05, r22	; 5
    13a8:	65 b1       	in	r22, 0x05	; 5
    13aa:	65 7f       	andi	r22, 0xF5	; 245
    13ac:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    13ae:	f9 01       	movw	r30, r18
    13b0:	37 96       	adiw	r30, 0x07	; 7
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    13b2:	64 91       	lpm	r22, Z
    13b4:	eb b1       	in	r30, 0x0b	; 11
    13b6:	f4 e0       	ldi	r31, 0x04	; 4
    13b8:	6f 9f       	mul	r22, r31
    13ba:	b0 01       	movw	r22, r0
    13bc:	11 24       	eor	r1, r1
    13be:	e3 70       	andi	r30, 0x03	; 3
    13c0:	e6 2b       	or	r30, r22
    13c2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    13c4:	65 b1       	in	r22, 0x05	; 5
    13c6:	6a 60       	ori	r22, 0x0A	; 10
    13c8:	65 b9       	out	0x05, r22	; 5
    13ca:	65 b1       	in	r22, 0x05	; 5
    13cc:	65 7f       	andi	r22, 0xF5	; 245
    13ce:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    13d0:	65 b1       	in	r22, 0x05	; 5
    13d2:	6a 60       	ori	r22, 0x0A	; 10
    13d4:	65 b9       	out	0x05, r22	; 5
    13d6:	65 b1       	in	r22, 0x05	; 5
    13d8:	65 7f       	andi	r22, 0xF5	; 245
    13da:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    13dc:	f9 01       	movw	r30, r18
    13de:	38 96       	adiw	r30, 0x08	; 8
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            SET_COLOR(pgm_read_byte(index++));
    13e0:	64 91       	lpm	r22, Z
    13e2:	eb b1       	in	r30, 0x0b	; 11
    13e4:	f4 e0       	ldi	r31, 0x04	; 4
    13e6:	6f 9f       	mul	r22, r31
    13e8:	b0 01       	movw	r22, r0
    13ea:	11 24       	eor	r1, r1
    13ec:	e3 70       	andi	r30, 0x03	; 3
    13ee:	e6 2b       	or	r30, r22
    13f0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    13f2:	65 b1       	in	r22, 0x05	; 5
    13f4:	6a 60       	ori	r22, 0x0A	; 10
    13f6:	65 b9       	out	0x05, r22	; 5
    13f8:	65 b1       	in	r22, 0x05	; 5
    13fa:	65 7f       	andi	r22, 0xF5	; 245
    13fc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    13fe:	65 b1       	in	r22, 0x05	; 5
    1400:	6a 60       	ori	r22, 0x0A	; 10
    1402:	65 b9       	out	0x05, r22	; 5
    1404:	65 b1       	in	r22, 0x05	; 5
    1406:	65 7f       	andi	r22, 0xF5	; 245
    1408:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            SET_COLOR(pgm_read_byte(index++));
    140a:	f9 01       	movw	r30, r18
    140c:	39 96       	adiw	r30, 0x09	; 9
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    140e:	64 91       	lpm	r22, Z
    1410:	eb b1       	in	r30, 0x0b	; 11
    1412:	f4 e0       	ldi	r31, 0x04	; 4
    1414:	6f 9f       	mul	r22, r31
    1416:	b0 01       	movw	r22, r0
    1418:	11 24       	eor	r1, r1
    141a:	e3 70       	andi	r30, 0x03	; 3
    141c:	e6 2b       	or	r30, r22
    141e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1420:	65 b1       	in	r22, 0x05	; 5
    1422:	6a 60       	ori	r22, 0x0A	; 10
    1424:	65 b9       	out	0x05, r22	; 5
    1426:	65 b1       	in	r22, 0x05	; 5
    1428:	65 7f       	andi	r22, 0xF5	; 245
    142a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    142c:	65 b1       	in	r22, 0x05	; 5
    142e:	6a 60       	ori	r22, 0x0A	; 10
    1430:	65 b9       	out	0x05, r22	; 5
    1432:	65 b1       	in	r22, 0x05	; 5
    1434:	65 7f       	andi	r22, 0xF5	; 245
    1436:	65 b9       	out	0x05, r22	; 5

            // chip 1
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1438:	f9 01       	movw	r30, r18
    143a:	3a 96       	adiw	r30, 0x0a	; 10
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    143c:	64 91       	lpm	r22, Z
    143e:	eb b1       	in	r30, 0x0b	; 11
    1440:	f4 e0       	ldi	r31, 0x04	; 4
    1442:	6f 9f       	mul	r22, r31
    1444:	b0 01       	movw	r22, r0
    1446:	11 24       	eor	r1, r1
    1448:	e3 70       	andi	r30, 0x03	; 3
    144a:	e6 2b       	or	r30, r22
    144c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    144e:	65 b1       	in	r22, 0x05	; 5
    1450:	6a 60       	ori	r22, 0x0A	; 10
    1452:	65 b9       	out	0x05, r22	; 5
    1454:	65 b1       	in	r22, 0x05	; 5
    1456:	65 7f       	andi	r22, 0xF5	; 245
    1458:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    145a:	65 b1       	in	r22, 0x05	; 5
    145c:	6a 60       	ori	r22, 0x0A	; 10
    145e:	65 b9       	out	0x05, r22	; 5
    1460:	65 b1       	in	r22, 0x05	; 5
    1462:	65 7f       	andi	r22, 0xF5	; 245
    1464:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1466:	f9 01       	movw	r30, r18
    1468:	3b 96       	adiw	r30, 0x0b	; 11
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    146a:	64 91       	lpm	r22, Z
    146c:	eb b1       	in	r30, 0x0b	; 11
    146e:	f4 e0       	ldi	r31, 0x04	; 4
    1470:	6f 9f       	mul	r22, r31
    1472:	b0 01       	movw	r22, r0
    1474:	11 24       	eor	r1, r1
    1476:	e3 70       	andi	r30, 0x03	; 3
    1478:	e6 2b       	or	r30, r22
    147a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    147c:	65 b1       	in	r22, 0x05	; 5
    147e:	6a 60       	ori	r22, 0x0A	; 10
    1480:	65 b9       	out	0x05, r22	; 5
    1482:	65 b1       	in	r22, 0x05	; 5
    1484:	65 7f       	andi	r22, 0xF5	; 245
    1486:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1488:	65 b1       	in	r22, 0x05	; 5
    148a:	6a 60       	ori	r22, 0x0A	; 10
    148c:	65 b9       	out	0x05, r22	; 5
    148e:	65 b1       	in	r22, 0x05	; 5
    1490:	65 7f       	andi	r22, 0xF5	; 245
    1492:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1494:	f9 01       	movw	r30, r18
    1496:	3c 96       	adiw	r30, 0x0c	; 12
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1498:	64 91       	lpm	r22, Z
    149a:	eb b1       	in	r30, 0x0b	; 11
    149c:	f4 e0       	ldi	r31, 0x04	; 4
    149e:	6f 9f       	mul	r22, r31
    14a0:	b0 01       	movw	r22, r0
    14a2:	11 24       	eor	r1, r1
    14a4:	e3 70       	andi	r30, 0x03	; 3
    14a6:	e6 2b       	or	r30, r22
    14a8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    14aa:	65 b1       	in	r22, 0x05	; 5
    14ac:	6a 60       	ori	r22, 0x0A	; 10
    14ae:	65 b9       	out	0x05, r22	; 5
    14b0:	65 b1       	in	r22, 0x05	; 5
    14b2:	65 7f       	andi	r22, 0xF5	; 245
    14b4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    14b6:	65 b1       	in	r22, 0x05	; 5
    14b8:	6a 60       	ori	r22, 0x0A	; 10
    14ba:	65 b9       	out	0x05, r22	; 5
    14bc:	65 b1       	in	r22, 0x05	; 5
    14be:	65 7f       	andi	r22, 0xF5	; 245
    14c0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    14c2:	f9 01       	movw	r30, r18
    14c4:	3d 96       	adiw	r30, 0x0d	; 13
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    14c6:	64 91       	lpm	r22, Z
    14c8:	eb b1       	in	r30, 0x0b	; 11
    14ca:	f4 e0       	ldi	r31, 0x04	; 4
    14cc:	6f 9f       	mul	r22, r31
    14ce:	b0 01       	movw	r22, r0
    14d0:	11 24       	eor	r1, r1
    14d2:	e3 70       	andi	r30, 0x03	; 3
    14d4:	e6 2b       	or	r30, r22
    14d6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    14d8:	65 b1       	in	r22, 0x05	; 5
    14da:	6a 60       	ori	r22, 0x0A	; 10
    14dc:	65 b9       	out	0x05, r22	; 5
    14de:	65 b1       	in	r22, 0x05	; 5
    14e0:	65 7f       	andi	r22, 0xF5	; 245
    14e2:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    14e4:	65 b1       	in	r22, 0x05	; 5
    14e6:	6a 60       	ori	r22, 0x0A	; 10
    14e8:	65 b9       	out	0x05, r22	; 5
    14ea:	65 b1       	in	r22, 0x05	; 5
    14ec:	65 7f       	andi	r22, 0xF5	; 245
    14ee:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    14f0:	f9 01       	movw	r30, r18
    14f2:	3e 96       	adiw	r30, 0x0e	; 14
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    14f4:	64 91       	lpm	r22, Z
    14f6:	eb b1       	in	r30, 0x0b	; 11
    14f8:	f4 e0       	ldi	r31, 0x04	; 4
    14fa:	6f 9f       	mul	r22, r31
    14fc:	b0 01       	movw	r22, r0
    14fe:	11 24       	eor	r1, r1
    1500:	e3 70       	andi	r30, 0x03	; 3
    1502:	e6 2b       	or	r30, r22
    1504:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1506:	65 b1       	in	r22, 0x05	; 5
    1508:	6a 60       	ori	r22, 0x0A	; 10
    150a:	65 b9       	out	0x05, r22	; 5
    150c:	65 b1       	in	r22, 0x05	; 5
    150e:	65 7f       	andi	r22, 0xF5	; 245
    1510:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1512:	65 b1       	in	r22, 0x05	; 5
    1514:	6a 60       	ori	r22, 0x0A	; 10
    1516:	65 b9       	out	0x05, r22	; 5
    1518:	65 b1       	in	r22, 0x05	; 5
    151a:	65 7f       	andi	r22, 0xF5	; 245
    151c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    151e:	f9 01       	movw	r30, r18
    1520:	3f 96       	adiw	r30, 0x0f	; 15
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1522:	64 91       	lpm	r22, Z
    1524:	eb b1       	in	r30, 0x0b	; 11
    1526:	f4 e0       	ldi	r31, 0x04	; 4
    1528:	6f 9f       	mul	r22, r31
    152a:	b0 01       	movw	r22, r0
    152c:	11 24       	eor	r1, r1
    152e:	e3 70       	andi	r30, 0x03	; 3
    1530:	e6 2b       	or	r30, r22
    1532:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1534:	65 b1       	in	r22, 0x05	; 5
    1536:	6a 60       	ori	r22, 0x0A	; 10
    1538:	65 b9       	out	0x05, r22	; 5
    153a:	65 b1       	in	r22, 0x05	; 5
    153c:	65 7f       	andi	r22, 0xF5	; 245
    153e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1540:	65 b1       	in	r22, 0x05	; 5
    1542:	6a 60       	ori	r22, 0x0A	; 10
    1544:	65 b9       	out	0x05, r22	; 5
    1546:	65 b1       	in	r22, 0x05	; 5
    1548:	65 7f       	andi	r22, 0xF5	; 245
    154a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    154c:	f9 01       	movw	r30, r18
    154e:	70 96       	adiw	r30, 0x10	; 16
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
    1550:	64 91       	lpm	r22, Z
    1552:	eb b1       	in	r30, 0x0b	; 11
    1554:	f4 e0       	ldi	r31, 0x04	; 4
    1556:	6f 9f       	mul	r22, r31
    1558:	b0 01       	movw	r22, r0
    155a:	11 24       	eor	r1, r1
    155c:	e3 70       	andi	r30, 0x03	; 3
    155e:	e6 2b       	or	r30, r22
    1560:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1562:	65 b1       	in	r22, 0x05	; 5
    1564:	6a 60       	ori	r22, 0x0A	; 10
    1566:	65 b9       	out	0x05, r22	; 5
    1568:	65 b1       	in	r22, 0x05	; 5
    156a:	65 7f       	andi	r22, 0xF5	; 245
    156c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    156e:	65 b1       	in	r22, 0x05	; 5
    1570:	6a 60       	ori	r22, 0x0A	; 10
    1572:	65 b9       	out	0x05, r22	; 5
    1574:	65 b1       	in	r22, 0x05	; 5
    1576:	65 7f       	andi	r22, 0xF5	; 245
    1578:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
    157a:	f9 01       	movw	r30, r18
    157c:	71 96       	adiw	r30, 0x11	; 17
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    157e:	64 91       	lpm	r22, Z
    1580:	eb b1       	in	r30, 0x0b	; 11
    1582:	f4 e0       	ldi	r31, 0x04	; 4
    1584:	6f 9f       	mul	r22, r31
    1586:	b0 01       	movw	r22, r0
    1588:	11 24       	eor	r1, r1
    158a:	e3 70       	andi	r30, 0x03	; 3
    158c:	e6 2b       	or	r30, r22
    158e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1590:	65 b1       	in	r22, 0x05	; 5
    1592:	6a 60       	ori	r22, 0x0A	; 10
    1594:	65 b9       	out	0x05, r22	; 5
    1596:	65 b1       	in	r22, 0x05	; 5
    1598:	65 7f       	andi	r22, 0xF5	; 245
    159a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    159c:	65 b1       	in	r22, 0x05	; 5
    159e:	6a 60       	ori	r22, 0x0A	; 10
    15a0:	65 b9       	out	0x05, r22	; 5
    15a2:	65 b1       	in	r22, 0x05	; 5
    15a4:	65 7f       	andi	r22, 0xF5	; 245
    15a6:	65 b9       	out	0x05, r22	; 5

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    15a8:	f9 01       	movw	r30, r18
    15aa:	72 96       	adiw	r30, 0x12	; 18
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    15ac:	64 91       	lpm	r22, Z
    15ae:	eb b1       	in	r30, 0x0b	; 11
    15b0:	f4 e0       	ldi	r31, 0x04	; 4
    15b2:	6f 9f       	mul	r22, r31
    15b4:	b0 01       	movw	r22, r0
    15b6:	11 24       	eor	r1, r1
    15b8:	e3 70       	andi	r30, 0x03	; 3
    15ba:	e6 2b       	or	r30, r22
    15bc:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    15be:	65 b1       	in	r22, 0x05	; 5
    15c0:	6a 60       	ori	r22, 0x0A	; 10
    15c2:	65 b9       	out	0x05, r22	; 5
    15c4:	65 b1       	in	r22, 0x05	; 5
    15c6:	65 7f       	andi	r22, 0xF5	; 245
    15c8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    15ca:	65 b1       	in	r22, 0x05	; 5
    15cc:	6a 60       	ori	r22, 0x0A	; 10
    15ce:	65 b9       	out	0x05, r22	; 5
    15d0:	65 b1       	in	r22, 0x05	; 5
    15d2:	65 7f       	andi	r22, 0xF5	; 245
    15d4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    15d6:	f9 01       	movw	r30, r18
    15d8:	73 96       	adiw	r30, 0x13	; 19
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    15da:	64 91       	lpm	r22, Z
    15dc:	eb b1       	in	r30, 0x0b	; 11
    15de:	f4 e0       	ldi	r31, 0x04	; 4
    15e0:	6f 9f       	mul	r22, r31
    15e2:	b0 01       	movw	r22, r0
    15e4:	11 24       	eor	r1, r1
    15e6:	e3 70       	andi	r30, 0x03	; 3
    15e8:	e6 2b       	or	r30, r22
    15ea:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    15ec:	65 b1       	in	r22, 0x05	; 5
    15ee:	6a 60       	ori	r22, 0x0A	; 10
    15f0:	65 b9       	out	0x05, r22	; 5
    15f2:	65 b1       	in	r22, 0x05	; 5
    15f4:	65 7f       	andi	r22, 0xF5	; 245
    15f6:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    15f8:	65 b1       	in	r22, 0x05	; 5
    15fa:	6a 60       	ori	r22, 0x0A	; 10
    15fc:	65 b9       	out	0x05, r22	; 5
    15fe:	65 b1       	in	r22, 0x05	; 5
    1600:	65 7f       	andi	r22, 0xF5	; 245
    1602:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1604:	f9 01       	movw	r30, r18
    1606:	74 96       	adiw	r30, 0x14	; 20
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1608:	64 91       	lpm	r22, Z
    160a:	eb b1       	in	r30, 0x0b	; 11
    160c:	f4 e0       	ldi	r31, 0x04	; 4
    160e:	6f 9f       	mul	r22, r31
    1610:	b0 01       	movw	r22, r0
    1612:	11 24       	eor	r1, r1
    1614:	e3 70       	andi	r30, 0x03	; 3
    1616:	e6 2b       	or	r30, r22
    1618:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    161a:	65 b1       	in	r22, 0x05	; 5
    161c:	6a 60       	ori	r22, 0x0A	; 10
    161e:	65 b9       	out	0x05, r22	; 5
    1620:	65 b1       	in	r22, 0x05	; 5
    1622:	65 7f       	andi	r22, 0xF5	; 245
    1624:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1626:	65 b1       	in	r22, 0x05	; 5
    1628:	6a 60       	ori	r22, 0x0A	; 10
    162a:	65 b9       	out	0x05, r22	; 5
    162c:	65 b1       	in	r22, 0x05	; 5
    162e:	65 7f       	andi	r22, 0xF5	; 245
    1630:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1632:	f9 01       	movw	r30, r18
    1634:	75 96       	adiw	r30, 0x15	; 21
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1636:	64 91       	lpm	r22, Z
    1638:	eb b1       	in	r30, 0x0b	; 11
    163a:	f4 e0       	ldi	r31, 0x04	; 4
    163c:	6f 9f       	mul	r22, r31
    163e:	b0 01       	movw	r22, r0
    1640:	11 24       	eor	r1, r1
    1642:	e3 70       	andi	r30, 0x03	; 3
    1644:	e6 2b       	or	r30, r22
    1646:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1648:	65 b1       	in	r22, 0x05	; 5
    164a:	6a 60       	ori	r22, 0x0A	; 10
    164c:	65 b9       	out	0x05, r22	; 5
    164e:	65 b1       	in	r22, 0x05	; 5
    1650:	65 7f       	andi	r22, 0xF5	; 245
    1652:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1654:	65 b1       	in	r22, 0x05	; 5
    1656:	6a 60       	ori	r22, 0x0A	; 10
    1658:	65 b9       	out	0x05, r22	; 5
    165a:	65 b1       	in	r22, 0x05	; 5
    165c:	65 7f       	andi	r22, 0xF5	; 245
    165e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1660:	f9 01       	movw	r30, r18
    1662:	76 96       	adiw	r30, 0x16	; 22
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1664:	64 91       	lpm	r22, Z
    1666:	eb b1       	in	r30, 0x0b	; 11
    1668:	f4 e0       	ldi	r31, 0x04	; 4
    166a:	6f 9f       	mul	r22, r31
    166c:	b0 01       	movw	r22, r0
    166e:	11 24       	eor	r1, r1
    1670:	e3 70       	andi	r30, 0x03	; 3
    1672:	e6 2b       	or	r30, r22
    1674:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1676:	65 b1       	in	r22, 0x05	; 5
    1678:	6a 60       	ori	r22, 0x0A	; 10
    167a:	65 b9       	out	0x05, r22	; 5
    167c:	65 b1       	in	r22, 0x05	; 5
    167e:	65 7f       	andi	r22, 0xF5	; 245
    1680:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1682:	65 b1       	in	r22, 0x05	; 5
    1684:	6a 60       	ori	r22, 0x0A	; 10
    1686:	65 b9       	out	0x05, r22	; 5
    1688:	65 b1       	in	r22, 0x05	; 5
    168a:	65 7f       	andi	r22, 0xF5	; 245
    168c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    168e:	f9 01       	movw	r30, r18
    1690:	77 96       	adiw	r30, 0x17	; 23
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1692:	64 91       	lpm	r22, Z
    1694:	eb b1       	in	r30, 0x0b	; 11
    1696:	f4 e0       	ldi	r31, 0x04	; 4
    1698:	6f 9f       	mul	r22, r31
    169a:	b0 01       	movw	r22, r0
    169c:	11 24       	eor	r1, r1
    169e:	e3 70       	andi	r30, 0x03	; 3
    16a0:	e6 2b       	or	r30, r22
    16a2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    16a4:	65 b1       	in	r22, 0x05	; 5
    16a6:	6a 60       	ori	r22, 0x0A	; 10
    16a8:	65 b9       	out	0x05, r22	; 5
    16aa:	65 b1       	in	r22, 0x05	; 5
    16ac:	65 7f       	andi	r22, 0xF5	; 245
    16ae:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    16b0:	65 b1       	in	r22, 0x05	; 5
    16b2:	6a 60       	ori	r22, 0x0A	; 10
    16b4:	65 b9       	out	0x05, r22	; 5
    16b6:	65 b1       	in	r22, 0x05	; 5
    16b8:	65 7f       	andi	r22, 0xF5	; 245
    16ba:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    16bc:	f9 01       	movw	r30, r18
    16be:	78 96       	adiw	r30, 0x18	; 24
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
    16c0:	64 91       	lpm	r22, Z
    16c2:	eb b1       	in	r30, 0x0b	; 11
    16c4:	f4 e0       	ldi	r31, 0x04	; 4
    16c6:	6f 9f       	mul	r22, r31
    16c8:	b0 01       	movw	r22, r0
    16ca:	11 24       	eor	r1, r1
    16cc:	e3 70       	andi	r30, 0x03	; 3
    16ce:	e6 2b       	or	r30, r22
    16d0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    16d2:	65 b1       	in	r22, 0x05	; 5
    16d4:	6a 60       	ori	r22, 0x0A	; 10
    16d6:	65 b9       	out	0x05, r22	; 5
    16d8:	65 b1       	in	r22, 0x05	; 5
    16da:	65 7f       	andi	r22, 0xF5	; 245
    16dc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    16de:	65 b1       	in	r22, 0x05	; 5
    16e0:	6a 60       	ori	r22, 0x0A	; 10
    16e2:	65 b9       	out	0x05, r22	; 5
    16e4:	65 b1       	in	r22, 0x05	; 5
    16e6:	65 7f       	andi	r22, 0xF5	; 245
    16e8:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
    16ea:	f9 01       	movw	r30, r18
    16ec:	79 96       	adiw	r30, 0x19	; 25
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    16ee:	64 91       	lpm	r22, Z
    16f0:	eb b1       	in	r30, 0x0b	; 11
    16f2:	f4 e0       	ldi	r31, 0x04	; 4
    16f4:	6f 9f       	mul	r22, r31
    16f6:	b0 01       	movw	r22, r0
    16f8:	11 24       	eor	r1, r1
    16fa:	e3 70       	andi	r30, 0x03	; 3
    16fc:	e6 2b       	or	r30, r22
    16fe:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1700:	65 b1       	in	r22, 0x05	; 5
    1702:	6a 60       	ori	r22, 0x0A	; 10
    1704:	65 b9       	out	0x05, r22	; 5
    1706:	65 b1       	in	r22, 0x05	; 5
    1708:	65 7f       	andi	r22, 0xF5	; 245
    170a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    170c:	65 b1       	in	r22, 0x05	; 5
    170e:	6a 60       	ori	r22, 0x0A	; 10
    1710:	65 b9       	out	0x05, r22	; 5
    1712:	65 b1       	in	r22, 0x05	; 5
    1714:	65 7f       	andi	r22, 0xF5	; 245
    1716:	65 b9       	out	0x05, r22	; 5

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1718:	f9 01       	movw	r30, r18
    171a:	7a 96       	adiw	r30, 0x1a	; 26
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    171c:	64 91       	lpm	r22, Z
    171e:	eb b1       	in	r30, 0x0b	; 11
    1720:	f4 e0       	ldi	r31, 0x04	; 4
    1722:	6f 9f       	mul	r22, r31
    1724:	b0 01       	movw	r22, r0
    1726:	11 24       	eor	r1, r1
    1728:	e3 70       	andi	r30, 0x03	; 3
    172a:	e6 2b       	or	r30, r22
    172c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    172e:	65 b1       	in	r22, 0x05	; 5
    1730:	6a 60       	ori	r22, 0x0A	; 10
    1732:	65 b9       	out	0x05, r22	; 5
    1734:	65 b1       	in	r22, 0x05	; 5
    1736:	65 7f       	andi	r22, 0xF5	; 245
    1738:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    173a:	65 b1       	in	r22, 0x05	; 5
    173c:	6a 60       	ori	r22, 0x0A	; 10
    173e:	65 b9       	out	0x05, r22	; 5
    1740:	65 b1       	in	r22, 0x05	; 5
    1742:	65 7f       	andi	r22, 0xF5	; 245
    1744:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1746:	f9 01       	movw	r30, r18
    1748:	7b 96       	adiw	r30, 0x1b	; 27
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    174a:	64 91       	lpm	r22, Z
    174c:	eb b1       	in	r30, 0x0b	; 11
    174e:	f4 e0       	ldi	r31, 0x04	; 4
    1750:	6f 9f       	mul	r22, r31
    1752:	b0 01       	movw	r22, r0
    1754:	11 24       	eor	r1, r1
    1756:	e3 70       	andi	r30, 0x03	; 3
    1758:	e6 2b       	or	r30, r22
    175a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    175c:	65 b1       	in	r22, 0x05	; 5
    175e:	6a 60       	ori	r22, 0x0A	; 10
    1760:	65 b9       	out	0x05, r22	; 5
    1762:	65 b1       	in	r22, 0x05	; 5
    1764:	65 7f       	andi	r22, 0xF5	; 245
    1766:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1768:	65 b1       	in	r22, 0x05	; 5
    176a:	6a 60       	ori	r22, 0x0A	; 10
    176c:	65 b9       	out	0x05, r22	; 5
    176e:	65 b1       	in	r22, 0x05	; 5
    1770:	65 7f       	andi	r22, 0xF5	; 245
    1772:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1774:	f9 01       	movw	r30, r18
    1776:	7c 96       	adiw	r30, 0x1c	; 28
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1778:	64 91       	lpm	r22, Z
    177a:	eb b1       	in	r30, 0x0b	; 11
    177c:	f4 e0       	ldi	r31, 0x04	; 4
    177e:	6f 9f       	mul	r22, r31
    1780:	b0 01       	movw	r22, r0
    1782:	11 24       	eor	r1, r1
    1784:	e3 70       	andi	r30, 0x03	; 3
    1786:	e6 2b       	or	r30, r22
    1788:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    178a:	65 b1       	in	r22, 0x05	; 5
    178c:	6a 60       	ori	r22, 0x0A	; 10
    178e:	65 b9       	out	0x05, r22	; 5
    1790:	65 b1       	in	r22, 0x05	; 5
    1792:	65 7f       	andi	r22, 0xF5	; 245
    1794:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1796:	65 b1       	in	r22, 0x05	; 5
    1798:	6a 60       	ori	r22, 0x0A	; 10
    179a:	65 b9       	out	0x05, r22	; 5
    179c:	65 b1       	in	r22, 0x05	; 5
    179e:	65 7f       	andi	r22, 0xF5	; 245
    17a0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    17a2:	f9 01       	movw	r30, r18
    17a4:	7d 96       	adiw	r30, 0x1d	; 29
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    17a6:	64 91       	lpm	r22, Z
    17a8:	eb b1       	in	r30, 0x0b	; 11
    17aa:	f4 e0       	ldi	r31, 0x04	; 4
    17ac:	6f 9f       	mul	r22, r31
    17ae:	b0 01       	movw	r22, r0
    17b0:	11 24       	eor	r1, r1
    17b2:	e3 70       	andi	r30, 0x03	; 3
    17b4:	e6 2b       	or	r30, r22
    17b6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    17b8:	65 b1       	in	r22, 0x05	; 5
    17ba:	6a 60       	ori	r22, 0x0A	; 10
    17bc:	65 b9       	out	0x05, r22	; 5
    17be:	65 b1       	in	r22, 0x05	; 5
    17c0:	65 7f       	andi	r22, 0xF5	; 245
    17c2:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    17c4:	65 b1       	in	r22, 0x05	; 5
    17c6:	6a 60       	ori	r22, 0x0A	; 10
    17c8:	65 b9       	out	0x05, r22	; 5
    17ca:	65 b1       	in	r22, 0x05	; 5
    17cc:	65 7f       	andi	r22, 0xF5	; 245
    17ce:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    17d0:	f9 01       	movw	r30, r18
    17d2:	7e 96       	adiw	r30, 0x1e	; 30
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    17d4:	64 91       	lpm	r22, Z
    17d6:	eb b1       	in	r30, 0x0b	; 11
    17d8:	f4 e0       	ldi	r31, 0x04	; 4
    17da:	6f 9f       	mul	r22, r31
    17dc:	b0 01       	movw	r22, r0
    17de:	11 24       	eor	r1, r1
    17e0:	e3 70       	andi	r30, 0x03	; 3
    17e2:	e6 2b       	or	r30, r22
    17e4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    17e6:	65 b1       	in	r22, 0x05	; 5
    17e8:	6a 60       	ori	r22, 0x0A	; 10
    17ea:	65 b9       	out	0x05, r22	; 5
    17ec:	65 b1       	in	r22, 0x05	; 5
    17ee:	65 7f       	andi	r22, 0xF5	; 245
    17f0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    17f2:	65 b1       	in	r22, 0x05	; 5
    17f4:	6a 60       	ori	r22, 0x0A	; 10
    17f6:	65 b9       	out	0x05, r22	; 5
    17f8:	65 b1       	in	r22, 0x05	; 5
    17fa:	65 7f       	andi	r22, 0xF5	; 245
    17fc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    17fe:	f9 01       	movw	r30, r18
    1800:	7f 96       	adiw	r30, 0x1f	; 31
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1802:	64 91       	lpm	r22, Z
    1804:	eb b1       	in	r30, 0x0b	; 11
    1806:	f4 e0       	ldi	r31, 0x04	; 4
    1808:	6f 9f       	mul	r22, r31
    180a:	b0 01       	movw	r22, r0
    180c:	11 24       	eor	r1, r1
    180e:	e3 70       	andi	r30, 0x03	; 3
    1810:	e6 2b       	or	r30, r22
    1812:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1814:	65 b1       	in	r22, 0x05	; 5
    1816:	6a 60       	ori	r22, 0x0A	; 10
    1818:	65 b9       	out	0x05, r22	; 5
    181a:	65 b1       	in	r22, 0x05	; 5
    181c:	65 7f       	andi	r22, 0xF5	; 245
    181e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1820:	65 b1       	in	r22, 0x05	; 5
    1822:	6a 60       	ori	r22, 0x0A	; 10
    1824:	65 b9       	out	0x05, r22	; 5
    1826:	65 b1       	in	r22, 0x05	; 5
    1828:	65 7f       	andi	r22, 0xF5	; 245
    182a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    182c:	f9 01       	movw	r30, r18
    182e:	b0 96       	adiw	r30, 0x20	; 32
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
    1830:	64 91       	lpm	r22, Z
    1832:	eb b1       	in	r30, 0x0b	; 11
    1834:	f4 e0       	ldi	r31, 0x04	; 4
    1836:	6f 9f       	mul	r22, r31
    1838:	b0 01       	movw	r22, r0
    183a:	11 24       	eor	r1, r1
    183c:	e3 70       	andi	r30, 0x03	; 3
    183e:	e6 2b       	or	r30, r22
    1840:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1842:	65 b1       	in	r22, 0x05	; 5
    1844:	6a 60       	ori	r22, 0x0A	; 10
    1846:	65 b9       	out	0x05, r22	; 5
    1848:	65 b1       	in	r22, 0x05	; 5
    184a:	65 7f       	andi	r22, 0xF5	; 245
    184c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    184e:	65 b1       	in	r22, 0x05	; 5
    1850:	6a 60       	ori	r22, 0x0A	; 10
    1852:	65 b9       	out	0x05, r22	; 5
    1854:	65 b1       	in	r22, 0x05	; 5
    1856:	65 7f       	andi	r22, 0xF5	; 245
    1858:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
    185a:	f9 01       	movw	r30, r18
    185c:	b1 96       	adiw	r30, 0x21	; 33
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    185e:	64 91       	lpm	r22, Z
    1860:	eb b1       	in	r30, 0x0b	; 11
    1862:	f4 e0       	ldi	r31, 0x04	; 4
    1864:	6f 9f       	mul	r22, r31
    1866:	b0 01       	movw	r22, r0
    1868:	11 24       	eor	r1, r1
    186a:	e3 70       	andi	r30, 0x03	; 3
    186c:	e6 2b       	or	r30, r22
    186e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1870:	65 b1       	in	r22, 0x05	; 5
    1872:	6a 60       	ori	r22, 0x0A	; 10
    1874:	65 b9       	out	0x05, r22	; 5
    1876:	65 b1       	in	r22, 0x05	; 5
    1878:	65 7f       	andi	r22, 0xF5	; 245
    187a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    187c:	65 b1       	in	r22, 0x05	; 5
    187e:	6a 60       	ori	r22, 0x0A	; 10
    1880:	65 b9       	out	0x05, r22	; 5
    1882:	65 b1       	in	r22, 0x05	; 5
    1884:	65 7f       	andi	r22, 0xF5	; 245
    1886:	65 b9       	out	0x05, r22	; 5

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1888:	f9 01       	movw	r30, r18
    188a:	b2 96       	adiw	r30, 0x22	; 34
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    188c:	64 91       	lpm	r22, Z
    188e:	eb b1       	in	r30, 0x0b	; 11
    1890:	f4 e0       	ldi	r31, 0x04	; 4
    1892:	6f 9f       	mul	r22, r31
    1894:	b0 01       	movw	r22, r0
    1896:	11 24       	eor	r1, r1
    1898:	e3 70       	andi	r30, 0x03	; 3
    189a:	e6 2b       	or	r30, r22
    189c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    189e:	65 b1       	in	r22, 0x05	; 5
    18a0:	6a 60       	ori	r22, 0x0A	; 10
    18a2:	65 b9       	out	0x05, r22	; 5
    18a4:	65 b1       	in	r22, 0x05	; 5
    18a6:	65 7f       	andi	r22, 0xF5	; 245
    18a8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    18aa:	65 b1       	in	r22, 0x05	; 5
    18ac:	6a 60       	ori	r22, 0x0A	; 10
    18ae:	65 b9       	out	0x05, r22	; 5
    18b0:	65 b1       	in	r22, 0x05	; 5
    18b2:	65 7f       	andi	r22, 0xF5	; 245
    18b4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    18b6:	f9 01       	movw	r30, r18
    18b8:	b3 96       	adiw	r30, 0x23	; 35
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    18ba:	64 91       	lpm	r22, Z
    18bc:	eb b1       	in	r30, 0x0b	; 11
    18be:	f4 e0       	ldi	r31, 0x04	; 4
    18c0:	6f 9f       	mul	r22, r31
    18c2:	b0 01       	movw	r22, r0
    18c4:	11 24       	eor	r1, r1
    18c6:	e3 70       	andi	r30, 0x03	; 3
    18c8:	e6 2b       	or	r30, r22
    18ca:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    18cc:	65 b1       	in	r22, 0x05	; 5
    18ce:	6a 60       	ori	r22, 0x0A	; 10
    18d0:	65 b9       	out	0x05, r22	; 5
    18d2:	65 b1       	in	r22, 0x05	; 5
    18d4:	65 7f       	andi	r22, 0xF5	; 245
    18d6:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    18d8:	65 b1       	in	r22, 0x05	; 5
    18da:	6a 60       	ori	r22, 0x0A	; 10
    18dc:	65 b9       	out	0x05, r22	; 5
    18de:	65 b1       	in	r22, 0x05	; 5
    18e0:	65 7f       	andi	r22, 0xF5	; 245
    18e2:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    18e4:	f9 01       	movw	r30, r18
    18e6:	b4 96       	adiw	r30, 0x24	; 36
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    18e8:	64 91       	lpm	r22, Z
    18ea:	eb b1       	in	r30, 0x0b	; 11
    18ec:	f4 e0       	ldi	r31, 0x04	; 4
    18ee:	6f 9f       	mul	r22, r31
    18f0:	b0 01       	movw	r22, r0
    18f2:	11 24       	eor	r1, r1
    18f4:	e3 70       	andi	r30, 0x03	; 3
    18f6:	e6 2b       	or	r30, r22
    18f8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    18fa:	65 b1       	in	r22, 0x05	; 5
    18fc:	6a 60       	ori	r22, 0x0A	; 10
    18fe:	65 b9       	out	0x05, r22	; 5
    1900:	65 b1       	in	r22, 0x05	; 5
    1902:	65 7f       	andi	r22, 0xF5	; 245
    1904:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1906:	65 b1       	in	r22, 0x05	; 5
    1908:	6a 60       	ori	r22, 0x0A	; 10
    190a:	65 b9       	out	0x05, r22	; 5
    190c:	65 b1       	in	r22, 0x05	; 5
    190e:	65 7f       	andi	r22, 0xF5	; 245
    1910:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1912:	f9 01       	movw	r30, r18
    1914:	b5 96       	adiw	r30, 0x25	; 37
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1916:	64 91       	lpm	r22, Z
    1918:	eb b1       	in	r30, 0x0b	; 11
    191a:	f4 e0       	ldi	r31, 0x04	; 4
    191c:	6f 9f       	mul	r22, r31
    191e:	b0 01       	movw	r22, r0
    1920:	11 24       	eor	r1, r1
    1922:	e3 70       	andi	r30, 0x03	; 3
    1924:	e6 2b       	or	r30, r22
    1926:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1928:	65 b1       	in	r22, 0x05	; 5
    192a:	6a 60       	ori	r22, 0x0A	; 10
    192c:	65 b9       	out	0x05, r22	; 5
    192e:	65 b1       	in	r22, 0x05	; 5
    1930:	65 7f       	andi	r22, 0xF5	; 245
    1932:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1934:	65 b1       	in	r22, 0x05	; 5
    1936:	6a 60       	ori	r22, 0x0A	; 10
    1938:	65 b9       	out	0x05, r22	; 5
    193a:	65 b1       	in	r22, 0x05	; 5
    193c:	65 7f       	andi	r22, 0xF5	; 245
    193e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1940:	f9 01       	movw	r30, r18
    1942:	b6 96       	adiw	r30, 0x26	; 38
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1944:	64 91       	lpm	r22, Z
    1946:	eb b1       	in	r30, 0x0b	; 11
    1948:	f4 e0       	ldi	r31, 0x04	; 4
    194a:	6f 9f       	mul	r22, r31
    194c:	b0 01       	movw	r22, r0
    194e:	11 24       	eor	r1, r1
    1950:	e3 70       	andi	r30, 0x03	; 3
    1952:	e6 2b       	or	r30, r22
    1954:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1956:	65 b1       	in	r22, 0x05	; 5
    1958:	6a 60       	ori	r22, 0x0A	; 10
    195a:	65 b9       	out	0x05, r22	; 5
    195c:	65 b1       	in	r22, 0x05	; 5
    195e:	65 7f       	andi	r22, 0xF5	; 245
    1960:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1962:	65 b1       	in	r22, 0x05	; 5
    1964:	6a 60       	ori	r22, 0x0A	; 10
    1966:	65 b9       	out	0x05, r22	; 5
    1968:	65 b1       	in	r22, 0x05	; 5
    196a:	65 7f       	andi	r22, 0xF5	; 245
    196c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    196e:	f9 01       	movw	r30, r18
    1970:	b7 96       	adiw	r30, 0x27	; 39
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1972:	64 91       	lpm	r22, Z
    1974:	eb b1       	in	r30, 0x0b	; 11
    1976:	f4 e0       	ldi	r31, 0x04	; 4
    1978:	6f 9f       	mul	r22, r31
    197a:	b0 01       	movw	r22, r0
    197c:	11 24       	eor	r1, r1
    197e:	e3 70       	andi	r30, 0x03	; 3
    1980:	e6 2b       	or	r30, r22
    1982:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1984:	65 b1       	in	r22, 0x05	; 5
    1986:	6a 60       	ori	r22, 0x0A	; 10
    1988:	65 b9       	out	0x05, r22	; 5
    198a:	65 b1       	in	r22, 0x05	; 5
    198c:	65 7f       	andi	r22, 0xF5	; 245
    198e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1990:	65 b1       	in	r22, 0x05	; 5
    1992:	6a 60       	ori	r22, 0x0A	; 10
    1994:	65 b9       	out	0x05, r22	; 5
    1996:	65 b1       	in	r22, 0x05	; 5
    1998:	65 7f       	andi	r22, 0xF5	; 245
    199a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    199c:	f9 01       	movw	r30, r18
    199e:	b8 96       	adiw	r30, 0x28	; 40
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
    19a0:	64 91       	lpm	r22, Z
    19a2:	eb b1       	in	r30, 0x0b	; 11
    19a4:	f4 e0       	ldi	r31, 0x04	; 4
    19a6:	6f 9f       	mul	r22, r31
    19a8:	b0 01       	movw	r22, r0
    19aa:	11 24       	eor	r1, r1
    19ac:	e3 70       	andi	r30, 0x03	; 3
    19ae:	e6 2b       	or	r30, r22
    19b0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    19b2:	65 b1       	in	r22, 0x05	; 5
    19b4:	6a 60       	ori	r22, 0x0A	; 10
    19b6:	65 b9       	out	0x05, r22	; 5
    19b8:	65 b1       	in	r22, 0x05	; 5
    19ba:	65 7f       	andi	r22, 0xF5	; 245
    19bc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    19be:	65 b1       	in	r22, 0x05	; 5
    19c0:	6a 60       	ori	r22, 0x0A	; 10
    19c2:	65 b9       	out	0x05, r22	; 5
    19c4:	65 b1       	in	r22, 0x05	; 5
    19c6:	65 7f       	andi	r22, 0xF5	; 245
    19c8:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
    19ca:	f9 01       	movw	r30, r18
    19cc:	b9 96       	adiw	r30, 0x29	; 41
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    19ce:	64 91       	lpm	r22, Z
    19d0:	eb b1       	in	r30, 0x0b	; 11
    19d2:	f4 e0       	ldi	r31, 0x04	; 4
    19d4:	6f 9f       	mul	r22, r31
    19d6:	b0 01       	movw	r22, r0
    19d8:	11 24       	eor	r1, r1
    19da:	e3 70       	andi	r30, 0x03	; 3
    19dc:	e6 2b       	or	r30, r22
    19de:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    19e0:	65 b1       	in	r22, 0x05	; 5
    19e2:	6a 60       	ori	r22, 0x0A	; 10
    19e4:	65 b9       	out	0x05, r22	; 5
    19e6:	65 b1       	in	r22, 0x05	; 5
    19e8:	65 7f       	andi	r22, 0xF5	; 245
    19ea:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    19ec:	65 b1       	in	r22, 0x05	; 5
    19ee:	6a 60       	ori	r22, 0x0A	; 10
    19f0:	65 b9       	out	0x05, r22	; 5
    19f2:	65 b1       	in	r22, 0x05	; 5
    19f4:	65 7f       	andi	r22, 0xF5	; 245
    19f6:	65 b9       	out	0x05, r22	; 5

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    19f8:	f9 01       	movw	r30, r18
    19fa:	ba 96       	adiw	r30, 0x2a	; 42
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    19fc:	64 91       	lpm	r22, Z
    19fe:	eb b1       	in	r30, 0x0b	; 11
    1a00:	f4 e0       	ldi	r31, 0x04	; 4
    1a02:	6f 9f       	mul	r22, r31
    1a04:	b0 01       	movw	r22, r0
    1a06:	11 24       	eor	r1, r1
    1a08:	e3 70       	andi	r30, 0x03	; 3
    1a0a:	e6 2b       	or	r30, r22
    1a0c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1a0e:	65 b1       	in	r22, 0x05	; 5
    1a10:	6a 60       	ori	r22, 0x0A	; 10
    1a12:	65 b9       	out	0x05, r22	; 5
    1a14:	65 b1       	in	r22, 0x05	; 5
    1a16:	65 7f       	andi	r22, 0xF5	; 245
    1a18:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1a1a:	65 b1       	in	r22, 0x05	; 5
    1a1c:	6a 60       	ori	r22, 0x0A	; 10
    1a1e:	65 b9       	out	0x05, r22	; 5
    1a20:	65 b1       	in	r22, 0x05	; 5
    1a22:	65 7f       	andi	r22, 0xF5	; 245
    1a24:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1a26:	f9 01       	movw	r30, r18
    1a28:	bb 96       	adiw	r30, 0x2b	; 43
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1a2a:	64 91       	lpm	r22, Z
    1a2c:	eb b1       	in	r30, 0x0b	; 11
    1a2e:	f4 e0       	ldi	r31, 0x04	; 4
    1a30:	6f 9f       	mul	r22, r31
    1a32:	b0 01       	movw	r22, r0
    1a34:	11 24       	eor	r1, r1
    1a36:	e3 70       	andi	r30, 0x03	; 3
    1a38:	e6 2b       	or	r30, r22
    1a3a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1a3c:	65 b1       	in	r22, 0x05	; 5
    1a3e:	6a 60       	ori	r22, 0x0A	; 10
    1a40:	65 b9       	out	0x05, r22	; 5
    1a42:	65 b1       	in	r22, 0x05	; 5
    1a44:	65 7f       	andi	r22, 0xF5	; 245
    1a46:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1a48:	65 b1       	in	r22, 0x05	; 5
    1a4a:	6a 60       	ori	r22, 0x0A	; 10
    1a4c:	65 b9       	out	0x05, r22	; 5
    1a4e:	65 b1       	in	r22, 0x05	; 5
    1a50:	65 7f       	andi	r22, 0xF5	; 245
    1a52:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1a54:	f9 01       	movw	r30, r18
    1a56:	bc 96       	adiw	r30, 0x2c	; 44
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1a58:	64 91       	lpm	r22, Z
    1a5a:	eb b1       	in	r30, 0x0b	; 11
    1a5c:	f4 e0       	ldi	r31, 0x04	; 4
    1a5e:	6f 9f       	mul	r22, r31
    1a60:	b0 01       	movw	r22, r0
    1a62:	11 24       	eor	r1, r1
    1a64:	e3 70       	andi	r30, 0x03	; 3
    1a66:	e6 2b       	or	r30, r22
    1a68:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1a6a:	65 b1       	in	r22, 0x05	; 5
    1a6c:	6a 60       	ori	r22, 0x0A	; 10
    1a6e:	65 b9       	out	0x05, r22	; 5
    1a70:	65 b1       	in	r22, 0x05	; 5
    1a72:	65 7f       	andi	r22, 0xF5	; 245
    1a74:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1a76:	65 b1       	in	r22, 0x05	; 5
    1a78:	6a 60       	ori	r22, 0x0A	; 10
    1a7a:	65 b9       	out	0x05, r22	; 5
    1a7c:	65 b1       	in	r22, 0x05	; 5
    1a7e:	65 7f       	andi	r22, 0xF5	; 245
    1a80:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1a82:	f9 01       	movw	r30, r18
    1a84:	bd 96       	adiw	r30, 0x2d	; 45
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1a86:	64 91       	lpm	r22, Z
    1a88:	eb b1       	in	r30, 0x0b	; 11
    1a8a:	f4 e0       	ldi	r31, 0x04	; 4
    1a8c:	6f 9f       	mul	r22, r31
    1a8e:	b0 01       	movw	r22, r0
    1a90:	11 24       	eor	r1, r1
    1a92:	e3 70       	andi	r30, 0x03	; 3
    1a94:	e6 2b       	or	r30, r22
    1a96:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1a98:	65 b1       	in	r22, 0x05	; 5
    1a9a:	6a 60       	ori	r22, 0x0A	; 10
    1a9c:	65 b9       	out	0x05, r22	; 5
    1a9e:	65 b1       	in	r22, 0x05	; 5
    1aa0:	65 7f       	andi	r22, 0xF5	; 245
    1aa2:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1aa4:	65 b1       	in	r22, 0x05	; 5
    1aa6:	6a 60       	ori	r22, 0x0A	; 10
    1aa8:	65 b9       	out	0x05, r22	; 5
    1aaa:	65 b1       	in	r22, 0x05	; 5
    1aac:	65 7f       	andi	r22, 0xF5	; 245
    1aae:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1ab0:	f9 01       	movw	r30, r18
    1ab2:	be 96       	adiw	r30, 0x2e	; 46
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1ab4:	64 91       	lpm	r22, Z
    1ab6:	eb b1       	in	r30, 0x0b	; 11
    1ab8:	f4 e0       	ldi	r31, 0x04	; 4
    1aba:	6f 9f       	mul	r22, r31
    1abc:	b0 01       	movw	r22, r0
    1abe:	11 24       	eor	r1, r1
    1ac0:	e3 70       	andi	r30, 0x03	; 3
    1ac2:	e6 2b       	or	r30, r22
    1ac4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1ac6:	65 b1       	in	r22, 0x05	; 5
    1ac8:	6a 60       	ori	r22, 0x0A	; 10
    1aca:	65 b9       	out	0x05, r22	; 5
    1acc:	65 b1       	in	r22, 0x05	; 5
    1ace:	65 7f       	andi	r22, 0xF5	; 245
    1ad0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1ad2:	65 b1       	in	r22, 0x05	; 5
    1ad4:	6a 60       	ori	r22, 0x0A	; 10
    1ad6:	65 b9       	out	0x05, r22	; 5
    1ad8:	65 b1       	in	r22, 0x05	; 5
    1ada:	65 7f       	andi	r22, 0xF5	; 245
    1adc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1ade:	f9 01       	movw	r30, r18
    1ae0:	bf 96       	adiw	r30, 0x2f	; 47
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1ae2:	64 91       	lpm	r22, Z
    1ae4:	eb b1       	in	r30, 0x0b	; 11
    1ae6:	f4 e0       	ldi	r31, 0x04	; 4
    1ae8:	6f 9f       	mul	r22, r31
    1aea:	b0 01       	movw	r22, r0
    1aec:	11 24       	eor	r1, r1
    1aee:	e3 70       	andi	r30, 0x03	; 3
    1af0:	e6 2b       	or	r30, r22
    1af2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1af4:	65 b1       	in	r22, 0x05	; 5
    1af6:	6a 60       	ori	r22, 0x0A	; 10
    1af8:	65 b9       	out	0x05, r22	; 5
    1afa:	65 b1       	in	r22, 0x05	; 5
    1afc:	65 7f       	andi	r22, 0xF5	; 245
    1afe:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1b00:	65 b1       	in	r22, 0x05	; 5
    1b02:	6a 60       	ori	r22, 0x0A	; 10
    1b04:	65 b9       	out	0x05, r22	; 5
    1b06:	65 b1       	in	r22, 0x05	; 5
    1b08:	65 7f       	andi	r22, 0xF5	; 245
    1b0a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1b0c:	f9 01       	movw	r30, r18
    1b0e:	f0 96       	adiw	r30, 0x30	; 48
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 6
            SET_COLOR(pgm_read_byte(index++));
    1b10:	64 91       	lpm	r22, Z
    1b12:	eb b1       	in	r30, 0x0b	; 11
    1b14:	f4 e0       	ldi	r31, 0x04	; 4
    1b16:	6f 9f       	mul	r22, r31
    1b18:	b0 01       	movw	r22, r0
    1b1a:	11 24       	eor	r1, r1
    1b1c:	e3 70       	andi	r30, 0x03	; 3
    1b1e:	e6 2b       	or	r30, r22
    1b20:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1b22:	65 b1       	in	r22, 0x05	; 5
    1b24:	6a 60       	ori	r22, 0x0A	; 10
    1b26:	65 b9       	out	0x05, r22	; 5
    1b28:	65 b1       	in	r22, 0x05	; 5
    1b2a:	65 7f       	andi	r22, 0xF5	; 245
    1b2c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1b2e:	65 b1       	in	r22, 0x05	; 5
    1b30:	6a 60       	ori	r22, 0x0A	; 10
    1b32:	65 b9       	out	0x05, r22	; 5
    1b34:	65 b1       	in	r22, 0x05	; 5
    1b36:	65 7f       	andi	r22, 0xF5	; 245
    1b38:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 6
            SET_COLOR(pgm_read_byte(index++));
    1b3a:	f9 01       	movw	r30, r18
    1b3c:	f1 96       	adiw	r30, 0x31	; 49
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1b3e:	64 91       	lpm	r22, Z
    1b40:	eb b1       	in	r30, 0x0b	; 11
    1b42:	f4 e0       	ldi	r31, 0x04	; 4
    1b44:	6f 9f       	mul	r22, r31
    1b46:	b0 01       	movw	r22, r0
    1b48:	11 24       	eor	r1, r1
    1b4a:	e3 70       	andi	r30, 0x03	; 3
    1b4c:	e6 2b       	or	r30, r22
    1b4e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1b50:	65 b1       	in	r22, 0x05	; 5
    1b52:	6a 60       	ori	r22, 0x0A	; 10
    1b54:	65 b9       	out	0x05, r22	; 5
    1b56:	65 b1       	in	r22, 0x05	; 5
    1b58:	65 7f       	andi	r22, 0xF5	; 245
    1b5a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1b5c:	65 b1       	in	r22, 0x05	; 5
    1b5e:	6a 60       	ori	r22, 0x0A	; 10
    1b60:	65 b9       	out	0x05, r22	; 5
    1b62:	65 b1       	in	r22, 0x05	; 5
    1b64:	65 7f       	andi	r22, 0xF5	; 245
    1b66:	65 b9       	out	0x05, r22	; 5

            // chip 6
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1b68:	f9 01       	movw	r30, r18
    1b6a:	f2 96       	adiw	r30, 0x32	; 50
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1b6c:	64 91       	lpm	r22, Z
    1b6e:	eb b1       	in	r30, 0x0b	; 11
    1b70:	f4 e0       	ldi	r31, 0x04	; 4
    1b72:	6f 9f       	mul	r22, r31
    1b74:	b0 01       	movw	r22, r0
    1b76:	11 24       	eor	r1, r1
    1b78:	e3 70       	andi	r30, 0x03	; 3
    1b7a:	e6 2b       	or	r30, r22
    1b7c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1b7e:	65 b1       	in	r22, 0x05	; 5
    1b80:	6a 60       	ori	r22, 0x0A	; 10
    1b82:	65 b9       	out	0x05, r22	; 5
    1b84:	65 b1       	in	r22, 0x05	; 5
    1b86:	65 7f       	andi	r22, 0xF5	; 245
    1b88:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1b8a:	65 b1       	in	r22, 0x05	; 5
    1b8c:	6a 60       	ori	r22, 0x0A	; 10
    1b8e:	65 b9       	out	0x05, r22	; 5
    1b90:	65 b1       	in	r22, 0x05	; 5
    1b92:	65 7f       	andi	r22, 0xF5	; 245
    1b94:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1b96:	f9 01       	movw	r30, r18
    1b98:	f3 96       	adiw	r30, 0x33	; 51
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1b9a:	64 91       	lpm	r22, Z
    1b9c:	eb b1       	in	r30, 0x0b	; 11
    1b9e:	f4 e0       	ldi	r31, 0x04	; 4
    1ba0:	6f 9f       	mul	r22, r31
    1ba2:	b0 01       	movw	r22, r0
    1ba4:	11 24       	eor	r1, r1
    1ba6:	e3 70       	andi	r30, 0x03	; 3
    1ba8:	e6 2b       	or	r30, r22
    1baa:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1bac:	65 b1       	in	r22, 0x05	; 5
    1bae:	6a 60       	ori	r22, 0x0A	; 10
    1bb0:	65 b9       	out	0x05, r22	; 5
    1bb2:	65 b1       	in	r22, 0x05	; 5
    1bb4:	65 7f       	andi	r22, 0xF5	; 245
    1bb6:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1bb8:	65 b1       	in	r22, 0x05	; 5
    1bba:	6a 60       	ori	r22, 0x0A	; 10
    1bbc:	65 b9       	out	0x05, r22	; 5
    1bbe:	65 b1       	in	r22, 0x05	; 5
    1bc0:	65 7f       	andi	r22, 0xF5	; 245
    1bc2:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1bc4:	f9 01       	movw	r30, r18
    1bc6:	f4 96       	adiw	r30, 0x34	; 52
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1bc8:	64 91       	lpm	r22, Z
    1bca:	eb b1       	in	r30, 0x0b	; 11
    1bcc:	f4 e0       	ldi	r31, 0x04	; 4
    1bce:	6f 9f       	mul	r22, r31
    1bd0:	b0 01       	movw	r22, r0
    1bd2:	11 24       	eor	r1, r1
    1bd4:	e3 70       	andi	r30, 0x03	; 3
    1bd6:	e6 2b       	or	r30, r22
    1bd8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1bda:	65 b1       	in	r22, 0x05	; 5
    1bdc:	6a 60       	ori	r22, 0x0A	; 10
    1bde:	65 b9       	out	0x05, r22	; 5
    1be0:	65 b1       	in	r22, 0x05	; 5
    1be2:	65 7f       	andi	r22, 0xF5	; 245
    1be4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1be6:	65 b1       	in	r22, 0x05	; 5
    1be8:	6a 60       	ori	r22, 0x0A	; 10
    1bea:	65 b9       	out	0x05, r22	; 5
    1bec:	65 b1       	in	r22, 0x05	; 5
    1bee:	65 7f       	andi	r22, 0xF5	; 245
    1bf0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1bf2:	f9 01       	movw	r30, r18
    1bf4:	f5 96       	adiw	r30, 0x35	; 53
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1bf6:	64 91       	lpm	r22, Z
    1bf8:	eb b1       	in	r30, 0x0b	; 11
    1bfa:	f4 e0       	ldi	r31, 0x04	; 4
    1bfc:	6f 9f       	mul	r22, r31
    1bfe:	b0 01       	movw	r22, r0
    1c00:	11 24       	eor	r1, r1
    1c02:	e3 70       	andi	r30, 0x03	; 3
    1c04:	e6 2b       	or	r30, r22
    1c06:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1c08:	65 b1       	in	r22, 0x05	; 5
    1c0a:	6a 60       	ori	r22, 0x0A	; 10
    1c0c:	65 b9       	out	0x05, r22	; 5
    1c0e:	65 b1       	in	r22, 0x05	; 5
    1c10:	65 7f       	andi	r22, 0xF5	; 245
    1c12:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1c14:	65 b1       	in	r22, 0x05	; 5
    1c16:	6a 60       	ori	r22, 0x0A	; 10
    1c18:	65 b9       	out	0x05, r22	; 5
    1c1a:	65 b1       	in	r22, 0x05	; 5
    1c1c:	65 7f       	andi	r22, 0xF5	; 245
    1c1e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1c20:	f9 01       	movw	r30, r18
    1c22:	f6 96       	adiw	r30, 0x36	; 54
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1c24:	64 91       	lpm	r22, Z
    1c26:	eb b1       	in	r30, 0x0b	; 11
    1c28:	f4 e0       	ldi	r31, 0x04	; 4
    1c2a:	6f 9f       	mul	r22, r31
    1c2c:	b0 01       	movw	r22, r0
    1c2e:	11 24       	eor	r1, r1
    1c30:	e3 70       	andi	r30, 0x03	; 3
    1c32:	e6 2b       	or	r30, r22
    1c34:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1c36:	65 b1       	in	r22, 0x05	; 5
    1c38:	6a 60       	ori	r22, 0x0A	; 10
    1c3a:	65 b9       	out	0x05, r22	; 5
    1c3c:	65 b1       	in	r22, 0x05	; 5
    1c3e:	65 7f       	andi	r22, 0xF5	; 245
    1c40:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1c42:	65 b1       	in	r22, 0x05	; 5
    1c44:	6a 60       	ori	r22, 0x0A	; 10
    1c46:	65 b9       	out	0x05, r22	; 5
    1c48:	65 b1       	in	r22, 0x05	; 5
    1c4a:	65 7f       	andi	r22, 0xF5	; 245
    1c4c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1c4e:	f9 01       	movw	r30, r18
    1c50:	f7 96       	adiw	r30, 0x37	; 55
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1c52:	64 91       	lpm	r22, Z
    1c54:	eb b1       	in	r30, 0x0b	; 11
    1c56:	f4 e0       	ldi	r31, 0x04	; 4
    1c58:	6f 9f       	mul	r22, r31
    1c5a:	b0 01       	movw	r22, r0
    1c5c:	11 24       	eor	r1, r1
    1c5e:	e3 70       	andi	r30, 0x03	; 3
    1c60:	e6 2b       	or	r30, r22
    1c62:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1c64:	65 b1       	in	r22, 0x05	; 5
    1c66:	6a 60       	ori	r22, 0x0A	; 10
    1c68:	65 b9       	out	0x05, r22	; 5
    1c6a:	65 b1       	in	r22, 0x05	; 5
    1c6c:	65 7f       	andi	r22, 0xF5	; 245
    1c6e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1c70:	65 b1       	in	r22, 0x05	; 5
    1c72:	6a 60       	ori	r22, 0x0A	; 10
    1c74:	65 b9       	out	0x05, r22	; 5
    1c76:	65 b1       	in	r22, 0x05	; 5
    1c78:	65 7f       	andi	r22, 0xF5	; 245
    1c7a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1c7c:	f9 01       	movw	r30, r18
    1c7e:	f8 96       	adiw	r30, 0x38	; 56
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            SET_COLOR(pgm_read_byte(index++));
    1c80:	64 91       	lpm	r22, Z
    1c82:	eb b1       	in	r30, 0x0b	; 11
    1c84:	f4 e0       	ldi	r31, 0x04	; 4
    1c86:	6f 9f       	mul	r22, r31
    1c88:	b0 01       	movw	r22, r0
    1c8a:	11 24       	eor	r1, r1
    1c8c:	e3 70       	andi	r30, 0x03	; 3
    1c8e:	e6 2b       	or	r30, r22
    1c90:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1c92:	65 b1       	in	r22, 0x05	; 5
    1c94:	6a 60       	ori	r22, 0x0A	; 10
    1c96:	65 b9       	out	0x05, r22	; 5
    1c98:	65 b1       	in	r22, 0x05	; 5
    1c9a:	65 7f       	andi	r22, 0xF5	; 245
    1c9c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1c9e:	65 b1       	in	r22, 0x05	; 5
    1ca0:	6a 60       	ori	r22, 0x0A	; 10
    1ca2:	65 b9       	out	0x05, r22	; 5
    1ca4:	65 b1       	in	r22, 0x05	; 5
    1ca6:	65 7f       	andi	r22, 0xF5	; 245
    1ca8:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            SET_COLOR(pgm_read_byte(index++));
    1caa:	f9 01       	movw	r30, r18
    1cac:	f9 96       	adiw	r30, 0x39	; 57
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1cae:	64 91       	lpm	r22, Z
    1cb0:	eb b1       	in	r30, 0x0b	; 11
    1cb2:	f4 e0       	ldi	r31, 0x04	; 4
    1cb4:	6f 9f       	mul	r22, r31
    1cb6:	b0 01       	movw	r22, r0
    1cb8:	11 24       	eor	r1, r1
    1cba:	e3 70       	andi	r30, 0x03	; 3
    1cbc:	e6 2b       	or	r30, r22
    1cbe:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1cc0:	65 b1       	in	r22, 0x05	; 5
    1cc2:	6a 60       	ori	r22, 0x0A	; 10
    1cc4:	65 b9       	out	0x05, r22	; 5
    1cc6:	65 b1       	in	r22, 0x05	; 5
    1cc8:	65 7f       	andi	r22, 0xF5	; 245
    1cca:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1ccc:	65 b1       	in	r22, 0x05	; 5
    1cce:	6a 60       	ori	r22, 0x0A	; 10
    1cd0:	65 b9       	out	0x05, r22	; 5
    1cd2:	65 b1       	in	r22, 0x05	; 5
    1cd4:	65 7f       	andi	r22, 0xF5	; 245
    1cd6:	65 b9       	out	0x05, r22	; 5

            // chip 7
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1cd8:	f9 01       	movw	r30, r18
    1cda:	fa 96       	adiw	r30, 0x3a	; 58
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1cdc:	64 91       	lpm	r22, Z
    1cde:	eb b1       	in	r30, 0x0b	; 11
    1ce0:	f4 e0       	ldi	r31, 0x04	; 4
    1ce2:	6f 9f       	mul	r22, r31
    1ce4:	b0 01       	movw	r22, r0
    1ce6:	11 24       	eor	r1, r1
    1ce8:	e3 70       	andi	r30, 0x03	; 3
    1cea:	e6 2b       	or	r30, r22
    1cec:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1cee:	65 b1       	in	r22, 0x05	; 5
    1cf0:	6a 60       	ori	r22, 0x0A	; 10
    1cf2:	65 b9       	out	0x05, r22	; 5
    1cf4:	65 b1       	in	r22, 0x05	; 5
    1cf6:	65 7f       	andi	r22, 0xF5	; 245
    1cf8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1cfa:	65 b1       	in	r22, 0x05	; 5
    1cfc:	6a 60       	ori	r22, 0x0A	; 10
    1cfe:	65 b9       	out	0x05, r22	; 5
    1d00:	65 b1       	in	r22, 0x05	; 5
    1d02:	65 7f       	andi	r22, 0xF5	; 245
    1d04:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1d06:	f9 01       	movw	r30, r18
    1d08:	fb 96       	adiw	r30, 0x3b	; 59
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1d0a:	64 91       	lpm	r22, Z
    1d0c:	eb b1       	in	r30, 0x0b	; 11
    1d0e:	f4 e0       	ldi	r31, 0x04	; 4
    1d10:	6f 9f       	mul	r22, r31
    1d12:	b0 01       	movw	r22, r0
    1d14:	11 24       	eor	r1, r1
    1d16:	e3 70       	andi	r30, 0x03	; 3
    1d18:	e6 2b       	or	r30, r22
    1d1a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1d1c:	65 b1       	in	r22, 0x05	; 5
    1d1e:	6a 60       	ori	r22, 0x0A	; 10
    1d20:	65 b9       	out	0x05, r22	; 5
    1d22:	65 b1       	in	r22, 0x05	; 5
    1d24:	65 7f       	andi	r22, 0xF5	; 245
    1d26:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1d28:	65 b1       	in	r22, 0x05	; 5
    1d2a:	6a 60       	ori	r22, 0x0A	; 10
    1d2c:	65 b9       	out	0x05, r22	; 5
    1d2e:	65 b1       	in	r22, 0x05	; 5
    1d30:	65 7f       	andi	r22, 0xF5	; 245
    1d32:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1d34:	f9 01       	movw	r30, r18
    1d36:	fc 96       	adiw	r30, 0x3c	; 60
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1d38:	64 91       	lpm	r22, Z
    1d3a:	eb b1       	in	r30, 0x0b	; 11
    1d3c:	f4 e0       	ldi	r31, 0x04	; 4
    1d3e:	6f 9f       	mul	r22, r31
    1d40:	b0 01       	movw	r22, r0
    1d42:	11 24       	eor	r1, r1
    1d44:	e3 70       	andi	r30, 0x03	; 3
    1d46:	e6 2b       	or	r30, r22
    1d48:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1d4a:	65 b1       	in	r22, 0x05	; 5
    1d4c:	6a 60       	ori	r22, 0x0A	; 10
    1d4e:	65 b9       	out	0x05, r22	; 5
    1d50:	65 b1       	in	r22, 0x05	; 5
    1d52:	65 7f       	andi	r22, 0xF5	; 245
    1d54:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1d56:	65 b1       	in	r22, 0x05	; 5
    1d58:	6a 60       	ori	r22, 0x0A	; 10
    1d5a:	65 b9       	out	0x05, r22	; 5
    1d5c:	65 b1       	in	r22, 0x05	; 5
    1d5e:	65 7f       	andi	r22, 0xF5	; 245
    1d60:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1d62:	f9 01       	movw	r30, r18
    1d64:	fd 96       	adiw	r30, 0x3d	; 61
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1d66:	64 91       	lpm	r22, Z
    1d68:	eb b1       	in	r30, 0x0b	; 11
    1d6a:	f4 e0       	ldi	r31, 0x04	; 4
    1d6c:	6f 9f       	mul	r22, r31
    1d6e:	b0 01       	movw	r22, r0
    1d70:	11 24       	eor	r1, r1
    1d72:	e3 70       	andi	r30, 0x03	; 3
    1d74:	e6 2b       	or	r30, r22
    1d76:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1d78:	65 b1       	in	r22, 0x05	; 5
    1d7a:	6a 60       	ori	r22, 0x0A	; 10
    1d7c:	65 b9       	out	0x05, r22	; 5
    1d7e:	65 b1       	in	r22, 0x05	; 5
    1d80:	65 7f       	andi	r22, 0xF5	; 245
    1d82:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1d84:	65 b1       	in	r22, 0x05	; 5
    1d86:	6a 60       	ori	r22, 0x0A	; 10
    1d88:	65 b9       	out	0x05, r22	; 5
    1d8a:	65 b1       	in	r22, 0x05	; 5
    1d8c:	65 7f       	andi	r22, 0xF5	; 245
    1d8e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1d90:	f9 01       	movw	r30, r18
    1d92:	fe 96       	adiw	r30, 0x3e	; 62
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1d94:	64 91       	lpm	r22, Z
    1d96:	eb b1       	in	r30, 0x0b	; 11
    1d98:	f4 e0       	ldi	r31, 0x04	; 4
    1d9a:	6f 9f       	mul	r22, r31
    1d9c:	b0 01       	movw	r22, r0
    1d9e:	11 24       	eor	r1, r1
    1da0:	e3 70       	andi	r30, 0x03	; 3
    1da2:	e6 2b       	or	r30, r22
    1da4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1da6:	65 b1       	in	r22, 0x05	; 5
    1da8:	6a 60       	ori	r22, 0x0A	; 10
    1daa:	65 b9       	out	0x05, r22	; 5
    1dac:	65 b1       	in	r22, 0x05	; 5
    1dae:	65 7f       	andi	r22, 0xF5	; 245
    1db0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1db2:	65 b1       	in	r22, 0x05	; 5
    1db4:	6a 60       	ori	r22, 0x0A	; 10
    1db6:	65 b9       	out	0x05, r22	; 5
    1db8:	65 b1       	in	r22, 0x05	; 5
    1dba:	65 7f       	andi	r22, 0xF5	; 245
    1dbc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1dbe:	f9 01       	movw	r30, r18
    1dc0:	ff 96       	adiw	r30, 0x3f	; 63
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1dc2:	e4 91       	lpm	r30, Z
    1dc4:	2b b1       	in	r18, 0x0b	; 11
    1dc6:	34 e0       	ldi	r19, 0x04	; 4
    1dc8:	e3 9f       	mul	r30, r19
    1dca:	f0 01       	movw	r30, r0
    1dcc:	11 24       	eor	r1, r1
    1dce:	23 70       	andi	r18, 0x03	; 3
    1dd0:	e2 2b       	or	r30, r18
    1dd2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1dd4:	25 b1       	in	r18, 0x05	; 5
    1dd6:	2a 60       	ori	r18, 0x0A	; 10
    1dd8:	25 b9       	out	0x05, r18	; 5
    1dda:	25 b1       	in	r18, 0x05	; 5
    1ddc:	25 7f       	andi	r18, 0xF5	; 245
    1dde:	25 b9       	out	0x05, r18	; 5

            // shift data into buffers
            HIGH_LAT;
    1de0:	2a 9a       	sbi	0x05, 2	; 5
            PWCLK_GCLK;
    1de2:	25 b1       	in	r18, 0x05	; 5
    1de4:	2a 60       	ori	r18, 0x0A	; 10
    1de6:	25 b9       	out	0x05, r18	; 5
    1de8:	25 b1       	in	r18, 0x05	; 5
    1dea:	25 7f       	andi	r18, 0xF5	; 245
    1dec:	25 b9       	out	0x05, r18	; 5
            CLEAR_LAT;
    1dee:	2a 98       	cbi	0x05, 2	; 5

#pragma endregion // MMSB

            index = ((y & ~1) << 5) + (PANEL_BUFFERSIZE / 4);
    1df0:	9c 01       	movw	r18, r24
    1df2:	3c 5f       	subi	r19, 0xFC	; 252

#pragma region MSB
            // chip 0
            SET_COLOR(pgm_read_byte(index++));
    1df4:	f9 01       	movw	r30, r18
    1df6:	a4 91       	lpm	r26, Z
    1df8:	6b b1       	in	r22, 0x0b	; 11
    1dfa:	74 e0       	ldi	r23, 0x04	; 4
    1dfc:	a7 9f       	mul	r26, r23
    1dfe:	f0 01       	movw	r30, r0
    1e00:	11 24       	eor	r1, r1
    1e02:	63 70       	andi	r22, 0x03	; 3
    1e04:	6e 2b       	or	r22, r30
    1e06:	6b b9       	out	0x0b, r22	; 11
            PWCLK_GCLK;
    1e08:	65 b1       	in	r22, 0x05	; 5
    1e0a:	6a 60       	ori	r22, 0x0A	; 10
    1e0c:	65 b9       	out	0x05, r22	; 5
    1e0e:	65 b1       	in	r22, 0x05	; 5
    1e10:	65 7f       	andi	r22, 0xF5	; 245
    1e12:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1e14:	65 b1       	in	r22, 0x05	; 5
    1e16:	6a 60       	ori	r22, 0x0A	; 10
    1e18:	65 b9       	out	0x05, r22	; 5
    1e1a:	65 b1       	in	r22, 0x05	; 5
    1e1c:	65 7f       	andi	r22, 0xF5	; 245
    1e1e:	65 b9       	out	0x05, r22	; 5

            index = ((y & ~1) << 5) + (PANEL_BUFFERSIZE / 4);

#pragma region MSB
            // chip 0
            SET_COLOR(pgm_read_byte(index++));
    1e20:	f9 01       	movw	r30, r18
    1e22:	31 96       	adiw	r30, 0x01	; 1
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1e24:	64 91       	lpm	r22, Z
    1e26:	eb b1       	in	r30, 0x0b	; 11
    1e28:	f4 e0       	ldi	r31, 0x04	; 4
    1e2a:	6f 9f       	mul	r22, r31
    1e2c:	b0 01       	movw	r22, r0
    1e2e:	11 24       	eor	r1, r1
    1e30:	e3 70       	andi	r30, 0x03	; 3
    1e32:	e6 2b       	or	r30, r22
    1e34:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1e36:	65 b1       	in	r22, 0x05	; 5
    1e38:	6a 60       	ori	r22, 0x0A	; 10
    1e3a:	65 b9       	out	0x05, r22	; 5
    1e3c:	65 b1       	in	r22, 0x05	; 5
    1e3e:	65 7f       	andi	r22, 0xF5	; 245
    1e40:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1e42:	65 b1       	in	r22, 0x05	; 5
    1e44:	6a 60       	ori	r22, 0x0A	; 10
    1e46:	65 b9       	out	0x05, r22	; 5
    1e48:	65 b1       	in	r22, 0x05	; 5
    1e4a:	65 7f       	andi	r22, 0xF5	; 245
    1e4c:	65 b9       	out	0x05, r22	; 5
#pragma region MSB
            // chip 0
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1e4e:	f9 01       	movw	r30, r18
    1e50:	32 96       	adiw	r30, 0x02	; 2
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1e52:	64 91       	lpm	r22, Z
    1e54:	eb b1       	in	r30, 0x0b	; 11
    1e56:	f4 e0       	ldi	r31, 0x04	; 4
    1e58:	6f 9f       	mul	r22, r31
    1e5a:	b0 01       	movw	r22, r0
    1e5c:	11 24       	eor	r1, r1
    1e5e:	e3 70       	andi	r30, 0x03	; 3
    1e60:	e6 2b       	or	r30, r22
    1e62:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1e64:	65 b1       	in	r22, 0x05	; 5
    1e66:	6a 60       	ori	r22, 0x0A	; 10
    1e68:	65 b9       	out	0x05, r22	; 5
    1e6a:	65 b1       	in	r22, 0x05	; 5
    1e6c:	65 7f       	andi	r22, 0xF5	; 245
    1e6e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1e70:	65 b1       	in	r22, 0x05	; 5
    1e72:	6a 60       	ori	r22, 0x0A	; 10
    1e74:	65 b9       	out	0x05, r22	; 5
    1e76:	65 b1       	in	r22, 0x05	; 5
    1e78:	65 7f       	andi	r22, 0xF5	; 245
    1e7a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1e7c:	f9 01       	movw	r30, r18
    1e7e:	33 96       	adiw	r30, 0x03	; 3
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1e80:	64 91       	lpm	r22, Z
    1e82:	eb b1       	in	r30, 0x0b	; 11
    1e84:	f4 e0       	ldi	r31, 0x04	; 4
    1e86:	6f 9f       	mul	r22, r31
    1e88:	b0 01       	movw	r22, r0
    1e8a:	11 24       	eor	r1, r1
    1e8c:	e3 70       	andi	r30, 0x03	; 3
    1e8e:	e6 2b       	or	r30, r22
    1e90:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1e92:	65 b1       	in	r22, 0x05	; 5
    1e94:	6a 60       	ori	r22, 0x0A	; 10
    1e96:	65 b9       	out	0x05, r22	; 5
    1e98:	65 b1       	in	r22, 0x05	; 5
    1e9a:	65 7f       	andi	r22, 0xF5	; 245
    1e9c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1e9e:	65 b1       	in	r22, 0x05	; 5
    1ea0:	6a 60       	ori	r22, 0x0A	; 10
    1ea2:	65 b9       	out	0x05, r22	; 5
    1ea4:	65 b1       	in	r22, 0x05	; 5
    1ea6:	65 7f       	andi	r22, 0xF5	; 245
    1ea8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1eaa:	f9 01       	movw	r30, r18
    1eac:	34 96       	adiw	r30, 0x04	; 4
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1eae:	64 91       	lpm	r22, Z
    1eb0:	eb b1       	in	r30, 0x0b	; 11
    1eb2:	f4 e0       	ldi	r31, 0x04	; 4
    1eb4:	6f 9f       	mul	r22, r31
    1eb6:	b0 01       	movw	r22, r0
    1eb8:	11 24       	eor	r1, r1
    1eba:	e3 70       	andi	r30, 0x03	; 3
    1ebc:	e6 2b       	or	r30, r22
    1ebe:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1ec0:	65 b1       	in	r22, 0x05	; 5
    1ec2:	6a 60       	ori	r22, 0x0A	; 10
    1ec4:	65 b9       	out	0x05, r22	; 5
    1ec6:	65 b1       	in	r22, 0x05	; 5
    1ec8:	65 7f       	andi	r22, 0xF5	; 245
    1eca:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1ecc:	65 b1       	in	r22, 0x05	; 5
    1ece:	6a 60       	ori	r22, 0x0A	; 10
    1ed0:	65 b9       	out	0x05, r22	; 5
    1ed2:	65 b1       	in	r22, 0x05	; 5
    1ed4:	65 7f       	andi	r22, 0xF5	; 245
    1ed6:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1ed8:	f9 01       	movw	r30, r18
    1eda:	35 96       	adiw	r30, 0x05	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1edc:	64 91       	lpm	r22, Z
    1ede:	eb b1       	in	r30, 0x0b	; 11
    1ee0:	f4 e0       	ldi	r31, 0x04	; 4
    1ee2:	6f 9f       	mul	r22, r31
    1ee4:	b0 01       	movw	r22, r0
    1ee6:	11 24       	eor	r1, r1
    1ee8:	e3 70       	andi	r30, 0x03	; 3
    1eea:	e6 2b       	or	r30, r22
    1eec:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1eee:	65 b1       	in	r22, 0x05	; 5
    1ef0:	6a 60       	ori	r22, 0x0A	; 10
    1ef2:	65 b9       	out	0x05, r22	; 5
    1ef4:	65 b1       	in	r22, 0x05	; 5
    1ef6:	65 7f       	andi	r22, 0xF5	; 245
    1ef8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1efa:	65 b1       	in	r22, 0x05	; 5
    1efc:	6a 60       	ori	r22, 0x0A	; 10
    1efe:	65 b9       	out	0x05, r22	; 5
    1f00:	65 b1       	in	r22, 0x05	; 5
    1f02:	65 7f       	andi	r22, 0xF5	; 245
    1f04:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1f06:	f9 01       	movw	r30, r18
    1f08:	36 96       	adiw	r30, 0x06	; 6
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1f0a:	64 91       	lpm	r22, Z
    1f0c:	eb b1       	in	r30, 0x0b	; 11
    1f0e:	f4 e0       	ldi	r31, 0x04	; 4
    1f10:	6f 9f       	mul	r22, r31
    1f12:	b0 01       	movw	r22, r0
    1f14:	11 24       	eor	r1, r1
    1f16:	e3 70       	andi	r30, 0x03	; 3
    1f18:	e6 2b       	or	r30, r22
    1f1a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1f1c:	65 b1       	in	r22, 0x05	; 5
    1f1e:	6a 60       	ori	r22, 0x0A	; 10
    1f20:	65 b9       	out	0x05, r22	; 5
    1f22:	65 b1       	in	r22, 0x05	; 5
    1f24:	65 7f       	andi	r22, 0xF5	; 245
    1f26:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1f28:	65 b1       	in	r22, 0x05	; 5
    1f2a:	6a 60       	ori	r22, 0x0A	; 10
    1f2c:	65 b9       	out	0x05, r22	; 5
    1f2e:	65 b1       	in	r22, 0x05	; 5
    1f30:	65 7f       	andi	r22, 0xF5	; 245
    1f32:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1f34:	f9 01       	movw	r30, r18
    1f36:	37 96       	adiw	r30, 0x07	; 7
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1f38:	64 91       	lpm	r22, Z
    1f3a:	eb b1       	in	r30, 0x0b	; 11
    1f3c:	f4 e0       	ldi	r31, 0x04	; 4
    1f3e:	6f 9f       	mul	r22, r31
    1f40:	b0 01       	movw	r22, r0
    1f42:	11 24       	eor	r1, r1
    1f44:	e3 70       	andi	r30, 0x03	; 3
    1f46:	e6 2b       	or	r30, r22
    1f48:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1f4a:	65 b1       	in	r22, 0x05	; 5
    1f4c:	6a 60       	ori	r22, 0x0A	; 10
    1f4e:	65 b9       	out	0x05, r22	; 5
    1f50:	65 b1       	in	r22, 0x05	; 5
    1f52:	65 7f       	andi	r22, 0xF5	; 245
    1f54:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1f56:	65 b1       	in	r22, 0x05	; 5
    1f58:	6a 60       	ori	r22, 0x0A	; 10
    1f5a:	65 b9       	out	0x05, r22	; 5
    1f5c:	65 b1       	in	r22, 0x05	; 5
    1f5e:	65 7f       	andi	r22, 0xF5	; 245
    1f60:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1f62:	f9 01       	movw	r30, r18
    1f64:	38 96       	adiw	r30, 0x08	; 8
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            SET_COLOR(pgm_read_byte(index++));
    1f66:	64 91       	lpm	r22, Z
    1f68:	eb b1       	in	r30, 0x0b	; 11
    1f6a:	f4 e0       	ldi	r31, 0x04	; 4
    1f6c:	6f 9f       	mul	r22, r31
    1f6e:	b0 01       	movw	r22, r0
    1f70:	11 24       	eor	r1, r1
    1f72:	e3 70       	andi	r30, 0x03	; 3
    1f74:	e6 2b       	or	r30, r22
    1f76:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1f78:	65 b1       	in	r22, 0x05	; 5
    1f7a:	6a 60       	ori	r22, 0x0A	; 10
    1f7c:	65 b9       	out	0x05, r22	; 5
    1f7e:	65 b1       	in	r22, 0x05	; 5
    1f80:	65 7f       	andi	r22, 0xF5	; 245
    1f82:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1f84:	65 b1       	in	r22, 0x05	; 5
    1f86:	6a 60       	ori	r22, 0x0A	; 10
    1f88:	65 b9       	out	0x05, r22	; 5
    1f8a:	65 b1       	in	r22, 0x05	; 5
    1f8c:	65 7f       	andi	r22, 0xF5	; 245
    1f8e:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            SET_COLOR(pgm_read_byte(index++));
    1f90:	f9 01       	movw	r30, r18
    1f92:	39 96       	adiw	r30, 0x09	; 9
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1f94:	64 91       	lpm	r22, Z
    1f96:	eb b1       	in	r30, 0x0b	; 11
    1f98:	f4 e0       	ldi	r31, 0x04	; 4
    1f9a:	6f 9f       	mul	r22, r31
    1f9c:	b0 01       	movw	r22, r0
    1f9e:	11 24       	eor	r1, r1
    1fa0:	e3 70       	andi	r30, 0x03	; 3
    1fa2:	e6 2b       	or	r30, r22
    1fa4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1fa6:	65 b1       	in	r22, 0x05	; 5
    1fa8:	6a 60       	ori	r22, 0x0A	; 10
    1faa:	65 b9       	out	0x05, r22	; 5
    1fac:	65 b1       	in	r22, 0x05	; 5
    1fae:	65 7f       	andi	r22, 0xF5	; 245
    1fb0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1fb2:	65 b1       	in	r22, 0x05	; 5
    1fb4:	6a 60       	ori	r22, 0x0A	; 10
    1fb6:	65 b9       	out	0x05, r22	; 5
    1fb8:	65 b1       	in	r22, 0x05	; 5
    1fba:	65 7f       	andi	r22, 0xF5	; 245
    1fbc:	65 b9       	out	0x05, r22	; 5

            // chip 1
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1fbe:	f9 01       	movw	r30, r18
    1fc0:	3a 96       	adiw	r30, 0x0a	; 10
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1fc2:	64 91       	lpm	r22, Z
    1fc4:	eb b1       	in	r30, 0x0b	; 11
    1fc6:	f4 e0       	ldi	r31, 0x04	; 4
    1fc8:	6f 9f       	mul	r22, r31
    1fca:	b0 01       	movw	r22, r0
    1fcc:	11 24       	eor	r1, r1
    1fce:	e3 70       	andi	r30, 0x03	; 3
    1fd0:	e6 2b       	or	r30, r22
    1fd2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    1fd4:	65 b1       	in	r22, 0x05	; 5
    1fd6:	6a 60       	ori	r22, 0x0A	; 10
    1fd8:	65 b9       	out	0x05, r22	; 5
    1fda:	65 b1       	in	r22, 0x05	; 5
    1fdc:	65 7f       	andi	r22, 0xF5	; 245
    1fde:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    1fe0:	65 b1       	in	r22, 0x05	; 5
    1fe2:	6a 60       	ori	r22, 0x0A	; 10
    1fe4:	65 b9       	out	0x05, r22	; 5
    1fe6:	65 b1       	in	r22, 0x05	; 5
    1fe8:	65 7f       	andi	r22, 0xF5	; 245
    1fea:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1fec:	f9 01       	movw	r30, r18
    1fee:	3b 96       	adiw	r30, 0x0b	; 11
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    1ff0:	64 91       	lpm	r22, Z
    1ff2:	eb b1       	in	r30, 0x0b	; 11
    1ff4:	f4 e0       	ldi	r31, 0x04	; 4
    1ff6:	6f 9f       	mul	r22, r31
    1ff8:	b0 01       	movw	r22, r0
    1ffa:	11 24       	eor	r1, r1
    1ffc:	e3 70       	andi	r30, 0x03	; 3
    1ffe:	e6 2b       	or	r30, r22
    2000:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2002:	65 b1       	in	r22, 0x05	; 5
    2004:	6a 60       	ori	r22, 0x0A	; 10
    2006:	65 b9       	out	0x05, r22	; 5
    2008:	65 b1       	in	r22, 0x05	; 5
    200a:	65 7f       	andi	r22, 0xF5	; 245
    200c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    200e:	65 b1       	in	r22, 0x05	; 5
    2010:	6a 60       	ori	r22, 0x0A	; 10
    2012:	65 b9       	out	0x05, r22	; 5
    2014:	65 b1       	in	r22, 0x05	; 5
    2016:	65 7f       	andi	r22, 0xF5	; 245
    2018:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    201a:	f9 01       	movw	r30, r18
    201c:	3c 96       	adiw	r30, 0x0c	; 12
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    201e:	64 91       	lpm	r22, Z
    2020:	eb b1       	in	r30, 0x0b	; 11
    2022:	f4 e0       	ldi	r31, 0x04	; 4
    2024:	6f 9f       	mul	r22, r31
    2026:	b0 01       	movw	r22, r0
    2028:	11 24       	eor	r1, r1
    202a:	e3 70       	andi	r30, 0x03	; 3
    202c:	e6 2b       	or	r30, r22
    202e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2030:	65 b1       	in	r22, 0x05	; 5
    2032:	6a 60       	ori	r22, 0x0A	; 10
    2034:	65 b9       	out	0x05, r22	; 5
    2036:	65 b1       	in	r22, 0x05	; 5
    2038:	65 7f       	andi	r22, 0xF5	; 245
    203a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    203c:	65 b1       	in	r22, 0x05	; 5
    203e:	6a 60       	ori	r22, 0x0A	; 10
    2040:	65 b9       	out	0x05, r22	; 5
    2042:	65 b1       	in	r22, 0x05	; 5
    2044:	65 7f       	andi	r22, 0xF5	; 245
    2046:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2048:	f9 01       	movw	r30, r18
    204a:	3d 96       	adiw	r30, 0x0d	; 13
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    204c:	64 91       	lpm	r22, Z
    204e:	eb b1       	in	r30, 0x0b	; 11
    2050:	f4 e0       	ldi	r31, 0x04	; 4
    2052:	6f 9f       	mul	r22, r31
    2054:	b0 01       	movw	r22, r0
    2056:	11 24       	eor	r1, r1
    2058:	e3 70       	andi	r30, 0x03	; 3
    205a:	e6 2b       	or	r30, r22
    205c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    205e:	65 b1       	in	r22, 0x05	; 5
    2060:	6a 60       	ori	r22, 0x0A	; 10
    2062:	65 b9       	out	0x05, r22	; 5
    2064:	65 b1       	in	r22, 0x05	; 5
    2066:	65 7f       	andi	r22, 0xF5	; 245
    2068:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    206a:	65 b1       	in	r22, 0x05	; 5
    206c:	6a 60       	ori	r22, 0x0A	; 10
    206e:	65 b9       	out	0x05, r22	; 5
    2070:	65 b1       	in	r22, 0x05	; 5
    2072:	65 7f       	andi	r22, 0xF5	; 245
    2074:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2076:	f9 01       	movw	r30, r18
    2078:	3e 96       	adiw	r30, 0x0e	; 14
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    207a:	64 91       	lpm	r22, Z
    207c:	eb b1       	in	r30, 0x0b	; 11
    207e:	f4 e0       	ldi	r31, 0x04	; 4
    2080:	6f 9f       	mul	r22, r31
    2082:	b0 01       	movw	r22, r0
    2084:	11 24       	eor	r1, r1
    2086:	e3 70       	andi	r30, 0x03	; 3
    2088:	e6 2b       	or	r30, r22
    208a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    208c:	65 b1       	in	r22, 0x05	; 5
    208e:	6a 60       	ori	r22, 0x0A	; 10
    2090:	65 b9       	out	0x05, r22	; 5
    2092:	65 b1       	in	r22, 0x05	; 5
    2094:	65 7f       	andi	r22, 0xF5	; 245
    2096:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2098:	65 b1       	in	r22, 0x05	; 5
    209a:	6a 60       	ori	r22, 0x0A	; 10
    209c:	65 b9       	out	0x05, r22	; 5
    209e:	65 b1       	in	r22, 0x05	; 5
    20a0:	65 7f       	andi	r22, 0xF5	; 245
    20a2:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    20a4:	f9 01       	movw	r30, r18
    20a6:	3f 96       	adiw	r30, 0x0f	; 15
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    20a8:	64 91       	lpm	r22, Z
    20aa:	eb b1       	in	r30, 0x0b	; 11
    20ac:	f4 e0       	ldi	r31, 0x04	; 4
    20ae:	6f 9f       	mul	r22, r31
    20b0:	b0 01       	movw	r22, r0
    20b2:	11 24       	eor	r1, r1
    20b4:	e3 70       	andi	r30, 0x03	; 3
    20b6:	e6 2b       	or	r30, r22
    20b8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    20ba:	65 b1       	in	r22, 0x05	; 5
    20bc:	6a 60       	ori	r22, 0x0A	; 10
    20be:	65 b9       	out	0x05, r22	; 5
    20c0:	65 b1       	in	r22, 0x05	; 5
    20c2:	65 7f       	andi	r22, 0xF5	; 245
    20c4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    20c6:	65 b1       	in	r22, 0x05	; 5
    20c8:	6a 60       	ori	r22, 0x0A	; 10
    20ca:	65 b9       	out	0x05, r22	; 5
    20cc:	65 b1       	in	r22, 0x05	; 5
    20ce:	65 7f       	andi	r22, 0xF5	; 245
    20d0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    20d2:	f9 01       	movw	r30, r18
    20d4:	70 96       	adiw	r30, 0x10	; 16
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
    20d6:	64 91       	lpm	r22, Z
    20d8:	eb b1       	in	r30, 0x0b	; 11
    20da:	f4 e0       	ldi	r31, 0x04	; 4
    20dc:	6f 9f       	mul	r22, r31
    20de:	b0 01       	movw	r22, r0
    20e0:	11 24       	eor	r1, r1
    20e2:	e3 70       	andi	r30, 0x03	; 3
    20e4:	e6 2b       	or	r30, r22
    20e6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    20e8:	65 b1       	in	r22, 0x05	; 5
    20ea:	6a 60       	ori	r22, 0x0A	; 10
    20ec:	65 b9       	out	0x05, r22	; 5
    20ee:	65 b1       	in	r22, 0x05	; 5
    20f0:	65 7f       	andi	r22, 0xF5	; 245
    20f2:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    20f4:	65 b1       	in	r22, 0x05	; 5
    20f6:	6a 60       	ori	r22, 0x0A	; 10
    20f8:	65 b9       	out	0x05, r22	; 5
    20fa:	65 b1       	in	r22, 0x05	; 5
    20fc:	65 7f       	andi	r22, 0xF5	; 245
    20fe:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
    2100:	f9 01       	movw	r30, r18
    2102:	71 96       	adiw	r30, 0x11	; 17
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2104:	64 91       	lpm	r22, Z
    2106:	eb b1       	in	r30, 0x0b	; 11
    2108:	f4 e0       	ldi	r31, 0x04	; 4
    210a:	6f 9f       	mul	r22, r31
    210c:	b0 01       	movw	r22, r0
    210e:	11 24       	eor	r1, r1
    2110:	e3 70       	andi	r30, 0x03	; 3
    2112:	e6 2b       	or	r30, r22
    2114:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2116:	65 b1       	in	r22, 0x05	; 5
    2118:	6a 60       	ori	r22, 0x0A	; 10
    211a:	65 b9       	out	0x05, r22	; 5
    211c:	65 b1       	in	r22, 0x05	; 5
    211e:	65 7f       	andi	r22, 0xF5	; 245
    2120:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2122:	65 b1       	in	r22, 0x05	; 5
    2124:	6a 60       	ori	r22, 0x0A	; 10
    2126:	65 b9       	out	0x05, r22	; 5
    2128:	65 b1       	in	r22, 0x05	; 5
    212a:	65 7f       	andi	r22, 0xF5	; 245
    212c:	65 b9       	out	0x05, r22	; 5

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    212e:	f9 01       	movw	r30, r18
    2130:	72 96       	adiw	r30, 0x12	; 18
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2132:	64 91       	lpm	r22, Z
    2134:	eb b1       	in	r30, 0x0b	; 11
    2136:	f4 e0       	ldi	r31, 0x04	; 4
    2138:	6f 9f       	mul	r22, r31
    213a:	b0 01       	movw	r22, r0
    213c:	11 24       	eor	r1, r1
    213e:	e3 70       	andi	r30, 0x03	; 3
    2140:	e6 2b       	or	r30, r22
    2142:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2144:	65 b1       	in	r22, 0x05	; 5
    2146:	6a 60       	ori	r22, 0x0A	; 10
    2148:	65 b9       	out	0x05, r22	; 5
    214a:	65 b1       	in	r22, 0x05	; 5
    214c:	65 7f       	andi	r22, 0xF5	; 245
    214e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2150:	65 b1       	in	r22, 0x05	; 5
    2152:	6a 60       	ori	r22, 0x0A	; 10
    2154:	65 b9       	out	0x05, r22	; 5
    2156:	65 b1       	in	r22, 0x05	; 5
    2158:	65 7f       	andi	r22, 0xF5	; 245
    215a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    215c:	f9 01       	movw	r30, r18
    215e:	73 96       	adiw	r30, 0x13	; 19
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2160:	64 91       	lpm	r22, Z
    2162:	eb b1       	in	r30, 0x0b	; 11
    2164:	f4 e0       	ldi	r31, 0x04	; 4
    2166:	6f 9f       	mul	r22, r31
    2168:	b0 01       	movw	r22, r0
    216a:	11 24       	eor	r1, r1
    216c:	e3 70       	andi	r30, 0x03	; 3
    216e:	e6 2b       	or	r30, r22
    2170:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2172:	65 b1       	in	r22, 0x05	; 5
    2174:	6a 60       	ori	r22, 0x0A	; 10
    2176:	65 b9       	out	0x05, r22	; 5
    2178:	65 b1       	in	r22, 0x05	; 5
    217a:	65 7f       	andi	r22, 0xF5	; 245
    217c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    217e:	65 b1       	in	r22, 0x05	; 5
    2180:	6a 60       	ori	r22, 0x0A	; 10
    2182:	65 b9       	out	0x05, r22	; 5
    2184:	65 b1       	in	r22, 0x05	; 5
    2186:	65 7f       	andi	r22, 0xF5	; 245
    2188:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    218a:	f9 01       	movw	r30, r18
    218c:	74 96       	adiw	r30, 0x14	; 20
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    218e:	64 91       	lpm	r22, Z
    2190:	eb b1       	in	r30, 0x0b	; 11
    2192:	f4 e0       	ldi	r31, 0x04	; 4
    2194:	6f 9f       	mul	r22, r31
    2196:	b0 01       	movw	r22, r0
    2198:	11 24       	eor	r1, r1
    219a:	e3 70       	andi	r30, 0x03	; 3
    219c:	e6 2b       	or	r30, r22
    219e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    21a0:	65 b1       	in	r22, 0x05	; 5
    21a2:	6a 60       	ori	r22, 0x0A	; 10
    21a4:	65 b9       	out	0x05, r22	; 5
    21a6:	65 b1       	in	r22, 0x05	; 5
    21a8:	65 7f       	andi	r22, 0xF5	; 245
    21aa:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    21ac:	65 b1       	in	r22, 0x05	; 5
    21ae:	6a 60       	ori	r22, 0x0A	; 10
    21b0:	65 b9       	out	0x05, r22	; 5
    21b2:	65 b1       	in	r22, 0x05	; 5
    21b4:	65 7f       	andi	r22, 0xF5	; 245
    21b6:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    21b8:	f9 01       	movw	r30, r18
    21ba:	75 96       	adiw	r30, 0x15	; 21
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    21bc:	64 91       	lpm	r22, Z
    21be:	eb b1       	in	r30, 0x0b	; 11
    21c0:	f4 e0       	ldi	r31, 0x04	; 4
    21c2:	6f 9f       	mul	r22, r31
    21c4:	b0 01       	movw	r22, r0
    21c6:	11 24       	eor	r1, r1
    21c8:	e3 70       	andi	r30, 0x03	; 3
    21ca:	e6 2b       	or	r30, r22
    21cc:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    21ce:	65 b1       	in	r22, 0x05	; 5
    21d0:	6a 60       	ori	r22, 0x0A	; 10
    21d2:	65 b9       	out	0x05, r22	; 5
    21d4:	65 b1       	in	r22, 0x05	; 5
    21d6:	65 7f       	andi	r22, 0xF5	; 245
    21d8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    21da:	65 b1       	in	r22, 0x05	; 5
    21dc:	6a 60       	ori	r22, 0x0A	; 10
    21de:	65 b9       	out	0x05, r22	; 5
    21e0:	65 b1       	in	r22, 0x05	; 5
    21e2:	65 7f       	andi	r22, 0xF5	; 245
    21e4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    21e6:	f9 01       	movw	r30, r18
    21e8:	76 96       	adiw	r30, 0x16	; 22
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    21ea:	64 91       	lpm	r22, Z
    21ec:	eb b1       	in	r30, 0x0b	; 11
    21ee:	f4 e0       	ldi	r31, 0x04	; 4
    21f0:	6f 9f       	mul	r22, r31
    21f2:	b0 01       	movw	r22, r0
    21f4:	11 24       	eor	r1, r1
    21f6:	e3 70       	andi	r30, 0x03	; 3
    21f8:	e6 2b       	or	r30, r22
    21fa:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    21fc:	65 b1       	in	r22, 0x05	; 5
    21fe:	6a 60       	ori	r22, 0x0A	; 10
    2200:	65 b9       	out	0x05, r22	; 5
    2202:	65 b1       	in	r22, 0x05	; 5
    2204:	65 7f       	andi	r22, 0xF5	; 245
    2206:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2208:	65 b1       	in	r22, 0x05	; 5
    220a:	6a 60       	ori	r22, 0x0A	; 10
    220c:	65 b9       	out	0x05, r22	; 5
    220e:	65 b1       	in	r22, 0x05	; 5
    2210:	65 7f       	andi	r22, 0xF5	; 245
    2212:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2214:	f9 01       	movw	r30, r18
    2216:	77 96       	adiw	r30, 0x17	; 23
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2218:	64 91       	lpm	r22, Z
    221a:	eb b1       	in	r30, 0x0b	; 11
    221c:	f4 e0       	ldi	r31, 0x04	; 4
    221e:	6f 9f       	mul	r22, r31
    2220:	b0 01       	movw	r22, r0
    2222:	11 24       	eor	r1, r1
    2224:	e3 70       	andi	r30, 0x03	; 3
    2226:	e6 2b       	or	r30, r22
    2228:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    222a:	65 b1       	in	r22, 0x05	; 5
    222c:	6a 60       	ori	r22, 0x0A	; 10
    222e:	65 b9       	out	0x05, r22	; 5
    2230:	65 b1       	in	r22, 0x05	; 5
    2232:	65 7f       	andi	r22, 0xF5	; 245
    2234:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2236:	65 b1       	in	r22, 0x05	; 5
    2238:	6a 60       	ori	r22, 0x0A	; 10
    223a:	65 b9       	out	0x05, r22	; 5
    223c:	65 b1       	in	r22, 0x05	; 5
    223e:	65 7f       	andi	r22, 0xF5	; 245
    2240:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2242:	f9 01       	movw	r30, r18
    2244:	78 96       	adiw	r30, 0x18	; 24
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
    2246:	64 91       	lpm	r22, Z
    2248:	eb b1       	in	r30, 0x0b	; 11
    224a:	f4 e0       	ldi	r31, 0x04	; 4
    224c:	6f 9f       	mul	r22, r31
    224e:	b0 01       	movw	r22, r0
    2250:	11 24       	eor	r1, r1
    2252:	e3 70       	andi	r30, 0x03	; 3
    2254:	e6 2b       	or	r30, r22
    2256:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2258:	65 b1       	in	r22, 0x05	; 5
    225a:	6a 60       	ori	r22, 0x0A	; 10
    225c:	65 b9       	out	0x05, r22	; 5
    225e:	65 b1       	in	r22, 0x05	; 5
    2260:	65 7f       	andi	r22, 0xF5	; 245
    2262:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2264:	65 b1       	in	r22, 0x05	; 5
    2266:	6a 60       	ori	r22, 0x0A	; 10
    2268:	65 b9       	out	0x05, r22	; 5
    226a:	65 b1       	in	r22, 0x05	; 5
    226c:	65 7f       	andi	r22, 0xF5	; 245
    226e:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
    2270:	f9 01       	movw	r30, r18
    2272:	79 96       	adiw	r30, 0x19	; 25
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2274:	64 91       	lpm	r22, Z
    2276:	eb b1       	in	r30, 0x0b	; 11
    2278:	f4 e0       	ldi	r31, 0x04	; 4
    227a:	6f 9f       	mul	r22, r31
    227c:	b0 01       	movw	r22, r0
    227e:	11 24       	eor	r1, r1
    2280:	e3 70       	andi	r30, 0x03	; 3
    2282:	e6 2b       	or	r30, r22
    2284:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2286:	65 b1       	in	r22, 0x05	; 5
    2288:	6a 60       	ori	r22, 0x0A	; 10
    228a:	65 b9       	out	0x05, r22	; 5
    228c:	65 b1       	in	r22, 0x05	; 5
    228e:	65 7f       	andi	r22, 0xF5	; 245
    2290:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2292:	65 b1       	in	r22, 0x05	; 5
    2294:	6a 60       	ori	r22, 0x0A	; 10
    2296:	65 b9       	out	0x05, r22	; 5
    2298:	65 b1       	in	r22, 0x05	; 5
    229a:	65 7f       	andi	r22, 0xF5	; 245
    229c:	65 b9       	out	0x05, r22	; 5

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    229e:	f9 01       	movw	r30, r18
    22a0:	7a 96       	adiw	r30, 0x1a	; 26
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    22a2:	64 91       	lpm	r22, Z
    22a4:	eb b1       	in	r30, 0x0b	; 11
    22a6:	f4 e0       	ldi	r31, 0x04	; 4
    22a8:	6f 9f       	mul	r22, r31
    22aa:	b0 01       	movw	r22, r0
    22ac:	11 24       	eor	r1, r1
    22ae:	e3 70       	andi	r30, 0x03	; 3
    22b0:	e6 2b       	or	r30, r22
    22b2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    22b4:	65 b1       	in	r22, 0x05	; 5
    22b6:	6a 60       	ori	r22, 0x0A	; 10
    22b8:	65 b9       	out	0x05, r22	; 5
    22ba:	65 b1       	in	r22, 0x05	; 5
    22bc:	65 7f       	andi	r22, 0xF5	; 245
    22be:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    22c0:	65 b1       	in	r22, 0x05	; 5
    22c2:	6a 60       	ori	r22, 0x0A	; 10
    22c4:	65 b9       	out	0x05, r22	; 5
    22c6:	65 b1       	in	r22, 0x05	; 5
    22c8:	65 7f       	andi	r22, 0xF5	; 245
    22ca:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    22cc:	f9 01       	movw	r30, r18
    22ce:	7b 96       	adiw	r30, 0x1b	; 27
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    22d0:	64 91       	lpm	r22, Z
    22d2:	eb b1       	in	r30, 0x0b	; 11
    22d4:	f4 e0       	ldi	r31, 0x04	; 4
    22d6:	6f 9f       	mul	r22, r31
    22d8:	b0 01       	movw	r22, r0
    22da:	11 24       	eor	r1, r1
    22dc:	e3 70       	andi	r30, 0x03	; 3
    22de:	e6 2b       	or	r30, r22
    22e0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    22e2:	65 b1       	in	r22, 0x05	; 5
    22e4:	6a 60       	ori	r22, 0x0A	; 10
    22e6:	65 b9       	out	0x05, r22	; 5
    22e8:	65 b1       	in	r22, 0x05	; 5
    22ea:	65 7f       	andi	r22, 0xF5	; 245
    22ec:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    22ee:	65 b1       	in	r22, 0x05	; 5
    22f0:	6a 60       	ori	r22, 0x0A	; 10
    22f2:	65 b9       	out	0x05, r22	; 5
    22f4:	65 b1       	in	r22, 0x05	; 5
    22f6:	65 7f       	andi	r22, 0xF5	; 245
    22f8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    22fa:	f9 01       	movw	r30, r18
    22fc:	7c 96       	adiw	r30, 0x1c	; 28
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    22fe:	64 91       	lpm	r22, Z
    2300:	eb b1       	in	r30, 0x0b	; 11
    2302:	f4 e0       	ldi	r31, 0x04	; 4
    2304:	6f 9f       	mul	r22, r31
    2306:	b0 01       	movw	r22, r0
    2308:	11 24       	eor	r1, r1
    230a:	e3 70       	andi	r30, 0x03	; 3
    230c:	e6 2b       	or	r30, r22
    230e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2310:	65 b1       	in	r22, 0x05	; 5
    2312:	6a 60       	ori	r22, 0x0A	; 10
    2314:	65 b9       	out	0x05, r22	; 5
    2316:	65 b1       	in	r22, 0x05	; 5
    2318:	65 7f       	andi	r22, 0xF5	; 245
    231a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    231c:	65 b1       	in	r22, 0x05	; 5
    231e:	6a 60       	ori	r22, 0x0A	; 10
    2320:	65 b9       	out	0x05, r22	; 5
    2322:	65 b1       	in	r22, 0x05	; 5
    2324:	65 7f       	andi	r22, 0xF5	; 245
    2326:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2328:	f9 01       	movw	r30, r18
    232a:	7d 96       	adiw	r30, 0x1d	; 29
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    232c:	64 91       	lpm	r22, Z
    232e:	eb b1       	in	r30, 0x0b	; 11
    2330:	f4 e0       	ldi	r31, 0x04	; 4
    2332:	6f 9f       	mul	r22, r31
    2334:	b0 01       	movw	r22, r0
    2336:	11 24       	eor	r1, r1
    2338:	e3 70       	andi	r30, 0x03	; 3
    233a:	e6 2b       	or	r30, r22
    233c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    233e:	65 b1       	in	r22, 0x05	; 5
    2340:	6a 60       	ori	r22, 0x0A	; 10
    2342:	65 b9       	out	0x05, r22	; 5
    2344:	65 b1       	in	r22, 0x05	; 5
    2346:	65 7f       	andi	r22, 0xF5	; 245
    2348:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    234a:	65 b1       	in	r22, 0x05	; 5
    234c:	6a 60       	ori	r22, 0x0A	; 10
    234e:	65 b9       	out	0x05, r22	; 5
    2350:	65 b1       	in	r22, 0x05	; 5
    2352:	65 7f       	andi	r22, 0xF5	; 245
    2354:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2356:	f9 01       	movw	r30, r18
    2358:	7e 96       	adiw	r30, 0x1e	; 30
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    235a:	64 91       	lpm	r22, Z
    235c:	eb b1       	in	r30, 0x0b	; 11
    235e:	f4 e0       	ldi	r31, 0x04	; 4
    2360:	6f 9f       	mul	r22, r31
    2362:	b0 01       	movw	r22, r0
    2364:	11 24       	eor	r1, r1
    2366:	e3 70       	andi	r30, 0x03	; 3
    2368:	e6 2b       	or	r30, r22
    236a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    236c:	65 b1       	in	r22, 0x05	; 5
    236e:	6a 60       	ori	r22, 0x0A	; 10
    2370:	65 b9       	out	0x05, r22	; 5
    2372:	65 b1       	in	r22, 0x05	; 5
    2374:	65 7f       	andi	r22, 0xF5	; 245
    2376:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2378:	65 b1       	in	r22, 0x05	; 5
    237a:	6a 60       	ori	r22, 0x0A	; 10
    237c:	65 b9       	out	0x05, r22	; 5
    237e:	65 b1       	in	r22, 0x05	; 5
    2380:	65 7f       	andi	r22, 0xF5	; 245
    2382:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2384:	f9 01       	movw	r30, r18
    2386:	7f 96       	adiw	r30, 0x1f	; 31
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2388:	64 91       	lpm	r22, Z
    238a:	eb b1       	in	r30, 0x0b	; 11
    238c:	f4 e0       	ldi	r31, 0x04	; 4
    238e:	6f 9f       	mul	r22, r31
    2390:	b0 01       	movw	r22, r0
    2392:	11 24       	eor	r1, r1
    2394:	e3 70       	andi	r30, 0x03	; 3
    2396:	e6 2b       	or	r30, r22
    2398:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    239a:	65 b1       	in	r22, 0x05	; 5
    239c:	6a 60       	ori	r22, 0x0A	; 10
    239e:	65 b9       	out	0x05, r22	; 5
    23a0:	65 b1       	in	r22, 0x05	; 5
    23a2:	65 7f       	andi	r22, 0xF5	; 245
    23a4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    23a6:	65 b1       	in	r22, 0x05	; 5
    23a8:	6a 60       	ori	r22, 0x0A	; 10
    23aa:	65 b9       	out	0x05, r22	; 5
    23ac:	65 b1       	in	r22, 0x05	; 5
    23ae:	65 7f       	andi	r22, 0xF5	; 245
    23b0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    23b2:	f9 01       	movw	r30, r18
    23b4:	b0 96       	adiw	r30, 0x20	; 32
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
    23b6:	64 91       	lpm	r22, Z
    23b8:	eb b1       	in	r30, 0x0b	; 11
    23ba:	f4 e0       	ldi	r31, 0x04	; 4
    23bc:	6f 9f       	mul	r22, r31
    23be:	b0 01       	movw	r22, r0
    23c0:	11 24       	eor	r1, r1
    23c2:	e3 70       	andi	r30, 0x03	; 3
    23c4:	e6 2b       	or	r30, r22
    23c6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    23c8:	65 b1       	in	r22, 0x05	; 5
    23ca:	6a 60       	ori	r22, 0x0A	; 10
    23cc:	65 b9       	out	0x05, r22	; 5
    23ce:	65 b1       	in	r22, 0x05	; 5
    23d0:	65 7f       	andi	r22, 0xF5	; 245
    23d2:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    23d4:	65 b1       	in	r22, 0x05	; 5
    23d6:	6a 60       	ori	r22, 0x0A	; 10
    23d8:	65 b9       	out	0x05, r22	; 5
    23da:	65 b1       	in	r22, 0x05	; 5
    23dc:	65 7f       	andi	r22, 0xF5	; 245
    23de:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
    23e0:	f9 01       	movw	r30, r18
    23e2:	b1 96       	adiw	r30, 0x21	; 33
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    23e4:	64 91       	lpm	r22, Z
    23e6:	eb b1       	in	r30, 0x0b	; 11
    23e8:	f4 e0       	ldi	r31, 0x04	; 4
    23ea:	6f 9f       	mul	r22, r31
    23ec:	b0 01       	movw	r22, r0
    23ee:	11 24       	eor	r1, r1
    23f0:	e3 70       	andi	r30, 0x03	; 3
    23f2:	e6 2b       	or	r30, r22
    23f4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    23f6:	65 b1       	in	r22, 0x05	; 5
    23f8:	6a 60       	ori	r22, 0x0A	; 10
    23fa:	65 b9       	out	0x05, r22	; 5
    23fc:	65 b1       	in	r22, 0x05	; 5
    23fe:	65 7f       	andi	r22, 0xF5	; 245
    2400:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2402:	65 b1       	in	r22, 0x05	; 5
    2404:	6a 60       	ori	r22, 0x0A	; 10
    2406:	65 b9       	out	0x05, r22	; 5
    2408:	65 b1       	in	r22, 0x05	; 5
    240a:	65 7f       	andi	r22, 0xF5	; 245
    240c:	65 b9       	out	0x05, r22	; 5

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    240e:	f9 01       	movw	r30, r18
    2410:	b2 96       	adiw	r30, 0x22	; 34
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2412:	64 91       	lpm	r22, Z
    2414:	eb b1       	in	r30, 0x0b	; 11
    2416:	f4 e0       	ldi	r31, 0x04	; 4
    2418:	6f 9f       	mul	r22, r31
    241a:	b0 01       	movw	r22, r0
    241c:	11 24       	eor	r1, r1
    241e:	e3 70       	andi	r30, 0x03	; 3
    2420:	e6 2b       	or	r30, r22
    2422:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2424:	65 b1       	in	r22, 0x05	; 5
    2426:	6a 60       	ori	r22, 0x0A	; 10
    2428:	65 b9       	out	0x05, r22	; 5
    242a:	65 b1       	in	r22, 0x05	; 5
    242c:	65 7f       	andi	r22, 0xF5	; 245
    242e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2430:	65 b1       	in	r22, 0x05	; 5
    2432:	6a 60       	ori	r22, 0x0A	; 10
    2434:	65 b9       	out	0x05, r22	; 5
    2436:	65 b1       	in	r22, 0x05	; 5
    2438:	65 7f       	andi	r22, 0xF5	; 245
    243a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    243c:	f9 01       	movw	r30, r18
    243e:	b3 96       	adiw	r30, 0x23	; 35
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2440:	64 91       	lpm	r22, Z
    2442:	eb b1       	in	r30, 0x0b	; 11
    2444:	f4 e0       	ldi	r31, 0x04	; 4
    2446:	6f 9f       	mul	r22, r31
    2448:	b0 01       	movw	r22, r0
    244a:	11 24       	eor	r1, r1
    244c:	e3 70       	andi	r30, 0x03	; 3
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
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    246a:	f9 01       	movw	r30, r18
    246c:	b4 96       	adiw	r30, 0x24	; 36
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    246e:	64 91       	lpm	r22, Z
    2470:	eb b1       	in	r30, 0x0b	; 11
    2472:	f4 e0       	ldi	r31, 0x04	; 4
    2474:	6f 9f       	mul	r22, r31
    2476:	b0 01       	movw	r22, r0
    2478:	11 24       	eor	r1, r1
    247a:	e3 70       	andi	r30, 0x03	; 3
    247c:	e6 2b       	or	r30, r22
    247e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2480:	65 b1       	in	r22, 0x05	; 5
    2482:	6a 60       	ori	r22, 0x0A	; 10
    2484:	65 b9       	out	0x05, r22	; 5
    2486:	65 b1       	in	r22, 0x05	; 5
    2488:	65 7f       	andi	r22, 0xF5	; 245
    248a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    248c:	65 b1       	in	r22, 0x05	; 5
    248e:	6a 60       	ori	r22, 0x0A	; 10
    2490:	65 b9       	out	0x05, r22	; 5
    2492:	65 b1       	in	r22, 0x05	; 5
    2494:	65 7f       	andi	r22, 0xF5	; 245
    2496:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2498:	f9 01       	movw	r30, r18
    249a:	b5 96       	adiw	r30, 0x25	; 37
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    249c:	64 91       	lpm	r22, Z
    249e:	eb b1       	in	r30, 0x0b	; 11
    24a0:	f4 e0       	ldi	r31, 0x04	; 4
    24a2:	6f 9f       	mul	r22, r31
    24a4:	b0 01       	movw	r22, r0
    24a6:	11 24       	eor	r1, r1
    24a8:	e3 70       	andi	r30, 0x03	; 3
    24aa:	e6 2b       	or	r30, r22
    24ac:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    24ae:	65 b1       	in	r22, 0x05	; 5
    24b0:	6a 60       	ori	r22, 0x0A	; 10
    24b2:	65 b9       	out	0x05, r22	; 5
    24b4:	65 b1       	in	r22, 0x05	; 5
    24b6:	65 7f       	andi	r22, 0xF5	; 245
    24b8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    24ba:	65 b1       	in	r22, 0x05	; 5
    24bc:	6a 60       	ori	r22, 0x0A	; 10
    24be:	65 b9       	out	0x05, r22	; 5
    24c0:	65 b1       	in	r22, 0x05	; 5
    24c2:	65 7f       	andi	r22, 0xF5	; 245
    24c4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    24c6:	f9 01       	movw	r30, r18
    24c8:	b6 96       	adiw	r30, 0x26	; 38
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    24ca:	64 91       	lpm	r22, Z
    24cc:	eb b1       	in	r30, 0x0b	; 11
    24ce:	f4 e0       	ldi	r31, 0x04	; 4
    24d0:	6f 9f       	mul	r22, r31
    24d2:	b0 01       	movw	r22, r0
    24d4:	11 24       	eor	r1, r1
    24d6:	e3 70       	andi	r30, 0x03	; 3
    24d8:	e6 2b       	or	r30, r22
    24da:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    24dc:	65 b1       	in	r22, 0x05	; 5
    24de:	6a 60       	ori	r22, 0x0A	; 10
    24e0:	65 b9       	out	0x05, r22	; 5
    24e2:	65 b1       	in	r22, 0x05	; 5
    24e4:	65 7f       	andi	r22, 0xF5	; 245
    24e6:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    24e8:	65 b1       	in	r22, 0x05	; 5
    24ea:	6a 60       	ori	r22, 0x0A	; 10
    24ec:	65 b9       	out	0x05, r22	; 5
    24ee:	65 b1       	in	r22, 0x05	; 5
    24f0:	65 7f       	andi	r22, 0xF5	; 245
    24f2:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    24f4:	f9 01       	movw	r30, r18
    24f6:	b7 96       	adiw	r30, 0x27	; 39
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    24f8:	64 91       	lpm	r22, Z
    24fa:	eb b1       	in	r30, 0x0b	; 11
    24fc:	f4 e0       	ldi	r31, 0x04	; 4
    24fe:	6f 9f       	mul	r22, r31
    2500:	b0 01       	movw	r22, r0
    2502:	11 24       	eor	r1, r1
    2504:	e3 70       	andi	r30, 0x03	; 3
    2506:	e6 2b       	or	r30, r22
    2508:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    250a:	65 b1       	in	r22, 0x05	; 5
    250c:	6a 60       	ori	r22, 0x0A	; 10
    250e:	65 b9       	out	0x05, r22	; 5
    2510:	65 b1       	in	r22, 0x05	; 5
    2512:	65 7f       	andi	r22, 0xF5	; 245
    2514:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2516:	65 b1       	in	r22, 0x05	; 5
    2518:	6a 60       	ori	r22, 0x0A	; 10
    251a:	65 b9       	out	0x05, r22	; 5
    251c:	65 b1       	in	r22, 0x05	; 5
    251e:	65 7f       	andi	r22, 0xF5	; 245
    2520:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2522:	f9 01       	movw	r30, r18
    2524:	b8 96       	adiw	r30, 0x28	; 40
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
    2526:	64 91       	lpm	r22, Z
    2528:	eb b1       	in	r30, 0x0b	; 11
    252a:	f4 e0       	ldi	r31, 0x04	; 4
    252c:	6f 9f       	mul	r22, r31
    252e:	b0 01       	movw	r22, r0
    2530:	11 24       	eor	r1, r1
    2532:	e3 70       	andi	r30, 0x03	; 3
    2534:	e6 2b       	or	r30, r22
    2536:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2538:	65 b1       	in	r22, 0x05	; 5
    253a:	6a 60       	ori	r22, 0x0A	; 10
    253c:	65 b9       	out	0x05, r22	; 5
    253e:	65 b1       	in	r22, 0x05	; 5
    2540:	65 7f       	andi	r22, 0xF5	; 245
    2542:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2544:	65 b1       	in	r22, 0x05	; 5
    2546:	6a 60       	ori	r22, 0x0A	; 10
    2548:	65 b9       	out	0x05, r22	; 5
    254a:	65 b1       	in	r22, 0x05	; 5
    254c:	65 7f       	andi	r22, 0xF5	; 245
    254e:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
    2550:	f9 01       	movw	r30, r18
    2552:	b9 96       	adiw	r30, 0x29	; 41
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2554:	64 91       	lpm	r22, Z
    2556:	eb b1       	in	r30, 0x0b	; 11
    2558:	f4 e0       	ldi	r31, 0x04	; 4
    255a:	6f 9f       	mul	r22, r31
    255c:	b0 01       	movw	r22, r0
    255e:	11 24       	eor	r1, r1
    2560:	e3 70       	andi	r30, 0x03	; 3
    2562:	e6 2b       	or	r30, r22
    2564:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2566:	65 b1       	in	r22, 0x05	; 5
    2568:	6a 60       	ori	r22, 0x0A	; 10
    256a:	65 b9       	out	0x05, r22	; 5
    256c:	65 b1       	in	r22, 0x05	; 5
    256e:	65 7f       	andi	r22, 0xF5	; 245
    2570:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2572:	65 b1       	in	r22, 0x05	; 5
    2574:	6a 60       	ori	r22, 0x0A	; 10
    2576:	65 b9       	out	0x05, r22	; 5
    2578:	65 b1       	in	r22, 0x05	; 5
    257a:	65 7f       	andi	r22, 0xF5	; 245
    257c:	65 b9       	out	0x05, r22	; 5

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    257e:	f9 01       	movw	r30, r18
    2580:	ba 96       	adiw	r30, 0x2a	; 42
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2582:	64 91       	lpm	r22, Z
    2584:	eb b1       	in	r30, 0x0b	; 11
    2586:	f4 e0       	ldi	r31, 0x04	; 4
    2588:	6f 9f       	mul	r22, r31
    258a:	b0 01       	movw	r22, r0
    258c:	11 24       	eor	r1, r1
    258e:	e3 70       	andi	r30, 0x03	; 3
    2590:	e6 2b       	or	r30, r22
    2592:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2594:	65 b1       	in	r22, 0x05	; 5
    2596:	6a 60       	ori	r22, 0x0A	; 10
    2598:	65 b9       	out	0x05, r22	; 5
    259a:	65 b1       	in	r22, 0x05	; 5
    259c:	65 7f       	andi	r22, 0xF5	; 245
    259e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    25a0:	65 b1       	in	r22, 0x05	; 5
    25a2:	6a 60       	ori	r22, 0x0A	; 10
    25a4:	65 b9       	out	0x05, r22	; 5
    25a6:	65 b1       	in	r22, 0x05	; 5
    25a8:	65 7f       	andi	r22, 0xF5	; 245
    25aa:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    25ac:	f9 01       	movw	r30, r18
    25ae:	bb 96       	adiw	r30, 0x2b	; 43
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    25b0:	64 91       	lpm	r22, Z
    25b2:	eb b1       	in	r30, 0x0b	; 11
    25b4:	f4 e0       	ldi	r31, 0x04	; 4
    25b6:	6f 9f       	mul	r22, r31
    25b8:	b0 01       	movw	r22, r0
    25ba:	11 24       	eor	r1, r1
    25bc:	e3 70       	andi	r30, 0x03	; 3
    25be:	e6 2b       	or	r30, r22
    25c0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    25c2:	65 b1       	in	r22, 0x05	; 5
    25c4:	6a 60       	ori	r22, 0x0A	; 10
    25c6:	65 b9       	out	0x05, r22	; 5
    25c8:	65 b1       	in	r22, 0x05	; 5
    25ca:	65 7f       	andi	r22, 0xF5	; 245
    25cc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    25ce:	65 b1       	in	r22, 0x05	; 5
    25d0:	6a 60       	ori	r22, 0x0A	; 10
    25d2:	65 b9       	out	0x05, r22	; 5
    25d4:	65 b1       	in	r22, 0x05	; 5
    25d6:	65 7f       	andi	r22, 0xF5	; 245
    25d8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    25da:	f9 01       	movw	r30, r18
    25dc:	bc 96       	adiw	r30, 0x2c	; 44
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    25de:	64 91       	lpm	r22, Z
    25e0:	eb b1       	in	r30, 0x0b	; 11
    25e2:	f4 e0       	ldi	r31, 0x04	; 4
    25e4:	6f 9f       	mul	r22, r31
    25e6:	b0 01       	movw	r22, r0
    25e8:	11 24       	eor	r1, r1
    25ea:	e3 70       	andi	r30, 0x03	; 3
    25ec:	e6 2b       	or	r30, r22
    25ee:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    25f0:	65 b1       	in	r22, 0x05	; 5
    25f2:	6a 60       	ori	r22, 0x0A	; 10
    25f4:	65 b9       	out	0x05, r22	; 5
    25f6:	65 b1       	in	r22, 0x05	; 5
    25f8:	65 7f       	andi	r22, 0xF5	; 245
    25fa:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    25fc:	65 b1       	in	r22, 0x05	; 5
    25fe:	6a 60       	ori	r22, 0x0A	; 10
    2600:	65 b9       	out	0x05, r22	; 5
    2602:	65 b1       	in	r22, 0x05	; 5
    2604:	65 7f       	andi	r22, 0xF5	; 245
    2606:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2608:	f9 01       	movw	r30, r18
    260a:	bd 96       	adiw	r30, 0x2d	; 45
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    260c:	64 91       	lpm	r22, Z
    260e:	eb b1       	in	r30, 0x0b	; 11
    2610:	f4 e0       	ldi	r31, 0x04	; 4
    2612:	6f 9f       	mul	r22, r31
    2614:	b0 01       	movw	r22, r0
    2616:	11 24       	eor	r1, r1
    2618:	e3 70       	andi	r30, 0x03	; 3
    261a:	e6 2b       	or	r30, r22
    261c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    261e:	65 b1       	in	r22, 0x05	; 5
    2620:	6a 60       	ori	r22, 0x0A	; 10
    2622:	65 b9       	out	0x05, r22	; 5
    2624:	65 b1       	in	r22, 0x05	; 5
    2626:	65 7f       	andi	r22, 0xF5	; 245
    2628:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    262a:	65 b1       	in	r22, 0x05	; 5
    262c:	6a 60       	ori	r22, 0x0A	; 10
    262e:	65 b9       	out	0x05, r22	; 5
    2630:	65 b1       	in	r22, 0x05	; 5
    2632:	65 7f       	andi	r22, 0xF5	; 245
    2634:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2636:	f9 01       	movw	r30, r18
    2638:	be 96       	adiw	r30, 0x2e	; 46
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    263a:	64 91       	lpm	r22, Z
    263c:	eb b1       	in	r30, 0x0b	; 11
    263e:	f4 e0       	ldi	r31, 0x04	; 4
    2640:	6f 9f       	mul	r22, r31
    2642:	b0 01       	movw	r22, r0
    2644:	11 24       	eor	r1, r1
    2646:	e3 70       	andi	r30, 0x03	; 3
    2648:	e6 2b       	or	r30, r22
    264a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    264c:	65 b1       	in	r22, 0x05	; 5
    264e:	6a 60       	ori	r22, 0x0A	; 10
    2650:	65 b9       	out	0x05, r22	; 5
    2652:	65 b1       	in	r22, 0x05	; 5
    2654:	65 7f       	andi	r22, 0xF5	; 245
    2656:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2658:	65 b1       	in	r22, 0x05	; 5
    265a:	6a 60       	ori	r22, 0x0A	; 10
    265c:	65 b9       	out	0x05, r22	; 5
    265e:	65 b1       	in	r22, 0x05	; 5
    2660:	65 7f       	andi	r22, 0xF5	; 245
    2662:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2664:	f9 01       	movw	r30, r18
    2666:	bf 96       	adiw	r30, 0x2f	; 47
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2668:	64 91       	lpm	r22, Z
    266a:	eb b1       	in	r30, 0x0b	; 11
    266c:	f4 e0       	ldi	r31, 0x04	; 4
    266e:	6f 9f       	mul	r22, r31
    2670:	b0 01       	movw	r22, r0
    2672:	11 24       	eor	r1, r1
    2674:	e3 70       	andi	r30, 0x03	; 3
    2676:	e6 2b       	or	r30, r22
    2678:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    267a:	65 b1       	in	r22, 0x05	; 5
    267c:	6a 60       	ori	r22, 0x0A	; 10
    267e:	65 b9       	out	0x05, r22	; 5
    2680:	65 b1       	in	r22, 0x05	; 5
    2682:	65 7f       	andi	r22, 0xF5	; 245
    2684:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2686:	65 b1       	in	r22, 0x05	; 5
    2688:	6a 60       	ori	r22, 0x0A	; 10
    268a:	65 b9       	out	0x05, r22	; 5
    268c:	65 b1       	in	r22, 0x05	; 5
    268e:	65 7f       	andi	r22, 0xF5	; 245
    2690:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2692:	f9 01       	movw	r30, r18
    2694:	f0 96       	adiw	r30, 0x30	; 48
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 6
            SET_COLOR(pgm_read_byte(index++));
    2696:	64 91       	lpm	r22, Z
    2698:	eb b1       	in	r30, 0x0b	; 11
    269a:	f4 e0       	ldi	r31, 0x04	; 4
    269c:	6f 9f       	mul	r22, r31
    269e:	b0 01       	movw	r22, r0
    26a0:	11 24       	eor	r1, r1
    26a2:	e3 70       	andi	r30, 0x03	; 3
    26a4:	e6 2b       	or	r30, r22
    26a6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    26a8:	65 b1       	in	r22, 0x05	; 5
    26aa:	6a 60       	ori	r22, 0x0A	; 10
    26ac:	65 b9       	out	0x05, r22	; 5
    26ae:	65 b1       	in	r22, 0x05	; 5
    26b0:	65 7f       	andi	r22, 0xF5	; 245
    26b2:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    26b4:	65 b1       	in	r22, 0x05	; 5
    26b6:	6a 60       	ori	r22, 0x0A	; 10
    26b8:	65 b9       	out	0x05, r22	; 5
    26ba:	65 b1       	in	r22, 0x05	; 5
    26bc:	65 7f       	andi	r22, 0xF5	; 245
    26be:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 6
            SET_COLOR(pgm_read_byte(index++));
    26c0:	f9 01       	movw	r30, r18
    26c2:	f1 96       	adiw	r30, 0x31	; 49
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    26c4:	64 91       	lpm	r22, Z
    26c6:	eb b1       	in	r30, 0x0b	; 11
    26c8:	f4 e0       	ldi	r31, 0x04	; 4
    26ca:	6f 9f       	mul	r22, r31
    26cc:	b0 01       	movw	r22, r0
    26ce:	11 24       	eor	r1, r1
    26d0:	e3 70       	andi	r30, 0x03	; 3
    26d2:	e6 2b       	or	r30, r22
    26d4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    26d6:	65 b1       	in	r22, 0x05	; 5
    26d8:	6a 60       	ori	r22, 0x0A	; 10
    26da:	65 b9       	out	0x05, r22	; 5
    26dc:	65 b1       	in	r22, 0x05	; 5
    26de:	65 7f       	andi	r22, 0xF5	; 245
    26e0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    26e2:	65 b1       	in	r22, 0x05	; 5
    26e4:	6a 60       	ori	r22, 0x0A	; 10
    26e6:	65 b9       	out	0x05, r22	; 5
    26e8:	65 b1       	in	r22, 0x05	; 5
    26ea:	65 7f       	andi	r22, 0xF5	; 245
    26ec:	65 b9       	out	0x05, r22	; 5

            // chip 6
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    26ee:	f9 01       	movw	r30, r18
    26f0:	f2 96       	adiw	r30, 0x32	; 50
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    26f2:	64 91       	lpm	r22, Z
    26f4:	eb b1       	in	r30, 0x0b	; 11
    26f6:	f4 e0       	ldi	r31, 0x04	; 4
    26f8:	6f 9f       	mul	r22, r31
    26fa:	b0 01       	movw	r22, r0
    26fc:	11 24       	eor	r1, r1
    26fe:	e3 70       	andi	r30, 0x03	; 3
    2700:	e6 2b       	or	r30, r22
    2702:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2704:	65 b1       	in	r22, 0x05	; 5
    2706:	6a 60       	ori	r22, 0x0A	; 10
    2708:	65 b9       	out	0x05, r22	; 5
    270a:	65 b1       	in	r22, 0x05	; 5
    270c:	65 7f       	andi	r22, 0xF5	; 245
    270e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2710:	65 b1       	in	r22, 0x05	; 5
    2712:	6a 60       	ori	r22, 0x0A	; 10
    2714:	65 b9       	out	0x05, r22	; 5
    2716:	65 b1       	in	r22, 0x05	; 5
    2718:	65 7f       	andi	r22, 0xF5	; 245
    271a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    271c:	f9 01       	movw	r30, r18
    271e:	f3 96       	adiw	r30, 0x33	; 51
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2720:	64 91       	lpm	r22, Z
    2722:	eb b1       	in	r30, 0x0b	; 11
    2724:	f4 e0       	ldi	r31, 0x04	; 4
    2726:	6f 9f       	mul	r22, r31
    2728:	b0 01       	movw	r22, r0
    272a:	11 24       	eor	r1, r1
    272c:	e3 70       	andi	r30, 0x03	; 3
    272e:	e6 2b       	or	r30, r22
    2730:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2732:	65 b1       	in	r22, 0x05	; 5
    2734:	6a 60       	ori	r22, 0x0A	; 10
    2736:	65 b9       	out	0x05, r22	; 5
    2738:	65 b1       	in	r22, 0x05	; 5
    273a:	65 7f       	andi	r22, 0xF5	; 245
    273c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    273e:	65 b1       	in	r22, 0x05	; 5
    2740:	6a 60       	ori	r22, 0x0A	; 10
    2742:	65 b9       	out	0x05, r22	; 5
    2744:	65 b1       	in	r22, 0x05	; 5
    2746:	65 7f       	andi	r22, 0xF5	; 245
    2748:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    274a:	f9 01       	movw	r30, r18
    274c:	f4 96       	adiw	r30, 0x34	; 52
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    274e:	64 91       	lpm	r22, Z
    2750:	eb b1       	in	r30, 0x0b	; 11
    2752:	f4 e0       	ldi	r31, 0x04	; 4
    2754:	6f 9f       	mul	r22, r31
    2756:	b0 01       	movw	r22, r0
    2758:	11 24       	eor	r1, r1
    275a:	e3 70       	andi	r30, 0x03	; 3
    275c:	e6 2b       	or	r30, r22
    275e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2760:	65 b1       	in	r22, 0x05	; 5
    2762:	6a 60       	ori	r22, 0x0A	; 10
    2764:	65 b9       	out	0x05, r22	; 5
    2766:	65 b1       	in	r22, 0x05	; 5
    2768:	65 7f       	andi	r22, 0xF5	; 245
    276a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    276c:	65 b1       	in	r22, 0x05	; 5
    276e:	6a 60       	ori	r22, 0x0A	; 10
    2770:	65 b9       	out	0x05, r22	; 5
    2772:	65 b1       	in	r22, 0x05	; 5
    2774:	65 7f       	andi	r22, 0xF5	; 245
    2776:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2778:	f9 01       	movw	r30, r18
    277a:	f5 96       	adiw	r30, 0x35	; 53
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    277c:	64 91       	lpm	r22, Z
    277e:	eb b1       	in	r30, 0x0b	; 11
    2780:	f4 e0       	ldi	r31, 0x04	; 4
    2782:	6f 9f       	mul	r22, r31
    2784:	b0 01       	movw	r22, r0
    2786:	11 24       	eor	r1, r1
    2788:	e3 70       	andi	r30, 0x03	; 3
    278a:	e6 2b       	or	r30, r22
    278c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    278e:	65 b1       	in	r22, 0x05	; 5
    2790:	6a 60       	ori	r22, 0x0A	; 10
    2792:	65 b9       	out	0x05, r22	; 5
    2794:	65 b1       	in	r22, 0x05	; 5
    2796:	65 7f       	andi	r22, 0xF5	; 245
    2798:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    279a:	65 b1       	in	r22, 0x05	; 5
    279c:	6a 60       	ori	r22, 0x0A	; 10
    279e:	65 b9       	out	0x05, r22	; 5
    27a0:	65 b1       	in	r22, 0x05	; 5
    27a2:	65 7f       	andi	r22, 0xF5	; 245
    27a4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    27a6:	f9 01       	movw	r30, r18
    27a8:	f6 96       	adiw	r30, 0x36	; 54
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    27aa:	64 91       	lpm	r22, Z
    27ac:	eb b1       	in	r30, 0x0b	; 11
    27ae:	f4 e0       	ldi	r31, 0x04	; 4
    27b0:	6f 9f       	mul	r22, r31
    27b2:	b0 01       	movw	r22, r0
    27b4:	11 24       	eor	r1, r1
    27b6:	e3 70       	andi	r30, 0x03	; 3
    27b8:	e6 2b       	or	r30, r22
    27ba:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    27bc:	65 b1       	in	r22, 0x05	; 5
    27be:	6a 60       	ori	r22, 0x0A	; 10
    27c0:	65 b9       	out	0x05, r22	; 5
    27c2:	65 b1       	in	r22, 0x05	; 5
    27c4:	65 7f       	andi	r22, 0xF5	; 245
    27c6:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    27c8:	65 b1       	in	r22, 0x05	; 5
    27ca:	6a 60       	ori	r22, 0x0A	; 10
    27cc:	65 b9       	out	0x05, r22	; 5
    27ce:	65 b1       	in	r22, 0x05	; 5
    27d0:	65 7f       	andi	r22, 0xF5	; 245
    27d2:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    27d4:	f9 01       	movw	r30, r18
    27d6:	f7 96       	adiw	r30, 0x37	; 55
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    27d8:	64 91       	lpm	r22, Z
    27da:	eb b1       	in	r30, 0x0b	; 11
    27dc:	f4 e0       	ldi	r31, 0x04	; 4
    27de:	6f 9f       	mul	r22, r31
    27e0:	b0 01       	movw	r22, r0
    27e2:	11 24       	eor	r1, r1
    27e4:	e3 70       	andi	r30, 0x03	; 3
    27e6:	e6 2b       	or	r30, r22
    27e8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    27ea:	65 b1       	in	r22, 0x05	; 5
    27ec:	6a 60       	ori	r22, 0x0A	; 10
    27ee:	65 b9       	out	0x05, r22	; 5
    27f0:	65 b1       	in	r22, 0x05	; 5
    27f2:	65 7f       	andi	r22, 0xF5	; 245
    27f4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    27f6:	65 b1       	in	r22, 0x05	; 5
    27f8:	6a 60       	ori	r22, 0x0A	; 10
    27fa:	65 b9       	out	0x05, r22	; 5
    27fc:	65 b1       	in	r22, 0x05	; 5
    27fe:	65 7f       	andi	r22, 0xF5	; 245
    2800:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2802:	f9 01       	movw	r30, r18
    2804:	f8 96       	adiw	r30, 0x38	; 56
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            SET_COLOR(pgm_read_byte(index++));
    2806:	64 91       	lpm	r22, Z
    2808:	eb b1       	in	r30, 0x0b	; 11
    280a:	f4 e0       	ldi	r31, 0x04	; 4
    280c:	6f 9f       	mul	r22, r31
    280e:	b0 01       	movw	r22, r0
    2810:	11 24       	eor	r1, r1
    2812:	e3 70       	andi	r30, 0x03	; 3
    2814:	e6 2b       	or	r30, r22
    2816:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2818:	65 b1       	in	r22, 0x05	; 5
    281a:	6a 60       	ori	r22, 0x0A	; 10
    281c:	65 b9       	out	0x05, r22	; 5
    281e:	65 b1       	in	r22, 0x05	; 5
    2820:	65 7f       	andi	r22, 0xF5	; 245
    2822:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2824:	65 b1       	in	r22, 0x05	; 5
    2826:	6a 60       	ori	r22, 0x0A	; 10
    2828:	65 b9       	out	0x05, r22	; 5
    282a:	65 b1       	in	r22, 0x05	; 5
    282c:	65 7f       	andi	r22, 0xF5	; 245
    282e:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            SET_COLOR(pgm_read_byte(index++));
    2830:	f9 01       	movw	r30, r18
    2832:	f9 96       	adiw	r30, 0x39	; 57
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2834:	64 91       	lpm	r22, Z
    2836:	eb b1       	in	r30, 0x0b	; 11
    2838:	f4 e0       	ldi	r31, 0x04	; 4
    283a:	6f 9f       	mul	r22, r31
    283c:	b0 01       	movw	r22, r0
    283e:	11 24       	eor	r1, r1
    2840:	e3 70       	andi	r30, 0x03	; 3
    2842:	e6 2b       	or	r30, r22
    2844:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2846:	65 b1       	in	r22, 0x05	; 5
    2848:	6a 60       	ori	r22, 0x0A	; 10
    284a:	65 b9       	out	0x05, r22	; 5
    284c:	65 b1       	in	r22, 0x05	; 5
    284e:	65 7f       	andi	r22, 0xF5	; 245
    2850:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2852:	65 b1       	in	r22, 0x05	; 5
    2854:	6a 60       	ori	r22, 0x0A	; 10
    2856:	65 b9       	out	0x05, r22	; 5
    2858:	65 b1       	in	r22, 0x05	; 5
    285a:	65 7f       	andi	r22, 0xF5	; 245
    285c:	65 b9       	out	0x05, r22	; 5

            // chip 7
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    285e:	f9 01       	movw	r30, r18
    2860:	fa 96       	adiw	r30, 0x3a	; 58
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2862:	64 91       	lpm	r22, Z
    2864:	eb b1       	in	r30, 0x0b	; 11
    2866:	f4 e0       	ldi	r31, 0x04	; 4
    2868:	6f 9f       	mul	r22, r31
    286a:	b0 01       	movw	r22, r0
    286c:	11 24       	eor	r1, r1
    286e:	e3 70       	andi	r30, 0x03	; 3
    2870:	e6 2b       	or	r30, r22
    2872:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2874:	65 b1       	in	r22, 0x05	; 5
    2876:	6a 60       	ori	r22, 0x0A	; 10
    2878:	65 b9       	out	0x05, r22	; 5
    287a:	65 b1       	in	r22, 0x05	; 5
    287c:	65 7f       	andi	r22, 0xF5	; 245
    287e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2880:	65 b1       	in	r22, 0x05	; 5
    2882:	6a 60       	ori	r22, 0x0A	; 10
    2884:	65 b9       	out	0x05, r22	; 5
    2886:	65 b1       	in	r22, 0x05	; 5
    2888:	65 7f       	andi	r22, 0xF5	; 245
    288a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    288c:	f9 01       	movw	r30, r18
    288e:	fb 96       	adiw	r30, 0x3b	; 59
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2890:	64 91       	lpm	r22, Z
    2892:	eb b1       	in	r30, 0x0b	; 11
    2894:	f4 e0       	ldi	r31, 0x04	; 4
    2896:	6f 9f       	mul	r22, r31
    2898:	b0 01       	movw	r22, r0
    289a:	11 24       	eor	r1, r1
    289c:	e3 70       	andi	r30, 0x03	; 3
    289e:	e6 2b       	or	r30, r22
    28a0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    28a2:	65 b1       	in	r22, 0x05	; 5
    28a4:	6a 60       	ori	r22, 0x0A	; 10
    28a6:	65 b9       	out	0x05, r22	; 5
    28a8:	65 b1       	in	r22, 0x05	; 5
    28aa:	65 7f       	andi	r22, 0xF5	; 245
    28ac:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    28ae:	65 b1       	in	r22, 0x05	; 5
    28b0:	6a 60       	ori	r22, 0x0A	; 10
    28b2:	65 b9       	out	0x05, r22	; 5
    28b4:	65 b1       	in	r22, 0x05	; 5
    28b6:	65 7f       	andi	r22, 0xF5	; 245
    28b8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    28ba:	f9 01       	movw	r30, r18
    28bc:	fc 96       	adiw	r30, 0x3c	; 60
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    28be:	64 91       	lpm	r22, Z
    28c0:	eb b1       	in	r30, 0x0b	; 11
    28c2:	f4 e0       	ldi	r31, 0x04	; 4
    28c4:	6f 9f       	mul	r22, r31
    28c6:	b0 01       	movw	r22, r0
    28c8:	11 24       	eor	r1, r1
    28ca:	e3 70       	andi	r30, 0x03	; 3
    28cc:	e6 2b       	or	r30, r22
    28ce:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    28d0:	65 b1       	in	r22, 0x05	; 5
    28d2:	6a 60       	ori	r22, 0x0A	; 10
    28d4:	65 b9       	out	0x05, r22	; 5
    28d6:	65 b1       	in	r22, 0x05	; 5
    28d8:	65 7f       	andi	r22, 0xF5	; 245
    28da:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    28dc:	65 b1       	in	r22, 0x05	; 5
    28de:	6a 60       	ori	r22, 0x0A	; 10
    28e0:	65 b9       	out	0x05, r22	; 5
    28e2:	65 b1       	in	r22, 0x05	; 5
    28e4:	65 7f       	andi	r22, 0xF5	; 245
    28e6:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    28e8:	f9 01       	movw	r30, r18
    28ea:	fd 96       	adiw	r30, 0x3d	; 61
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    28ec:	64 91       	lpm	r22, Z
    28ee:	eb b1       	in	r30, 0x0b	; 11
    28f0:	f4 e0       	ldi	r31, 0x04	; 4
    28f2:	6f 9f       	mul	r22, r31
    28f4:	b0 01       	movw	r22, r0
    28f6:	11 24       	eor	r1, r1
    28f8:	e3 70       	andi	r30, 0x03	; 3
    28fa:	e6 2b       	or	r30, r22
    28fc:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    28fe:	65 b1       	in	r22, 0x05	; 5
    2900:	6a 60       	ori	r22, 0x0A	; 10
    2902:	65 b9       	out	0x05, r22	; 5
    2904:	65 b1       	in	r22, 0x05	; 5
    2906:	65 7f       	andi	r22, 0xF5	; 245
    2908:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    290a:	65 b1       	in	r22, 0x05	; 5
    290c:	6a 60       	ori	r22, 0x0A	; 10
    290e:	65 b9       	out	0x05, r22	; 5
    2910:	65 b1       	in	r22, 0x05	; 5
    2912:	65 7f       	andi	r22, 0xF5	; 245
    2914:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2916:	f9 01       	movw	r30, r18
    2918:	fe 96       	adiw	r30, 0x3e	; 62
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    291a:	64 91       	lpm	r22, Z
    291c:	eb b1       	in	r30, 0x0b	; 11
    291e:	f4 e0       	ldi	r31, 0x04	; 4
    2920:	6f 9f       	mul	r22, r31
    2922:	b0 01       	movw	r22, r0
    2924:	11 24       	eor	r1, r1
    2926:	e3 70       	andi	r30, 0x03	; 3
    2928:	e6 2b       	or	r30, r22
    292a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    292c:	65 b1       	in	r22, 0x05	; 5
    292e:	6a 60       	ori	r22, 0x0A	; 10
    2930:	65 b9       	out	0x05, r22	; 5
    2932:	65 b1       	in	r22, 0x05	; 5
    2934:	65 7f       	andi	r22, 0xF5	; 245
    2936:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2938:	65 b1       	in	r22, 0x05	; 5
    293a:	6a 60       	ori	r22, 0x0A	; 10
    293c:	65 b9       	out	0x05, r22	; 5
    293e:	65 b1       	in	r22, 0x05	; 5
    2940:	65 7f       	andi	r22, 0xF5	; 245
    2942:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2944:	f9 01       	movw	r30, r18
    2946:	ff 96       	adiw	r30, 0x3f	; 63
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2948:	e4 91       	lpm	r30, Z
    294a:	2b b1       	in	r18, 0x0b	; 11
    294c:	34 e0       	ldi	r19, 0x04	; 4
    294e:	e3 9f       	mul	r30, r19
    2950:	f0 01       	movw	r30, r0
    2952:	11 24       	eor	r1, r1
    2954:	23 70       	andi	r18, 0x03	; 3
    2956:	e2 2b       	or	r30, r18
    2958:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    295a:	25 b1       	in	r18, 0x05	; 5
    295c:	2a 60       	ori	r18, 0x0A	; 10
    295e:	25 b9       	out	0x05, r18	; 5
    2960:	25 b1       	in	r18, 0x05	; 5
    2962:	25 7f       	andi	r18, 0xF5	; 245
    2964:	25 b9       	out	0x05, r18	; 5

            // shift data into buffers
            HIGH_LAT;
    2966:	2a 9a       	sbi	0x05, 2	; 5
            PWCLK_GCLK;
    2968:	25 b1       	in	r18, 0x05	; 5
    296a:	2a 60       	ori	r18, 0x0A	; 10
    296c:	25 b9       	out	0x05, r18	; 5
    296e:	25 b1       	in	r18, 0x05	; 5
    2970:	25 7f       	andi	r18, 0xF5	; 245
    2972:	25 b9       	out	0x05, r18	; 5
            CLEAR_LAT;
    2974:	2a 98       	cbi	0x05, 2	; 5

#pragma endregion // MSB

            index = ((y & ~1) << 5) + (PANEL_BUFFERSIZE / 2); // advance index to next section
    2976:	9c 01       	movw	r18, r24
    2978:	38 5f       	subi	r19, 0xF8	; 248

#pragma region LSB
            // chip 0
            SET_COLOR(pgm_read_byte(index++));
    297a:	f9 01       	movw	r30, r18
    297c:	a4 91       	lpm	r26, Z
    297e:	6b b1       	in	r22, 0x0b	; 11
    2980:	74 e0       	ldi	r23, 0x04	; 4
    2982:	a7 9f       	mul	r26, r23
    2984:	f0 01       	movw	r30, r0
    2986:	11 24       	eor	r1, r1
    2988:	63 70       	andi	r22, 0x03	; 3
    298a:	6e 2b       	or	r22, r30
    298c:	6b b9       	out	0x0b, r22	; 11
            PWCLK_GCLK;
    298e:	65 b1       	in	r22, 0x05	; 5
    2990:	6a 60       	ori	r22, 0x0A	; 10
    2992:	65 b9       	out	0x05, r22	; 5
    2994:	65 b1       	in	r22, 0x05	; 5
    2996:	65 7f       	andi	r22, 0xF5	; 245
    2998:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    299a:	65 b1       	in	r22, 0x05	; 5
    299c:	6a 60       	ori	r22, 0x0A	; 10
    299e:	65 b9       	out	0x05, r22	; 5
    29a0:	65 b1       	in	r22, 0x05	; 5
    29a2:	65 7f       	andi	r22, 0xF5	; 245
    29a4:	65 b9       	out	0x05, r22	; 5

            index = ((y & ~1) << 5) + (PANEL_BUFFERSIZE / 2); // advance index to next section

#pragma region LSB
            // chip 0
            SET_COLOR(pgm_read_byte(index++));
    29a6:	f9 01       	movw	r30, r18
    29a8:	31 96       	adiw	r30, 0x01	; 1
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    29aa:	64 91       	lpm	r22, Z
    29ac:	eb b1       	in	r30, 0x0b	; 11
    29ae:	f4 e0       	ldi	r31, 0x04	; 4
    29b0:	6f 9f       	mul	r22, r31
    29b2:	b0 01       	movw	r22, r0
    29b4:	11 24       	eor	r1, r1
    29b6:	e3 70       	andi	r30, 0x03	; 3
    29b8:	e6 2b       	or	r30, r22
    29ba:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    29bc:	65 b1       	in	r22, 0x05	; 5
    29be:	6a 60       	ori	r22, 0x0A	; 10
    29c0:	65 b9       	out	0x05, r22	; 5
    29c2:	65 b1       	in	r22, 0x05	; 5
    29c4:	65 7f       	andi	r22, 0xF5	; 245
    29c6:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    29c8:	65 b1       	in	r22, 0x05	; 5
    29ca:	6a 60       	ori	r22, 0x0A	; 10
    29cc:	65 b9       	out	0x05, r22	; 5
    29ce:	65 b1       	in	r22, 0x05	; 5
    29d0:	65 7f       	andi	r22, 0xF5	; 245
    29d2:	65 b9       	out	0x05, r22	; 5
#pragma region LSB
            // chip 0
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    29d4:	f9 01       	movw	r30, r18
    29d6:	32 96       	adiw	r30, 0x02	; 2
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    29d8:	64 91       	lpm	r22, Z
    29da:	eb b1       	in	r30, 0x0b	; 11
    29dc:	f4 e0       	ldi	r31, 0x04	; 4
    29de:	6f 9f       	mul	r22, r31
    29e0:	b0 01       	movw	r22, r0
    29e2:	11 24       	eor	r1, r1
    29e4:	e3 70       	andi	r30, 0x03	; 3
    29e6:	e6 2b       	or	r30, r22
    29e8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    29ea:	65 b1       	in	r22, 0x05	; 5
    29ec:	6a 60       	ori	r22, 0x0A	; 10
    29ee:	65 b9       	out	0x05, r22	; 5
    29f0:	65 b1       	in	r22, 0x05	; 5
    29f2:	65 7f       	andi	r22, 0xF5	; 245
    29f4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    29f6:	65 b1       	in	r22, 0x05	; 5
    29f8:	6a 60       	ori	r22, 0x0A	; 10
    29fa:	65 b9       	out	0x05, r22	; 5
    29fc:	65 b1       	in	r22, 0x05	; 5
    29fe:	65 7f       	andi	r22, 0xF5	; 245
    2a00:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2a02:	f9 01       	movw	r30, r18
    2a04:	33 96       	adiw	r30, 0x03	; 3
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2a06:	64 91       	lpm	r22, Z
    2a08:	eb b1       	in	r30, 0x0b	; 11
    2a0a:	f4 e0       	ldi	r31, 0x04	; 4
    2a0c:	6f 9f       	mul	r22, r31
    2a0e:	b0 01       	movw	r22, r0
    2a10:	11 24       	eor	r1, r1
    2a12:	e3 70       	andi	r30, 0x03	; 3
    2a14:	e6 2b       	or	r30, r22
    2a16:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2a18:	65 b1       	in	r22, 0x05	; 5
    2a1a:	6a 60       	ori	r22, 0x0A	; 10
    2a1c:	65 b9       	out	0x05, r22	; 5
    2a1e:	65 b1       	in	r22, 0x05	; 5
    2a20:	65 7f       	andi	r22, 0xF5	; 245
    2a22:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2a24:	65 b1       	in	r22, 0x05	; 5
    2a26:	6a 60       	ori	r22, 0x0A	; 10
    2a28:	65 b9       	out	0x05, r22	; 5
    2a2a:	65 b1       	in	r22, 0x05	; 5
    2a2c:	65 7f       	andi	r22, 0xF5	; 245
    2a2e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2a30:	f9 01       	movw	r30, r18
    2a32:	34 96       	adiw	r30, 0x04	; 4
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2a34:	64 91       	lpm	r22, Z
    2a36:	eb b1       	in	r30, 0x0b	; 11
    2a38:	f4 e0       	ldi	r31, 0x04	; 4
    2a3a:	6f 9f       	mul	r22, r31
    2a3c:	b0 01       	movw	r22, r0
    2a3e:	11 24       	eor	r1, r1
    2a40:	e3 70       	andi	r30, 0x03	; 3
    2a42:	e6 2b       	or	r30, r22
    2a44:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2a46:	65 b1       	in	r22, 0x05	; 5
    2a48:	6a 60       	ori	r22, 0x0A	; 10
    2a4a:	65 b9       	out	0x05, r22	; 5
    2a4c:	65 b1       	in	r22, 0x05	; 5
    2a4e:	65 7f       	andi	r22, 0xF5	; 245
    2a50:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2a52:	65 b1       	in	r22, 0x05	; 5
    2a54:	6a 60       	ori	r22, 0x0A	; 10
    2a56:	65 b9       	out	0x05, r22	; 5
    2a58:	65 b1       	in	r22, 0x05	; 5
    2a5a:	65 7f       	andi	r22, 0xF5	; 245
    2a5c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2a5e:	f9 01       	movw	r30, r18
    2a60:	35 96       	adiw	r30, 0x05	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2a62:	64 91       	lpm	r22, Z
    2a64:	eb b1       	in	r30, 0x0b	; 11
    2a66:	f4 e0       	ldi	r31, 0x04	; 4
    2a68:	6f 9f       	mul	r22, r31
    2a6a:	b0 01       	movw	r22, r0
    2a6c:	11 24       	eor	r1, r1
    2a6e:	e3 70       	andi	r30, 0x03	; 3
    2a70:	e6 2b       	or	r30, r22
    2a72:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2a74:	65 b1       	in	r22, 0x05	; 5
    2a76:	6a 60       	ori	r22, 0x0A	; 10
    2a78:	65 b9       	out	0x05, r22	; 5
    2a7a:	65 b1       	in	r22, 0x05	; 5
    2a7c:	65 7f       	andi	r22, 0xF5	; 245
    2a7e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2a80:	65 b1       	in	r22, 0x05	; 5
    2a82:	6a 60       	ori	r22, 0x0A	; 10
    2a84:	65 b9       	out	0x05, r22	; 5
    2a86:	65 b1       	in	r22, 0x05	; 5
    2a88:	65 7f       	andi	r22, 0xF5	; 245
    2a8a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2a8c:	f9 01       	movw	r30, r18
    2a8e:	36 96       	adiw	r30, 0x06	; 6
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2a90:	64 91       	lpm	r22, Z
    2a92:	eb b1       	in	r30, 0x0b	; 11
    2a94:	f4 e0       	ldi	r31, 0x04	; 4
    2a96:	6f 9f       	mul	r22, r31
    2a98:	b0 01       	movw	r22, r0
    2a9a:	11 24       	eor	r1, r1
    2a9c:	e3 70       	andi	r30, 0x03	; 3
    2a9e:	e6 2b       	or	r30, r22
    2aa0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2aa2:	65 b1       	in	r22, 0x05	; 5
    2aa4:	6a 60       	ori	r22, 0x0A	; 10
    2aa6:	65 b9       	out	0x05, r22	; 5
    2aa8:	65 b1       	in	r22, 0x05	; 5
    2aaa:	65 7f       	andi	r22, 0xF5	; 245
    2aac:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2aae:	65 b1       	in	r22, 0x05	; 5
    2ab0:	6a 60       	ori	r22, 0x0A	; 10
    2ab2:	65 b9       	out	0x05, r22	; 5
    2ab4:	65 b1       	in	r22, 0x05	; 5
    2ab6:	65 7f       	andi	r22, 0xF5	; 245
    2ab8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2aba:	f9 01       	movw	r30, r18
    2abc:	37 96       	adiw	r30, 0x07	; 7
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2abe:	64 91       	lpm	r22, Z
    2ac0:	eb b1       	in	r30, 0x0b	; 11
    2ac2:	f4 e0       	ldi	r31, 0x04	; 4
    2ac4:	6f 9f       	mul	r22, r31
    2ac6:	b0 01       	movw	r22, r0
    2ac8:	11 24       	eor	r1, r1
    2aca:	e3 70       	andi	r30, 0x03	; 3
    2acc:	e6 2b       	or	r30, r22
    2ace:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2ad0:	65 b1       	in	r22, 0x05	; 5
    2ad2:	6a 60       	ori	r22, 0x0A	; 10
    2ad4:	65 b9       	out	0x05, r22	; 5
    2ad6:	65 b1       	in	r22, 0x05	; 5
    2ad8:	65 7f       	andi	r22, 0xF5	; 245
    2ada:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2adc:	65 b1       	in	r22, 0x05	; 5
    2ade:	6a 60       	ori	r22, 0x0A	; 10
    2ae0:	65 b9       	out	0x05, r22	; 5
    2ae2:	65 b1       	in	r22, 0x05	; 5
    2ae4:	65 7f       	andi	r22, 0xF5	; 245
    2ae6:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2ae8:	f9 01       	movw	r30, r18
    2aea:	38 96       	adiw	r30, 0x08	; 8
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            SET_COLOR(pgm_read_byte(index++));
    2aec:	64 91       	lpm	r22, Z
    2aee:	eb b1       	in	r30, 0x0b	; 11
    2af0:	f4 e0       	ldi	r31, 0x04	; 4
    2af2:	6f 9f       	mul	r22, r31
    2af4:	b0 01       	movw	r22, r0
    2af6:	11 24       	eor	r1, r1
    2af8:	e3 70       	andi	r30, 0x03	; 3
    2afa:	e6 2b       	or	r30, r22
    2afc:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2afe:	65 b1       	in	r22, 0x05	; 5
    2b00:	6a 60       	ori	r22, 0x0A	; 10
    2b02:	65 b9       	out	0x05, r22	; 5
    2b04:	65 b1       	in	r22, 0x05	; 5
    2b06:	65 7f       	andi	r22, 0xF5	; 245
    2b08:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2b0a:	65 b1       	in	r22, 0x05	; 5
    2b0c:	6a 60       	ori	r22, 0x0A	; 10
    2b0e:	65 b9       	out	0x05, r22	; 5
    2b10:	65 b1       	in	r22, 0x05	; 5
    2b12:	65 7f       	andi	r22, 0xF5	; 245
    2b14:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            SET_COLOR(pgm_read_byte(index++));
    2b16:	f9 01       	movw	r30, r18
    2b18:	39 96       	adiw	r30, 0x09	; 9
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2b1a:	64 91       	lpm	r22, Z
    2b1c:	eb b1       	in	r30, 0x0b	; 11
    2b1e:	f4 e0       	ldi	r31, 0x04	; 4
    2b20:	6f 9f       	mul	r22, r31
    2b22:	b0 01       	movw	r22, r0
    2b24:	11 24       	eor	r1, r1
    2b26:	e3 70       	andi	r30, 0x03	; 3
    2b28:	e6 2b       	or	r30, r22
    2b2a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2b2c:	65 b1       	in	r22, 0x05	; 5
    2b2e:	6a 60       	ori	r22, 0x0A	; 10
    2b30:	65 b9       	out	0x05, r22	; 5
    2b32:	65 b1       	in	r22, 0x05	; 5
    2b34:	65 7f       	andi	r22, 0xF5	; 245
    2b36:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2b38:	65 b1       	in	r22, 0x05	; 5
    2b3a:	6a 60       	ori	r22, 0x0A	; 10
    2b3c:	65 b9       	out	0x05, r22	; 5
    2b3e:	65 b1       	in	r22, 0x05	; 5
    2b40:	65 7f       	andi	r22, 0xF5	; 245
    2b42:	65 b9       	out	0x05, r22	; 5

            // chip 1
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2b44:	f9 01       	movw	r30, r18
    2b46:	3a 96       	adiw	r30, 0x0a	; 10
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2b48:	64 91       	lpm	r22, Z
    2b4a:	eb b1       	in	r30, 0x0b	; 11
    2b4c:	f4 e0       	ldi	r31, 0x04	; 4
    2b4e:	6f 9f       	mul	r22, r31
    2b50:	b0 01       	movw	r22, r0
    2b52:	11 24       	eor	r1, r1
    2b54:	e3 70       	andi	r30, 0x03	; 3
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
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2b72:	f9 01       	movw	r30, r18
    2b74:	3b 96       	adiw	r30, 0x0b	; 11
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2b76:	64 91       	lpm	r22, Z
    2b78:	eb b1       	in	r30, 0x0b	; 11
    2b7a:	f4 e0       	ldi	r31, 0x04	; 4
    2b7c:	6f 9f       	mul	r22, r31
    2b7e:	b0 01       	movw	r22, r0
    2b80:	11 24       	eor	r1, r1
    2b82:	e3 70       	andi	r30, 0x03	; 3
    2b84:	e6 2b       	or	r30, r22
    2b86:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2b88:	65 b1       	in	r22, 0x05	; 5
    2b8a:	6a 60       	ori	r22, 0x0A	; 10
    2b8c:	65 b9       	out	0x05, r22	; 5
    2b8e:	65 b1       	in	r22, 0x05	; 5
    2b90:	65 7f       	andi	r22, 0xF5	; 245
    2b92:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2b94:	65 b1       	in	r22, 0x05	; 5
    2b96:	6a 60       	ori	r22, 0x0A	; 10
    2b98:	65 b9       	out	0x05, r22	; 5
    2b9a:	65 b1       	in	r22, 0x05	; 5
    2b9c:	65 7f       	andi	r22, 0xF5	; 245
    2b9e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2ba0:	f9 01       	movw	r30, r18
    2ba2:	3c 96       	adiw	r30, 0x0c	; 12
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2ba4:	64 91       	lpm	r22, Z
    2ba6:	eb b1       	in	r30, 0x0b	; 11
    2ba8:	f4 e0       	ldi	r31, 0x04	; 4
    2baa:	6f 9f       	mul	r22, r31
    2bac:	b0 01       	movw	r22, r0
    2bae:	11 24       	eor	r1, r1
    2bb0:	e3 70       	andi	r30, 0x03	; 3
    2bb2:	e6 2b       	or	r30, r22
    2bb4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2bb6:	65 b1       	in	r22, 0x05	; 5
    2bb8:	6a 60       	ori	r22, 0x0A	; 10
    2bba:	65 b9       	out	0x05, r22	; 5
    2bbc:	65 b1       	in	r22, 0x05	; 5
    2bbe:	65 7f       	andi	r22, 0xF5	; 245
    2bc0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2bc2:	65 b1       	in	r22, 0x05	; 5
    2bc4:	6a 60       	ori	r22, 0x0A	; 10
    2bc6:	65 b9       	out	0x05, r22	; 5
    2bc8:	65 b1       	in	r22, 0x05	; 5
    2bca:	65 7f       	andi	r22, 0xF5	; 245
    2bcc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2bce:	f9 01       	movw	r30, r18
    2bd0:	3d 96       	adiw	r30, 0x0d	; 13
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2bd2:	64 91       	lpm	r22, Z
    2bd4:	eb b1       	in	r30, 0x0b	; 11
    2bd6:	f4 e0       	ldi	r31, 0x04	; 4
    2bd8:	6f 9f       	mul	r22, r31
    2bda:	b0 01       	movw	r22, r0
    2bdc:	11 24       	eor	r1, r1
    2bde:	e3 70       	andi	r30, 0x03	; 3
    2be0:	e6 2b       	or	r30, r22
    2be2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2be4:	65 b1       	in	r22, 0x05	; 5
    2be6:	6a 60       	ori	r22, 0x0A	; 10
    2be8:	65 b9       	out	0x05, r22	; 5
    2bea:	65 b1       	in	r22, 0x05	; 5
    2bec:	65 7f       	andi	r22, 0xF5	; 245
    2bee:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2bf0:	65 b1       	in	r22, 0x05	; 5
    2bf2:	6a 60       	ori	r22, 0x0A	; 10
    2bf4:	65 b9       	out	0x05, r22	; 5
    2bf6:	65 b1       	in	r22, 0x05	; 5
    2bf8:	65 7f       	andi	r22, 0xF5	; 245
    2bfa:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2bfc:	f9 01       	movw	r30, r18
    2bfe:	3e 96       	adiw	r30, 0x0e	; 14
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2c00:	64 91       	lpm	r22, Z
    2c02:	eb b1       	in	r30, 0x0b	; 11
    2c04:	f4 e0       	ldi	r31, 0x04	; 4
    2c06:	6f 9f       	mul	r22, r31
    2c08:	b0 01       	movw	r22, r0
    2c0a:	11 24       	eor	r1, r1
    2c0c:	e3 70       	andi	r30, 0x03	; 3
    2c0e:	e6 2b       	or	r30, r22
    2c10:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2c12:	65 b1       	in	r22, 0x05	; 5
    2c14:	6a 60       	ori	r22, 0x0A	; 10
    2c16:	65 b9       	out	0x05, r22	; 5
    2c18:	65 b1       	in	r22, 0x05	; 5
    2c1a:	65 7f       	andi	r22, 0xF5	; 245
    2c1c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2c1e:	65 b1       	in	r22, 0x05	; 5
    2c20:	6a 60       	ori	r22, 0x0A	; 10
    2c22:	65 b9       	out	0x05, r22	; 5
    2c24:	65 b1       	in	r22, 0x05	; 5
    2c26:	65 7f       	andi	r22, 0xF5	; 245
    2c28:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2c2a:	f9 01       	movw	r30, r18
    2c2c:	3f 96       	adiw	r30, 0x0f	; 15
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2c2e:	64 91       	lpm	r22, Z
    2c30:	eb b1       	in	r30, 0x0b	; 11
    2c32:	f4 e0       	ldi	r31, 0x04	; 4
    2c34:	6f 9f       	mul	r22, r31
    2c36:	b0 01       	movw	r22, r0
    2c38:	11 24       	eor	r1, r1
    2c3a:	e3 70       	andi	r30, 0x03	; 3
    2c3c:	e6 2b       	or	r30, r22
    2c3e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2c40:	65 b1       	in	r22, 0x05	; 5
    2c42:	6a 60       	ori	r22, 0x0A	; 10
    2c44:	65 b9       	out	0x05, r22	; 5
    2c46:	65 b1       	in	r22, 0x05	; 5
    2c48:	65 7f       	andi	r22, 0xF5	; 245
    2c4a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2c4c:	65 b1       	in	r22, 0x05	; 5
    2c4e:	6a 60       	ori	r22, 0x0A	; 10
    2c50:	65 b9       	out	0x05, r22	; 5
    2c52:	65 b1       	in	r22, 0x05	; 5
    2c54:	65 7f       	andi	r22, 0xF5	; 245
    2c56:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2c58:	f9 01       	movw	r30, r18
    2c5a:	70 96       	adiw	r30, 0x10	; 16
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
    2c5c:	64 91       	lpm	r22, Z
    2c5e:	eb b1       	in	r30, 0x0b	; 11
    2c60:	f4 e0       	ldi	r31, 0x04	; 4
    2c62:	6f 9f       	mul	r22, r31
    2c64:	b0 01       	movw	r22, r0
    2c66:	11 24       	eor	r1, r1
    2c68:	e3 70       	andi	r30, 0x03	; 3
    2c6a:	e6 2b       	or	r30, r22
    2c6c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2c6e:	65 b1       	in	r22, 0x05	; 5
    2c70:	6a 60       	ori	r22, 0x0A	; 10
    2c72:	65 b9       	out	0x05, r22	; 5
    2c74:	65 b1       	in	r22, 0x05	; 5
    2c76:	65 7f       	andi	r22, 0xF5	; 245
    2c78:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2c7a:	65 b1       	in	r22, 0x05	; 5
    2c7c:	6a 60       	ori	r22, 0x0A	; 10
    2c7e:	65 b9       	out	0x05, r22	; 5
    2c80:	65 b1       	in	r22, 0x05	; 5
    2c82:	65 7f       	andi	r22, 0xF5	; 245
    2c84:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
    2c86:	f9 01       	movw	r30, r18
    2c88:	71 96       	adiw	r30, 0x11	; 17
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2c8a:	64 91       	lpm	r22, Z
    2c8c:	eb b1       	in	r30, 0x0b	; 11
    2c8e:	f4 e0       	ldi	r31, 0x04	; 4
    2c90:	6f 9f       	mul	r22, r31
    2c92:	b0 01       	movw	r22, r0
    2c94:	11 24       	eor	r1, r1
    2c96:	e3 70       	andi	r30, 0x03	; 3
    2c98:	e6 2b       	or	r30, r22
    2c9a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2c9c:	65 b1       	in	r22, 0x05	; 5
    2c9e:	6a 60       	ori	r22, 0x0A	; 10
    2ca0:	65 b9       	out	0x05, r22	; 5
    2ca2:	65 b1       	in	r22, 0x05	; 5
    2ca4:	65 7f       	andi	r22, 0xF5	; 245
    2ca6:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2ca8:	65 b1       	in	r22, 0x05	; 5
    2caa:	6a 60       	ori	r22, 0x0A	; 10
    2cac:	65 b9       	out	0x05, r22	; 5
    2cae:	65 b1       	in	r22, 0x05	; 5
    2cb0:	65 7f       	andi	r22, 0xF5	; 245
    2cb2:	65 b9       	out	0x05, r22	; 5

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2cb4:	f9 01       	movw	r30, r18
    2cb6:	72 96       	adiw	r30, 0x12	; 18
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2cb8:	64 91       	lpm	r22, Z
    2cba:	eb b1       	in	r30, 0x0b	; 11
    2cbc:	f4 e0       	ldi	r31, 0x04	; 4
    2cbe:	6f 9f       	mul	r22, r31
    2cc0:	b0 01       	movw	r22, r0
    2cc2:	11 24       	eor	r1, r1
    2cc4:	e3 70       	andi	r30, 0x03	; 3
    2cc6:	e6 2b       	or	r30, r22
    2cc8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2cca:	65 b1       	in	r22, 0x05	; 5
    2ccc:	6a 60       	ori	r22, 0x0A	; 10
    2cce:	65 b9       	out	0x05, r22	; 5
    2cd0:	65 b1       	in	r22, 0x05	; 5
    2cd2:	65 7f       	andi	r22, 0xF5	; 245
    2cd4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2cd6:	65 b1       	in	r22, 0x05	; 5
    2cd8:	6a 60       	ori	r22, 0x0A	; 10
    2cda:	65 b9       	out	0x05, r22	; 5
    2cdc:	65 b1       	in	r22, 0x05	; 5
    2cde:	65 7f       	andi	r22, 0xF5	; 245
    2ce0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2ce2:	f9 01       	movw	r30, r18
    2ce4:	73 96       	adiw	r30, 0x13	; 19
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2ce6:	64 91       	lpm	r22, Z
    2ce8:	eb b1       	in	r30, 0x0b	; 11
    2cea:	f4 e0       	ldi	r31, 0x04	; 4
    2cec:	6f 9f       	mul	r22, r31
    2cee:	b0 01       	movw	r22, r0
    2cf0:	11 24       	eor	r1, r1
    2cf2:	e3 70       	andi	r30, 0x03	; 3
    2cf4:	e6 2b       	or	r30, r22
    2cf6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2cf8:	65 b1       	in	r22, 0x05	; 5
    2cfa:	6a 60       	ori	r22, 0x0A	; 10
    2cfc:	65 b9       	out	0x05, r22	; 5
    2cfe:	65 b1       	in	r22, 0x05	; 5
    2d00:	65 7f       	andi	r22, 0xF5	; 245
    2d02:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2d04:	65 b1       	in	r22, 0x05	; 5
    2d06:	6a 60       	ori	r22, 0x0A	; 10
    2d08:	65 b9       	out	0x05, r22	; 5
    2d0a:	65 b1       	in	r22, 0x05	; 5
    2d0c:	65 7f       	andi	r22, 0xF5	; 245
    2d0e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2d10:	f9 01       	movw	r30, r18
    2d12:	74 96       	adiw	r30, 0x14	; 20
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2d14:	64 91       	lpm	r22, Z
    2d16:	eb b1       	in	r30, 0x0b	; 11
    2d18:	f4 e0       	ldi	r31, 0x04	; 4
    2d1a:	6f 9f       	mul	r22, r31
    2d1c:	b0 01       	movw	r22, r0
    2d1e:	11 24       	eor	r1, r1
    2d20:	e3 70       	andi	r30, 0x03	; 3
    2d22:	e6 2b       	or	r30, r22
    2d24:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2d26:	65 b1       	in	r22, 0x05	; 5
    2d28:	6a 60       	ori	r22, 0x0A	; 10
    2d2a:	65 b9       	out	0x05, r22	; 5
    2d2c:	65 b1       	in	r22, 0x05	; 5
    2d2e:	65 7f       	andi	r22, 0xF5	; 245
    2d30:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2d32:	65 b1       	in	r22, 0x05	; 5
    2d34:	6a 60       	ori	r22, 0x0A	; 10
    2d36:	65 b9       	out	0x05, r22	; 5
    2d38:	65 b1       	in	r22, 0x05	; 5
    2d3a:	65 7f       	andi	r22, 0xF5	; 245
    2d3c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2d3e:	f9 01       	movw	r30, r18
    2d40:	75 96       	adiw	r30, 0x15	; 21
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2d42:	64 91       	lpm	r22, Z
    2d44:	eb b1       	in	r30, 0x0b	; 11
    2d46:	f4 e0       	ldi	r31, 0x04	; 4
    2d48:	6f 9f       	mul	r22, r31
    2d4a:	b0 01       	movw	r22, r0
    2d4c:	11 24       	eor	r1, r1
    2d4e:	e3 70       	andi	r30, 0x03	; 3
    2d50:	e6 2b       	or	r30, r22
    2d52:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2d54:	65 b1       	in	r22, 0x05	; 5
    2d56:	6a 60       	ori	r22, 0x0A	; 10
    2d58:	65 b9       	out	0x05, r22	; 5
    2d5a:	65 b1       	in	r22, 0x05	; 5
    2d5c:	65 7f       	andi	r22, 0xF5	; 245
    2d5e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2d60:	65 b1       	in	r22, 0x05	; 5
    2d62:	6a 60       	ori	r22, 0x0A	; 10
    2d64:	65 b9       	out	0x05, r22	; 5
    2d66:	65 b1       	in	r22, 0x05	; 5
    2d68:	65 7f       	andi	r22, 0xF5	; 245
    2d6a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2d6c:	f9 01       	movw	r30, r18
    2d6e:	76 96       	adiw	r30, 0x16	; 22
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2d70:	64 91       	lpm	r22, Z
    2d72:	eb b1       	in	r30, 0x0b	; 11
    2d74:	f4 e0       	ldi	r31, 0x04	; 4
    2d76:	6f 9f       	mul	r22, r31
    2d78:	b0 01       	movw	r22, r0
    2d7a:	11 24       	eor	r1, r1
    2d7c:	e3 70       	andi	r30, 0x03	; 3
    2d7e:	e6 2b       	or	r30, r22
    2d80:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2d82:	65 b1       	in	r22, 0x05	; 5
    2d84:	6a 60       	ori	r22, 0x0A	; 10
    2d86:	65 b9       	out	0x05, r22	; 5
    2d88:	65 b1       	in	r22, 0x05	; 5
    2d8a:	65 7f       	andi	r22, 0xF5	; 245
    2d8c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2d8e:	65 b1       	in	r22, 0x05	; 5
    2d90:	6a 60       	ori	r22, 0x0A	; 10
    2d92:	65 b9       	out	0x05, r22	; 5
    2d94:	65 b1       	in	r22, 0x05	; 5
    2d96:	65 7f       	andi	r22, 0xF5	; 245
    2d98:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2d9a:	f9 01       	movw	r30, r18
    2d9c:	77 96       	adiw	r30, 0x17	; 23
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2d9e:	64 91       	lpm	r22, Z
    2da0:	eb b1       	in	r30, 0x0b	; 11
    2da2:	f4 e0       	ldi	r31, 0x04	; 4
    2da4:	6f 9f       	mul	r22, r31
    2da6:	b0 01       	movw	r22, r0
    2da8:	11 24       	eor	r1, r1
    2daa:	e3 70       	andi	r30, 0x03	; 3
    2dac:	e6 2b       	or	r30, r22
    2dae:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2db0:	65 b1       	in	r22, 0x05	; 5
    2db2:	6a 60       	ori	r22, 0x0A	; 10
    2db4:	65 b9       	out	0x05, r22	; 5
    2db6:	65 b1       	in	r22, 0x05	; 5
    2db8:	65 7f       	andi	r22, 0xF5	; 245
    2dba:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2dbc:	65 b1       	in	r22, 0x05	; 5
    2dbe:	6a 60       	ori	r22, 0x0A	; 10
    2dc0:	65 b9       	out	0x05, r22	; 5
    2dc2:	65 b1       	in	r22, 0x05	; 5
    2dc4:	65 7f       	andi	r22, 0xF5	; 245
    2dc6:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2dc8:	f9 01       	movw	r30, r18
    2dca:	78 96       	adiw	r30, 0x18	; 24
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
    2dcc:	64 91       	lpm	r22, Z
    2dce:	eb b1       	in	r30, 0x0b	; 11
    2dd0:	f4 e0       	ldi	r31, 0x04	; 4
    2dd2:	6f 9f       	mul	r22, r31
    2dd4:	b0 01       	movw	r22, r0
    2dd6:	11 24       	eor	r1, r1
    2dd8:	e3 70       	andi	r30, 0x03	; 3
    2dda:	e6 2b       	or	r30, r22
    2ddc:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2dde:	65 b1       	in	r22, 0x05	; 5
    2de0:	6a 60       	ori	r22, 0x0A	; 10
    2de2:	65 b9       	out	0x05, r22	; 5
    2de4:	65 b1       	in	r22, 0x05	; 5
    2de6:	65 7f       	andi	r22, 0xF5	; 245
    2de8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2dea:	65 b1       	in	r22, 0x05	; 5
    2dec:	6a 60       	ori	r22, 0x0A	; 10
    2dee:	65 b9       	out	0x05, r22	; 5
    2df0:	65 b1       	in	r22, 0x05	; 5
    2df2:	65 7f       	andi	r22, 0xF5	; 245
    2df4:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
    2df6:	f9 01       	movw	r30, r18
    2df8:	79 96       	adiw	r30, 0x19	; 25
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2dfa:	64 91       	lpm	r22, Z
    2dfc:	eb b1       	in	r30, 0x0b	; 11
    2dfe:	f4 e0       	ldi	r31, 0x04	; 4
    2e00:	6f 9f       	mul	r22, r31
    2e02:	b0 01       	movw	r22, r0
    2e04:	11 24       	eor	r1, r1
    2e06:	e3 70       	andi	r30, 0x03	; 3
    2e08:	e6 2b       	or	r30, r22
    2e0a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2e0c:	65 b1       	in	r22, 0x05	; 5
    2e0e:	6a 60       	ori	r22, 0x0A	; 10
    2e10:	65 b9       	out	0x05, r22	; 5
    2e12:	65 b1       	in	r22, 0x05	; 5
    2e14:	65 7f       	andi	r22, 0xF5	; 245
    2e16:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2e18:	65 b1       	in	r22, 0x05	; 5
    2e1a:	6a 60       	ori	r22, 0x0A	; 10
    2e1c:	65 b9       	out	0x05, r22	; 5
    2e1e:	65 b1       	in	r22, 0x05	; 5
    2e20:	65 7f       	andi	r22, 0xF5	; 245
    2e22:	65 b9       	out	0x05, r22	; 5

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2e24:	f9 01       	movw	r30, r18
    2e26:	7a 96       	adiw	r30, 0x1a	; 26
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2e28:	64 91       	lpm	r22, Z
    2e2a:	eb b1       	in	r30, 0x0b	; 11
    2e2c:	f4 e0       	ldi	r31, 0x04	; 4
    2e2e:	6f 9f       	mul	r22, r31
    2e30:	b0 01       	movw	r22, r0
    2e32:	11 24       	eor	r1, r1
    2e34:	e3 70       	andi	r30, 0x03	; 3
    2e36:	e6 2b       	or	r30, r22
    2e38:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2e3a:	65 b1       	in	r22, 0x05	; 5
    2e3c:	6a 60       	ori	r22, 0x0A	; 10
    2e3e:	65 b9       	out	0x05, r22	; 5
    2e40:	65 b1       	in	r22, 0x05	; 5
    2e42:	65 7f       	andi	r22, 0xF5	; 245
    2e44:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2e46:	65 b1       	in	r22, 0x05	; 5
    2e48:	6a 60       	ori	r22, 0x0A	; 10
    2e4a:	65 b9       	out	0x05, r22	; 5
    2e4c:	65 b1       	in	r22, 0x05	; 5
    2e4e:	65 7f       	andi	r22, 0xF5	; 245
    2e50:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2e52:	f9 01       	movw	r30, r18
    2e54:	7b 96       	adiw	r30, 0x1b	; 27
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2e56:	64 91       	lpm	r22, Z
    2e58:	eb b1       	in	r30, 0x0b	; 11
    2e5a:	f4 e0       	ldi	r31, 0x04	; 4
    2e5c:	6f 9f       	mul	r22, r31
    2e5e:	b0 01       	movw	r22, r0
    2e60:	11 24       	eor	r1, r1
    2e62:	e3 70       	andi	r30, 0x03	; 3
    2e64:	e6 2b       	or	r30, r22
    2e66:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2e68:	65 b1       	in	r22, 0x05	; 5
    2e6a:	6a 60       	ori	r22, 0x0A	; 10
    2e6c:	65 b9       	out	0x05, r22	; 5
    2e6e:	65 b1       	in	r22, 0x05	; 5
    2e70:	65 7f       	andi	r22, 0xF5	; 245
    2e72:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2e74:	65 b1       	in	r22, 0x05	; 5
    2e76:	6a 60       	ori	r22, 0x0A	; 10
    2e78:	65 b9       	out	0x05, r22	; 5
    2e7a:	65 b1       	in	r22, 0x05	; 5
    2e7c:	65 7f       	andi	r22, 0xF5	; 245
    2e7e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2e80:	f9 01       	movw	r30, r18
    2e82:	7c 96       	adiw	r30, 0x1c	; 28
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2e84:	64 91       	lpm	r22, Z
    2e86:	eb b1       	in	r30, 0x0b	; 11
    2e88:	f4 e0       	ldi	r31, 0x04	; 4
    2e8a:	6f 9f       	mul	r22, r31
    2e8c:	b0 01       	movw	r22, r0
    2e8e:	11 24       	eor	r1, r1
    2e90:	e3 70       	andi	r30, 0x03	; 3
    2e92:	e6 2b       	or	r30, r22
    2e94:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2e96:	65 b1       	in	r22, 0x05	; 5
    2e98:	6a 60       	ori	r22, 0x0A	; 10
    2e9a:	65 b9       	out	0x05, r22	; 5
    2e9c:	65 b1       	in	r22, 0x05	; 5
    2e9e:	65 7f       	andi	r22, 0xF5	; 245
    2ea0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2ea2:	65 b1       	in	r22, 0x05	; 5
    2ea4:	6a 60       	ori	r22, 0x0A	; 10
    2ea6:	65 b9       	out	0x05, r22	; 5
    2ea8:	65 b1       	in	r22, 0x05	; 5
    2eaa:	65 7f       	andi	r22, 0xF5	; 245
    2eac:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2eae:	f9 01       	movw	r30, r18
    2eb0:	7d 96       	adiw	r30, 0x1d	; 29
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2eb2:	64 91       	lpm	r22, Z
    2eb4:	eb b1       	in	r30, 0x0b	; 11
    2eb6:	f4 e0       	ldi	r31, 0x04	; 4
    2eb8:	6f 9f       	mul	r22, r31
    2eba:	b0 01       	movw	r22, r0
    2ebc:	11 24       	eor	r1, r1
    2ebe:	e3 70       	andi	r30, 0x03	; 3
    2ec0:	e6 2b       	or	r30, r22
    2ec2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2ec4:	65 b1       	in	r22, 0x05	; 5
    2ec6:	6a 60       	ori	r22, 0x0A	; 10
    2ec8:	65 b9       	out	0x05, r22	; 5
    2eca:	65 b1       	in	r22, 0x05	; 5
    2ecc:	65 7f       	andi	r22, 0xF5	; 245
    2ece:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2ed0:	65 b1       	in	r22, 0x05	; 5
    2ed2:	6a 60       	ori	r22, 0x0A	; 10
    2ed4:	65 b9       	out	0x05, r22	; 5
    2ed6:	65 b1       	in	r22, 0x05	; 5
    2ed8:	65 7f       	andi	r22, 0xF5	; 245
    2eda:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2edc:	f9 01       	movw	r30, r18
    2ede:	7e 96       	adiw	r30, 0x1e	; 30
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2ee0:	64 91       	lpm	r22, Z
    2ee2:	eb b1       	in	r30, 0x0b	; 11
    2ee4:	f4 e0       	ldi	r31, 0x04	; 4
    2ee6:	6f 9f       	mul	r22, r31
    2ee8:	b0 01       	movw	r22, r0
    2eea:	11 24       	eor	r1, r1
    2eec:	e3 70       	andi	r30, 0x03	; 3
    2eee:	e6 2b       	or	r30, r22
    2ef0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2ef2:	65 b1       	in	r22, 0x05	; 5
    2ef4:	6a 60       	ori	r22, 0x0A	; 10
    2ef6:	65 b9       	out	0x05, r22	; 5
    2ef8:	65 b1       	in	r22, 0x05	; 5
    2efa:	65 7f       	andi	r22, 0xF5	; 245
    2efc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2efe:	65 b1       	in	r22, 0x05	; 5
    2f00:	6a 60       	ori	r22, 0x0A	; 10
    2f02:	65 b9       	out	0x05, r22	; 5
    2f04:	65 b1       	in	r22, 0x05	; 5
    2f06:	65 7f       	andi	r22, 0xF5	; 245
    2f08:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2f0a:	f9 01       	movw	r30, r18
    2f0c:	7f 96       	adiw	r30, 0x1f	; 31
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2f0e:	64 91       	lpm	r22, Z
    2f10:	eb b1       	in	r30, 0x0b	; 11
    2f12:	f4 e0       	ldi	r31, 0x04	; 4
    2f14:	6f 9f       	mul	r22, r31
    2f16:	b0 01       	movw	r22, r0
    2f18:	11 24       	eor	r1, r1
    2f1a:	e3 70       	andi	r30, 0x03	; 3
    2f1c:	e6 2b       	or	r30, r22
    2f1e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2f20:	65 b1       	in	r22, 0x05	; 5
    2f22:	6a 60       	ori	r22, 0x0A	; 10
    2f24:	65 b9       	out	0x05, r22	; 5
    2f26:	65 b1       	in	r22, 0x05	; 5
    2f28:	65 7f       	andi	r22, 0xF5	; 245
    2f2a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2f2c:	65 b1       	in	r22, 0x05	; 5
    2f2e:	6a 60       	ori	r22, 0x0A	; 10
    2f30:	65 b9       	out	0x05, r22	; 5
    2f32:	65 b1       	in	r22, 0x05	; 5
    2f34:	65 7f       	andi	r22, 0xF5	; 245
    2f36:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2f38:	f9 01       	movw	r30, r18
    2f3a:	b0 96       	adiw	r30, 0x20	; 32
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
    2f3c:	64 91       	lpm	r22, Z
    2f3e:	eb b1       	in	r30, 0x0b	; 11
    2f40:	f4 e0       	ldi	r31, 0x04	; 4
    2f42:	6f 9f       	mul	r22, r31
    2f44:	b0 01       	movw	r22, r0
    2f46:	11 24       	eor	r1, r1
    2f48:	e3 70       	andi	r30, 0x03	; 3
    2f4a:	e6 2b       	or	r30, r22
    2f4c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2f4e:	65 b1       	in	r22, 0x05	; 5
    2f50:	6a 60       	ori	r22, 0x0A	; 10
    2f52:	65 b9       	out	0x05, r22	; 5
    2f54:	65 b1       	in	r22, 0x05	; 5
    2f56:	65 7f       	andi	r22, 0xF5	; 245
    2f58:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2f5a:	65 b1       	in	r22, 0x05	; 5
    2f5c:	6a 60       	ori	r22, 0x0A	; 10
    2f5e:	65 b9       	out	0x05, r22	; 5
    2f60:	65 b1       	in	r22, 0x05	; 5
    2f62:	65 7f       	andi	r22, 0xF5	; 245
    2f64:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
    2f66:	f9 01       	movw	r30, r18
    2f68:	b1 96       	adiw	r30, 0x21	; 33
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2f6a:	64 91       	lpm	r22, Z
    2f6c:	eb b1       	in	r30, 0x0b	; 11
    2f6e:	f4 e0       	ldi	r31, 0x04	; 4
    2f70:	6f 9f       	mul	r22, r31
    2f72:	b0 01       	movw	r22, r0
    2f74:	11 24       	eor	r1, r1
    2f76:	e3 70       	andi	r30, 0x03	; 3
    2f78:	e6 2b       	or	r30, r22
    2f7a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2f7c:	65 b1       	in	r22, 0x05	; 5
    2f7e:	6a 60       	ori	r22, 0x0A	; 10
    2f80:	65 b9       	out	0x05, r22	; 5
    2f82:	65 b1       	in	r22, 0x05	; 5
    2f84:	65 7f       	andi	r22, 0xF5	; 245
    2f86:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2f88:	65 b1       	in	r22, 0x05	; 5
    2f8a:	6a 60       	ori	r22, 0x0A	; 10
    2f8c:	65 b9       	out	0x05, r22	; 5
    2f8e:	65 b1       	in	r22, 0x05	; 5
    2f90:	65 7f       	andi	r22, 0xF5	; 245
    2f92:	65 b9       	out	0x05, r22	; 5

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2f94:	f9 01       	movw	r30, r18
    2f96:	b2 96       	adiw	r30, 0x22	; 34
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2f98:	64 91       	lpm	r22, Z
    2f9a:	eb b1       	in	r30, 0x0b	; 11
    2f9c:	f4 e0       	ldi	r31, 0x04	; 4
    2f9e:	6f 9f       	mul	r22, r31
    2fa0:	b0 01       	movw	r22, r0
    2fa2:	11 24       	eor	r1, r1
    2fa4:	e3 70       	andi	r30, 0x03	; 3
    2fa6:	e6 2b       	or	r30, r22
    2fa8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2faa:	65 b1       	in	r22, 0x05	; 5
    2fac:	6a 60       	ori	r22, 0x0A	; 10
    2fae:	65 b9       	out	0x05, r22	; 5
    2fb0:	65 b1       	in	r22, 0x05	; 5
    2fb2:	65 7f       	andi	r22, 0xF5	; 245
    2fb4:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2fb6:	65 b1       	in	r22, 0x05	; 5
    2fb8:	6a 60       	ori	r22, 0x0A	; 10
    2fba:	65 b9       	out	0x05, r22	; 5
    2fbc:	65 b1       	in	r22, 0x05	; 5
    2fbe:	65 7f       	andi	r22, 0xF5	; 245
    2fc0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2fc2:	f9 01       	movw	r30, r18
    2fc4:	b3 96       	adiw	r30, 0x23	; 35
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2fc6:	64 91       	lpm	r22, Z
    2fc8:	eb b1       	in	r30, 0x0b	; 11
    2fca:	f4 e0       	ldi	r31, 0x04	; 4
    2fcc:	6f 9f       	mul	r22, r31
    2fce:	b0 01       	movw	r22, r0
    2fd0:	11 24       	eor	r1, r1
    2fd2:	e3 70       	andi	r30, 0x03	; 3
    2fd4:	e6 2b       	or	r30, r22
    2fd6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    2fd8:	65 b1       	in	r22, 0x05	; 5
    2fda:	6a 60       	ori	r22, 0x0A	; 10
    2fdc:	65 b9       	out	0x05, r22	; 5
    2fde:	65 b1       	in	r22, 0x05	; 5
    2fe0:	65 7f       	andi	r22, 0xF5	; 245
    2fe2:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    2fe4:	65 b1       	in	r22, 0x05	; 5
    2fe6:	6a 60       	ori	r22, 0x0A	; 10
    2fe8:	65 b9       	out	0x05, r22	; 5
    2fea:	65 b1       	in	r22, 0x05	; 5
    2fec:	65 7f       	andi	r22, 0xF5	; 245
    2fee:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2ff0:	f9 01       	movw	r30, r18
    2ff2:	b4 96       	adiw	r30, 0x24	; 36
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    2ff4:	64 91       	lpm	r22, Z
    2ff6:	eb b1       	in	r30, 0x0b	; 11
    2ff8:	f4 e0       	ldi	r31, 0x04	; 4
    2ffa:	6f 9f       	mul	r22, r31
    2ffc:	b0 01       	movw	r22, r0
    2ffe:	11 24       	eor	r1, r1
    3000:	e3 70       	andi	r30, 0x03	; 3
    3002:	e6 2b       	or	r30, r22
    3004:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3006:	65 b1       	in	r22, 0x05	; 5
    3008:	6a 60       	ori	r22, 0x0A	; 10
    300a:	65 b9       	out	0x05, r22	; 5
    300c:	65 b1       	in	r22, 0x05	; 5
    300e:	65 7f       	andi	r22, 0xF5	; 245
    3010:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3012:	65 b1       	in	r22, 0x05	; 5
    3014:	6a 60       	ori	r22, 0x0A	; 10
    3016:	65 b9       	out	0x05, r22	; 5
    3018:	65 b1       	in	r22, 0x05	; 5
    301a:	65 7f       	andi	r22, 0xF5	; 245
    301c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    301e:	f9 01       	movw	r30, r18
    3020:	b5 96       	adiw	r30, 0x25	; 37
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3022:	64 91       	lpm	r22, Z
    3024:	eb b1       	in	r30, 0x0b	; 11
    3026:	f4 e0       	ldi	r31, 0x04	; 4
    3028:	6f 9f       	mul	r22, r31
    302a:	b0 01       	movw	r22, r0
    302c:	11 24       	eor	r1, r1
    302e:	e3 70       	andi	r30, 0x03	; 3
    3030:	e6 2b       	or	r30, r22
    3032:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3034:	65 b1       	in	r22, 0x05	; 5
    3036:	6a 60       	ori	r22, 0x0A	; 10
    3038:	65 b9       	out	0x05, r22	; 5
    303a:	65 b1       	in	r22, 0x05	; 5
    303c:	65 7f       	andi	r22, 0xF5	; 245
    303e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3040:	65 b1       	in	r22, 0x05	; 5
    3042:	6a 60       	ori	r22, 0x0A	; 10
    3044:	65 b9       	out	0x05, r22	; 5
    3046:	65 b1       	in	r22, 0x05	; 5
    3048:	65 7f       	andi	r22, 0xF5	; 245
    304a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    304c:	f9 01       	movw	r30, r18
    304e:	b6 96       	adiw	r30, 0x26	; 38
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3050:	64 91       	lpm	r22, Z
    3052:	eb b1       	in	r30, 0x0b	; 11
    3054:	f4 e0       	ldi	r31, 0x04	; 4
    3056:	6f 9f       	mul	r22, r31
    3058:	b0 01       	movw	r22, r0
    305a:	11 24       	eor	r1, r1
    305c:	e3 70       	andi	r30, 0x03	; 3
    305e:	e6 2b       	or	r30, r22
    3060:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3062:	65 b1       	in	r22, 0x05	; 5
    3064:	6a 60       	ori	r22, 0x0A	; 10
    3066:	65 b9       	out	0x05, r22	; 5
    3068:	65 b1       	in	r22, 0x05	; 5
    306a:	65 7f       	andi	r22, 0xF5	; 245
    306c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    306e:	65 b1       	in	r22, 0x05	; 5
    3070:	6a 60       	ori	r22, 0x0A	; 10
    3072:	65 b9       	out	0x05, r22	; 5
    3074:	65 b1       	in	r22, 0x05	; 5
    3076:	65 7f       	andi	r22, 0xF5	; 245
    3078:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    307a:	f9 01       	movw	r30, r18
    307c:	b7 96       	adiw	r30, 0x27	; 39
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    307e:	64 91       	lpm	r22, Z
    3080:	eb b1       	in	r30, 0x0b	; 11
    3082:	f4 e0       	ldi	r31, 0x04	; 4
    3084:	6f 9f       	mul	r22, r31
    3086:	b0 01       	movw	r22, r0
    3088:	11 24       	eor	r1, r1
    308a:	e3 70       	andi	r30, 0x03	; 3
    308c:	e6 2b       	or	r30, r22
    308e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3090:	65 b1       	in	r22, 0x05	; 5
    3092:	6a 60       	ori	r22, 0x0A	; 10
    3094:	65 b9       	out	0x05, r22	; 5
    3096:	65 b1       	in	r22, 0x05	; 5
    3098:	65 7f       	andi	r22, 0xF5	; 245
    309a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    309c:	65 b1       	in	r22, 0x05	; 5
    309e:	6a 60       	ori	r22, 0x0A	; 10
    30a0:	65 b9       	out	0x05, r22	; 5
    30a2:	65 b1       	in	r22, 0x05	; 5
    30a4:	65 7f       	andi	r22, 0xF5	; 245
    30a6:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    30a8:	f9 01       	movw	r30, r18
    30aa:	b8 96       	adiw	r30, 0x28	; 40
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
    30ac:	64 91       	lpm	r22, Z
    30ae:	eb b1       	in	r30, 0x0b	; 11
    30b0:	f4 e0       	ldi	r31, 0x04	; 4
    30b2:	6f 9f       	mul	r22, r31
    30b4:	b0 01       	movw	r22, r0
    30b6:	11 24       	eor	r1, r1
    30b8:	e3 70       	andi	r30, 0x03	; 3
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
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
    30d6:	f9 01       	movw	r30, r18
    30d8:	b9 96       	adiw	r30, 0x29	; 41
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    30da:	64 91       	lpm	r22, Z
    30dc:	eb b1       	in	r30, 0x0b	; 11
    30de:	f4 e0       	ldi	r31, 0x04	; 4
    30e0:	6f 9f       	mul	r22, r31
    30e2:	b0 01       	movw	r22, r0
    30e4:	11 24       	eor	r1, r1
    30e6:	e3 70       	andi	r30, 0x03	; 3
    30e8:	e6 2b       	or	r30, r22
    30ea:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    30ec:	65 b1       	in	r22, 0x05	; 5
    30ee:	6a 60       	ori	r22, 0x0A	; 10
    30f0:	65 b9       	out	0x05, r22	; 5
    30f2:	65 b1       	in	r22, 0x05	; 5
    30f4:	65 7f       	andi	r22, 0xF5	; 245
    30f6:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    30f8:	65 b1       	in	r22, 0x05	; 5
    30fa:	6a 60       	ori	r22, 0x0A	; 10
    30fc:	65 b9       	out	0x05, r22	; 5
    30fe:	65 b1       	in	r22, 0x05	; 5
    3100:	65 7f       	andi	r22, 0xF5	; 245
    3102:	65 b9       	out	0x05, r22	; 5

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3104:	f9 01       	movw	r30, r18
    3106:	ba 96       	adiw	r30, 0x2a	; 42
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3108:	64 91       	lpm	r22, Z
    310a:	eb b1       	in	r30, 0x0b	; 11
    310c:	f4 e0       	ldi	r31, 0x04	; 4
    310e:	6f 9f       	mul	r22, r31
    3110:	b0 01       	movw	r22, r0
    3112:	11 24       	eor	r1, r1
    3114:	e3 70       	andi	r30, 0x03	; 3
    3116:	e6 2b       	or	r30, r22
    3118:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    311a:	65 b1       	in	r22, 0x05	; 5
    311c:	6a 60       	ori	r22, 0x0A	; 10
    311e:	65 b9       	out	0x05, r22	; 5
    3120:	65 b1       	in	r22, 0x05	; 5
    3122:	65 7f       	andi	r22, 0xF5	; 245
    3124:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3126:	65 b1       	in	r22, 0x05	; 5
    3128:	6a 60       	ori	r22, 0x0A	; 10
    312a:	65 b9       	out	0x05, r22	; 5
    312c:	65 b1       	in	r22, 0x05	; 5
    312e:	65 7f       	andi	r22, 0xF5	; 245
    3130:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3132:	f9 01       	movw	r30, r18
    3134:	bb 96       	adiw	r30, 0x2b	; 43
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3136:	64 91       	lpm	r22, Z
    3138:	eb b1       	in	r30, 0x0b	; 11
    313a:	f4 e0       	ldi	r31, 0x04	; 4
    313c:	6f 9f       	mul	r22, r31
    313e:	b0 01       	movw	r22, r0
    3140:	11 24       	eor	r1, r1
    3142:	e3 70       	andi	r30, 0x03	; 3
    3144:	e6 2b       	or	r30, r22
    3146:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3148:	65 b1       	in	r22, 0x05	; 5
    314a:	6a 60       	ori	r22, 0x0A	; 10
    314c:	65 b9       	out	0x05, r22	; 5
    314e:	65 b1       	in	r22, 0x05	; 5
    3150:	65 7f       	andi	r22, 0xF5	; 245
    3152:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3154:	65 b1       	in	r22, 0x05	; 5
    3156:	6a 60       	ori	r22, 0x0A	; 10
    3158:	65 b9       	out	0x05, r22	; 5
    315a:	65 b1       	in	r22, 0x05	; 5
    315c:	65 7f       	andi	r22, 0xF5	; 245
    315e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3160:	f9 01       	movw	r30, r18
    3162:	bc 96       	adiw	r30, 0x2c	; 44
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3164:	64 91       	lpm	r22, Z
    3166:	eb b1       	in	r30, 0x0b	; 11
    3168:	f4 e0       	ldi	r31, 0x04	; 4
    316a:	6f 9f       	mul	r22, r31
    316c:	b0 01       	movw	r22, r0
    316e:	11 24       	eor	r1, r1
    3170:	e3 70       	andi	r30, 0x03	; 3
    3172:	e6 2b       	or	r30, r22
    3174:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3176:	65 b1       	in	r22, 0x05	; 5
    3178:	6a 60       	ori	r22, 0x0A	; 10
    317a:	65 b9       	out	0x05, r22	; 5
    317c:	65 b1       	in	r22, 0x05	; 5
    317e:	65 7f       	andi	r22, 0xF5	; 245
    3180:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3182:	65 b1       	in	r22, 0x05	; 5
    3184:	6a 60       	ori	r22, 0x0A	; 10
    3186:	65 b9       	out	0x05, r22	; 5
    3188:	65 b1       	in	r22, 0x05	; 5
    318a:	65 7f       	andi	r22, 0xF5	; 245
    318c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    318e:	f9 01       	movw	r30, r18
    3190:	bd 96       	adiw	r30, 0x2d	; 45
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3192:	64 91       	lpm	r22, Z
    3194:	eb b1       	in	r30, 0x0b	; 11
    3196:	f4 e0       	ldi	r31, 0x04	; 4
    3198:	6f 9f       	mul	r22, r31
    319a:	b0 01       	movw	r22, r0
    319c:	11 24       	eor	r1, r1
    319e:	e3 70       	andi	r30, 0x03	; 3
    31a0:	e6 2b       	or	r30, r22
    31a2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    31a4:	65 b1       	in	r22, 0x05	; 5
    31a6:	6a 60       	ori	r22, 0x0A	; 10
    31a8:	65 b9       	out	0x05, r22	; 5
    31aa:	65 b1       	in	r22, 0x05	; 5
    31ac:	65 7f       	andi	r22, 0xF5	; 245
    31ae:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    31b0:	65 b1       	in	r22, 0x05	; 5
    31b2:	6a 60       	ori	r22, 0x0A	; 10
    31b4:	65 b9       	out	0x05, r22	; 5
    31b6:	65 b1       	in	r22, 0x05	; 5
    31b8:	65 7f       	andi	r22, 0xF5	; 245
    31ba:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    31bc:	f9 01       	movw	r30, r18
    31be:	be 96       	adiw	r30, 0x2e	; 46
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    31c0:	64 91       	lpm	r22, Z
    31c2:	eb b1       	in	r30, 0x0b	; 11
    31c4:	f4 e0       	ldi	r31, 0x04	; 4
    31c6:	6f 9f       	mul	r22, r31
    31c8:	b0 01       	movw	r22, r0
    31ca:	11 24       	eor	r1, r1
    31cc:	e3 70       	andi	r30, 0x03	; 3
    31ce:	e6 2b       	or	r30, r22
    31d0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    31d2:	65 b1       	in	r22, 0x05	; 5
    31d4:	6a 60       	ori	r22, 0x0A	; 10
    31d6:	65 b9       	out	0x05, r22	; 5
    31d8:	65 b1       	in	r22, 0x05	; 5
    31da:	65 7f       	andi	r22, 0xF5	; 245
    31dc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    31de:	65 b1       	in	r22, 0x05	; 5
    31e0:	6a 60       	ori	r22, 0x0A	; 10
    31e2:	65 b9       	out	0x05, r22	; 5
    31e4:	65 b1       	in	r22, 0x05	; 5
    31e6:	65 7f       	andi	r22, 0xF5	; 245
    31e8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    31ea:	f9 01       	movw	r30, r18
    31ec:	bf 96       	adiw	r30, 0x2f	; 47
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    31ee:	64 91       	lpm	r22, Z
    31f0:	eb b1       	in	r30, 0x0b	; 11
    31f2:	f4 e0       	ldi	r31, 0x04	; 4
    31f4:	6f 9f       	mul	r22, r31
    31f6:	b0 01       	movw	r22, r0
    31f8:	11 24       	eor	r1, r1
    31fa:	e3 70       	andi	r30, 0x03	; 3
    31fc:	e6 2b       	or	r30, r22
    31fe:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3200:	65 b1       	in	r22, 0x05	; 5
    3202:	6a 60       	ori	r22, 0x0A	; 10
    3204:	65 b9       	out	0x05, r22	; 5
    3206:	65 b1       	in	r22, 0x05	; 5
    3208:	65 7f       	andi	r22, 0xF5	; 245
    320a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    320c:	65 b1       	in	r22, 0x05	; 5
    320e:	6a 60       	ori	r22, 0x0A	; 10
    3210:	65 b9       	out	0x05, r22	; 5
    3212:	65 b1       	in	r22, 0x05	; 5
    3214:	65 7f       	andi	r22, 0xF5	; 245
    3216:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3218:	f9 01       	movw	r30, r18
    321a:	f0 96       	adiw	r30, 0x30	; 48
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 6
            SET_COLOR(pgm_read_byte(index++));
    321c:	64 91       	lpm	r22, Z
    321e:	eb b1       	in	r30, 0x0b	; 11
    3220:	f4 e0       	ldi	r31, 0x04	; 4
    3222:	6f 9f       	mul	r22, r31
    3224:	b0 01       	movw	r22, r0
    3226:	11 24       	eor	r1, r1
    3228:	e3 70       	andi	r30, 0x03	; 3
    322a:	e6 2b       	or	r30, r22
    322c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    322e:	65 b1       	in	r22, 0x05	; 5
    3230:	6a 60       	ori	r22, 0x0A	; 10
    3232:	65 b9       	out	0x05, r22	; 5
    3234:	65 b1       	in	r22, 0x05	; 5
    3236:	65 7f       	andi	r22, 0xF5	; 245
    3238:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    323a:	65 b1       	in	r22, 0x05	; 5
    323c:	6a 60       	ori	r22, 0x0A	; 10
    323e:	65 b9       	out	0x05, r22	; 5
    3240:	65 b1       	in	r22, 0x05	; 5
    3242:	65 7f       	andi	r22, 0xF5	; 245
    3244:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 6
            SET_COLOR(pgm_read_byte(index++));
    3246:	f9 01       	movw	r30, r18
    3248:	f1 96       	adiw	r30, 0x31	; 49
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    324a:	64 91       	lpm	r22, Z
    324c:	eb b1       	in	r30, 0x0b	; 11
    324e:	f4 e0       	ldi	r31, 0x04	; 4
    3250:	6f 9f       	mul	r22, r31
    3252:	b0 01       	movw	r22, r0
    3254:	11 24       	eor	r1, r1
    3256:	e3 70       	andi	r30, 0x03	; 3
    3258:	e6 2b       	or	r30, r22
    325a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    325c:	65 b1       	in	r22, 0x05	; 5
    325e:	6a 60       	ori	r22, 0x0A	; 10
    3260:	65 b9       	out	0x05, r22	; 5
    3262:	65 b1       	in	r22, 0x05	; 5
    3264:	65 7f       	andi	r22, 0xF5	; 245
    3266:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3268:	65 b1       	in	r22, 0x05	; 5
    326a:	6a 60       	ori	r22, 0x0A	; 10
    326c:	65 b9       	out	0x05, r22	; 5
    326e:	65 b1       	in	r22, 0x05	; 5
    3270:	65 7f       	andi	r22, 0xF5	; 245
    3272:	65 b9       	out	0x05, r22	; 5

            // chip 6
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3274:	f9 01       	movw	r30, r18
    3276:	f2 96       	adiw	r30, 0x32	; 50
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3278:	64 91       	lpm	r22, Z
    327a:	eb b1       	in	r30, 0x0b	; 11
    327c:	f4 e0       	ldi	r31, 0x04	; 4
    327e:	6f 9f       	mul	r22, r31
    3280:	b0 01       	movw	r22, r0
    3282:	11 24       	eor	r1, r1
    3284:	e3 70       	andi	r30, 0x03	; 3
    3286:	e6 2b       	or	r30, r22
    3288:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    328a:	65 b1       	in	r22, 0x05	; 5
    328c:	6a 60       	ori	r22, 0x0A	; 10
    328e:	65 b9       	out	0x05, r22	; 5
    3290:	65 b1       	in	r22, 0x05	; 5
    3292:	65 7f       	andi	r22, 0xF5	; 245
    3294:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3296:	65 b1       	in	r22, 0x05	; 5
    3298:	6a 60       	ori	r22, 0x0A	; 10
    329a:	65 b9       	out	0x05, r22	; 5
    329c:	65 b1       	in	r22, 0x05	; 5
    329e:	65 7f       	andi	r22, 0xF5	; 245
    32a0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    32a2:	f9 01       	movw	r30, r18
    32a4:	f3 96       	adiw	r30, 0x33	; 51
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    32a6:	64 91       	lpm	r22, Z
    32a8:	eb b1       	in	r30, 0x0b	; 11
    32aa:	f4 e0       	ldi	r31, 0x04	; 4
    32ac:	6f 9f       	mul	r22, r31
    32ae:	b0 01       	movw	r22, r0
    32b0:	11 24       	eor	r1, r1
    32b2:	e3 70       	andi	r30, 0x03	; 3
    32b4:	e6 2b       	or	r30, r22
    32b6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    32b8:	65 b1       	in	r22, 0x05	; 5
    32ba:	6a 60       	ori	r22, 0x0A	; 10
    32bc:	65 b9       	out	0x05, r22	; 5
    32be:	65 b1       	in	r22, 0x05	; 5
    32c0:	65 7f       	andi	r22, 0xF5	; 245
    32c2:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    32c4:	65 b1       	in	r22, 0x05	; 5
    32c6:	6a 60       	ori	r22, 0x0A	; 10
    32c8:	65 b9       	out	0x05, r22	; 5
    32ca:	65 b1       	in	r22, 0x05	; 5
    32cc:	65 7f       	andi	r22, 0xF5	; 245
    32ce:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    32d0:	f9 01       	movw	r30, r18
    32d2:	f4 96       	adiw	r30, 0x34	; 52
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    32d4:	64 91       	lpm	r22, Z
    32d6:	eb b1       	in	r30, 0x0b	; 11
    32d8:	f4 e0       	ldi	r31, 0x04	; 4
    32da:	6f 9f       	mul	r22, r31
    32dc:	b0 01       	movw	r22, r0
    32de:	11 24       	eor	r1, r1
    32e0:	e3 70       	andi	r30, 0x03	; 3
    32e2:	e6 2b       	or	r30, r22
    32e4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    32e6:	65 b1       	in	r22, 0x05	; 5
    32e8:	6a 60       	ori	r22, 0x0A	; 10
    32ea:	65 b9       	out	0x05, r22	; 5
    32ec:	65 b1       	in	r22, 0x05	; 5
    32ee:	65 7f       	andi	r22, 0xF5	; 245
    32f0:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    32f2:	65 b1       	in	r22, 0x05	; 5
    32f4:	6a 60       	ori	r22, 0x0A	; 10
    32f6:	65 b9       	out	0x05, r22	; 5
    32f8:	65 b1       	in	r22, 0x05	; 5
    32fa:	65 7f       	andi	r22, 0xF5	; 245
    32fc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    32fe:	f9 01       	movw	r30, r18
    3300:	f5 96       	adiw	r30, 0x35	; 53
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3302:	64 91       	lpm	r22, Z
    3304:	eb b1       	in	r30, 0x0b	; 11
    3306:	f4 e0       	ldi	r31, 0x04	; 4
    3308:	6f 9f       	mul	r22, r31
    330a:	b0 01       	movw	r22, r0
    330c:	11 24       	eor	r1, r1
    330e:	e3 70       	andi	r30, 0x03	; 3
    3310:	e6 2b       	or	r30, r22
    3312:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3314:	65 b1       	in	r22, 0x05	; 5
    3316:	6a 60       	ori	r22, 0x0A	; 10
    3318:	65 b9       	out	0x05, r22	; 5
    331a:	65 b1       	in	r22, 0x05	; 5
    331c:	65 7f       	andi	r22, 0xF5	; 245
    331e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3320:	65 b1       	in	r22, 0x05	; 5
    3322:	6a 60       	ori	r22, 0x0A	; 10
    3324:	65 b9       	out	0x05, r22	; 5
    3326:	65 b1       	in	r22, 0x05	; 5
    3328:	65 7f       	andi	r22, 0xF5	; 245
    332a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    332c:	f9 01       	movw	r30, r18
    332e:	f6 96       	adiw	r30, 0x36	; 54
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3330:	64 91       	lpm	r22, Z
    3332:	eb b1       	in	r30, 0x0b	; 11
    3334:	f4 e0       	ldi	r31, 0x04	; 4
    3336:	6f 9f       	mul	r22, r31
    3338:	b0 01       	movw	r22, r0
    333a:	11 24       	eor	r1, r1
    333c:	e3 70       	andi	r30, 0x03	; 3
    333e:	e6 2b       	or	r30, r22
    3340:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3342:	65 b1       	in	r22, 0x05	; 5
    3344:	6a 60       	ori	r22, 0x0A	; 10
    3346:	65 b9       	out	0x05, r22	; 5
    3348:	65 b1       	in	r22, 0x05	; 5
    334a:	65 7f       	andi	r22, 0xF5	; 245
    334c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    334e:	65 b1       	in	r22, 0x05	; 5
    3350:	6a 60       	ori	r22, 0x0A	; 10
    3352:	65 b9       	out	0x05, r22	; 5
    3354:	65 b1       	in	r22, 0x05	; 5
    3356:	65 7f       	andi	r22, 0xF5	; 245
    3358:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    335a:	f9 01       	movw	r30, r18
    335c:	f7 96       	adiw	r30, 0x37	; 55
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    335e:	64 91       	lpm	r22, Z
    3360:	eb b1       	in	r30, 0x0b	; 11
    3362:	f4 e0       	ldi	r31, 0x04	; 4
    3364:	6f 9f       	mul	r22, r31
    3366:	b0 01       	movw	r22, r0
    3368:	11 24       	eor	r1, r1
    336a:	e3 70       	andi	r30, 0x03	; 3
    336c:	e6 2b       	or	r30, r22
    336e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3370:	65 b1       	in	r22, 0x05	; 5
    3372:	6a 60       	ori	r22, 0x0A	; 10
    3374:	65 b9       	out	0x05, r22	; 5
    3376:	65 b1       	in	r22, 0x05	; 5
    3378:	65 7f       	andi	r22, 0xF5	; 245
    337a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    337c:	65 b1       	in	r22, 0x05	; 5
    337e:	6a 60       	ori	r22, 0x0A	; 10
    3380:	65 b9       	out	0x05, r22	; 5
    3382:	65 b1       	in	r22, 0x05	; 5
    3384:	65 7f       	andi	r22, 0xF5	; 245
    3386:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3388:	f9 01       	movw	r30, r18
    338a:	f8 96       	adiw	r30, 0x38	; 56
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            SET_COLOR(pgm_read_byte(index++));
    338c:	64 91       	lpm	r22, Z
    338e:	eb b1       	in	r30, 0x0b	; 11
    3390:	f4 e0       	ldi	r31, 0x04	; 4
    3392:	6f 9f       	mul	r22, r31
    3394:	b0 01       	movw	r22, r0
    3396:	11 24       	eor	r1, r1
    3398:	e3 70       	andi	r30, 0x03	; 3
    339a:	e6 2b       	or	r30, r22
    339c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    339e:	65 b1       	in	r22, 0x05	; 5
    33a0:	6a 60       	ori	r22, 0x0A	; 10
    33a2:	65 b9       	out	0x05, r22	; 5
    33a4:	65 b1       	in	r22, 0x05	; 5
    33a6:	65 7f       	andi	r22, 0xF5	; 245
    33a8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    33aa:	65 b1       	in	r22, 0x05	; 5
    33ac:	6a 60       	ori	r22, 0x0A	; 10
    33ae:	65 b9       	out	0x05, r22	; 5
    33b0:	65 b1       	in	r22, 0x05	; 5
    33b2:	65 7f       	andi	r22, 0xF5	; 245
    33b4:	65 b9       	out	0x05, r22	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            SET_COLOR(pgm_read_byte(index++));
    33b6:	f9 01       	movw	r30, r18
    33b8:	f9 96       	adiw	r30, 0x39	; 57
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    33ba:	64 91       	lpm	r22, Z
    33bc:	eb b1       	in	r30, 0x0b	; 11
    33be:	f4 e0       	ldi	r31, 0x04	; 4
    33c0:	6f 9f       	mul	r22, r31
    33c2:	b0 01       	movw	r22, r0
    33c4:	11 24       	eor	r1, r1
    33c6:	e3 70       	andi	r30, 0x03	; 3
    33c8:	e6 2b       	or	r30, r22
    33ca:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    33cc:	65 b1       	in	r22, 0x05	; 5
    33ce:	6a 60       	ori	r22, 0x0A	; 10
    33d0:	65 b9       	out	0x05, r22	; 5
    33d2:	65 b1       	in	r22, 0x05	; 5
    33d4:	65 7f       	andi	r22, 0xF5	; 245
    33d6:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    33d8:	65 b1       	in	r22, 0x05	; 5
    33da:	6a 60       	ori	r22, 0x0A	; 10
    33dc:	65 b9       	out	0x05, r22	; 5
    33de:	65 b1       	in	r22, 0x05	; 5
    33e0:	65 7f       	andi	r22, 0xF5	; 245
    33e2:	65 b9       	out	0x05, r22	; 5

            // chip 7
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    33e4:	f9 01       	movw	r30, r18
    33e6:	fa 96       	adiw	r30, 0x3a	; 58
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    33e8:	64 91       	lpm	r22, Z
    33ea:	eb b1       	in	r30, 0x0b	; 11
    33ec:	f4 e0       	ldi	r31, 0x04	; 4
    33ee:	6f 9f       	mul	r22, r31
    33f0:	b0 01       	movw	r22, r0
    33f2:	11 24       	eor	r1, r1
    33f4:	e3 70       	andi	r30, 0x03	; 3
    33f6:	e6 2b       	or	r30, r22
    33f8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    33fa:	65 b1       	in	r22, 0x05	; 5
    33fc:	6a 60       	ori	r22, 0x0A	; 10
    33fe:	65 b9       	out	0x05, r22	; 5
    3400:	65 b1       	in	r22, 0x05	; 5
    3402:	65 7f       	andi	r22, 0xF5	; 245
    3404:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3406:	65 b1       	in	r22, 0x05	; 5
    3408:	6a 60       	ori	r22, 0x0A	; 10
    340a:	65 b9       	out	0x05, r22	; 5
    340c:	65 b1       	in	r22, 0x05	; 5
    340e:	65 7f       	andi	r22, 0xF5	; 245
    3410:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3412:	f9 01       	movw	r30, r18
    3414:	fb 96       	adiw	r30, 0x3b	; 59
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3416:	64 91       	lpm	r22, Z
    3418:	eb b1       	in	r30, 0x0b	; 11
    341a:	f4 e0       	ldi	r31, 0x04	; 4
    341c:	6f 9f       	mul	r22, r31
    341e:	b0 01       	movw	r22, r0
    3420:	11 24       	eor	r1, r1
    3422:	e3 70       	andi	r30, 0x03	; 3
    3424:	e6 2b       	or	r30, r22
    3426:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3428:	65 b1       	in	r22, 0x05	; 5
    342a:	6a 60       	ori	r22, 0x0A	; 10
    342c:	65 b9       	out	0x05, r22	; 5
    342e:	65 b1       	in	r22, 0x05	; 5
    3430:	65 7f       	andi	r22, 0xF5	; 245
    3432:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3434:	65 b1       	in	r22, 0x05	; 5
    3436:	6a 60       	ori	r22, 0x0A	; 10
    3438:	65 b9       	out	0x05, r22	; 5
    343a:	65 b1       	in	r22, 0x05	; 5
    343c:	65 7f       	andi	r22, 0xF5	; 245
    343e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3440:	f9 01       	movw	r30, r18
    3442:	fc 96       	adiw	r30, 0x3c	; 60
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3444:	64 91       	lpm	r22, Z
    3446:	eb b1       	in	r30, 0x0b	; 11
    3448:	f4 e0       	ldi	r31, 0x04	; 4
    344a:	6f 9f       	mul	r22, r31
    344c:	b0 01       	movw	r22, r0
    344e:	11 24       	eor	r1, r1
    3450:	e3 70       	andi	r30, 0x03	; 3
    3452:	e6 2b       	or	r30, r22
    3454:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3456:	65 b1       	in	r22, 0x05	; 5
    3458:	6a 60       	ori	r22, 0x0A	; 10
    345a:	65 b9       	out	0x05, r22	; 5
    345c:	65 b1       	in	r22, 0x05	; 5
    345e:	65 7f       	andi	r22, 0xF5	; 245
    3460:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3462:	65 b1       	in	r22, 0x05	; 5
    3464:	6a 60       	ori	r22, 0x0A	; 10
    3466:	65 b9       	out	0x05, r22	; 5
    3468:	65 b1       	in	r22, 0x05	; 5
    346a:	65 7f       	andi	r22, 0xF5	; 245
    346c:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    346e:	f9 01       	movw	r30, r18
    3470:	fd 96       	adiw	r30, 0x3d	; 61
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3472:	64 91       	lpm	r22, Z
    3474:	eb b1       	in	r30, 0x0b	; 11
    3476:	f4 e0       	ldi	r31, 0x04	; 4
    3478:	6f 9f       	mul	r22, r31
    347a:	b0 01       	movw	r22, r0
    347c:	11 24       	eor	r1, r1
    347e:	e3 70       	andi	r30, 0x03	; 3
    3480:	e6 2b       	or	r30, r22
    3482:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3484:	65 b1       	in	r22, 0x05	; 5
    3486:	6a 60       	ori	r22, 0x0A	; 10
    3488:	65 b9       	out	0x05, r22	; 5
    348a:	65 b1       	in	r22, 0x05	; 5
    348c:	65 7f       	andi	r22, 0xF5	; 245
    348e:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    3490:	65 b1       	in	r22, 0x05	; 5
    3492:	6a 60       	ori	r22, 0x0A	; 10
    3494:	65 b9       	out	0x05, r22	; 5
    3496:	65 b1       	in	r22, 0x05	; 5
    3498:	65 7f       	andi	r22, 0xF5	; 245
    349a:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    349c:	f9 01       	movw	r30, r18
    349e:	fe 96       	adiw	r30, 0x3e	; 62
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    34a0:	64 91       	lpm	r22, Z
    34a2:	eb b1       	in	r30, 0x0b	; 11
    34a4:	f4 e0       	ldi	r31, 0x04	; 4
    34a6:	6f 9f       	mul	r22, r31
    34a8:	b0 01       	movw	r22, r0
    34aa:	11 24       	eor	r1, r1
    34ac:	e3 70       	andi	r30, 0x03	; 3
    34ae:	e6 2b       	or	r30, r22
    34b0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    34b2:	65 b1       	in	r22, 0x05	; 5
    34b4:	6a 60       	ori	r22, 0x0A	; 10
    34b6:	65 b9       	out	0x05, r22	; 5
    34b8:	65 b1       	in	r22, 0x05	; 5
    34ba:	65 7f       	andi	r22, 0xF5	; 245
    34bc:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
    34be:	65 b1       	in	r22, 0x05	; 5
    34c0:	6a 60       	ori	r22, 0x0A	; 10
    34c2:	65 b9       	out	0x05, r22	; 5
    34c4:	65 b1       	in	r22, 0x05	; 5
    34c6:	65 7f       	andi	r22, 0xF5	; 245
    34c8:	65 b9       	out	0x05, r22	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    34ca:	f9 01       	movw	r30, r18
    34cc:	ff 96       	adiw	r30, 0x3f	; 63
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    34ce:	e4 91       	lpm	r30, Z
    34d0:	2b b1       	in	r18, 0x0b	; 11
    34d2:	34 e0       	ldi	r19, 0x04	; 4
    34d4:	e3 9f       	mul	r30, r19
    34d6:	f0 01       	movw	r30, r0
    34d8:	11 24       	eor	r1, r1
    34da:	23 70       	andi	r18, 0x03	; 3
    34dc:	e2 2b       	or	r30, r18
    34de:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    34e0:	25 b1       	in	r18, 0x05	; 5
    34e2:	2a 60       	ori	r18, 0x0A	; 10
    34e4:	25 b9       	out	0x05, r18	; 5
    34e6:	25 b1       	in	r18, 0x05	; 5
    34e8:	25 7f       	andi	r18, 0xF5	; 245
    34ea:	25 b9       	out	0x05, r18	; 5

            // shift data into buffers
            HIGH_LAT;
    34ec:	2a 9a       	sbi	0x05, 2	; 5
            PWCLK_GCLK;
    34ee:	25 b1       	in	r18, 0x05	; 5
    34f0:	2a 60       	ori	r18, 0x0A	; 10
    34f2:	25 b9       	out	0x05, r18	; 5
    34f4:	25 b1       	in	r18, 0x05	; 5
    34f6:	25 7f       	andi	r18, 0xF5	; 245
    34f8:	25 b9       	out	0x05, r18	; 5
            CLEAR_LAT;
    34fa:	2a 98       	cbi	0x05, 2	; 5

#pragma endregion // LSB

            index = ((y & ~1) << 5) + (PANEL_BUFFERSIZE * 3 / 4); // advance index to next section
    34fc:	94 5f       	subi	r25, 0xF4	; 244

#pragma region LLSB
            // chip 0
            SET_COLOR(pgm_read_byte(index++));
    34fe:	fc 01       	movw	r30, r24
    3500:	64 91       	lpm	r22, Z
    3502:	2b b1       	in	r18, 0x0b	; 11
    3504:	f4 e0       	ldi	r31, 0x04	; 4
    3506:	6f 9f       	mul	r22, r31
    3508:	b0 01       	movw	r22, r0
    350a:	11 24       	eor	r1, r1
    350c:	23 70       	andi	r18, 0x03	; 3
    350e:	26 2b       	or	r18, r22
    3510:	2b b9       	out	0x0b, r18	; 11
            PWCLK_GCLK;
    3512:	25 b1       	in	r18, 0x05	; 5
    3514:	2a 60       	ori	r18, 0x0A	; 10
    3516:	25 b9       	out	0x05, r18	; 5
    3518:	25 b1       	in	r18, 0x05	; 5
    351a:	25 7f       	andi	r18, 0xF5	; 245
    351c:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    351e:	25 b1       	in	r18, 0x05	; 5
    3520:	2a 60       	ori	r18, 0x0A	; 10
    3522:	25 b9       	out	0x05, r18	; 5
    3524:	25 b1       	in	r18, 0x05	; 5
    3526:	25 7f       	andi	r18, 0xF5	; 245
    3528:	25 b9       	out	0x05, r18	; 5

            index = ((y & ~1) << 5) + (PANEL_BUFFERSIZE * 3 / 4); // advance index to next section

#pragma region LLSB
            // chip 0
            SET_COLOR(pgm_read_byte(index++));
    352a:	fc 01       	movw	r30, r24
    352c:	31 96       	adiw	r30, 0x01	; 1
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    352e:	24 91       	lpm	r18, Z
    3530:	eb b1       	in	r30, 0x0b	; 11
    3532:	64 e0       	ldi	r22, 0x04	; 4
    3534:	26 9f       	mul	r18, r22
    3536:	90 01       	movw	r18, r0
    3538:	11 24       	eor	r1, r1
    353a:	e3 70       	andi	r30, 0x03	; 3
    353c:	e2 2b       	or	r30, r18
    353e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3540:	25 b1       	in	r18, 0x05	; 5
    3542:	2a 60       	ori	r18, 0x0A	; 10
    3544:	25 b9       	out	0x05, r18	; 5
    3546:	25 b1       	in	r18, 0x05	; 5
    3548:	25 7f       	andi	r18, 0xF5	; 245
    354a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    354c:	25 b1       	in	r18, 0x05	; 5
    354e:	2a 60       	ori	r18, 0x0A	; 10
    3550:	25 b9       	out	0x05, r18	; 5
    3552:	25 b1       	in	r18, 0x05	; 5
    3554:	25 7f       	andi	r18, 0xF5	; 245
    3556:	25 b9       	out	0x05, r18	; 5
#pragma region LLSB
            // chip 0
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3558:	fc 01       	movw	r30, r24
    355a:	32 96       	adiw	r30, 0x02	; 2
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    355c:	24 91       	lpm	r18, Z
    355e:	eb b1       	in	r30, 0x0b	; 11
    3560:	74 e0       	ldi	r23, 0x04	; 4
    3562:	27 9f       	mul	r18, r23
    3564:	90 01       	movw	r18, r0
    3566:	11 24       	eor	r1, r1
    3568:	e3 70       	andi	r30, 0x03	; 3
    356a:	e2 2b       	or	r30, r18
    356c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    356e:	25 b1       	in	r18, 0x05	; 5
    3570:	2a 60       	ori	r18, 0x0A	; 10
    3572:	25 b9       	out	0x05, r18	; 5
    3574:	25 b1       	in	r18, 0x05	; 5
    3576:	25 7f       	andi	r18, 0xF5	; 245
    3578:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    357a:	25 b1       	in	r18, 0x05	; 5
    357c:	2a 60       	ori	r18, 0x0A	; 10
    357e:	25 b9       	out	0x05, r18	; 5
    3580:	25 b1       	in	r18, 0x05	; 5
    3582:	25 7f       	andi	r18, 0xF5	; 245
    3584:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3586:	fc 01       	movw	r30, r24
    3588:	33 96       	adiw	r30, 0x03	; 3
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    358a:	24 91       	lpm	r18, Z
    358c:	eb b1       	in	r30, 0x0b	; 11
    358e:	f4 e0       	ldi	r31, 0x04	; 4
    3590:	2f 9f       	mul	r18, r31
    3592:	90 01       	movw	r18, r0
    3594:	11 24       	eor	r1, r1
    3596:	e3 70       	andi	r30, 0x03	; 3
    3598:	e2 2b       	or	r30, r18
    359a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    359c:	25 b1       	in	r18, 0x05	; 5
    359e:	2a 60       	ori	r18, 0x0A	; 10
    35a0:	25 b9       	out	0x05, r18	; 5
    35a2:	25 b1       	in	r18, 0x05	; 5
    35a4:	25 7f       	andi	r18, 0xF5	; 245
    35a6:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    35a8:	25 b1       	in	r18, 0x05	; 5
    35aa:	2a 60       	ori	r18, 0x0A	; 10
    35ac:	25 b9       	out	0x05, r18	; 5
    35ae:	25 b1       	in	r18, 0x05	; 5
    35b0:	25 7f       	andi	r18, 0xF5	; 245
    35b2:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    35b4:	fc 01       	movw	r30, r24
    35b6:	34 96       	adiw	r30, 0x04	; 4
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    35b8:	24 91       	lpm	r18, Z
    35ba:	eb b1       	in	r30, 0x0b	; 11
    35bc:	64 e0       	ldi	r22, 0x04	; 4
    35be:	26 9f       	mul	r18, r22
    35c0:	90 01       	movw	r18, r0
    35c2:	11 24       	eor	r1, r1
    35c4:	e3 70       	andi	r30, 0x03	; 3
    35c6:	e2 2b       	or	r30, r18
    35c8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    35ca:	25 b1       	in	r18, 0x05	; 5
    35cc:	2a 60       	ori	r18, 0x0A	; 10
    35ce:	25 b9       	out	0x05, r18	; 5
    35d0:	25 b1       	in	r18, 0x05	; 5
    35d2:	25 7f       	andi	r18, 0xF5	; 245
    35d4:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    35d6:	25 b1       	in	r18, 0x05	; 5
    35d8:	2a 60       	ori	r18, 0x0A	; 10
    35da:	25 b9       	out	0x05, r18	; 5
    35dc:	25 b1       	in	r18, 0x05	; 5
    35de:	25 7f       	andi	r18, 0xF5	; 245
    35e0:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    35e2:	fc 01       	movw	r30, r24
    35e4:	35 96       	adiw	r30, 0x05	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    35e6:	24 91       	lpm	r18, Z
    35e8:	eb b1       	in	r30, 0x0b	; 11
    35ea:	74 e0       	ldi	r23, 0x04	; 4
    35ec:	27 9f       	mul	r18, r23
    35ee:	90 01       	movw	r18, r0
    35f0:	11 24       	eor	r1, r1
    35f2:	e3 70       	andi	r30, 0x03	; 3
    35f4:	e2 2b       	or	r30, r18
    35f6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    35f8:	25 b1       	in	r18, 0x05	; 5
    35fa:	2a 60       	ori	r18, 0x0A	; 10
    35fc:	25 b9       	out	0x05, r18	; 5
    35fe:	25 b1       	in	r18, 0x05	; 5
    3600:	25 7f       	andi	r18, 0xF5	; 245
    3602:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3604:	25 b1       	in	r18, 0x05	; 5
    3606:	2a 60       	ori	r18, 0x0A	; 10
    3608:	25 b9       	out	0x05, r18	; 5
    360a:	25 b1       	in	r18, 0x05	; 5
    360c:	25 7f       	andi	r18, 0xF5	; 245
    360e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3610:	fc 01       	movw	r30, r24
    3612:	36 96       	adiw	r30, 0x06	; 6
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3614:	24 91       	lpm	r18, Z
    3616:	eb b1       	in	r30, 0x0b	; 11
    3618:	f4 e0       	ldi	r31, 0x04	; 4
    361a:	2f 9f       	mul	r18, r31
    361c:	90 01       	movw	r18, r0
    361e:	11 24       	eor	r1, r1
    3620:	e3 70       	andi	r30, 0x03	; 3
    3622:	e2 2b       	or	r30, r18
    3624:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3626:	25 b1       	in	r18, 0x05	; 5
    3628:	2a 60       	ori	r18, 0x0A	; 10
    362a:	25 b9       	out	0x05, r18	; 5
    362c:	25 b1       	in	r18, 0x05	; 5
    362e:	25 7f       	andi	r18, 0xF5	; 245
    3630:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3632:	25 b1       	in	r18, 0x05	; 5
    3634:	2a 60       	ori	r18, 0x0A	; 10
    3636:	25 b9       	out	0x05, r18	; 5
    3638:	25 b1       	in	r18, 0x05	; 5
    363a:	25 7f       	andi	r18, 0xF5	; 245
    363c:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    363e:	fc 01       	movw	r30, r24
    3640:	37 96       	adiw	r30, 0x07	; 7
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3642:	24 91       	lpm	r18, Z
    3644:	eb b1       	in	r30, 0x0b	; 11
    3646:	64 e0       	ldi	r22, 0x04	; 4
    3648:	26 9f       	mul	r18, r22
    364a:	90 01       	movw	r18, r0
    364c:	11 24       	eor	r1, r1
    364e:	e3 70       	andi	r30, 0x03	; 3
    3650:	e2 2b       	or	r30, r18
    3652:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3654:	25 b1       	in	r18, 0x05	; 5
    3656:	2a 60       	ori	r18, 0x0A	; 10
    3658:	25 b9       	out	0x05, r18	; 5
    365a:	25 b1       	in	r18, 0x05	; 5
    365c:	25 7f       	andi	r18, 0xF5	; 245
    365e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3660:	25 b1       	in	r18, 0x05	; 5
    3662:	2a 60       	ori	r18, 0x0A	; 10
    3664:	25 b9       	out	0x05, r18	; 5
    3666:	25 b1       	in	r18, 0x05	; 5
    3668:	25 7f       	andi	r18, 0xF5	; 245
    366a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    366c:	fc 01       	movw	r30, r24
    366e:	38 96       	adiw	r30, 0x08	; 8
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            SET_COLOR(pgm_read_byte(index++));
    3670:	24 91       	lpm	r18, Z
    3672:	eb b1       	in	r30, 0x0b	; 11
    3674:	74 e0       	ldi	r23, 0x04	; 4
    3676:	27 9f       	mul	r18, r23
    3678:	90 01       	movw	r18, r0
    367a:	11 24       	eor	r1, r1
    367c:	e3 70       	andi	r30, 0x03	; 3
    367e:	e2 2b       	or	r30, r18
    3680:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3682:	25 b1       	in	r18, 0x05	; 5
    3684:	2a 60       	ori	r18, 0x0A	; 10
    3686:	25 b9       	out	0x05, r18	; 5
    3688:	25 b1       	in	r18, 0x05	; 5
    368a:	25 7f       	andi	r18, 0xF5	; 245
    368c:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    368e:	25 b1       	in	r18, 0x05	; 5
    3690:	2a 60       	ori	r18, 0x0A	; 10
    3692:	25 b9       	out	0x05, r18	; 5
    3694:	25 b1       	in	r18, 0x05	; 5
    3696:	25 7f       	andi	r18, 0xF5	; 245
    3698:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            SET_COLOR(pgm_read_byte(index++));
    369a:	fc 01       	movw	r30, r24
    369c:	39 96       	adiw	r30, 0x09	; 9
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    369e:	24 91       	lpm	r18, Z
    36a0:	eb b1       	in	r30, 0x0b	; 11
    36a2:	f4 e0       	ldi	r31, 0x04	; 4
    36a4:	2f 9f       	mul	r18, r31
    36a6:	90 01       	movw	r18, r0
    36a8:	11 24       	eor	r1, r1
    36aa:	e3 70       	andi	r30, 0x03	; 3
    36ac:	e2 2b       	or	r30, r18
    36ae:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    36b0:	25 b1       	in	r18, 0x05	; 5
    36b2:	2a 60       	ori	r18, 0x0A	; 10
    36b4:	25 b9       	out	0x05, r18	; 5
    36b6:	25 b1       	in	r18, 0x05	; 5
    36b8:	25 7f       	andi	r18, 0xF5	; 245
    36ba:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    36bc:	25 b1       	in	r18, 0x05	; 5
    36be:	2a 60       	ori	r18, 0x0A	; 10
    36c0:	25 b9       	out	0x05, r18	; 5
    36c2:	25 b1       	in	r18, 0x05	; 5
    36c4:	25 7f       	andi	r18, 0xF5	; 245
    36c6:	25 b9       	out	0x05, r18	; 5

            // chip 1
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    36c8:	fc 01       	movw	r30, r24
    36ca:	3a 96       	adiw	r30, 0x0a	; 10
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    36cc:	24 91       	lpm	r18, Z
    36ce:	eb b1       	in	r30, 0x0b	; 11
    36d0:	64 e0       	ldi	r22, 0x04	; 4
    36d2:	26 9f       	mul	r18, r22
    36d4:	90 01       	movw	r18, r0
    36d6:	11 24       	eor	r1, r1
    36d8:	e3 70       	andi	r30, 0x03	; 3
    36da:	e2 2b       	or	r30, r18
    36dc:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    36de:	25 b1       	in	r18, 0x05	; 5
    36e0:	2a 60       	ori	r18, 0x0A	; 10
    36e2:	25 b9       	out	0x05, r18	; 5
    36e4:	25 b1       	in	r18, 0x05	; 5
    36e6:	25 7f       	andi	r18, 0xF5	; 245
    36e8:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    36ea:	25 b1       	in	r18, 0x05	; 5
    36ec:	2a 60       	ori	r18, 0x0A	; 10
    36ee:	25 b9       	out	0x05, r18	; 5
    36f0:	25 b1       	in	r18, 0x05	; 5
    36f2:	25 7f       	andi	r18, 0xF5	; 245
    36f4:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    36f6:	fc 01       	movw	r30, r24
    36f8:	3b 96       	adiw	r30, 0x0b	; 11
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    36fa:	24 91       	lpm	r18, Z
    36fc:	eb b1       	in	r30, 0x0b	; 11
    36fe:	74 e0       	ldi	r23, 0x04	; 4
    3700:	27 9f       	mul	r18, r23
    3702:	90 01       	movw	r18, r0
    3704:	11 24       	eor	r1, r1
    3706:	e3 70       	andi	r30, 0x03	; 3
    3708:	e2 2b       	or	r30, r18
    370a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    370c:	25 b1       	in	r18, 0x05	; 5
    370e:	2a 60       	ori	r18, 0x0A	; 10
    3710:	25 b9       	out	0x05, r18	; 5
    3712:	25 b1       	in	r18, 0x05	; 5
    3714:	25 7f       	andi	r18, 0xF5	; 245
    3716:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3718:	25 b1       	in	r18, 0x05	; 5
    371a:	2a 60       	ori	r18, 0x0A	; 10
    371c:	25 b9       	out	0x05, r18	; 5
    371e:	25 b1       	in	r18, 0x05	; 5
    3720:	25 7f       	andi	r18, 0xF5	; 245
    3722:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3724:	fc 01       	movw	r30, r24
    3726:	3c 96       	adiw	r30, 0x0c	; 12
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3728:	24 91       	lpm	r18, Z
    372a:	eb b1       	in	r30, 0x0b	; 11
    372c:	f4 e0       	ldi	r31, 0x04	; 4
    372e:	2f 9f       	mul	r18, r31
    3730:	90 01       	movw	r18, r0
    3732:	11 24       	eor	r1, r1
    3734:	e3 70       	andi	r30, 0x03	; 3
    3736:	e2 2b       	or	r30, r18
    3738:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    373a:	25 b1       	in	r18, 0x05	; 5
    373c:	2a 60       	ori	r18, 0x0A	; 10
    373e:	25 b9       	out	0x05, r18	; 5
    3740:	25 b1       	in	r18, 0x05	; 5
    3742:	25 7f       	andi	r18, 0xF5	; 245
    3744:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3746:	25 b1       	in	r18, 0x05	; 5
    3748:	2a 60       	ori	r18, 0x0A	; 10
    374a:	25 b9       	out	0x05, r18	; 5
    374c:	25 b1       	in	r18, 0x05	; 5
    374e:	25 7f       	andi	r18, 0xF5	; 245
    3750:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3752:	fc 01       	movw	r30, r24
    3754:	3d 96       	adiw	r30, 0x0d	; 13
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3756:	24 91       	lpm	r18, Z
    3758:	eb b1       	in	r30, 0x0b	; 11
    375a:	64 e0       	ldi	r22, 0x04	; 4
    375c:	26 9f       	mul	r18, r22
    375e:	90 01       	movw	r18, r0
    3760:	11 24       	eor	r1, r1
    3762:	e3 70       	andi	r30, 0x03	; 3
    3764:	e2 2b       	or	r30, r18
    3766:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3768:	25 b1       	in	r18, 0x05	; 5
    376a:	2a 60       	ori	r18, 0x0A	; 10
    376c:	25 b9       	out	0x05, r18	; 5
    376e:	25 b1       	in	r18, 0x05	; 5
    3770:	25 7f       	andi	r18, 0xF5	; 245
    3772:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3774:	25 b1       	in	r18, 0x05	; 5
    3776:	2a 60       	ori	r18, 0x0A	; 10
    3778:	25 b9       	out	0x05, r18	; 5
    377a:	25 b1       	in	r18, 0x05	; 5
    377c:	25 7f       	andi	r18, 0xF5	; 245
    377e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3780:	fc 01       	movw	r30, r24
    3782:	3e 96       	adiw	r30, 0x0e	; 14
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3784:	24 91       	lpm	r18, Z
    3786:	eb b1       	in	r30, 0x0b	; 11
    3788:	74 e0       	ldi	r23, 0x04	; 4
    378a:	27 9f       	mul	r18, r23
    378c:	90 01       	movw	r18, r0
    378e:	11 24       	eor	r1, r1
    3790:	e3 70       	andi	r30, 0x03	; 3
    3792:	e2 2b       	or	r30, r18
    3794:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3796:	25 b1       	in	r18, 0x05	; 5
    3798:	2a 60       	ori	r18, 0x0A	; 10
    379a:	25 b9       	out	0x05, r18	; 5
    379c:	25 b1       	in	r18, 0x05	; 5
    379e:	25 7f       	andi	r18, 0xF5	; 245
    37a0:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    37a2:	25 b1       	in	r18, 0x05	; 5
    37a4:	2a 60       	ori	r18, 0x0A	; 10
    37a6:	25 b9       	out	0x05, r18	; 5
    37a8:	25 b1       	in	r18, 0x05	; 5
    37aa:	25 7f       	andi	r18, 0xF5	; 245
    37ac:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    37ae:	fc 01       	movw	r30, r24
    37b0:	3f 96       	adiw	r30, 0x0f	; 15
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    37b2:	24 91       	lpm	r18, Z
    37b4:	eb b1       	in	r30, 0x0b	; 11
    37b6:	f4 e0       	ldi	r31, 0x04	; 4
    37b8:	2f 9f       	mul	r18, r31
    37ba:	90 01       	movw	r18, r0
    37bc:	11 24       	eor	r1, r1
    37be:	e3 70       	andi	r30, 0x03	; 3
    37c0:	e2 2b       	or	r30, r18
    37c2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    37c4:	25 b1       	in	r18, 0x05	; 5
    37c6:	2a 60       	ori	r18, 0x0A	; 10
    37c8:	25 b9       	out	0x05, r18	; 5
    37ca:	25 b1       	in	r18, 0x05	; 5
    37cc:	25 7f       	andi	r18, 0xF5	; 245
    37ce:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    37d0:	25 b1       	in	r18, 0x05	; 5
    37d2:	2a 60       	ori	r18, 0x0A	; 10
    37d4:	25 b9       	out	0x05, r18	; 5
    37d6:	25 b1       	in	r18, 0x05	; 5
    37d8:	25 7f       	andi	r18, 0xF5	; 245
    37da:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    37dc:	fc 01       	movw	r30, r24
    37de:	70 96       	adiw	r30, 0x10	; 16
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
    37e0:	24 91       	lpm	r18, Z
    37e2:	eb b1       	in	r30, 0x0b	; 11
    37e4:	64 e0       	ldi	r22, 0x04	; 4
    37e6:	26 9f       	mul	r18, r22
    37e8:	90 01       	movw	r18, r0
    37ea:	11 24       	eor	r1, r1
    37ec:	e3 70       	andi	r30, 0x03	; 3
    37ee:	e2 2b       	or	r30, r18
    37f0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    37f2:	25 b1       	in	r18, 0x05	; 5
    37f4:	2a 60       	ori	r18, 0x0A	; 10
    37f6:	25 b9       	out	0x05, r18	; 5
    37f8:	25 b1       	in	r18, 0x05	; 5
    37fa:	25 7f       	andi	r18, 0xF5	; 245
    37fc:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    37fe:	25 b1       	in	r18, 0x05	; 5
    3800:	2a 60       	ori	r18, 0x0A	; 10
    3802:	25 b9       	out	0x05, r18	; 5
    3804:	25 b1       	in	r18, 0x05	; 5
    3806:	25 7f       	andi	r18, 0xF5	; 245
    3808:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
    380a:	fc 01       	movw	r30, r24
    380c:	71 96       	adiw	r30, 0x11	; 17
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    380e:	24 91       	lpm	r18, Z
    3810:	eb b1       	in	r30, 0x0b	; 11
    3812:	74 e0       	ldi	r23, 0x04	; 4
    3814:	27 9f       	mul	r18, r23
    3816:	90 01       	movw	r18, r0
    3818:	11 24       	eor	r1, r1
    381a:	e3 70       	andi	r30, 0x03	; 3
    381c:	e2 2b       	or	r30, r18
    381e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3820:	25 b1       	in	r18, 0x05	; 5
    3822:	2a 60       	ori	r18, 0x0A	; 10
    3824:	25 b9       	out	0x05, r18	; 5
    3826:	25 b1       	in	r18, 0x05	; 5
    3828:	25 7f       	andi	r18, 0xF5	; 245
    382a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    382c:	25 b1       	in	r18, 0x05	; 5
    382e:	2a 60       	ori	r18, 0x0A	; 10
    3830:	25 b9       	out	0x05, r18	; 5
    3832:	25 b1       	in	r18, 0x05	; 5
    3834:	25 7f       	andi	r18, 0xF5	; 245
    3836:	25 b9       	out	0x05, r18	; 5

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3838:	fc 01       	movw	r30, r24
    383a:	72 96       	adiw	r30, 0x12	; 18
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    383c:	24 91       	lpm	r18, Z
    383e:	eb b1       	in	r30, 0x0b	; 11
    3840:	f4 e0       	ldi	r31, 0x04	; 4
    3842:	2f 9f       	mul	r18, r31
    3844:	90 01       	movw	r18, r0
    3846:	11 24       	eor	r1, r1
    3848:	e3 70       	andi	r30, 0x03	; 3
    384a:	e2 2b       	or	r30, r18
    384c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    384e:	25 b1       	in	r18, 0x05	; 5
    3850:	2a 60       	ori	r18, 0x0A	; 10
    3852:	25 b9       	out	0x05, r18	; 5
    3854:	25 b1       	in	r18, 0x05	; 5
    3856:	25 7f       	andi	r18, 0xF5	; 245
    3858:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    385a:	25 b1       	in	r18, 0x05	; 5
    385c:	2a 60       	ori	r18, 0x0A	; 10
    385e:	25 b9       	out	0x05, r18	; 5
    3860:	25 b1       	in	r18, 0x05	; 5
    3862:	25 7f       	andi	r18, 0xF5	; 245
    3864:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3866:	fc 01       	movw	r30, r24
    3868:	73 96       	adiw	r30, 0x13	; 19
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    386a:	24 91       	lpm	r18, Z
    386c:	eb b1       	in	r30, 0x0b	; 11
    386e:	64 e0       	ldi	r22, 0x04	; 4
    3870:	26 9f       	mul	r18, r22
    3872:	90 01       	movw	r18, r0
    3874:	11 24       	eor	r1, r1
    3876:	e3 70       	andi	r30, 0x03	; 3
    3878:	e2 2b       	or	r30, r18
    387a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    387c:	25 b1       	in	r18, 0x05	; 5
    387e:	2a 60       	ori	r18, 0x0A	; 10
    3880:	25 b9       	out	0x05, r18	; 5
    3882:	25 b1       	in	r18, 0x05	; 5
    3884:	25 7f       	andi	r18, 0xF5	; 245
    3886:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3888:	25 b1       	in	r18, 0x05	; 5
    388a:	2a 60       	ori	r18, 0x0A	; 10
    388c:	25 b9       	out	0x05, r18	; 5
    388e:	25 b1       	in	r18, 0x05	; 5
    3890:	25 7f       	andi	r18, 0xF5	; 245
    3892:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3894:	fc 01       	movw	r30, r24
    3896:	74 96       	adiw	r30, 0x14	; 20
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3898:	24 91       	lpm	r18, Z
    389a:	eb b1       	in	r30, 0x0b	; 11
    389c:	74 e0       	ldi	r23, 0x04	; 4
    389e:	27 9f       	mul	r18, r23
    38a0:	90 01       	movw	r18, r0
    38a2:	11 24       	eor	r1, r1
    38a4:	e3 70       	andi	r30, 0x03	; 3
    38a6:	e2 2b       	or	r30, r18
    38a8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    38aa:	25 b1       	in	r18, 0x05	; 5
    38ac:	2a 60       	ori	r18, 0x0A	; 10
    38ae:	25 b9       	out	0x05, r18	; 5
    38b0:	25 b1       	in	r18, 0x05	; 5
    38b2:	25 7f       	andi	r18, 0xF5	; 245
    38b4:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    38b6:	25 b1       	in	r18, 0x05	; 5
    38b8:	2a 60       	ori	r18, 0x0A	; 10
    38ba:	25 b9       	out	0x05, r18	; 5
    38bc:	25 b1       	in	r18, 0x05	; 5
    38be:	25 7f       	andi	r18, 0xF5	; 245
    38c0:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    38c2:	fc 01       	movw	r30, r24
    38c4:	75 96       	adiw	r30, 0x15	; 21
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    38c6:	24 91       	lpm	r18, Z
    38c8:	eb b1       	in	r30, 0x0b	; 11
    38ca:	f4 e0       	ldi	r31, 0x04	; 4
    38cc:	2f 9f       	mul	r18, r31
    38ce:	90 01       	movw	r18, r0
    38d0:	11 24       	eor	r1, r1
    38d2:	e3 70       	andi	r30, 0x03	; 3
    38d4:	e2 2b       	or	r30, r18
    38d6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    38d8:	25 b1       	in	r18, 0x05	; 5
    38da:	2a 60       	ori	r18, 0x0A	; 10
    38dc:	25 b9       	out	0x05, r18	; 5
    38de:	25 b1       	in	r18, 0x05	; 5
    38e0:	25 7f       	andi	r18, 0xF5	; 245
    38e2:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    38e4:	25 b1       	in	r18, 0x05	; 5
    38e6:	2a 60       	ori	r18, 0x0A	; 10
    38e8:	25 b9       	out	0x05, r18	; 5
    38ea:	25 b1       	in	r18, 0x05	; 5
    38ec:	25 7f       	andi	r18, 0xF5	; 245
    38ee:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    38f0:	fc 01       	movw	r30, r24
    38f2:	76 96       	adiw	r30, 0x16	; 22
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    38f4:	24 91       	lpm	r18, Z
    38f6:	eb b1       	in	r30, 0x0b	; 11
    38f8:	64 e0       	ldi	r22, 0x04	; 4
    38fa:	26 9f       	mul	r18, r22
    38fc:	90 01       	movw	r18, r0
    38fe:	11 24       	eor	r1, r1
    3900:	e3 70       	andi	r30, 0x03	; 3
    3902:	e2 2b       	or	r30, r18
    3904:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3906:	25 b1       	in	r18, 0x05	; 5
    3908:	2a 60       	ori	r18, 0x0A	; 10
    390a:	25 b9       	out	0x05, r18	; 5
    390c:	25 b1       	in	r18, 0x05	; 5
    390e:	25 7f       	andi	r18, 0xF5	; 245
    3910:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3912:	25 b1       	in	r18, 0x05	; 5
    3914:	2a 60       	ori	r18, 0x0A	; 10
    3916:	25 b9       	out	0x05, r18	; 5
    3918:	25 b1       	in	r18, 0x05	; 5
    391a:	25 7f       	andi	r18, 0xF5	; 245
    391c:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    391e:	fc 01       	movw	r30, r24
    3920:	77 96       	adiw	r30, 0x17	; 23
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3922:	24 91       	lpm	r18, Z
    3924:	eb b1       	in	r30, 0x0b	; 11
    3926:	74 e0       	ldi	r23, 0x04	; 4
    3928:	27 9f       	mul	r18, r23
    392a:	90 01       	movw	r18, r0
    392c:	11 24       	eor	r1, r1
    392e:	e3 70       	andi	r30, 0x03	; 3
    3930:	e2 2b       	or	r30, r18
    3932:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3934:	25 b1       	in	r18, 0x05	; 5
    3936:	2a 60       	ori	r18, 0x0A	; 10
    3938:	25 b9       	out	0x05, r18	; 5
    393a:	25 b1       	in	r18, 0x05	; 5
    393c:	25 7f       	andi	r18, 0xF5	; 245
    393e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3940:	25 b1       	in	r18, 0x05	; 5
    3942:	2a 60       	ori	r18, 0x0A	; 10
    3944:	25 b9       	out	0x05, r18	; 5
    3946:	25 b1       	in	r18, 0x05	; 5
    3948:	25 7f       	andi	r18, 0xF5	; 245
    394a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    394c:	fc 01       	movw	r30, r24
    394e:	78 96       	adiw	r30, 0x18	; 24
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
    3950:	24 91       	lpm	r18, Z
    3952:	eb b1       	in	r30, 0x0b	; 11
    3954:	f4 e0       	ldi	r31, 0x04	; 4
    3956:	2f 9f       	mul	r18, r31
    3958:	90 01       	movw	r18, r0
    395a:	11 24       	eor	r1, r1
    395c:	e3 70       	andi	r30, 0x03	; 3
    395e:	e2 2b       	or	r30, r18
    3960:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3962:	25 b1       	in	r18, 0x05	; 5
    3964:	2a 60       	ori	r18, 0x0A	; 10
    3966:	25 b9       	out	0x05, r18	; 5
    3968:	25 b1       	in	r18, 0x05	; 5
    396a:	25 7f       	andi	r18, 0xF5	; 245
    396c:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    396e:	25 b1       	in	r18, 0x05	; 5
    3970:	2a 60       	ori	r18, 0x0A	; 10
    3972:	25 b9       	out	0x05, r18	; 5
    3974:	25 b1       	in	r18, 0x05	; 5
    3976:	25 7f       	andi	r18, 0xF5	; 245
    3978:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
    397a:	fc 01       	movw	r30, r24
    397c:	79 96       	adiw	r30, 0x19	; 25
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    397e:	24 91       	lpm	r18, Z
    3980:	eb b1       	in	r30, 0x0b	; 11
    3982:	64 e0       	ldi	r22, 0x04	; 4
    3984:	26 9f       	mul	r18, r22
    3986:	90 01       	movw	r18, r0
    3988:	11 24       	eor	r1, r1
    398a:	e3 70       	andi	r30, 0x03	; 3
    398c:	e2 2b       	or	r30, r18
    398e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3990:	25 b1       	in	r18, 0x05	; 5
    3992:	2a 60       	ori	r18, 0x0A	; 10
    3994:	25 b9       	out	0x05, r18	; 5
    3996:	25 b1       	in	r18, 0x05	; 5
    3998:	25 7f       	andi	r18, 0xF5	; 245
    399a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    399c:	25 b1       	in	r18, 0x05	; 5
    399e:	2a 60       	ori	r18, 0x0A	; 10
    39a0:	25 b9       	out	0x05, r18	; 5
    39a2:	25 b1       	in	r18, 0x05	; 5
    39a4:	25 7f       	andi	r18, 0xF5	; 245
    39a6:	25 b9       	out	0x05, r18	; 5

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    39a8:	fc 01       	movw	r30, r24
    39aa:	7a 96       	adiw	r30, 0x1a	; 26
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    39ac:	24 91       	lpm	r18, Z
    39ae:	eb b1       	in	r30, 0x0b	; 11
    39b0:	74 e0       	ldi	r23, 0x04	; 4
    39b2:	27 9f       	mul	r18, r23
    39b4:	90 01       	movw	r18, r0
    39b6:	11 24       	eor	r1, r1
    39b8:	e3 70       	andi	r30, 0x03	; 3
    39ba:	e2 2b       	or	r30, r18
    39bc:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    39be:	25 b1       	in	r18, 0x05	; 5
    39c0:	2a 60       	ori	r18, 0x0A	; 10
    39c2:	25 b9       	out	0x05, r18	; 5
    39c4:	25 b1       	in	r18, 0x05	; 5
    39c6:	25 7f       	andi	r18, 0xF5	; 245
    39c8:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    39ca:	25 b1       	in	r18, 0x05	; 5
    39cc:	2a 60       	ori	r18, 0x0A	; 10
    39ce:	25 b9       	out	0x05, r18	; 5
    39d0:	25 b1       	in	r18, 0x05	; 5
    39d2:	25 7f       	andi	r18, 0xF5	; 245
    39d4:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    39d6:	fc 01       	movw	r30, r24
    39d8:	7b 96       	adiw	r30, 0x1b	; 27
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    39da:	24 91       	lpm	r18, Z
    39dc:	eb b1       	in	r30, 0x0b	; 11
    39de:	f4 e0       	ldi	r31, 0x04	; 4
    39e0:	2f 9f       	mul	r18, r31
    39e2:	90 01       	movw	r18, r0
    39e4:	11 24       	eor	r1, r1
    39e6:	e3 70       	andi	r30, 0x03	; 3
    39e8:	e2 2b       	or	r30, r18
    39ea:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    39ec:	25 b1       	in	r18, 0x05	; 5
    39ee:	2a 60       	ori	r18, 0x0A	; 10
    39f0:	25 b9       	out	0x05, r18	; 5
    39f2:	25 b1       	in	r18, 0x05	; 5
    39f4:	25 7f       	andi	r18, 0xF5	; 245
    39f6:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    39f8:	25 b1       	in	r18, 0x05	; 5
    39fa:	2a 60       	ori	r18, 0x0A	; 10
    39fc:	25 b9       	out	0x05, r18	; 5
    39fe:	25 b1       	in	r18, 0x05	; 5
    3a00:	25 7f       	andi	r18, 0xF5	; 245
    3a02:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3a04:	fc 01       	movw	r30, r24
    3a06:	7c 96       	adiw	r30, 0x1c	; 28
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3a08:	24 91       	lpm	r18, Z
    3a0a:	eb b1       	in	r30, 0x0b	; 11
    3a0c:	64 e0       	ldi	r22, 0x04	; 4
    3a0e:	26 9f       	mul	r18, r22
    3a10:	90 01       	movw	r18, r0
    3a12:	11 24       	eor	r1, r1
    3a14:	e3 70       	andi	r30, 0x03	; 3
    3a16:	e2 2b       	or	r30, r18
    3a18:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3a1a:	25 b1       	in	r18, 0x05	; 5
    3a1c:	2a 60       	ori	r18, 0x0A	; 10
    3a1e:	25 b9       	out	0x05, r18	; 5
    3a20:	25 b1       	in	r18, 0x05	; 5
    3a22:	25 7f       	andi	r18, 0xF5	; 245
    3a24:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3a26:	25 b1       	in	r18, 0x05	; 5
    3a28:	2a 60       	ori	r18, 0x0A	; 10
    3a2a:	25 b9       	out	0x05, r18	; 5
    3a2c:	25 b1       	in	r18, 0x05	; 5
    3a2e:	25 7f       	andi	r18, 0xF5	; 245
    3a30:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3a32:	fc 01       	movw	r30, r24
    3a34:	7d 96       	adiw	r30, 0x1d	; 29
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3a36:	24 91       	lpm	r18, Z
    3a38:	eb b1       	in	r30, 0x0b	; 11
    3a3a:	74 e0       	ldi	r23, 0x04	; 4
    3a3c:	27 9f       	mul	r18, r23
    3a3e:	90 01       	movw	r18, r0
    3a40:	11 24       	eor	r1, r1
    3a42:	e3 70       	andi	r30, 0x03	; 3
    3a44:	e2 2b       	or	r30, r18
    3a46:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3a48:	25 b1       	in	r18, 0x05	; 5
    3a4a:	2a 60       	ori	r18, 0x0A	; 10
    3a4c:	25 b9       	out	0x05, r18	; 5
    3a4e:	25 b1       	in	r18, 0x05	; 5
    3a50:	25 7f       	andi	r18, 0xF5	; 245
    3a52:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3a54:	25 b1       	in	r18, 0x05	; 5
    3a56:	2a 60       	ori	r18, 0x0A	; 10
    3a58:	25 b9       	out	0x05, r18	; 5
    3a5a:	25 b1       	in	r18, 0x05	; 5
    3a5c:	25 7f       	andi	r18, 0xF5	; 245
    3a5e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3a60:	fc 01       	movw	r30, r24
    3a62:	7e 96       	adiw	r30, 0x1e	; 30
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3a64:	24 91       	lpm	r18, Z
    3a66:	eb b1       	in	r30, 0x0b	; 11
    3a68:	f4 e0       	ldi	r31, 0x04	; 4
    3a6a:	2f 9f       	mul	r18, r31
    3a6c:	90 01       	movw	r18, r0
    3a6e:	11 24       	eor	r1, r1
    3a70:	e3 70       	andi	r30, 0x03	; 3
    3a72:	e2 2b       	or	r30, r18
    3a74:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3a76:	25 b1       	in	r18, 0x05	; 5
    3a78:	2a 60       	ori	r18, 0x0A	; 10
    3a7a:	25 b9       	out	0x05, r18	; 5
    3a7c:	25 b1       	in	r18, 0x05	; 5
    3a7e:	25 7f       	andi	r18, 0xF5	; 245
    3a80:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3a82:	25 b1       	in	r18, 0x05	; 5
    3a84:	2a 60       	ori	r18, 0x0A	; 10
    3a86:	25 b9       	out	0x05, r18	; 5
    3a88:	25 b1       	in	r18, 0x05	; 5
    3a8a:	25 7f       	andi	r18, 0xF5	; 245
    3a8c:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3a8e:	fc 01       	movw	r30, r24
    3a90:	7f 96       	adiw	r30, 0x1f	; 31
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3a92:	24 91       	lpm	r18, Z
    3a94:	eb b1       	in	r30, 0x0b	; 11
    3a96:	64 e0       	ldi	r22, 0x04	; 4
    3a98:	26 9f       	mul	r18, r22
    3a9a:	90 01       	movw	r18, r0
    3a9c:	11 24       	eor	r1, r1
    3a9e:	e3 70       	andi	r30, 0x03	; 3
    3aa0:	e2 2b       	or	r30, r18
    3aa2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3aa4:	25 b1       	in	r18, 0x05	; 5
    3aa6:	2a 60       	ori	r18, 0x0A	; 10
    3aa8:	25 b9       	out	0x05, r18	; 5
    3aaa:	25 b1       	in	r18, 0x05	; 5
    3aac:	25 7f       	andi	r18, 0xF5	; 245
    3aae:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3ab0:	25 b1       	in	r18, 0x05	; 5
    3ab2:	2a 60       	ori	r18, 0x0A	; 10
    3ab4:	25 b9       	out	0x05, r18	; 5
    3ab6:	25 b1       	in	r18, 0x05	; 5
    3ab8:	25 7f       	andi	r18, 0xF5	; 245
    3aba:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3abc:	fc 01       	movw	r30, r24
    3abe:	b0 96       	adiw	r30, 0x20	; 32
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
    3ac0:	24 91       	lpm	r18, Z
    3ac2:	eb b1       	in	r30, 0x0b	; 11
    3ac4:	74 e0       	ldi	r23, 0x04	; 4
    3ac6:	27 9f       	mul	r18, r23
    3ac8:	90 01       	movw	r18, r0
    3aca:	11 24       	eor	r1, r1
    3acc:	e3 70       	andi	r30, 0x03	; 3
    3ace:	e2 2b       	or	r30, r18
    3ad0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3ad2:	25 b1       	in	r18, 0x05	; 5
    3ad4:	2a 60       	ori	r18, 0x0A	; 10
    3ad6:	25 b9       	out	0x05, r18	; 5
    3ad8:	25 b1       	in	r18, 0x05	; 5
    3ada:	25 7f       	andi	r18, 0xF5	; 245
    3adc:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3ade:	25 b1       	in	r18, 0x05	; 5
    3ae0:	2a 60       	ori	r18, 0x0A	; 10
    3ae2:	25 b9       	out	0x05, r18	; 5
    3ae4:	25 b1       	in	r18, 0x05	; 5
    3ae6:	25 7f       	andi	r18, 0xF5	; 245
    3ae8:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
    3aea:	fc 01       	movw	r30, r24
    3aec:	b1 96       	adiw	r30, 0x21	; 33
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3aee:	24 91       	lpm	r18, Z
    3af0:	eb b1       	in	r30, 0x0b	; 11
    3af2:	f4 e0       	ldi	r31, 0x04	; 4
    3af4:	2f 9f       	mul	r18, r31
    3af6:	90 01       	movw	r18, r0
    3af8:	11 24       	eor	r1, r1
    3afa:	e3 70       	andi	r30, 0x03	; 3
    3afc:	e2 2b       	or	r30, r18
    3afe:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3b00:	25 b1       	in	r18, 0x05	; 5
    3b02:	2a 60       	ori	r18, 0x0A	; 10
    3b04:	25 b9       	out	0x05, r18	; 5
    3b06:	25 b1       	in	r18, 0x05	; 5
    3b08:	25 7f       	andi	r18, 0xF5	; 245
    3b0a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3b0c:	25 b1       	in	r18, 0x05	; 5
    3b0e:	2a 60       	ori	r18, 0x0A	; 10
    3b10:	25 b9       	out	0x05, r18	; 5
    3b12:	25 b1       	in	r18, 0x05	; 5
    3b14:	25 7f       	andi	r18, 0xF5	; 245
    3b16:	25 b9       	out	0x05, r18	; 5

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3b18:	fc 01       	movw	r30, r24
    3b1a:	b2 96       	adiw	r30, 0x22	; 34
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3b1c:	24 91       	lpm	r18, Z
    3b1e:	eb b1       	in	r30, 0x0b	; 11
    3b20:	64 e0       	ldi	r22, 0x04	; 4
    3b22:	26 9f       	mul	r18, r22
    3b24:	90 01       	movw	r18, r0
    3b26:	11 24       	eor	r1, r1
    3b28:	e3 70       	andi	r30, 0x03	; 3
    3b2a:	e2 2b       	or	r30, r18
    3b2c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3b2e:	25 b1       	in	r18, 0x05	; 5
    3b30:	2a 60       	ori	r18, 0x0A	; 10
    3b32:	25 b9       	out	0x05, r18	; 5
    3b34:	25 b1       	in	r18, 0x05	; 5
    3b36:	25 7f       	andi	r18, 0xF5	; 245
    3b38:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3b3a:	25 b1       	in	r18, 0x05	; 5
    3b3c:	2a 60       	ori	r18, 0x0A	; 10
    3b3e:	25 b9       	out	0x05, r18	; 5
    3b40:	25 b1       	in	r18, 0x05	; 5
    3b42:	25 7f       	andi	r18, 0xF5	; 245
    3b44:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3b46:	fc 01       	movw	r30, r24
    3b48:	b3 96       	adiw	r30, 0x23	; 35
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3b4a:	24 91       	lpm	r18, Z
    3b4c:	eb b1       	in	r30, 0x0b	; 11
    3b4e:	74 e0       	ldi	r23, 0x04	; 4
    3b50:	27 9f       	mul	r18, r23
    3b52:	90 01       	movw	r18, r0
    3b54:	11 24       	eor	r1, r1
    3b56:	e3 70       	andi	r30, 0x03	; 3
    3b58:	e2 2b       	or	r30, r18
    3b5a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3b5c:	25 b1       	in	r18, 0x05	; 5
    3b5e:	2a 60       	ori	r18, 0x0A	; 10
    3b60:	25 b9       	out	0x05, r18	; 5
    3b62:	25 b1       	in	r18, 0x05	; 5
    3b64:	25 7f       	andi	r18, 0xF5	; 245
    3b66:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3b68:	25 b1       	in	r18, 0x05	; 5
    3b6a:	2a 60       	ori	r18, 0x0A	; 10
    3b6c:	25 b9       	out	0x05, r18	; 5
    3b6e:	25 b1       	in	r18, 0x05	; 5
    3b70:	25 7f       	andi	r18, 0xF5	; 245
    3b72:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3b74:	fc 01       	movw	r30, r24
    3b76:	b4 96       	adiw	r30, 0x24	; 36
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3b78:	24 91       	lpm	r18, Z
    3b7a:	eb b1       	in	r30, 0x0b	; 11
    3b7c:	f4 e0       	ldi	r31, 0x04	; 4
    3b7e:	2f 9f       	mul	r18, r31
    3b80:	90 01       	movw	r18, r0
    3b82:	11 24       	eor	r1, r1
    3b84:	e3 70       	andi	r30, 0x03	; 3
    3b86:	e2 2b       	or	r30, r18
    3b88:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3b8a:	25 b1       	in	r18, 0x05	; 5
    3b8c:	2a 60       	ori	r18, 0x0A	; 10
    3b8e:	25 b9       	out	0x05, r18	; 5
    3b90:	25 b1       	in	r18, 0x05	; 5
    3b92:	25 7f       	andi	r18, 0xF5	; 245
    3b94:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3b96:	25 b1       	in	r18, 0x05	; 5
    3b98:	2a 60       	ori	r18, 0x0A	; 10
    3b9a:	25 b9       	out	0x05, r18	; 5
    3b9c:	25 b1       	in	r18, 0x05	; 5
    3b9e:	25 7f       	andi	r18, 0xF5	; 245
    3ba0:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3ba2:	fc 01       	movw	r30, r24
    3ba4:	b5 96       	adiw	r30, 0x25	; 37
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3ba6:	24 91       	lpm	r18, Z
    3ba8:	eb b1       	in	r30, 0x0b	; 11
    3baa:	64 e0       	ldi	r22, 0x04	; 4
    3bac:	26 9f       	mul	r18, r22
    3bae:	90 01       	movw	r18, r0
    3bb0:	11 24       	eor	r1, r1
    3bb2:	e3 70       	andi	r30, 0x03	; 3
    3bb4:	e2 2b       	or	r30, r18
    3bb6:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3bb8:	25 b1       	in	r18, 0x05	; 5
    3bba:	2a 60       	ori	r18, 0x0A	; 10
    3bbc:	25 b9       	out	0x05, r18	; 5
    3bbe:	25 b1       	in	r18, 0x05	; 5
    3bc0:	25 7f       	andi	r18, 0xF5	; 245
    3bc2:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3bc4:	25 b1       	in	r18, 0x05	; 5
    3bc6:	2a 60       	ori	r18, 0x0A	; 10
    3bc8:	25 b9       	out	0x05, r18	; 5
    3bca:	25 b1       	in	r18, 0x05	; 5
    3bcc:	25 7f       	andi	r18, 0xF5	; 245
    3bce:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3bd0:	fc 01       	movw	r30, r24
    3bd2:	b6 96       	adiw	r30, 0x26	; 38
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3bd4:	24 91       	lpm	r18, Z
    3bd6:	eb b1       	in	r30, 0x0b	; 11
    3bd8:	74 e0       	ldi	r23, 0x04	; 4
    3bda:	27 9f       	mul	r18, r23
    3bdc:	90 01       	movw	r18, r0
    3bde:	11 24       	eor	r1, r1
    3be0:	e3 70       	andi	r30, 0x03	; 3
    3be2:	e2 2b       	or	r30, r18
    3be4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3be6:	25 b1       	in	r18, 0x05	; 5
    3be8:	2a 60       	ori	r18, 0x0A	; 10
    3bea:	25 b9       	out	0x05, r18	; 5
    3bec:	25 b1       	in	r18, 0x05	; 5
    3bee:	25 7f       	andi	r18, 0xF5	; 245
    3bf0:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3bf2:	25 b1       	in	r18, 0x05	; 5
    3bf4:	2a 60       	ori	r18, 0x0A	; 10
    3bf6:	25 b9       	out	0x05, r18	; 5
    3bf8:	25 b1       	in	r18, 0x05	; 5
    3bfa:	25 7f       	andi	r18, 0xF5	; 245
    3bfc:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3bfe:	fc 01       	movw	r30, r24
    3c00:	b7 96       	adiw	r30, 0x27	; 39
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3c02:	24 91       	lpm	r18, Z
    3c04:	eb b1       	in	r30, 0x0b	; 11
    3c06:	f4 e0       	ldi	r31, 0x04	; 4
    3c08:	2f 9f       	mul	r18, r31
    3c0a:	90 01       	movw	r18, r0
    3c0c:	11 24       	eor	r1, r1
    3c0e:	e3 70       	andi	r30, 0x03	; 3
    3c10:	e2 2b       	or	r30, r18
    3c12:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3c14:	25 b1       	in	r18, 0x05	; 5
    3c16:	2a 60       	ori	r18, 0x0A	; 10
    3c18:	25 b9       	out	0x05, r18	; 5
    3c1a:	25 b1       	in	r18, 0x05	; 5
    3c1c:	25 7f       	andi	r18, 0xF5	; 245
    3c1e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3c20:	25 b1       	in	r18, 0x05	; 5
    3c22:	2a 60       	ori	r18, 0x0A	; 10
    3c24:	25 b9       	out	0x05, r18	; 5
    3c26:	25 b1       	in	r18, 0x05	; 5
    3c28:	25 7f       	andi	r18, 0xF5	; 245
    3c2a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3c2c:	fc 01       	movw	r30, r24
    3c2e:	b8 96       	adiw	r30, 0x28	; 40
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
    3c30:	24 91       	lpm	r18, Z
    3c32:	eb b1       	in	r30, 0x0b	; 11
    3c34:	64 e0       	ldi	r22, 0x04	; 4
    3c36:	26 9f       	mul	r18, r22
    3c38:	90 01       	movw	r18, r0
    3c3a:	11 24       	eor	r1, r1
    3c3c:	e3 70       	andi	r30, 0x03	; 3
    3c3e:	e2 2b       	or	r30, r18
    3c40:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3c42:	25 b1       	in	r18, 0x05	; 5
    3c44:	2a 60       	ori	r18, 0x0A	; 10
    3c46:	25 b9       	out	0x05, r18	; 5
    3c48:	25 b1       	in	r18, 0x05	; 5
    3c4a:	25 7f       	andi	r18, 0xF5	; 245
    3c4c:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3c4e:	25 b1       	in	r18, 0x05	; 5
    3c50:	2a 60       	ori	r18, 0x0A	; 10
    3c52:	25 b9       	out	0x05, r18	; 5
    3c54:	25 b1       	in	r18, 0x05	; 5
    3c56:	25 7f       	andi	r18, 0xF5	; 245
    3c58:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
    3c5a:	fc 01       	movw	r30, r24
    3c5c:	b9 96       	adiw	r30, 0x29	; 41
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3c5e:	24 91       	lpm	r18, Z
    3c60:	eb b1       	in	r30, 0x0b	; 11
    3c62:	74 e0       	ldi	r23, 0x04	; 4
    3c64:	27 9f       	mul	r18, r23
    3c66:	90 01       	movw	r18, r0
    3c68:	11 24       	eor	r1, r1
    3c6a:	e3 70       	andi	r30, 0x03	; 3
    3c6c:	e2 2b       	or	r30, r18
    3c6e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3c70:	25 b1       	in	r18, 0x05	; 5
    3c72:	2a 60       	ori	r18, 0x0A	; 10
    3c74:	25 b9       	out	0x05, r18	; 5
    3c76:	25 b1       	in	r18, 0x05	; 5
    3c78:	25 7f       	andi	r18, 0xF5	; 245
    3c7a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3c7c:	25 b1       	in	r18, 0x05	; 5
    3c7e:	2a 60       	ori	r18, 0x0A	; 10
    3c80:	25 b9       	out	0x05, r18	; 5
    3c82:	25 b1       	in	r18, 0x05	; 5
    3c84:	25 7f       	andi	r18, 0xF5	; 245
    3c86:	25 b9       	out	0x05, r18	; 5

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3c88:	fc 01       	movw	r30, r24
    3c8a:	ba 96       	adiw	r30, 0x2a	; 42
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3c8c:	24 91       	lpm	r18, Z
    3c8e:	eb b1       	in	r30, 0x0b	; 11
    3c90:	f4 e0       	ldi	r31, 0x04	; 4
    3c92:	2f 9f       	mul	r18, r31
    3c94:	90 01       	movw	r18, r0
    3c96:	11 24       	eor	r1, r1
    3c98:	e3 70       	andi	r30, 0x03	; 3
    3c9a:	e2 2b       	or	r30, r18
    3c9c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3c9e:	25 b1       	in	r18, 0x05	; 5
    3ca0:	2a 60       	ori	r18, 0x0A	; 10
    3ca2:	25 b9       	out	0x05, r18	; 5
    3ca4:	25 b1       	in	r18, 0x05	; 5
    3ca6:	25 7f       	andi	r18, 0xF5	; 245
    3ca8:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3caa:	25 b1       	in	r18, 0x05	; 5
    3cac:	2a 60       	ori	r18, 0x0A	; 10
    3cae:	25 b9       	out	0x05, r18	; 5
    3cb0:	25 b1       	in	r18, 0x05	; 5
    3cb2:	25 7f       	andi	r18, 0xF5	; 245
    3cb4:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3cb6:	fc 01       	movw	r30, r24
    3cb8:	bb 96       	adiw	r30, 0x2b	; 43
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3cba:	24 91       	lpm	r18, Z
    3cbc:	eb b1       	in	r30, 0x0b	; 11
    3cbe:	64 e0       	ldi	r22, 0x04	; 4
    3cc0:	26 9f       	mul	r18, r22
    3cc2:	90 01       	movw	r18, r0
    3cc4:	11 24       	eor	r1, r1
    3cc6:	e3 70       	andi	r30, 0x03	; 3
    3cc8:	e2 2b       	or	r30, r18
    3cca:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3ccc:	25 b1       	in	r18, 0x05	; 5
    3cce:	2a 60       	ori	r18, 0x0A	; 10
    3cd0:	25 b9       	out	0x05, r18	; 5
    3cd2:	25 b1       	in	r18, 0x05	; 5
    3cd4:	25 7f       	andi	r18, 0xF5	; 245
    3cd6:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3cd8:	25 b1       	in	r18, 0x05	; 5
    3cda:	2a 60       	ori	r18, 0x0A	; 10
    3cdc:	25 b9       	out	0x05, r18	; 5
    3cde:	25 b1       	in	r18, 0x05	; 5
    3ce0:	25 7f       	andi	r18, 0xF5	; 245
    3ce2:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3ce4:	fc 01       	movw	r30, r24
    3ce6:	bc 96       	adiw	r30, 0x2c	; 44
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3ce8:	24 91       	lpm	r18, Z
    3cea:	eb b1       	in	r30, 0x0b	; 11
    3cec:	74 e0       	ldi	r23, 0x04	; 4
    3cee:	27 9f       	mul	r18, r23
    3cf0:	90 01       	movw	r18, r0
    3cf2:	11 24       	eor	r1, r1
    3cf4:	e3 70       	andi	r30, 0x03	; 3
    3cf6:	e2 2b       	or	r30, r18
    3cf8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3cfa:	25 b1       	in	r18, 0x05	; 5
    3cfc:	2a 60       	ori	r18, 0x0A	; 10
    3cfe:	25 b9       	out	0x05, r18	; 5
    3d00:	25 b1       	in	r18, 0x05	; 5
    3d02:	25 7f       	andi	r18, 0xF5	; 245
    3d04:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3d06:	25 b1       	in	r18, 0x05	; 5
    3d08:	2a 60       	ori	r18, 0x0A	; 10
    3d0a:	25 b9       	out	0x05, r18	; 5
    3d0c:	25 b1       	in	r18, 0x05	; 5
    3d0e:	25 7f       	andi	r18, 0xF5	; 245
    3d10:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3d12:	fc 01       	movw	r30, r24
    3d14:	bd 96       	adiw	r30, 0x2d	; 45
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3d16:	24 91       	lpm	r18, Z
    3d18:	eb b1       	in	r30, 0x0b	; 11
    3d1a:	f4 e0       	ldi	r31, 0x04	; 4
    3d1c:	2f 9f       	mul	r18, r31
    3d1e:	90 01       	movw	r18, r0
    3d20:	11 24       	eor	r1, r1
    3d22:	e3 70       	andi	r30, 0x03	; 3
    3d24:	e2 2b       	or	r30, r18
    3d26:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3d28:	25 b1       	in	r18, 0x05	; 5
    3d2a:	2a 60       	ori	r18, 0x0A	; 10
    3d2c:	25 b9       	out	0x05, r18	; 5
    3d2e:	25 b1       	in	r18, 0x05	; 5
    3d30:	25 7f       	andi	r18, 0xF5	; 245
    3d32:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3d34:	25 b1       	in	r18, 0x05	; 5
    3d36:	2a 60       	ori	r18, 0x0A	; 10
    3d38:	25 b9       	out	0x05, r18	; 5
    3d3a:	25 b1       	in	r18, 0x05	; 5
    3d3c:	25 7f       	andi	r18, 0xF5	; 245
    3d3e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3d40:	fc 01       	movw	r30, r24
    3d42:	be 96       	adiw	r30, 0x2e	; 46
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3d44:	24 91       	lpm	r18, Z
    3d46:	eb b1       	in	r30, 0x0b	; 11
    3d48:	64 e0       	ldi	r22, 0x04	; 4
    3d4a:	26 9f       	mul	r18, r22
    3d4c:	90 01       	movw	r18, r0
    3d4e:	11 24       	eor	r1, r1
    3d50:	e3 70       	andi	r30, 0x03	; 3
    3d52:	e2 2b       	or	r30, r18
    3d54:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3d56:	25 b1       	in	r18, 0x05	; 5
    3d58:	2a 60       	ori	r18, 0x0A	; 10
    3d5a:	25 b9       	out	0x05, r18	; 5
    3d5c:	25 b1       	in	r18, 0x05	; 5
    3d5e:	25 7f       	andi	r18, 0xF5	; 245
    3d60:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3d62:	25 b1       	in	r18, 0x05	; 5
    3d64:	2a 60       	ori	r18, 0x0A	; 10
    3d66:	25 b9       	out	0x05, r18	; 5
    3d68:	25 b1       	in	r18, 0x05	; 5
    3d6a:	25 7f       	andi	r18, 0xF5	; 245
    3d6c:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3d6e:	fc 01       	movw	r30, r24
    3d70:	bf 96       	adiw	r30, 0x2f	; 47
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3d72:	24 91       	lpm	r18, Z
    3d74:	eb b1       	in	r30, 0x0b	; 11
    3d76:	74 e0       	ldi	r23, 0x04	; 4
    3d78:	27 9f       	mul	r18, r23
    3d7a:	90 01       	movw	r18, r0
    3d7c:	11 24       	eor	r1, r1
    3d7e:	e3 70       	andi	r30, 0x03	; 3
    3d80:	e2 2b       	or	r30, r18
    3d82:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3d84:	25 b1       	in	r18, 0x05	; 5
    3d86:	2a 60       	ori	r18, 0x0A	; 10
    3d88:	25 b9       	out	0x05, r18	; 5
    3d8a:	25 b1       	in	r18, 0x05	; 5
    3d8c:	25 7f       	andi	r18, 0xF5	; 245
    3d8e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3d90:	25 b1       	in	r18, 0x05	; 5
    3d92:	2a 60       	ori	r18, 0x0A	; 10
    3d94:	25 b9       	out	0x05, r18	; 5
    3d96:	25 b1       	in	r18, 0x05	; 5
    3d98:	25 7f       	andi	r18, 0xF5	; 245
    3d9a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3d9c:	fc 01       	movw	r30, r24
    3d9e:	f0 96       	adiw	r30, 0x30	; 48
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 6
            SET_COLOR(pgm_read_byte(index++));
    3da0:	24 91       	lpm	r18, Z
    3da2:	eb b1       	in	r30, 0x0b	; 11
    3da4:	f4 e0       	ldi	r31, 0x04	; 4
    3da6:	2f 9f       	mul	r18, r31
    3da8:	90 01       	movw	r18, r0
    3daa:	11 24       	eor	r1, r1
    3dac:	e3 70       	andi	r30, 0x03	; 3
    3dae:	e2 2b       	or	r30, r18
    3db0:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3db2:	25 b1       	in	r18, 0x05	; 5
    3db4:	2a 60       	ori	r18, 0x0A	; 10
    3db6:	25 b9       	out	0x05, r18	; 5
    3db8:	25 b1       	in	r18, 0x05	; 5
    3dba:	25 7f       	andi	r18, 0xF5	; 245
    3dbc:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3dbe:	25 b1       	in	r18, 0x05	; 5
    3dc0:	2a 60       	ori	r18, 0x0A	; 10
    3dc2:	25 b9       	out	0x05, r18	; 5
    3dc4:	25 b1       	in	r18, 0x05	; 5
    3dc6:	25 7f       	andi	r18, 0xF5	; 245
    3dc8:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 6
            SET_COLOR(pgm_read_byte(index++));
    3dca:	fc 01       	movw	r30, r24
    3dcc:	f1 96       	adiw	r30, 0x31	; 49
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3dce:	24 91       	lpm	r18, Z
    3dd0:	eb b1       	in	r30, 0x0b	; 11
    3dd2:	64 e0       	ldi	r22, 0x04	; 4
    3dd4:	26 9f       	mul	r18, r22
    3dd6:	90 01       	movw	r18, r0
    3dd8:	11 24       	eor	r1, r1
    3dda:	e3 70       	andi	r30, 0x03	; 3
    3ddc:	e2 2b       	or	r30, r18
    3dde:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3de0:	25 b1       	in	r18, 0x05	; 5
    3de2:	2a 60       	ori	r18, 0x0A	; 10
    3de4:	25 b9       	out	0x05, r18	; 5
    3de6:	25 b1       	in	r18, 0x05	; 5
    3de8:	25 7f       	andi	r18, 0xF5	; 245
    3dea:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3dec:	25 b1       	in	r18, 0x05	; 5
    3dee:	2a 60       	ori	r18, 0x0A	; 10
    3df0:	25 b9       	out	0x05, r18	; 5
    3df2:	25 b1       	in	r18, 0x05	; 5
    3df4:	25 7f       	andi	r18, 0xF5	; 245
    3df6:	25 b9       	out	0x05, r18	; 5

            // chip 6
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3df8:	fc 01       	movw	r30, r24
    3dfa:	f2 96       	adiw	r30, 0x32	; 50
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3dfc:	24 91       	lpm	r18, Z
    3dfe:	eb b1       	in	r30, 0x0b	; 11
    3e00:	74 e0       	ldi	r23, 0x04	; 4
    3e02:	27 9f       	mul	r18, r23
    3e04:	90 01       	movw	r18, r0
    3e06:	11 24       	eor	r1, r1
    3e08:	e3 70       	andi	r30, 0x03	; 3
    3e0a:	e2 2b       	or	r30, r18
    3e0c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3e0e:	25 b1       	in	r18, 0x05	; 5
    3e10:	2a 60       	ori	r18, 0x0A	; 10
    3e12:	25 b9       	out	0x05, r18	; 5
    3e14:	25 b1       	in	r18, 0x05	; 5
    3e16:	25 7f       	andi	r18, 0xF5	; 245
    3e18:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3e1a:	25 b1       	in	r18, 0x05	; 5
    3e1c:	2a 60       	ori	r18, 0x0A	; 10
    3e1e:	25 b9       	out	0x05, r18	; 5
    3e20:	25 b1       	in	r18, 0x05	; 5
    3e22:	25 7f       	andi	r18, 0xF5	; 245
    3e24:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3e26:	fc 01       	movw	r30, r24
    3e28:	f3 96       	adiw	r30, 0x33	; 51
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3e2a:	24 91       	lpm	r18, Z
    3e2c:	eb b1       	in	r30, 0x0b	; 11
    3e2e:	f4 e0       	ldi	r31, 0x04	; 4
    3e30:	2f 9f       	mul	r18, r31
    3e32:	90 01       	movw	r18, r0
    3e34:	11 24       	eor	r1, r1
    3e36:	e3 70       	andi	r30, 0x03	; 3
    3e38:	e2 2b       	or	r30, r18
    3e3a:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3e3c:	25 b1       	in	r18, 0x05	; 5
    3e3e:	2a 60       	ori	r18, 0x0A	; 10
    3e40:	25 b9       	out	0x05, r18	; 5
    3e42:	25 b1       	in	r18, 0x05	; 5
    3e44:	25 7f       	andi	r18, 0xF5	; 245
    3e46:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3e48:	25 b1       	in	r18, 0x05	; 5
    3e4a:	2a 60       	ori	r18, 0x0A	; 10
    3e4c:	25 b9       	out	0x05, r18	; 5
    3e4e:	25 b1       	in	r18, 0x05	; 5
    3e50:	25 7f       	andi	r18, 0xF5	; 245
    3e52:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3e54:	fc 01       	movw	r30, r24
    3e56:	f4 96       	adiw	r30, 0x34	; 52
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3e58:	24 91       	lpm	r18, Z
    3e5a:	eb b1       	in	r30, 0x0b	; 11
    3e5c:	64 e0       	ldi	r22, 0x04	; 4
    3e5e:	26 9f       	mul	r18, r22
    3e60:	90 01       	movw	r18, r0
    3e62:	11 24       	eor	r1, r1
    3e64:	e3 70       	andi	r30, 0x03	; 3
    3e66:	e2 2b       	or	r30, r18
    3e68:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3e6a:	25 b1       	in	r18, 0x05	; 5
    3e6c:	2a 60       	ori	r18, 0x0A	; 10
    3e6e:	25 b9       	out	0x05, r18	; 5
    3e70:	25 b1       	in	r18, 0x05	; 5
    3e72:	25 7f       	andi	r18, 0xF5	; 245
    3e74:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3e76:	25 b1       	in	r18, 0x05	; 5
    3e78:	2a 60       	ori	r18, 0x0A	; 10
    3e7a:	25 b9       	out	0x05, r18	; 5
    3e7c:	25 b1       	in	r18, 0x05	; 5
    3e7e:	25 7f       	andi	r18, 0xF5	; 245
    3e80:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3e82:	fc 01       	movw	r30, r24
    3e84:	f5 96       	adiw	r30, 0x35	; 53
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3e86:	24 91       	lpm	r18, Z
    3e88:	eb b1       	in	r30, 0x0b	; 11
    3e8a:	74 e0       	ldi	r23, 0x04	; 4
    3e8c:	27 9f       	mul	r18, r23
    3e8e:	90 01       	movw	r18, r0
    3e90:	11 24       	eor	r1, r1
    3e92:	e3 70       	andi	r30, 0x03	; 3
    3e94:	e2 2b       	or	r30, r18
    3e96:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3e98:	25 b1       	in	r18, 0x05	; 5
    3e9a:	2a 60       	ori	r18, 0x0A	; 10
    3e9c:	25 b9       	out	0x05, r18	; 5
    3e9e:	25 b1       	in	r18, 0x05	; 5
    3ea0:	25 7f       	andi	r18, 0xF5	; 245
    3ea2:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3ea4:	25 b1       	in	r18, 0x05	; 5
    3ea6:	2a 60       	ori	r18, 0x0A	; 10
    3ea8:	25 b9       	out	0x05, r18	; 5
    3eaa:	25 b1       	in	r18, 0x05	; 5
    3eac:	25 7f       	andi	r18, 0xF5	; 245
    3eae:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3eb0:	fc 01       	movw	r30, r24
    3eb2:	f6 96       	adiw	r30, 0x36	; 54
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3eb4:	24 91       	lpm	r18, Z
    3eb6:	eb b1       	in	r30, 0x0b	; 11
    3eb8:	f4 e0       	ldi	r31, 0x04	; 4
    3eba:	2f 9f       	mul	r18, r31
    3ebc:	90 01       	movw	r18, r0
    3ebe:	11 24       	eor	r1, r1
    3ec0:	e3 70       	andi	r30, 0x03	; 3
    3ec2:	e2 2b       	or	r30, r18
    3ec4:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3ec6:	25 b1       	in	r18, 0x05	; 5
    3ec8:	2a 60       	ori	r18, 0x0A	; 10
    3eca:	25 b9       	out	0x05, r18	; 5
    3ecc:	25 b1       	in	r18, 0x05	; 5
    3ece:	25 7f       	andi	r18, 0xF5	; 245
    3ed0:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3ed2:	25 b1       	in	r18, 0x05	; 5
    3ed4:	2a 60       	ori	r18, 0x0A	; 10
    3ed6:	25 b9       	out	0x05, r18	; 5
    3ed8:	25 b1       	in	r18, 0x05	; 5
    3eda:	25 7f       	andi	r18, 0xF5	; 245
    3edc:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3ede:	fc 01       	movw	r30, r24
    3ee0:	f7 96       	adiw	r30, 0x37	; 55
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3ee2:	24 91       	lpm	r18, Z
    3ee4:	eb b1       	in	r30, 0x0b	; 11
    3ee6:	64 e0       	ldi	r22, 0x04	; 4
    3ee8:	26 9f       	mul	r18, r22
    3eea:	90 01       	movw	r18, r0
    3eec:	11 24       	eor	r1, r1
    3eee:	e3 70       	andi	r30, 0x03	; 3
    3ef0:	e2 2b       	or	r30, r18
    3ef2:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3ef4:	25 b1       	in	r18, 0x05	; 5
    3ef6:	2a 60       	ori	r18, 0x0A	; 10
    3ef8:	25 b9       	out	0x05, r18	; 5
    3efa:	25 b1       	in	r18, 0x05	; 5
    3efc:	25 7f       	andi	r18, 0xF5	; 245
    3efe:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3f00:	25 b1       	in	r18, 0x05	; 5
    3f02:	2a 60       	ori	r18, 0x0A	; 10
    3f04:	25 b9       	out	0x05, r18	; 5
    3f06:	25 b1       	in	r18, 0x05	; 5
    3f08:	25 7f       	andi	r18, 0xF5	; 245
    3f0a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3f0c:	fc 01       	movw	r30, r24
    3f0e:	f8 96       	adiw	r30, 0x38	; 56
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            SET_COLOR(pgm_read_byte(index++));
    3f10:	24 91       	lpm	r18, Z
    3f12:	eb b1       	in	r30, 0x0b	; 11
    3f14:	74 e0       	ldi	r23, 0x04	; 4
    3f16:	27 9f       	mul	r18, r23
    3f18:	90 01       	movw	r18, r0
    3f1a:	11 24       	eor	r1, r1
    3f1c:	e3 70       	andi	r30, 0x03	; 3
    3f1e:	e2 2b       	or	r30, r18
    3f20:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3f22:	25 b1       	in	r18, 0x05	; 5
    3f24:	2a 60       	ori	r18, 0x0A	; 10
    3f26:	25 b9       	out	0x05, r18	; 5
    3f28:	25 b1       	in	r18, 0x05	; 5
    3f2a:	25 7f       	andi	r18, 0xF5	; 245
    3f2c:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3f2e:	25 b1       	in	r18, 0x05	; 5
    3f30:	2a 60       	ori	r18, 0x0A	; 10
    3f32:	25 b9       	out	0x05, r18	; 5
    3f34:	25 b1       	in	r18, 0x05	; 5
    3f36:	25 7f       	andi	r18, 0xF5	; 245
    3f38:	25 b9       	out	0x05, r18	; 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            SET_COLOR(pgm_read_byte(index++));
    3f3a:	fc 01       	movw	r30, r24
    3f3c:	f9 96       	adiw	r30, 0x39	; 57
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3f3e:	24 91       	lpm	r18, Z
    3f40:	eb b1       	in	r30, 0x0b	; 11
    3f42:	f4 e0       	ldi	r31, 0x04	; 4
    3f44:	2f 9f       	mul	r18, r31
    3f46:	90 01       	movw	r18, r0
    3f48:	11 24       	eor	r1, r1
    3f4a:	e3 70       	andi	r30, 0x03	; 3
    3f4c:	e2 2b       	or	r30, r18
    3f4e:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3f50:	25 b1       	in	r18, 0x05	; 5
    3f52:	2a 60       	ori	r18, 0x0A	; 10
    3f54:	25 b9       	out	0x05, r18	; 5
    3f56:	25 b1       	in	r18, 0x05	; 5
    3f58:	25 7f       	andi	r18, 0xF5	; 245
    3f5a:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3f5c:	25 b1       	in	r18, 0x05	; 5
    3f5e:	2a 60       	ori	r18, 0x0A	; 10
    3f60:	25 b9       	out	0x05, r18	; 5
    3f62:	25 b1       	in	r18, 0x05	; 5
    3f64:	25 7f       	andi	r18, 0xF5	; 245
    3f66:	25 b9       	out	0x05, r18	; 5

            // chip 7
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3f68:	fc 01       	movw	r30, r24
    3f6a:	fa 96       	adiw	r30, 0x3a	; 58
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3f6c:	24 91       	lpm	r18, Z
    3f6e:	eb b1       	in	r30, 0x0b	; 11
    3f70:	64 e0       	ldi	r22, 0x04	; 4
    3f72:	26 9f       	mul	r18, r22
    3f74:	90 01       	movw	r18, r0
    3f76:	11 24       	eor	r1, r1
    3f78:	e3 70       	andi	r30, 0x03	; 3
    3f7a:	e2 2b       	or	r30, r18
    3f7c:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3f7e:	25 b1       	in	r18, 0x05	; 5
    3f80:	2a 60       	ori	r18, 0x0A	; 10
    3f82:	25 b9       	out	0x05, r18	; 5
    3f84:	25 b1       	in	r18, 0x05	; 5
    3f86:	25 7f       	andi	r18, 0xF5	; 245
    3f88:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3f8a:	25 b1       	in	r18, 0x05	; 5
    3f8c:	2a 60       	ori	r18, 0x0A	; 10
    3f8e:	25 b9       	out	0x05, r18	; 5
    3f90:	25 b1       	in	r18, 0x05	; 5
    3f92:	25 7f       	andi	r18, 0xF5	; 245
    3f94:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3f96:	fc 01       	movw	r30, r24
    3f98:	fb 96       	adiw	r30, 0x3b	; 59
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3f9a:	24 91       	lpm	r18, Z
    3f9c:	eb b1       	in	r30, 0x0b	; 11
    3f9e:	74 e0       	ldi	r23, 0x04	; 4
    3fa0:	27 9f       	mul	r18, r23
    3fa2:	90 01       	movw	r18, r0
    3fa4:	11 24       	eor	r1, r1
    3fa6:	e3 70       	andi	r30, 0x03	; 3
    3fa8:	e2 2b       	or	r30, r18
    3faa:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3fac:	25 b1       	in	r18, 0x05	; 5
    3fae:	2a 60       	ori	r18, 0x0A	; 10
    3fb0:	25 b9       	out	0x05, r18	; 5
    3fb2:	25 b1       	in	r18, 0x05	; 5
    3fb4:	25 7f       	andi	r18, 0xF5	; 245
    3fb6:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3fb8:	25 b1       	in	r18, 0x05	; 5
    3fba:	2a 60       	ori	r18, 0x0A	; 10
    3fbc:	25 b9       	out	0x05, r18	; 5
    3fbe:	25 b1       	in	r18, 0x05	; 5
    3fc0:	25 7f       	andi	r18, 0xF5	; 245
    3fc2:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3fc4:	fc 01       	movw	r30, r24
    3fc6:	fc 96       	adiw	r30, 0x3c	; 60
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3fc8:	24 91       	lpm	r18, Z
    3fca:	eb b1       	in	r30, 0x0b	; 11
    3fcc:	f4 e0       	ldi	r31, 0x04	; 4
    3fce:	2f 9f       	mul	r18, r31
    3fd0:	90 01       	movw	r18, r0
    3fd2:	11 24       	eor	r1, r1
    3fd4:	e3 70       	andi	r30, 0x03	; 3
    3fd6:	e2 2b       	or	r30, r18
    3fd8:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    3fda:	25 b1       	in	r18, 0x05	; 5
    3fdc:	2a 60       	ori	r18, 0x0A	; 10
    3fde:	25 b9       	out	0x05, r18	; 5
    3fe0:	25 b1       	in	r18, 0x05	; 5
    3fe2:	25 7f       	andi	r18, 0xF5	; 245
    3fe4:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    3fe6:	25 b1       	in	r18, 0x05	; 5
    3fe8:	2a 60       	ori	r18, 0x0A	; 10
    3fea:	25 b9       	out	0x05, r18	; 5
    3fec:	25 b1       	in	r18, 0x05	; 5
    3fee:	25 7f       	andi	r18, 0xF5	; 245
    3ff0:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3ff2:	fc 01       	movw	r30, r24
    3ff4:	fd 96       	adiw	r30, 0x3d	; 61
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    3ff6:	24 91       	lpm	r18, Z
    3ff8:	eb b1       	in	r30, 0x0b	; 11
    3ffa:	64 e0       	ldi	r22, 0x04	; 4
    3ffc:	26 9f       	mul	r18, r22
    3ffe:	90 01       	movw	r18, r0
    4000:	11 24       	eor	r1, r1
    4002:	e3 70       	andi	r30, 0x03	; 3
    4004:	e2 2b       	or	r30, r18
    4006:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4008:	25 b1       	in	r18, 0x05	; 5
    400a:	2a 60       	ori	r18, 0x0A	; 10
    400c:	25 b9       	out	0x05, r18	; 5
    400e:	25 b1       	in	r18, 0x05	; 5
    4010:	25 7f       	andi	r18, 0xF5	; 245
    4012:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4014:	25 b1       	in	r18, 0x05	; 5
    4016:	2a 60       	ori	r18, 0x0A	; 10
    4018:	25 b9       	out	0x05, r18	; 5
    401a:	25 b1       	in	r18, 0x05	; 5
    401c:	25 7f       	andi	r18, 0xF5	; 245
    401e:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    4020:	fc 01       	movw	r30, r24
    4022:	fe 96       	adiw	r30, 0x3e	; 62
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    4024:	24 91       	lpm	r18, Z
    4026:	eb b1       	in	r30, 0x0b	; 11
    4028:	74 e0       	ldi	r23, 0x04	; 4
    402a:	27 9f       	mul	r18, r23
    402c:	90 01       	movw	r18, r0
    402e:	11 24       	eor	r1, r1
    4030:	e3 70       	andi	r30, 0x03	; 3
    4032:	e2 2b       	or	r30, r18
    4034:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4036:	25 b1       	in	r18, 0x05	; 5
    4038:	2a 60       	ori	r18, 0x0A	; 10
    403a:	25 b9       	out	0x05, r18	; 5
    403c:	25 b1       	in	r18, 0x05	; 5
    403e:	25 7f       	andi	r18, 0xF5	; 245
    4040:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
    4042:	25 b1       	in	r18, 0x05	; 5
    4044:	2a 60       	ori	r18, 0x0A	; 10
    4046:	25 b9       	out	0x05, r18	; 5
    4048:	25 b1       	in	r18, 0x05	; 5
    404a:	25 7f       	andi	r18, 0xF5	; 245
    404c:	25 b9       	out	0x05, r18	; 5
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    404e:	fc 01       	movw	r30, r24
    4050:	ff 96       	adiw	r30, 0x3f	; 63
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
    4052:	e4 91       	lpm	r30, Z
    4054:	8b b1       	in	r24, 0x0b	; 11
    4056:	94 e0       	ldi	r25, 0x04	; 4
    4058:	e9 9f       	mul	r30, r25
    405a:	f0 01       	movw	r30, r0
    405c:	11 24       	eor	r1, r1
    405e:	83 70       	andi	r24, 0x03	; 3
    4060:	e8 2b       	or	r30, r24
    4062:	eb b9       	out	0x0b, r30	; 11
            PWCLK_GCLK;
    4064:	85 b1       	in	r24, 0x05	; 5
    4066:	8a 60       	ori	r24, 0x0A	; 10
    4068:	85 b9       	out	0x05, r24	; 5
    406a:	85 b1       	in	r24, 0x05	; 5
    406c:	85 7f       	andi	r24, 0xF5	; 245
    406e:	85 b9       	out	0x05, r24	; 5

            // shift data into buffers
            HIGH_LAT;
    4070:	2a 9a       	sbi	0x05, 2	; 5
            PWCLK_GCLK;
    4072:	85 b1       	in	r24, 0x05	; 5
    4074:	8a 60       	ori	r24, 0x0A	; 10
    4076:	85 b9       	out	0x05, r24	; 5
    4078:	85 b1       	in	r24, 0x05	; 5
    407a:	85 7f       	andi	r24, 0xF5	; 245
    407c:	85 b9       	out	0x05, r24	; 5
            CLEAR_LAT;
    407e:	2a 98       	cbi	0x05, 2	; 5

#pragma endregion // LLSB

#pragma region LSB_fake
            SET_COLOR(0);
    4080:	8b b1       	in	r24, 0x0b	; 11
    4082:	83 70       	andi	r24, 0x03	; 3
    4084:	8b b9       	out	0x0b, r24	; 11

            PWCLK_GCLK;
    4086:	85 b1       	in	r24, 0x05	; 5
    4088:	8a 60       	ori	r24, 0x0A	; 10
    408a:	85 b9       	out	0x05, r24	; 5
    408c:	85 b1       	in	r24, 0x05	; 5
    408e:	85 7f       	andi	r24, 0xF5	; 245
    4090:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4092:	85 b1       	in	r24, 0x05	; 5
    4094:	8a 60       	ori	r24, 0x0A	; 10
    4096:	85 b9       	out	0x05, r24	; 5
    4098:	85 b1       	in	r24, 0x05	; 5
    409a:	85 7f       	andi	r24, 0xF5	; 245
    409c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    409e:	85 b1       	in	r24, 0x05	; 5
    40a0:	8a 60       	ori	r24, 0x0A	; 10
    40a2:	85 b9       	out	0x05, r24	; 5
    40a4:	85 b1       	in	r24, 0x05	; 5
    40a6:	85 7f       	andi	r24, 0xF5	; 245
    40a8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    40aa:	85 b1       	in	r24, 0x05	; 5
    40ac:	8a 60       	ori	r24, 0x0A	; 10
    40ae:	85 b9       	out	0x05, r24	; 5
    40b0:	85 b1       	in	r24, 0x05	; 5
    40b2:	85 7f       	andi	r24, 0xF5	; 245
    40b4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    40b6:	85 b1       	in	r24, 0x05	; 5
    40b8:	8a 60       	ori	r24, 0x0A	; 10
    40ba:	85 b9       	out	0x05, r24	; 5
    40bc:	85 b1       	in	r24, 0x05	; 5
    40be:	85 7f       	andi	r24, 0xF5	; 245
    40c0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    40c2:	85 b1       	in	r24, 0x05	; 5
    40c4:	8a 60       	ori	r24, 0x0A	; 10
    40c6:	85 b9       	out	0x05, r24	; 5
    40c8:	85 b1       	in	r24, 0x05	; 5
    40ca:	85 7f       	andi	r24, 0xF5	; 245
    40cc:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    40ce:	85 b1       	in	r24, 0x05	; 5
    40d0:	8a 60       	ori	r24, 0x0A	; 10
    40d2:	85 b9       	out	0x05, r24	; 5
    40d4:	85 b1       	in	r24, 0x05	; 5
    40d6:	85 7f       	andi	r24, 0xF5	; 245
    40d8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    40da:	85 b1       	in	r24, 0x05	; 5
    40dc:	8a 60       	ori	r24, 0x0A	; 10
    40de:	85 b9       	out	0x05, r24	; 5
    40e0:	85 b1       	in	r24, 0x05	; 5
    40e2:	85 7f       	andi	r24, 0xF5	; 245
    40e4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    40e6:	85 b1       	in	r24, 0x05	; 5
    40e8:	8a 60       	ori	r24, 0x0A	; 10
    40ea:	85 b9       	out	0x05, r24	; 5
    40ec:	85 b1       	in	r24, 0x05	; 5
    40ee:	85 7f       	andi	r24, 0xF5	; 245
    40f0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    40f2:	85 b1       	in	r24, 0x05	; 5
    40f4:	8a 60       	ori	r24, 0x0A	; 10
    40f6:	85 b9       	out	0x05, r24	; 5
    40f8:	85 b1       	in	r24, 0x05	; 5
    40fa:	85 7f       	andi	r24, 0xF5	; 245
    40fc:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    40fe:	85 b1       	in	r24, 0x05	; 5
    4100:	8a 60       	ori	r24, 0x0A	; 10
    4102:	85 b9       	out	0x05, r24	; 5
    4104:	85 b1       	in	r24, 0x05	; 5
    4106:	85 7f       	andi	r24, 0xF5	; 245
    4108:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    410a:	85 b1       	in	r24, 0x05	; 5
    410c:	8a 60       	ori	r24, 0x0A	; 10
    410e:	85 b9       	out	0x05, r24	; 5
    4110:	85 b1       	in	r24, 0x05	; 5
    4112:	85 7f       	andi	r24, 0xF5	; 245
    4114:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4116:	85 b1       	in	r24, 0x05	; 5
    4118:	8a 60       	ori	r24, 0x0A	; 10
    411a:	85 b9       	out	0x05, r24	; 5
    411c:	85 b1       	in	r24, 0x05	; 5
    411e:	85 7f       	andi	r24, 0xF5	; 245
    4120:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4122:	85 b1       	in	r24, 0x05	; 5
    4124:	8a 60       	ori	r24, 0x0A	; 10
    4126:	85 b9       	out	0x05, r24	; 5
    4128:	85 b1       	in	r24, 0x05	; 5
    412a:	85 7f       	andi	r24, 0xF5	; 245
    412c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    412e:	85 b1       	in	r24, 0x05	; 5
    4130:	8a 60       	ori	r24, 0x0A	; 10
    4132:	85 b9       	out	0x05, r24	; 5
    4134:	85 b1       	in	r24, 0x05	; 5
    4136:	85 7f       	andi	r24, 0xF5	; 245
    4138:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    413a:	85 b1       	in	r24, 0x05	; 5
    413c:	8a 60       	ori	r24, 0x0A	; 10
    413e:	85 b9       	out	0x05, r24	; 5
    4140:	85 b1       	in	r24, 0x05	; 5
    4142:	85 7f       	andi	r24, 0xF5	; 245
    4144:	85 b9       	out	0x05, r24	; 5

            PWCLK_GCLK;
    4146:	85 b1       	in	r24, 0x05	; 5
    4148:	8a 60       	ori	r24, 0x0A	; 10
    414a:	85 b9       	out	0x05, r24	; 5
    414c:	85 b1       	in	r24, 0x05	; 5
    414e:	85 7f       	andi	r24, 0xF5	; 245
    4150:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4152:	85 b1       	in	r24, 0x05	; 5
    4154:	8a 60       	ori	r24, 0x0A	; 10
    4156:	85 b9       	out	0x05, r24	; 5
    4158:	85 b1       	in	r24, 0x05	; 5
    415a:	85 7f       	andi	r24, 0xF5	; 245
    415c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    415e:	85 b1       	in	r24, 0x05	; 5
    4160:	8a 60       	ori	r24, 0x0A	; 10
    4162:	85 b9       	out	0x05, r24	; 5
    4164:	85 b1       	in	r24, 0x05	; 5
    4166:	85 7f       	andi	r24, 0xF5	; 245
    4168:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    416a:	85 b1       	in	r24, 0x05	; 5
    416c:	8a 60       	ori	r24, 0x0A	; 10
    416e:	85 b9       	out	0x05, r24	; 5
    4170:	85 b1       	in	r24, 0x05	; 5
    4172:	85 7f       	andi	r24, 0xF5	; 245
    4174:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4176:	85 b1       	in	r24, 0x05	; 5
    4178:	8a 60       	ori	r24, 0x0A	; 10
    417a:	85 b9       	out	0x05, r24	; 5
    417c:	85 b1       	in	r24, 0x05	; 5
    417e:	85 7f       	andi	r24, 0xF5	; 245
    4180:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4182:	85 b1       	in	r24, 0x05	; 5
    4184:	8a 60       	ori	r24, 0x0A	; 10
    4186:	85 b9       	out	0x05, r24	; 5
    4188:	85 b1       	in	r24, 0x05	; 5
    418a:	85 7f       	andi	r24, 0xF5	; 245
    418c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    418e:	85 b1       	in	r24, 0x05	; 5
    4190:	8a 60       	ori	r24, 0x0A	; 10
    4192:	85 b9       	out	0x05, r24	; 5
    4194:	85 b1       	in	r24, 0x05	; 5
    4196:	85 7f       	andi	r24, 0xF5	; 245
    4198:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    419a:	85 b1       	in	r24, 0x05	; 5
    419c:	8a 60       	ori	r24, 0x0A	; 10
    419e:	85 b9       	out	0x05, r24	; 5
    41a0:	85 b1       	in	r24, 0x05	; 5
    41a2:	85 7f       	andi	r24, 0xF5	; 245
    41a4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    41a6:	85 b1       	in	r24, 0x05	; 5
    41a8:	8a 60       	ori	r24, 0x0A	; 10
    41aa:	85 b9       	out	0x05, r24	; 5
    41ac:	85 b1       	in	r24, 0x05	; 5
    41ae:	85 7f       	andi	r24, 0xF5	; 245
    41b0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    41b2:	85 b1       	in	r24, 0x05	; 5
    41b4:	8a 60       	ori	r24, 0x0A	; 10
    41b6:	85 b9       	out	0x05, r24	; 5
    41b8:	85 b1       	in	r24, 0x05	; 5
    41ba:	85 7f       	andi	r24, 0xF5	; 245
    41bc:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    41be:	85 b1       	in	r24, 0x05	; 5
    41c0:	8a 60       	ori	r24, 0x0A	; 10
    41c2:	85 b9       	out	0x05, r24	; 5
    41c4:	85 b1       	in	r24, 0x05	; 5
    41c6:	85 7f       	andi	r24, 0xF5	; 245
    41c8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    41ca:	85 b1       	in	r24, 0x05	; 5
    41cc:	8a 60       	ori	r24, 0x0A	; 10
    41ce:	85 b9       	out	0x05, r24	; 5
    41d0:	85 b1       	in	r24, 0x05	; 5
    41d2:	85 7f       	andi	r24, 0xF5	; 245
    41d4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    41d6:	85 b1       	in	r24, 0x05	; 5
    41d8:	8a 60       	ori	r24, 0x0A	; 10
    41da:	85 b9       	out	0x05, r24	; 5
    41dc:	85 b1       	in	r24, 0x05	; 5
    41de:	85 7f       	andi	r24, 0xF5	; 245
    41e0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    41e2:	85 b1       	in	r24, 0x05	; 5
    41e4:	8a 60       	ori	r24, 0x0A	; 10
    41e6:	85 b9       	out	0x05, r24	; 5
    41e8:	85 b1       	in	r24, 0x05	; 5
    41ea:	85 7f       	andi	r24, 0xF5	; 245
    41ec:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    41ee:	85 b1       	in	r24, 0x05	; 5
    41f0:	8a 60       	ori	r24, 0x0A	; 10
    41f2:	85 b9       	out	0x05, r24	; 5
    41f4:	85 b1       	in	r24, 0x05	; 5
    41f6:	85 7f       	andi	r24, 0xF5	; 245
    41f8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    41fa:	85 b1       	in	r24, 0x05	; 5
    41fc:	8a 60       	ori	r24, 0x0A	; 10
    41fe:	85 b9       	out	0x05, r24	; 5
    4200:	85 b1       	in	r24, 0x05	; 5
    4202:	85 7f       	andi	r24, 0xF5	; 245
    4204:	85 b9       	out	0x05, r24	; 5

            PWCLK_GCLK;
    4206:	85 b1       	in	r24, 0x05	; 5
    4208:	8a 60       	ori	r24, 0x0A	; 10
    420a:	85 b9       	out	0x05, r24	; 5
    420c:	85 b1       	in	r24, 0x05	; 5
    420e:	85 7f       	andi	r24, 0xF5	; 245
    4210:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4212:	85 b1       	in	r24, 0x05	; 5
    4214:	8a 60       	ori	r24, 0x0A	; 10
    4216:	85 b9       	out	0x05, r24	; 5
    4218:	85 b1       	in	r24, 0x05	; 5
    421a:	85 7f       	andi	r24, 0xF5	; 245
    421c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    421e:	85 b1       	in	r24, 0x05	; 5
    4220:	8a 60       	ori	r24, 0x0A	; 10
    4222:	85 b9       	out	0x05, r24	; 5
    4224:	85 b1       	in	r24, 0x05	; 5
    4226:	85 7f       	andi	r24, 0xF5	; 245
    4228:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    422a:	85 b1       	in	r24, 0x05	; 5
    422c:	8a 60       	ori	r24, 0x0A	; 10
    422e:	85 b9       	out	0x05, r24	; 5
    4230:	85 b1       	in	r24, 0x05	; 5
    4232:	85 7f       	andi	r24, 0xF5	; 245
    4234:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4236:	85 b1       	in	r24, 0x05	; 5
    4238:	8a 60       	ori	r24, 0x0A	; 10
    423a:	85 b9       	out	0x05, r24	; 5
    423c:	85 b1       	in	r24, 0x05	; 5
    423e:	85 7f       	andi	r24, 0xF5	; 245
    4240:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4242:	85 b1       	in	r24, 0x05	; 5
    4244:	8a 60       	ori	r24, 0x0A	; 10
    4246:	85 b9       	out	0x05, r24	; 5
    4248:	85 b1       	in	r24, 0x05	; 5
    424a:	85 7f       	andi	r24, 0xF5	; 245
    424c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    424e:	85 b1       	in	r24, 0x05	; 5
    4250:	8a 60       	ori	r24, 0x0A	; 10
    4252:	85 b9       	out	0x05, r24	; 5
    4254:	85 b1       	in	r24, 0x05	; 5
    4256:	85 7f       	andi	r24, 0xF5	; 245
    4258:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    425a:	85 b1       	in	r24, 0x05	; 5
    425c:	8a 60       	ori	r24, 0x0A	; 10
    425e:	85 b9       	out	0x05, r24	; 5
    4260:	85 b1       	in	r24, 0x05	; 5
    4262:	85 7f       	andi	r24, 0xF5	; 245
    4264:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4266:	85 b1       	in	r24, 0x05	; 5
    4268:	8a 60       	ori	r24, 0x0A	; 10
    426a:	85 b9       	out	0x05, r24	; 5
    426c:	85 b1       	in	r24, 0x05	; 5
    426e:	85 7f       	andi	r24, 0xF5	; 245
    4270:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4272:	85 b1       	in	r24, 0x05	; 5
    4274:	8a 60       	ori	r24, 0x0A	; 10
    4276:	85 b9       	out	0x05, r24	; 5
    4278:	85 b1       	in	r24, 0x05	; 5
    427a:	85 7f       	andi	r24, 0xF5	; 245
    427c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    427e:	85 b1       	in	r24, 0x05	; 5
    4280:	8a 60       	ori	r24, 0x0A	; 10
    4282:	85 b9       	out	0x05, r24	; 5
    4284:	85 b1       	in	r24, 0x05	; 5
    4286:	85 7f       	andi	r24, 0xF5	; 245
    4288:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    428a:	85 b1       	in	r24, 0x05	; 5
    428c:	8a 60       	ori	r24, 0x0A	; 10
    428e:	85 b9       	out	0x05, r24	; 5
    4290:	85 b1       	in	r24, 0x05	; 5
    4292:	85 7f       	andi	r24, 0xF5	; 245
    4294:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4296:	85 b1       	in	r24, 0x05	; 5
    4298:	8a 60       	ori	r24, 0x0A	; 10
    429a:	85 b9       	out	0x05, r24	; 5
    429c:	85 b1       	in	r24, 0x05	; 5
    429e:	85 7f       	andi	r24, 0xF5	; 245
    42a0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    42a2:	85 b1       	in	r24, 0x05	; 5
    42a4:	8a 60       	ori	r24, 0x0A	; 10
    42a6:	85 b9       	out	0x05, r24	; 5
    42a8:	85 b1       	in	r24, 0x05	; 5
    42aa:	85 7f       	andi	r24, 0xF5	; 245
    42ac:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    42ae:	85 b1       	in	r24, 0x05	; 5
    42b0:	8a 60       	ori	r24, 0x0A	; 10
    42b2:	85 b9       	out	0x05, r24	; 5
    42b4:	85 b1       	in	r24, 0x05	; 5
    42b6:	85 7f       	andi	r24, 0xF5	; 245
    42b8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    42ba:	85 b1       	in	r24, 0x05	; 5
    42bc:	8a 60       	ori	r24, 0x0A	; 10
    42be:	85 b9       	out	0x05, r24	; 5
    42c0:	85 b1       	in	r24, 0x05	; 5
    42c2:	85 7f       	andi	r24, 0xF5	; 245
    42c4:	85 b9       	out	0x05, r24	; 5

            PWCLK_GCLK;
    42c6:	85 b1       	in	r24, 0x05	; 5
    42c8:	8a 60       	ori	r24, 0x0A	; 10
    42ca:	85 b9       	out	0x05, r24	; 5
    42cc:	85 b1       	in	r24, 0x05	; 5
    42ce:	85 7f       	andi	r24, 0xF5	; 245
    42d0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    42d2:	85 b1       	in	r24, 0x05	; 5
    42d4:	8a 60       	ori	r24, 0x0A	; 10
    42d6:	85 b9       	out	0x05, r24	; 5
    42d8:	85 b1       	in	r24, 0x05	; 5
    42da:	85 7f       	andi	r24, 0xF5	; 245
    42dc:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    42de:	85 b1       	in	r24, 0x05	; 5
    42e0:	8a 60       	ori	r24, 0x0A	; 10
    42e2:	85 b9       	out	0x05, r24	; 5
    42e4:	85 b1       	in	r24, 0x05	; 5
    42e6:	85 7f       	andi	r24, 0xF5	; 245
    42e8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    42ea:	85 b1       	in	r24, 0x05	; 5
    42ec:	8a 60       	ori	r24, 0x0A	; 10
    42ee:	85 b9       	out	0x05, r24	; 5
    42f0:	85 b1       	in	r24, 0x05	; 5
    42f2:	85 7f       	andi	r24, 0xF5	; 245
    42f4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    42f6:	85 b1       	in	r24, 0x05	; 5
    42f8:	8a 60       	ori	r24, 0x0A	; 10
    42fa:	85 b9       	out	0x05, r24	; 5
    42fc:	85 b1       	in	r24, 0x05	; 5
    42fe:	85 7f       	andi	r24, 0xF5	; 245
    4300:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4302:	85 b1       	in	r24, 0x05	; 5
    4304:	8a 60       	ori	r24, 0x0A	; 10
    4306:	85 b9       	out	0x05, r24	; 5
    4308:	85 b1       	in	r24, 0x05	; 5
    430a:	85 7f       	andi	r24, 0xF5	; 245
    430c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    430e:	85 b1       	in	r24, 0x05	; 5
    4310:	8a 60       	ori	r24, 0x0A	; 10
    4312:	85 b9       	out	0x05, r24	; 5
    4314:	85 b1       	in	r24, 0x05	; 5
    4316:	85 7f       	andi	r24, 0xF5	; 245
    4318:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    431a:	85 b1       	in	r24, 0x05	; 5
    431c:	8a 60       	ori	r24, 0x0A	; 10
    431e:	85 b9       	out	0x05, r24	; 5
    4320:	85 b1       	in	r24, 0x05	; 5
    4322:	85 7f       	andi	r24, 0xF5	; 245
    4324:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4326:	85 b1       	in	r24, 0x05	; 5
    4328:	8a 60       	ori	r24, 0x0A	; 10
    432a:	85 b9       	out	0x05, r24	; 5
    432c:	85 b1       	in	r24, 0x05	; 5
    432e:	85 7f       	andi	r24, 0xF5	; 245
    4330:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4332:	85 b1       	in	r24, 0x05	; 5
    4334:	8a 60       	ori	r24, 0x0A	; 10
    4336:	85 b9       	out	0x05, r24	; 5
    4338:	85 b1       	in	r24, 0x05	; 5
    433a:	85 7f       	andi	r24, 0xF5	; 245
    433c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    433e:	85 b1       	in	r24, 0x05	; 5
    4340:	8a 60       	ori	r24, 0x0A	; 10
    4342:	85 b9       	out	0x05, r24	; 5
    4344:	85 b1       	in	r24, 0x05	; 5
    4346:	85 7f       	andi	r24, 0xF5	; 245
    4348:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    434a:	85 b1       	in	r24, 0x05	; 5
    434c:	8a 60       	ori	r24, 0x0A	; 10
    434e:	85 b9       	out	0x05, r24	; 5
    4350:	85 b1       	in	r24, 0x05	; 5
    4352:	85 7f       	andi	r24, 0xF5	; 245
    4354:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4356:	85 b1       	in	r24, 0x05	; 5
    4358:	8a 60       	ori	r24, 0x0A	; 10
    435a:	85 b9       	out	0x05, r24	; 5
    435c:	85 b1       	in	r24, 0x05	; 5
    435e:	85 7f       	andi	r24, 0xF5	; 245
    4360:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4362:	85 b1       	in	r24, 0x05	; 5
    4364:	8a 60       	ori	r24, 0x0A	; 10
    4366:	85 b9       	out	0x05, r24	; 5
    4368:	85 b1       	in	r24, 0x05	; 5
    436a:	85 7f       	andi	r24, 0xF5	; 245
    436c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    436e:	85 b1       	in	r24, 0x05	; 5
    4370:	8a 60       	ori	r24, 0x0A	; 10
    4372:	85 b9       	out	0x05, r24	; 5
    4374:	85 b1       	in	r24, 0x05	; 5
    4376:	85 7f       	andi	r24, 0xF5	; 245
    4378:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    437a:	85 b1       	in	r24, 0x05	; 5
    437c:	8a 60       	ori	r24, 0x0A	; 10
    437e:	85 b9       	out	0x05, r24	; 5
    4380:	85 b1       	in	r24, 0x05	; 5
    4382:	85 7f       	andi	r24, 0xF5	; 245
    4384:	85 b9       	out	0x05, r24	; 5

            PWCLK_GCLK;
    4386:	85 b1       	in	r24, 0x05	; 5
    4388:	8a 60       	ori	r24, 0x0A	; 10
    438a:	85 b9       	out	0x05, r24	; 5
    438c:	85 b1       	in	r24, 0x05	; 5
    438e:	85 7f       	andi	r24, 0xF5	; 245
    4390:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4392:	85 b1       	in	r24, 0x05	; 5
    4394:	8a 60       	ori	r24, 0x0A	; 10
    4396:	85 b9       	out	0x05, r24	; 5
    4398:	85 b1       	in	r24, 0x05	; 5
    439a:	85 7f       	andi	r24, 0xF5	; 245
    439c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    439e:	85 b1       	in	r24, 0x05	; 5
    43a0:	8a 60       	ori	r24, 0x0A	; 10
    43a2:	85 b9       	out	0x05, r24	; 5
    43a4:	85 b1       	in	r24, 0x05	; 5
    43a6:	85 7f       	andi	r24, 0xF5	; 245
    43a8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    43aa:	85 b1       	in	r24, 0x05	; 5
    43ac:	8a 60       	ori	r24, 0x0A	; 10
    43ae:	85 b9       	out	0x05, r24	; 5
    43b0:	85 b1       	in	r24, 0x05	; 5
    43b2:	85 7f       	andi	r24, 0xF5	; 245
    43b4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    43b6:	85 b1       	in	r24, 0x05	; 5
    43b8:	8a 60       	ori	r24, 0x0A	; 10
    43ba:	85 b9       	out	0x05, r24	; 5
    43bc:	85 b1       	in	r24, 0x05	; 5
    43be:	85 7f       	andi	r24, 0xF5	; 245
    43c0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    43c2:	85 b1       	in	r24, 0x05	; 5
    43c4:	8a 60       	ori	r24, 0x0A	; 10
    43c6:	85 b9       	out	0x05, r24	; 5
    43c8:	85 b1       	in	r24, 0x05	; 5
    43ca:	85 7f       	andi	r24, 0xF5	; 245
    43cc:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    43ce:	85 b1       	in	r24, 0x05	; 5
    43d0:	8a 60       	ori	r24, 0x0A	; 10
    43d2:	85 b9       	out	0x05, r24	; 5
    43d4:	85 b1       	in	r24, 0x05	; 5
    43d6:	85 7f       	andi	r24, 0xF5	; 245
    43d8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    43da:	85 b1       	in	r24, 0x05	; 5
    43dc:	8a 60       	ori	r24, 0x0A	; 10
    43de:	85 b9       	out	0x05, r24	; 5
    43e0:	85 b1       	in	r24, 0x05	; 5
    43e2:	85 7f       	andi	r24, 0xF5	; 245
    43e4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    43e6:	85 b1       	in	r24, 0x05	; 5
    43e8:	8a 60       	ori	r24, 0x0A	; 10
    43ea:	85 b9       	out	0x05, r24	; 5
    43ec:	85 b1       	in	r24, 0x05	; 5
    43ee:	85 7f       	andi	r24, 0xF5	; 245
    43f0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    43f2:	85 b1       	in	r24, 0x05	; 5
    43f4:	8a 60       	ori	r24, 0x0A	; 10
    43f6:	85 b9       	out	0x05, r24	; 5
    43f8:	85 b1       	in	r24, 0x05	; 5
    43fa:	85 7f       	andi	r24, 0xF5	; 245
    43fc:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    43fe:	85 b1       	in	r24, 0x05	; 5
    4400:	8a 60       	ori	r24, 0x0A	; 10
    4402:	85 b9       	out	0x05, r24	; 5
    4404:	85 b1       	in	r24, 0x05	; 5
    4406:	85 7f       	andi	r24, 0xF5	; 245
    4408:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    440a:	85 b1       	in	r24, 0x05	; 5
    440c:	8a 60       	ori	r24, 0x0A	; 10
    440e:	85 b9       	out	0x05, r24	; 5
    4410:	85 b1       	in	r24, 0x05	; 5
    4412:	85 7f       	andi	r24, 0xF5	; 245
    4414:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4416:	85 b1       	in	r24, 0x05	; 5
    4418:	8a 60       	ori	r24, 0x0A	; 10
    441a:	85 b9       	out	0x05, r24	; 5
    441c:	85 b1       	in	r24, 0x05	; 5
    441e:	85 7f       	andi	r24, 0xF5	; 245
    4420:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4422:	85 b1       	in	r24, 0x05	; 5
    4424:	8a 60       	ori	r24, 0x0A	; 10
    4426:	85 b9       	out	0x05, r24	; 5
    4428:	85 b1       	in	r24, 0x05	; 5
    442a:	85 7f       	andi	r24, 0xF5	; 245
    442c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    442e:	85 b1       	in	r24, 0x05	; 5
    4430:	8a 60       	ori	r24, 0x0A	; 10
    4432:	85 b9       	out	0x05, r24	; 5
    4434:	85 b1       	in	r24, 0x05	; 5
    4436:	85 7f       	andi	r24, 0xF5	; 245
    4438:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    443a:	85 b1       	in	r24, 0x05	; 5
    443c:	8a 60       	ori	r24, 0x0A	; 10
    443e:	85 b9       	out	0x05, r24	; 5
    4440:	85 b1       	in	r24, 0x05	; 5
    4442:	85 7f       	andi	r24, 0xF5	; 245
    4444:	85 b9       	out	0x05, r24	; 5

            PWCLK_GCLK;
    4446:	85 b1       	in	r24, 0x05	; 5
    4448:	8a 60       	ori	r24, 0x0A	; 10
    444a:	85 b9       	out	0x05, r24	; 5
    444c:	85 b1       	in	r24, 0x05	; 5
    444e:	85 7f       	andi	r24, 0xF5	; 245
    4450:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4452:	85 b1       	in	r24, 0x05	; 5
    4454:	8a 60       	ori	r24, 0x0A	; 10
    4456:	85 b9       	out	0x05, r24	; 5
    4458:	85 b1       	in	r24, 0x05	; 5
    445a:	85 7f       	andi	r24, 0xF5	; 245
    445c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    445e:	85 b1       	in	r24, 0x05	; 5
    4460:	8a 60       	ori	r24, 0x0A	; 10
    4462:	85 b9       	out	0x05, r24	; 5
    4464:	85 b1       	in	r24, 0x05	; 5
    4466:	85 7f       	andi	r24, 0xF5	; 245
    4468:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    446a:	85 b1       	in	r24, 0x05	; 5
    446c:	8a 60       	ori	r24, 0x0A	; 10
    446e:	85 b9       	out	0x05, r24	; 5
    4470:	85 b1       	in	r24, 0x05	; 5
    4472:	85 7f       	andi	r24, 0xF5	; 245
    4474:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4476:	85 b1       	in	r24, 0x05	; 5
    4478:	8a 60       	ori	r24, 0x0A	; 10
    447a:	85 b9       	out	0x05, r24	; 5
    447c:	85 b1       	in	r24, 0x05	; 5
    447e:	85 7f       	andi	r24, 0xF5	; 245
    4480:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4482:	85 b1       	in	r24, 0x05	; 5
    4484:	8a 60       	ori	r24, 0x0A	; 10
    4486:	85 b9       	out	0x05, r24	; 5
    4488:	85 b1       	in	r24, 0x05	; 5
    448a:	85 7f       	andi	r24, 0xF5	; 245
    448c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    448e:	85 b1       	in	r24, 0x05	; 5
    4490:	8a 60       	ori	r24, 0x0A	; 10
    4492:	85 b9       	out	0x05, r24	; 5
    4494:	85 b1       	in	r24, 0x05	; 5
    4496:	85 7f       	andi	r24, 0xF5	; 245
    4498:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    449a:	85 b1       	in	r24, 0x05	; 5
    449c:	8a 60       	ori	r24, 0x0A	; 10
    449e:	85 b9       	out	0x05, r24	; 5
    44a0:	85 b1       	in	r24, 0x05	; 5
    44a2:	85 7f       	andi	r24, 0xF5	; 245
    44a4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    44a6:	85 b1       	in	r24, 0x05	; 5
    44a8:	8a 60       	ori	r24, 0x0A	; 10
    44aa:	85 b9       	out	0x05, r24	; 5
    44ac:	85 b1       	in	r24, 0x05	; 5
    44ae:	85 7f       	andi	r24, 0xF5	; 245
    44b0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    44b2:	85 b1       	in	r24, 0x05	; 5
    44b4:	8a 60       	ori	r24, 0x0A	; 10
    44b6:	85 b9       	out	0x05, r24	; 5
    44b8:	85 b1       	in	r24, 0x05	; 5
    44ba:	85 7f       	andi	r24, 0xF5	; 245
    44bc:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    44be:	85 b1       	in	r24, 0x05	; 5
    44c0:	8a 60       	ori	r24, 0x0A	; 10
    44c2:	85 b9       	out	0x05, r24	; 5
    44c4:	85 b1       	in	r24, 0x05	; 5
    44c6:	85 7f       	andi	r24, 0xF5	; 245
    44c8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    44ca:	85 b1       	in	r24, 0x05	; 5
    44cc:	8a 60       	ori	r24, 0x0A	; 10
    44ce:	85 b9       	out	0x05, r24	; 5
    44d0:	85 b1       	in	r24, 0x05	; 5
    44d2:	85 7f       	andi	r24, 0xF5	; 245
    44d4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    44d6:	85 b1       	in	r24, 0x05	; 5
    44d8:	8a 60       	ori	r24, 0x0A	; 10
    44da:	85 b9       	out	0x05, r24	; 5
    44dc:	85 b1       	in	r24, 0x05	; 5
    44de:	85 7f       	andi	r24, 0xF5	; 245
    44e0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    44e2:	85 b1       	in	r24, 0x05	; 5
    44e4:	8a 60       	ori	r24, 0x0A	; 10
    44e6:	85 b9       	out	0x05, r24	; 5
    44e8:	85 b1       	in	r24, 0x05	; 5
    44ea:	85 7f       	andi	r24, 0xF5	; 245
    44ec:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    44ee:	85 b1       	in	r24, 0x05	; 5
    44f0:	8a 60       	ori	r24, 0x0A	; 10
    44f2:	85 b9       	out	0x05, r24	; 5
    44f4:	85 b1       	in	r24, 0x05	; 5
    44f6:	85 7f       	andi	r24, 0xF5	; 245
    44f8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    44fa:	85 b1       	in	r24, 0x05	; 5
    44fc:	8a 60       	ori	r24, 0x0A	; 10
    44fe:	85 b9       	out	0x05, r24	; 5
    4500:	85 b1       	in	r24, 0x05	; 5
    4502:	85 7f       	andi	r24, 0xF5	; 245
    4504:	85 b9       	out	0x05, r24	; 5

            PWCLK_GCLK;
    4506:	85 b1       	in	r24, 0x05	; 5
    4508:	8a 60       	ori	r24, 0x0A	; 10
    450a:	85 b9       	out	0x05, r24	; 5
    450c:	85 b1       	in	r24, 0x05	; 5
    450e:	85 7f       	andi	r24, 0xF5	; 245
    4510:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4512:	85 b1       	in	r24, 0x05	; 5
    4514:	8a 60       	ori	r24, 0x0A	; 10
    4516:	85 b9       	out	0x05, r24	; 5
    4518:	85 b1       	in	r24, 0x05	; 5
    451a:	85 7f       	andi	r24, 0xF5	; 245
    451c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    451e:	85 b1       	in	r24, 0x05	; 5
    4520:	8a 60       	ori	r24, 0x0A	; 10
    4522:	85 b9       	out	0x05, r24	; 5
    4524:	85 b1       	in	r24, 0x05	; 5
    4526:	85 7f       	andi	r24, 0xF5	; 245
    4528:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    452a:	85 b1       	in	r24, 0x05	; 5
    452c:	8a 60       	ori	r24, 0x0A	; 10
    452e:	85 b9       	out	0x05, r24	; 5
    4530:	85 b1       	in	r24, 0x05	; 5
    4532:	85 7f       	andi	r24, 0xF5	; 245
    4534:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4536:	85 b1       	in	r24, 0x05	; 5
    4538:	8a 60       	ori	r24, 0x0A	; 10
    453a:	85 b9       	out	0x05, r24	; 5
    453c:	85 b1       	in	r24, 0x05	; 5
    453e:	85 7f       	andi	r24, 0xF5	; 245
    4540:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4542:	85 b1       	in	r24, 0x05	; 5
    4544:	8a 60       	ori	r24, 0x0A	; 10
    4546:	85 b9       	out	0x05, r24	; 5
    4548:	85 b1       	in	r24, 0x05	; 5
    454a:	85 7f       	andi	r24, 0xF5	; 245
    454c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    454e:	85 b1       	in	r24, 0x05	; 5
    4550:	8a 60       	ori	r24, 0x0A	; 10
    4552:	85 b9       	out	0x05, r24	; 5
    4554:	85 b1       	in	r24, 0x05	; 5
    4556:	85 7f       	andi	r24, 0xF5	; 245
    4558:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    455a:	85 b1       	in	r24, 0x05	; 5
    455c:	8a 60       	ori	r24, 0x0A	; 10
    455e:	85 b9       	out	0x05, r24	; 5
    4560:	85 b1       	in	r24, 0x05	; 5
    4562:	85 7f       	andi	r24, 0xF5	; 245
    4564:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4566:	85 b1       	in	r24, 0x05	; 5
    4568:	8a 60       	ori	r24, 0x0A	; 10
    456a:	85 b9       	out	0x05, r24	; 5
    456c:	85 b1       	in	r24, 0x05	; 5
    456e:	85 7f       	andi	r24, 0xF5	; 245
    4570:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4572:	85 b1       	in	r24, 0x05	; 5
    4574:	8a 60       	ori	r24, 0x0A	; 10
    4576:	85 b9       	out	0x05, r24	; 5
    4578:	85 b1       	in	r24, 0x05	; 5
    457a:	85 7f       	andi	r24, 0xF5	; 245
    457c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    457e:	85 b1       	in	r24, 0x05	; 5
    4580:	8a 60       	ori	r24, 0x0A	; 10
    4582:	85 b9       	out	0x05, r24	; 5
    4584:	85 b1       	in	r24, 0x05	; 5
    4586:	85 7f       	andi	r24, 0xF5	; 245
    4588:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    458a:	85 b1       	in	r24, 0x05	; 5
    458c:	8a 60       	ori	r24, 0x0A	; 10
    458e:	85 b9       	out	0x05, r24	; 5
    4590:	85 b1       	in	r24, 0x05	; 5
    4592:	85 7f       	andi	r24, 0xF5	; 245
    4594:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4596:	85 b1       	in	r24, 0x05	; 5
    4598:	8a 60       	ori	r24, 0x0A	; 10
    459a:	85 b9       	out	0x05, r24	; 5
    459c:	85 b1       	in	r24, 0x05	; 5
    459e:	85 7f       	andi	r24, 0xF5	; 245
    45a0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    45a2:	85 b1       	in	r24, 0x05	; 5
    45a4:	8a 60       	ori	r24, 0x0A	; 10
    45a6:	85 b9       	out	0x05, r24	; 5
    45a8:	85 b1       	in	r24, 0x05	; 5
    45aa:	85 7f       	andi	r24, 0xF5	; 245
    45ac:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    45ae:	85 b1       	in	r24, 0x05	; 5
    45b0:	8a 60       	ori	r24, 0x0A	; 10
    45b2:	85 b9       	out	0x05, r24	; 5
    45b4:	85 b1       	in	r24, 0x05	; 5
    45b6:	85 7f       	andi	r24, 0xF5	; 245
    45b8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    45ba:	85 b1       	in	r24, 0x05	; 5
    45bc:	8a 60       	ori	r24, 0x0A	; 10
    45be:	85 b9       	out	0x05, r24	; 5
    45c0:	85 b1       	in	r24, 0x05	; 5
    45c2:	85 7f       	andi	r24, 0xF5	; 245
    45c4:	85 b9       	out	0x05, r24	; 5

            PWCLK_GCLK;
    45c6:	85 b1       	in	r24, 0x05	; 5
    45c8:	8a 60       	ori	r24, 0x0A	; 10
    45ca:	85 b9       	out	0x05, r24	; 5
    45cc:	85 b1       	in	r24, 0x05	; 5
    45ce:	85 7f       	andi	r24, 0xF5	; 245
    45d0:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    45d2:	85 b1       	in	r24, 0x05	; 5
    45d4:	8a 60       	ori	r24, 0x0A	; 10
    45d6:	85 b9       	out	0x05, r24	; 5
    45d8:	85 b1       	in	r24, 0x05	; 5
    45da:	85 7f       	andi	r24, 0xF5	; 245
    45dc:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    45de:	85 b1       	in	r24, 0x05	; 5
    45e0:	8a 60       	ori	r24, 0x0A	; 10
    45e2:	85 b9       	out	0x05, r24	; 5
    45e4:	85 b1       	in	r24, 0x05	; 5
    45e6:	85 7f       	andi	r24, 0xF5	; 245
    45e8:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    45ea:	85 b1       	in	r24, 0x05	; 5
    45ec:	8a 60       	ori	r24, 0x0A	; 10
    45ee:	85 b9       	out	0x05, r24	; 5
    45f0:	85 b1       	in	r24, 0x05	; 5
    45f2:	85 7f       	andi	r24, 0xF5	; 245
    45f4:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    45f6:	85 b1       	in	r24, 0x05	; 5
    45f8:	8a 60       	ori	r24, 0x0A	; 10
    45fa:	85 b9       	out	0x05, r24	; 5
    45fc:	85 b1       	in	r24, 0x05	; 5
    45fe:	85 7f       	andi	r24, 0xF5	; 245
    4600:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4602:	85 b1       	in	r24, 0x05	; 5
    4604:	8a 60       	ori	r24, 0x0A	; 10
    4606:	85 b9       	out	0x05, r24	; 5
    4608:	85 b1       	in	r24, 0x05	; 5
    460a:	85 7f       	andi	r24, 0xF5	; 245
    460c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    460e:	85 b1       	in	r24, 0x05	; 5
    4610:	8a 60       	ori	r24, 0x0A	; 10
    4612:	85 b9       	out	0x05, r24	; 5
    4614:	85 b1       	in	r24, 0x05	; 5
    4616:	85 7f       	andi	r24, 0xF5	; 245
    4618:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    461a:	85 b1       	in	r24, 0x05	; 5
    461c:	8a 60       	ori	r24, 0x0A	; 10
    461e:	85 b9       	out	0x05, r24	; 5
    4620:	85 b1       	in	r24, 0x05	; 5
    4622:	85 7f       	andi	r24, 0xF5	; 245
    4624:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4626:	85 b1       	in	r24, 0x05	; 5
    4628:	8a 60       	ori	r24, 0x0A	; 10
    462a:	85 b9       	out	0x05, r24	; 5
    462c:	85 b1       	in	r24, 0x05	; 5
    462e:	85 7f       	andi	r24, 0xF5	; 245
    4630:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4632:	85 b1       	in	r24, 0x05	; 5
    4634:	8a 60       	ori	r24, 0x0A	; 10
    4636:	85 b9       	out	0x05, r24	; 5
    4638:	85 b1       	in	r24, 0x05	; 5
    463a:	85 7f       	andi	r24, 0xF5	; 245
    463c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    463e:	85 b1       	in	r24, 0x05	; 5
    4640:	8a 60       	ori	r24, 0x0A	; 10
    4642:	85 b9       	out	0x05, r24	; 5
    4644:	85 b1       	in	r24, 0x05	; 5
    4646:	85 7f       	andi	r24, 0xF5	; 245
    4648:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    464a:	85 b1       	in	r24, 0x05	; 5
    464c:	8a 60       	ori	r24, 0x0A	; 10
    464e:	85 b9       	out	0x05, r24	; 5
    4650:	85 b1       	in	r24, 0x05	; 5
    4652:	85 7f       	andi	r24, 0xF5	; 245
    4654:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4656:	85 b1       	in	r24, 0x05	; 5
    4658:	8a 60       	ori	r24, 0x0A	; 10
    465a:	85 b9       	out	0x05, r24	; 5
    465c:	85 b1       	in	r24, 0x05	; 5
    465e:	85 7f       	andi	r24, 0xF5	; 245
    4660:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    4662:	85 b1       	in	r24, 0x05	; 5
    4664:	8a 60       	ori	r24, 0x0A	; 10
    4666:	85 b9       	out	0x05, r24	; 5
    4668:	85 b1       	in	r24, 0x05	; 5
    466a:	85 7f       	andi	r24, 0xF5	; 245
    466c:	85 b9       	out	0x05, r24	; 5
            PWCLK_GCLK;
    466e:	85 b1       	in	r24, 0x05	; 5
    4670:	8a 60       	ori	r24, 0x0A	; 10
    4672:	85 b9       	out	0x05, r24	; 5
    4674:	85 b1       	in	r24, 0x05	; 5
    4676:	85 7f       	andi	r24, 0xF5	; 245
    4678:	85 b9       	out	0x05, r24	; 5

            HIGH_LAT;
    467a:	2a 9a       	sbi	0x05, 2	; 5
            PWCLK_GCLK;
    467c:	85 b1       	in	r24, 0x05	; 5
    467e:	8a 60       	ori	r24, 0x0A	; 10
    4680:	85 b9       	out	0x05, r24	; 5
    4682:	85 b1       	in	r24, 0x05	; 5
    4684:	85 7f       	andi	r24, 0xF5	; 245
    4686:	85 b9       	out	0x05, r24	; 5
            CLEAR_LAT;
    4688:	2a 98       	cbi	0x05, 2	; 5
    468a:	40 5e       	subi	r20, 0xE0	; 224
    468c:	5f 4f       	sbci	r21, 0xFF	; 255
#endif

    void displayFlashBuffer()
    {
        uint16_t index = 0;
        for (uint8_t y = 0; y < 32; y++) // 32 rows
    468e:	41 15       	cp	r20, r1
    4690:	e4 e0       	ldi	r30, 0x04	; 4
    4692:	5e 07       	cpc	r21, r30
    4694:	11 f0       	breq	.+4      	; 0x469a <main+0x34e4>
    4696:	0c 94 22 09 	jmp	0x1244	; 0x1244 <main+0x8e>
            CLEAR_LAT;
#pragma endregion // LSB_fake
        }

        //  display all leds once done, so move data from latch registers to pwm modules, now with two/four bits of information
        HIGH_LAT;
    469a:	2a 9a       	sbi	0x05, 2	; 5
        PWCLK_GCLK;
    469c:	85 b1       	in	r24, 0x05	; 5
    469e:	8a 60       	ori	r24, 0x0A	; 10
    46a0:	85 b9       	out	0x05, r24	; 5
    46a2:	85 b1       	in	r24, 0x05	; 5
    46a4:	85 7f       	andi	r24, 0xF5	; 245
    46a6:	85 b9       	out	0x05, r24	; 5
        PWCLK_GCLK;
    46a8:	85 b1       	in	r24, 0x05	; 5
    46aa:	8a 60       	ori	r24, 0x0A	; 10
    46ac:	85 b9       	out	0x05, r24	; 5
    46ae:	85 b1       	in	r24, 0x05	; 5
    46b0:	85 7f       	andi	r24, 0xF5	; 245
    46b2:	85 b9       	out	0x05, r24	; 5
        CLEAR_LAT;
    46b4:	2a 98       	cbi	0x05, 2	; 5
	
	setup();
    
	for (;;) {
		loop();
		if (serialEventRun) serialEventRun();
    46b6:	20 97       	sbiw	r28, 0x00	; 0
    46b8:	11 f4       	brne	.+4      	; 0x46be <main+0x3508>
    46ba:	0c 94 20 09 	jmp	0x1240	; 0x1240 <main+0x8a>
    46be:	0e 94 00 00 	call	0	; 0x0 <__vectors>
    46c2:	0c 94 20 09 	jmp	0x1240	; 0x1240 <main+0x8a>
            CLEAR_RA;
            CLEAR_RC;
        }
        else
        {
            HIGH_RA;
    46c6:	40 9a       	sbi	0x08, 0	; 8
            CLEAR_RA;
    46c8:	40 98       	cbi	0x08, 0	; 8
    46ca:	0c 94 2b 09 	jmp	0x1256	; 0x1256 <main+0xa0>

000046ce <_GLOBAL__sub_I_panel>:
class Panel
{
public:
#ifdef PANEL_FLASH
    Panel(PGM_VOID_P buffer_in)
    {
    46ce:	e0 e0       	ldi	r30, 0x00	; 0
    46d0:	f1 e0       	ldi	r31, 0x01	; 1
    46d2:	14 82       	std	Z+4, r1	; 0x04
    46d4:	15 82       	std	Z+5, r1	; 0x05
    46d6:	16 82       	std	Z+6, r1	; 0x06
    46d8:	17 82       	std	Z+7, r1	; 0x07
        buffer = buffer_in;
    46da:	88 e6       	ldi	r24, 0x68	; 104
    46dc:	90 e0       	ldi	r25, 0x00	; 0
    46de:	91 83       	std	Z+1, r25	; 0x01
    46e0:	80 83       	st	Z, r24
        coloumns = PANEL_X;
    46e2:	80 e4       	ldi	r24, 0x40	; 64
    46e4:	83 83       	std	Z+3, r24	; 0x03
        rows = PANEL_Y;
    46e6:	80 e2       	ldi	r24, 0x20	; 32
    46e8:	82 83       	std	Z+2, r24	; 0x02
        pinMode(RA, OUTPUT);
    46ea:	8e e0       	ldi	r24, 0x0E	; 14
    46ec:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(RC, OUTPUT);
    46f0:	80 e1       	ldi	r24, 0x10	; 16
    46f2:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(CLK, OUTPUT);
    46f6:	89 e0       	ldi	r24, 0x09	; 9
    46f8:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(RF, OUTPUT);
    46fc:	82 e0       	ldi	r24, 0x02	; 2
    46fe:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(RS, OUTPUT);
    4702:	85 e0       	ldi	r24, 0x05	; 5
    4704:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(GF, OUTPUT);
    4708:	83 e0       	ldi	r24, 0x03	; 3
    470a:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(GS, OUTPUT);
    470e:	86 e0       	ldi	r24, 0x06	; 6
    4710:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(BF, OUTPUT);
    4714:	84 e0       	ldi	r24, 0x04	; 4
    4716:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(BS, OUTPUT);
    471a:	87 e0       	ldi	r24, 0x07	; 7
    471c:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(LAT, OUTPUT);
    4720:	8a e0       	ldi	r24, 0x0A	; 10
    4722:	0e 94 72 08 	call	0x10e4	; 0x10e4 <pinMode.constprop.2>
        pinMode(OE, OUTPUT);
    4726:	8b e0       	ldi	r24, 0x0B	; 11
    4728:	0c 94 72 08 	jmp	0x10e4	; 0x10e4 <pinMode.constprop.2>

0000472c <__tablejump2__>:
    472c:	ee 0f       	add	r30, r30
    472e:	ff 1f       	adc	r31, r31
    4730:	05 90       	lpm	r0, Z+
    4732:	f4 91       	lpm	r31, Z
    4734:	e0 2d       	mov	r30, r0
    4736:	09 94       	ijmp

00004738 <_exit>:
    4738:	f8 94       	cli

0000473a <__stop_program>:
    473a:	ff cf       	rjmp	.-2      	; 0x473a <__stop_program>
