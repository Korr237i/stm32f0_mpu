
build/stm32f0_mpu.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00002e50  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000100  08002f10  08002f10  00012f10  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000004  08003010  08003010  00013010  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08003014  08003014  00013014  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000004  20000000  08003018  00020000  2**2  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000034  20000004  0800301c  00020004  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000038  0800301c  00020038  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020004  2**0  CONTENTS, READONLY
  9 .debug_info       000043ae  00000000  00000000  0002002c  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     00000d15  00000000  00000000  000243da  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        00001592  00000000  00000000  000250ef  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    000003f0  00000000  00000000  00026681  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     00000370  00000000  00000000  00026a71  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       0000143e  00000000  00000000  00026de1  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        0000142b  00000000  00000000  0002821f  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          0000007f  00000000  00000000  0002964a  2**0  CONTENTS, READONLY
 17 .debug_frame      00000eac  00000000  00000000  000296cc  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <__do_global_dtors_aux>:
 80000c0:	b510      	push	{r4, lr}
 80000c2:	4c06      	ldr	r4, [pc, #24]	; (80000dc <__do_global_dtors_aux+0x1c>)
 80000c4:	7823      	ldrb	r3, [r4, #0]
 80000c6:	2b00      	cmp	r3, #0
 80000c8:	d107      	bne.n	80000da <__do_global_dtors_aux+0x1a>
 80000ca:	4b05      	ldr	r3, [pc, #20]	; (80000e0 <__do_global_dtors_aux+0x20>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d002      	beq.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d0:	4804      	ldr	r0, [pc, #16]	; (80000e4 <__do_global_dtors_aux+0x24>)
 80000d2:	e000      	b.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d4:	bf00      	nop
 80000d6:	2301      	movs	r3, #1
 80000d8:	7023      	strb	r3, [r4, #0]
 80000da:	bd10      	pop	{r4, pc}
 80000dc:	20000004 	.word	0x20000004
 80000e0:	00000000 	.word	0x00000000
 80000e4:	08002ef8 	.word	0x08002ef8

080000e8 <frame_dummy>:
 80000e8:	4b04      	ldr	r3, [pc, #16]	; (80000fc <frame_dummy+0x14>)
 80000ea:	b510      	push	{r4, lr}
 80000ec:	2b00      	cmp	r3, #0
 80000ee:	d003      	beq.n	80000f8 <frame_dummy+0x10>
 80000f0:	4903      	ldr	r1, [pc, #12]	; (8000100 <frame_dummy+0x18>)
 80000f2:	4804      	ldr	r0, [pc, #16]	; (8000104 <frame_dummy+0x1c>)
 80000f4:	e000      	b.n	80000f8 <frame_dummy+0x10>
 80000f6:	bf00      	nop
 80000f8:	bd10      	pop	{r4, pc}
 80000fa:	46c0      	nop			; (mov r8, r8)
 80000fc:	00000000 	.word	0x00000000
 8000100:	20000008 	.word	0x20000008
 8000104:	08002ef8 	.word	0x08002ef8

08000108 <__udivsi3>:
 8000108:	2200      	movs	r2, #0
 800010a:	0843      	lsrs	r3, r0, #1
 800010c:	428b      	cmp	r3, r1
 800010e:	d374      	bcc.n	80001fa <__udivsi3+0xf2>
 8000110:	0903      	lsrs	r3, r0, #4
 8000112:	428b      	cmp	r3, r1
 8000114:	d35f      	bcc.n	80001d6 <__udivsi3+0xce>
 8000116:	0a03      	lsrs	r3, r0, #8
 8000118:	428b      	cmp	r3, r1
 800011a:	d344      	bcc.n	80001a6 <__udivsi3+0x9e>
 800011c:	0b03      	lsrs	r3, r0, #12
 800011e:	428b      	cmp	r3, r1
 8000120:	d328      	bcc.n	8000174 <__udivsi3+0x6c>
 8000122:	0c03      	lsrs	r3, r0, #16
 8000124:	428b      	cmp	r3, r1
 8000126:	d30d      	bcc.n	8000144 <__udivsi3+0x3c>
 8000128:	22ff      	movs	r2, #255	; 0xff
 800012a:	0209      	lsls	r1, r1, #8
 800012c:	ba12      	rev	r2, r2
 800012e:	0c03      	lsrs	r3, r0, #16
 8000130:	428b      	cmp	r3, r1
 8000132:	d302      	bcc.n	800013a <__udivsi3+0x32>
 8000134:	1212      	asrs	r2, r2, #8
 8000136:	0209      	lsls	r1, r1, #8
 8000138:	d065      	beq.n	8000206 <__udivsi3+0xfe>
 800013a:	0b03      	lsrs	r3, r0, #12
 800013c:	428b      	cmp	r3, r1
 800013e:	d319      	bcc.n	8000174 <__udivsi3+0x6c>
 8000140:	e000      	b.n	8000144 <__udivsi3+0x3c>
 8000142:	0a09      	lsrs	r1, r1, #8
 8000144:	0bc3      	lsrs	r3, r0, #15
 8000146:	428b      	cmp	r3, r1
 8000148:	d301      	bcc.n	800014e <__udivsi3+0x46>
 800014a:	03cb      	lsls	r3, r1, #15
 800014c:	1ac0      	subs	r0, r0, r3
 800014e:	4152      	adcs	r2, r2
 8000150:	0b83      	lsrs	r3, r0, #14
 8000152:	428b      	cmp	r3, r1
 8000154:	d301      	bcc.n	800015a <__udivsi3+0x52>
 8000156:	038b      	lsls	r3, r1, #14
 8000158:	1ac0      	subs	r0, r0, r3
 800015a:	4152      	adcs	r2, r2
 800015c:	0b43      	lsrs	r3, r0, #13
 800015e:	428b      	cmp	r3, r1
 8000160:	d301      	bcc.n	8000166 <__udivsi3+0x5e>
 8000162:	034b      	lsls	r3, r1, #13
 8000164:	1ac0      	subs	r0, r0, r3
 8000166:	4152      	adcs	r2, r2
 8000168:	0b03      	lsrs	r3, r0, #12
 800016a:	428b      	cmp	r3, r1
 800016c:	d301      	bcc.n	8000172 <__udivsi3+0x6a>
 800016e:	030b      	lsls	r3, r1, #12
 8000170:	1ac0      	subs	r0, r0, r3
 8000172:	4152      	adcs	r2, r2
 8000174:	0ac3      	lsrs	r3, r0, #11
 8000176:	428b      	cmp	r3, r1
 8000178:	d301      	bcc.n	800017e <__udivsi3+0x76>
 800017a:	02cb      	lsls	r3, r1, #11
 800017c:	1ac0      	subs	r0, r0, r3
 800017e:	4152      	adcs	r2, r2
 8000180:	0a83      	lsrs	r3, r0, #10
 8000182:	428b      	cmp	r3, r1
 8000184:	d301      	bcc.n	800018a <__udivsi3+0x82>
 8000186:	028b      	lsls	r3, r1, #10
 8000188:	1ac0      	subs	r0, r0, r3
 800018a:	4152      	adcs	r2, r2
 800018c:	0a43      	lsrs	r3, r0, #9
 800018e:	428b      	cmp	r3, r1
 8000190:	d301      	bcc.n	8000196 <__udivsi3+0x8e>
 8000192:	024b      	lsls	r3, r1, #9
 8000194:	1ac0      	subs	r0, r0, r3
 8000196:	4152      	adcs	r2, r2
 8000198:	0a03      	lsrs	r3, r0, #8
 800019a:	428b      	cmp	r3, r1
 800019c:	d301      	bcc.n	80001a2 <__udivsi3+0x9a>
 800019e:	020b      	lsls	r3, r1, #8
 80001a0:	1ac0      	subs	r0, r0, r3
 80001a2:	4152      	adcs	r2, r2
 80001a4:	d2cd      	bcs.n	8000142 <__udivsi3+0x3a>
 80001a6:	09c3      	lsrs	r3, r0, #7
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d301      	bcc.n	80001b0 <__udivsi3+0xa8>
 80001ac:	01cb      	lsls	r3, r1, #7
 80001ae:	1ac0      	subs	r0, r0, r3
 80001b0:	4152      	adcs	r2, r2
 80001b2:	0983      	lsrs	r3, r0, #6
 80001b4:	428b      	cmp	r3, r1
 80001b6:	d301      	bcc.n	80001bc <__udivsi3+0xb4>
 80001b8:	018b      	lsls	r3, r1, #6
 80001ba:	1ac0      	subs	r0, r0, r3
 80001bc:	4152      	adcs	r2, r2
 80001be:	0943      	lsrs	r3, r0, #5
 80001c0:	428b      	cmp	r3, r1
 80001c2:	d301      	bcc.n	80001c8 <__udivsi3+0xc0>
 80001c4:	014b      	lsls	r3, r1, #5
 80001c6:	1ac0      	subs	r0, r0, r3
 80001c8:	4152      	adcs	r2, r2
 80001ca:	0903      	lsrs	r3, r0, #4
 80001cc:	428b      	cmp	r3, r1
 80001ce:	d301      	bcc.n	80001d4 <__udivsi3+0xcc>
 80001d0:	010b      	lsls	r3, r1, #4
 80001d2:	1ac0      	subs	r0, r0, r3
 80001d4:	4152      	adcs	r2, r2
 80001d6:	08c3      	lsrs	r3, r0, #3
 80001d8:	428b      	cmp	r3, r1
 80001da:	d301      	bcc.n	80001e0 <__udivsi3+0xd8>
 80001dc:	00cb      	lsls	r3, r1, #3
 80001de:	1ac0      	subs	r0, r0, r3
 80001e0:	4152      	adcs	r2, r2
 80001e2:	0883      	lsrs	r3, r0, #2
 80001e4:	428b      	cmp	r3, r1
 80001e6:	d301      	bcc.n	80001ec <__udivsi3+0xe4>
 80001e8:	008b      	lsls	r3, r1, #2
 80001ea:	1ac0      	subs	r0, r0, r3
 80001ec:	4152      	adcs	r2, r2
 80001ee:	0843      	lsrs	r3, r0, #1
 80001f0:	428b      	cmp	r3, r1
 80001f2:	d301      	bcc.n	80001f8 <__udivsi3+0xf0>
 80001f4:	004b      	lsls	r3, r1, #1
 80001f6:	1ac0      	subs	r0, r0, r3
 80001f8:	4152      	adcs	r2, r2
 80001fa:	1a41      	subs	r1, r0, r1
 80001fc:	d200      	bcs.n	8000200 <__udivsi3+0xf8>
 80001fe:	4601      	mov	r1, r0
 8000200:	4152      	adcs	r2, r2
 8000202:	4610      	mov	r0, r2
 8000204:	4770      	bx	lr
 8000206:	e7ff      	b.n	8000208 <__udivsi3+0x100>
 8000208:	b501      	push	{r0, lr}
 800020a:	2000      	movs	r0, #0
 800020c:	f000 f806 	bl	800021c <__aeabi_idiv0>
 8000210:	bd02      	pop	{r1, pc}
 8000212:	46c0      	nop			; (mov r8, r8)

08000214 <__aeabi_uidivmod>:
 8000214:	2900      	cmp	r1, #0
 8000216:	d0f7      	beq.n	8000208 <__udivsi3+0x100>
 8000218:	e776      	b.n	8000108 <__udivsi3>
 800021a:	4770      	bx	lr

0800021c <__aeabi_idiv0>:
 800021c:	4770      	bx	lr
 800021e:	46c0      	nop			; (mov r8, r8)

08000220 <__aeabi_i2f>:
 8000220:	b570      	push	{r4, r5, r6, lr}
 8000222:	2800      	cmp	r0, #0
 8000224:	d03d      	beq.n	80002a2 <__aeabi_i2f+0x82>
 8000226:	17c3      	asrs	r3, r0, #31
 8000228:	18c5      	adds	r5, r0, r3
 800022a:	405d      	eors	r5, r3
 800022c:	0fc4      	lsrs	r4, r0, #31
 800022e:	0028      	movs	r0, r5
 8000230:	f001 f9a6 	bl	8001580 <__clzsi2>
 8000234:	229e      	movs	r2, #158	; 0x9e
 8000236:	1a12      	subs	r2, r2, r0
 8000238:	2a96      	cmp	r2, #150	; 0x96
 800023a:	dc07      	bgt.n	800024c <__aeabi_i2f+0x2c>
 800023c:	b2d2      	uxtb	r2, r2
 800023e:	2808      	cmp	r0, #8
 8000240:	dd33      	ble.n	80002aa <__aeabi_i2f+0x8a>
 8000242:	3808      	subs	r0, #8
 8000244:	4085      	lsls	r5, r0
 8000246:	0268      	lsls	r0, r5, #9
 8000248:	0a40      	lsrs	r0, r0, #9
 800024a:	e023      	b.n	8000294 <__aeabi_i2f+0x74>
 800024c:	2a99      	cmp	r2, #153	; 0x99
 800024e:	dd0b      	ble.n	8000268 <__aeabi_i2f+0x48>
 8000250:	2305      	movs	r3, #5
 8000252:	0029      	movs	r1, r5
 8000254:	1a1b      	subs	r3, r3, r0
 8000256:	40d9      	lsrs	r1, r3
 8000258:	0003      	movs	r3, r0
 800025a:	331b      	adds	r3, #27
 800025c:	409d      	lsls	r5, r3
 800025e:	002b      	movs	r3, r5
 8000260:	1e5d      	subs	r5, r3, #1
 8000262:	41ab      	sbcs	r3, r5
 8000264:	4319      	orrs	r1, r3
 8000266:	000d      	movs	r5, r1
 8000268:	2805      	cmp	r0, #5
 800026a:	dd01      	ble.n	8000270 <__aeabi_i2f+0x50>
 800026c:	1f43      	subs	r3, r0, #5
 800026e:	409d      	lsls	r5, r3
 8000270:	002b      	movs	r3, r5
 8000272:	490f      	ldr	r1, [pc, #60]	; (80002b0 <__aeabi_i2f+0x90>)
 8000274:	400b      	ands	r3, r1
 8000276:	076e      	lsls	r6, r5, #29
 8000278:	d009      	beq.n	800028e <__aeabi_i2f+0x6e>
 800027a:	260f      	movs	r6, #15
 800027c:	4035      	ands	r5, r6
 800027e:	2d04      	cmp	r5, #4
 8000280:	d005      	beq.n	800028e <__aeabi_i2f+0x6e>
 8000282:	3304      	adds	r3, #4
 8000284:	015d      	lsls	r5, r3, #5
 8000286:	d502      	bpl.n	800028e <__aeabi_i2f+0x6e>
 8000288:	229f      	movs	r2, #159	; 0x9f
 800028a:	400b      	ands	r3, r1
 800028c:	1a12      	subs	r2, r2, r0
 800028e:	019b      	lsls	r3, r3, #6
 8000290:	0a58      	lsrs	r0, r3, #9
 8000292:	b2d2      	uxtb	r2, r2
 8000294:	0240      	lsls	r0, r0, #9
 8000296:	05d2      	lsls	r2, r2, #23
 8000298:	0a40      	lsrs	r0, r0, #9
 800029a:	07e4      	lsls	r4, r4, #31
 800029c:	4310      	orrs	r0, r2
 800029e:	4320      	orrs	r0, r4
 80002a0:	bd70      	pop	{r4, r5, r6, pc}
 80002a2:	2400      	movs	r4, #0
 80002a4:	2200      	movs	r2, #0
 80002a6:	2000      	movs	r0, #0
 80002a8:	e7f4      	b.n	8000294 <__aeabi_i2f+0x74>
 80002aa:	0268      	lsls	r0, r5, #9
 80002ac:	0a40      	lsrs	r0, r0, #9
 80002ae:	e7f1      	b.n	8000294 <__aeabi_i2f+0x74>
 80002b0:	fbffffff 	.word	0xfbffffff

080002b4 <__aeabi_dadd>:
 80002b4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80002b6:	464f      	mov	r7, r9
 80002b8:	4646      	mov	r6, r8
 80002ba:	46d6      	mov	lr, sl
 80002bc:	000c      	movs	r4, r1
 80002be:	0309      	lsls	r1, r1, #12
 80002c0:	b5c0      	push	{r6, r7, lr}
 80002c2:	0a49      	lsrs	r1, r1, #9
 80002c4:	0f47      	lsrs	r7, r0, #29
 80002c6:	005e      	lsls	r6, r3, #1
 80002c8:	4339      	orrs	r1, r7
 80002ca:	031f      	lsls	r7, r3, #12
 80002cc:	0fdb      	lsrs	r3, r3, #31
 80002ce:	469c      	mov	ip, r3
 80002d0:	0065      	lsls	r5, r4, #1
 80002d2:	0a7b      	lsrs	r3, r7, #9
 80002d4:	0f57      	lsrs	r7, r2, #29
 80002d6:	431f      	orrs	r7, r3
 80002d8:	0d6d      	lsrs	r5, r5, #21
 80002da:	0fe4      	lsrs	r4, r4, #31
 80002dc:	0d76      	lsrs	r6, r6, #21
 80002de:	46a1      	mov	r9, r4
 80002e0:	00c0      	lsls	r0, r0, #3
 80002e2:	46b8      	mov	r8, r7
 80002e4:	00d2      	lsls	r2, r2, #3
 80002e6:	1bab      	subs	r3, r5, r6
 80002e8:	4564      	cmp	r4, ip
 80002ea:	d07b      	beq.n	80003e4 <__aeabi_dadd+0x130>
 80002ec:	2b00      	cmp	r3, #0
 80002ee:	dd5f      	ble.n	80003b0 <__aeabi_dadd+0xfc>
 80002f0:	2e00      	cmp	r6, #0
 80002f2:	d000      	beq.n	80002f6 <__aeabi_dadd+0x42>
 80002f4:	e0a4      	b.n	8000440 <__aeabi_dadd+0x18c>
 80002f6:	003e      	movs	r6, r7
 80002f8:	4316      	orrs	r6, r2
 80002fa:	d100      	bne.n	80002fe <__aeabi_dadd+0x4a>
 80002fc:	e112      	b.n	8000524 <__aeabi_dadd+0x270>
 80002fe:	1e5e      	subs	r6, r3, #1
 8000300:	2e00      	cmp	r6, #0
 8000302:	d000      	beq.n	8000306 <__aeabi_dadd+0x52>
 8000304:	e19e      	b.n	8000644 <__aeabi_dadd+0x390>
 8000306:	1a87      	subs	r7, r0, r2
 8000308:	4643      	mov	r3, r8
 800030a:	42b8      	cmp	r0, r7
 800030c:	4180      	sbcs	r0, r0
 800030e:	2501      	movs	r5, #1
 8000310:	1ac9      	subs	r1, r1, r3
 8000312:	4240      	negs	r0, r0
 8000314:	1a09      	subs	r1, r1, r0
 8000316:	020b      	lsls	r3, r1, #8
 8000318:	d400      	bmi.n	800031c <__aeabi_dadd+0x68>
 800031a:	e131      	b.n	8000580 <__aeabi_dadd+0x2cc>
 800031c:	0249      	lsls	r1, r1, #9
 800031e:	0a4e      	lsrs	r6, r1, #9
 8000320:	2e00      	cmp	r6, #0
 8000322:	d100      	bne.n	8000326 <__aeabi_dadd+0x72>
 8000324:	e16e      	b.n	8000604 <__aeabi_dadd+0x350>
 8000326:	0030      	movs	r0, r6
 8000328:	f001 f92a 	bl	8001580 <__clzsi2>
 800032c:	0003      	movs	r3, r0
 800032e:	3b08      	subs	r3, #8
 8000330:	2b1f      	cmp	r3, #31
 8000332:	dd00      	ble.n	8000336 <__aeabi_dadd+0x82>
 8000334:	e161      	b.n	80005fa <__aeabi_dadd+0x346>
 8000336:	2220      	movs	r2, #32
 8000338:	0039      	movs	r1, r7
 800033a:	1ad2      	subs	r2, r2, r3
 800033c:	409e      	lsls	r6, r3
 800033e:	40d1      	lsrs	r1, r2
 8000340:	409f      	lsls	r7, r3
 8000342:	430e      	orrs	r6, r1
 8000344:	429d      	cmp	r5, r3
 8000346:	dd00      	ble.n	800034a <__aeabi_dadd+0x96>
 8000348:	e151      	b.n	80005ee <__aeabi_dadd+0x33a>
 800034a:	1b5d      	subs	r5, r3, r5
 800034c:	1c6b      	adds	r3, r5, #1
 800034e:	2b1f      	cmp	r3, #31
 8000350:	dd00      	ble.n	8000354 <__aeabi_dadd+0xa0>
 8000352:	e17c      	b.n	800064e <__aeabi_dadd+0x39a>
 8000354:	2120      	movs	r1, #32
 8000356:	1ac9      	subs	r1, r1, r3
 8000358:	003d      	movs	r5, r7
 800035a:	0030      	movs	r0, r6
 800035c:	408f      	lsls	r7, r1
 800035e:	4088      	lsls	r0, r1
 8000360:	40dd      	lsrs	r5, r3
 8000362:	1e79      	subs	r1, r7, #1
 8000364:	418f      	sbcs	r7, r1
 8000366:	0031      	movs	r1, r6
 8000368:	2207      	movs	r2, #7
 800036a:	4328      	orrs	r0, r5
 800036c:	40d9      	lsrs	r1, r3
 800036e:	2500      	movs	r5, #0
 8000370:	4307      	orrs	r7, r0
 8000372:	403a      	ands	r2, r7
 8000374:	2a00      	cmp	r2, #0
 8000376:	d009      	beq.n	800038c <__aeabi_dadd+0xd8>
 8000378:	230f      	movs	r3, #15
 800037a:	403b      	ands	r3, r7
 800037c:	2b04      	cmp	r3, #4
 800037e:	d005      	beq.n	800038c <__aeabi_dadd+0xd8>
 8000380:	1d3b      	adds	r3, r7, #4
 8000382:	42bb      	cmp	r3, r7
 8000384:	41bf      	sbcs	r7, r7
 8000386:	427f      	negs	r7, r7
 8000388:	19c9      	adds	r1, r1, r7
 800038a:	001f      	movs	r7, r3
 800038c:	020b      	lsls	r3, r1, #8
 800038e:	d400      	bmi.n	8000392 <__aeabi_dadd+0xde>
 8000390:	e226      	b.n	80007e0 <__aeabi_dadd+0x52c>
 8000392:	1c6a      	adds	r2, r5, #1
 8000394:	4bc6      	ldr	r3, [pc, #792]	; (80006b0 <__aeabi_dadd+0x3fc>)
 8000396:	0555      	lsls	r5, r2, #21
 8000398:	0d6d      	lsrs	r5, r5, #21
 800039a:	429a      	cmp	r2, r3
 800039c:	d100      	bne.n	80003a0 <__aeabi_dadd+0xec>
 800039e:	e106      	b.n	80005ae <__aeabi_dadd+0x2fa>
 80003a0:	4ac4      	ldr	r2, [pc, #784]	; (80006b4 <__aeabi_dadd+0x400>)
 80003a2:	08ff      	lsrs	r7, r7, #3
 80003a4:	400a      	ands	r2, r1
 80003a6:	0753      	lsls	r3, r2, #29
 80003a8:	0252      	lsls	r2, r2, #9
 80003aa:	433b      	orrs	r3, r7
 80003ac:	0b12      	lsrs	r2, r2, #12
 80003ae:	e08e      	b.n	80004ce <__aeabi_dadd+0x21a>
 80003b0:	2b00      	cmp	r3, #0
 80003b2:	d000      	beq.n	80003b6 <__aeabi_dadd+0x102>
 80003b4:	e0b8      	b.n	8000528 <__aeabi_dadd+0x274>
 80003b6:	1c6b      	adds	r3, r5, #1
 80003b8:	055b      	lsls	r3, r3, #21
 80003ba:	0d5b      	lsrs	r3, r3, #21
 80003bc:	2b01      	cmp	r3, #1
 80003be:	dc00      	bgt.n	80003c2 <__aeabi_dadd+0x10e>
 80003c0:	e130      	b.n	8000624 <__aeabi_dadd+0x370>
 80003c2:	1a87      	subs	r7, r0, r2
 80003c4:	4643      	mov	r3, r8
 80003c6:	42b8      	cmp	r0, r7
 80003c8:	41b6      	sbcs	r6, r6
 80003ca:	1acb      	subs	r3, r1, r3
 80003cc:	4276      	negs	r6, r6
 80003ce:	1b9e      	subs	r6, r3, r6
 80003d0:	0233      	lsls	r3, r6, #8
 80003d2:	d500      	bpl.n	80003d6 <__aeabi_dadd+0x122>
 80003d4:	e14c      	b.n	8000670 <__aeabi_dadd+0x3bc>
 80003d6:	003b      	movs	r3, r7
 80003d8:	4333      	orrs	r3, r6
 80003da:	d1a1      	bne.n	8000320 <__aeabi_dadd+0x6c>
 80003dc:	2200      	movs	r2, #0
 80003de:	2400      	movs	r4, #0
 80003e0:	2500      	movs	r5, #0
 80003e2:	e070      	b.n	80004c6 <__aeabi_dadd+0x212>
 80003e4:	2b00      	cmp	r3, #0
 80003e6:	dc00      	bgt.n	80003ea <__aeabi_dadd+0x136>
 80003e8:	e0e5      	b.n	80005b6 <__aeabi_dadd+0x302>
 80003ea:	2e00      	cmp	r6, #0
 80003ec:	d100      	bne.n	80003f0 <__aeabi_dadd+0x13c>
 80003ee:	e083      	b.n	80004f8 <__aeabi_dadd+0x244>
 80003f0:	4eaf      	ldr	r6, [pc, #700]	; (80006b0 <__aeabi_dadd+0x3fc>)
 80003f2:	42b5      	cmp	r5, r6
 80003f4:	d060      	beq.n	80004b8 <__aeabi_dadd+0x204>
 80003f6:	2680      	movs	r6, #128	; 0x80
 80003f8:	0436      	lsls	r6, r6, #16
 80003fa:	4337      	orrs	r7, r6
 80003fc:	46b8      	mov	r8, r7
 80003fe:	2b38      	cmp	r3, #56	; 0x38
 8000400:	dc00      	bgt.n	8000404 <__aeabi_dadd+0x150>
 8000402:	e13e      	b.n	8000682 <__aeabi_dadd+0x3ce>
 8000404:	4643      	mov	r3, r8
 8000406:	4313      	orrs	r3, r2
 8000408:	001f      	movs	r7, r3
 800040a:	1e7a      	subs	r2, r7, #1
 800040c:	4197      	sbcs	r7, r2
 800040e:	183f      	adds	r7, r7, r0
 8000410:	4287      	cmp	r7, r0
 8000412:	4180      	sbcs	r0, r0
 8000414:	4240      	negs	r0, r0
 8000416:	1809      	adds	r1, r1, r0
 8000418:	020b      	lsls	r3, r1, #8
 800041a:	d400      	bmi.n	800041e <__aeabi_dadd+0x16a>
 800041c:	e0b0      	b.n	8000580 <__aeabi_dadd+0x2cc>
 800041e:	4ba4      	ldr	r3, [pc, #656]	; (80006b0 <__aeabi_dadd+0x3fc>)
 8000420:	3501      	adds	r5, #1
 8000422:	429d      	cmp	r5, r3
 8000424:	d100      	bne.n	8000428 <__aeabi_dadd+0x174>
 8000426:	e0c3      	b.n	80005b0 <__aeabi_dadd+0x2fc>
 8000428:	4aa2      	ldr	r2, [pc, #648]	; (80006b4 <__aeabi_dadd+0x400>)
 800042a:	087b      	lsrs	r3, r7, #1
 800042c:	400a      	ands	r2, r1
 800042e:	2101      	movs	r1, #1
 8000430:	400f      	ands	r7, r1
 8000432:	431f      	orrs	r7, r3
 8000434:	0851      	lsrs	r1, r2, #1
 8000436:	07d3      	lsls	r3, r2, #31
 8000438:	2207      	movs	r2, #7
 800043a:	431f      	orrs	r7, r3
 800043c:	403a      	ands	r2, r7
 800043e:	e799      	b.n	8000374 <__aeabi_dadd+0xc0>
 8000440:	4e9b      	ldr	r6, [pc, #620]	; (80006b0 <__aeabi_dadd+0x3fc>)
 8000442:	42b5      	cmp	r5, r6
 8000444:	d038      	beq.n	80004b8 <__aeabi_dadd+0x204>
 8000446:	2680      	movs	r6, #128	; 0x80
 8000448:	0436      	lsls	r6, r6, #16
 800044a:	4337      	orrs	r7, r6
 800044c:	46b8      	mov	r8, r7
 800044e:	2b38      	cmp	r3, #56	; 0x38
 8000450:	dd00      	ble.n	8000454 <__aeabi_dadd+0x1a0>
 8000452:	e0dc      	b.n	800060e <__aeabi_dadd+0x35a>
 8000454:	2b1f      	cmp	r3, #31
 8000456:	dc00      	bgt.n	800045a <__aeabi_dadd+0x1a6>
 8000458:	e130      	b.n	80006bc <__aeabi_dadd+0x408>
 800045a:	001e      	movs	r6, r3
 800045c:	4647      	mov	r7, r8
 800045e:	3e20      	subs	r6, #32
 8000460:	40f7      	lsrs	r7, r6
 8000462:	46bc      	mov	ip, r7
 8000464:	2b20      	cmp	r3, #32
 8000466:	d004      	beq.n	8000472 <__aeabi_dadd+0x1be>
 8000468:	2640      	movs	r6, #64	; 0x40
 800046a:	1af3      	subs	r3, r6, r3
 800046c:	4646      	mov	r6, r8
 800046e:	409e      	lsls	r6, r3
 8000470:	4332      	orrs	r2, r6
 8000472:	0017      	movs	r7, r2
 8000474:	4663      	mov	r3, ip
 8000476:	1e7a      	subs	r2, r7, #1
 8000478:	4197      	sbcs	r7, r2
 800047a:	431f      	orrs	r7, r3
 800047c:	e0cc      	b.n	8000618 <__aeabi_dadd+0x364>
 800047e:	2b00      	cmp	r3, #0
 8000480:	d100      	bne.n	8000484 <__aeabi_dadd+0x1d0>
 8000482:	e204      	b.n	800088e <__aeabi_dadd+0x5da>
 8000484:	4643      	mov	r3, r8
 8000486:	4313      	orrs	r3, r2
 8000488:	d100      	bne.n	800048c <__aeabi_dadd+0x1d8>
 800048a:	e159      	b.n	8000740 <__aeabi_dadd+0x48c>
 800048c:	074b      	lsls	r3, r1, #29
 800048e:	08c0      	lsrs	r0, r0, #3
 8000490:	4318      	orrs	r0, r3
 8000492:	2380      	movs	r3, #128	; 0x80
 8000494:	08c9      	lsrs	r1, r1, #3
 8000496:	031b      	lsls	r3, r3, #12
 8000498:	4219      	tst	r1, r3
 800049a:	d008      	beq.n	80004ae <__aeabi_dadd+0x1fa>
 800049c:	4645      	mov	r5, r8
 800049e:	08ed      	lsrs	r5, r5, #3
 80004a0:	421d      	tst	r5, r3
 80004a2:	d104      	bne.n	80004ae <__aeabi_dadd+0x1fa>
 80004a4:	4643      	mov	r3, r8
 80004a6:	08d0      	lsrs	r0, r2, #3
 80004a8:	0759      	lsls	r1, r3, #29
 80004aa:	4308      	orrs	r0, r1
 80004ac:	0029      	movs	r1, r5
 80004ae:	0f42      	lsrs	r2, r0, #29
 80004b0:	00c9      	lsls	r1, r1, #3
 80004b2:	4d7f      	ldr	r5, [pc, #508]	; (80006b0 <__aeabi_dadd+0x3fc>)
 80004b4:	4311      	orrs	r1, r2
 80004b6:	00c0      	lsls	r0, r0, #3
 80004b8:	074b      	lsls	r3, r1, #29
 80004ba:	08ca      	lsrs	r2, r1, #3
 80004bc:	497c      	ldr	r1, [pc, #496]	; (80006b0 <__aeabi_dadd+0x3fc>)
 80004be:	08c0      	lsrs	r0, r0, #3
 80004c0:	4303      	orrs	r3, r0
 80004c2:	428d      	cmp	r5, r1
 80004c4:	d068      	beq.n	8000598 <__aeabi_dadd+0x2e4>
 80004c6:	0312      	lsls	r2, r2, #12
 80004c8:	056d      	lsls	r5, r5, #21
 80004ca:	0b12      	lsrs	r2, r2, #12
 80004cc:	0d6d      	lsrs	r5, r5, #21
 80004ce:	2100      	movs	r1, #0
 80004d0:	0312      	lsls	r2, r2, #12
 80004d2:	0018      	movs	r0, r3
 80004d4:	0b13      	lsrs	r3, r2, #12
 80004d6:	0d0a      	lsrs	r2, r1, #20
 80004d8:	0512      	lsls	r2, r2, #20
 80004da:	431a      	orrs	r2, r3
 80004dc:	4b76      	ldr	r3, [pc, #472]	; (80006b8 <__aeabi_dadd+0x404>)
 80004de:	052d      	lsls	r5, r5, #20
 80004e0:	4013      	ands	r3, r2
 80004e2:	432b      	orrs	r3, r5
 80004e4:	005b      	lsls	r3, r3, #1
 80004e6:	07e4      	lsls	r4, r4, #31
 80004e8:	085b      	lsrs	r3, r3, #1
 80004ea:	4323      	orrs	r3, r4
 80004ec:	0019      	movs	r1, r3
 80004ee:	bc1c      	pop	{r2, r3, r4}
 80004f0:	4690      	mov	r8, r2
 80004f2:	4699      	mov	r9, r3
 80004f4:	46a2      	mov	sl, r4
 80004f6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80004f8:	003e      	movs	r6, r7
 80004fa:	4316      	orrs	r6, r2
 80004fc:	d012      	beq.n	8000524 <__aeabi_dadd+0x270>
 80004fe:	1e5e      	subs	r6, r3, #1
 8000500:	2e00      	cmp	r6, #0
 8000502:	d000      	beq.n	8000506 <__aeabi_dadd+0x252>
 8000504:	e100      	b.n	8000708 <__aeabi_dadd+0x454>
 8000506:	1887      	adds	r7, r0, r2
 8000508:	4287      	cmp	r7, r0
 800050a:	4180      	sbcs	r0, r0
 800050c:	4441      	add	r1, r8
 800050e:	4240      	negs	r0, r0
 8000510:	1809      	adds	r1, r1, r0
 8000512:	2501      	movs	r5, #1
 8000514:	020b      	lsls	r3, r1, #8
 8000516:	d533      	bpl.n	8000580 <__aeabi_dadd+0x2cc>
 8000518:	2502      	movs	r5, #2
 800051a:	e785      	b.n	8000428 <__aeabi_dadd+0x174>
 800051c:	4664      	mov	r4, ip
 800051e:	0033      	movs	r3, r6
 8000520:	4641      	mov	r1, r8
 8000522:	0010      	movs	r0, r2
 8000524:	001d      	movs	r5, r3
 8000526:	e7c7      	b.n	80004b8 <__aeabi_dadd+0x204>
 8000528:	2d00      	cmp	r5, #0
 800052a:	d000      	beq.n	800052e <__aeabi_dadd+0x27a>
 800052c:	e0da      	b.n	80006e4 <__aeabi_dadd+0x430>
 800052e:	000c      	movs	r4, r1
 8000530:	4304      	orrs	r4, r0
 8000532:	d0f3      	beq.n	800051c <__aeabi_dadd+0x268>
 8000534:	1c5c      	adds	r4, r3, #1
 8000536:	d100      	bne.n	800053a <__aeabi_dadd+0x286>
 8000538:	e19f      	b.n	800087a <__aeabi_dadd+0x5c6>
 800053a:	4c5d      	ldr	r4, [pc, #372]	; (80006b0 <__aeabi_dadd+0x3fc>)
 800053c:	42a6      	cmp	r6, r4
 800053e:	d100      	bne.n	8000542 <__aeabi_dadd+0x28e>
 8000540:	e12f      	b.n	80007a2 <__aeabi_dadd+0x4ee>
 8000542:	43db      	mvns	r3, r3
 8000544:	2b38      	cmp	r3, #56	; 0x38
 8000546:	dd00      	ble.n	800054a <__aeabi_dadd+0x296>
 8000548:	e166      	b.n	8000818 <__aeabi_dadd+0x564>
 800054a:	2b1f      	cmp	r3, #31
 800054c:	dd00      	ble.n	8000550 <__aeabi_dadd+0x29c>
 800054e:	e183      	b.n	8000858 <__aeabi_dadd+0x5a4>
 8000550:	2420      	movs	r4, #32
 8000552:	0005      	movs	r5, r0
 8000554:	1ae4      	subs	r4, r4, r3
 8000556:	000f      	movs	r7, r1
 8000558:	40dd      	lsrs	r5, r3
 800055a:	40d9      	lsrs	r1, r3
 800055c:	40a0      	lsls	r0, r4
 800055e:	4643      	mov	r3, r8
 8000560:	40a7      	lsls	r7, r4
 8000562:	1a5b      	subs	r3, r3, r1
 8000564:	1e44      	subs	r4, r0, #1
 8000566:	41a0      	sbcs	r0, r4
 8000568:	4698      	mov	r8, r3
 800056a:	432f      	orrs	r7, r5
 800056c:	4338      	orrs	r0, r7
 800056e:	1a17      	subs	r7, r2, r0
 8000570:	42ba      	cmp	r2, r7
 8000572:	4192      	sbcs	r2, r2
 8000574:	4643      	mov	r3, r8
 8000576:	4252      	negs	r2, r2
 8000578:	1a99      	subs	r1, r3, r2
 800057a:	4664      	mov	r4, ip
 800057c:	0035      	movs	r5, r6
 800057e:	e6ca      	b.n	8000316 <__aeabi_dadd+0x62>
 8000580:	2207      	movs	r2, #7
 8000582:	403a      	ands	r2, r7
 8000584:	2a00      	cmp	r2, #0
 8000586:	d000      	beq.n	800058a <__aeabi_dadd+0x2d6>
 8000588:	e6f6      	b.n	8000378 <__aeabi_dadd+0xc4>
 800058a:	074b      	lsls	r3, r1, #29
 800058c:	08ca      	lsrs	r2, r1, #3
 800058e:	4948      	ldr	r1, [pc, #288]	; (80006b0 <__aeabi_dadd+0x3fc>)
 8000590:	08ff      	lsrs	r7, r7, #3
 8000592:	433b      	orrs	r3, r7
 8000594:	428d      	cmp	r5, r1
 8000596:	d196      	bne.n	80004c6 <__aeabi_dadd+0x212>
 8000598:	0019      	movs	r1, r3
 800059a:	4311      	orrs	r1, r2
 800059c:	d100      	bne.n	80005a0 <__aeabi_dadd+0x2ec>
 800059e:	e19e      	b.n	80008de <__aeabi_dadd+0x62a>
 80005a0:	2180      	movs	r1, #128	; 0x80
 80005a2:	0309      	lsls	r1, r1, #12
 80005a4:	430a      	orrs	r2, r1
 80005a6:	0312      	lsls	r2, r2, #12
 80005a8:	0b12      	lsrs	r2, r2, #12
 80005aa:	4d41      	ldr	r5, [pc, #260]	; (80006b0 <__aeabi_dadd+0x3fc>)
 80005ac:	e78f      	b.n	80004ce <__aeabi_dadd+0x21a>
 80005ae:	0015      	movs	r5, r2
 80005b0:	2200      	movs	r2, #0
 80005b2:	2300      	movs	r3, #0
 80005b4:	e78b      	b.n	80004ce <__aeabi_dadd+0x21a>
 80005b6:	2b00      	cmp	r3, #0
 80005b8:	d000      	beq.n	80005bc <__aeabi_dadd+0x308>
 80005ba:	e0c7      	b.n	800074c <__aeabi_dadd+0x498>
 80005bc:	1c6b      	adds	r3, r5, #1
 80005be:	055f      	lsls	r7, r3, #21
 80005c0:	0d7f      	lsrs	r7, r7, #21
 80005c2:	2f01      	cmp	r7, #1
 80005c4:	dc00      	bgt.n	80005c8 <__aeabi_dadd+0x314>
 80005c6:	e0f1      	b.n	80007ac <__aeabi_dadd+0x4f8>
 80005c8:	4d39      	ldr	r5, [pc, #228]	; (80006b0 <__aeabi_dadd+0x3fc>)
 80005ca:	42ab      	cmp	r3, r5
 80005cc:	d100      	bne.n	80005d0 <__aeabi_dadd+0x31c>
 80005ce:	e0b9      	b.n	8000744 <__aeabi_dadd+0x490>
 80005d0:	1885      	adds	r5, r0, r2
 80005d2:	000a      	movs	r2, r1
 80005d4:	4285      	cmp	r5, r0
 80005d6:	4189      	sbcs	r1, r1
 80005d8:	4442      	add	r2, r8
 80005da:	4249      	negs	r1, r1
 80005dc:	1851      	adds	r1, r2, r1
 80005de:	2207      	movs	r2, #7
 80005e0:	07cf      	lsls	r7, r1, #31
 80005e2:	086d      	lsrs	r5, r5, #1
 80005e4:	432f      	orrs	r7, r5
 80005e6:	0849      	lsrs	r1, r1, #1
 80005e8:	403a      	ands	r2, r7
 80005ea:	001d      	movs	r5, r3
 80005ec:	e6c2      	b.n	8000374 <__aeabi_dadd+0xc0>
 80005ee:	2207      	movs	r2, #7
 80005f0:	4930      	ldr	r1, [pc, #192]	; (80006b4 <__aeabi_dadd+0x400>)
 80005f2:	1aed      	subs	r5, r5, r3
 80005f4:	4031      	ands	r1, r6
 80005f6:	403a      	ands	r2, r7
 80005f8:	e6bc      	b.n	8000374 <__aeabi_dadd+0xc0>
 80005fa:	003e      	movs	r6, r7
 80005fc:	3828      	subs	r0, #40	; 0x28
 80005fe:	4086      	lsls	r6, r0
 8000600:	2700      	movs	r7, #0
 8000602:	e69f      	b.n	8000344 <__aeabi_dadd+0x90>
 8000604:	0038      	movs	r0, r7
 8000606:	f000 ffbb 	bl	8001580 <__clzsi2>
 800060a:	3020      	adds	r0, #32
 800060c:	e68e      	b.n	800032c <__aeabi_dadd+0x78>
 800060e:	4643      	mov	r3, r8
 8000610:	4313      	orrs	r3, r2
 8000612:	001f      	movs	r7, r3
 8000614:	1e7a      	subs	r2, r7, #1
 8000616:	4197      	sbcs	r7, r2
 8000618:	1bc7      	subs	r7, r0, r7
 800061a:	42b8      	cmp	r0, r7
 800061c:	4180      	sbcs	r0, r0
 800061e:	4240      	negs	r0, r0
 8000620:	1a09      	subs	r1, r1, r0
 8000622:	e678      	b.n	8000316 <__aeabi_dadd+0x62>
 8000624:	000e      	movs	r6, r1
 8000626:	003b      	movs	r3, r7
 8000628:	4306      	orrs	r6, r0
 800062a:	4313      	orrs	r3, r2
 800062c:	2d00      	cmp	r5, #0
 800062e:	d161      	bne.n	80006f4 <__aeabi_dadd+0x440>
 8000630:	2e00      	cmp	r6, #0
 8000632:	d000      	beq.n	8000636 <__aeabi_dadd+0x382>
 8000634:	e0f4      	b.n	8000820 <__aeabi_dadd+0x56c>
 8000636:	2b00      	cmp	r3, #0
 8000638:	d100      	bne.n	800063c <__aeabi_dadd+0x388>
 800063a:	e11b      	b.n	8000874 <__aeabi_dadd+0x5c0>
 800063c:	4664      	mov	r4, ip
 800063e:	0039      	movs	r1, r7
 8000640:	0010      	movs	r0, r2
 8000642:	e739      	b.n	80004b8 <__aeabi_dadd+0x204>
 8000644:	4f1a      	ldr	r7, [pc, #104]	; (80006b0 <__aeabi_dadd+0x3fc>)
 8000646:	42bb      	cmp	r3, r7
 8000648:	d07a      	beq.n	8000740 <__aeabi_dadd+0x48c>
 800064a:	0033      	movs	r3, r6
 800064c:	e6ff      	b.n	800044e <__aeabi_dadd+0x19a>
 800064e:	0030      	movs	r0, r6
 8000650:	3d1f      	subs	r5, #31
 8000652:	40e8      	lsrs	r0, r5
 8000654:	2b20      	cmp	r3, #32
 8000656:	d003      	beq.n	8000660 <__aeabi_dadd+0x3ac>
 8000658:	2140      	movs	r1, #64	; 0x40
 800065a:	1acb      	subs	r3, r1, r3
 800065c:	409e      	lsls	r6, r3
 800065e:	4337      	orrs	r7, r6
 8000660:	1e7b      	subs	r3, r7, #1
 8000662:	419f      	sbcs	r7, r3
 8000664:	2207      	movs	r2, #7
 8000666:	4307      	orrs	r7, r0
 8000668:	403a      	ands	r2, r7
 800066a:	2100      	movs	r1, #0
 800066c:	2500      	movs	r5, #0
 800066e:	e789      	b.n	8000584 <__aeabi_dadd+0x2d0>
 8000670:	1a17      	subs	r7, r2, r0
 8000672:	4643      	mov	r3, r8
 8000674:	42ba      	cmp	r2, r7
 8000676:	41b6      	sbcs	r6, r6
 8000678:	1a59      	subs	r1, r3, r1
 800067a:	4276      	negs	r6, r6
 800067c:	1b8e      	subs	r6, r1, r6
 800067e:	4664      	mov	r4, ip
 8000680:	e64e      	b.n	8000320 <__aeabi_dadd+0x6c>
 8000682:	2b1f      	cmp	r3, #31
 8000684:	dd00      	ble.n	8000688 <__aeabi_dadd+0x3d4>
 8000686:	e0ad      	b.n	80007e4 <__aeabi_dadd+0x530>
 8000688:	2620      	movs	r6, #32
 800068a:	4647      	mov	r7, r8
 800068c:	1af6      	subs	r6, r6, r3
 800068e:	40b7      	lsls	r7, r6
 8000690:	46b9      	mov	r9, r7
 8000692:	0017      	movs	r7, r2
 8000694:	46b2      	mov	sl, r6
 8000696:	40df      	lsrs	r7, r3
 8000698:	464e      	mov	r6, r9
 800069a:	433e      	orrs	r6, r7
 800069c:	0037      	movs	r7, r6
 800069e:	4656      	mov	r6, sl
 80006a0:	40b2      	lsls	r2, r6
 80006a2:	1e56      	subs	r6, r2, #1
 80006a4:	41b2      	sbcs	r2, r6
 80006a6:	4317      	orrs	r7, r2
 80006a8:	4642      	mov	r2, r8
 80006aa:	40da      	lsrs	r2, r3
 80006ac:	1889      	adds	r1, r1, r2
 80006ae:	e6ae      	b.n	800040e <__aeabi_dadd+0x15a>
 80006b0:	000007ff 	.word	0x000007ff
 80006b4:	ff7fffff 	.word	0xff7fffff
 80006b8:	800fffff 	.word	0x800fffff
 80006bc:	2620      	movs	r6, #32
 80006be:	4647      	mov	r7, r8
 80006c0:	1af6      	subs	r6, r6, r3
 80006c2:	40b7      	lsls	r7, r6
 80006c4:	46b9      	mov	r9, r7
 80006c6:	0017      	movs	r7, r2
 80006c8:	46b2      	mov	sl, r6
 80006ca:	40df      	lsrs	r7, r3
 80006cc:	464e      	mov	r6, r9
 80006ce:	433e      	orrs	r6, r7
 80006d0:	0037      	movs	r7, r6
 80006d2:	4656      	mov	r6, sl
 80006d4:	40b2      	lsls	r2, r6
 80006d6:	1e56      	subs	r6, r2, #1
 80006d8:	41b2      	sbcs	r2, r6
 80006da:	4317      	orrs	r7, r2
 80006dc:	4642      	mov	r2, r8
 80006de:	40da      	lsrs	r2, r3
 80006e0:	1a89      	subs	r1, r1, r2
 80006e2:	e799      	b.n	8000618 <__aeabi_dadd+0x364>
 80006e4:	4c7f      	ldr	r4, [pc, #508]	; (80008e4 <__aeabi_dadd+0x630>)
 80006e6:	42a6      	cmp	r6, r4
 80006e8:	d05b      	beq.n	80007a2 <__aeabi_dadd+0x4ee>
 80006ea:	2480      	movs	r4, #128	; 0x80
 80006ec:	0424      	lsls	r4, r4, #16
 80006ee:	425b      	negs	r3, r3
 80006f0:	4321      	orrs	r1, r4
 80006f2:	e727      	b.n	8000544 <__aeabi_dadd+0x290>
 80006f4:	2e00      	cmp	r6, #0
 80006f6:	d10c      	bne.n	8000712 <__aeabi_dadd+0x45e>
 80006f8:	2b00      	cmp	r3, #0
 80006fa:	d100      	bne.n	80006fe <__aeabi_dadd+0x44a>
 80006fc:	e0cb      	b.n	8000896 <__aeabi_dadd+0x5e2>
 80006fe:	4664      	mov	r4, ip
 8000700:	0039      	movs	r1, r7
 8000702:	0010      	movs	r0, r2
 8000704:	4d77      	ldr	r5, [pc, #476]	; (80008e4 <__aeabi_dadd+0x630>)
 8000706:	e6d7      	b.n	80004b8 <__aeabi_dadd+0x204>
 8000708:	4f76      	ldr	r7, [pc, #472]	; (80008e4 <__aeabi_dadd+0x630>)
 800070a:	42bb      	cmp	r3, r7
 800070c:	d018      	beq.n	8000740 <__aeabi_dadd+0x48c>
 800070e:	0033      	movs	r3, r6
 8000710:	e675      	b.n	80003fe <__aeabi_dadd+0x14a>
 8000712:	2b00      	cmp	r3, #0
 8000714:	d014      	beq.n	8000740 <__aeabi_dadd+0x48c>
 8000716:	074b      	lsls	r3, r1, #29
 8000718:	08c0      	lsrs	r0, r0, #3
 800071a:	4318      	orrs	r0, r3
 800071c:	2380      	movs	r3, #128	; 0x80
 800071e:	08c9      	lsrs	r1, r1, #3
 8000720:	031b      	lsls	r3, r3, #12
 8000722:	4219      	tst	r1, r3
 8000724:	d007      	beq.n	8000736 <__aeabi_dadd+0x482>
 8000726:	08fc      	lsrs	r4, r7, #3
 8000728:	421c      	tst	r4, r3
 800072a:	d104      	bne.n	8000736 <__aeabi_dadd+0x482>
 800072c:	0779      	lsls	r1, r7, #29
 800072e:	08d0      	lsrs	r0, r2, #3
 8000730:	4308      	orrs	r0, r1
 8000732:	46e1      	mov	r9, ip
 8000734:	0021      	movs	r1, r4
 8000736:	464c      	mov	r4, r9
 8000738:	0f42      	lsrs	r2, r0, #29
 800073a:	00c9      	lsls	r1, r1, #3
 800073c:	4311      	orrs	r1, r2
 800073e:	00c0      	lsls	r0, r0, #3
 8000740:	4d68      	ldr	r5, [pc, #416]	; (80008e4 <__aeabi_dadd+0x630>)
 8000742:	e6b9      	b.n	80004b8 <__aeabi_dadd+0x204>
 8000744:	001d      	movs	r5, r3
 8000746:	2200      	movs	r2, #0
 8000748:	2300      	movs	r3, #0
 800074a:	e6c0      	b.n	80004ce <__aeabi_dadd+0x21a>
 800074c:	2d00      	cmp	r5, #0
 800074e:	d15b      	bne.n	8000808 <__aeabi_dadd+0x554>
 8000750:	000d      	movs	r5, r1
 8000752:	4305      	orrs	r5, r0
 8000754:	d100      	bne.n	8000758 <__aeabi_dadd+0x4a4>
 8000756:	e6e2      	b.n	800051e <__aeabi_dadd+0x26a>
 8000758:	1c5d      	adds	r5, r3, #1
 800075a:	d100      	bne.n	800075e <__aeabi_dadd+0x4aa>
 800075c:	e0b0      	b.n	80008c0 <__aeabi_dadd+0x60c>
 800075e:	4d61      	ldr	r5, [pc, #388]	; (80008e4 <__aeabi_dadd+0x630>)
 8000760:	42ae      	cmp	r6, r5
 8000762:	d01f      	beq.n	80007a4 <__aeabi_dadd+0x4f0>
 8000764:	43db      	mvns	r3, r3
 8000766:	2b38      	cmp	r3, #56	; 0x38
 8000768:	dc71      	bgt.n	800084e <__aeabi_dadd+0x59a>
 800076a:	2b1f      	cmp	r3, #31
 800076c:	dd00      	ble.n	8000770 <__aeabi_dadd+0x4bc>
 800076e:	e096      	b.n	800089e <__aeabi_dadd+0x5ea>
 8000770:	2520      	movs	r5, #32
 8000772:	000f      	movs	r7, r1
 8000774:	1aed      	subs	r5, r5, r3
 8000776:	40af      	lsls	r7, r5
 8000778:	46b9      	mov	r9, r7
 800077a:	0007      	movs	r7, r0
 800077c:	46aa      	mov	sl, r5
 800077e:	40df      	lsrs	r7, r3
 8000780:	464d      	mov	r5, r9
 8000782:	433d      	orrs	r5, r7
 8000784:	002f      	movs	r7, r5
 8000786:	4655      	mov	r5, sl
 8000788:	40a8      	lsls	r0, r5
 800078a:	40d9      	lsrs	r1, r3
 800078c:	1e45      	subs	r5, r0, #1
 800078e:	41a8      	sbcs	r0, r5
 8000790:	4488      	add	r8, r1
 8000792:	4307      	orrs	r7, r0
 8000794:	18bf      	adds	r7, r7, r2
 8000796:	4297      	cmp	r7, r2
 8000798:	4192      	sbcs	r2, r2
 800079a:	4251      	negs	r1, r2
 800079c:	4441      	add	r1, r8
 800079e:	0035      	movs	r5, r6
 80007a0:	e63a      	b.n	8000418 <__aeabi_dadd+0x164>
 80007a2:	4664      	mov	r4, ip
 80007a4:	0035      	movs	r5, r6
 80007a6:	4641      	mov	r1, r8
 80007a8:	0010      	movs	r0, r2
 80007aa:	e685      	b.n	80004b8 <__aeabi_dadd+0x204>
 80007ac:	000b      	movs	r3, r1
 80007ae:	4303      	orrs	r3, r0
 80007b0:	2d00      	cmp	r5, #0
 80007b2:	d000      	beq.n	80007b6 <__aeabi_dadd+0x502>
 80007b4:	e663      	b.n	800047e <__aeabi_dadd+0x1ca>
 80007b6:	2b00      	cmp	r3, #0
 80007b8:	d0f5      	beq.n	80007a6 <__aeabi_dadd+0x4f2>
 80007ba:	4643      	mov	r3, r8
 80007bc:	4313      	orrs	r3, r2
 80007be:	d100      	bne.n	80007c2 <__aeabi_dadd+0x50e>
 80007c0:	e67a      	b.n	80004b8 <__aeabi_dadd+0x204>
 80007c2:	1887      	adds	r7, r0, r2
 80007c4:	4287      	cmp	r7, r0
 80007c6:	4180      	sbcs	r0, r0
 80007c8:	2207      	movs	r2, #7
 80007ca:	4441      	add	r1, r8
 80007cc:	4240      	negs	r0, r0
 80007ce:	1809      	adds	r1, r1, r0
 80007d0:	403a      	ands	r2, r7
 80007d2:	020b      	lsls	r3, r1, #8
 80007d4:	d400      	bmi.n	80007d8 <__aeabi_dadd+0x524>
 80007d6:	e6d5      	b.n	8000584 <__aeabi_dadd+0x2d0>
 80007d8:	4b43      	ldr	r3, [pc, #268]	; (80008e8 <__aeabi_dadd+0x634>)
 80007da:	3501      	adds	r5, #1
 80007dc:	4019      	ands	r1, r3
 80007de:	e5c9      	b.n	8000374 <__aeabi_dadd+0xc0>
 80007e0:	0038      	movs	r0, r7
 80007e2:	e669      	b.n	80004b8 <__aeabi_dadd+0x204>
 80007e4:	001e      	movs	r6, r3
 80007e6:	4647      	mov	r7, r8
 80007e8:	3e20      	subs	r6, #32
 80007ea:	40f7      	lsrs	r7, r6
 80007ec:	46bc      	mov	ip, r7
 80007ee:	2b20      	cmp	r3, #32
 80007f0:	d004      	beq.n	80007fc <__aeabi_dadd+0x548>
 80007f2:	2640      	movs	r6, #64	; 0x40
 80007f4:	1af3      	subs	r3, r6, r3
 80007f6:	4646      	mov	r6, r8
 80007f8:	409e      	lsls	r6, r3
 80007fa:	4332      	orrs	r2, r6
 80007fc:	0017      	movs	r7, r2
 80007fe:	4663      	mov	r3, ip
 8000800:	1e7a      	subs	r2, r7, #1
 8000802:	4197      	sbcs	r7, r2
 8000804:	431f      	orrs	r7, r3
 8000806:	e602      	b.n	800040e <__aeabi_dadd+0x15a>
 8000808:	4d36      	ldr	r5, [pc, #216]	; (80008e4 <__aeabi_dadd+0x630>)
 800080a:	42ae      	cmp	r6, r5
 800080c:	d0ca      	beq.n	80007a4 <__aeabi_dadd+0x4f0>
 800080e:	2580      	movs	r5, #128	; 0x80
 8000810:	042d      	lsls	r5, r5, #16
 8000812:	425b      	negs	r3, r3
 8000814:	4329      	orrs	r1, r5
 8000816:	e7a6      	b.n	8000766 <__aeabi_dadd+0x4b2>
 8000818:	4308      	orrs	r0, r1
 800081a:	1e41      	subs	r1, r0, #1
 800081c:	4188      	sbcs	r0, r1
 800081e:	e6a6      	b.n	800056e <__aeabi_dadd+0x2ba>
 8000820:	2b00      	cmp	r3, #0
 8000822:	d100      	bne.n	8000826 <__aeabi_dadd+0x572>
 8000824:	e648      	b.n	80004b8 <__aeabi_dadd+0x204>
 8000826:	1a87      	subs	r7, r0, r2
 8000828:	4643      	mov	r3, r8
 800082a:	42b8      	cmp	r0, r7
 800082c:	41b6      	sbcs	r6, r6
 800082e:	1acb      	subs	r3, r1, r3
 8000830:	4276      	negs	r6, r6
 8000832:	1b9e      	subs	r6, r3, r6
 8000834:	0233      	lsls	r3, r6, #8
 8000836:	d54b      	bpl.n	80008d0 <__aeabi_dadd+0x61c>
 8000838:	1a17      	subs	r7, r2, r0
 800083a:	4643      	mov	r3, r8
 800083c:	42ba      	cmp	r2, r7
 800083e:	4192      	sbcs	r2, r2
 8000840:	1a59      	subs	r1, r3, r1
 8000842:	4252      	negs	r2, r2
 8000844:	1a89      	subs	r1, r1, r2
 8000846:	2207      	movs	r2, #7
 8000848:	4664      	mov	r4, ip
 800084a:	403a      	ands	r2, r7
 800084c:	e592      	b.n	8000374 <__aeabi_dadd+0xc0>
 800084e:	4301      	orrs	r1, r0
 8000850:	000f      	movs	r7, r1
 8000852:	1e79      	subs	r1, r7, #1
 8000854:	418f      	sbcs	r7, r1
 8000856:	e79d      	b.n	8000794 <__aeabi_dadd+0x4e0>
 8000858:	001c      	movs	r4, r3
 800085a:	000f      	movs	r7, r1
 800085c:	3c20      	subs	r4, #32
 800085e:	40e7      	lsrs	r7, r4
 8000860:	2b20      	cmp	r3, #32
 8000862:	d003      	beq.n	800086c <__aeabi_dadd+0x5b8>
 8000864:	2440      	movs	r4, #64	; 0x40
 8000866:	1ae3      	subs	r3, r4, r3
 8000868:	4099      	lsls	r1, r3
 800086a:	4308      	orrs	r0, r1
 800086c:	1e41      	subs	r1, r0, #1
 800086e:	4188      	sbcs	r0, r1
 8000870:	4338      	orrs	r0, r7
 8000872:	e67c      	b.n	800056e <__aeabi_dadd+0x2ba>
 8000874:	2200      	movs	r2, #0
 8000876:	2400      	movs	r4, #0
 8000878:	e625      	b.n	80004c6 <__aeabi_dadd+0x212>
 800087a:	1a17      	subs	r7, r2, r0
 800087c:	4643      	mov	r3, r8
 800087e:	42ba      	cmp	r2, r7
 8000880:	4192      	sbcs	r2, r2
 8000882:	1a59      	subs	r1, r3, r1
 8000884:	4252      	negs	r2, r2
 8000886:	1a89      	subs	r1, r1, r2
 8000888:	4664      	mov	r4, ip
 800088a:	0035      	movs	r5, r6
 800088c:	e543      	b.n	8000316 <__aeabi_dadd+0x62>
 800088e:	4641      	mov	r1, r8
 8000890:	0010      	movs	r0, r2
 8000892:	4d14      	ldr	r5, [pc, #80]	; (80008e4 <__aeabi_dadd+0x630>)
 8000894:	e610      	b.n	80004b8 <__aeabi_dadd+0x204>
 8000896:	2280      	movs	r2, #128	; 0x80
 8000898:	2400      	movs	r4, #0
 800089a:	0312      	lsls	r2, r2, #12
 800089c:	e680      	b.n	80005a0 <__aeabi_dadd+0x2ec>
 800089e:	001d      	movs	r5, r3
 80008a0:	000f      	movs	r7, r1
 80008a2:	3d20      	subs	r5, #32
 80008a4:	40ef      	lsrs	r7, r5
 80008a6:	46bc      	mov	ip, r7
 80008a8:	2b20      	cmp	r3, #32
 80008aa:	d003      	beq.n	80008b4 <__aeabi_dadd+0x600>
 80008ac:	2540      	movs	r5, #64	; 0x40
 80008ae:	1aeb      	subs	r3, r5, r3
 80008b0:	4099      	lsls	r1, r3
 80008b2:	4308      	orrs	r0, r1
 80008b4:	0007      	movs	r7, r0
 80008b6:	4663      	mov	r3, ip
 80008b8:	1e78      	subs	r0, r7, #1
 80008ba:	4187      	sbcs	r7, r0
 80008bc:	431f      	orrs	r7, r3
 80008be:	e769      	b.n	8000794 <__aeabi_dadd+0x4e0>
 80008c0:	1887      	adds	r7, r0, r2
 80008c2:	4297      	cmp	r7, r2
 80008c4:	419b      	sbcs	r3, r3
 80008c6:	4441      	add	r1, r8
 80008c8:	425b      	negs	r3, r3
 80008ca:	18c9      	adds	r1, r1, r3
 80008cc:	0035      	movs	r5, r6
 80008ce:	e5a3      	b.n	8000418 <__aeabi_dadd+0x164>
 80008d0:	003b      	movs	r3, r7
 80008d2:	4333      	orrs	r3, r6
 80008d4:	d0ce      	beq.n	8000874 <__aeabi_dadd+0x5c0>
 80008d6:	2207      	movs	r2, #7
 80008d8:	0031      	movs	r1, r6
 80008da:	403a      	ands	r2, r7
 80008dc:	e652      	b.n	8000584 <__aeabi_dadd+0x2d0>
 80008de:	2300      	movs	r3, #0
 80008e0:	001a      	movs	r2, r3
 80008e2:	e5f4      	b.n	80004ce <__aeabi_dadd+0x21a>
 80008e4:	000007ff 	.word	0x000007ff
 80008e8:	ff7fffff 	.word	0xff7fffff

080008ec <__aeabi_ddiv>:
 80008ec:	b5f0      	push	{r4, r5, r6, r7, lr}
 80008ee:	4657      	mov	r7, sl
 80008f0:	46de      	mov	lr, fp
 80008f2:	464e      	mov	r6, r9
 80008f4:	4645      	mov	r5, r8
 80008f6:	b5e0      	push	{r5, r6, r7, lr}
 80008f8:	4683      	mov	fp, r0
 80008fa:	0007      	movs	r7, r0
 80008fc:	030e      	lsls	r6, r1, #12
 80008fe:	0048      	lsls	r0, r1, #1
 8000900:	b085      	sub	sp, #20
 8000902:	4692      	mov	sl, r2
 8000904:	001c      	movs	r4, r3
 8000906:	0b36      	lsrs	r6, r6, #12
 8000908:	0d40      	lsrs	r0, r0, #21
 800090a:	0fcd      	lsrs	r5, r1, #31
 800090c:	2800      	cmp	r0, #0
 800090e:	d100      	bne.n	8000912 <__aeabi_ddiv+0x26>
 8000910:	e09d      	b.n	8000a4e <__aeabi_ddiv+0x162>
 8000912:	4b95      	ldr	r3, [pc, #596]	; (8000b68 <__aeabi_ddiv+0x27c>)
 8000914:	4298      	cmp	r0, r3
 8000916:	d039      	beq.n	800098c <__aeabi_ddiv+0xa0>
 8000918:	2380      	movs	r3, #128	; 0x80
 800091a:	00f6      	lsls	r6, r6, #3
 800091c:	041b      	lsls	r3, r3, #16
 800091e:	431e      	orrs	r6, r3
 8000920:	4a92      	ldr	r2, [pc, #584]	; (8000b6c <__aeabi_ddiv+0x280>)
 8000922:	0f7b      	lsrs	r3, r7, #29
 8000924:	4333      	orrs	r3, r6
 8000926:	4699      	mov	r9, r3
 8000928:	4694      	mov	ip, r2
 800092a:	0003      	movs	r3, r0
 800092c:	4463      	add	r3, ip
 800092e:	9300      	str	r3, [sp, #0]
 8000930:	2300      	movs	r3, #0
 8000932:	2600      	movs	r6, #0
 8000934:	00ff      	lsls	r7, r7, #3
 8000936:	9302      	str	r3, [sp, #8]
 8000938:	0323      	lsls	r3, r4, #12
 800093a:	0b1b      	lsrs	r3, r3, #12
 800093c:	4698      	mov	r8, r3
 800093e:	0063      	lsls	r3, r4, #1
 8000940:	0fe4      	lsrs	r4, r4, #31
 8000942:	4652      	mov	r2, sl
 8000944:	0d5b      	lsrs	r3, r3, #21
 8000946:	9401      	str	r4, [sp, #4]
 8000948:	d100      	bne.n	800094c <__aeabi_ddiv+0x60>
 800094a:	e0b3      	b.n	8000ab4 <__aeabi_ddiv+0x1c8>
 800094c:	4986      	ldr	r1, [pc, #536]	; (8000b68 <__aeabi_ddiv+0x27c>)
 800094e:	428b      	cmp	r3, r1
 8000950:	d100      	bne.n	8000954 <__aeabi_ddiv+0x68>
 8000952:	e09e      	b.n	8000a92 <__aeabi_ddiv+0x1a6>
 8000954:	4642      	mov	r2, r8
 8000956:	00d1      	lsls	r1, r2, #3
 8000958:	2280      	movs	r2, #128	; 0x80
 800095a:	0412      	lsls	r2, r2, #16
 800095c:	430a      	orrs	r2, r1
 800095e:	4651      	mov	r1, sl
 8000960:	0f49      	lsrs	r1, r1, #29
 8000962:	4311      	orrs	r1, r2
 8000964:	468b      	mov	fp, r1
 8000966:	4981      	ldr	r1, [pc, #516]	; (8000b6c <__aeabi_ddiv+0x280>)
 8000968:	4652      	mov	r2, sl
 800096a:	468c      	mov	ip, r1
 800096c:	9900      	ldr	r1, [sp, #0]
 800096e:	4463      	add	r3, ip
 8000970:	1acb      	subs	r3, r1, r3
 8000972:	2100      	movs	r1, #0
 8000974:	00d2      	lsls	r2, r2, #3
 8000976:	9300      	str	r3, [sp, #0]
 8000978:	002b      	movs	r3, r5
 800097a:	4063      	eors	r3, r4
 800097c:	469a      	mov	sl, r3
 800097e:	2e0f      	cmp	r6, #15
 8000980:	d900      	bls.n	8000984 <__aeabi_ddiv+0x98>
 8000982:	e105      	b.n	8000b90 <__aeabi_ddiv+0x2a4>
 8000984:	4b7a      	ldr	r3, [pc, #488]	; (8000b70 <__aeabi_ddiv+0x284>)
 8000986:	00b6      	lsls	r6, r6, #2
 8000988:	599b      	ldr	r3, [r3, r6]
 800098a:	469f      	mov	pc, r3
 800098c:	465b      	mov	r3, fp
 800098e:	4333      	orrs	r3, r6
 8000990:	4699      	mov	r9, r3
 8000992:	d000      	beq.n	8000996 <__aeabi_ddiv+0xaa>
 8000994:	e0b8      	b.n	8000b08 <__aeabi_ddiv+0x21c>
 8000996:	2302      	movs	r3, #2
 8000998:	2608      	movs	r6, #8
 800099a:	2700      	movs	r7, #0
 800099c:	9000      	str	r0, [sp, #0]
 800099e:	9302      	str	r3, [sp, #8]
 80009a0:	e7ca      	b.n	8000938 <__aeabi_ddiv+0x4c>
 80009a2:	46cb      	mov	fp, r9
 80009a4:	003a      	movs	r2, r7
 80009a6:	9902      	ldr	r1, [sp, #8]
 80009a8:	9501      	str	r5, [sp, #4]
 80009aa:	9b01      	ldr	r3, [sp, #4]
 80009ac:	469a      	mov	sl, r3
 80009ae:	2902      	cmp	r1, #2
 80009b0:	d027      	beq.n	8000a02 <__aeabi_ddiv+0x116>
 80009b2:	2903      	cmp	r1, #3
 80009b4:	d100      	bne.n	80009b8 <__aeabi_ddiv+0xcc>
 80009b6:	e280      	b.n	8000eba <__aeabi_ddiv+0x5ce>
 80009b8:	2901      	cmp	r1, #1
 80009ba:	d044      	beq.n	8000a46 <__aeabi_ddiv+0x15a>
 80009bc:	496d      	ldr	r1, [pc, #436]	; (8000b74 <__aeabi_ddiv+0x288>)
 80009be:	9b00      	ldr	r3, [sp, #0]
 80009c0:	468c      	mov	ip, r1
 80009c2:	4463      	add	r3, ip
 80009c4:	001c      	movs	r4, r3
 80009c6:	2c00      	cmp	r4, #0
 80009c8:	dd38      	ble.n	8000a3c <__aeabi_ddiv+0x150>
 80009ca:	0753      	lsls	r3, r2, #29
 80009cc:	d000      	beq.n	80009d0 <__aeabi_ddiv+0xe4>
 80009ce:	e213      	b.n	8000df8 <__aeabi_ddiv+0x50c>
 80009d0:	08d2      	lsrs	r2, r2, #3
 80009d2:	465b      	mov	r3, fp
 80009d4:	01db      	lsls	r3, r3, #7
 80009d6:	d509      	bpl.n	80009ec <__aeabi_ddiv+0x100>
 80009d8:	4659      	mov	r1, fp
 80009da:	4b67      	ldr	r3, [pc, #412]	; (8000b78 <__aeabi_ddiv+0x28c>)
 80009dc:	4019      	ands	r1, r3
 80009de:	468b      	mov	fp, r1
 80009e0:	2180      	movs	r1, #128	; 0x80
 80009e2:	00c9      	lsls	r1, r1, #3
 80009e4:	468c      	mov	ip, r1
 80009e6:	9b00      	ldr	r3, [sp, #0]
 80009e8:	4463      	add	r3, ip
 80009ea:	001c      	movs	r4, r3
 80009ec:	4b63      	ldr	r3, [pc, #396]	; (8000b7c <__aeabi_ddiv+0x290>)
 80009ee:	429c      	cmp	r4, r3
 80009f0:	dc07      	bgt.n	8000a02 <__aeabi_ddiv+0x116>
 80009f2:	465b      	mov	r3, fp
 80009f4:	0564      	lsls	r4, r4, #21
 80009f6:	075f      	lsls	r7, r3, #29
 80009f8:	025b      	lsls	r3, r3, #9
 80009fa:	4317      	orrs	r7, r2
 80009fc:	0b1b      	lsrs	r3, r3, #12
 80009fe:	0d62      	lsrs	r2, r4, #21
 8000a00:	e002      	b.n	8000a08 <__aeabi_ddiv+0x11c>
 8000a02:	2300      	movs	r3, #0
 8000a04:	2700      	movs	r7, #0
 8000a06:	4a58      	ldr	r2, [pc, #352]	; (8000b68 <__aeabi_ddiv+0x27c>)
 8000a08:	2100      	movs	r1, #0
 8000a0a:	031b      	lsls	r3, r3, #12
 8000a0c:	0b1c      	lsrs	r4, r3, #12
 8000a0e:	0d0b      	lsrs	r3, r1, #20
 8000a10:	051b      	lsls	r3, r3, #20
 8000a12:	4323      	orrs	r3, r4
 8000a14:	0514      	lsls	r4, r2, #20
 8000a16:	4a5a      	ldr	r2, [pc, #360]	; (8000b80 <__aeabi_ddiv+0x294>)
 8000a18:	0038      	movs	r0, r7
 8000a1a:	4013      	ands	r3, r2
 8000a1c:	431c      	orrs	r4, r3
 8000a1e:	4653      	mov	r3, sl
 8000a20:	0064      	lsls	r4, r4, #1
 8000a22:	07db      	lsls	r3, r3, #31
 8000a24:	0864      	lsrs	r4, r4, #1
 8000a26:	431c      	orrs	r4, r3
 8000a28:	0021      	movs	r1, r4
 8000a2a:	b005      	add	sp, #20
 8000a2c:	bc3c      	pop	{r2, r3, r4, r5}
 8000a2e:	4690      	mov	r8, r2
 8000a30:	4699      	mov	r9, r3
 8000a32:	46a2      	mov	sl, r4
 8000a34:	46ab      	mov	fp, r5
 8000a36:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a38:	2201      	movs	r2, #1
 8000a3a:	4252      	negs	r2, r2
 8000a3c:	2301      	movs	r3, #1
 8000a3e:	1b1b      	subs	r3, r3, r4
 8000a40:	2b38      	cmp	r3, #56	; 0x38
 8000a42:	dc00      	bgt.n	8000a46 <__aeabi_ddiv+0x15a>
 8000a44:	e1ad      	b.n	8000da2 <__aeabi_ddiv+0x4b6>
 8000a46:	2200      	movs	r2, #0
 8000a48:	2300      	movs	r3, #0
 8000a4a:	2700      	movs	r7, #0
 8000a4c:	e7dc      	b.n	8000a08 <__aeabi_ddiv+0x11c>
 8000a4e:	465b      	mov	r3, fp
 8000a50:	4333      	orrs	r3, r6
 8000a52:	4699      	mov	r9, r3
 8000a54:	d05e      	beq.n	8000b14 <__aeabi_ddiv+0x228>
 8000a56:	2e00      	cmp	r6, #0
 8000a58:	d100      	bne.n	8000a5c <__aeabi_ddiv+0x170>
 8000a5a:	e18a      	b.n	8000d72 <__aeabi_ddiv+0x486>
 8000a5c:	0030      	movs	r0, r6
 8000a5e:	f000 fd8f 	bl	8001580 <__clzsi2>
 8000a62:	0003      	movs	r3, r0
 8000a64:	3b0b      	subs	r3, #11
 8000a66:	2b1c      	cmp	r3, #28
 8000a68:	dd00      	ble.n	8000a6c <__aeabi_ddiv+0x180>
 8000a6a:	e17b      	b.n	8000d64 <__aeabi_ddiv+0x478>
 8000a6c:	221d      	movs	r2, #29
 8000a6e:	1ad3      	subs	r3, r2, r3
 8000a70:	465a      	mov	r2, fp
 8000a72:	0001      	movs	r1, r0
 8000a74:	40da      	lsrs	r2, r3
 8000a76:	3908      	subs	r1, #8
 8000a78:	408e      	lsls	r6, r1
 8000a7a:	0013      	movs	r3, r2
 8000a7c:	465f      	mov	r7, fp
 8000a7e:	4333      	orrs	r3, r6
 8000a80:	4699      	mov	r9, r3
 8000a82:	408f      	lsls	r7, r1
 8000a84:	4b3f      	ldr	r3, [pc, #252]	; (8000b84 <__aeabi_ddiv+0x298>)
 8000a86:	2600      	movs	r6, #0
 8000a88:	1a1b      	subs	r3, r3, r0
 8000a8a:	9300      	str	r3, [sp, #0]
 8000a8c:	2300      	movs	r3, #0
 8000a8e:	9302      	str	r3, [sp, #8]
 8000a90:	e752      	b.n	8000938 <__aeabi_ddiv+0x4c>
 8000a92:	4641      	mov	r1, r8
 8000a94:	4653      	mov	r3, sl
 8000a96:	430b      	orrs	r3, r1
 8000a98:	493b      	ldr	r1, [pc, #236]	; (8000b88 <__aeabi_ddiv+0x29c>)
 8000a9a:	469b      	mov	fp, r3
 8000a9c:	468c      	mov	ip, r1
 8000a9e:	9b00      	ldr	r3, [sp, #0]
 8000aa0:	4463      	add	r3, ip
 8000aa2:	9300      	str	r3, [sp, #0]
 8000aa4:	465b      	mov	r3, fp
 8000aa6:	2b00      	cmp	r3, #0
 8000aa8:	d13b      	bne.n	8000b22 <__aeabi_ddiv+0x236>
 8000aaa:	2302      	movs	r3, #2
 8000aac:	2200      	movs	r2, #0
 8000aae:	431e      	orrs	r6, r3
 8000ab0:	2102      	movs	r1, #2
 8000ab2:	e761      	b.n	8000978 <__aeabi_ddiv+0x8c>
 8000ab4:	4643      	mov	r3, r8
 8000ab6:	4313      	orrs	r3, r2
 8000ab8:	469b      	mov	fp, r3
 8000aba:	d037      	beq.n	8000b2c <__aeabi_ddiv+0x240>
 8000abc:	4643      	mov	r3, r8
 8000abe:	2b00      	cmp	r3, #0
 8000ac0:	d100      	bne.n	8000ac4 <__aeabi_ddiv+0x1d8>
 8000ac2:	e162      	b.n	8000d8a <__aeabi_ddiv+0x49e>
 8000ac4:	4640      	mov	r0, r8
 8000ac6:	f000 fd5b 	bl	8001580 <__clzsi2>
 8000aca:	0003      	movs	r3, r0
 8000acc:	3b0b      	subs	r3, #11
 8000ace:	2b1c      	cmp	r3, #28
 8000ad0:	dd00      	ble.n	8000ad4 <__aeabi_ddiv+0x1e8>
 8000ad2:	e153      	b.n	8000d7c <__aeabi_ddiv+0x490>
 8000ad4:	0002      	movs	r2, r0
 8000ad6:	4641      	mov	r1, r8
 8000ad8:	3a08      	subs	r2, #8
 8000ada:	4091      	lsls	r1, r2
 8000adc:	4688      	mov	r8, r1
 8000ade:	211d      	movs	r1, #29
 8000ae0:	1acb      	subs	r3, r1, r3
 8000ae2:	4651      	mov	r1, sl
 8000ae4:	40d9      	lsrs	r1, r3
 8000ae6:	000b      	movs	r3, r1
 8000ae8:	4641      	mov	r1, r8
 8000aea:	430b      	orrs	r3, r1
 8000aec:	469b      	mov	fp, r3
 8000aee:	4653      	mov	r3, sl
 8000af0:	4093      	lsls	r3, r2
 8000af2:	001a      	movs	r2, r3
 8000af4:	9b00      	ldr	r3, [sp, #0]
 8000af6:	4925      	ldr	r1, [pc, #148]	; (8000b8c <__aeabi_ddiv+0x2a0>)
 8000af8:	469c      	mov	ip, r3
 8000afa:	4460      	add	r0, ip
 8000afc:	0003      	movs	r3, r0
 8000afe:	468c      	mov	ip, r1
 8000b00:	4463      	add	r3, ip
 8000b02:	9300      	str	r3, [sp, #0]
 8000b04:	2100      	movs	r1, #0
 8000b06:	e737      	b.n	8000978 <__aeabi_ddiv+0x8c>
 8000b08:	2303      	movs	r3, #3
 8000b0a:	46b1      	mov	r9, r6
 8000b0c:	9000      	str	r0, [sp, #0]
 8000b0e:	260c      	movs	r6, #12
 8000b10:	9302      	str	r3, [sp, #8]
 8000b12:	e711      	b.n	8000938 <__aeabi_ddiv+0x4c>
 8000b14:	2300      	movs	r3, #0
 8000b16:	9300      	str	r3, [sp, #0]
 8000b18:	3301      	adds	r3, #1
 8000b1a:	2604      	movs	r6, #4
 8000b1c:	2700      	movs	r7, #0
 8000b1e:	9302      	str	r3, [sp, #8]
 8000b20:	e70a      	b.n	8000938 <__aeabi_ddiv+0x4c>
 8000b22:	2303      	movs	r3, #3
 8000b24:	46c3      	mov	fp, r8
 8000b26:	431e      	orrs	r6, r3
 8000b28:	2103      	movs	r1, #3
 8000b2a:	e725      	b.n	8000978 <__aeabi_ddiv+0x8c>
 8000b2c:	3301      	adds	r3, #1
 8000b2e:	431e      	orrs	r6, r3
 8000b30:	2200      	movs	r2, #0
 8000b32:	2101      	movs	r1, #1
 8000b34:	e720      	b.n	8000978 <__aeabi_ddiv+0x8c>
 8000b36:	2300      	movs	r3, #0
 8000b38:	469a      	mov	sl, r3
 8000b3a:	2380      	movs	r3, #128	; 0x80
 8000b3c:	2700      	movs	r7, #0
 8000b3e:	031b      	lsls	r3, r3, #12
 8000b40:	4a09      	ldr	r2, [pc, #36]	; (8000b68 <__aeabi_ddiv+0x27c>)
 8000b42:	e761      	b.n	8000a08 <__aeabi_ddiv+0x11c>
 8000b44:	2380      	movs	r3, #128	; 0x80
 8000b46:	4649      	mov	r1, r9
 8000b48:	031b      	lsls	r3, r3, #12
 8000b4a:	4219      	tst	r1, r3
 8000b4c:	d100      	bne.n	8000b50 <__aeabi_ddiv+0x264>
 8000b4e:	e0e2      	b.n	8000d16 <__aeabi_ddiv+0x42a>
 8000b50:	4659      	mov	r1, fp
 8000b52:	4219      	tst	r1, r3
 8000b54:	d000      	beq.n	8000b58 <__aeabi_ddiv+0x26c>
 8000b56:	e0de      	b.n	8000d16 <__aeabi_ddiv+0x42a>
 8000b58:	430b      	orrs	r3, r1
 8000b5a:	031b      	lsls	r3, r3, #12
 8000b5c:	0017      	movs	r7, r2
 8000b5e:	0b1b      	lsrs	r3, r3, #12
 8000b60:	46a2      	mov	sl, r4
 8000b62:	4a01      	ldr	r2, [pc, #4]	; (8000b68 <__aeabi_ddiv+0x27c>)
 8000b64:	e750      	b.n	8000a08 <__aeabi_ddiv+0x11c>
 8000b66:	46c0      	nop			; (mov r8, r8)
 8000b68:	000007ff 	.word	0x000007ff
 8000b6c:	fffffc01 	.word	0xfffffc01
 8000b70:	08002f30 	.word	0x08002f30
 8000b74:	000003ff 	.word	0x000003ff
 8000b78:	feffffff 	.word	0xfeffffff
 8000b7c:	000007fe 	.word	0x000007fe
 8000b80:	800fffff 	.word	0x800fffff
 8000b84:	fffffc0d 	.word	0xfffffc0d
 8000b88:	fffff801 	.word	0xfffff801
 8000b8c:	000003f3 	.word	0x000003f3
 8000b90:	45d9      	cmp	r9, fp
 8000b92:	d900      	bls.n	8000b96 <__aeabi_ddiv+0x2aa>
 8000b94:	e0cb      	b.n	8000d2e <__aeabi_ddiv+0x442>
 8000b96:	d100      	bne.n	8000b9a <__aeabi_ddiv+0x2ae>
 8000b98:	e0c6      	b.n	8000d28 <__aeabi_ddiv+0x43c>
 8000b9a:	003c      	movs	r4, r7
 8000b9c:	4648      	mov	r0, r9
 8000b9e:	2700      	movs	r7, #0
 8000ba0:	9b00      	ldr	r3, [sp, #0]
 8000ba2:	3b01      	subs	r3, #1
 8000ba4:	9300      	str	r3, [sp, #0]
 8000ba6:	465b      	mov	r3, fp
 8000ba8:	0e16      	lsrs	r6, r2, #24
 8000baa:	021b      	lsls	r3, r3, #8
 8000bac:	431e      	orrs	r6, r3
 8000bae:	0213      	lsls	r3, r2, #8
 8000bb0:	4698      	mov	r8, r3
 8000bb2:	0433      	lsls	r3, r6, #16
 8000bb4:	0c1b      	lsrs	r3, r3, #16
 8000bb6:	4699      	mov	r9, r3
 8000bb8:	0c31      	lsrs	r1, r6, #16
 8000bba:	9101      	str	r1, [sp, #4]
 8000bbc:	f7ff fb2a 	bl	8000214 <__aeabi_uidivmod>
 8000bc0:	464a      	mov	r2, r9
 8000bc2:	4342      	muls	r2, r0
 8000bc4:	040b      	lsls	r3, r1, #16
 8000bc6:	0c21      	lsrs	r1, r4, #16
 8000bc8:	0005      	movs	r5, r0
 8000bca:	4319      	orrs	r1, r3
 8000bcc:	428a      	cmp	r2, r1
 8000bce:	d907      	bls.n	8000be0 <__aeabi_ddiv+0x2f4>
 8000bd0:	1989      	adds	r1, r1, r6
 8000bd2:	3d01      	subs	r5, #1
 8000bd4:	428e      	cmp	r6, r1
 8000bd6:	d803      	bhi.n	8000be0 <__aeabi_ddiv+0x2f4>
 8000bd8:	428a      	cmp	r2, r1
 8000bda:	d901      	bls.n	8000be0 <__aeabi_ddiv+0x2f4>
 8000bdc:	1e85      	subs	r5, r0, #2
 8000bde:	1989      	adds	r1, r1, r6
 8000be0:	1a88      	subs	r0, r1, r2
 8000be2:	9901      	ldr	r1, [sp, #4]
 8000be4:	f7ff fb16 	bl	8000214 <__aeabi_uidivmod>
 8000be8:	0409      	lsls	r1, r1, #16
 8000bea:	468c      	mov	ip, r1
 8000bec:	464a      	mov	r2, r9
 8000bee:	0421      	lsls	r1, r4, #16
 8000bf0:	4664      	mov	r4, ip
 8000bf2:	4342      	muls	r2, r0
 8000bf4:	0c09      	lsrs	r1, r1, #16
 8000bf6:	0003      	movs	r3, r0
 8000bf8:	4321      	orrs	r1, r4
 8000bfa:	428a      	cmp	r2, r1
 8000bfc:	d904      	bls.n	8000c08 <__aeabi_ddiv+0x31c>
 8000bfe:	1989      	adds	r1, r1, r6
 8000c00:	3b01      	subs	r3, #1
 8000c02:	428e      	cmp	r6, r1
 8000c04:	d800      	bhi.n	8000c08 <__aeabi_ddiv+0x31c>
 8000c06:	e0f1      	b.n	8000dec <__aeabi_ddiv+0x500>
 8000c08:	042d      	lsls	r5, r5, #16
 8000c0a:	431d      	orrs	r5, r3
 8000c0c:	46ab      	mov	fp, r5
 8000c0e:	4643      	mov	r3, r8
 8000c10:	1a89      	subs	r1, r1, r2
 8000c12:	4642      	mov	r2, r8
 8000c14:	0c28      	lsrs	r0, r5, #16
 8000c16:	0412      	lsls	r2, r2, #16
 8000c18:	0c1d      	lsrs	r5, r3, #16
 8000c1a:	465b      	mov	r3, fp
 8000c1c:	0c14      	lsrs	r4, r2, #16
 8000c1e:	0022      	movs	r2, r4
 8000c20:	041b      	lsls	r3, r3, #16
 8000c22:	0c1b      	lsrs	r3, r3, #16
 8000c24:	435a      	muls	r2, r3
 8000c26:	9403      	str	r4, [sp, #12]
 8000c28:	436b      	muls	r3, r5
 8000c2a:	4344      	muls	r4, r0
 8000c2c:	9502      	str	r5, [sp, #8]
 8000c2e:	4368      	muls	r0, r5
 8000c30:	191b      	adds	r3, r3, r4
 8000c32:	0c15      	lsrs	r5, r2, #16
 8000c34:	18eb      	adds	r3, r5, r3
 8000c36:	429c      	cmp	r4, r3
 8000c38:	d903      	bls.n	8000c42 <__aeabi_ddiv+0x356>
 8000c3a:	2480      	movs	r4, #128	; 0x80
 8000c3c:	0264      	lsls	r4, r4, #9
 8000c3e:	46a4      	mov	ip, r4
 8000c40:	4460      	add	r0, ip
 8000c42:	0c1c      	lsrs	r4, r3, #16
 8000c44:	0415      	lsls	r5, r2, #16
 8000c46:	041b      	lsls	r3, r3, #16
 8000c48:	0c2d      	lsrs	r5, r5, #16
 8000c4a:	1820      	adds	r0, r4, r0
 8000c4c:	195d      	adds	r5, r3, r5
 8000c4e:	4281      	cmp	r1, r0
 8000c50:	d377      	bcc.n	8000d42 <__aeabi_ddiv+0x456>
 8000c52:	d073      	beq.n	8000d3c <__aeabi_ddiv+0x450>
 8000c54:	1a0c      	subs	r4, r1, r0
 8000c56:	4aa2      	ldr	r2, [pc, #648]	; (8000ee0 <__aeabi_ddiv+0x5f4>)
 8000c58:	1b7d      	subs	r5, r7, r5
 8000c5a:	42af      	cmp	r7, r5
 8000c5c:	41bf      	sbcs	r7, r7
 8000c5e:	4694      	mov	ip, r2
 8000c60:	9b00      	ldr	r3, [sp, #0]
 8000c62:	427f      	negs	r7, r7
 8000c64:	4463      	add	r3, ip
 8000c66:	1be0      	subs	r0, r4, r7
 8000c68:	001c      	movs	r4, r3
 8000c6a:	4286      	cmp	r6, r0
 8000c6c:	d100      	bne.n	8000c70 <__aeabi_ddiv+0x384>
 8000c6e:	e0db      	b.n	8000e28 <__aeabi_ddiv+0x53c>
 8000c70:	9901      	ldr	r1, [sp, #4]
 8000c72:	f7ff facf 	bl	8000214 <__aeabi_uidivmod>
 8000c76:	464a      	mov	r2, r9
 8000c78:	4342      	muls	r2, r0
 8000c7a:	040b      	lsls	r3, r1, #16
 8000c7c:	0c29      	lsrs	r1, r5, #16
 8000c7e:	0007      	movs	r7, r0
 8000c80:	4319      	orrs	r1, r3
 8000c82:	428a      	cmp	r2, r1
 8000c84:	d907      	bls.n	8000c96 <__aeabi_ddiv+0x3aa>
 8000c86:	1989      	adds	r1, r1, r6
 8000c88:	3f01      	subs	r7, #1
 8000c8a:	428e      	cmp	r6, r1
 8000c8c:	d803      	bhi.n	8000c96 <__aeabi_ddiv+0x3aa>
 8000c8e:	428a      	cmp	r2, r1
 8000c90:	d901      	bls.n	8000c96 <__aeabi_ddiv+0x3aa>
 8000c92:	1e87      	subs	r7, r0, #2
 8000c94:	1989      	adds	r1, r1, r6
 8000c96:	1a88      	subs	r0, r1, r2
 8000c98:	9901      	ldr	r1, [sp, #4]
 8000c9a:	f7ff fabb 	bl	8000214 <__aeabi_uidivmod>
 8000c9e:	0409      	lsls	r1, r1, #16
 8000ca0:	464a      	mov	r2, r9
 8000ca2:	4689      	mov	r9, r1
 8000ca4:	0429      	lsls	r1, r5, #16
 8000ca6:	464d      	mov	r5, r9
 8000ca8:	4342      	muls	r2, r0
 8000caa:	0c09      	lsrs	r1, r1, #16
 8000cac:	0003      	movs	r3, r0
 8000cae:	4329      	orrs	r1, r5
 8000cb0:	428a      	cmp	r2, r1
 8000cb2:	d907      	bls.n	8000cc4 <__aeabi_ddiv+0x3d8>
 8000cb4:	1989      	adds	r1, r1, r6
 8000cb6:	3b01      	subs	r3, #1
 8000cb8:	428e      	cmp	r6, r1
 8000cba:	d803      	bhi.n	8000cc4 <__aeabi_ddiv+0x3d8>
 8000cbc:	428a      	cmp	r2, r1
 8000cbe:	d901      	bls.n	8000cc4 <__aeabi_ddiv+0x3d8>
 8000cc0:	1e83      	subs	r3, r0, #2
 8000cc2:	1989      	adds	r1, r1, r6
 8000cc4:	043f      	lsls	r7, r7, #16
 8000cc6:	1a89      	subs	r1, r1, r2
 8000cc8:	003a      	movs	r2, r7
 8000cca:	9f03      	ldr	r7, [sp, #12]
 8000ccc:	431a      	orrs	r2, r3
 8000cce:	0038      	movs	r0, r7
 8000cd0:	0413      	lsls	r3, r2, #16
 8000cd2:	0c1b      	lsrs	r3, r3, #16
 8000cd4:	4358      	muls	r0, r3
 8000cd6:	4681      	mov	r9, r0
 8000cd8:	9802      	ldr	r0, [sp, #8]
 8000cda:	0c15      	lsrs	r5, r2, #16
 8000cdc:	436f      	muls	r7, r5
 8000cde:	4343      	muls	r3, r0
 8000ce0:	4345      	muls	r5, r0
 8000ce2:	4648      	mov	r0, r9
 8000ce4:	0c00      	lsrs	r0, r0, #16
 8000ce6:	4684      	mov	ip, r0
 8000ce8:	19db      	adds	r3, r3, r7
 8000cea:	4463      	add	r3, ip
 8000cec:	429f      	cmp	r7, r3
 8000cee:	d903      	bls.n	8000cf8 <__aeabi_ddiv+0x40c>
 8000cf0:	2080      	movs	r0, #128	; 0x80
 8000cf2:	0240      	lsls	r0, r0, #9
 8000cf4:	4684      	mov	ip, r0
 8000cf6:	4465      	add	r5, ip
 8000cf8:	4648      	mov	r0, r9
 8000cfa:	0c1f      	lsrs	r7, r3, #16
 8000cfc:	0400      	lsls	r0, r0, #16
 8000cfe:	041b      	lsls	r3, r3, #16
 8000d00:	0c00      	lsrs	r0, r0, #16
 8000d02:	197d      	adds	r5, r7, r5
 8000d04:	1818      	adds	r0, r3, r0
 8000d06:	42a9      	cmp	r1, r5
 8000d08:	d200      	bcs.n	8000d0c <__aeabi_ddiv+0x420>
 8000d0a:	e084      	b.n	8000e16 <__aeabi_ddiv+0x52a>
 8000d0c:	d100      	bne.n	8000d10 <__aeabi_ddiv+0x424>
 8000d0e:	e07f      	b.n	8000e10 <__aeabi_ddiv+0x524>
 8000d10:	2301      	movs	r3, #1
 8000d12:	431a      	orrs	r2, r3
 8000d14:	e657      	b.n	80009c6 <__aeabi_ddiv+0xda>
 8000d16:	2380      	movs	r3, #128	; 0x80
 8000d18:	464a      	mov	r2, r9
 8000d1a:	031b      	lsls	r3, r3, #12
 8000d1c:	4313      	orrs	r3, r2
 8000d1e:	031b      	lsls	r3, r3, #12
 8000d20:	0b1b      	lsrs	r3, r3, #12
 8000d22:	46aa      	mov	sl, r5
 8000d24:	4a6f      	ldr	r2, [pc, #444]	; (8000ee4 <__aeabi_ddiv+0x5f8>)
 8000d26:	e66f      	b.n	8000a08 <__aeabi_ddiv+0x11c>
 8000d28:	42ba      	cmp	r2, r7
 8000d2a:	d900      	bls.n	8000d2e <__aeabi_ddiv+0x442>
 8000d2c:	e735      	b.n	8000b9a <__aeabi_ddiv+0x2ae>
 8000d2e:	464b      	mov	r3, r9
 8000d30:	07dc      	lsls	r4, r3, #31
 8000d32:	0858      	lsrs	r0, r3, #1
 8000d34:	087b      	lsrs	r3, r7, #1
 8000d36:	431c      	orrs	r4, r3
 8000d38:	07ff      	lsls	r7, r7, #31
 8000d3a:	e734      	b.n	8000ba6 <__aeabi_ddiv+0x2ba>
 8000d3c:	2400      	movs	r4, #0
 8000d3e:	42af      	cmp	r7, r5
 8000d40:	d289      	bcs.n	8000c56 <__aeabi_ddiv+0x36a>
 8000d42:	4447      	add	r7, r8
 8000d44:	4547      	cmp	r7, r8
 8000d46:	41a4      	sbcs	r4, r4
 8000d48:	465b      	mov	r3, fp
 8000d4a:	4264      	negs	r4, r4
 8000d4c:	19a4      	adds	r4, r4, r6
 8000d4e:	1864      	adds	r4, r4, r1
 8000d50:	3b01      	subs	r3, #1
 8000d52:	42a6      	cmp	r6, r4
 8000d54:	d21e      	bcs.n	8000d94 <__aeabi_ddiv+0x4a8>
 8000d56:	42a0      	cmp	r0, r4
 8000d58:	d86d      	bhi.n	8000e36 <__aeabi_ddiv+0x54a>
 8000d5a:	d100      	bne.n	8000d5e <__aeabi_ddiv+0x472>
 8000d5c:	e0b6      	b.n	8000ecc <__aeabi_ddiv+0x5e0>
 8000d5e:	1a24      	subs	r4, r4, r0
 8000d60:	469b      	mov	fp, r3
 8000d62:	e778      	b.n	8000c56 <__aeabi_ddiv+0x36a>
 8000d64:	0003      	movs	r3, r0
 8000d66:	465a      	mov	r2, fp
 8000d68:	3b28      	subs	r3, #40	; 0x28
 8000d6a:	409a      	lsls	r2, r3
 8000d6c:	2700      	movs	r7, #0
 8000d6e:	4691      	mov	r9, r2
 8000d70:	e688      	b.n	8000a84 <__aeabi_ddiv+0x198>
 8000d72:	4658      	mov	r0, fp
 8000d74:	f000 fc04 	bl	8001580 <__clzsi2>
 8000d78:	3020      	adds	r0, #32
 8000d7a:	e672      	b.n	8000a62 <__aeabi_ddiv+0x176>
 8000d7c:	0003      	movs	r3, r0
 8000d7e:	4652      	mov	r2, sl
 8000d80:	3b28      	subs	r3, #40	; 0x28
 8000d82:	409a      	lsls	r2, r3
 8000d84:	4693      	mov	fp, r2
 8000d86:	2200      	movs	r2, #0
 8000d88:	e6b4      	b.n	8000af4 <__aeabi_ddiv+0x208>
 8000d8a:	4650      	mov	r0, sl
 8000d8c:	f000 fbf8 	bl	8001580 <__clzsi2>
 8000d90:	3020      	adds	r0, #32
 8000d92:	e69a      	b.n	8000aca <__aeabi_ddiv+0x1de>
 8000d94:	42a6      	cmp	r6, r4
 8000d96:	d1e2      	bne.n	8000d5e <__aeabi_ddiv+0x472>
 8000d98:	45b8      	cmp	r8, r7
 8000d9a:	d9dc      	bls.n	8000d56 <__aeabi_ddiv+0x46a>
 8000d9c:	1a34      	subs	r4, r6, r0
 8000d9e:	469b      	mov	fp, r3
 8000da0:	e759      	b.n	8000c56 <__aeabi_ddiv+0x36a>
 8000da2:	2b1f      	cmp	r3, #31
 8000da4:	dc65      	bgt.n	8000e72 <__aeabi_ddiv+0x586>
 8000da6:	4c50      	ldr	r4, [pc, #320]	; (8000ee8 <__aeabi_ddiv+0x5fc>)
 8000da8:	9900      	ldr	r1, [sp, #0]
 8000daa:	46a4      	mov	ip, r4
 8000dac:	465c      	mov	r4, fp
 8000dae:	4461      	add	r1, ip
 8000db0:	0008      	movs	r0, r1
 8000db2:	408c      	lsls	r4, r1
 8000db4:	0011      	movs	r1, r2
 8000db6:	4082      	lsls	r2, r0
 8000db8:	40d9      	lsrs	r1, r3
 8000dba:	1e50      	subs	r0, r2, #1
 8000dbc:	4182      	sbcs	r2, r0
 8000dbe:	430c      	orrs	r4, r1
 8000dc0:	4314      	orrs	r4, r2
 8000dc2:	465a      	mov	r2, fp
 8000dc4:	40da      	lsrs	r2, r3
 8000dc6:	0013      	movs	r3, r2
 8000dc8:	0762      	lsls	r2, r4, #29
 8000dca:	d009      	beq.n	8000de0 <__aeabi_ddiv+0x4f4>
 8000dcc:	220f      	movs	r2, #15
 8000dce:	4022      	ands	r2, r4
 8000dd0:	2a04      	cmp	r2, #4
 8000dd2:	d005      	beq.n	8000de0 <__aeabi_ddiv+0x4f4>
 8000dd4:	0022      	movs	r2, r4
 8000dd6:	1d14      	adds	r4, r2, #4
 8000dd8:	4294      	cmp	r4, r2
 8000dda:	4189      	sbcs	r1, r1
 8000ddc:	4249      	negs	r1, r1
 8000dde:	185b      	adds	r3, r3, r1
 8000de0:	021a      	lsls	r2, r3, #8
 8000de2:	d562      	bpl.n	8000eaa <__aeabi_ddiv+0x5be>
 8000de4:	2201      	movs	r2, #1
 8000de6:	2300      	movs	r3, #0
 8000de8:	2700      	movs	r7, #0
 8000dea:	e60d      	b.n	8000a08 <__aeabi_ddiv+0x11c>
 8000dec:	428a      	cmp	r2, r1
 8000dee:	d800      	bhi.n	8000df2 <__aeabi_ddiv+0x506>
 8000df0:	e70a      	b.n	8000c08 <__aeabi_ddiv+0x31c>
 8000df2:	1e83      	subs	r3, r0, #2
 8000df4:	1989      	adds	r1, r1, r6
 8000df6:	e707      	b.n	8000c08 <__aeabi_ddiv+0x31c>
 8000df8:	230f      	movs	r3, #15
 8000dfa:	4013      	ands	r3, r2
 8000dfc:	2b04      	cmp	r3, #4
 8000dfe:	d100      	bne.n	8000e02 <__aeabi_ddiv+0x516>
 8000e00:	e5e6      	b.n	80009d0 <__aeabi_ddiv+0xe4>
 8000e02:	1d17      	adds	r7, r2, #4
 8000e04:	4297      	cmp	r7, r2
 8000e06:	4192      	sbcs	r2, r2
 8000e08:	4253      	negs	r3, r2
 8000e0a:	449b      	add	fp, r3
 8000e0c:	08fa      	lsrs	r2, r7, #3
 8000e0e:	e5e0      	b.n	80009d2 <__aeabi_ddiv+0xe6>
 8000e10:	2800      	cmp	r0, #0
 8000e12:	d100      	bne.n	8000e16 <__aeabi_ddiv+0x52a>
 8000e14:	e5d7      	b.n	80009c6 <__aeabi_ddiv+0xda>
 8000e16:	1871      	adds	r1, r6, r1
 8000e18:	1e53      	subs	r3, r2, #1
 8000e1a:	42b1      	cmp	r1, r6
 8000e1c:	d327      	bcc.n	8000e6e <__aeabi_ddiv+0x582>
 8000e1e:	42a9      	cmp	r1, r5
 8000e20:	d315      	bcc.n	8000e4e <__aeabi_ddiv+0x562>
 8000e22:	d058      	beq.n	8000ed6 <__aeabi_ddiv+0x5ea>
 8000e24:	001a      	movs	r2, r3
 8000e26:	e773      	b.n	8000d10 <__aeabi_ddiv+0x424>
 8000e28:	2b00      	cmp	r3, #0
 8000e2a:	dc00      	bgt.n	8000e2e <__aeabi_ddiv+0x542>
 8000e2c:	e604      	b.n	8000a38 <__aeabi_ddiv+0x14c>
 8000e2e:	2301      	movs	r3, #1
 8000e30:	2200      	movs	r2, #0
 8000e32:	449b      	add	fp, r3
 8000e34:	e5cd      	b.n	80009d2 <__aeabi_ddiv+0xe6>
 8000e36:	2302      	movs	r3, #2
 8000e38:	4447      	add	r7, r8
 8000e3a:	4547      	cmp	r7, r8
 8000e3c:	4189      	sbcs	r1, r1
 8000e3e:	425b      	negs	r3, r3
 8000e40:	469c      	mov	ip, r3
 8000e42:	4249      	negs	r1, r1
 8000e44:	1989      	adds	r1, r1, r6
 8000e46:	190c      	adds	r4, r1, r4
 8000e48:	44e3      	add	fp, ip
 8000e4a:	1a24      	subs	r4, r4, r0
 8000e4c:	e703      	b.n	8000c56 <__aeabi_ddiv+0x36a>
 8000e4e:	4643      	mov	r3, r8
 8000e50:	005f      	lsls	r7, r3, #1
 8000e52:	4547      	cmp	r7, r8
 8000e54:	419b      	sbcs	r3, r3
 8000e56:	46b8      	mov	r8, r7
 8000e58:	425b      	negs	r3, r3
 8000e5a:	199e      	adds	r6, r3, r6
 8000e5c:	3a02      	subs	r2, #2
 8000e5e:	1989      	adds	r1, r1, r6
 8000e60:	42a9      	cmp	r1, r5
 8000e62:	d000      	beq.n	8000e66 <__aeabi_ddiv+0x57a>
 8000e64:	e754      	b.n	8000d10 <__aeabi_ddiv+0x424>
 8000e66:	4540      	cmp	r0, r8
 8000e68:	d000      	beq.n	8000e6c <__aeabi_ddiv+0x580>
 8000e6a:	e751      	b.n	8000d10 <__aeabi_ddiv+0x424>
 8000e6c:	e5ab      	b.n	80009c6 <__aeabi_ddiv+0xda>
 8000e6e:	001a      	movs	r2, r3
 8000e70:	e7f6      	b.n	8000e60 <__aeabi_ddiv+0x574>
 8000e72:	211f      	movs	r1, #31
 8000e74:	465f      	mov	r7, fp
 8000e76:	4249      	negs	r1, r1
 8000e78:	1b0c      	subs	r4, r1, r4
 8000e7a:	40e7      	lsrs	r7, r4
 8000e7c:	2b20      	cmp	r3, #32
 8000e7e:	d007      	beq.n	8000e90 <__aeabi_ddiv+0x5a4>
 8000e80:	491a      	ldr	r1, [pc, #104]	; (8000eec <__aeabi_ddiv+0x600>)
 8000e82:	9b00      	ldr	r3, [sp, #0]
 8000e84:	468c      	mov	ip, r1
 8000e86:	4463      	add	r3, ip
 8000e88:	0018      	movs	r0, r3
 8000e8a:	465b      	mov	r3, fp
 8000e8c:	4083      	lsls	r3, r0
 8000e8e:	431a      	orrs	r2, r3
 8000e90:	1e50      	subs	r0, r2, #1
 8000e92:	4182      	sbcs	r2, r0
 8000e94:	433a      	orrs	r2, r7
 8000e96:	2707      	movs	r7, #7
 8000e98:	2300      	movs	r3, #0
 8000e9a:	4017      	ands	r7, r2
 8000e9c:	d009      	beq.n	8000eb2 <__aeabi_ddiv+0x5c6>
 8000e9e:	210f      	movs	r1, #15
 8000ea0:	2300      	movs	r3, #0
 8000ea2:	4011      	ands	r1, r2
 8000ea4:	0014      	movs	r4, r2
 8000ea6:	2904      	cmp	r1, #4
 8000ea8:	d195      	bne.n	8000dd6 <__aeabi_ddiv+0x4ea>
 8000eaa:	0022      	movs	r2, r4
 8000eac:	075f      	lsls	r7, r3, #29
 8000eae:	025b      	lsls	r3, r3, #9
 8000eb0:	0b1b      	lsrs	r3, r3, #12
 8000eb2:	08d2      	lsrs	r2, r2, #3
 8000eb4:	4317      	orrs	r7, r2
 8000eb6:	2200      	movs	r2, #0
 8000eb8:	e5a6      	b.n	8000a08 <__aeabi_ddiv+0x11c>
 8000eba:	2380      	movs	r3, #128	; 0x80
 8000ebc:	4659      	mov	r1, fp
 8000ebe:	031b      	lsls	r3, r3, #12
 8000ec0:	430b      	orrs	r3, r1
 8000ec2:	031b      	lsls	r3, r3, #12
 8000ec4:	0017      	movs	r7, r2
 8000ec6:	0b1b      	lsrs	r3, r3, #12
 8000ec8:	4a06      	ldr	r2, [pc, #24]	; (8000ee4 <__aeabi_ddiv+0x5f8>)
 8000eca:	e59d      	b.n	8000a08 <__aeabi_ddiv+0x11c>
 8000ecc:	42bd      	cmp	r5, r7
 8000ece:	d8b2      	bhi.n	8000e36 <__aeabi_ddiv+0x54a>
 8000ed0:	469b      	mov	fp, r3
 8000ed2:	2400      	movs	r4, #0
 8000ed4:	e6bf      	b.n	8000c56 <__aeabi_ddiv+0x36a>
 8000ed6:	4580      	cmp	r8, r0
 8000ed8:	d3b9      	bcc.n	8000e4e <__aeabi_ddiv+0x562>
 8000eda:	001a      	movs	r2, r3
 8000edc:	e7c3      	b.n	8000e66 <__aeabi_ddiv+0x57a>
 8000ede:	46c0      	nop			; (mov r8, r8)
 8000ee0:	000003ff 	.word	0x000003ff
 8000ee4:	000007ff 	.word	0x000007ff
 8000ee8:	0000041e 	.word	0x0000041e
 8000eec:	0000043e 	.word	0x0000043e

08000ef0 <__aeabi_dmul>:
 8000ef0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000ef2:	4657      	mov	r7, sl
 8000ef4:	46de      	mov	lr, fp
 8000ef6:	464e      	mov	r6, r9
 8000ef8:	4645      	mov	r5, r8
 8000efa:	b5e0      	push	{r5, r6, r7, lr}
 8000efc:	4683      	mov	fp, r0
 8000efe:	0006      	movs	r6, r0
 8000f00:	030f      	lsls	r7, r1, #12
 8000f02:	0048      	lsls	r0, r1, #1
 8000f04:	b087      	sub	sp, #28
 8000f06:	4692      	mov	sl, r2
 8000f08:	001d      	movs	r5, r3
 8000f0a:	0b3f      	lsrs	r7, r7, #12
 8000f0c:	0d40      	lsrs	r0, r0, #21
 8000f0e:	0fcc      	lsrs	r4, r1, #31
 8000f10:	2800      	cmp	r0, #0
 8000f12:	d100      	bne.n	8000f16 <__aeabi_dmul+0x26>
 8000f14:	e06f      	b.n	8000ff6 <__aeabi_dmul+0x106>
 8000f16:	4bde      	ldr	r3, [pc, #888]	; (8001290 <__aeabi_dmul+0x3a0>)
 8000f18:	4298      	cmp	r0, r3
 8000f1a:	d038      	beq.n	8000f8e <__aeabi_dmul+0x9e>
 8000f1c:	2380      	movs	r3, #128	; 0x80
 8000f1e:	00ff      	lsls	r7, r7, #3
 8000f20:	041b      	lsls	r3, r3, #16
 8000f22:	431f      	orrs	r7, r3
 8000f24:	0f73      	lsrs	r3, r6, #29
 8000f26:	433b      	orrs	r3, r7
 8000f28:	9301      	str	r3, [sp, #4]
 8000f2a:	4bda      	ldr	r3, [pc, #872]	; (8001294 <__aeabi_dmul+0x3a4>)
 8000f2c:	2700      	movs	r7, #0
 8000f2e:	4699      	mov	r9, r3
 8000f30:	2300      	movs	r3, #0
 8000f32:	469b      	mov	fp, r3
 8000f34:	00f6      	lsls	r6, r6, #3
 8000f36:	4481      	add	r9, r0
 8000f38:	032b      	lsls	r3, r5, #12
 8000f3a:	0069      	lsls	r1, r5, #1
 8000f3c:	0b1b      	lsrs	r3, r3, #12
 8000f3e:	4652      	mov	r2, sl
 8000f40:	4698      	mov	r8, r3
 8000f42:	0d49      	lsrs	r1, r1, #21
 8000f44:	0fed      	lsrs	r5, r5, #31
 8000f46:	2900      	cmp	r1, #0
 8000f48:	d100      	bne.n	8000f4c <__aeabi_dmul+0x5c>
 8000f4a:	e085      	b.n	8001058 <__aeabi_dmul+0x168>
 8000f4c:	4bd0      	ldr	r3, [pc, #832]	; (8001290 <__aeabi_dmul+0x3a0>)
 8000f4e:	4299      	cmp	r1, r3
 8000f50:	d100      	bne.n	8000f54 <__aeabi_dmul+0x64>
 8000f52:	e073      	b.n	800103c <__aeabi_dmul+0x14c>
 8000f54:	4643      	mov	r3, r8
 8000f56:	00da      	lsls	r2, r3, #3
 8000f58:	2380      	movs	r3, #128	; 0x80
 8000f5a:	041b      	lsls	r3, r3, #16
 8000f5c:	4313      	orrs	r3, r2
 8000f5e:	4652      	mov	r2, sl
 8000f60:	48cc      	ldr	r0, [pc, #816]	; (8001294 <__aeabi_dmul+0x3a4>)
 8000f62:	0f52      	lsrs	r2, r2, #29
 8000f64:	4684      	mov	ip, r0
 8000f66:	4313      	orrs	r3, r2
 8000f68:	4652      	mov	r2, sl
 8000f6a:	2000      	movs	r0, #0
 8000f6c:	4461      	add	r1, ip
 8000f6e:	00d2      	lsls	r2, r2, #3
 8000f70:	4489      	add	r9, r1
 8000f72:	0021      	movs	r1, r4
 8000f74:	4069      	eors	r1, r5
 8000f76:	9100      	str	r1, [sp, #0]
 8000f78:	468c      	mov	ip, r1
 8000f7a:	2101      	movs	r1, #1
 8000f7c:	4449      	add	r1, r9
 8000f7e:	468a      	mov	sl, r1
 8000f80:	2f0f      	cmp	r7, #15
 8000f82:	d900      	bls.n	8000f86 <__aeabi_dmul+0x96>
 8000f84:	e090      	b.n	80010a8 <__aeabi_dmul+0x1b8>
 8000f86:	49c4      	ldr	r1, [pc, #784]	; (8001298 <__aeabi_dmul+0x3a8>)
 8000f88:	00bf      	lsls	r7, r7, #2
 8000f8a:	59cf      	ldr	r7, [r1, r7]
 8000f8c:	46bf      	mov	pc, r7
 8000f8e:	465b      	mov	r3, fp
 8000f90:	433b      	orrs	r3, r7
 8000f92:	9301      	str	r3, [sp, #4]
 8000f94:	d000      	beq.n	8000f98 <__aeabi_dmul+0xa8>
 8000f96:	e16a      	b.n	800126e <__aeabi_dmul+0x37e>
 8000f98:	2302      	movs	r3, #2
 8000f9a:	2708      	movs	r7, #8
 8000f9c:	2600      	movs	r6, #0
 8000f9e:	4681      	mov	r9, r0
 8000fa0:	469b      	mov	fp, r3
 8000fa2:	e7c9      	b.n	8000f38 <__aeabi_dmul+0x48>
 8000fa4:	0032      	movs	r2, r6
 8000fa6:	4658      	mov	r0, fp
 8000fa8:	9b01      	ldr	r3, [sp, #4]
 8000faa:	4661      	mov	r1, ip
 8000fac:	9100      	str	r1, [sp, #0]
 8000fae:	2802      	cmp	r0, #2
 8000fb0:	d100      	bne.n	8000fb4 <__aeabi_dmul+0xc4>
 8000fb2:	e075      	b.n	80010a0 <__aeabi_dmul+0x1b0>
 8000fb4:	2803      	cmp	r0, #3
 8000fb6:	d100      	bne.n	8000fba <__aeabi_dmul+0xca>
 8000fb8:	e1fe      	b.n	80013b8 <__aeabi_dmul+0x4c8>
 8000fba:	2801      	cmp	r0, #1
 8000fbc:	d000      	beq.n	8000fc0 <__aeabi_dmul+0xd0>
 8000fbe:	e12c      	b.n	800121a <__aeabi_dmul+0x32a>
 8000fc0:	2300      	movs	r3, #0
 8000fc2:	2700      	movs	r7, #0
 8000fc4:	2600      	movs	r6, #0
 8000fc6:	2500      	movs	r5, #0
 8000fc8:	033f      	lsls	r7, r7, #12
 8000fca:	0d2a      	lsrs	r2, r5, #20
 8000fcc:	0b3f      	lsrs	r7, r7, #12
 8000fce:	48b3      	ldr	r0, [pc, #716]	; (800129c <__aeabi_dmul+0x3ac>)
 8000fd0:	0512      	lsls	r2, r2, #20
 8000fd2:	433a      	orrs	r2, r7
 8000fd4:	4002      	ands	r2, r0
 8000fd6:	051b      	lsls	r3, r3, #20
 8000fd8:	4313      	orrs	r3, r2
 8000fda:	9a00      	ldr	r2, [sp, #0]
 8000fdc:	005b      	lsls	r3, r3, #1
 8000fde:	07d1      	lsls	r1, r2, #31
 8000fe0:	085b      	lsrs	r3, r3, #1
 8000fe2:	430b      	orrs	r3, r1
 8000fe4:	0030      	movs	r0, r6
 8000fe6:	0019      	movs	r1, r3
 8000fe8:	b007      	add	sp, #28
 8000fea:	bc3c      	pop	{r2, r3, r4, r5}
 8000fec:	4690      	mov	r8, r2
 8000fee:	4699      	mov	r9, r3
 8000ff0:	46a2      	mov	sl, r4
 8000ff2:	46ab      	mov	fp, r5
 8000ff4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000ff6:	465b      	mov	r3, fp
 8000ff8:	433b      	orrs	r3, r7
 8000ffa:	9301      	str	r3, [sp, #4]
 8000ffc:	d100      	bne.n	8001000 <__aeabi_dmul+0x110>
 8000ffe:	e12f      	b.n	8001260 <__aeabi_dmul+0x370>
 8001000:	2f00      	cmp	r7, #0
 8001002:	d100      	bne.n	8001006 <__aeabi_dmul+0x116>
 8001004:	e1a5      	b.n	8001352 <__aeabi_dmul+0x462>
 8001006:	0038      	movs	r0, r7
 8001008:	f000 faba 	bl	8001580 <__clzsi2>
 800100c:	0003      	movs	r3, r0
 800100e:	3b0b      	subs	r3, #11
 8001010:	2b1c      	cmp	r3, #28
 8001012:	dd00      	ble.n	8001016 <__aeabi_dmul+0x126>
 8001014:	e196      	b.n	8001344 <__aeabi_dmul+0x454>
 8001016:	221d      	movs	r2, #29
 8001018:	1ad3      	subs	r3, r2, r3
 800101a:	465a      	mov	r2, fp
 800101c:	0001      	movs	r1, r0
 800101e:	40da      	lsrs	r2, r3
 8001020:	465e      	mov	r6, fp
 8001022:	3908      	subs	r1, #8
 8001024:	408f      	lsls	r7, r1
 8001026:	0013      	movs	r3, r2
 8001028:	408e      	lsls	r6, r1
 800102a:	433b      	orrs	r3, r7
 800102c:	9301      	str	r3, [sp, #4]
 800102e:	4b9c      	ldr	r3, [pc, #624]	; (80012a0 <__aeabi_dmul+0x3b0>)
 8001030:	2700      	movs	r7, #0
 8001032:	1a1b      	subs	r3, r3, r0
 8001034:	4699      	mov	r9, r3
 8001036:	2300      	movs	r3, #0
 8001038:	469b      	mov	fp, r3
 800103a:	e77d      	b.n	8000f38 <__aeabi_dmul+0x48>
 800103c:	4641      	mov	r1, r8
 800103e:	4653      	mov	r3, sl
 8001040:	430b      	orrs	r3, r1
 8001042:	4993      	ldr	r1, [pc, #588]	; (8001290 <__aeabi_dmul+0x3a0>)
 8001044:	468c      	mov	ip, r1
 8001046:	44e1      	add	r9, ip
 8001048:	2b00      	cmp	r3, #0
 800104a:	d000      	beq.n	800104e <__aeabi_dmul+0x15e>
 800104c:	e11a      	b.n	8001284 <__aeabi_dmul+0x394>
 800104e:	2202      	movs	r2, #2
 8001050:	2002      	movs	r0, #2
 8001052:	4317      	orrs	r7, r2
 8001054:	2200      	movs	r2, #0
 8001056:	e78c      	b.n	8000f72 <__aeabi_dmul+0x82>
 8001058:	4313      	orrs	r3, r2
 800105a:	d100      	bne.n	800105e <__aeabi_dmul+0x16e>
 800105c:	e10d      	b.n	800127a <__aeabi_dmul+0x38a>
 800105e:	4643      	mov	r3, r8
 8001060:	2b00      	cmp	r3, #0
 8001062:	d100      	bne.n	8001066 <__aeabi_dmul+0x176>
 8001064:	e181      	b.n	800136a <__aeabi_dmul+0x47a>
 8001066:	4640      	mov	r0, r8
 8001068:	f000 fa8a 	bl	8001580 <__clzsi2>
 800106c:	0002      	movs	r2, r0
 800106e:	3a0b      	subs	r2, #11
 8001070:	2a1c      	cmp	r2, #28
 8001072:	dd00      	ble.n	8001076 <__aeabi_dmul+0x186>
 8001074:	e172      	b.n	800135c <__aeabi_dmul+0x46c>
 8001076:	0001      	movs	r1, r0
 8001078:	4643      	mov	r3, r8
 800107a:	3908      	subs	r1, #8
 800107c:	408b      	lsls	r3, r1
 800107e:	4698      	mov	r8, r3
 8001080:	231d      	movs	r3, #29
 8001082:	1a9a      	subs	r2, r3, r2
 8001084:	4653      	mov	r3, sl
 8001086:	40d3      	lsrs	r3, r2
 8001088:	001a      	movs	r2, r3
 800108a:	4643      	mov	r3, r8
 800108c:	4313      	orrs	r3, r2
 800108e:	4652      	mov	r2, sl
 8001090:	408a      	lsls	r2, r1
 8001092:	4649      	mov	r1, r9
 8001094:	1a08      	subs	r0, r1, r0
 8001096:	4982      	ldr	r1, [pc, #520]	; (80012a0 <__aeabi_dmul+0x3b0>)
 8001098:	4689      	mov	r9, r1
 800109a:	4481      	add	r9, r0
 800109c:	2000      	movs	r0, #0
 800109e:	e768      	b.n	8000f72 <__aeabi_dmul+0x82>
 80010a0:	4b7b      	ldr	r3, [pc, #492]	; (8001290 <__aeabi_dmul+0x3a0>)
 80010a2:	2700      	movs	r7, #0
 80010a4:	2600      	movs	r6, #0
 80010a6:	e78e      	b.n	8000fc6 <__aeabi_dmul+0xd6>
 80010a8:	0c14      	lsrs	r4, r2, #16
 80010aa:	0412      	lsls	r2, r2, #16
 80010ac:	0c12      	lsrs	r2, r2, #16
 80010ae:	0011      	movs	r1, r2
 80010b0:	0c37      	lsrs	r7, r6, #16
 80010b2:	0436      	lsls	r6, r6, #16
 80010b4:	0c35      	lsrs	r5, r6, #16
 80010b6:	4379      	muls	r1, r7
 80010b8:	0028      	movs	r0, r5
 80010ba:	468c      	mov	ip, r1
 80010bc:	002e      	movs	r6, r5
 80010be:	4360      	muls	r0, r4
 80010c0:	4460      	add	r0, ip
 80010c2:	4683      	mov	fp, r0
 80010c4:	4356      	muls	r6, r2
 80010c6:	0021      	movs	r1, r4
 80010c8:	0c30      	lsrs	r0, r6, #16
 80010ca:	4680      	mov	r8, r0
 80010cc:	4658      	mov	r0, fp
 80010ce:	4379      	muls	r1, r7
 80010d0:	4440      	add	r0, r8
 80010d2:	9102      	str	r1, [sp, #8]
 80010d4:	4584      	cmp	ip, r0
 80010d6:	d906      	bls.n	80010e6 <__aeabi_dmul+0x1f6>
 80010d8:	4688      	mov	r8, r1
 80010da:	2180      	movs	r1, #128	; 0x80
 80010dc:	0249      	lsls	r1, r1, #9
 80010de:	468c      	mov	ip, r1
 80010e0:	44e0      	add	r8, ip
 80010e2:	4641      	mov	r1, r8
 80010e4:	9102      	str	r1, [sp, #8]
 80010e6:	0436      	lsls	r6, r6, #16
 80010e8:	0c01      	lsrs	r1, r0, #16
 80010ea:	0c36      	lsrs	r6, r6, #16
 80010ec:	0400      	lsls	r0, r0, #16
 80010ee:	468b      	mov	fp, r1
 80010f0:	1981      	adds	r1, r0, r6
 80010f2:	0c1e      	lsrs	r6, r3, #16
 80010f4:	041b      	lsls	r3, r3, #16
 80010f6:	0c1b      	lsrs	r3, r3, #16
 80010f8:	9103      	str	r1, [sp, #12]
 80010fa:	0019      	movs	r1, r3
 80010fc:	4379      	muls	r1, r7
 80010fe:	468c      	mov	ip, r1
 8001100:	0028      	movs	r0, r5
 8001102:	4375      	muls	r5, r6
 8001104:	4465      	add	r5, ip
 8001106:	46a8      	mov	r8, r5
 8001108:	4358      	muls	r0, r3
 800110a:	0c05      	lsrs	r5, r0, #16
 800110c:	4445      	add	r5, r8
 800110e:	4377      	muls	r7, r6
 8001110:	42a9      	cmp	r1, r5
 8001112:	d903      	bls.n	800111c <__aeabi_dmul+0x22c>
 8001114:	2180      	movs	r1, #128	; 0x80
 8001116:	0249      	lsls	r1, r1, #9
 8001118:	468c      	mov	ip, r1
 800111a:	4467      	add	r7, ip
 800111c:	0c29      	lsrs	r1, r5, #16
 800111e:	468c      	mov	ip, r1
 8001120:	0039      	movs	r1, r7
 8001122:	0400      	lsls	r0, r0, #16
 8001124:	0c00      	lsrs	r0, r0, #16
 8001126:	042d      	lsls	r5, r5, #16
 8001128:	182d      	adds	r5, r5, r0
 800112a:	4461      	add	r1, ip
 800112c:	44ab      	add	fp, r5
 800112e:	9105      	str	r1, [sp, #20]
 8001130:	4659      	mov	r1, fp
 8001132:	9104      	str	r1, [sp, #16]
 8001134:	9901      	ldr	r1, [sp, #4]
 8001136:	040f      	lsls	r7, r1, #16
 8001138:	0c3f      	lsrs	r7, r7, #16
 800113a:	0c08      	lsrs	r0, r1, #16
 800113c:	0039      	movs	r1, r7
 800113e:	4351      	muls	r1, r2
 8001140:	4342      	muls	r2, r0
 8001142:	4690      	mov	r8, r2
 8001144:	0002      	movs	r2, r0
 8001146:	468c      	mov	ip, r1
 8001148:	0c09      	lsrs	r1, r1, #16
 800114a:	468b      	mov	fp, r1
 800114c:	4362      	muls	r2, r4
 800114e:	437c      	muls	r4, r7
 8001150:	4444      	add	r4, r8
 8001152:	445c      	add	r4, fp
 8001154:	45a0      	cmp	r8, r4
 8001156:	d903      	bls.n	8001160 <__aeabi_dmul+0x270>
 8001158:	2180      	movs	r1, #128	; 0x80
 800115a:	0249      	lsls	r1, r1, #9
 800115c:	4688      	mov	r8, r1
 800115e:	4442      	add	r2, r8
 8001160:	0c21      	lsrs	r1, r4, #16
 8001162:	4688      	mov	r8, r1
 8001164:	4661      	mov	r1, ip
 8001166:	0409      	lsls	r1, r1, #16
 8001168:	0c09      	lsrs	r1, r1, #16
 800116a:	468c      	mov	ip, r1
 800116c:	0039      	movs	r1, r7
 800116e:	4359      	muls	r1, r3
 8001170:	4343      	muls	r3, r0
 8001172:	4370      	muls	r0, r6
 8001174:	437e      	muls	r6, r7
 8001176:	0c0f      	lsrs	r7, r1, #16
 8001178:	18f6      	adds	r6, r6, r3
 800117a:	0424      	lsls	r4, r4, #16
 800117c:	19be      	adds	r6, r7, r6
 800117e:	4464      	add	r4, ip
 8001180:	4442      	add	r2, r8
 8001182:	468c      	mov	ip, r1
 8001184:	42b3      	cmp	r3, r6
 8001186:	d903      	bls.n	8001190 <__aeabi_dmul+0x2a0>
 8001188:	2380      	movs	r3, #128	; 0x80
 800118a:	025b      	lsls	r3, r3, #9
 800118c:	4698      	mov	r8, r3
 800118e:	4440      	add	r0, r8
 8001190:	9b02      	ldr	r3, [sp, #8]
 8001192:	4661      	mov	r1, ip
 8001194:	4698      	mov	r8, r3
 8001196:	9b04      	ldr	r3, [sp, #16]
 8001198:	0437      	lsls	r7, r6, #16
 800119a:	4443      	add	r3, r8
 800119c:	469b      	mov	fp, r3
 800119e:	45ab      	cmp	fp, r5
 80011a0:	41ad      	sbcs	r5, r5
 80011a2:	426b      	negs	r3, r5
 80011a4:	040d      	lsls	r5, r1, #16
 80011a6:	9905      	ldr	r1, [sp, #20]
 80011a8:	0c2d      	lsrs	r5, r5, #16
 80011aa:	468c      	mov	ip, r1
 80011ac:	197f      	adds	r7, r7, r5
 80011ae:	4467      	add	r7, ip
 80011b0:	18fd      	adds	r5, r7, r3
 80011b2:	46a8      	mov	r8, r5
 80011b4:	465d      	mov	r5, fp
 80011b6:	192d      	adds	r5, r5, r4
 80011b8:	42a5      	cmp	r5, r4
 80011ba:	41a4      	sbcs	r4, r4
 80011bc:	4693      	mov	fp, r2
 80011be:	4264      	negs	r4, r4
 80011c0:	46a4      	mov	ip, r4
 80011c2:	44c3      	add	fp, r8
 80011c4:	44dc      	add	ip, fp
 80011c6:	428f      	cmp	r7, r1
 80011c8:	41bf      	sbcs	r7, r7
 80011ca:	4598      	cmp	r8, r3
 80011cc:	419b      	sbcs	r3, r3
 80011ce:	4593      	cmp	fp, r2
 80011d0:	4192      	sbcs	r2, r2
 80011d2:	45a4      	cmp	ip, r4
 80011d4:	41a4      	sbcs	r4, r4
 80011d6:	425b      	negs	r3, r3
 80011d8:	427f      	negs	r7, r7
 80011da:	431f      	orrs	r7, r3
 80011dc:	0c36      	lsrs	r6, r6, #16
 80011de:	4252      	negs	r2, r2
 80011e0:	4264      	negs	r4, r4
 80011e2:	19bf      	adds	r7, r7, r6
 80011e4:	4322      	orrs	r2, r4
 80011e6:	18bf      	adds	r7, r7, r2
 80011e8:	4662      	mov	r2, ip
 80011ea:	1838      	adds	r0, r7, r0
 80011ec:	0243      	lsls	r3, r0, #9
 80011ee:	0dd2      	lsrs	r2, r2, #23
 80011f0:	9903      	ldr	r1, [sp, #12]
 80011f2:	4313      	orrs	r3, r2
 80011f4:	026a      	lsls	r2, r5, #9
 80011f6:	430a      	orrs	r2, r1
 80011f8:	1e50      	subs	r0, r2, #1
 80011fa:	4182      	sbcs	r2, r0
 80011fc:	4661      	mov	r1, ip
 80011fe:	0ded      	lsrs	r5, r5, #23
 8001200:	432a      	orrs	r2, r5
 8001202:	024e      	lsls	r6, r1, #9
 8001204:	4332      	orrs	r2, r6
 8001206:	01d9      	lsls	r1, r3, #7
 8001208:	d400      	bmi.n	800120c <__aeabi_dmul+0x31c>
 800120a:	e0b3      	b.n	8001374 <__aeabi_dmul+0x484>
 800120c:	2601      	movs	r6, #1
 800120e:	0850      	lsrs	r0, r2, #1
 8001210:	4032      	ands	r2, r6
 8001212:	4302      	orrs	r2, r0
 8001214:	07de      	lsls	r6, r3, #31
 8001216:	4332      	orrs	r2, r6
 8001218:	085b      	lsrs	r3, r3, #1
 800121a:	4c22      	ldr	r4, [pc, #136]	; (80012a4 <__aeabi_dmul+0x3b4>)
 800121c:	4454      	add	r4, sl
 800121e:	2c00      	cmp	r4, #0
 8001220:	dd62      	ble.n	80012e8 <__aeabi_dmul+0x3f8>
 8001222:	0751      	lsls	r1, r2, #29
 8001224:	d009      	beq.n	800123a <__aeabi_dmul+0x34a>
 8001226:	200f      	movs	r0, #15
 8001228:	4010      	ands	r0, r2
 800122a:	2804      	cmp	r0, #4
 800122c:	d005      	beq.n	800123a <__aeabi_dmul+0x34a>
 800122e:	1d10      	adds	r0, r2, #4
 8001230:	4290      	cmp	r0, r2
 8001232:	4192      	sbcs	r2, r2
 8001234:	4252      	negs	r2, r2
 8001236:	189b      	adds	r3, r3, r2
 8001238:	0002      	movs	r2, r0
 800123a:	01d9      	lsls	r1, r3, #7
 800123c:	d504      	bpl.n	8001248 <__aeabi_dmul+0x358>
 800123e:	2480      	movs	r4, #128	; 0x80
 8001240:	4819      	ldr	r0, [pc, #100]	; (80012a8 <__aeabi_dmul+0x3b8>)
 8001242:	00e4      	lsls	r4, r4, #3
 8001244:	4003      	ands	r3, r0
 8001246:	4454      	add	r4, sl
 8001248:	4818      	ldr	r0, [pc, #96]	; (80012ac <__aeabi_dmul+0x3bc>)
 800124a:	4284      	cmp	r4, r0
 800124c:	dd00      	ble.n	8001250 <__aeabi_dmul+0x360>
 800124e:	e727      	b.n	80010a0 <__aeabi_dmul+0x1b0>
 8001250:	075e      	lsls	r6, r3, #29
 8001252:	025b      	lsls	r3, r3, #9
 8001254:	08d2      	lsrs	r2, r2, #3
 8001256:	0b1f      	lsrs	r7, r3, #12
 8001258:	0563      	lsls	r3, r4, #21
 800125a:	4316      	orrs	r6, r2
 800125c:	0d5b      	lsrs	r3, r3, #21
 800125e:	e6b2      	b.n	8000fc6 <__aeabi_dmul+0xd6>
 8001260:	2300      	movs	r3, #0
 8001262:	4699      	mov	r9, r3
 8001264:	3301      	adds	r3, #1
 8001266:	2704      	movs	r7, #4
 8001268:	2600      	movs	r6, #0
 800126a:	469b      	mov	fp, r3
 800126c:	e664      	b.n	8000f38 <__aeabi_dmul+0x48>
 800126e:	2303      	movs	r3, #3
 8001270:	9701      	str	r7, [sp, #4]
 8001272:	4681      	mov	r9, r0
 8001274:	270c      	movs	r7, #12
 8001276:	469b      	mov	fp, r3
 8001278:	e65e      	b.n	8000f38 <__aeabi_dmul+0x48>
 800127a:	2201      	movs	r2, #1
 800127c:	2001      	movs	r0, #1
 800127e:	4317      	orrs	r7, r2
 8001280:	2200      	movs	r2, #0
 8001282:	e676      	b.n	8000f72 <__aeabi_dmul+0x82>
 8001284:	2303      	movs	r3, #3
 8001286:	2003      	movs	r0, #3
 8001288:	431f      	orrs	r7, r3
 800128a:	4643      	mov	r3, r8
 800128c:	e671      	b.n	8000f72 <__aeabi_dmul+0x82>
 800128e:	46c0      	nop			; (mov r8, r8)
 8001290:	000007ff 	.word	0x000007ff
 8001294:	fffffc01 	.word	0xfffffc01
 8001298:	08002f70 	.word	0x08002f70
 800129c:	800fffff 	.word	0x800fffff
 80012a0:	fffffc0d 	.word	0xfffffc0d
 80012a4:	000003ff 	.word	0x000003ff
 80012a8:	feffffff 	.word	0xfeffffff
 80012ac:	000007fe 	.word	0x000007fe
 80012b0:	2300      	movs	r3, #0
 80012b2:	2780      	movs	r7, #128	; 0x80
 80012b4:	9300      	str	r3, [sp, #0]
 80012b6:	033f      	lsls	r7, r7, #12
 80012b8:	2600      	movs	r6, #0
 80012ba:	4b43      	ldr	r3, [pc, #268]	; (80013c8 <__aeabi_dmul+0x4d8>)
 80012bc:	e683      	b.n	8000fc6 <__aeabi_dmul+0xd6>
 80012be:	9b01      	ldr	r3, [sp, #4]
 80012c0:	0032      	movs	r2, r6
 80012c2:	46a4      	mov	ip, r4
 80012c4:	4658      	mov	r0, fp
 80012c6:	e670      	b.n	8000faa <__aeabi_dmul+0xba>
 80012c8:	46ac      	mov	ip, r5
 80012ca:	e66e      	b.n	8000faa <__aeabi_dmul+0xba>
 80012cc:	2780      	movs	r7, #128	; 0x80
 80012ce:	9901      	ldr	r1, [sp, #4]
 80012d0:	033f      	lsls	r7, r7, #12
 80012d2:	4239      	tst	r1, r7
 80012d4:	d02d      	beq.n	8001332 <__aeabi_dmul+0x442>
 80012d6:	423b      	tst	r3, r7
 80012d8:	d12b      	bne.n	8001332 <__aeabi_dmul+0x442>
 80012da:	431f      	orrs	r7, r3
 80012dc:	033f      	lsls	r7, r7, #12
 80012de:	0b3f      	lsrs	r7, r7, #12
 80012e0:	9500      	str	r5, [sp, #0]
 80012e2:	0016      	movs	r6, r2
 80012e4:	4b38      	ldr	r3, [pc, #224]	; (80013c8 <__aeabi_dmul+0x4d8>)
 80012e6:	e66e      	b.n	8000fc6 <__aeabi_dmul+0xd6>
 80012e8:	2501      	movs	r5, #1
 80012ea:	1b2d      	subs	r5, r5, r4
 80012ec:	2d38      	cmp	r5, #56	; 0x38
 80012ee:	dd00      	ble.n	80012f2 <__aeabi_dmul+0x402>
 80012f0:	e666      	b.n	8000fc0 <__aeabi_dmul+0xd0>
 80012f2:	2d1f      	cmp	r5, #31
 80012f4:	dc40      	bgt.n	8001378 <__aeabi_dmul+0x488>
 80012f6:	4835      	ldr	r0, [pc, #212]	; (80013cc <__aeabi_dmul+0x4dc>)
 80012f8:	001c      	movs	r4, r3
 80012fa:	4450      	add	r0, sl
 80012fc:	0016      	movs	r6, r2
 80012fe:	4082      	lsls	r2, r0
 8001300:	4084      	lsls	r4, r0
 8001302:	40ee      	lsrs	r6, r5
 8001304:	1e50      	subs	r0, r2, #1
 8001306:	4182      	sbcs	r2, r0
 8001308:	4334      	orrs	r4, r6
 800130a:	4314      	orrs	r4, r2
 800130c:	40eb      	lsrs	r3, r5
 800130e:	0762      	lsls	r2, r4, #29
 8001310:	d009      	beq.n	8001326 <__aeabi_dmul+0x436>
 8001312:	220f      	movs	r2, #15
 8001314:	4022      	ands	r2, r4
 8001316:	2a04      	cmp	r2, #4
 8001318:	d005      	beq.n	8001326 <__aeabi_dmul+0x436>
 800131a:	0022      	movs	r2, r4
 800131c:	1d14      	adds	r4, r2, #4
 800131e:	4294      	cmp	r4, r2
 8001320:	4180      	sbcs	r0, r0
 8001322:	4240      	negs	r0, r0
 8001324:	181b      	adds	r3, r3, r0
 8001326:	021a      	lsls	r2, r3, #8
 8001328:	d53e      	bpl.n	80013a8 <__aeabi_dmul+0x4b8>
 800132a:	2301      	movs	r3, #1
 800132c:	2700      	movs	r7, #0
 800132e:	2600      	movs	r6, #0
 8001330:	e649      	b.n	8000fc6 <__aeabi_dmul+0xd6>
 8001332:	2780      	movs	r7, #128	; 0x80
 8001334:	9b01      	ldr	r3, [sp, #4]
 8001336:	033f      	lsls	r7, r7, #12
 8001338:	431f      	orrs	r7, r3
 800133a:	033f      	lsls	r7, r7, #12
 800133c:	0b3f      	lsrs	r7, r7, #12
 800133e:	9400      	str	r4, [sp, #0]
 8001340:	4b21      	ldr	r3, [pc, #132]	; (80013c8 <__aeabi_dmul+0x4d8>)
 8001342:	e640      	b.n	8000fc6 <__aeabi_dmul+0xd6>
 8001344:	0003      	movs	r3, r0
 8001346:	465a      	mov	r2, fp
 8001348:	3b28      	subs	r3, #40	; 0x28
 800134a:	409a      	lsls	r2, r3
 800134c:	2600      	movs	r6, #0
 800134e:	9201      	str	r2, [sp, #4]
 8001350:	e66d      	b.n	800102e <__aeabi_dmul+0x13e>
 8001352:	4658      	mov	r0, fp
 8001354:	f000 f914 	bl	8001580 <__clzsi2>
 8001358:	3020      	adds	r0, #32
 800135a:	e657      	b.n	800100c <__aeabi_dmul+0x11c>
 800135c:	0003      	movs	r3, r0
 800135e:	4652      	mov	r2, sl
 8001360:	3b28      	subs	r3, #40	; 0x28
 8001362:	409a      	lsls	r2, r3
 8001364:	0013      	movs	r3, r2
 8001366:	2200      	movs	r2, #0
 8001368:	e693      	b.n	8001092 <__aeabi_dmul+0x1a2>
 800136a:	4650      	mov	r0, sl
 800136c:	f000 f908 	bl	8001580 <__clzsi2>
 8001370:	3020      	adds	r0, #32
 8001372:	e67b      	b.n	800106c <__aeabi_dmul+0x17c>
 8001374:	46ca      	mov	sl, r9
 8001376:	e750      	b.n	800121a <__aeabi_dmul+0x32a>
 8001378:	201f      	movs	r0, #31
 800137a:	001e      	movs	r6, r3
 800137c:	4240      	negs	r0, r0
 800137e:	1b04      	subs	r4, r0, r4
 8001380:	40e6      	lsrs	r6, r4
 8001382:	2d20      	cmp	r5, #32
 8001384:	d003      	beq.n	800138e <__aeabi_dmul+0x49e>
 8001386:	4c12      	ldr	r4, [pc, #72]	; (80013d0 <__aeabi_dmul+0x4e0>)
 8001388:	4454      	add	r4, sl
 800138a:	40a3      	lsls	r3, r4
 800138c:	431a      	orrs	r2, r3
 800138e:	1e50      	subs	r0, r2, #1
 8001390:	4182      	sbcs	r2, r0
 8001392:	4332      	orrs	r2, r6
 8001394:	2607      	movs	r6, #7
 8001396:	2700      	movs	r7, #0
 8001398:	4016      	ands	r6, r2
 800139a:	d009      	beq.n	80013b0 <__aeabi_dmul+0x4c0>
 800139c:	200f      	movs	r0, #15
 800139e:	2300      	movs	r3, #0
 80013a0:	4010      	ands	r0, r2
 80013a2:	0014      	movs	r4, r2
 80013a4:	2804      	cmp	r0, #4
 80013a6:	d1b9      	bne.n	800131c <__aeabi_dmul+0x42c>
 80013a8:	0022      	movs	r2, r4
 80013aa:	075e      	lsls	r6, r3, #29
 80013ac:	025b      	lsls	r3, r3, #9
 80013ae:	0b1f      	lsrs	r7, r3, #12
 80013b0:	08d2      	lsrs	r2, r2, #3
 80013b2:	4316      	orrs	r6, r2
 80013b4:	2300      	movs	r3, #0
 80013b6:	e606      	b.n	8000fc6 <__aeabi_dmul+0xd6>
 80013b8:	2780      	movs	r7, #128	; 0x80
 80013ba:	033f      	lsls	r7, r7, #12
 80013bc:	431f      	orrs	r7, r3
 80013be:	033f      	lsls	r7, r7, #12
 80013c0:	0b3f      	lsrs	r7, r7, #12
 80013c2:	0016      	movs	r6, r2
 80013c4:	4b00      	ldr	r3, [pc, #0]	; (80013c8 <__aeabi_dmul+0x4d8>)
 80013c6:	e5fe      	b.n	8000fc6 <__aeabi_dmul+0xd6>
 80013c8:	000007ff 	.word	0x000007ff
 80013cc:	0000041e 	.word	0x0000041e
 80013d0:	0000043e 	.word	0x0000043e

080013d4 <__aeabi_f2d>:
 80013d4:	0041      	lsls	r1, r0, #1
 80013d6:	0e09      	lsrs	r1, r1, #24
 80013d8:	1c4b      	adds	r3, r1, #1
 80013da:	b570      	push	{r4, r5, r6, lr}
 80013dc:	b2db      	uxtb	r3, r3
 80013de:	0246      	lsls	r6, r0, #9
 80013e0:	0a75      	lsrs	r5, r6, #9
 80013e2:	0fc4      	lsrs	r4, r0, #31
 80013e4:	2b01      	cmp	r3, #1
 80013e6:	dd14      	ble.n	8001412 <__aeabi_f2d+0x3e>
 80013e8:	23e0      	movs	r3, #224	; 0xe0
 80013ea:	009b      	lsls	r3, r3, #2
 80013ec:	076d      	lsls	r5, r5, #29
 80013ee:	0b36      	lsrs	r6, r6, #12
 80013f0:	18cb      	adds	r3, r1, r3
 80013f2:	2100      	movs	r1, #0
 80013f4:	0d0a      	lsrs	r2, r1, #20
 80013f6:	0028      	movs	r0, r5
 80013f8:	0512      	lsls	r2, r2, #20
 80013fa:	4d1c      	ldr	r5, [pc, #112]	; (800146c <__aeabi_f2d+0x98>)
 80013fc:	4332      	orrs	r2, r6
 80013fe:	055b      	lsls	r3, r3, #21
 8001400:	402a      	ands	r2, r5
 8001402:	085b      	lsrs	r3, r3, #1
 8001404:	4313      	orrs	r3, r2
 8001406:	005b      	lsls	r3, r3, #1
 8001408:	07e4      	lsls	r4, r4, #31
 800140a:	085b      	lsrs	r3, r3, #1
 800140c:	4323      	orrs	r3, r4
 800140e:	0019      	movs	r1, r3
 8001410:	bd70      	pop	{r4, r5, r6, pc}
 8001412:	2900      	cmp	r1, #0
 8001414:	d114      	bne.n	8001440 <__aeabi_f2d+0x6c>
 8001416:	2d00      	cmp	r5, #0
 8001418:	d01e      	beq.n	8001458 <__aeabi_f2d+0x84>
 800141a:	0028      	movs	r0, r5
 800141c:	f000 f8b0 	bl	8001580 <__clzsi2>
 8001420:	280a      	cmp	r0, #10
 8001422:	dc1c      	bgt.n	800145e <__aeabi_f2d+0x8a>
 8001424:	230b      	movs	r3, #11
 8001426:	002a      	movs	r2, r5
 8001428:	1a1b      	subs	r3, r3, r0
 800142a:	40da      	lsrs	r2, r3
 800142c:	0003      	movs	r3, r0
 800142e:	3315      	adds	r3, #21
 8001430:	409d      	lsls	r5, r3
 8001432:	4b0f      	ldr	r3, [pc, #60]	; (8001470 <__aeabi_f2d+0x9c>)
 8001434:	0312      	lsls	r2, r2, #12
 8001436:	1a1b      	subs	r3, r3, r0
 8001438:	055b      	lsls	r3, r3, #21
 800143a:	0b16      	lsrs	r6, r2, #12
 800143c:	0d5b      	lsrs	r3, r3, #21
 800143e:	e7d8      	b.n	80013f2 <__aeabi_f2d+0x1e>
 8001440:	2d00      	cmp	r5, #0
 8001442:	d006      	beq.n	8001452 <__aeabi_f2d+0x7e>
 8001444:	0b32      	lsrs	r2, r6, #12
 8001446:	2680      	movs	r6, #128	; 0x80
 8001448:	0336      	lsls	r6, r6, #12
 800144a:	076d      	lsls	r5, r5, #29
 800144c:	4316      	orrs	r6, r2
 800144e:	4b09      	ldr	r3, [pc, #36]	; (8001474 <__aeabi_f2d+0xa0>)
 8001450:	e7cf      	b.n	80013f2 <__aeabi_f2d+0x1e>
 8001452:	4b08      	ldr	r3, [pc, #32]	; (8001474 <__aeabi_f2d+0xa0>)
 8001454:	2600      	movs	r6, #0
 8001456:	e7cc      	b.n	80013f2 <__aeabi_f2d+0x1e>
 8001458:	2300      	movs	r3, #0
 800145a:	2600      	movs	r6, #0
 800145c:	e7c9      	b.n	80013f2 <__aeabi_f2d+0x1e>
 800145e:	0003      	movs	r3, r0
 8001460:	002a      	movs	r2, r5
 8001462:	3b0b      	subs	r3, #11
 8001464:	409a      	lsls	r2, r3
 8001466:	2500      	movs	r5, #0
 8001468:	e7e3      	b.n	8001432 <__aeabi_f2d+0x5e>
 800146a:	46c0      	nop			; (mov r8, r8)
 800146c:	800fffff 	.word	0x800fffff
 8001470:	00000389 	.word	0x00000389
 8001474:	000007ff 	.word	0x000007ff

08001478 <__aeabi_d2f>:
 8001478:	b5f0      	push	{r4, r5, r6, r7, lr}
 800147a:	004c      	lsls	r4, r1, #1
 800147c:	0d64      	lsrs	r4, r4, #21
 800147e:	030b      	lsls	r3, r1, #12
 8001480:	1c62      	adds	r2, r4, #1
 8001482:	0a5b      	lsrs	r3, r3, #9
 8001484:	0f46      	lsrs	r6, r0, #29
 8001486:	0552      	lsls	r2, r2, #21
 8001488:	0fc9      	lsrs	r1, r1, #31
 800148a:	431e      	orrs	r6, r3
 800148c:	00c5      	lsls	r5, r0, #3
 800148e:	0d52      	lsrs	r2, r2, #21
 8001490:	2a01      	cmp	r2, #1
 8001492:	dd29      	ble.n	80014e8 <__aeabi_d2f+0x70>
 8001494:	4b37      	ldr	r3, [pc, #220]	; (8001574 <__aeabi_d2f+0xfc>)
 8001496:	18e7      	adds	r7, r4, r3
 8001498:	2ffe      	cmp	r7, #254	; 0xfe
 800149a:	dc1c      	bgt.n	80014d6 <__aeabi_d2f+0x5e>
 800149c:	2f00      	cmp	r7, #0
 800149e:	dd3b      	ble.n	8001518 <__aeabi_d2f+0xa0>
 80014a0:	0180      	lsls	r0, r0, #6
 80014a2:	1e43      	subs	r3, r0, #1
 80014a4:	4198      	sbcs	r0, r3
 80014a6:	2207      	movs	r2, #7
 80014a8:	00f3      	lsls	r3, r6, #3
 80014aa:	0f6d      	lsrs	r5, r5, #29
 80014ac:	4303      	orrs	r3, r0
 80014ae:	432b      	orrs	r3, r5
 80014b0:	401a      	ands	r2, r3
 80014b2:	2a00      	cmp	r2, #0
 80014b4:	d004      	beq.n	80014c0 <__aeabi_d2f+0x48>
 80014b6:	220f      	movs	r2, #15
 80014b8:	401a      	ands	r2, r3
 80014ba:	2a04      	cmp	r2, #4
 80014bc:	d000      	beq.n	80014c0 <__aeabi_d2f+0x48>
 80014be:	3304      	adds	r3, #4
 80014c0:	2280      	movs	r2, #128	; 0x80
 80014c2:	04d2      	lsls	r2, r2, #19
 80014c4:	401a      	ands	r2, r3
 80014c6:	d024      	beq.n	8001512 <__aeabi_d2f+0x9a>
 80014c8:	3701      	adds	r7, #1
 80014ca:	b2fa      	uxtb	r2, r7
 80014cc:	2fff      	cmp	r7, #255	; 0xff
 80014ce:	d002      	beq.n	80014d6 <__aeabi_d2f+0x5e>
 80014d0:	019b      	lsls	r3, r3, #6
 80014d2:	0a58      	lsrs	r0, r3, #9
 80014d4:	e001      	b.n	80014da <__aeabi_d2f+0x62>
 80014d6:	22ff      	movs	r2, #255	; 0xff
 80014d8:	2000      	movs	r0, #0
 80014da:	0240      	lsls	r0, r0, #9
 80014dc:	05d2      	lsls	r2, r2, #23
 80014de:	0a40      	lsrs	r0, r0, #9
 80014e0:	07c9      	lsls	r1, r1, #31
 80014e2:	4310      	orrs	r0, r2
 80014e4:	4308      	orrs	r0, r1
 80014e6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80014e8:	4335      	orrs	r5, r6
 80014ea:	2c00      	cmp	r4, #0
 80014ec:	d104      	bne.n	80014f8 <__aeabi_d2f+0x80>
 80014ee:	2d00      	cmp	r5, #0
 80014f0:	d10a      	bne.n	8001508 <__aeabi_d2f+0x90>
 80014f2:	2200      	movs	r2, #0
 80014f4:	2000      	movs	r0, #0
 80014f6:	e7f0      	b.n	80014da <__aeabi_d2f+0x62>
 80014f8:	2d00      	cmp	r5, #0
 80014fa:	d0ec      	beq.n	80014d6 <__aeabi_d2f+0x5e>
 80014fc:	2080      	movs	r0, #128	; 0x80
 80014fe:	03c0      	lsls	r0, r0, #15
 8001500:	4330      	orrs	r0, r6
 8001502:	22ff      	movs	r2, #255	; 0xff
 8001504:	e7e9      	b.n	80014da <__aeabi_d2f+0x62>
 8001506:	2400      	movs	r4, #0
 8001508:	2300      	movs	r3, #0
 800150a:	025b      	lsls	r3, r3, #9
 800150c:	0a58      	lsrs	r0, r3, #9
 800150e:	b2e2      	uxtb	r2, r4
 8001510:	e7e3      	b.n	80014da <__aeabi_d2f+0x62>
 8001512:	08db      	lsrs	r3, r3, #3
 8001514:	003c      	movs	r4, r7
 8001516:	e7f8      	b.n	800150a <__aeabi_d2f+0x92>
 8001518:	003b      	movs	r3, r7
 800151a:	3317      	adds	r3, #23
 800151c:	dbf3      	blt.n	8001506 <__aeabi_d2f+0x8e>
 800151e:	2380      	movs	r3, #128	; 0x80
 8001520:	041b      	lsls	r3, r3, #16
 8001522:	4333      	orrs	r3, r6
 8001524:	261e      	movs	r6, #30
 8001526:	1bf6      	subs	r6, r6, r7
 8001528:	2e1f      	cmp	r6, #31
 800152a:	dd14      	ble.n	8001556 <__aeabi_d2f+0xde>
 800152c:	2202      	movs	r2, #2
 800152e:	4252      	negs	r2, r2
 8001530:	1bd7      	subs	r7, r2, r7
 8001532:	001a      	movs	r2, r3
 8001534:	40fa      	lsrs	r2, r7
 8001536:	0017      	movs	r7, r2
 8001538:	2e20      	cmp	r6, #32
 800153a:	d004      	beq.n	8001546 <__aeabi_d2f+0xce>
 800153c:	4a0e      	ldr	r2, [pc, #56]	; (8001578 <__aeabi_d2f+0x100>)
 800153e:	4694      	mov	ip, r2
 8001540:	4464      	add	r4, ip
 8001542:	40a3      	lsls	r3, r4
 8001544:	431d      	orrs	r5, r3
 8001546:	002b      	movs	r3, r5
 8001548:	1e5d      	subs	r5, r3, #1
 800154a:	41ab      	sbcs	r3, r5
 800154c:	2207      	movs	r2, #7
 800154e:	433b      	orrs	r3, r7
 8001550:	401a      	ands	r2, r3
 8001552:	2700      	movs	r7, #0
 8001554:	e7ad      	b.n	80014b2 <__aeabi_d2f+0x3a>
 8001556:	4a09      	ldr	r2, [pc, #36]	; (800157c <__aeabi_d2f+0x104>)
 8001558:	0028      	movs	r0, r5
 800155a:	18a2      	adds	r2, r4, r2
 800155c:	4095      	lsls	r5, r2
 800155e:	4093      	lsls	r3, r2
 8001560:	1e6c      	subs	r4, r5, #1
 8001562:	41a5      	sbcs	r5, r4
 8001564:	40f0      	lsrs	r0, r6
 8001566:	2207      	movs	r2, #7
 8001568:	432b      	orrs	r3, r5
 800156a:	4303      	orrs	r3, r0
 800156c:	401a      	ands	r2, r3
 800156e:	2700      	movs	r7, #0
 8001570:	e79f      	b.n	80014b2 <__aeabi_d2f+0x3a>
 8001572:	46c0      	nop			; (mov r8, r8)
 8001574:	fffffc80 	.word	0xfffffc80
 8001578:	fffffca2 	.word	0xfffffca2
 800157c:	fffffc82 	.word	0xfffffc82

08001580 <__clzsi2>:
 8001580:	211c      	movs	r1, #28
 8001582:	2301      	movs	r3, #1
 8001584:	041b      	lsls	r3, r3, #16
 8001586:	4298      	cmp	r0, r3
 8001588:	d301      	bcc.n	800158e <__clzsi2+0xe>
 800158a:	0c00      	lsrs	r0, r0, #16
 800158c:	3910      	subs	r1, #16
 800158e:	0a1b      	lsrs	r3, r3, #8
 8001590:	4298      	cmp	r0, r3
 8001592:	d301      	bcc.n	8001598 <__clzsi2+0x18>
 8001594:	0a00      	lsrs	r0, r0, #8
 8001596:	3908      	subs	r1, #8
 8001598:	091b      	lsrs	r3, r3, #4
 800159a:	4298      	cmp	r0, r3
 800159c:	d301      	bcc.n	80015a2 <__clzsi2+0x22>
 800159e:	0900      	lsrs	r0, r0, #4
 80015a0:	3904      	subs	r1, #4
 80015a2:	a202      	add	r2, pc, #8	; (adr r2, 80015ac <__clzsi2+0x2c>)
 80015a4:	5c10      	ldrb	r0, [r2, r0]
 80015a6:	1840      	adds	r0, r0, r1
 80015a8:	4770      	bx	lr
 80015aa:	46c0      	nop			; (mov r8, r8)
 80015ac:	02020304 	.word	0x02020304
 80015b0:	01010101 	.word	0x01010101
	...

080015bc <Reset_Handler>:
 80015bc:	480d      	ldr	r0, [pc, #52]	; (80015f4 <LoopForever+0x2>)
 80015be:	4685      	mov	sp, r0
 80015c0:	480d      	ldr	r0, [pc, #52]	; (80015f8 <LoopForever+0x6>)
 80015c2:	490e      	ldr	r1, [pc, #56]	; (80015fc <LoopForever+0xa>)
 80015c4:	4a0e      	ldr	r2, [pc, #56]	; (8001600 <LoopForever+0xe>)
 80015c6:	2300      	movs	r3, #0
 80015c8:	e002      	b.n	80015d0 <LoopCopyDataInit>

080015ca <CopyDataInit>:
 80015ca:	58d4      	ldr	r4, [r2, r3]
 80015cc:	50c4      	str	r4, [r0, r3]
 80015ce:	3304      	adds	r3, #4

080015d0 <LoopCopyDataInit>:
 80015d0:	18c4      	adds	r4, r0, r3
 80015d2:	428c      	cmp	r4, r1
 80015d4:	d3f9      	bcc.n	80015ca <CopyDataInit>
 80015d6:	4a0b      	ldr	r2, [pc, #44]	; (8001604 <LoopForever+0x12>)
 80015d8:	4c0b      	ldr	r4, [pc, #44]	; (8001608 <LoopForever+0x16>)
 80015da:	2300      	movs	r3, #0
 80015dc:	e001      	b.n	80015e2 <LoopFillZerobss>

080015de <FillZerobss>:
 80015de:	6013      	str	r3, [r2, #0]
 80015e0:	3204      	adds	r2, #4

080015e2 <LoopFillZerobss>:
 80015e2:	42a2      	cmp	r2, r4
 80015e4:	d3fb      	bcc.n	80015de <FillZerobss>
 80015e6:	f001 fc05 	bl	8002df4 <SystemInit>
 80015ea:	f001 fc59 	bl	8002ea0 <__libc_init_array>
 80015ee:	f000 f877 	bl	80016e0 <main>

080015f2 <LoopForever>:
 80015f2:	e7fe      	b.n	80015f2 <LoopForever>
 80015f4:	20002000 	.word	0x20002000
 80015f8:	20000000 	.word	0x20000000
 80015fc:	20000004 	.word	0x20000004
 8001600:	08003018 	.word	0x08003018
 8001604:	20000004 	.word	0x20000004
 8001608:	20000038 	.word	0x20000038

0800160c <ADC1_COMP_IRQHandler>:
 800160c:	e7fe      	b.n	800160c <ADC1_COMP_IRQHandler>

0800160e <LL_GPIO_TogglePin>:
 800160e:	b580      	push	{r7, lr}
 8001610:	b082      	sub	sp, #8
 8001612:	af00      	add	r7, sp, #0
 8001614:	6078      	str	r0, [r7, #4]
 8001616:	6039      	str	r1, [r7, #0]
 8001618:	687b      	ldr	r3, [r7, #4]
 800161a:	695a      	ldr	r2, [r3, #20]
 800161c:	683b      	ldr	r3, [r7, #0]
 800161e:	405a      	eors	r2, r3
 8001620:	687b      	ldr	r3, [r7, #4]
 8001622:	615a      	str	r2, [r3, #20]
 8001624:	46c0      	nop			; (mov r8, r8)
 8001626:	46bd      	mov	sp, r7
 8001628:	b002      	add	sp, #8
 800162a:	bd80      	pop	{r7, pc}

0800162c <LL_EXTI_ClearFlag_0_31>:
 800162c:	b580      	push	{r7, lr}
 800162e:	b082      	sub	sp, #8
 8001630:	af00      	add	r7, sp, #0
 8001632:	6078      	str	r0, [r7, #4]
 8001634:	4b03      	ldr	r3, [pc, #12]	; (8001644 <LL_EXTI_ClearFlag_0_31+0x18>)
 8001636:	687a      	ldr	r2, [r7, #4]
 8001638:	615a      	str	r2, [r3, #20]
 800163a:	46c0      	nop			; (mov r8, r8)
 800163c:	46bd      	mov	sp, r7
 800163e:	b002      	add	sp, #8
 8001640:	bd80      	pop	{r7, pc}
 8001642:	46c0      	nop			; (mov r8, r8)
 8001644:	40010400 	.word	0x40010400

08001648 <EXTI0_1_IRQHandler>:
 8001648:	b580      	push	{r7, lr}
 800164a:	b082      	sub	sp, #8
 800164c:	af00      	add	r7, sp, #0
 800164e:	4b0d      	ldr	r3, [pc, #52]	; (8001684 <EXTI0_1_IRQHandler+0x3c>)
 8001650:	681b      	ldr	r3, [r3, #0]
 8001652:	607b      	str	r3, [r7, #4]
 8001654:	4b0c      	ldr	r3, [pc, #48]	; (8001688 <EXTI0_1_IRQHandler+0x40>)
 8001656:	681a      	ldr	r2, [r3, #0]
 8001658:	687b      	ldr	r3, [r7, #4]
 800165a:	1ad3      	subs	r3, r2, r3
 800165c:	2b64      	cmp	r3, #100	; 0x64
 800165e:	d906      	bls.n	800166e <EXTI0_1_IRQHandler+0x26>
 8001660:	2380      	movs	r3, #128	; 0x80
 8001662:	005b      	lsls	r3, r3, #1
 8001664:	4a09      	ldr	r2, [pc, #36]	; (800168c <EXTI0_1_IRQHandler+0x44>)
 8001666:	0019      	movs	r1, r3
 8001668:	0010      	movs	r0, r2
 800166a:	f7ff ffd0 	bl	800160e <LL_GPIO_TogglePin>
 800166e:	4b05      	ldr	r3, [pc, #20]	; (8001684 <EXTI0_1_IRQHandler+0x3c>)
 8001670:	681a      	ldr	r2, [r3, #0]
 8001672:	4b05      	ldr	r3, [pc, #20]	; (8001688 <EXTI0_1_IRQHandler+0x40>)
 8001674:	601a      	str	r2, [r3, #0]
 8001676:	2001      	movs	r0, #1
 8001678:	f7ff ffd8 	bl	800162c <LL_EXTI_ClearFlag_0_31>
 800167c:	46c0      	nop			; (mov r8, r8)
 800167e:	46bd      	mov	sp, r7
 8001680:	b002      	add	sp, #8
 8001682:	bd80      	pop	{r7, pc}
 8001684:	20000024 	.word	0x20000024
 8001688:	20000028 	.word	0x20000028
 800168c:	48000800 	.word	0x48000800

08001690 <SysTick_Handler>:
 8001690:	b580      	push	{r7, lr}
 8001692:	af00      	add	r7, sp, #0
 8001694:	4b0f      	ldr	r3, [pc, #60]	; (80016d4 <SysTick_Handler+0x44>)
 8001696:	681b      	ldr	r3, [r3, #0]
 8001698:	1c5a      	adds	r2, r3, #1
 800169a:	4b0f      	ldr	r3, [pc, #60]	; (80016d8 <SysTick_Handler+0x48>)
 800169c:	681b      	ldr	r3, [r3, #0]
 800169e:	0019      	movs	r1, r3
 80016a0:	0010      	movs	r0, r2
 80016a2:	f7fe fdb7 	bl	8000214 <__aeabi_uidivmod>
 80016a6:	000b      	movs	r3, r1
 80016a8:	001a      	movs	r2, r3
 80016aa:	4b0a      	ldr	r3, [pc, #40]	; (80016d4 <SysTick_Handler+0x44>)
 80016ac:	601a      	str	r2, [r3, #0]
 80016ae:	4b09      	ldr	r3, [pc, #36]	; (80016d4 <SysTick_Handler+0x44>)
 80016b0:	681a      	ldr	r2, [r3, #0]
 80016b2:	4b09      	ldr	r3, [pc, #36]	; (80016d8 <SysTick_Handler+0x48>)
 80016b4:	681b      	ldr	r3, [r3, #0]
 80016b6:	0019      	movs	r1, r3
 80016b8:	0010      	movs	r0, r2
 80016ba:	f7fe fdab 	bl	8000214 <__aeabi_uidivmod>
 80016be:	1e0b      	subs	r3, r1, #0
 80016c0:	d104      	bne.n	80016cc <SysTick_Handler+0x3c>
 80016c2:	4b06      	ldr	r3, [pc, #24]	; (80016dc <SysTick_Handler+0x4c>)
 80016c4:	681b      	ldr	r3, [r3, #0]
 80016c6:	1c5a      	adds	r2, r3, #1
 80016c8:	4b04      	ldr	r3, [pc, #16]	; (80016dc <SysTick_Handler+0x4c>)
 80016ca:	601a      	str	r2, [r3, #0]
 80016cc:	46c0      	nop			; (mov r8, r8)
 80016ce:	46bd      	mov	sp, r7
 80016d0:	bd80      	pop	{r7, pc}
 80016d2:	46c0      	nop			; (mov r8, r8)
 80016d4:	20000024 	.word	0x20000024
 80016d8:	08002fb0 	.word	0x08002fb0
 80016dc:	20000020 	.word	0x20000020

080016e0 <main>:
 80016e0:	b590      	push	{r4, r7, lr}
 80016e2:	b089      	sub	sp, #36	; 0x24
 80016e4:	af00      	add	r7, sp, #0
 80016e6:	4b36      	ldr	r3, [pc, #216]	; (80017c0 <main+0xe0>)
 80016e8:	2200      	movs	r2, #0
 80016ea:	601a      	str	r2, [r3, #0]
 80016ec:	4b35      	ldr	r3, [pc, #212]	; (80017c4 <main+0xe4>)
 80016ee:	2200      	movs	r2, #0
 80016f0:	601a      	str	r2, [r3, #0]
 80016f2:	2300      	movs	r3, #0
 80016f4:	61fb      	str	r3, [r7, #28]
 80016f6:	f000 fc59 	bl	8001fac <rcc_config>
 80016fa:	f000 fc8b 	bl	8002014 <gpio_config>
 80016fe:	f000 fca3 	bl	8002048 <exti_config>
 8001702:	2380      	movs	r3, #128	; 0x80
 8001704:	005b      	lsls	r3, r3, #1
 8001706:	4a30      	ldr	r2, [pc, #192]	; (80017c8 <main+0xe8>)
 8001708:	0019      	movs	r1, r3
 800170a:	0010      	movs	r0, r2
 800170c:	f7ff ff7f 	bl	800160e <LL_GPIO_TogglePin>
 8001710:	4a2e      	ldr	r2, [pc, #184]	; (80017cc <main+0xec>)
 8001712:	4b2f      	ldr	r3, [pc, #188]	; (80017d0 <main+0xf0>)
 8001714:	0011      	movs	r1, r2
 8001716:	0018      	movs	r0, r3
 8001718:	f000 fc9b 	bl	8002052 <systick_config>
 800171c:	2380      	movs	r3, #128	; 0x80
 800171e:	005b      	lsls	r3, r3, #1
 8001720:	4a29      	ldr	r2, [pc, #164]	; (80017c8 <main+0xe8>)
 8001722:	0019      	movs	r1, r3
 8001724:	0010      	movs	r0, r2
 8001726:	f7ff ff72 	bl	800160e <LL_GPIO_TogglePin>
 800172a:	4b2a      	ldr	r3, [pc, #168]	; (80017d4 <main+0xf4>)
 800172c:	0018      	movs	r0, r3
 800172e:	f000 fca7 	bl	8002080 <usart_config>
 8001732:	4b29      	ldr	r3, [pc, #164]	; (80017d8 <main+0xf8>)
 8001734:	0018      	movs	r0, r3
 8001736:	f000 fd1b 	bl	8002170 <i2c_config>
 800173a:	f000 fe15 	bl	8002368 <printf_config>
 800173e:	f000 ffa1 	bl	8002684 <mpu9255_init>
 8001742:	0003      	movs	r3, r0
 8001744:	61fb      	str	r3, [r7, #28]
 8001746:	69fa      	ldr	r2, [r7, #28]
 8001748:	4b24      	ldr	r3, [pc, #144]	; (80017dc <main+0xfc>)
 800174a:	0011      	movs	r1, r2
 800174c:	0018      	movs	r0, r3
 800174e:	f001 fb3d 	bl	8002dcc <xprintf>
 8001752:	2314      	movs	r3, #20
 8001754:	18fb      	adds	r3, r7, r3
 8001756:	0018      	movs	r0, r3
 8001758:	2306      	movs	r3, #6
 800175a:	001a      	movs	r2, r3
 800175c:	2100      	movs	r1, #0
 800175e:	f001 fbc3 	bl	8002ee8 <memset>
 8001762:	230c      	movs	r3, #12
 8001764:	18fb      	adds	r3, r7, r3
 8001766:	0018      	movs	r0, r3
 8001768:	2306      	movs	r3, #6
 800176a:	001a      	movs	r2, r3
 800176c:	2100      	movs	r1, #0
 800176e:	f001 fbbb 	bl	8002ee8 <memset>
 8001772:	003b      	movs	r3, r7
 8001774:	0018      	movs	r0, r3
 8001776:	230c      	movs	r3, #12
 8001778:	001a      	movs	r2, r3
 800177a:	2100      	movs	r1, #0
 800177c:	f001 fbb4 	bl	8002ee8 <memset>
 8001780:	4b10      	ldr	r3, [pc, #64]	; (80017c4 <main+0xe4>)
 8001782:	681a      	ldr	r2, [r3, #0]
 8001784:	4b16      	ldr	r3, [pc, #88]	; (80017e0 <main+0x100>)
 8001786:	681b      	ldr	r3, [r3, #0]
 8001788:	0019      	movs	r1, r3
 800178a:	0010      	movs	r0, r2
 800178c:	f7fe fd42 	bl	8000214 <__aeabi_uidivmod>
 8001790:	1e0b      	subs	r3, r1, #0
 8001792:	d1f5      	bne.n	8001780 <main+0xa0>
 8001794:	4b13      	ldr	r3, [pc, #76]	; (80017e4 <main+0x104>)
 8001796:	2100      	movs	r1, #0
 8001798:	0018      	movs	r0, r3
 800179a:	f001 fb17 	bl	8002dcc <xprintf>
 800179e:	230c      	movs	r3, #12
 80017a0:	18fa      	adds	r2, r7, r3
 80017a2:	2414      	movs	r4, #20
 80017a4:	193b      	adds	r3, r7, r4
 80017a6:	0011      	movs	r1, r2
 80017a8:	0018      	movs	r0, r3
 80017aa:	f001 f84a 	bl	8002842 <mpu9255_readIMU>
 80017ae:	0003      	movs	r3, r0
 80017b0:	61fb      	str	r3, [r7, #28]
 80017b2:	003a      	movs	r2, r7
 80017b4:	193b      	adds	r3, r7, r4
 80017b6:	0011      	movs	r1, r2
 80017b8:	0018      	movs	r0, r3
 80017ba:	f001 f899 	bl	80028f0 <mpu9255_recalcAccel>
 80017be:	e7df      	b.n	8001780 <main+0xa0>
 80017c0:	20000020 	.word	0x20000020
 80017c4:	20000024 	.word	0x20000024
 80017c8:	48000800 	.word	0x48000800
 80017cc:	000f4240 	.word	0x000f4240
 80017d0:	02dc6c00 	.word	0x02dc6c00
 80017d4:	40013800 	.word	0x40013800
 80017d8:	40005400 	.word	0x40005400
 80017dc:	08002f10 	.word	0x08002f10
 80017e0:	08002fb0 	.word	0x08002fb0
 80017e4:	08002f24 	.word	0x08002f24

080017e8 <NVIC_SetPriority>:
 80017e8:	b590      	push	{r4, r7, lr}
 80017ea:	b083      	sub	sp, #12
 80017ec:	af00      	add	r7, sp, #0
 80017ee:	0002      	movs	r2, r0
 80017f0:	6039      	str	r1, [r7, #0]
 80017f2:	1dfb      	adds	r3, r7, #7
 80017f4:	701a      	strb	r2, [r3, #0]
 80017f6:	1dfb      	adds	r3, r7, #7
 80017f8:	781b      	ldrb	r3, [r3, #0]
 80017fa:	2b7f      	cmp	r3, #127	; 0x7f
 80017fc:	d932      	bls.n	8001864 <NVIC_SetPriority+0x7c>
 80017fe:	4a2f      	ldr	r2, [pc, #188]	; (80018bc <NVIC_SetPriority+0xd4>)
 8001800:	1dfb      	adds	r3, r7, #7
 8001802:	781b      	ldrb	r3, [r3, #0]
 8001804:	0019      	movs	r1, r3
 8001806:	230f      	movs	r3, #15
 8001808:	400b      	ands	r3, r1
 800180a:	3b08      	subs	r3, #8
 800180c:	089b      	lsrs	r3, r3, #2
 800180e:	3306      	adds	r3, #6
 8001810:	009b      	lsls	r3, r3, #2
 8001812:	18d3      	adds	r3, r2, r3
 8001814:	3304      	adds	r3, #4
 8001816:	681b      	ldr	r3, [r3, #0]
 8001818:	1dfa      	adds	r2, r7, #7
 800181a:	7812      	ldrb	r2, [r2, #0]
 800181c:	0011      	movs	r1, r2
 800181e:	2203      	movs	r2, #3
 8001820:	400a      	ands	r2, r1
 8001822:	00d2      	lsls	r2, r2, #3
 8001824:	21ff      	movs	r1, #255	; 0xff
 8001826:	4091      	lsls	r1, r2
 8001828:	000a      	movs	r2, r1
 800182a:	43d2      	mvns	r2, r2
 800182c:	401a      	ands	r2, r3
 800182e:	0011      	movs	r1, r2
 8001830:	683b      	ldr	r3, [r7, #0]
 8001832:	019b      	lsls	r3, r3, #6
 8001834:	22ff      	movs	r2, #255	; 0xff
 8001836:	401a      	ands	r2, r3
 8001838:	1dfb      	adds	r3, r7, #7
 800183a:	781b      	ldrb	r3, [r3, #0]
 800183c:	0018      	movs	r0, r3
 800183e:	2303      	movs	r3, #3
 8001840:	4003      	ands	r3, r0
 8001842:	00db      	lsls	r3, r3, #3
 8001844:	409a      	lsls	r2, r3
 8001846:	481d      	ldr	r0, [pc, #116]	; (80018bc <NVIC_SetPriority+0xd4>)
 8001848:	1dfb      	adds	r3, r7, #7
 800184a:	781b      	ldrb	r3, [r3, #0]
 800184c:	001c      	movs	r4, r3
 800184e:	230f      	movs	r3, #15
 8001850:	4023      	ands	r3, r4
 8001852:	3b08      	subs	r3, #8
 8001854:	089b      	lsrs	r3, r3, #2
 8001856:	430a      	orrs	r2, r1
 8001858:	3306      	adds	r3, #6
 800185a:	009b      	lsls	r3, r3, #2
 800185c:	18c3      	adds	r3, r0, r3
 800185e:	3304      	adds	r3, #4
 8001860:	601a      	str	r2, [r3, #0]
 8001862:	e027      	b.n	80018b4 <NVIC_SetPriority+0xcc>
 8001864:	4a16      	ldr	r2, [pc, #88]	; (80018c0 <NVIC_SetPriority+0xd8>)
 8001866:	1dfb      	adds	r3, r7, #7
 8001868:	781b      	ldrb	r3, [r3, #0]
 800186a:	b25b      	sxtb	r3, r3
 800186c:	089b      	lsrs	r3, r3, #2
 800186e:	33c0      	adds	r3, #192	; 0xc0
 8001870:	009b      	lsls	r3, r3, #2
 8001872:	589b      	ldr	r3, [r3, r2]
 8001874:	1dfa      	adds	r2, r7, #7
 8001876:	7812      	ldrb	r2, [r2, #0]
 8001878:	0011      	movs	r1, r2
 800187a:	2203      	movs	r2, #3
 800187c:	400a      	ands	r2, r1
 800187e:	00d2      	lsls	r2, r2, #3
 8001880:	21ff      	movs	r1, #255	; 0xff
 8001882:	4091      	lsls	r1, r2
 8001884:	000a      	movs	r2, r1
 8001886:	43d2      	mvns	r2, r2
 8001888:	401a      	ands	r2, r3
 800188a:	0011      	movs	r1, r2
 800188c:	683b      	ldr	r3, [r7, #0]
 800188e:	019b      	lsls	r3, r3, #6
 8001890:	22ff      	movs	r2, #255	; 0xff
 8001892:	401a      	ands	r2, r3
 8001894:	1dfb      	adds	r3, r7, #7
 8001896:	781b      	ldrb	r3, [r3, #0]
 8001898:	0018      	movs	r0, r3
 800189a:	2303      	movs	r3, #3
 800189c:	4003      	ands	r3, r0
 800189e:	00db      	lsls	r3, r3, #3
 80018a0:	409a      	lsls	r2, r3
 80018a2:	4807      	ldr	r0, [pc, #28]	; (80018c0 <NVIC_SetPriority+0xd8>)
 80018a4:	1dfb      	adds	r3, r7, #7
 80018a6:	781b      	ldrb	r3, [r3, #0]
 80018a8:	b25b      	sxtb	r3, r3
 80018aa:	089b      	lsrs	r3, r3, #2
 80018ac:	430a      	orrs	r2, r1
 80018ae:	33c0      	adds	r3, #192	; 0xc0
 80018b0:	009b      	lsls	r3, r3, #2
 80018b2:	501a      	str	r2, [r3, r0]
 80018b4:	46c0      	nop			; (mov r8, r8)
 80018b6:	46bd      	mov	sp, r7
 80018b8:	b003      	add	sp, #12
 80018ba:	bd90      	pop	{r4, r7, pc}
 80018bc:	e000ed00 	.word	0xe000ed00
 80018c0:	e000e100 	.word	0xe000e100

080018c4 <LL_RCC_HSI_Enable>:
 80018c4:	b580      	push	{r7, lr}
 80018c6:	af00      	add	r7, sp, #0
 80018c8:	4b04      	ldr	r3, [pc, #16]	; (80018dc <LL_RCC_HSI_Enable+0x18>)
 80018ca:	681a      	ldr	r2, [r3, #0]
 80018cc:	4b03      	ldr	r3, [pc, #12]	; (80018dc <LL_RCC_HSI_Enable+0x18>)
 80018ce:	2101      	movs	r1, #1
 80018d0:	430a      	orrs	r2, r1
 80018d2:	601a      	str	r2, [r3, #0]
 80018d4:	46c0      	nop			; (mov r8, r8)
 80018d6:	46bd      	mov	sp, r7
 80018d8:	bd80      	pop	{r7, pc}
 80018da:	46c0      	nop			; (mov r8, r8)
 80018dc:	40021000 	.word	0x40021000

080018e0 <LL_RCC_HSI_IsReady>:
 80018e0:	b580      	push	{r7, lr}
 80018e2:	af00      	add	r7, sp, #0
 80018e4:	4b05      	ldr	r3, [pc, #20]	; (80018fc <LL_RCC_HSI_IsReady+0x1c>)
 80018e6:	681b      	ldr	r3, [r3, #0]
 80018e8:	2202      	movs	r2, #2
 80018ea:	4013      	ands	r3, r2
 80018ec:	3b02      	subs	r3, #2
 80018ee:	425a      	negs	r2, r3
 80018f0:	4153      	adcs	r3, r2
 80018f2:	b2db      	uxtb	r3, r3
 80018f4:	0018      	movs	r0, r3
 80018f6:	46bd      	mov	sp, r7
 80018f8:	bd80      	pop	{r7, pc}
 80018fa:	46c0      	nop			; (mov r8, r8)
 80018fc:	40021000 	.word	0x40021000

08001900 <LL_RCC_SetSysClkSource>:
 8001900:	b580      	push	{r7, lr}
 8001902:	b082      	sub	sp, #8
 8001904:	af00      	add	r7, sp, #0
 8001906:	6078      	str	r0, [r7, #4]
 8001908:	4b06      	ldr	r3, [pc, #24]	; (8001924 <LL_RCC_SetSysClkSource+0x24>)
 800190a:	685b      	ldr	r3, [r3, #4]
 800190c:	2203      	movs	r2, #3
 800190e:	4393      	bics	r3, r2
 8001910:	0019      	movs	r1, r3
 8001912:	4b04      	ldr	r3, [pc, #16]	; (8001924 <LL_RCC_SetSysClkSource+0x24>)
 8001914:	687a      	ldr	r2, [r7, #4]
 8001916:	430a      	orrs	r2, r1
 8001918:	605a      	str	r2, [r3, #4]
 800191a:	46c0      	nop			; (mov r8, r8)
 800191c:	46bd      	mov	sp, r7
 800191e:	b002      	add	sp, #8
 8001920:	bd80      	pop	{r7, pc}
 8001922:	46c0      	nop			; (mov r8, r8)
 8001924:	40021000 	.word	0x40021000

08001928 <LL_RCC_GetSysClkSource>:
 8001928:	b580      	push	{r7, lr}
 800192a:	af00      	add	r7, sp, #0
 800192c:	4b03      	ldr	r3, [pc, #12]	; (800193c <LL_RCC_GetSysClkSource+0x14>)
 800192e:	685b      	ldr	r3, [r3, #4]
 8001930:	220c      	movs	r2, #12
 8001932:	4013      	ands	r3, r2
 8001934:	0018      	movs	r0, r3
 8001936:	46bd      	mov	sp, r7
 8001938:	bd80      	pop	{r7, pc}
 800193a:	46c0      	nop			; (mov r8, r8)
 800193c:	40021000 	.word	0x40021000

08001940 <LL_RCC_SetAHBPrescaler>:
 8001940:	b580      	push	{r7, lr}
 8001942:	b082      	sub	sp, #8
 8001944:	af00      	add	r7, sp, #0
 8001946:	6078      	str	r0, [r7, #4]
 8001948:	4b06      	ldr	r3, [pc, #24]	; (8001964 <LL_RCC_SetAHBPrescaler+0x24>)
 800194a:	685b      	ldr	r3, [r3, #4]
 800194c:	22f0      	movs	r2, #240	; 0xf0
 800194e:	4393      	bics	r3, r2
 8001950:	0019      	movs	r1, r3
 8001952:	4b04      	ldr	r3, [pc, #16]	; (8001964 <LL_RCC_SetAHBPrescaler+0x24>)
 8001954:	687a      	ldr	r2, [r7, #4]
 8001956:	430a      	orrs	r2, r1
 8001958:	605a      	str	r2, [r3, #4]
 800195a:	46c0      	nop			; (mov r8, r8)
 800195c:	46bd      	mov	sp, r7
 800195e:	b002      	add	sp, #8
 8001960:	bd80      	pop	{r7, pc}
 8001962:	46c0      	nop			; (mov r8, r8)
 8001964:	40021000 	.word	0x40021000

08001968 <LL_RCC_SetAPB1Prescaler>:
 8001968:	b580      	push	{r7, lr}
 800196a:	b082      	sub	sp, #8
 800196c:	af00      	add	r7, sp, #0
 800196e:	6078      	str	r0, [r7, #4]
 8001970:	4b06      	ldr	r3, [pc, #24]	; (800198c <LL_RCC_SetAPB1Prescaler+0x24>)
 8001972:	685b      	ldr	r3, [r3, #4]
 8001974:	4a06      	ldr	r2, [pc, #24]	; (8001990 <LL_RCC_SetAPB1Prescaler+0x28>)
 8001976:	4013      	ands	r3, r2
 8001978:	0019      	movs	r1, r3
 800197a:	4b04      	ldr	r3, [pc, #16]	; (800198c <LL_RCC_SetAPB1Prescaler+0x24>)
 800197c:	687a      	ldr	r2, [r7, #4]
 800197e:	430a      	orrs	r2, r1
 8001980:	605a      	str	r2, [r3, #4]
 8001982:	46c0      	nop			; (mov r8, r8)
 8001984:	46bd      	mov	sp, r7
 8001986:	b002      	add	sp, #8
 8001988:	bd80      	pop	{r7, pc}
 800198a:	46c0      	nop			; (mov r8, r8)
 800198c:	40021000 	.word	0x40021000
 8001990:	fffff8ff 	.word	0xfffff8ff

08001994 <LL_RCC_SetUSARTClockSource>:
 8001994:	b580      	push	{r7, lr}
 8001996:	b082      	sub	sp, #8
 8001998:	af00      	add	r7, sp, #0
 800199a:	6078      	str	r0, [r7, #4]
 800199c:	4b09      	ldr	r3, [pc, #36]	; (80019c4 <LL_RCC_SetUSARTClockSource+0x30>)
 800199e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80019a0:	687a      	ldr	r2, [r7, #4]
 80019a2:	0e12      	lsrs	r2, r2, #24
 80019a4:	2103      	movs	r1, #3
 80019a6:	4091      	lsls	r1, r2
 80019a8:	000a      	movs	r2, r1
 80019aa:	43d2      	mvns	r2, r2
 80019ac:	401a      	ands	r2, r3
 80019ae:	0011      	movs	r1, r2
 80019b0:	687b      	ldr	r3, [r7, #4]
 80019b2:	021b      	lsls	r3, r3, #8
 80019b4:	0a1a      	lsrs	r2, r3, #8
 80019b6:	4b03      	ldr	r3, [pc, #12]	; (80019c4 <LL_RCC_SetUSARTClockSource+0x30>)
 80019b8:	430a      	orrs	r2, r1
 80019ba:	631a      	str	r2, [r3, #48]	; 0x30
 80019bc:	46c0      	nop			; (mov r8, r8)
 80019be:	46bd      	mov	sp, r7
 80019c0:	b002      	add	sp, #8
 80019c2:	bd80      	pop	{r7, pc}
 80019c4:	40021000 	.word	0x40021000

080019c8 <LL_RCC_SetI2CClockSource>:
 80019c8:	b580      	push	{r7, lr}
 80019ca:	b082      	sub	sp, #8
 80019cc:	af00      	add	r7, sp, #0
 80019ce:	6078      	str	r0, [r7, #4]
 80019d0:	4b06      	ldr	r3, [pc, #24]	; (80019ec <LL_RCC_SetI2CClockSource+0x24>)
 80019d2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80019d4:	2210      	movs	r2, #16
 80019d6:	4393      	bics	r3, r2
 80019d8:	0019      	movs	r1, r3
 80019da:	4b04      	ldr	r3, [pc, #16]	; (80019ec <LL_RCC_SetI2CClockSource+0x24>)
 80019dc:	687a      	ldr	r2, [r7, #4]
 80019de:	430a      	orrs	r2, r1
 80019e0:	631a      	str	r2, [r3, #48]	; 0x30
 80019e2:	46c0      	nop			; (mov r8, r8)
 80019e4:	46bd      	mov	sp, r7
 80019e6:	b002      	add	sp, #8
 80019e8:	bd80      	pop	{r7, pc}
 80019ea:	46c0      	nop			; (mov r8, r8)
 80019ec:	40021000 	.word	0x40021000

080019f0 <LL_RCC_PLL_Enable>:
 80019f0:	b580      	push	{r7, lr}
 80019f2:	af00      	add	r7, sp, #0
 80019f4:	4b04      	ldr	r3, [pc, #16]	; (8001a08 <LL_RCC_PLL_Enable+0x18>)
 80019f6:	681a      	ldr	r2, [r3, #0]
 80019f8:	4b03      	ldr	r3, [pc, #12]	; (8001a08 <LL_RCC_PLL_Enable+0x18>)
 80019fa:	2180      	movs	r1, #128	; 0x80
 80019fc:	0449      	lsls	r1, r1, #17
 80019fe:	430a      	orrs	r2, r1
 8001a00:	601a      	str	r2, [r3, #0]
 8001a02:	46c0      	nop			; (mov r8, r8)
 8001a04:	46bd      	mov	sp, r7
 8001a06:	bd80      	pop	{r7, pc}
 8001a08:	40021000 	.word	0x40021000

08001a0c <LL_RCC_PLL_IsReady>:
 8001a0c:	b580      	push	{r7, lr}
 8001a0e:	af00      	add	r7, sp, #0
 8001a10:	4b07      	ldr	r3, [pc, #28]	; (8001a30 <LL_RCC_PLL_IsReady+0x24>)
 8001a12:	681a      	ldr	r2, [r3, #0]
 8001a14:	2380      	movs	r3, #128	; 0x80
 8001a16:	049b      	lsls	r3, r3, #18
 8001a18:	4013      	ands	r3, r2
 8001a1a:	22fe      	movs	r2, #254	; 0xfe
 8001a1c:	0612      	lsls	r2, r2, #24
 8001a1e:	4694      	mov	ip, r2
 8001a20:	4463      	add	r3, ip
 8001a22:	425a      	negs	r2, r3
 8001a24:	4153      	adcs	r3, r2
 8001a26:	b2db      	uxtb	r3, r3
 8001a28:	0018      	movs	r0, r3
 8001a2a:	46bd      	mov	sp, r7
 8001a2c:	bd80      	pop	{r7, pc}
 8001a2e:	46c0      	nop			; (mov r8, r8)
 8001a30:	40021000 	.word	0x40021000

08001a34 <LL_RCC_PLL_ConfigDomain_SYS>:
 8001a34:	b580      	push	{r7, lr}
 8001a36:	b082      	sub	sp, #8
 8001a38:	af00      	add	r7, sp, #0
 8001a3a:	6078      	str	r0, [r7, #4]
 8001a3c:	6039      	str	r1, [r7, #0]
 8001a3e:	4b0e      	ldr	r3, [pc, #56]	; (8001a78 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8001a40:	685b      	ldr	r3, [r3, #4]
 8001a42:	4a0e      	ldr	r2, [pc, #56]	; (8001a7c <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8001a44:	4013      	ands	r3, r2
 8001a46:	0019      	movs	r1, r3
 8001a48:	687a      	ldr	r2, [r7, #4]
 8001a4a:	2380      	movs	r3, #128	; 0x80
 8001a4c:	025b      	lsls	r3, r3, #9
 8001a4e:	401a      	ands	r2, r3
 8001a50:	683b      	ldr	r3, [r7, #0]
 8001a52:	431a      	orrs	r2, r3
 8001a54:	4b08      	ldr	r3, [pc, #32]	; (8001a78 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8001a56:	430a      	orrs	r2, r1
 8001a58:	605a      	str	r2, [r3, #4]
 8001a5a:	4b07      	ldr	r3, [pc, #28]	; (8001a78 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8001a5c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001a5e:	220f      	movs	r2, #15
 8001a60:	4393      	bics	r3, r2
 8001a62:	0019      	movs	r1, r3
 8001a64:	687b      	ldr	r3, [r7, #4]
 8001a66:	220f      	movs	r2, #15
 8001a68:	401a      	ands	r2, r3
 8001a6a:	4b03      	ldr	r3, [pc, #12]	; (8001a78 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8001a6c:	430a      	orrs	r2, r1
 8001a6e:	62da      	str	r2, [r3, #44]	; 0x2c
 8001a70:	46c0      	nop			; (mov r8, r8)
 8001a72:	46bd      	mov	sp, r7
 8001a74:	b002      	add	sp, #8
 8001a76:	bd80      	pop	{r7, pc}
 8001a78:	40021000 	.word	0x40021000
 8001a7c:	ffc2ffff 	.word	0xffc2ffff

08001a80 <LL_FLASH_SetLatency>:
 8001a80:	b580      	push	{r7, lr}
 8001a82:	b082      	sub	sp, #8
 8001a84:	af00      	add	r7, sp, #0
 8001a86:	6078      	str	r0, [r7, #4]
 8001a88:	4b06      	ldr	r3, [pc, #24]	; (8001aa4 <LL_FLASH_SetLatency+0x24>)
 8001a8a:	681b      	ldr	r3, [r3, #0]
 8001a8c:	2201      	movs	r2, #1
 8001a8e:	4393      	bics	r3, r2
 8001a90:	0019      	movs	r1, r3
 8001a92:	4b04      	ldr	r3, [pc, #16]	; (8001aa4 <LL_FLASH_SetLatency+0x24>)
 8001a94:	687a      	ldr	r2, [r7, #4]
 8001a96:	430a      	orrs	r2, r1
 8001a98:	601a      	str	r2, [r3, #0]
 8001a9a:	46c0      	nop			; (mov r8, r8)
 8001a9c:	46bd      	mov	sp, r7
 8001a9e:	b002      	add	sp, #8
 8001aa0:	bd80      	pop	{r7, pc}
 8001aa2:	46c0      	nop			; (mov r8, r8)
 8001aa4:	40022000 	.word	0x40022000

08001aa8 <LL_AHB1_GRP1_EnableClock>:
 8001aa8:	b580      	push	{r7, lr}
 8001aaa:	b084      	sub	sp, #16
 8001aac:	af00      	add	r7, sp, #0
 8001aae:	6078      	str	r0, [r7, #4]
 8001ab0:	4b07      	ldr	r3, [pc, #28]	; (8001ad0 <LL_AHB1_GRP1_EnableClock+0x28>)
 8001ab2:	6959      	ldr	r1, [r3, #20]
 8001ab4:	4b06      	ldr	r3, [pc, #24]	; (8001ad0 <LL_AHB1_GRP1_EnableClock+0x28>)
 8001ab6:	687a      	ldr	r2, [r7, #4]
 8001ab8:	430a      	orrs	r2, r1
 8001aba:	615a      	str	r2, [r3, #20]
 8001abc:	4b04      	ldr	r3, [pc, #16]	; (8001ad0 <LL_AHB1_GRP1_EnableClock+0x28>)
 8001abe:	695b      	ldr	r3, [r3, #20]
 8001ac0:	687a      	ldr	r2, [r7, #4]
 8001ac2:	4013      	ands	r3, r2
 8001ac4:	60fb      	str	r3, [r7, #12]
 8001ac6:	68fb      	ldr	r3, [r7, #12]
 8001ac8:	46c0      	nop			; (mov r8, r8)
 8001aca:	46bd      	mov	sp, r7
 8001acc:	b004      	add	sp, #16
 8001ace:	bd80      	pop	{r7, pc}
 8001ad0:	40021000 	.word	0x40021000

08001ad4 <LL_APB1_GRP1_EnableClock>:
 8001ad4:	b580      	push	{r7, lr}
 8001ad6:	b084      	sub	sp, #16
 8001ad8:	af00      	add	r7, sp, #0
 8001ada:	6078      	str	r0, [r7, #4]
 8001adc:	4b07      	ldr	r3, [pc, #28]	; (8001afc <LL_APB1_GRP1_EnableClock+0x28>)
 8001ade:	69d9      	ldr	r1, [r3, #28]
 8001ae0:	4b06      	ldr	r3, [pc, #24]	; (8001afc <LL_APB1_GRP1_EnableClock+0x28>)
 8001ae2:	687a      	ldr	r2, [r7, #4]
 8001ae4:	430a      	orrs	r2, r1
 8001ae6:	61da      	str	r2, [r3, #28]
 8001ae8:	4b04      	ldr	r3, [pc, #16]	; (8001afc <LL_APB1_GRP1_EnableClock+0x28>)
 8001aea:	69db      	ldr	r3, [r3, #28]
 8001aec:	687a      	ldr	r2, [r7, #4]
 8001aee:	4013      	ands	r3, r2
 8001af0:	60fb      	str	r3, [r7, #12]
 8001af2:	68fb      	ldr	r3, [r7, #12]
 8001af4:	46c0      	nop			; (mov r8, r8)
 8001af6:	46bd      	mov	sp, r7
 8001af8:	b004      	add	sp, #16
 8001afa:	bd80      	pop	{r7, pc}
 8001afc:	40021000 	.word	0x40021000

08001b00 <LL_APB1_GRP2_EnableClock>:
 8001b00:	b580      	push	{r7, lr}
 8001b02:	b084      	sub	sp, #16
 8001b04:	af00      	add	r7, sp, #0
 8001b06:	6078      	str	r0, [r7, #4]
 8001b08:	4b07      	ldr	r3, [pc, #28]	; (8001b28 <LL_APB1_GRP2_EnableClock+0x28>)
 8001b0a:	6999      	ldr	r1, [r3, #24]
 8001b0c:	4b06      	ldr	r3, [pc, #24]	; (8001b28 <LL_APB1_GRP2_EnableClock+0x28>)
 8001b0e:	687a      	ldr	r2, [r7, #4]
 8001b10:	430a      	orrs	r2, r1
 8001b12:	619a      	str	r2, [r3, #24]
 8001b14:	4b04      	ldr	r3, [pc, #16]	; (8001b28 <LL_APB1_GRP2_EnableClock+0x28>)
 8001b16:	699b      	ldr	r3, [r3, #24]
 8001b18:	687a      	ldr	r2, [r7, #4]
 8001b1a:	4013      	ands	r3, r2
 8001b1c:	60fb      	str	r3, [r7, #12]
 8001b1e:	68fb      	ldr	r3, [r7, #12]
 8001b20:	46c0      	nop			; (mov r8, r8)
 8001b22:	46bd      	mov	sp, r7
 8001b24:	b004      	add	sp, #16
 8001b26:	bd80      	pop	{r7, pc}
 8001b28:	40021000 	.word	0x40021000

08001b2c <LL_GPIO_SetPinMode>:
 8001b2c:	b580      	push	{r7, lr}
 8001b2e:	b084      	sub	sp, #16
 8001b30:	af00      	add	r7, sp, #0
 8001b32:	60f8      	str	r0, [r7, #12]
 8001b34:	60b9      	str	r1, [r7, #8]
 8001b36:	607a      	str	r2, [r7, #4]
 8001b38:	68fb      	ldr	r3, [r7, #12]
 8001b3a:	6819      	ldr	r1, [r3, #0]
 8001b3c:	68bb      	ldr	r3, [r7, #8]
 8001b3e:	68ba      	ldr	r2, [r7, #8]
 8001b40:	435a      	muls	r2, r3
 8001b42:	0013      	movs	r3, r2
 8001b44:	005b      	lsls	r3, r3, #1
 8001b46:	189b      	adds	r3, r3, r2
 8001b48:	43db      	mvns	r3, r3
 8001b4a:	400b      	ands	r3, r1
 8001b4c:	001a      	movs	r2, r3
 8001b4e:	68bb      	ldr	r3, [r7, #8]
 8001b50:	68b9      	ldr	r1, [r7, #8]
 8001b52:	434b      	muls	r3, r1
 8001b54:	6879      	ldr	r1, [r7, #4]
 8001b56:	434b      	muls	r3, r1
 8001b58:	431a      	orrs	r2, r3
 8001b5a:	68fb      	ldr	r3, [r7, #12]
 8001b5c:	601a      	str	r2, [r3, #0]
 8001b5e:	46c0      	nop			; (mov r8, r8)
 8001b60:	46bd      	mov	sp, r7
 8001b62:	b004      	add	sp, #16
 8001b64:	bd80      	pop	{r7, pc}

08001b66 <LL_GPIO_SetPinOutputType>:
 8001b66:	b580      	push	{r7, lr}
 8001b68:	b084      	sub	sp, #16
 8001b6a:	af00      	add	r7, sp, #0
 8001b6c:	60f8      	str	r0, [r7, #12]
 8001b6e:	60b9      	str	r1, [r7, #8]
 8001b70:	607a      	str	r2, [r7, #4]
 8001b72:	68fb      	ldr	r3, [r7, #12]
 8001b74:	685b      	ldr	r3, [r3, #4]
 8001b76:	68ba      	ldr	r2, [r7, #8]
 8001b78:	43d2      	mvns	r2, r2
 8001b7a:	401a      	ands	r2, r3
 8001b7c:	68bb      	ldr	r3, [r7, #8]
 8001b7e:	6879      	ldr	r1, [r7, #4]
 8001b80:	434b      	muls	r3, r1
 8001b82:	431a      	orrs	r2, r3
 8001b84:	68fb      	ldr	r3, [r7, #12]
 8001b86:	605a      	str	r2, [r3, #4]
 8001b88:	46c0      	nop			; (mov r8, r8)
 8001b8a:	46bd      	mov	sp, r7
 8001b8c:	b004      	add	sp, #16
 8001b8e:	bd80      	pop	{r7, pc}

08001b90 <LL_GPIO_SetPinSpeed>:
 8001b90:	b580      	push	{r7, lr}
 8001b92:	b084      	sub	sp, #16
 8001b94:	af00      	add	r7, sp, #0
 8001b96:	60f8      	str	r0, [r7, #12]
 8001b98:	60b9      	str	r1, [r7, #8]
 8001b9a:	607a      	str	r2, [r7, #4]
 8001b9c:	68fb      	ldr	r3, [r7, #12]
 8001b9e:	6899      	ldr	r1, [r3, #8]
 8001ba0:	68bb      	ldr	r3, [r7, #8]
 8001ba2:	68ba      	ldr	r2, [r7, #8]
 8001ba4:	435a      	muls	r2, r3
 8001ba6:	0013      	movs	r3, r2
 8001ba8:	005b      	lsls	r3, r3, #1
 8001baa:	189b      	adds	r3, r3, r2
 8001bac:	43db      	mvns	r3, r3
 8001bae:	400b      	ands	r3, r1
 8001bb0:	001a      	movs	r2, r3
 8001bb2:	68bb      	ldr	r3, [r7, #8]
 8001bb4:	68b9      	ldr	r1, [r7, #8]
 8001bb6:	434b      	muls	r3, r1
 8001bb8:	6879      	ldr	r1, [r7, #4]
 8001bba:	434b      	muls	r3, r1
 8001bbc:	431a      	orrs	r2, r3
 8001bbe:	68fb      	ldr	r3, [r7, #12]
 8001bc0:	609a      	str	r2, [r3, #8]
 8001bc2:	46c0      	nop			; (mov r8, r8)
 8001bc4:	46bd      	mov	sp, r7
 8001bc6:	b004      	add	sp, #16
 8001bc8:	bd80      	pop	{r7, pc}

08001bca <LL_GPIO_SetPinPull>:
 8001bca:	b580      	push	{r7, lr}
 8001bcc:	b084      	sub	sp, #16
 8001bce:	af00      	add	r7, sp, #0
 8001bd0:	60f8      	str	r0, [r7, #12]
 8001bd2:	60b9      	str	r1, [r7, #8]
 8001bd4:	607a      	str	r2, [r7, #4]
 8001bd6:	68fb      	ldr	r3, [r7, #12]
 8001bd8:	68d9      	ldr	r1, [r3, #12]
 8001bda:	68bb      	ldr	r3, [r7, #8]
 8001bdc:	68ba      	ldr	r2, [r7, #8]
 8001bde:	435a      	muls	r2, r3
 8001be0:	0013      	movs	r3, r2
 8001be2:	005b      	lsls	r3, r3, #1
 8001be4:	189b      	adds	r3, r3, r2
 8001be6:	43db      	mvns	r3, r3
 8001be8:	400b      	ands	r3, r1
 8001bea:	001a      	movs	r2, r3
 8001bec:	68bb      	ldr	r3, [r7, #8]
 8001bee:	68b9      	ldr	r1, [r7, #8]
 8001bf0:	434b      	muls	r3, r1
 8001bf2:	6879      	ldr	r1, [r7, #4]
 8001bf4:	434b      	muls	r3, r1
 8001bf6:	431a      	orrs	r2, r3
 8001bf8:	68fb      	ldr	r3, [r7, #12]
 8001bfa:	60da      	str	r2, [r3, #12]
 8001bfc:	46c0      	nop			; (mov r8, r8)
 8001bfe:	46bd      	mov	sp, r7
 8001c00:	b004      	add	sp, #16
 8001c02:	bd80      	pop	{r7, pc}

08001c04 <LL_GPIO_SetAFPin_0_7>:
 8001c04:	b580      	push	{r7, lr}
 8001c06:	b084      	sub	sp, #16
 8001c08:	af00      	add	r7, sp, #0
 8001c0a:	60f8      	str	r0, [r7, #12]
 8001c0c:	60b9      	str	r1, [r7, #8]
 8001c0e:	607a      	str	r2, [r7, #4]
 8001c10:	68fb      	ldr	r3, [r7, #12]
 8001c12:	6a19      	ldr	r1, [r3, #32]
 8001c14:	68bb      	ldr	r3, [r7, #8]
 8001c16:	68ba      	ldr	r2, [r7, #8]
 8001c18:	4353      	muls	r3, r2
 8001c1a:	68ba      	ldr	r2, [r7, #8]
 8001c1c:	4353      	muls	r3, r2
 8001c1e:	68ba      	ldr	r2, [r7, #8]
 8001c20:	435a      	muls	r2, r3
 8001c22:	0013      	movs	r3, r2
 8001c24:	011b      	lsls	r3, r3, #4
 8001c26:	1a9b      	subs	r3, r3, r2
 8001c28:	43db      	mvns	r3, r3
 8001c2a:	400b      	ands	r3, r1
 8001c2c:	001a      	movs	r2, r3
 8001c2e:	68bb      	ldr	r3, [r7, #8]
 8001c30:	68b9      	ldr	r1, [r7, #8]
 8001c32:	434b      	muls	r3, r1
 8001c34:	68b9      	ldr	r1, [r7, #8]
 8001c36:	434b      	muls	r3, r1
 8001c38:	68b9      	ldr	r1, [r7, #8]
 8001c3a:	434b      	muls	r3, r1
 8001c3c:	6879      	ldr	r1, [r7, #4]
 8001c3e:	434b      	muls	r3, r1
 8001c40:	431a      	orrs	r2, r3
 8001c42:	68fb      	ldr	r3, [r7, #12]
 8001c44:	621a      	str	r2, [r3, #32]
 8001c46:	46c0      	nop			; (mov r8, r8)
 8001c48:	46bd      	mov	sp, r7
 8001c4a:	b004      	add	sp, #16
 8001c4c:	bd80      	pop	{r7, pc}

08001c4e <LL_GPIO_SetAFPin_8_15>:
 8001c4e:	b580      	push	{r7, lr}
 8001c50:	b084      	sub	sp, #16
 8001c52:	af00      	add	r7, sp, #0
 8001c54:	60f8      	str	r0, [r7, #12]
 8001c56:	60b9      	str	r1, [r7, #8]
 8001c58:	607a      	str	r2, [r7, #4]
 8001c5a:	68fb      	ldr	r3, [r7, #12]
 8001c5c:	6a59      	ldr	r1, [r3, #36]	; 0x24
 8001c5e:	68bb      	ldr	r3, [r7, #8]
 8001c60:	0a1b      	lsrs	r3, r3, #8
 8001c62:	68ba      	ldr	r2, [r7, #8]
 8001c64:	0a12      	lsrs	r2, r2, #8
 8001c66:	4353      	muls	r3, r2
 8001c68:	68ba      	ldr	r2, [r7, #8]
 8001c6a:	0a12      	lsrs	r2, r2, #8
 8001c6c:	4353      	muls	r3, r2
 8001c6e:	68ba      	ldr	r2, [r7, #8]
 8001c70:	0a12      	lsrs	r2, r2, #8
 8001c72:	435a      	muls	r2, r3
 8001c74:	0013      	movs	r3, r2
 8001c76:	011b      	lsls	r3, r3, #4
 8001c78:	1a9b      	subs	r3, r3, r2
 8001c7a:	43db      	mvns	r3, r3
 8001c7c:	400b      	ands	r3, r1
 8001c7e:	001a      	movs	r2, r3
 8001c80:	68bb      	ldr	r3, [r7, #8]
 8001c82:	0a1b      	lsrs	r3, r3, #8
 8001c84:	68b9      	ldr	r1, [r7, #8]
 8001c86:	0a09      	lsrs	r1, r1, #8
 8001c88:	434b      	muls	r3, r1
 8001c8a:	68b9      	ldr	r1, [r7, #8]
 8001c8c:	0a09      	lsrs	r1, r1, #8
 8001c8e:	434b      	muls	r3, r1
 8001c90:	68b9      	ldr	r1, [r7, #8]
 8001c92:	0a09      	lsrs	r1, r1, #8
 8001c94:	434b      	muls	r3, r1
 8001c96:	6879      	ldr	r1, [r7, #4]
 8001c98:	434b      	muls	r3, r1
 8001c9a:	431a      	orrs	r2, r3
 8001c9c:	68fb      	ldr	r3, [r7, #12]
 8001c9e:	625a      	str	r2, [r3, #36]	; 0x24
 8001ca0:	46c0      	nop			; (mov r8, r8)
 8001ca2:	46bd      	mov	sp, r7
 8001ca4:	b004      	add	sp, #16
 8001ca6:	bd80      	pop	{r7, pc}

08001ca8 <LL_InitTick>:
 8001ca8:	b580      	push	{r7, lr}
 8001caa:	b082      	sub	sp, #8
 8001cac:	af00      	add	r7, sp, #0
 8001cae:	6078      	str	r0, [r7, #4]
 8001cb0:	6039      	str	r1, [r7, #0]
 8001cb2:	6839      	ldr	r1, [r7, #0]
 8001cb4:	6878      	ldr	r0, [r7, #4]
 8001cb6:	f7fe fa27 	bl	8000108 <__udivsi3>
 8001cba:	0003      	movs	r3, r0
 8001cbc:	001a      	movs	r2, r3
 8001cbe:	4b06      	ldr	r3, [pc, #24]	; (8001cd8 <LL_InitTick+0x30>)
 8001cc0:	3a01      	subs	r2, #1
 8001cc2:	605a      	str	r2, [r3, #4]
 8001cc4:	4b04      	ldr	r3, [pc, #16]	; (8001cd8 <LL_InitTick+0x30>)
 8001cc6:	2200      	movs	r2, #0
 8001cc8:	609a      	str	r2, [r3, #8]
 8001cca:	4b03      	ldr	r3, [pc, #12]	; (8001cd8 <LL_InitTick+0x30>)
 8001ccc:	2205      	movs	r2, #5
 8001cce:	601a      	str	r2, [r3, #0]
 8001cd0:	46c0      	nop			; (mov r8, r8)
 8001cd2:	46bd      	mov	sp, r7
 8001cd4:	b002      	add	sp, #8
 8001cd6:	bd80      	pop	{r7, pc}
 8001cd8:	e000e010 	.word	0xe000e010

08001cdc <LL_SYSTICK_EnableIT>:
 8001cdc:	b580      	push	{r7, lr}
 8001cde:	af00      	add	r7, sp, #0
 8001ce0:	4b04      	ldr	r3, [pc, #16]	; (8001cf4 <LL_SYSTICK_EnableIT+0x18>)
 8001ce2:	681a      	ldr	r2, [r3, #0]
 8001ce4:	4b03      	ldr	r3, [pc, #12]	; (8001cf4 <LL_SYSTICK_EnableIT+0x18>)
 8001ce6:	2102      	movs	r1, #2
 8001ce8:	430a      	orrs	r2, r1
 8001cea:	601a      	str	r2, [r3, #0]
 8001cec:	46c0      	nop			; (mov r8, r8)
 8001cee:	46bd      	mov	sp, r7
 8001cf0:	bd80      	pop	{r7, pc}
 8001cf2:	46c0      	nop			; (mov r8, r8)
 8001cf4:	e000e010 	.word	0xe000e010

08001cf8 <LL_USART_Enable>:
 8001cf8:	b580      	push	{r7, lr}
 8001cfa:	b082      	sub	sp, #8
 8001cfc:	af00      	add	r7, sp, #0
 8001cfe:	6078      	str	r0, [r7, #4]
 8001d00:	687b      	ldr	r3, [r7, #4]
 8001d02:	681b      	ldr	r3, [r3, #0]
 8001d04:	2201      	movs	r2, #1
 8001d06:	431a      	orrs	r2, r3
 8001d08:	687b      	ldr	r3, [r7, #4]
 8001d0a:	601a      	str	r2, [r3, #0]
 8001d0c:	46c0      	nop			; (mov r8, r8)
 8001d0e:	46bd      	mov	sp, r7
 8001d10:	b002      	add	sp, #8
 8001d12:	bd80      	pop	{r7, pc}

08001d14 <LL_USART_SetTransferDirection>:
 8001d14:	b580      	push	{r7, lr}
 8001d16:	b082      	sub	sp, #8
 8001d18:	af00      	add	r7, sp, #0
 8001d1a:	6078      	str	r0, [r7, #4]
 8001d1c:	6039      	str	r1, [r7, #0]
 8001d1e:	687b      	ldr	r3, [r7, #4]
 8001d20:	681b      	ldr	r3, [r3, #0]
 8001d22:	220c      	movs	r2, #12
 8001d24:	4393      	bics	r3, r2
 8001d26:	001a      	movs	r2, r3
 8001d28:	683b      	ldr	r3, [r7, #0]
 8001d2a:	431a      	orrs	r2, r3
 8001d2c:	687b      	ldr	r3, [r7, #4]
 8001d2e:	601a      	str	r2, [r3, #0]
 8001d30:	46c0      	nop			; (mov r8, r8)
 8001d32:	46bd      	mov	sp, r7
 8001d34:	b002      	add	sp, #8
 8001d36:	bd80      	pop	{r7, pc}

08001d38 <LL_USART_SetParity>:
 8001d38:	b580      	push	{r7, lr}
 8001d3a:	b082      	sub	sp, #8
 8001d3c:	af00      	add	r7, sp, #0
 8001d3e:	6078      	str	r0, [r7, #4]
 8001d40:	6039      	str	r1, [r7, #0]
 8001d42:	687b      	ldr	r3, [r7, #4]
 8001d44:	681b      	ldr	r3, [r3, #0]
 8001d46:	4a05      	ldr	r2, [pc, #20]	; (8001d5c <LL_USART_SetParity+0x24>)
 8001d48:	401a      	ands	r2, r3
 8001d4a:	683b      	ldr	r3, [r7, #0]
 8001d4c:	431a      	orrs	r2, r3
 8001d4e:	687b      	ldr	r3, [r7, #4]
 8001d50:	601a      	str	r2, [r3, #0]
 8001d52:	46c0      	nop			; (mov r8, r8)
 8001d54:	46bd      	mov	sp, r7
 8001d56:	b002      	add	sp, #8
 8001d58:	bd80      	pop	{r7, pc}
 8001d5a:	46c0      	nop			; (mov r8, r8)
 8001d5c:	fffff9ff 	.word	0xfffff9ff

08001d60 <LL_USART_SetDataWidth>:
 8001d60:	b580      	push	{r7, lr}
 8001d62:	b082      	sub	sp, #8
 8001d64:	af00      	add	r7, sp, #0
 8001d66:	6078      	str	r0, [r7, #4]
 8001d68:	6039      	str	r1, [r7, #0]
 8001d6a:	687b      	ldr	r3, [r7, #4]
 8001d6c:	681b      	ldr	r3, [r3, #0]
 8001d6e:	4a05      	ldr	r2, [pc, #20]	; (8001d84 <LL_USART_SetDataWidth+0x24>)
 8001d70:	401a      	ands	r2, r3
 8001d72:	683b      	ldr	r3, [r7, #0]
 8001d74:	431a      	orrs	r2, r3
 8001d76:	687b      	ldr	r3, [r7, #4]
 8001d78:	601a      	str	r2, [r3, #0]
 8001d7a:	46c0      	nop			; (mov r8, r8)
 8001d7c:	46bd      	mov	sp, r7
 8001d7e:	b002      	add	sp, #8
 8001d80:	bd80      	pop	{r7, pc}
 8001d82:	46c0      	nop			; (mov r8, r8)
 8001d84:	ffffefff 	.word	0xffffefff

08001d88 <LL_USART_SetStopBitsLength>:
 8001d88:	b580      	push	{r7, lr}
 8001d8a:	b082      	sub	sp, #8
 8001d8c:	af00      	add	r7, sp, #0
 8001d8e:	6078      	str	r0, [r7, #4]
 8001d90:	6039      	str	r1, [r7, #0]
 8001d92:	687b      	ldr	r3, [r7, #4]
 8001d94:	685b      	ldr	r3, [r3, #4]
 8001d96:	4a05      	ldr	r2, [pc, #20]	; (8001dac <LL_USART_SetStopBitsLength+0x24>)
 8001d98:	401a      	ands	r2, r3
 8001d9a:	683b      	ldr	r3, [r7, #0]
 8001d9c:	431a      	orrs	r2, r3
 8001d9e:	687b      	ldr	r3, [r7, #4]
 8001da0:	605a      	str	r2, [r3, #4]
 8001da2:	46c0      	nop			; (mov r8, r8)
 8001da4:	46bd      	mov	sp, r7
 8001da6:	b002      	add	sp, #8
 8001da8:	bd80      	pop	{r7, pc}
 8001daa:	46c0      	nop			; (mov r8, r8)
 8001dac:	ffffcfff 	.word	0xffffcfff

08001db0 <LL_USART_SetTransferBitOrder>:
 8001db0:	b580      	push	{r7, lr}
 8001db2:	b082      	sub	sp, #8
 8001db4:	af00      	add	r7, sp, #0
 8001db6:	6078      	str	r0, [r7, #4]
 8001db8:	6039      	str	r1, [r7, #0]
 8001dba:	687b      	ldr	r3, [r7, #4]
 8001dbc:	685b      	ldr	r3, [r3, #4]
 8001dbe:	4a05      	ldr	r2, [pc, #20]	; (8001dd4 <LL_USART_SetTransferBitOrder+0x24>)
 8001dc0:	401a      	ands	r2, r3
 8001dc2:	683b      	ldr	r3, [r7, #0]
 8001dc4:	431a      	orrs	r2, r3
 8001dc6:	687b      	ldr	r3, [r7, #4]
 8001dc8:	605a      	str	r2, [r3, #4]
 8001dca:	46c0      	nop			; (mov r8, r8)
 8001dcc:	46bd      	mov	sp, r7
 8001dce:	b002      	add	sp, #8
 8001dd0:	bd80      	pop	{r7, pc}
 8001dd2:	46c0      	nop			; (mov r8, r8)
 8001dd4:	fff7ffff 	.word	0xfff7ffff

08001dd8 <LL_USART_SetBaudRate>:
 8001dd8:	b5b0      	push	{r4, r5, r7, lr}
 8001dda:	b084      	sub	sp, #16
 8001ddc:	af00      	add	r7, sp, #0
 8001dde:	60f8      	str	r0, [r7, #12]
 8001de0:	60b9      	str	r1, [r7, #8]
 8001de2:	607a      	str	r2, [r7, #4]
 8001de4:	603b      	str	r3, [r7, #0]
 8001de6:	2500      	movs	r5, #0
 8001de8:	2400      	movs	r4, #0
 8001dea:	687a      	ldr	r2, [r7, #4]
 8001dec:	2380      	movs	r3, #128	; 0x80
 8001dee:	021b      	lsls	r3, r3, #8
 8001df0:	429a      	cmp	r2, r3
 8001df2:	d117      	bne.n	8001e24 <LL_USART_SetBaudRate+0x4c>
 8001df4:	68bb      	ldr	r3, [r7, #8]
 8001df6:	005a      	lsls	r2, r3, #1
 8001df8:	683b      	ldr	r3, [r7, #0]
 8001dfa:	085b      	lsrs	r3, r3, #1
 8001dfc:	18d3      	adds	r3, r2, r3
 8001dfe:	6839      	ldr	r1, [r7, #0]
 8001e00:	0018      	movs	r0, r3
 8001e02:	f7fe f981 	bl	8000108 <__udivsi3>
 8001e06:	0003      	movs	r3, r0
 8001e08:	b29b      	uxth	r3, r3
 8001e0a:	001d      	movs	r5, r3
 8001e0c:	4b0e      	ldr	r3, [pc, #56]	; (8001e48 <LL_USART_SetBaudRate+0x70>)
 8001e0e:	402b      	ands	r3, r5
 8001e10:	001c      	movs	r4, r3
 8001e12:	086b      	lsrs	r3, r5, #1
 8001e14:	b29b      	uxth	r3, r3
 8001e16:	001a      	movs	r2, r3
 8001e18:	2307      	movs	r3, #7
 8001e1a:	4013      	ands	r3, r2
 8001e1c:	431c      	orrs	r4, r3
 8001e1e:	68fb      	ldr	r3, [r7, #12]
 8001e20:	60dc      	str	r4, [r3, #12]
 8001e22:	e00c      	b.n	8001e3e <LL_USART_SetBaudRate+0x66>
 8001e24:	683b      	ldr	r3, [r7, #0]
 8001e26:	085a      	lsrs	r2, r3, #1
 8001e28:	68bb      	ldr	r3, [r7, #8]
 8001e2a:	18d3      	adds	r3, r2, r3
 8001e2c:	6839      	ldr	r1, [r7, #0]
 8001e2e:	0018      	movs	r0, r3
 8001e30:	f7fe f96a 	bl	8000108 <__udivsi3>
 8001e34:	0003      	movs	r3, r0
 8001e36:	b29b      	uxth	r3, r3
 8001e38:	001a      	movs	r2, r3
 8001e3a:	68fb      	ldr	r3, [r7, #12]
 8001e3c:	60da      	str	r2, [r3, #12]
 8001e3e:	46c0      	nop			; (mov r8, r8)
 8001e40:	46bd      	mov	sp, r7
 8001e42:	b004      	add	sp, #16
 8001e44:	bdb0      	pop	{r4, r5, r7, pc}
 8001e46:	46c0      	nop			; (mov r8, r8)
 8001e48:	0000fff0 	.word	0x0000fff0

08001e4c <LL_USART_IsActiveFlag_TEACK>:
 8001e4c:	b580      	push	{r7, lr}
 8001e4e:	b082      	sub	sp, #8
 8001e50:	af00      	add	r7, sp, #0
 8001e52:	6078      	str	r0, [r7, #4]
 8001e54:	687b      	ldr	r3, [r7, #4]
 8001e56:	69da      	ldr	r2, [r3, #28]
 8001e58:	2380      	movs	r3, #128	; 0x80
 8001e5a:	039b      	lsls	r3, r3, #14
 8001e5c:	4013      	ands	r3, r2
 8001e5e:	4a05      	ldr	r2, [pc, #20]	; (8001e74 <LL_USART_IsActiveFlag_TEACK+0x28>)
 8001e60:	4694      	mov	ip, r2
 8001e62:	4463      	add	r3, ip
 8001e64:	425a      	negs	r2, r3
 8001e66:	4153      	adcs	r3, r2
 8001e68:	b2db      	uxtb	r3, r3
 8001e6a:	0018      	movs	r0, r3
 8001e6c:	46bd      	mov	sp, r7
 8001e6e:	b002      	add	sp, #8
 8001e70:	bd80      	pop	{r7, pc}
 8001e72:	46c0      	nop			; (mov r8, r8)
 8001e74:	ffe00000 	.word	0xffe00000

08001e78 <LL_USART_IsActiveFlag_REACK>:
 8001e78:	b580      	push	{r7, lr}
 8001e7a:	b082      	sub	sp, #8
 8001e7c:	af00      	add	r7, sp, #0
 8001e7e:	6078      	str	r0, [r7, #4]
 8001e80:	687b      	ldr	r3, [r7, #4]
 8001e82:	69da      	ldr	r2, [r3, #28]
 8001e84:	2380      	movs	r3, #128	; 0x80
 8001e86:	03db      	lsls	r3, r3, #15
 8001e88:	4013      	ands	r3, r2
 8001e8a:	4a05      	ldr	r2, [pc, #20]	; (8001ea0 <LL_USART_IsActiveFlag_REACK+0x28>)
 8001e8c:	4694      	mov	ip, r2
 8001e8e:	4463      	add	r3, ip
 8001e90:	425a      	negs	r2, r3
 8001e92:	4153      	adcs	r3, r2
 8001e94:	b2db      	uxtb	r3, r3
 8001e96:	0018      	movs	r0, r3
 8001e98:	46bd      	mov	sp, r7
 8001e9a:	b002      	add	sp, #8
 8001e9c:	bd80      	pop	{r7, pc}
 8001e9e:	46c0      	nop			; (mov r8, r8)
 8001ea0:	ffc00000 	.word	0xffc00000

08001ea4 <LL_I2C_Enable>:
 8001ea4:	b580      	push	{r7, lr}
 8001ea6:	b082      	sub	sp, #8
 8001ea8:	af00      	add	r7, sp, #0
 8001eaa:	6078      	str	r0, [r7, #4]
 8001eac:	687b      	ldr	r3, [r7, #4]
 8001eae:	681b      	ldr	r3, [r3, #0]
 8001eb0:	2201      	movs	r2, #1
 8001eb2:	431a      	orrs	r2, r3
 8001eb4:	687b      	ldr	r3, [r7, #4]
 8001eb6:	601a      	str	r2, [r3, #0]
 8001eb8:	46c0      	nop			; (mov r8, r8)
 8001eba:	46bd      	mov	sp, r7
 8001ebc:	b002      	add	sp, #8
 8001ebe:	bd80      	pop	{r7, pc}

08001ec0 <LL_I2C_Disable>:
 8001ec0:	b580      	push	{r7, lr}
 8001ec2:	b082      	sub	sp, #8
 8001ec4:	af00      	add	r7, sp, #0
 8001ec6:	6078      	str	r0, [r7, #4]
 8001ec8:	687b      	ldr	r3, [r7, #4]
 8001eca:	681b      	ldr	r3, [r3, #0]
 8001ecc:	2201      	movs	r2, #1
 8001ece:	4393      	bics	r3, r2
 8001ed0:	001a      	movs	r2, r3
 8001ed2:	687b      	ldr	r3, [r7, #4]
 8001ed4:	601a      	str	r2, [r3, #0]
 8001ed6:	46c0      	nop			; (mov r8, r8)
 8001ed8:	46bd      	mov	sp, r7
 8001eda:	b002      	add	sp, #8
 8001edc:	bd80      	pop	{r7, pc}
	...

08001ee0 <LL_I2C_SetDigitalFilter>:
 8001ee0:	b580      	push	{r7, lr}
 8001ee2:	b082      	sub	sp, #8
 8001ee4:	af00      	add	r7, sp, #0
 8001ee6:	6078      	str	r0, [r7, #4]
 8001ee8:	6039      	str	r1, [r7, #0]
 8001eea:	687b      	ldr	r3, [r7, #4]
 8001eec:	681b      	ldr	r3, [r3, #0]
 8001eee:	4a05      	ldr	r2, [pc, #20]	; (8001f04 <LL_I2C_SetDigitalFilter+0x24>)
 8001ef0:	401a      	ands	r2, r3
 8001ef2:	683b      	ldr	r3, [r7, #0]
 8001ef4:	021b      	lsls	r3, r3, #8
 8001ef6:	431a      	orrs	r2, r3
 8001ef8:	687b      	ldr	r3, [r7, #4]
 8001efa:	601a      	str	r2, [r3, #0]
 8001efc:	46c0      	nop			; (mov r8, r8)
 8001efe:	46bd      	mov	sp, r7
 8001f00:	b002      	add	sp, #8
 8001f02:	bd80      	pop	{r7, pc}
 8001f04:	fffff0ff 	.word	0xfffff0ff

08001f08 <LL_I2C_DisableAnalogFilter>:
 8001f08:	b580      	push	{r7, lr}
 8001f0a:	b082      	sub	sp, #8
 8001f0c:	af00      	add	r7, sp, #0
 8001f0e:	6078      	str	r0, [r7, #4]
 8001f10:	687b      	ldr	r3, [r7, #4]
 8001f12:	681b      	ldr	r3, [r3, #0]
 8001f14:	2280      	movs	r2, #128	; 0x80
 8001f16:	0152      	lsls	r2, r2, #5
 8001f18:	431a      	orrs	r2, r3
 8001f1a:	687b      	ldr	r3, [r7, #4]
 8001f1c:	601a      	str	r2, [r3, #0]
 8001f1e:	46c0      	nop			; (mov r8, r8)
 8001f20:	46bd      	mov	sp, r7
 8001f22:	b002      	add	sp, #8
 8001f24:	bd80      	pop	{r7, pc}

08001f26 <LL_I2C_DisableClockStretching>:
 8001f26:	b580      	push	{r7, lr}
 8001f28:	b082      	sub	sp, #8
 8001f2a:	af00      	add	r7, sp, #0
 8001f2c:	6078      	str	r0, [r7, #4]
 8001f2e:	687b      	ldr	r3, [r7, #4]
 8001f30:	681b      	ldr	r3, [r3, #0]
 8001f32:	2280      	movs	r2, #128	; 0x80
 8001f34:	0292      	lsls	r2, r2, #10
 8001f36:	431a      	orrs	r2, r3
 8001f38:	687b      	ldr	r3, [r7, #4]
 8001f3a:	601a      	str	r2, [r3, #0]
 8001f3c:	46c0      	nop			; (mov r8, r8)
 8001f3e:	46bd      	mov	sp, r7
 8001f40:	b002      	add	sp, #8
 8001f42:	bd80      	pop	{r7, pc}

08001f44 <LL_I2C_SetMasterAddressingMode>:
 8001f44:	b580      	push	{r7, lr}
 8001f46:	b082      	sub	sp, #8
 8001f48:	af00      	add	r7, sp, #0
 8001f4a:	6078      	str	r0, [r7, #4]
 8001f4c:	6039      	str	r1, [r7, #0]
 8001f4e:	687b      	ldr	r3, [r7, #4]
 8001f50:	685b      	ldr	r3, [r3, #4]
 8001f52:	4a05      	ldr	r2, [pc, #20]	; (8001f68 <LL_I2C_SetMasterAddressingMode+0x24>)
 8001f54:	401a      	ands	r2, r3
 8001f56:	683b      	ldr	r3, [r7, #0]
 8001f58:	431a      	orrs	r2, r3
 8001f5a:	687b      	ldr	r3, [r7, #4]
 8001f5c:	605a      	str	r2, [r3, #4]
 8001f5e:	46c0      	nop			; (mov r8, r8)
 8001f60:	46bd      	mov	sp, r7
 8001f62:	b002      	add	sp, #8
 8001f64:	bd80      	pop	{r7, pc}
 8001f66:	46c0      	nop			; (mov r8, r8)
 8001f68:	fffff7ff 	.word	0xfffff7ff

08001f6c <LL_I2C_SetTiming>:
 8001f6c:	b580      	push	{r7, lr}
 8001f6e:	b082      	sub	sp, #8
 8001f70:	af00      	add	r7, sp, #0
 8001f72:	6078      	str	r0, [r7, #4]
 8001f74:	6039      	str	r1, [r7, #0]
 8001f76:	687b      	ldr	r3, [r7, #4]
 8001f78:	683a      	ldr	r2, [r7, #0]
 8001f7a:	611a      	str	r2, [r3, #16]
 8001f7c:	46c0      	nop			; (mov r8, r8)
 8001f7e:	46bd      	mov	sp, r7
 8001f80:	b002      	add	sp, #8
 8001f82:	bd80      	pop	{r7, pc}

08001f84 <LL_I2C_SetMode>:
 8001f84:	b580      	push	{r7, lr}
 8001f86:	b082      	sub	sp, #8
 8001f88:	af00      	add	r7, sp, #0
 8001f8a:	6078      	str	r0, [r7, #4]
 8001f8c:	6039      	str	r1, [r7, #0]
 8001f8e:	687b      	ldr	r3, [r7, #4]
 8001f90:	681b      	ldr	r3, [r3, #0]
 8001f92:	4a05      	ldr	r2, [pc, #20]	; (8001fa8 <LL_I2C_SetMode+0x24>)
 8001f94:	401a      	ands	r2, r3
 8001f96:	683b      	ldr	r3, [r7, #0]
 8001f98:	431a      	orrs	r2, r3
 8001f9a:	687b      	ldr	r3, [r7, #4]
 8001f9c:	601a      	str	r2, [r3, #0]
 8001f9e:	46c0      	nop			; (mov r8, r8)
 8001fa0:	46bd      	mov	sp, r7
 8001fa2:	b002      	add	sp, #8
 8001fa4:	bd80      	pop	{r7, pc}
 8001fa6:	46c0      	nop			; (mov r8, r8)
 8001fa8:	ffcfffff 	.word	0xffcfffff

08001fac <rcc_config>:
 8001fac:	b580      	push	{r7, lr}
 8001fae:	af00      	add	r7, sp, #0
 8001fb0:	2001      	movs	r0, #1
 8001fb2:	f7ff fd65 	bl	8001a80 <LL_FLASH_SetLatency>
 8001fb6:	f7ff fc85 	bl	80018c4 <LL_RCC_HSI_Enable>
 8001fba:	46c0      	nop			; (mov r8, r8)
 8001fbc:	f7ff fc90 	bl	80018e0 <LL_RCC_HSI_IsReady>
 8001fc0:	0003      	movs	r3, r0
 8001fc2:	2b01      	cmp	r3, #1
 8001fc4:	d1fa      	bne.n	8001fbc <rcc_config+0x10>
 8001fc6:	23a0      	movs	r3, #160	; 0xa0
 8001fc8:	039b      	lsls	r3, r3, #14
 8001fca:	0019      	movs	r1, r3
 8001fcc:	2000      	movs	r0, #0
 8001fce:	f7ff fd31 	bl	8001a34 <LL_RCC_PLL_ConfigDomain_SYS>
 8001fd2:	f7ff fd0d 	bl	80019f0 <LL_RCC_PLL_Enable>
 8001fd6:	46c0      	nop			; (mov r8, r8)
 8001fd8:	f7ff fd18 	bl	8001a0c <LL_RCC_PLL_IsReady>
 8001fdc:	0003      	movs	r3, r0
 8001fde:	2b01      	cmp	r3, #1
 8001fe0:	d1fa      	bne.n	8001fd8 <rcc_config+0x2c>
 8001fe2:	2000      	movs	r0, #0
 8001fe4:	f7ff fcac 	bl	8001940 <LL_RCC_SetAHBPrescaler>
 8001fe8:	2002      	movs	r0, #2
 8001fea:	f7ff fc89 	bl	8001900 <LL_RCC_SetSysClkSource>
 8001fee:	46c0      	nop			; (mov r8, r8)
 8001ff0:	f7ff fc9a 	bl	8001928 <LL_RCC_GetSysClkSource>
 8001ff4:	0003      	movs	r3, r0
 8001ff6:	2b08      	cmp	r3, #8
 8001ff8:	d1fa      	bne.n	8001ff0 <rcc_config+0x44>
 8001ffa:	2000      	movs	r0, #0
 8001ffc:	f7ff fcb4 	bl	8001968 <LL_RCC_SetAPB1Prescaler>
 8002000:	4b02      	ldr	r3, [pc, #8]	; (800200c <rcc_config+0x60>)
 8002002:	4a03      	ldr	r2, [pc, #12]	; (8002010 <rcc_config+0x64>)
 8002004:	601a      	str	r2, [r3, #0]
 8002006:	46c0      	nop			; (mov r8, r8)
 8002008:	46bd      	mov	sp, r7
 800200a:	bd80      	pop	{r7, pc}
 800200c:	20000000 	.word	0x20000000
 8002010:	02dc6c00 	.word	0x02dc6c00

08002014 <gpio_config>:
 8002014:	b580      	push	{r7, lr}
 8002016:	af00      	add	r7, sp, #0
 8002018:	2380      	movs	r3, #128	; 0x80
 800201a:	031b      	lsls	r3, r3, #12
 800201c:	0018      	movs	r0, r3
 800201e:	f7ff fd43 	bl	8001aa8 <LL_AHB1_GRP1_EnableClock>
 8002022:	2380      	movs	r3, #128	; 0x80
 8002024:	005b      	lsls	r3, r3, #1
 8002026:	4807      	ldr	r0, [pc, #28]	; (8002044 <gpio_config+0x30>)
 8002028:	2201      	movs	r2, #1
 800202a:	0019      	movs	r1, r3
 800202c:	f7ff fd7e 	bl	8001b2c <LL_GPIO_SetPinMode>
 8002030:	2380      	movs	r3, #128	; 0x80
 8002032:	009b      	lsls	r3, r3, #2
 8002034:	4803      	ldr	r0, [pc, #12]	; (8002044 <gpio_config+0x30>)
 8002036:	2201      	movs	r2, #1
 8002038:	0019      	movs	r1, r3
 800203a:	f7ff fd77 	bl	8001b2c <LL_GPIO_SetPinMode>
 800203e:	46c0      	nop			; (mov r8, r8)
 8002040:	46bd      	mov	sp, r7
 8002042:	bd80      	pop	{r7, pc}
 8002044:	48000800 	.word	0x48000800

08002048 <exti_config>:
 8002048:	b580      	push	{r7, lr}
 800204a:	af00      	add	r7, sp, #0
 800204c:	46c0      	nop			; (mov r8, r8)
 800204e:	46bd      	mov	sp, r7
 8002050:	bd80      	pop	{r7, pc}

08002052 <systick_config>:
 8002052:	b580      	push	{r7, lr}
 8002054:	b082      	sub	sp, #8
 8002056:	af00      	add	r7, sp, #0
 8002058:	6078      	str	r0, [r7, #4]
 800205a:	6039      	str	r1, [r7, #0]
 800205c:	683a      	ldr	r2, [r7, #0]
 800205e:	687b      	ldr	r3, [r7, #4]
 8002060:	0011      	movs	r1, r2
 8002062:	0018      	movs	r0, r3
 8002064:	f7ff fe20 	bl	8001ca8 <LL_InitTick>
 8002068:	f7ff fe38 	bl	8001cdc <LL_SYSTICK_EnableIT>
 800206c:	2301      	movs	r3, #1
 800206e:	425b      	negs	r3, r3
 8002070:	2100      	movs	r1, #0
 8002072:	0018      	movs	r0, r3
 8002074:	f7ff fbb8 	bl	80017e8 <NVIC_SetPriority>
 8002078:	46c0      	nop			; (mov r8, r8)
 800207a:	46bd      	mov	sp, r7
 800207c:	b002      	add	sp, #8
 800207e:	bd80      	pop	{r7, pc}

08002080 <usart_config>:
 8002080:	b580      	push	{r7, lr}
 8002082:	af00      	add	r7, sp, #0
 8002084:	2380      	movs	r3, #128	; 0x80
 8002086:	029b      	lsls	r3, r3, #10
 8002088:	0018      	movs	r0, r3
 800208a:	f7ff fd0d 	bl	8001aa8 <LL_AHB1_GRP1_EnableClock>
 800208e:	2380      	movs	r3, #128	; 0x80
 8002090:	0099      	lsls	r1, r3, #2
 8002092:	2390      	movs	r3, #144	; 0x90
 8002094:	05db      	lsls	r3, r3, #23
 8002096:	2202      	movs	r2, #2
 8002098:	0018      	movs	r0, r3
 800209a:	f7ff fd47 	bl	8001b2c <LL_GPIO_SetPinMode>
 800209e:	2380      	movs	r3, #128	; 0x80
 80020a0:	0099      	lsls	r1, r3, #2
 80020a2:	2390      	movs	r3, #144	; 0x90
 80020a4:	05db      	lsls	r3, r3, #23
 80020a6:	2201      	movs	r2, #1
 80020a8:	0018      	movs	r0, r3
 80020aa:	f7ff fdd0 	bl	8001c4e <LL_GPIO_SetAFPin_8_15>
 80020ae:	2380      	movs	r3, #128	; 0x80
 80020b0:	0099      	lsls	r1, r3, #2
 80020b2:	2390      	movs	r3, #144	; 0x90
 80020b4:	05db      	lsls	r3, r3, #23
 80020b6:	2203      	movs	r2, #3
 80020b8:	0018      	movs	r0, r3
 80020ba:	f7ff fd69 	bl	8001b90 <LL_GPIO_SetPinSpeed>
 80020be:	2380      	movs	r3, #128	; 0x80
 80020c0:	00d9      	lsls	r1, r3, #3
 80020c2:	2390      	movs	r3, #144	; 0x90
 80020c4:	05db      	lsls	r3, r3, #23
 80020c6:	2202      	movs	r2, #2
 80020c8:	0018      	movs	r0, r3
 80020ca:	f7ff fd2f 	bl	8001b2c <LL_GPIO_SetPinMode>
 80020ce:	2380      	movs	r3, #128	; 0x80
 80020d0:	00d9      	lsls	r1, r3, #3
 80020d2:	2390      	movs	r3, #144	; 0x90
 80020d4:	05db      	lsls	r3, r3, #23
 80020d6:	2201      	movs	r2, #1
 80020d8:	0018      	movs	r0, r3
 80020da:	f7ff fdb8 	bl	8001c4e <LL_GPIO_SetAFPin_8_15>
 80020de:	2380      	movs	r3, #128	; 0x80
 80020e0:	00d9      	lsls	r1, r3, #3
 80020e2:	2390      	movs	r3, #144	; 0x90
 80020e4:	05db      	lsls	r3, r3, #23
 80020e6:	2203      	movs	r2, #3
 80020e8:	0018      	movs	r0, r3
 80020ea:	f7ff fd51 	bl	8001b90 <LL_GPIO_SetPinSpeed>
 80020ee:	2380      	movs	r3, #128	; 0x80
 80020f0:	01db      	lsls	r3, r3, #7
 80020f2:	0018      	movs	r0, r3
 80020f4:	f7ff fd04 	bl	8001b00 <LL_APB1_GRP2_EnableClock>
 80020f8:	2000      	movs	r0, #0
 80020fa:	f7ff fc4b 	bl	8001994 <LL_RCC_SetUSARTClockSource>
 80020fe:	4b1a      	ldr	r3, [pc, #104]	; (8002168 <usart_config+0xe8>)
 8002100:	210c      	movs	r1, #12
 8002102:	0018      	movs	r0, r3
 8002104:	f7ff fe06 	bl	8001d14 <LL_USART_SetTransferDirection>
 8002108:	4b17      	ldr	r3, [pc, #92]	; (8002168 <usart_config+0xe8>)
 800210a:	2100      	movs	r1, #0
 800210c:	0018      	movs	r0, r3
 800210e:	f7ff fe13 	bl	8001d38 <LL_USART_SetParity>
 8002112:	4b15      	ldr	r3, [pc, #84]	; (8002168 <usart_config+0xe8>)
 8002114:	2100      	movs	r1, #0
 8002116:	0018      	movs	r0, r3
 8002118:	f7ff fe22 	bl	8001d60 <LL_USART_SetDataWidth>
 800211c:	4b12      	ldr	r3, [pc, #72]	; (8002168 <usart_config+0xe8>)
 800211e:	2100      	movs	r1, #0
 8002120:	0018      	movs	r0, r3
 8002122:	f7ff fe31 	bl	8001d88 <LL_USART_SetStopBitsLength>
 8002126:	4b10      	ldr	r3, [pc, #64]	; (8002168 <usart_config+0xe8>)
 8002128:	2100      	movs	r1, #0
 800212a:	0018      	movs	r0, r3
 800212c:	f7ff fe40 	bl	8001db0 <LL_USART_SetTransferBitOrder>
 8002130:	4b0e      	ldr	r3, [pc, #56]	; (800216c <usart_config+0xec>)
 8002132:	6819      	ldr	r1, [r3, #0]
 8002134:	23e1      	movs	r3, #225	; 0xe1
 8002136:	025b      	lsls	r3, r3, #9
 8002138:	480b      	ldr	r0, [pc, #44]	; (8002168 <usart_config+0xe8>)
 800213a:	2200      	movs	r2, #0
 800213c:	f7ff fe4c 	bl	8001dd8 <LL_USART_SetBaudRate>
 8002140:	4b09      	ldr	r3, [pc, #36]	; (8002168 <usart_config+0xe8>)
 8002142:	0018      	movs	r0, r3
 8002144:	f7ff fdd8 	bl	8001cf8 <LL_USART_Enable>
 8002148:	46c0      	nop			; (mov r8, r8)
 800214a:	4b07      	ldr	r3, [pc, #28]	; (8002168 <usart_config+0xe8>)
 800214c:	0018      	movs	r0, r3
 800214e:	f7ff fe7d 	bl	8001e4c <LL_USART_IsActiveFlag_TEACK>
 8002152:	1e03      	subs	r3, r0, #0
 8002154:	d0f9      	beq.n	800214a <usart_config+0xca>
 8002156:	4b04      	ldr	r3, [pc, #16]	; (8002168 <usart_config+0xe8>)
 8002158:	0018      	movs	r0, r3
 800215a:	f7ff fe8d 	bl	8001e78 <LL_USART_IsActiveFlag_REACK>
 800215e:	1e03      	subs	r3, r0, #0
 8002160:	d0f3      	beq.n	800214a <usart_config+0xca>
 8002162:	46c0      	nop			; (mov r8, r8)
 8002164:	46bd      	mov	sp, r7
 8002166:	bd80      	pop	{r7, pc}
 8002168:	40013800 	.word	0x40013800
 800216c:	20000000 	.word	0x20000000

08002170 <i2c_config>:
 8002170:	b580      	push	{r7, lr}
 8002172:	af00      	add	r7, sp, #0
 8002174:	2380      	movs	r3, #128	; 0x80
 8002176:	02db      	lsls	r3, r3, #11
 8002178:	0018      	movs	r0, r3
 800217a:	f7ff fc95 	bl	8001aa8 <LL_AHB1_GRP1_EnableClock>
 800217e:	4b36      	ldr	r3, [pc, #216]	; (8002258 <i2c_config+0xe8>)
 8002180:	2202      	movs	r2, #2
 8002182:	2140      	movs	r1, #64	; 0x40
 8002184:	0018      	movs	r0, r3
 8002186:	f7ff fcd1 	bl	8001b2c <LL_GPIO_SetPinMode>
 800218a:	4b33      	ldr	r3, [pc, #204]	; (8002258 <i2c_config+0xe8>)
 800218c:	2201      	movs	r2, #1
 800218e:	2140      	movs	r1, #64	; 0x40
 8002190:	0018      	movs	r0, r3
 8002192:	f7ff fce8 	bl	8001b66 <LL_GPIO_SetPinOutputType>
 8002196:	4b30      	ldr	r3, [pc, #192]	; (8002258 <i2c_config+0xe8>)
 8002198:	2201      	movs	r2, #1
 800219a:	2140      	movs	r1, #64	; 0x40
 800219c:	0018      	movs	r0, r3
 800219e:	f7ff fd14 	bl	8001bca <LL_GPIO_SetPinPull>
 80021a2:	4b2d      	ldr	r3, [pc, #180]	; (8002258 <i2c_config+0xe8>)
 80021a4:	2201      	movs	r2, #1
 80021a6:	2140      	movs	r1, #64	; 0x40
 80021a8:	0018      	movs	r0, r3
 80021aa:	f7ff fd2b 	bl	8001c04 <LL_GPIO_SetAFPin_0_7>
 80021ae:	4b2a      	ldr	r3, [pc, #168]	; (8002258 <i2c_config+0xe8>)
 80021b0:	2203      	movs	r2, #3
 80021b2:	2140      	movs	r1, #64	; 0x40
 80021b4:	0018      	movs	r0, r3
 80021b6:	f7ff fceb 	bl	8001b90 <LL_GPIO_SetPinSpeed>
 80021ba:	4b27      	ldr	r3, [pc, #156]	; (8002258 <i2c_config+0xe8>)
 80021bc:	2202      	movs	r2, #2
 80021be:	2180      	movs	r1, #128	; 0x80
 80021c0:	0018      	movs	r0, r3
 80021c2:	f7ff fcb3 	bl	8001b2c <LL_GPIO_SetPinMode>
 80021c6:	4b24      	ldr	r3, [pc, #144]	; (8002258 <i2c_config+0xe8>)
 80021c8:	2201      	movs	r2, #1
 80021ca:	2180      	movs	r1, #128	; 0x80
 80021cc:	0018      	movs	r0, r3
 80021ce:	f7ff fcca 	bl	8001b66 <LL_GPIO_SetPinOutputType>
 80021d2:	4b21      	ldr	r3, [pc, #132]	; (8002258 <i2c_config+0xe8>)
 80021d4:	2201      	movs	r2, #1
 80021d6:	2180      	movs	r1, #128	; 0x80
 80021d8:	0018      	movs	r0, r3
 80021da:	f7ff fcf6 	bl	8001bca <LL_GPIO_SetPinPull>
 80021de:	4b1e      	ldr	r3, [pc, #120]	; (8002258 <i2c_config+0xe8>)
 80021e0:	2201      	movs	r2, #1
 80021e2:	2180      	movs	r1, #128	; 0x80
 80021e4:	0018      	movs	r0, r3
 80021e6:	f7ff fd0d 	bl	8001c04 <LL_GPIO_SetAFPin_0_7>
 80021ea:	4b1b      	ldr	r3, [pc, #108]	; (8002258 <i2c_config+0xe8>)
 80021ec:	2203      	movs	r2, #3
 80021ee:	2180      	movs	r1, #128	; 0x80
 80021f0:	0018      	movs	r0, r3
 80021f2:	f7ff fccd 	bl	8001b90 <LL_GPIO_SetPinSpeed>
 80021f6:	2010      	movs	r0, #16
 80021f8:	f7ff fbe6 	bl	80019c8 <LL_RCC_SetI2CClockSource>
 80021fc:	4b17      	ldr	r3, [pc, #92]	; (800225c <i2c_config+0xec>)
 80021fe:	0018      	movs	r0, r3
 8002200:	f7ff fe5e 	bl	8001ec0 <LL_I2C_Disable>
 8002204:	2380      	movs	r3, #128	; 0x80
 8002206:	039b      	lsls	r3, r3, #14
 8002208:	0018      	movs	r0, r3
 800220a:	f7ff fc63 	bl	8001ad4 <LL_APB1_GRP1_EnableClock>
 800220e:	4b13      	ldr	r3, [pc, #76]	; (800225c <i2c_config+0xec>)
 8002210:	0018      	movs	r0, r3
 8002212:	f7ff fe79 	bl	8001f08 <LL_I2C_DisableAnalogFilter>
 8002216:	4b11      	ldr	r3, [pc, #68]	; (800225c <i2c_config+0xec>)
 8002218:	2101      	movs	r1, #1
 800221a:	0018      	movs	r0, r3
 800221c:	f7ff fe60 	bl	8001ee0 <LL_I2C_SetDigitalFilter>
 8002220:	4a0f      	ldr	r2, [pc, #60]	; (8002260 <i2c_config+0xf0>)
 8002222:	4b0e      	ldr	r3, [pc, #56]	; (800225c <i2c_config+0xec>)
 8002224:	0011      	movs	r1, r2
 8002226:	0018      	movs	r0, r3
 8002228:	f7ff fea0 	bl	8001f6c <LL_I2C_SetTiming>
 800222c:	4b0b      	ldr	r3, [pc, #44]	; (800225c <i2c_config+0xec>)
 800222e:	0018      	movs	r0, r3
 8002230:	f7ff fe79 	bl	8001f26 <LL_I2C_DisableClockStretching>
 8002234:	4b09      	ldr	r3, [pc, #36]	; (800225c <i2c_config+0xec>)
 8002236:	2100      	movs	r1, #0
 8002238:	0018      	movs	r0, r3
 800223a:	f7ff fe83 	bl	8001f44 <LL_I2C_SetMasterAddressingMode>
 800223e:	4b07      	ldr	r3, [pc, #28]	; (800225c <i2c_config+0xec>)
 8002240:	2100      	movs	r1, #0
 8002242:	0018      	movs	r0, r3
 8002244:	f7ff fe9e 	bl	8001f84 <LL_I2C_SetMode>
 8002248:	4b04      	ldr	r3, [pc, #16]	; (800225c <i2c_config+0xec>)
 800224a:	0018      	movs	r0, r3
 800224c:	f7ff fe2a 	bl	8001ea4 <LL_I2C_Enable>
 8002250:	46c0      	nop			; (mov r8, r8)
 8002252:	46bd      	mov	sp, r7
 8002254:	bd80      	pop	{r7, pc}
 8002256:	46c0      	nop			; (mov r8, r8)
 8002258:	48000400 	.word	0x48000400
 800225c:	40005400 	.word	0x40005400
 8002260:	2000090e 	.word	0x2000090e

08002264 <LL_USART_IsActiveFlag_RXNE>:
 8002264:	b580      	push	{r7, lr}
 8002266:	b082      	sub	sp, #8
 8002268:	af00      	add	r7, sp, #0
 800226a:	6078      	str	r0, [r7, #4]
 800226c:	687b      	ldr	r3, [r7, #4]
 800226e:	69db      	ldr	r3, [r3, #28]
 8002270:	2220      	movs	r2, #32
 8002272:	4013      	ands	r3, r2
 8002274:	3b20      	subs	r3, #32
 8002276:	425a      	negs	r2, r3
 8002278:	4153      	adcs	r3, r2
 800227a:	b2db      	uxtb	r3, r3
 800227c:	0018      	movs	r0, r3
 800227e:	46bd      	mov	sp, r7
 8002280:	b002      	add	sp, #8
 8002282:	bd80      	pop	{r7, pc}

08002284 <LL_USART_IsActiveFlag_TC>:
 8002284:	b580      	push	{r7, lr}
 8002286:	b082      	sub	sp, #8
 8002288:	af00      	add	r7, sp, #0
 800228a:	6078      	str	r0, [r7, #4]
 800228c:	687b      	ldr	r3, [r7, #4]
 800228e:	69db      	ldr	r3, [r3, #28]
 8002290:	2240      	movs	r2, #64	; 0x40
 8002292:	4013      	ands	r3, r2
 8002294:	3b40      	subs	r3, #64	; 0x40
 8002296:	425a      	negs	r2, r3
 8002298:	4153      	adcs	r3, r2
 800229a:	b2db      	uxtb	r3, r3
 800229c:	0018      	movs	r0, r3
 800229e:	46bd      	mov	sp, r7
 80022a0:	b002      	add	sp, #8
 80022a2:	bd80      	pop	{r7, pc}

080022a4 <LL_USART_IsActiveFlag_TXE>:
 80022a4:	b580      	push	{r7, lr}
 80022a6:	b082      	sub	sp, #8
 80022a8:	af00      	add	r7, sp, #0
 80022aa:	6078      	str	r0, [r7, #4]
 80022ac:	687b      	ldr	r3, [r7, #4]
 80022ae:	69db      	ldr	r3, [r3, #28]
 80022b0:	2280      	movs	r2, #128	; 0x80
 80022b2:	4013      	ands	r3, r2
 80022b4:	3b80      	subs	r3, #128	; 0x80
 80022b6:	425a      	negs	r2, r3
 80022b8:	4153      	adcs	r3, r2
 80022ba:	b2db      	uxtb	r3, r3
 80022bc:	0018      	movs	r0, r3
 80022be:	46bd      	mov	sp, r7
 80022c0:	b002      	add	sp, #8
 80022c2:	bd80      	pop	{r7, pc}

080022c4 <LL_USART_ReceiveData8>:
 80022c4:	b580      	push	{r7, lr}
 80022c6:	b082      	sub	sp, #8
 80022c8:	af00      	add	r7, sp, #0
 80022ca:	6078      	str	r0, [r7, #4]
 80022cc:	687b      	ldr	r3, [r7, #4]
 80022ce:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
 80022d0:	b29b      	uxth	r3, r3
 80022d2:	b2db      	uxtb	r3, r3
 80022d4:	0018      	movs	r0, r3
 80022d6:	46bd      	mov	sp, r7
 80022d8:	b002      	add	sp, #8
 80022da:	bd80      	pop	{r7, pc}

080022dc <LL_USART_TransmitData8>:
 80022dc:	b580      	push	{r7, lr}
 80022de:	b082      	sub	sp, #8
 80022e0:	af00      	add	r7, sp, #0
 80022e2:	6078      	str	r0, [r7, #4]
 80022e4:	000a      	movs	r2, r1
 80022e6:	1cfb      	adds	r3, r7, #3
 80022e8:	701a      	strb	r2, [r3, #0]
 80022ea:	1cfb      	adds	r3, r7, #3
 80022ec:	781b      	ldrb	r3, [r3, #0]
 80022ee:	b29a      	uxth	r2, r3
 80022f0:	687b      	ldr	r3, [r7, #4]
 80022f2:	851a      	strh	r2, [r3, #40]	; 0x28
 80022f4:	46c0      	nop			; (mov r8, r8)
 80022f6:	46bd      	mov	sp, r7
 80022f8:	b002      	add	sp, #8
 80022fa:	bd80      	pop	{r7, pc}

080022fc <usart_getc>:
 80022fc:	b580      	push	{r7, lr}
 80022fe:	af00      	add	r7, sp, #0
 8002300:	46c0      	nop			; (mov r8, r8)
 8002302:	4b07      	ldr	r3, [pc, #28]	; (8002320 <usart_getc+0x24>)
 8002304:	0018      	movs	r0, r3
 8002306:	f7ff ffad 	bl	8002264 <LL_USART_IsActiveFlag_RXNE>
 800230a:	1e03      	subs	r3, r0, #0
 800230c:	d0f9      	beq.n	8002302 <usart_getc+0x6>
 800230e:	4b04      	ldr	r3, [pc, #16]	; (8002320 <usart_getc+0x24>)
 8002310:	0018      	movs	r0, r3
 8002312:	f7ff ffd7 	bl	80022c4 <LL_USART_ReceiveData8>
 8002316:	0003      	movs	r3, r0
 8002318:	0018      	movs	r0, r3
 800231a:	46bd      	mov	sp, r7
 800231c:	bd80      	pop	{r7, pc}
 800231e:	46c0      	nop			; (mov r8, r8)
 8002320:	40013800 	.word	0x40013800

08002324 <usart_putc>:
 8002324:	b580      	push	{r7, lr}
 8002326:	b082      	sub	sp, #8
 8002328:	af00      	add	r7, sp, #0
 800232a:	0002      	movs	r2, r0
 800232c:	1dfb      	adds	r3, r7, #7
 800232e:	701a      	strb	r2, [r3, #0]
 8002330:	46c0      	nop			; (mov r8, r8)
 8002332:	4b0c      	ldr	r3, [pc, #48]	; (8002364 <usart_putc+0x40>)
 8002334:	0018      	movs	r0, r3
 8002336:	f7ff ffb5 	bl	80022a4 <LL_USART_IsActiveFlag_TXE>
 800233a:	1e03      	subs	r3, r0, #0
 800233c:	d0f9      	beq.n	8002332 <usart_putc+0xe>
 800233e:	1dfb      	adds	r3, r7, #7
 8002340:	781b      	ldrb	r3, [r3, #0]
 8002342:	4a08      	ldr	r2, [pc, #32]	; (8002364 <usart_putc+0x40>)
 8002344:	0019      	movs	r1, r3
 8002346:	0010      	movs	r0, r2
 8002348:	f7ff ffc8 	bl	80022dc <LL_USART_TransmitData8>
 800234c:	46c0      	nop			; (mov r8, r8)
 800234e:	4b05      	ldr	r3, [pc, #20]	; (8002364 <usart_putc+0x40>)
 8002350:	0018      	movs	r0, r3
 8002352:	f7ff ff97 	bl	8002284 <LL_USART_IsActiveFlag_TC>
 8002356:	1e03      	subs	r3, r0, #0
 8002358:	d0f9      	beq.n	800234e <usart_putc+0x2a>
 800235a:	46c0      	nop			; (mov r8, r8)
 800235c:	46bd      	mov	sp, r7
 800235e:	b002      	add	sp, #8
 8002360:	bd80      	pop	{r7, pc}
 8002362:	46c0      	nop			; (mov r8, r8)
 8002364:	40013800 	.word	0x40013800

08002368 <printf_config>:
 8002368:	b580      	push	{r7, lr}
 800236a:	af00      	add	r7, sp, #0
 800236c:	4b04      	ldr	r3, [pc, #16]	; (8002380 <printf_config+0x18>)
 800236e:	4a05      	ldr	r2, [pc, #20]	; (8002384 <printf_config+0x1c>)
 8002370:	601a      	str	r2, [r3, #0]
 8002372:	4b05      	ldr	r3, [pc, #20]	; (8002388 <printf_config+0x20>)
 8002374:	4a05      	ldr	r2, [pc, #20]	; (800238c <printf_config+0x24>)
 8002376:	601a      	str	r2, [r3, #0]
 8002378:	46c0      	nop			; (mov r8, r8)
 800237a:	46bd      	mov	sp, r7
 800237c:	bd80      	pop	{r7, pc}
 800237e:	46c0      	nop			; (mov r8, r8)
 8002380:	20000034 	.word	0x20000034
 8002384:	08002325 	.word	0x08002325
 8002388:	20000030 	.word	0x20000030
 800238c:	080022fd 	.word	0x080022fd

08002390 <LL_I2C_IsActiveFlag_TXIS>:
 8002390:	b580      	push	{r7, lr}
 8002392:	b082      	sub	sp, #8
 8002394:	af00      	add	r7, sp, #0
 8002396:	6078      	str	r0, [r7, #4]
 8002398:	687b      	ldr	r3, [r7, #4]
 800239a:	699b      	ldr	r3, [r3, #24]
 800239c:	2202      	movs	r2, #2
 800239e:	4013      	ands	r3, r2
 80023a0:	3b02      	subs	r3, #2
 80023a2:	425a      	negs	r2, r3
 80023a4:	4153      	adcs	r3, r2
 80023a6:	b2db      	uxtb	r3, r3
 80023a8:	0018      	movs	r0, r3
 80023aa:	46bd      	mov	sp, r7
 80023ac:	b002      	add	sp, #8
 80023ae:	bd80      	pop	{r7, pc}

080023b0 <LL_I2C_IsActiveFlag_RXNE>:
 80023b0:	b580      	push	{r7, lr}
 80023b2:	b082      	sub	sp, #8
 80023b4:	af00      	add	r7, sp, #0
 80023b6:	6078      	str	r0, [r7, #4]
 80023b8:	687b      	ldr	r3, [r7, #4]
 80023ba:	699b      	ldr	r3, [r3, #24]
 80023bc:	2204      	movs	r2, #4
 80023be:	4013      	ands	r3, r2
 80023c0:	3b04      	subs	r3, #4
 80023c2:	425a      	negs	r2, r3
 80023c4:	4153      	adcs	r3, r2
 80023c6:	b2db      	uxtb	r3, r3
 80023c8:	0018      	movs	r0, r3
 80023ca:	46bd      	mov	sp, r7
 80023cc:	b002      	add	sp, #8
 80023ce:	bd80      	pop	{r7, pc}

080023d0 <LL_I2C_IsActiveFlag_TC>:
 80023d0:	b580      	push	{r7, lr}
 80023d2:	b082      	sub	sp, #8
 80023d4:	af00      	add	r7, sp, #0
 80023d6:	6078      	str	r0, [r7, #4]
 80023d8:	687b      	ldr	r3, [r7, #4]
 80023da:	699b      	ldr	r3, [r3, #24]
 80023dc:	2240      	movs	r2, #64	; 0x40
 80023de:	4013      	ands	r3, r2
 80023e0:	3b40      	subs	r3, #64	; 0x40
 80023e2:	425a      	negs	r2, r3
 80023e4:	4153      	adcs	r3, r2
 80023e6:	b2db      	uxtb	r3, r3
 80023e8:	0018      	movs	r0, r3
 80023ea:	46bd      	mov	sp, r7
 80023ec:	b002      	add	sp, #8
 80023ee:	bd80      	pop	{r7, pc}

080023f0 <LL_I2C_HandleTransfer>:
 80023f0:	b580      	push	{r7, lr}
 80023f2:	b084      	sub	sp, #16
 80023f4:	af00      	add	r7, sp, #0
 80023f6:	60f8      	str	r0, [r7, #12]
 80023f8:	60b9      	str	r1, [r7, #8]
 80023fa:	607a      	str	r2, [r7, #4]
 80023fc:	603b      	str	r3, [r7, #0]
 80023fe:	68fb      	ldr	r3, [r7, #12]
 8002400:	685b      	ldr	r3, [r3, #4]
 8002402:	4a09      	ldr	r2, [pc, #36]	; (8002428 <LL_I2C_HandleTransfer+0x38>)
 8002404:	401a      	ands	r2, r3
 8002406:	68b9      	ldr	r1, [r7, #8]
 8002408:	687b      	ldr	r3, [r7, #4]
 800240a:	4319      	orrs	r1, r3
 800240c:	683b      	ldr	r3, [r7, #0]
 800240e:	041b      	lsls	r3, r3, #16
 8002410:	4319      	orrs	r1, r3
 8002412:	69bb      	ldr	r3, [r7, #24]
 8002414:	4319      	orrs	r1, r3
 8002416:	69fb      	ldr	r3, [r7, #28]
 8002418:	430b      	orrs	r3, r1
 800241a:	431a      	orrs	r2, r3
 800241c:	68fb      	ldr	r3, [r7, #12]
 800241e:	605a      	str	r2, [r3, #4]
 8002420:	46c0      	nop			; (mov r8, r8)
 8002422:	46bd      	mov	sp, r7
 8002424:	b004      	add	sp, #16
 8002426:	bd80      	pop	{r7, pc}
 8002428:	fc008000 	.word	0xfc008000

0800242c <LL_I2C_ReceiveData8>:
 800242c:	b580      	push	{r7, lr}
 800242e:	b082      	sub	sp, #8
 8002430:	af00      	add	r7, sp, #0
 8002432:	6078      	str	r0, [r7, #4]
 8002434:	687b      	ldr	r3, [r7, #4]
 8002436:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8002438:	b2db      	uxtb	r3, r3
 800243a:	0018      	movs	r0, r3
 800243c:	46bd      	mov	sp, r7
 800243e:	b002      	add	sp, #8
 8002440:	bd80      	pop	{r7, pc}

08002442 <LL_I2C_TransmitData8>:
 8002442:	b580      	push	{r7, lr}
 8002444:	b082      	sub	sp, #8
 8002446:	af00      	add	r7, sp, #0
 8002448:	6078      	str	r0, [r7, #4]
 800244a:	000a      	movs	r2, r1
 800244c:	1cfb      	adds	r3, r7, #3
 800244e:	701a      	strb	r2, [r3, #0]
 8002450:	1cfb      	adds	r3, r7, #3
 8002452:	781a      	ldrb	r2, [r3, #0]
 8002454:	687b      	ldr	r3, [r7, #4]
 8002456:	629a      	str	r2, [r3, #40]	; 0x28
 8002458:	46c0      	nop			; (mov r8, r8)
 800245a:	46bd      	mov	sp, r7
 800245c:	b002      	add	sp, #8
 800245e:	bd80      	pop	{r7, pc}

08002460 <mpu9255_WriteMulti>:
 8002460:	b590      	push	{r4, r7, lr}
 8002462:	b087      	sub	sp, #28
 8002464:	af02      	add	r7, sp, #8
 8002466:	0004      	movs	r4, r0
 8002468:	0008      	movs	r0, r1
 800246a:	603a      	str	r2, [r7, #0]
 800246c:	0019      	movs	r1, r3
 800246e:	1dfb      	adds	r3, r7, #7
 8002470:	1c22      	adds	r2, r4, #0
 8002472:	701a      	strb	r2, [r3, #0]
 8002474:	1dbb      	adds	r3, r7, #6
 8002476:	1c02      	adds	r2, r0, #0
 8002478:	701a      	strb	r2, [r3, #0]
 800247a:	1d7b      	adds	r3, r7, #5
 800247c:	1c0a      	adds	r2, r1, #0
 800247e:	701a      	strb	r2, [r3, #0]
 8002480:	23fa      	movs	r3, #250	; 0xfa
 8002482:	009b      	lsls	r3, r3, #2
 8002484:	60fb      	str	r3, [r7, #12]
 8002486:	1dfb      	adds	r3, r7, #7
 8002488:	7819      	ldrb	r1, [r3, #0]
 800248a:	1d7b      	adds	r3, r7, #5
 800248c:	781b      	ldrb	r3, [r3, #0]
 800248e:	3301      	adds	r3, #1
 8002490:	001a      	movs	r2, r3
 8002492:	4833      	ldr	r0, [pc, #204]	; (8002560 <mpu9255_WriteMulti+0x100>)
 8002494:	2380      	movs	r3, #128	; 0x80
 8002496:	019b      	lsls	r3, r3, #6
 8002498:	9301      	str	r3, [sp, #4]
 800249a:	2380      	movs	r3, #128	; 0x80
 800249c:	049b      	lsls	r3, r3, #18
 800249e:	9300      	str	r3, [sp, #0]
 80024a0:	0013      	movs	r3, r2
 80024a2:	2200      	movs	r2, #0
 80024a4:	f7ff ffa4 	bl	80023f0 <LL_I2C_HandleTransfer>
 80024a8:	46c0      	nop			; (mov r8, r8)
 80024aa:	4b2d      	ldr	r3, [pc, #180]	; (8002560 <mpu9255_WriteMulti+0x100>)
 80024ac:	0018      	movs	r0, r3
 80024ae:	f7ff ff6f 	bl	8002390 <LL_I2C_IsActiveFlag_TXIS>
 80024b2:	1e03      	subs	r3, r0, #0
 80024b4:	d104      	bne.n	80024c0 <mpu9255_WriteMulti+0x60>
 80024b6:	68fb      	ldr	r3, [r7, #12]
 80024b8:	1e5a      	subs	r2, r3, #1
 80024ba:	60fa      	str	r2, [r7, #12]
 80024bc:	2b00      	cmp	r3, #0
 80024be:	dcf4      	bgt.n	80024aa <mpu9255_WriteMulti+0x4a>
 80024c0:	68fb      	ldr	r3, [r7, #12]
 80024c2:	2b00      	cmp	r3, #0
 80024c4:	dc01      	bgt.n	80024ca <mpu9255_WriteMulti+0x6a>
 80024c6:	2303      	movs	r3, #3
 80024c8:	e045      	b.n	8002556 <mpu9255_WriteMulti+0xf6>
 80024ca:	1dbb      	adds	r3, r7, #6
 80024cc:	781b      	ldrb	r3, [r3, #0]
 80024ce:	4a24      	ldr	r2, [pc, #144]	; (8002560 <mpu9255_WriteMulti+0x100>)
 80024d0:	0019      	movs	r1, r3
 80024d2:	0010      	movs	r0, r2
 80024d4:	f7ff ffb5 	bl	8002442 <LL_I2C_TransmitData8>
 80024d8:	230b      	movs	r3, #11
 80024da:	18fb      	adds	r3, r7, r3
 80024dc:	2200      	movs	r2, #0
 80024de:	701a      	strb	r2, [r3, #0]
 80024e0:	e020      	b.n	8002524 <mpu9255_WriteMulti+0xc4>
 80024e2:	46c0      	nop			; (mov r8, r8)
 80024e4:	4b1e      	ldr	r3, [pc, #120]	; (8002560 <mpu9255_WriteMulti+0x100>)
 80024e6:	0018      	movs	r0, r3
 80024e8:	f7ff ff52 	bl	8002390 <LL_I2C_IsActiveFlag_TXIS>
 80024ec:	1e03      	subs	r3, r0, #0
 80024ee:	d104      	bne.n	80024fa <mpu9255_WriteMulti+0x9a>
 80024f0:	68fb      	ldr	r3, [r7, #12]
 80024f2:	1e5a      	subs	r2, r3, #1
 80024f4:	60fa      	str	r2, [r7, #12]
 80024f6:	2b00      	cmp	r3, #0
 80024f8:	dcf4      	bgt.n	80024e4 <mpu9255_WriteMulti+0x84>
 80024fa:	68fb      	ldr	r3, [r7, #12]
 80024fc:	2b00      	cmp	r3, #0
 80024fe:	dc01      	bgt.n	8002504 <mpu9255_WriteMulti+0xa4>
 8002500:	2303      	movs	r3, #3
 8002502:	e028      	b.n	8002556 <mpu9255_WriteMulti+0xf6>
 8002504:	240b      	movs	r4, #11
 8002506:	193b      	adds	r3, r7, r4
 8002508:	781b      	ldrb	r3, [r3, #0]
 800250a:	683a      	ldr	r2, [r7, #0]
 800250c:	18d3      	adds	r3, r2, r3
 800250e:	781b      	ldrb	r3, [r3, #0]
 8002510:	4a13      	ldr	r2, [pc, #76]	; (8002560 <mpu9255_WriteMulti+0x100>)
 8002512:	0019      	movs	r1, r3
 8002514:	0010      	movs	r0, r2
 8002516:	f7ff ff94 	bl	8002442 <LL_I2C_TransmitData8>
 800251a:	193b      	adds	r3, r7, r4
 800251c:	781a      	ldrb	r2, [r3, #0]
 800251e:	193b      	adds	r3, r7, r4
 8002520:	3201      	adds	r2, #1
 8002522:	701a      	strb	r2, [r3, #0]
 8002524:	230b      	movs	r3, #11
 8002526:	18fa      	adds	r2, r7, r3
 8002528:	1d7b      	adds	r3, r7, #5
 800252a:	7812      	ldrb	r2, [r2, #0]
 800252c:	781b      	ldrb	r3, [r3, #0]
 800252e:	429a      	cmp	r2, r3
 8002530:	d3d7      	bcc.n	80024e2 <mpu9255_WriteMulti+0x82>
 8002532:	46c0      	nop			; (mov r8, r8)
 8002534:	4b0a      	ldr	r3, [pc, #40]	; (8002560 <mpu9255_WriteMulti+0x100>)
 8002536:	0018      	movs	r0, r3
 8002538:	f7ff ff4a 	bl	80023d0 <LL_I2C_IsActiveFlag_TC>
 800253c:	1e03      	subs	r3, r0, #0
 800253e:	d004      	beq.n	800254a <mpu9255_WriteMulti+0xea>
 8002540:	68fb      	ldr	r3, [r7, #12]
 8002542:	1e5a      	subs	r2, r3, #1
 8002544:	60fa      	str	r2, [r7, #12]
 8002546:	2b00      	cmp	r3, #0
 8002548:	dcf4      	bgt.n	8002534 <mpu9255_WriteMulti+0xd4>
 800254a:	68fb      	ldr	r3, [r7, #12]
 800254c:	2b00      	cmp	r3, #0
 800254e:	dc01      	bgt.n	8002554 <mpu9255_WriteMulti+0xf4>
 8002550:	2303      	movs	r3, #3
 8002552:	e000      	b.n	8002556 <mpu9255_WriteMulti+0xf6>
 8002554:	2300      	movs	r3, #0
 8002556:	0018      	movs	r0, r3
 8002558:	46bd      	mov	sp, r7
 800255a:	b005      	add	sp, #20
 800255c:	bd90      	pop	{r4, r7, pc}
 800255e:	46c0      	nop			; (mov r8, r8)
 8002560:	40005400 	.word	0x40005400

08002564 <mpu9255_ReadMulti>:
 8002564:	b5b0      	push	{r4, r5, r7, lr}
 8002566:	b086      	sub	sp, #24
 8002568:	af02      	add	r7, sp, #8
 800256a:	0004      	movs	r4, r0
 800256c:	0008      	movs	r0, r1
 800256e:	603a      	str	r2, [r7, #0]
 8002570:	0019      	movs	r1, r3
 8002572:	1dfb      	adds	r3, r7, #7
 8002574:	1c22      	adds	r2, r4, #0
 8002576:	701a      	strb	r2, [r3, #0]
 8002578:	1dbb      	adds	r3, r7, #6
 800257a:	1c02      	adds	r2, r0, #0
 800257c:	701a      	strb	r2, [r3, #0]
 800257e:	1d7b      	adds	r3, r7, #5
 8002580:	1c0a      	adds	r2, r1, #0
 8002582:	701a      	strb	r2, [r3, #0]
 8002584:	23fa      	movs	r3, #250	; 0xfa
 8002586:	009b      	lsls	r3, r3, #2
 8002588:	60fb      	str	r3, [r7, #12]
 800258a:	1dbb      	adds	r3, r7, #6
 800258c:	7819      	ldrb	r1, [r3, #0]
 800258e:	1dfb      	adds	r3, r7, #7
 8002590:	7818      	ldrb	r0, [r3, #0]
 8002592:	2300      	movs	r3, #0
 8002594:	2200      	movs	r2, #0
 8002596:	f7ff ff63 	bl	8002460 <mpu9255_WriteMulti>
 800259a:	0003      	movs	r3, r0
 800259c:	2b03      	cmp	r3, #3
 800259e:	d101      	bne.n	80025a4 <mpu9255_ReadMulti+0x40>
 80025a0:	2303      	movs	r3, #3
 80025a2:	e04d      	b.n	8002640 <mpu9255_ReadMulti+0xdc>
 80025a4:	1dfb      	adds	r3, r7, #7
 80025a6:	7819      	ldrb	r1, [r3, #0]
 80025a8:	1d7b      	adds	r3, r7, #5
 80025aa:	781a      	ldrb	r2, [r3, #0]
 80025ac:	4826      	ldr	r0, [pc, #152]	; (8002648 <mpu9255_ReadMulti+0xe4>)
 80025ae:	2390      	movs	r3, #144	; 0x90
 80025b0:	019b      	lsls	r3, r3, #6
 80025b2:	9301      	str	r3, [sp, #4]
 80025b4:	2380      	movs	r3, #128	; 0x80
 80025b6:	049b      	lsls	r3, r3, #18
 80025b8:	9300      	str	r3, [sp, #0]
 80025ba:	0013      	movs	r3, r2
 80025bc:	2200      	movs	r2, #0
 80025be:	f7ff ff17 	bl	80023f0 <LL_I2C_HandleTransfer>
 80025c2:	230b      	movs	r3, #11
 80025c4:	18fb      	adds	r3, r7, r3
 80025c6:	2200      	movs	r2, #0
 80025c8:	701a      	strb	r2, [r3, #0]
 80025ca:	e020      	b.n	800260e <mpu9255_ReadMulti+0xaa>
 80025cc:	46c0      	nop			; (mov r8, r8)
 80025ce:	4b1e      	ldr	r3, [pc, #120]	; (8002648 <mpu9255_ReadMulti+0xe4>)
 80025d0:	0018      	movs	r0, r3
 80025d2:	f7ff feed 	bl	80023b0 <LL_I2C_IsActiveFlag_RXNE>
 80025d6:	1e03      	subs	r3, r0, #0
 80025d8:	d104      	bne.n	80025e4 <mpu9255_ReadMulti+0x80>
 80025da:	68fb      	ldr	r3, [r7, #12]
 80025dc:	1e5a      	subs	r2, r3, #1
 80025de:	60fa      	str	r2, [r7, #12]
 80025e0:	2b00      	cmp	r3, #0
 80025e2:	dcf4      	bgt.n	80025ce <mpu9255_ReadMulti+0x6a>
 80025e4:	68fb      	ldr	r3, [r7, #12]
 80025e6:	2b00      	cmp	r3, #0
 80025e8:	dc01      	bgt.n	80025ee <mpu9255_ReadMulti+0x8a>
 80025ea:	2303      	movs	r3, #3
 80025ec:	e028      	b.n	8002640 <mpu9255_ReadMulti+0xdc>
 80025ee:	250b      	movs	r5, #11
 80025f0:	197b      	adds	r3, r7, r5
 80025f2:	781b      	ldrb	r3, [r3, #0]
 80025f4:	683a      	ldr	r2, [r7, #0]
 80025f6:	18d4      	adds	r4, r2, r3
 80025f8:	4b13      	ldr	r3, [pc, #76]	; (8002648 <mpu9255_ReadMulti+0xe4>)
 80025fa:	0018      	movs	r0, r3
 80025fc:	f7ff ff16 	bl	800242c <LL_I2C_ReceiveData8>
 8002600:	0003      	movs	r3, r0
 8002602:	7023      	strb	r3, [r4, #0]
 8002604:	197b      	adds	r3, r7, r5
 8002606:	781a      	ldrb	r2, [r3, #0]
 8002608:	197b      	adds	r3, r7, r5
 800260a:	3201      	adds	r2, #1
 800260c:	701a      	strb	r2, [r3, #0]
 800260e:	230b      	movs	r3, #11
 8002610:	18fa      	adds	r2, r7, r3
 8002612:	1d7b      	adds	r3, r7, #5
 8002614:	7812      	ldrb	r2, [r2, #0]
 8002616:	781b      	ldrb	r3, [r3, #0]
 8002618:	429a      	cmp	r2, r3
 800261a:	d3d7      	bcc.n	80025cc <mpu9255_ReadMulti+0x68>
 800261c:	46c0      	nop			; (mov r8, r8)
 800261e:	4b0a      	ldr	r3, [pc, #40]	; (8002648 <mpu9255_ReadMulti+0xe4>)
 8002620:	0018      	movs	r0, r3
 8002622:	f7ff fed5 	bl	80023d0 <LL_I2C_IsActiveFlag_TC>
 8002626:	1e03      	subs	r3, r0, #0
 8002628:	d004      	beq.n	8002634 <mpu9255_ReadMulti+0xd0>
 800262a:	68fb      	ldr	r3, [r7, #12]
 800262c:	1e5a      	subs	r2, r3, #1
 800262e:	60fa      	str	r2, [r7, #12]
 8002630:	2b00      	cmp	r3, #0
 8002632:	dcf4      	bgt.n	800261e <mpu9255_ReadMulti+0xba>
 8002634:	68fb      	ldr	r3, [r7, #12]
 8002636:	2b00      	cmp	r3, #0
 8002638:	dc01      	bgt.n	800263e <mpu9255_ReadMulti+0xda>
 800263a:	2303      	movs	r3, #3
 800263c:	e000      	b.n	8002640 <mpu9255_ReadMulti+0xdc>
 800263e:	2300      	movs	r3, #0
 8002640:	0018      	movs	r0, r3
 8002642:	46bd      	mov	sp, r7
 8002644:	b004      	add	sp, #16
 8002646:	bdb0      	pop	{r4, r5, r7, pc}
 8002648:	40005400 	.word	0x40005400

0800264c <mpu9255_WriteByte>:
 800264c:	b590      	push	{r4, r7, lr}
 800264e:	b083      	sub	sp, #12
 8002650:	af00      	add	r7, sp, #0
 8002652:	0004      	movs	r4, r0
 8002654:	0008      	movs	r0, r1
 8002656:	0011      	movs	r1, r2
 8002658:	1dfb      	adds	r3, r7, #7
 800265a:	1c22      	adds	r2, r4, #0
 800265c:	701a      	strb	r2, [r3, #0]
 800265e:	1dbb      	adds	r3, r7, #6
 8002660:	1c02      	adds	r2, r0, #0
 8002662:	701a      	strb	r2, [r3, #0]
 8002664:	1d7b      	adds	r3, r7, #5
 8002666:	1c0a      	adds	r2, r1, #0
 8002668:	701a      	strb	r2, [r3, #0]
 800266a:	1d7a      	adds	r2, r7, #5
 800266c:	1dbb      	adds	r3, r7, #6
 800266e:	7819      	ldrb	r1, [r3, #0]
 8002670:	1dfb      	adds	r3, r7, #7
 8002672:	7818      	ldrb	r0, [r3, #0]
 8002674:	2301      	movs	r3, #1
 8002676:	f7ff fef3 	bl	8002460 <mpu9255_WriteMulti>
 800267a:	0003      	movs	r3, r0
 800267c:	0018      	movs	r0, r3
 800267e:	46bd      	mov	sp, r7
 8002680:	b003      	add	sp, #12
 8002682:	bd90      	pop	{r4, r7, pc}

08002684 <mpu9255_init>:
 8002684:	b580      	push	{r7, lr}
 8002686:	b084      	sub	sp, #16
 8002688:	af00      	add	r7, sp, #0
 800268a:	2300      	movs	r3, #0
 800268c:	60fb      	str	r3, [r7, #12]
 800268e:	2280      	movs	r2, #128	; 0x80
 8002690:	216b      	movs	r1, #107	; 0x6b
 8002692:	20d0      	movs	r0, #208	; 0xd0
 8002694:	f7ff ffda 	bl	800264c <mpu9255_WriteByte>
 8002698:	0003      	movs	r3, r0
 800269a:	60fb      	str	r3, [r7, #12]
 800269c:	68fb      	ldr	r3, [r7, #12]
 800269e:	2b00      	cmp	r3, #0
 80026a0:	d000      	beq.n	80026a4 <mpu9255_init+0x20>
 80026a2:	e090      	b.n	80027c6 <mpu9255_init+0x142>
 80026a4:	2300      	movs	r3, #0
 80026a6:	60bb      	str	r3, [r7, #8]
 80026a8:	2300      	movs	r3, #0
 80026aa:	607b      	str	r3, [r7, #4]
 80026ac:	e005      	b.n	80026ba <mpu9255_init+0x36>
 80026ae:	68bb      	ldr	r3, [r7, #8]
 80026b0:	3301      	adds	r3, #1
 80026b2:	60bb      	str	r3, [r7, #8]
 80026b4:	687b      	ldr	r3, [r7, #4]
 80026b6:	3301      	adds	r3, #1
 80026b8:	607b      	str	r3, [r7, #4]
 80026ba:	687b      	ldr	r3, [r7, #4]
 80026bc:	4a51      	ldr	r2, [pc, #324]	; (8002804 <mpu9255_init+0x180>)
 80026be:	4293      	cmp	r3, r2
 80026c0:	ddf5      	ble.n	80026ae <mpu9255_init+0x2a>
 80026c2:	2201      	movs	r2, #1
 80026c4:	2119      	movs	r1, #25
 80026c6:	20d0      	movs	r0, #208	; 0xd0
 80026c8:	f7ff ffc0 	bl	800264c <mpu9255_WriteByte>
 80026cc:	0003      	movs	r3, r0
 80026ce:	60fb      	str	r3, [r7, #12]
 80026d0:	68fb      	ldr	r3, [r7, #12]
 80026d2:	2b00      	cmp	r3, #0
 80026d4:	d000      	beq.n	80026d8 <mpu9255_init+0x54>
 80026d6:	e078      	b.n	80027ca <mpu9255_init+0x146>
 80026d8:	2205      	movs	r2, #5
 80026da:	211a      	movs	r1, #26
 80026dc:	20d0      	movs	r0, #208	; 0xd0
 80026de:	f7ff ffb5 	bl	800264c <mpu9255_WriteByte>
 80026e2:	0003      	movs	r3, r0
 80026e4:	60fb      	str	r3, [r7, #12]
 80026e6:	68fb      	ldr	r3, [r7, #12]
 80026e8:	2b00      	cmp	r3, #0
 80026ea:	d000      	beq.n	80026ee <mpu9255_init+0x6a>
 80026ec:	e06f      	b.n	80027ce <mpu9255_init+0x14a>
 80026ee:	2208      	movs	r2, #8
 80026f0:	211c      	movs	r1, #28
 80026f2:	20d0      	movs	r0, #208	; 0xd0
 80026f4:	f7ff ffaa 	bl	800264c <mpu9255_WriteByte>
 80026f8:	0003      	movs	r3, r0
 80026fa:	60fb      	str	r3, [r7, #12]
 80026fc:	68fb      	ldr	r3, [r7, #12]
 80026fe:	2b00      	cmp	r3, #0
 8002700:	d167      	bne.n	80027d2 <mpu9255_init+0x14e>
 8002702:	2204      	movs	r2, #4
 8002704:	211d      	movs	r1, #29
 8002706:	20d0      	movs	r0, #208	; 0xd0
 8002708:	f7ff ffa0 	bl	800264c <mpu9255_WriteByte>
 800270c:	0003      	movs	r3, r0
 800270e:	60fb      	str	r3, [r7, #12]
 8002710:	68fb      	ldr	r3, [r7, #12]
 8002712:	2b00      	cmp	r3, #0
 8002714:	d15f      	bne.n	80027d6 <mpu9255_init+0x152>
 8002716:	2200      	movs	r2, #0
 8002718:	2123      	movs	r1, #35	; 0x23
 800271a:	20d0      	movs	r0, #208	; 0xd0
 800271c:	f7ff ff96 	bl	800264c <mpu9255_WriteByte>
 8002720:	0003      	movs	r3, r0
 8002722:	60fb      	str	r3, [r7, #12]
 8002724:	68fb      	ldr	r3, [r7, #12]
 8002726:	2b00      	cmp	r3, #0
 8002728:	d157      	bne.n	80027da <mpu9255_init+0x156>
 800272a:	2200      	movs	r2, #0
 800272c:	2138      	movs	r1, #56	; 0x38
 800272e:	20d0      	movs	r0, #208	; 0xd0
 8002730:	f7ff ff8c 	bl	800264c <mpu9255_WriteByte>
 8002734:	0003      	movs	r3, r0
 8002736:	60fb      	str	r3, [r7, #12]
 8002738:	68fb      	ldr	r3, [r7, #12]
 800273a:	2b00      	cmp	r3, #0
 800273c:	d14f      	bne.n	80027de <mpu9255_init+0x15a>
 800273e:	2200      	movs	r2, #0
 8002740:	216a      	movs	r1, #106	; 0x6a
 8002742:	20d0      	movs	r0, #208	; 0xd0
 8002744:	f7ff ff82 	bl	800264c <mpu9255_WriteByte>
 8002748:	0003      	movs	r3, r0
 800274a:	60fb      	str	r3, [r7, #12]
 800274c:	68fb      	ldr	r3, [r7, #12]
 800274e:	2b00      	cmp	r3, #0
 8002750:	d147      	bne.n	80027e2 <mpu9255_init+0x15e>
 8002752:	2201      	movs	r2, #1
 8002754:	216b      	movs	r1, #107	; 0x6b
 8002756:	20d0      	movs	r0, #208	; 0xd0
 8002758:	f7ff ff78 	bl	800264c <mpu9255_WriteByte>
 800275c:	0003      	movs	r3, r0
 800275e:	60fb      	str	r3, [r7, #12]
 8002760:	68fb      	ldr	r3, [r7, #12]
 8002762:	2b00      	cmp	r3, #0
 8002764:	d13f      	bne.n	80027e6 <mpu9255_init+0x162>
 8002766:	2200      	movs	r2, #0
 8002768:	216c      	movs	r1, #108	; 0x6c
 800276a:	20d0      	movs	r0, #208	; 0xd0
 800276c:	f7ff ff6e 	bl	800264c <mpu9255_WriteByte>
 8002770:	0003      	movs	r3, r0
 8002772:	60fb      	str	r3, [r7, #12]
 8002774:	68fb      	ldr	r3, [r7, #12]
 8002776:	2b00      	cmp	r3, #0
 8002778:	d137      	bne.n	80027ea <mpu9255_init+0x166>
 800277a:	2200      	movs	r2, #0
 800277c:	211b      	movs	r1, #27
 800277e:	20d0      	movs	r0, #208	; 0xd0
 8002780:	f7ff ff64 	bl	800264c <mpu9255_WriteByte>
 8002784:	0003      	movs	r3, r0
 8002786:	60fb      	str	r3, [r7, #12]
 8002788:	68fb      	ldr	r3, [r7, #12]
 800278a:	2b00      	cmp	r3, #0
 800278c:	d12f      	bne.n	80027ee <mpu9255_init+0x16a>
 800278e:	2202      	movs	r2, #2
 8002790:	2137      	movs	r1, #55	; 0x37
 8002792:	20d0      	movs	r0, #208	; 0xd0
 8002794:	f7ff ff5a 	bl	800264c <mpu9255_WriteByte>
 8002798:	0003      	movs	r3, r0
 800279a:	60fb      	str	r3, [r7, #12]
 800279c:	68fb      	ldr	r3, [r7, #12]
 800279e:	2b00      	cmp	r3, #0
 80027a0:	d127      	bne.n	80027f2 <mpu9255_init+0x16e>
 80027a2:	2216      	movs	r2, #22
 80027a4:	210a      	movs	r1, #10
 80027a6:	2018      	movs	r0, #24
 80027a8:	f7ff ff50 	bl	800264c <mpu9255_WriteByte>
 80027ac:	0003      	movs	r3, r0
 80027ae:	60fb      	str	r3, [r7, #12]
 80027b0:	68fb      	ldr	r3, [r7, #12]
 80027b2:	2b00      	cmp	r3, #0
 80027b4:	d11f      	bne.n	80027f6 <mpu9255_init+0x172>
 80027b6:	2200      	movs	r2, #0
 80027b8:	2137      	movs	r1, #55	; 0x37
 80027ba:	20d0      	movs	r0, #208	; 0xd0
 80027bc:	f7ff ff46 	bl	800264c <mpu9255_WriteByte>
 80027c0:	0003      	movs	r3, r0
 80027c2:	60fb      	str	r3, [r7, #12]
 80027c4:	e018      	b.n	80027f8 <mpu9255_init+0x174>
 80027c6:	46c0      	nop			; (mov r8, r8)
 80027c8:	e016      	b.n	80027f8 <mpu9255_init+0x174>
 80027ca:	46c0      	nop			; (mov r8, r8)
 80027cc:	e014      	b.n	80027f8 <mpu9255_init+0x174>
 80027ce:	46c0      	nop			; (mov r8, r8)
 80027d0:	e012      	b.n	80027f8 <mpu9255_init+0x174>
 80027d2:	46c0      	nop			; (mov r8, r8)
 80027d4:	e010      	b.n	80027f8 <mpu9255_init+0x174>
 80027d6:	46c0      	nop			; (mov r8, r8)
 80027d8:	e00e      	b.n	80027f8 <mpu9255_init+0x174>
 80027da:	46c0      	nop			; (mov r8, r8)
 80027dc:	e00c      	b.n	80027f8 <mpu9255_init+0x174>
 80027de:	46c0      	nop			; (mov r8, r8)
 80027e0:	e00a      	b.n	80027f8 <mpu9255_init+0x174>
 80027e2:	46c0      	nop			; (mov r8, r8)
 80027e4:	e008      	b.n	80027f8 <mpu9255_init+0x174>
 80027e6:	46c0      	nop			; (mov r8, r8)
 80027e8:	e006      	b.n	80027f8 <mpu9255_init+0x174>
 80027ea:	46c0      	nop			; (mov r8, r8)
 80027ec:	e004      	b.n	80027f8 <mpu9255_init+0x174>
 80027ee:	46c0      	nop			; (mov r8, r8)
 80027f0:	e002      	b.n	80027f8 <mpu9255_init+0x174>
 80027f2:	46c0      	nop			; (mov r8, r8)
 80027f4:	e000      	b.n	80027f8 <mpu9255_init+0x174>
 80027f6:	46c0      	nop			; (mov r8, r8)
 80027f8:	68fb      	ldr	r3, [r7, #12]
 80027fa:	0018      	movs	r0, r3
 80027fc:	46bd      	mov	sp, r7
 80027fe:	b004      	add	sp, #16
 8002800:	bd80      	pop	{r7, pc}
 8002802:	46c0      	nop			; (mov r8, r8)
 8002804:	000f423f 	.word	0x000f423f

08002808 <_swapBytesI16>:
 8002808:	b580      	push	{r7, lr}
 800280a:	b084      	sub	sp, #16
 800280c:	af00      	add	r7, sp, #0
 800280e:	0002      	movs	r2, r0
 8002810:	1dbb      	adds	r3, r7, #6
 8002812:	801a      	strh	r2, [r3, #0]
 8002814:	1dbb      	adds	r3, r7, #6
 8002816:	60fb      	str	r3, [r7, #12]
 8002818:	210b      	movs	r1, #11
 800281a:	187b      	adds	r3, r7, r1
 800281c:	68fa      	ldr	r2, [r7, #12]
 800281e:	7812      	ldrb	r2, [r2, #0]
 8002820:	701a      	strb	r2, [r3, #0]
 8002822:	68fb      	ldr	r3, [r7, #12]
 8002824:	785a      	ldrb	r2, [r3, #1]
 8002826:	68fb      	ldr	r3, [r7, #12]
 8002828:	701a      	strb	r2, [r3, #0]
 800282a:	68fb      	ldr	r3, [r7, #12]
 800282c:	3301      	adds	r3, #1
 800282e:	187a      	adds	r2, r7, r1
 8002830:	7812      	ldrb	r2, [r2, #0]
 8002832:	701a      	strb	r2, [r3, #0]
 8002834:	1dbb      	adds	r3, r7, #6
 8002836:	2200      	movs	r2, #0
 8002838:	5e9b      	ldrsh	r3, [r3, r2]
 800283a:	0018      	movs	r0, r3
 800283c:	46bd      	mov	sp, r7
 800283e:	b004      	add	sp, #16
 8002840:	bd80      	pop	{r7, pc}

08002842 <mpu9255_readIMU>:
 8002842:	b590      	push	{r4, r7, lr}
 8002844:	b087      	sub	sp, #28
 8002846:	af00      	add	r7, sp, #0
 8002848:	6078      	str	r0, [r7, #4]
 800284a:	6039      	str	r1, [r7, #0]
 800284c:	2300      	movs	r3, #0
 800284e:	617b      	str	r3, [r7, #20]
 8002850:	687a      	ldr	r2, [r7, #4]
 8002852:	2306      	movs	r3, #6
 8002854:	213b      	movs	r1, #59	; 0x3b
 8002856:	20d0      	movs	r0, #208	; 0xd0
 8002858:	f7ff fe84 	bl	8002564 <mpu9255_ReadMulti>
 800285c:	0003      	movs	r3, r0
 800285e:	617b      	str	r3, [r7, #20]
 8002860:	697b      	ldr	r3, [r7, #20]
 8002862:	2b00      	cmp	r3, #0
 8002864:	d13b      	bne.n	80028de <mpu9255_readIMU+0x9c>
 8002866:	683a      	ldr	r2, [r7, #0]
 8002868:	2306      	movs	r3, #6
 800286a:	2143      	movs	r1, #67	; 0x43
 800286c:	20d0      	movs	r0, #208	; 0xd0
 800286e:	f7ff fe79 	bl	8002564 <mpu9255_ReadMulti>
 8002872:	0003      	movs	r3, r0
 8002874:	617b      	str	r3, [r7, #20]
 8002876:	697b      	ldr	r3, [r7, #20]
 8002878:	2b00      	cmp	r3, #0
 800287a:	d132      	bne.n	80028e2 <mpu9255_readIMU+0xa0>
 800287c:	2300      	movs	r3, #0
 800287e:	613b      	str	r3, [r7, #16]
 8002880:	e011      	b.n	80028a6 <mpu9255_readIMU+0x64>
 8002882:	693b      	ldr	r3, [r7, #16]
 8002884:	005b      	lsls	r3, r3, #1
 8002886:	687a      	ldr	r2, [r7, #4]
 8002888:	18d3      	adds	r3, r2, r3
 800288a:	2100      	movs	r1, #0
 800288c:	5e59      	ldrsh	r1, [r3, r1]
 800288e:	693b      	ldr	r3, [r7, #16]
 8002890:	005b      	lsls	r3, r3, #1
 8002892:	687a      	ldr	r2, [r7, #4]
 8002894:	18d4      	adds	r4, r2, r3
 8002896:	0008      	movs	r0, r1
 8002898:	f7ff ffb6 	bl	8002808 <_swapBytesI16>
 800289c:	0003      	movs	r3, r0
 800289e:	8023      	strh	r3, [r4, #0]
 80028a0:	693b      	ldr	r3, [r7, #16]
 80028a2:	3301      	adds	r3, #1
 80028a4:	613b      	str	r3, [r7, #16]
 80028a6:	693b      	ldr	r3, [r7, #16]
 80028a8:	2b02      	cmp	r3, #2
 80028aa:	ddea      	ble.n	8002882 <mpu9255_readIMU+0x40>
 80028ac:	2300      	movs	r3, #0
 80028ae:	60fb      	str	r3, [r7, #12]
 80028b0:	e011      	b.n	80028d6 <mpu9255_readIMU+0x94>
 80028b2:	68fb      	ldr	r3, [r7, #12]
 80028b4:	005b      	lsls	r3, r3, #1
 80028b6:	683a      	ldr	r2, [r7, #0]
 80028b8:	18d3      	adds	r3, r2, r3
 80028ba:	2100      	movs	r1, #0
 80028bc:	5e59      	ldrsh	r1, [r3, r1]
 80028be:	68fb      	ldr	r3, [r7, #12]
 80028c0:	005b      	lsls	r3, r3, #1
 80028c2:	683a      	ldr	r2, [r7, #0]
 80028c4:	18d4      	adds	r4, r2, r3
 80028c6:	0008      	movs	r0, r1
 80028c8:	f7ff ff9e 	bl	8002808 <_swapBytesI16>
 80028cc:	0003      	movs	r3, r0
 80028ce:	8023      	strh	r3, [r4, #0]
 80028d0:	68fb      	ldr	r3, [r7, #12]
 80028d2:	3301      	adds	r3, #1
 80028d4:	60fb      	str	r3, [r7, #12]
 80028d6:	68fb      	ldr	r3, [r7, #12]
 80028d8:	2b02      	cmp	r3, #2
 80028da:	ddea      	ble.n	80028b2 <mpu9255_readIMU+0x70>
 80028dc:	e002      	b.n	80028e4 <mpu9255_readIMU+0xa2>
 80028de:	46c0      	nop			; (mov r8, r8)
 80028e0:	e000      	b.n	80028e4 <mpu9255_readIMU+0xa2>
 80028e2:	46c0      	nop			; (mov r8, r8)
 80028e4:	697b      	ldr	r3, [r7, #20]
 80028e6:	0018      	movs	r0, r3
 80028e8:	46bd      	mov	sp, r7
 80028ea:	b007      	add	sp, #28
 80028ec:	bd90      	pop	{r4, r7, pc}
	...

080028f0 <mpu9255_recalcAccel>:
 80028f0:	b5b0      	push	{r4, r5, r7, lr}
 80028f2:	b086      	sub	sp, #24
 80028f4:	af00      	add	r7, sp, #0
 80028f6:	6078      	str	r0, [r7, #4]
 80028f8:	6039      	str	r1, [r7, #0]
 80028fa:	2508      	movs	r5, #8
 80028fc:	197b      	adds	r3, r7, r5
 80028fe:	2200      	movs	r2, #0
 8002900:	601a      	str	r2, [r3, #0]
 8002902:	197b      	adds	r3, r7, r5
 8002904:	2200      	movs	r2, #0
 8002906:	605a      	str	r2, [r3, #4]
 8002908:	197b      	adds	r3, r7, r5
 800290a:	2200      	movs	r2, #0
 800290c:	609a      	str	r2, [r3, #8]
 800290e:	687b      	ldr	r3, [r7, #4]
 8002910:	2200      	movs	r2, #0
 8002912:	5e9b      	ldrsh	r3, [r3, r2]
 8002914:	0018      	movs	r0, r3
 8002916:	f7fd fc83 	bl	8000220 <__aeabi_i2f>
 800291a:	1c03      	adds	r3, r0, #0
 800291c:	1c18      	adds	r0, r3, #0
 800291e:	f7fe fd59 	bl	80013d4 <__aeabi_f2d>
 8002922:	4a42      	ldr	r2, [pc, #264]	; (8002a2c <mpu9255_recalcAccel+0x13c>)
 8002924:	4b42      	ldr	r3, [pc, #264]	; (8002a30 <mpu9255_recalcAccel+0x140>)
 8002926:	f7fe fae3 	bl	8000ef0 <__aeabi_dmul>
 800292a:	0003      	movs	r3, r0
 800292c:	000c      	movs	r4, r1
 800292e:	0018      	movs	r0, r3
 8002930:	0021      	movs	r1, r4
 8002932:	2200      	movs	r2, #0
 8002934:	4b3f      	ldr	r3, [pc, #252]	; (8002a34 <mpu9255_recalcAccel+0x144>)
 8002936:	f7fd ffd9 	bl	80008ec <__aeabi_ddiv>
 800293a:	0003      	movs	r3, r0
 800293c:	000c      	movs	r4, r1
 800293e:	0018      	movs	r0, r3
 8002940:	0021      	movs	r1, r4
 8002942:	0002      	movs	r2, r0
 8002944:	000b      	movs	r3, r1
 8002946:	f7fd fcb5 	bl	80002b4 <__aeabi_dadd>
 800294a:	0003      	movs	r3, r0
 800294c:	000c      	movs	r4, r1
 800294e:	0018      	movs	r0, r3
 8002950:	0021      	movs	r1, r4
 8002952:	f7fe fd91 	bl	8001478 <__aeabi_d2f>
 8002956:	1c02      	adds	r2, r0, #0
 8002958:	197b      	adds	r3, r7, r5
 800295a:	601a      	str	r2, [r3, #0]
 800295c:	687b      	ldr	r3, [r7, #4]
 800295e:	3302      	adds	r3, #2
 8002960:	2200      	movs	r2, #0
 8002962:	5e9b      	ldrsh	r3, [r3, r2]
 8002964:	0018      	movs	r0, r3
 8002966:	f7fd fc5b 	bl	8000220 <__aeabi_i2f>
 800296a:	1c03      	adds	r3, r0, #0
 800296c:	1c18      	adds	r0, r3, #0
 800296e:	f7fe fd31 	bl	80013d4 <__aeabi_f2d>
 8002972:	4a2e      	ldr	r2, [pc, #184]	; (8002a2c <mpu9255_recalcAccel+0x13c>)
 8002974:	4b2e      	ldr	r3, [pc, #184]	; (8002a30 <mpu9255_recalcAccel+0x140>)
 8002976:	f7fe fabb 	bl	8000ef0 <__aeabi_dmul>
 800297a:	0003      	movs	r3, r0
 800297c:	000c      	movs	r4, r1
 800297e:	0018      	movs	r0, r3
 8002980:	0021      	movs	r1, r4
 8002982:	2200      	movs	r2, #0
 8002984:	4b2b      	ldr	r3, [pc, #172]	; (8002a34 <mpu9255_recalcAccel+0x144>)
 8002986:	f7fd ffb1 	bl	80008ec <__aeabi_ddiv>
 800298a:	0003      	movs	r3, r0
 800298c:	000c      	movs	r4, r1
 800298e:	0018      	movs	r0, r3
 8002990:	0021      	movs	r1, r4
 8002992:	0002      	movs	r2, r0
 8002994:	000b      	movs	r3, r1
 8002996:	f7fd fc8d 	bl	80002b4 <__aeabi_dadd>
 800299a:	0003      	movs	r3, r0
 800299c:	000c      	movs	r4, r1
 800299e:	0018      	movs	r0, r3
 80029a0:	0021      	movs	r1, r4
 80029a2:	f7fe fd69 	bl	8001478 <__aeabi_d2f>
 80029a6:	1c02      	adds	r2, r0, #0
 80029a8:	197b      	adds	r3, r7, r5
 80029aa:	605a      	str	r2, [r3, #4]
 80029ac:	687b      	ldr	r3, [r7, #4]
 80029ae:	3304      	adds	r3, #4
 80029b0:	2200      	movs	r2, #0
 80029b2:	5e9b      	ldrsh	r3, [r3, r2]
 80029b4:	0018      	movs	r0, r3
 80029b6:	f7fd fc33 	bl	8000220 <__aeabi_i2f>
 80029ba:	1c03      	adds	r3, r0, #0
 80029bc:	1c18      	adds	r0, r3, #0
 80029be:	f7fe fd09 	bl	80013d4 <__aeabi_f2d>
 80029c2:	4a1a      	ldr	r2, [pc, #104]	; (8002a2c <mpu9255_recalcAccel+0x13c>)
 80029c4:	4b1a      	ldr	r3, [pc, #104]	; (8002a30 <mpu9255_recalcAccel+0x140>)
 80029c6:	f7fe fa93 	bl	8000ef0 <__aeabi_dmul>
 80029ca:	0003      	movs	r3, r0
 80029cc:	000c      	movs	r4, r1
 80029ce:	0018      	movs	r0, r3
 80029d0:	0021      	movs	r1, r4
 80029d2:	2200      	movs	r2, #0
 80029d4:	4b17      	ldr	r3, [pc, #92]	; (8002a34 <mpu9255_recalcAccel+0x144>)
 80029d6:	f7fd ff89 	bl	80008ec <__aeabi_ddiv>
 80029da:	0003      	movs	r3, r0
 80029dc:	000c      	movs	r4, r1
 80029de:	0018      	movs	r0, r3
 80029e0:	0021      	movs	r1, r4
 80029e2:	0002      	movs	r2, r0
 80029e4:	000b      	movs	r3, r1
 80029e6:	f7fd fc65 	bl	80002b4 <__aeabi_dadd>
 80029ea:	0003      	movs	r3, r0
 80029ec:	000c      	movs	r4, r1
 80029ee:	0018      	movs	r0, r3
 80029f0:	0021      	movs	r1, r4
 80029f2:	f7fe fd41 	bl	8001478 <__aeabi_d2f>
 80029f6:	1c02      	adds	r2, r0, #0
 80029f8:	197b      	adds	r3, r7, r5
 80029fa:	609a      	str	r2, [r3, #8]
 80029fc:	2300      	movs	r3, #0
 80029fe:	617b      	str	r3, [r7, #20]
 8002a00:	e00c      	b.n	8002a1c <mpu9255_recalcAccel+0x12c>
 8002a02:	697b      	ldr	r3, [r7, #20]
 8002a04:	009b      	lsls	r3, r3, #2
 8002a06:	683a      	ldr	r2, [r7, #0]
 8002a08:	18d3      	adds	r3, r2, r3
 8002a0a:	2208      	movs	r2, #8
 8002a0c:	18ba      	adds	r2, r7, r2
 8002a0e:	6979      	ldr	r1, [r7, #20]
 8002a10:	0089      	lsls	r1, r1, #2
 8002a12:	588a      	ldr	r2, [r1, r2]
 8002a14:	601a      	str	r2, [r3, #0]
 8002a16:	697b      	ldr	r3, [r7, #20]
 8002a18:	3301      	adds	r3, #1
 8002a1a:	617b      	str	r3, [r7, #20]
 8002a1c:	697b      	ldr	r3, [r7, #20]
 8002a1e:	2b02      	cmp	r3, #2
 8002a20:	ddef      	ble.n	8002a02 <mpu9255_recalcAccel+0x112>
 8002a22:	46c0      	nop			; (mov r8, r8)
 8002a24:	46bd      	mov	sp, r7
 8002a26:	b006      	add	sp, #24
 8002a28:	bdb0      	pop	{r4, r5, r7, pc}
 8002a2a:	46c0      	nop			; (mov r8, r8)
 8002a2c:	374bc6a8 	.word	0x374bc6a8
 8002a30:	4023a189 	.word	0x4023a189
 8002a34:	40d00000 	.word	0x40d00000

08002a38 <xputc>:
 8002a38:	b580      	push	{r7, lr}
 8002a3a:	b082      	sub	sp, #8
 8002a3c:	af00      	add	r7, sp, #0
 8002a3e:	0002      	movs	r2, r0
 8002a40:	1dfb      	adds	r3, r7, #7
 8002a42:	701a      	strb	r2, [r3, #0]
 8002a44:	1dfb      	adds	r3, r7, #7
 8002a46:	781b      	ldrb	r3, [r3, #0]
 8002a48:	2b0a      	cmp	r3, #10
 8002a4a:	d102      	bne.n	8002a52 <xputc+0x1a>
 8002a4c:	200d      	movs	r0, #13
 8002a4e:	f7ff fff3 	bl	8002a38 <xputc>
 8002a52:	4b0d      	ldr	r3, [pc, #52]	; (8002a88 <xputc+0x50>)
 8002a54:	681b      	ldr	r3, [r3, #0]
 8002a56:	2b00      	cmp	r3, #0
 8002a58:	d008      	beq.n	8002a6c <xputc+0x34>
 8002a5a:	4b0b      	ldr	r3, [pc, #44]	; (8002a88 <xputc+0x50>)
 8002a5c:	681b      	ldr	r3, [r3, #0]
 8002a5e:	1c59      	adds	r1, r3, #1
 8002a60:	4a09      	ldr	r2, [pc, #36]	; (8002a88 <xputc+0x50>)
 8002a62:	6011      	str	r1, [r2, #0]
 8002a64:	1dfa      	adds	r2, r7, #7
 8002a66:	7812      	ldrb	r2, [r2, #0]
 8002a68:	701a      	strb	r2, [r3, #0]
 8002a6a:	e009      	b.n	8002a80 <xputc+0x48>
 8002a6c:	4b07      	ldr	r3, [pc, #28]	; (8002a8c <xputc+0x54>)
 8002a6e:	681b      	ldr	r3, [r3, #0]
 8002a70:	2b00      	cmp	r3, #0
 8002a72:	d005      	beq.n	8002a80 <xputc+0x48>
 8002a74:	4b05      	ldr	r3, [pc, #20]	; (8002a8c <xputc+0x54>)
 8002a76:	681b      	ldr	r3, [r3, #0]
 8002a78:	1dfa      	adds	r2, r7, #7
 8002a7a:	7812      	ldrb	r2, [r2, #0]
 8002a7c:	0010      	movs	r0, r2
 8002a7e:	4798      	blx	r3
 8002a80:	46bd      	mov	sp, r7
 8002a82:	b002      	add	sp, #8
 8002a84:	bd80      	pop	{r7, pc}
 8002a86:	46c0      	nop			; (mov r8, r8)
 8002a88:	2000002c 	.word	0x2000002c
 8002a8c:	20000034 	.word	0x20000034

08002a90 <xputs>:
 8002a90:	b580      	push	{r7, lr}
 8002a92:	b082      	sub	sp, #8
 8002a94:	af00      	add	r7, sp, #0
 8002a96:	6078      	str	r0, [r7, #4]
 8002a98:	e006      	b.n	8002aa8 <xputs+0x18>
 8002a9a:	687b      	ldr	r3, [r7, #4]
 8002a9c:	1c5a      	adds	r2, r3, #1
 8002a9e:	607a      	str	r2, [r7, #4]
 8002aa0:	781b      	ldrb	r3, [r3, #0]
 8002aa2:	0018      	movs	r0, r3
 8002aa4:	f7ff ffc8 	bl	8002a38 <xputc>
 8002aa8:	687b      	ldr	r3, [r7, #4]
 8002aaa:	781b      	ldrb	r3, [r3, #0]
 8002aac:	2b00      	cmp	r3, #0
 8002aae:	d1f4      	bne.n	8002a9a <xputs+0xa>
 8002ab0:	46c0      	nop			; (mov r8, r8)
 8002ab2:	46bd      	mov	sp, r7
 8002ab4:	b002      	add	sp, #8
 8002ab6:	bd80      	pop	{r7, pc}

08002ab8 <xvprintf>:
 8002ab8:	b590      	push	{r4, r7, lr}
 8002aba:	b093      	sub	sp, #76	; 0x4c
 8002abc:	af00      	add	r7, sp, #0
 8002abe:	6078      	str	r0, [r7, #4]
 8002ac0:	6039      	str	r1, [r7, #0]
 8002ac2:	687b      	ldr	r3, [r7, #4]
 8002ac4:	1c5a      	adds	r2, r3, #1
 8002ac6:	607a      	str	r2, [r7, #4]
 8002ac8:	2133      	movs	r1, #51	; 0x33
 8002aca:	187a      	adds	r2, r7, r1
 8002acc:	781b      	ldrb	r3, [r3, #0]
 8002ace:	7013      	strb	r3, [r2, #0]
 8002ad0:	187b      	adds	r3, r7, r1
 8002ad2:	781b      	ldrb	r3, [r3, #0]
 8002ad4:	2b00      	cmp	r3, #0
 8002ad6:	d100      	bne.n	8002ada <xvprintf+0x22>
 8002ad8:	e16f      	b.n	8002dba <xvprintf+0x302>
 8002ada:	2333      	movs	r3, #51	; 0x33
 8002adc:	18fb      	adds	r3, r7, r3
 8002ade:	781b      	ldrb	r3, [r3, #0]
 8002ae0:	2b25      	cmp	r3, #37	; 0x25
 8002ae2:	d006      	beq.n	8002af2 <xvprintf+0x3a>
 8002ae4:	2333      	movs	r3, #51	; 0x33
 8002ae6:	18fb      	adds	r3, r7, r3
 8002ae8:	781b      	ldrb	r3, [r3, #0]
 8002aea:	0018      	movs	r0, r3
 8002aec:	f7ff ffa4 	bl	8002a38 <xputc>
 8002af0:	e162      	b.n	8002db8 <xvprintf+0x300>
 8002af2:	2300      	movs	r3, #0
 8002af4:	637b      	str	r3, [r7, #52]	; 0x34
 8002af6:	687b      	ldr	r3, [r7, #4]
 8002af8:	1c5a      	adds	r2, r3, #1
 8002afa:	607a      	str	r2, [r7, #4]
 8002afc:	2133      	movs	r1, #51	; 0x33
 8002afe:	187a      	adds	r2, r7, r1
 8002b00:	781b      	ldrb	r3, [r3, #0]
 8002b02:	7013      	strb	r3, [r2, #0]
 8002b04:	187b      	adds	r3, r7, r1
 8002b06:	781b      	ldrb	r3, [r3, #0]
 8002b08:	2b30      	cmp	r3, #48	; 0x30
 8002b0a:	d109      	bne.n	8002b20 <xvprintf+0x68>
 8002b0c:	2301      	movs	r3, #1
 8002b0e:	637b      	str	r3, [r7, #52]	; 0x34
 8002b10:	687b      	ldr	r3, [r7, #4]
 8002b12:	1c5a      	adds	r2, r3, #1
 8002b14:	607a      	str	r2, [r7, #4]
 8002b16:	2233      	movs	r2, #51	; 0x33
 8002b18:	18ba      	adds	r2, r7, r2
 8002b1a:	781b      	ldrb	r3, [r3, #0]
 8002b1c:	7013      	strb	r3, [r2, #0]
 8002b1e:	e00d      	b.n	8002b3c <xvprintf+0x84>
 8002b20:	2333      	movs	r3, #51	; 0x33
 8002b22:	18fb      	adds	r3, r7, r3
 8002b24:	781b      	ldrb	r3, [r3, #0]
 8002b26:	2b2d      	cmp	r3, #45	; 0x2d
 8002b28:	d108      	bne.n	8002b3c <xvprintf+0x84>
 8002b2a:	2302      	movs	r3, #2
 8002b2c:	637b      	str	r3, [r7, #52]	; 0x34
 8002b2e:	687b      	ldr	r3, [r7, #4]
 8002b30:	1c5a      	adds	r2, r3, #1
 8002b32:	607a      	str	r2, [r7, #4]
 8002b34:	2233      	movs	r2, #51	; 0x33
 8002b36:	18ba      	adds	r2, r7, r2
 8002b38:	781b      	ldrb	r3, [r3, #0]
 8002b3a:	7013      	strb	r3, [r2, #0]
 8002b3c:	2300      	movs	r3, #0
 8002b3e:	63bb      	str	r3, [r7, #56]	; 0x38
 8002b40:	e011      	b.n	8002b66 <xvprintf+0xae>
 8002b42:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8002b44:	0013      	movs	r3, r2
 8002b46:	009b      	lsls	r3, r3, #2
 8002b48:	189b      	adds	r3, r3, r2
 8002b4a:	005b      	lsls	r3, r3, #1
 8002b4c:	001a      	movs	r2, r3
 8002b4e:	2133      	movs	r1, #51	; 0x33
 8002b50:	187b      	adds	r3, r7, r1
 8002b52:	781b      	ldrb	r3, [r3, #0]
 8002b54:	18d3      	adds	r3, r2, r3
 8002b56:	3b30      	subs	r3, #48	; 0x30
 8002b58:	63bb      	str	r3, [r7, #56]	; 0x38
 8002b5a:	687b      	ldr	r3, [r7, #4]
 8002b5c:	1c5a      	adds	r2, r3, #1
 8002b5e:	607a      	str	r2, [r7, #4]
 8002b60:	187a      	adds	r2, r7, r1
 8002b62:	781b      	ldrb	r3, [r3, #0]
 8002b64:	7013      	strb	r3, [r2, #0]
 8002b66:	2333      	movs	r3, #51	; 0x33
 8002b68:	18fb      	adds	r3, r7, r3
 8002b6a:	781b      	ldrb	r3, [r3, #0]
 8002b6c:	2b2f      	cmp	r3, #47	; 0x2f
 8002b6e:	d904      	bls.n	8002b7a <xvprintf+0xc2>
 8002b70:	2333      	movs	r3, #51	; 0x33
 8002b72:	18fb      	adds	r3, r7, r3
 8002b74:	781b      	ldrb	r3, [r3, #0]
 8002b76:	2b39      	cmp	r3, #57	; 0x39
 8002b78:	d9e3      	bls.n	8002b42 <xvprintf+0x8a>
 8002b7a:	2333      	movs	r3, #51	; 0x33
 8002b7c:	18fb      	adds	r3, r7, r3
 8002b7e:	781b      	ldrb	r3, [r3, #0]
 8002b80:	2b6c      	cmp	r3, #108	; 0x6c
 8002b82:	d004      	beq.n	8002b8e <xvprintf+0xd6>
 8002b84:	2333      	movs	r3, #51	; 0x33
 8002b86:	18fb      	adds	r3, r7, r3
 8002b88:	781b      	ldrb	r3, [r3, #0]
 8002b8a:	2b4c      	cmp	r3, #76	; 0x4c
 8002b8c:	d10a      	bne.n	8002ba4 <xvprintf+0xec>
 8002b8e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002b90:	2204      	movs	r2, #4
 8002b92:	4313      	orrs	r3, r2
 8002b94:	637b      	str	r3, [r7, #52]	; 0x34
 8002b96:	687b      	ldr	r3, [r7, #4]
 8002b98:	1c5a      	adds	r2, r3, #1
 8002b9a:	607a      	str	r2, [r7, #4]
 8002b9c:	2233      	movs	r2, #51	; 0x33
 8002b9e:	18ba      	adds	r2, r7, r2
 8002ba0:	781b      	ldrb	r3, [r3, #0]
 8002ba2:	7013      	strb	r3, [r2, #0]
 8002ba4:	2333      	movs	r3, #51	; 0x33
 8002ba6:	18fb      	adds	r3, r7, r3
 8002ba8:	781b      	ldrb	r3, [r3, #0]
 8002baa:	2b00      	cmp	r3, #0
 8002bac:	d100      	bne.n	8002bb0 <xvprintf+0xf8>
 8002bae:	e106      	b.n	8002dbe <xvprintf+0x306>
 8002bb0:	2132      	movs	r1, #50	; 0x32
 8002bb2:	187b      	adds	r3, r7, r1
 8002bb4:	2233      	movs	r2, #51	; 0x33
 8002bb6:	18ba      	adds	r2, r7, r2
 8002bb8:	7812      	ldrb	r2, [r2, #0]
 8002bba:	701a      	strb	r2, [r3, #0]
 8002bbc:	187b      	adds	r3, r7, r1
 8002bbe:	781b      	ldrb	r3, [r3, #0]
 8002bc0:	2b60      	cmp	r3, #96	; 0x60
 8002bc2:	d905      	bls.n	8002bd0 <xvprintf+0x118>
 8002bc4:	2232      	movs	r2, #50	; 0x32
 8002bc6:	18bb      	adds	r3, r7, r2
 8002bc8:	18ba      	adds	r2, r7, r2
 8002bca:	7812      	ldrb	r2, [r2, #0]
 8002bcc:	3a20      	subs	r2, #32
 8002bce:	701a      	strb	r2, [r3, #0]
 8002bd0:	2332      	movs	r3, #50	; 0x32
 8002bd2:	18fb      	adds	r3, r7, r3
 8002bd4:	781b      	ldrb	r3, [r3, #0]
 8002bd6:	3b42      	subs	r3, #66	; 0x42
 8002bd8:	2b16      	cmp	r3, #22
 8002bda:	d847      	bhi.n	8002c6c <xvprintf+0x1b4>
 8002bdc:	009a      	lsls	r2, r3, #2
 8002bde:	4b7a      	ldr	r3, [pc, #488]	; (8002dc8 <xvprintf+0x310>)
 8002be0:	18d3      	adds	r3, r2, r3
 8002be2:	681b      	ldr	r3, [r3, #0]
 8002be4:	469f      	mov	pc, r3
 8002be6:	683b      	ldr	r3, [r7, #0]
 8002be8:	1d1a      	adds	r2, r3, #4
 8002bea:	603a      	str	r2, [r7, #0]
 8002bec:	681b      	ldr	r3, [r3, #0]
 8002bee:	627b      	str	r3, [r7, #36]	; 0x24
 8002bf0:	2300      	movs	r3, #0
 8002bf2:	63fb      	str	r3, [r7, #60]	; 0x3c
 8002bf4:	e002      	b.n	8002bfc <xvprintf+0x144>
 8002bf6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002bf8:	3301      	adds	r3, #1
 8002bfa:	63fb      	str	r3, [r7, #60]	; 0x3c
 8002bfc:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8002bfe:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002c00:	18d3      	adds	r3, r2, r3
 8002c02:	781b      	ldrb	r3, [r3, #0]
 8002c04:	2b00      	cmp	r3, #0
 8002c06:	d1f6      	bne.n	8002bf6 <xvprintf+0x13e>
 8002c08:	e002      	b.n	8002c10 <xvprintf+0x158>
 8002c0a:	2020      	movs	r0, #32
 8002c0c:	f7ff ff14 	bl	8002a38 <xputc>
 8002c10:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002c12:	2202      	movs	r2, #2
 8002c14:	4013      	ands	r3, r2
 8002c16:	d105      	bne.n	8002c24 <xvprintf+0x16c>
 8002c18:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002c1a:	1c5a      	adds	r2, r3, #1
 8002c1c:	63fa      	str	r2, [r7, #60]	; 0x3c
 8002c1e:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8002c20:	429a      	cmp	r2, r3
 8002c22:	d8f2      	bhi.n	8002c0a <xvprintf+0x152>
 8002c24:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8002c26:	0018      	movs	r0, r3
 8002c28:	f7ff ff32 	bl	8002a90 <xputs>
 8002c2c:	e002      	b.n	8002c34 <xvprintf+0x17c>
 8002c2e:	2020      	movs	r0, #32
 8002c30:	f7ff ff02 	bl	8002a38 <xputc>
 8002c34:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002c36:	1c5a      	adds	r2, r3, #1
 8002c38:	63fa      	str	r2, [r7, #60]	; 0x3c
 8002c3a:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8002c3c:	429a      	cmp	r2, r3
 8002c3e:	d8f6      	bhi.n	8002c2e <xvprintf+0x176>
 8002c40:	e0ba      	b.n	8002db8 <xvprintf+0x300>
 8002c42:	683b      	ldr	r3, [r7, #0]
 8002c44:	1d1a      	adds	r2, r3, #4
 8002c46:	603a      	str	r2, [r7, #0]
 8002c48:	681b      	ldr	r3, [r3, #0]
 8002c4a:	b2db      	uxtb	r3, r3
 8002c4c:	0018      	movs	r0, r3
 8002c4e:	f7ff fef3 	bl	8002a38 <xputc>
 8002c52:	e0b1      	b.n	8002db8 <xvprintf+0x300>
 8002c54:	2302      	movs	r3, #2
 8002c56:	647b      	str	r3, [r7, #68]	; 0x44
 8002c58:	e00f      	b.n	8002c7a <xvprintf+0x1c2>
 8002c5a:	2308      	movs	r3, #8
 8002c5c:	647b      	str	r3, [r7, #68]	; 0x44
 8002c5e:	e00c      	b.n	8002c7a <xvprintf+0x1c2>
 8002c60:	230a      	movs	r3, #10
 8002c62:	647b      	str	r3, [r7, #68]	; 0x44
 8002c64:	e009      	b.n	8002c7a <xvprintf+0x1c2>
 8002c66:	2310      	movs	r3, #16
 8002c68:	647b      	str	r3, [r7, #68]	; 0x44
 8002c6a:	e006      	b.n	8002c7a <xvprintf+0x1c2>
 8002c6c:	2333      	movs	r3, #51	; 0x33
 8002c6e:	18fb      	adds	r3, r7, r3
 8002c70:	781b      	ldrb	r3, [r3, #0]
 8002c72:	0018      	movs	r0, r3
 8002c74:	f7ff fee0 	bl	8002a38 <xputc>
 8002c78:	e09e      	b.n	8002db8 <xvprintf+0x300>
 8002c7a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002c7c:	2204      	movs	r2, #4
 8002c7e:	4013      	ands	r3, r2
 8002c80:	d005      	beq.n	8002c8e <xvprintf+0x1d6>
 8002c82:	683b      	ldr	r3, [r7, #0]
 8002c84:	1d1a      	adds	r2, r3, #4
 8002c86:	603a      	str	r2, [r7, #0]
 8002c88:	681b      	ldr	r3, [r3, #0]
 8002c8a:	62fb      	str	r3, [r7, #44]	; 0x2c
 8002c8c:	e00e      	b.n	8002cac <xvprintf+0x1f4>
 8002c8e:	2332      	movs	r3, #50	; 0x32
 8002c90:	18fb      	adds	r3, r7, r3
 8002c92:	781b      	ldrb	r3, [r3, #0]
 8002c94:	2b44      	cmp	r3, #68	; 0x44
 8002c96:	d104      	bne.n	8002ca2 <xvprintf+0x1ea>
 8002c98:	683b      	ldr	r3, [r7, #0]
 8002c9a:	1d1a      	adds	r2, r3, #4
 8002c9c:	603a      	str	r2, [r7, #0]
 8002c9e:	681b      	ldr	r3, [r3, #0]
 8002ca0:	e003      	b.n	8002caa <xvprintf+0x1f2>
 8002ca2:	683b      	ldr	r3, [r7, #0]
 8002ca4:	1d1a      	adds	r2, r3, #4
 8002ca6:	603a      	str	r2, [r7, #0]
 8002ca8:	681b      	ldr	r3, [r3, #0]
 8002caa:	62fb      	str	r3, [r7, #44]	; 0x2c
 8002cac:	2332      	movs	r3, #50	; 0x32
 8002cae:	18fb      	adds	r3, r7, r3
 8002cb0:	781b      	ldrb	r3, [r3, #0]
 8002cb2:	2b44      	cmp	r3, #68	; 0x44
 8002cb4:	d109      	bne.n	8002cca <xvprintf+0x212>
 8002cb6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8002cb8:	2b00      	cmp	r3, #0
 8002cba:	da06      	bge.n	8002cca <xvprintf+0x212>
 8002cbc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8002cbe:	425b      	negs	r3, r3
 8002cc0:	62fb      	str	r3, [r7, #44]	; 0x2c
 8002cc2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002cc4:	2210      	movs	r2, #16
 8002cc6:	4313      	orrs	r3, r2
 8002cc8:	637b      	str	r3, [r7, #52]	; 0x34
 8002cca:	2300      	movs	r3, #0
 8002ccc:	643b      	str	r3, [r7, #64]	; 0x40
 8002cce:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8002cd0:	62bb      	str	r3, [r7, #40]	; 0x28
 8002cd2:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8002cd4:	6c79      	ldr	r1, [r7, #68]	; 0x44
 8002cd6:	0018      	movs	r0, r3
 8002cd8:	f7fd fa9c 	bl	8000214 <__aeabi_uidivmod>
 8002cdc:	000b      	movs	r3, r1
 8002cde:	001a      	movs	r2, r3
 8002ce0:	2432      	movs	r4, #50	; 0x32
 8002ce2:	193b      	adds	r3, r7, r4
 8002ce4:	701a      	strb	r2, [r3, #0]
 8002ce6:	6c79      	ldr	r1, [r7, #68]	; 0x44
 8002ce8:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8002cea:	f7fd fa0d 	bl	8000108 <__udivsi3>
 8002cee:	0003      	movs	r3, r0
 8002cf0:	62bb      	str	r3, [r7, #40]	; 0x28
 8002cf2:	193b      	adds	r3, r7, r4
 8002cf4:	781b      	ldrb	r3, [r3, #0]
 8002cf6:	2b09      	cmp	r3, #9
 8002cf8:	d90d      	bls.n	8002d16 <xvprintf+0x25e>
 8002cfa:	2333      	movs	r3, #51	; 0x33
 8002cfc:	18fb      	adds	r3, r7, r3
 8002cfe:	781b      	ldrb	r3, [r3, #0]
 8002d00:	2b78      	cmp	r3, #120	; 0x78
 8002d02:	d101      	bne.n	8002d08 <xvprintf+0x250>
 8002d04:	2327      	movs	r3, #39	; 0x27
 8002d06:	e000      	b.n	8002d0a <xvprintf+0x252>
 8002d08:	2307      	movs	r3, #7
 8002d0a:	2132      	movs	r1, #50	; 0x32
 8002d0c:	187a      	adds	r2, r7, r1
 8002d0e:	1879      	adds	r1, r7, r1
 8002d10:	7809      	ldrb	r1, [r1, #0]
 8002d12:	185b      	adds	r3, r3, r1
 8002d14:	7013      	strb	r3, [r2, #0]
 8002d16:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002d18:	1c5a      	adds	r2, r3, #1
 8002d1a:	643a      	str	r2, [r7, #64]	; 0x40
 8002d1c:	2232      	movs	r2, #50	; 0x32
 8002d1e:	18ba      	adds	r2, r7, r2
 8002d20:	7812      	ldrb	r2, [r2, #0]
 8002d22:	3230      	adds	r2, #48	; 0x30
 8002d24:	b2d1      	uxtb	r1, r2
 8002d26:	220c      	movs	r2, #12
 8002d28:	18ba      	adds	r2, r7, r2
 8002d2a:	54d1      	strb	r1, [r2, r3]
 8002d2c:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8002d2e:	2b00      	cmp	r3, #0
 8002d30:	d002      	beq.n	8002d38 <xvprintf+0x280>
 8002d32:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002d34:	2b17      	cmp	r3, #23
 8002d36:	d9cc      	bls.n	8002cd2 <xvprintf+0x21a>
 8002d38:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002d3a:	2210      	movs	r2, #16
 8002d3c:	4013      	ands	r3, r2
 8002d3e:	d006      	beq.n	8002d4e <xvprintf+0x296>
 8002d40:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002d42:	1c5a      	adds	r2, r3, #1
 8002d44:	643a      	str	r2, [r7, #64]	; 0x40
 8002d46:	220c      	movs	r2, #12
 8002d48:	18ba      	adds	r2, r7, r2
 8002d4a:	212d      	movs	r1, #45	; 0x2d
 8002d4c:	54d1      	strb	r1, [r2, r3]
 8002d4e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002d50:	63fb      	str	r3, [r7, #60]	; 0x3c
 8002d52:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002d54:	2201      	movs	r2, #1
 8002d56:	4013      	ands	r3, r2
 8002d58:	d001      	beq.n	8002d5e <xvprintf+0x2a6>
 8002d5a:	2230      	movs	r2, #48	; 0x30
 8002d5c:	e000      	b.n	8002d60 <xvprintf+0x2a8>
 8002d5e:	2220      	movs	r2, #32
 8002d60:	2332      	movs	r3, #50	; 0x32
 8002d62:	18fb      	adds	r3, r7, r3
 8002d64:	701a      	strb	r2, [r3, #0]
 8002d66:	e005      	b.n	8002d74 <xvprintf+0x2bc>
 8002d68:	2332      	movs	r3, #50	; 0x32
 8002d6a:	18fb      	adds	r3, r7, r3
 8002d6c:	781b      	ldrb	r3, [r3, #0]
 8002d6e:	0018      	movs	r0, r3
 8002d70:	f7ff fe62 	bl	8002a38 <xputc>
 8002d74:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002d76:	2202      	movs	r2, #2
 8002d78:	4013      	ands	r3, r2
 8002d7a:	d105      	bne.n	8002d88 <xvprintf+0x2d0>
 8002d7c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002d7e:	1c5a      	adds	r2, r3, #1
 8002d80:	63fa      	str	r2, [r7, #60]	; 0x3c
 8002d82:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8002d84:	429a      	cmp	r2, r3
 8002d86:	d8ef      	bhi.n	8002d68 <xvprintf+0x2b0>
 8002d88:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002d8a:	3b01      	subs	r3, #1
 8002d8c:	643b      	str	r3, [r7, #64]	; 0x40
 8002d8e:	230c      	movs	r3, #12
 8002d90:	18fa      	adds	r2, r7, r3
 8002d92:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002d94:	18d3      	adds	r3, r2, r3
 8002d96:	781b      	ldrb	r3, [r3, #0]
 8002d98:	0018      	movs	r0, r3
 8002d9a:	f7ff fe4d 	bl	8002a38 <xputc>
 8002d9e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002da0:	2b00      	cmp	r3, #0
 8002da2:	d1f1      	bne.n	8002d88 <xvprintf+0x2d0>
 8002da4:	e002      	b.n	8002dac <xvprintf+0x2f4>
 8002da6:	2020      	movs	r0, #32
 8002da8:	f7ff fe46 	bl	8002a38 <xputc>
 8002dac:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002dae:	1c5a      	adds	r2, r3, #1
 8002db0:	63fa      	str	r2, [r7, #60]	; 0x3c
 8002db2:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8002db4:	429a      	cmp	r2, r3
 8002db6:	d8f6      	bhi.n	8002da6 <xvprintf+0x2ee>
 8002db8:	e683      	b.n	8002ac2 <xvprintf+0xa>
 8002dba:	46c0      	nop			; (mov r8, r8)
 8002dbc:	e000      	b.n	8002dc0 <xvprintf+0x308>
 8002dbe:	46c0      	nop			; (mov r8, r8)
 8002dc0:	46c0      	nop			; (mov r8, r8)
 8002dc2:	46bd      	mov	sp, r7
 8002dc4:	b013      	add	sp, #76	; 0x4c
 8002dc6:	bd90      	pop	{r4, r7, pc}
 8002dc8:	08002fb4 	.word	0x08002fb4

08002dcc <xprintf>:
 8002dcc:	b40f      	push	{r0, r1, r2, r3}
 8002dce:	b580      	push	{r7, lr}
 8002dd0:	b082      	sub	sp, #8
 8002dd2:	af00      	add	r7, sp, #0
 8002dd4:	2314      	movs	r3, #20
 8002dd6:	18fb      	adds	r3, r7, r3
 8002dd8:	607b      	str	r3, [r7, #4]
 8002dda:	687a      	ldr	r2, [r7, #4]
 8002ddc:	693b      	ldr	r3, [r7, #16]
 8002dde:	0011      	movs	r1, r2
 8002de0:	0018      	movs	r0, r3
 8002de2:	f7ff fe69 	bl	8002ab8 <xvprintf>
 8002de6:	46c0      	nop			; (mov r8, r8)
 8002de8:	46bd      	mov	sp, r7
 8002dea:	b002      	add	sp, #8
 8002dec:	bc80      	pop	{r7}
 8002dee:	bc08      	pop	{r3}
 8002df0:	b004      	add	sp, #16
 8002df2:	4718      	bx	r3

08002df4 <SystemInit>:
 8002df4:	b580      	push	{r7, lr}
 8002df6:	af00      	add	r7, sp, #0
 8002df8:	4b1a      	ldr	r3, [pc, #104]	; (8002e64 <SystemInit+0x70>)
 8002dfa:	681a      	ldr	r2, [r3, #0]
 8002dfc:	4b19      	ldr	r3, [pc, #100]	; (8002e64 <SystemInit+0x70>)
 8002dfe:	2101      	movs	r1, #1
 8002e00:	430a      	orrs	r2, r1
 8002e02:	601a      	str	r2, [r3, #0]
 8002e04:	4b17      	ldr	r3, [pc, #92]	; (8002e64 <SystemInit+0x70>)
 8002e06:	685a      	ldr	r2, [r3, #4]
 8002e08:	4b16      	ldr	r3, [pc, #88]	; (8002e64 <SystemInit+0x70>)
 8002e0a:	4917      	ldr	r1, [pc, #92]	; (8002e68 <SystemInit+0x74>)
 8002e0c:	400a      	ands	r2, r1
 8002e0e:	605a      	str	r2, [r3, #4]
 8002e10:	4b14      	ldr	r3, [pc, #80]	; (8002e64 <SystemInit+0x70>)
 8002e12:	681a      	ldr	r2, [r3, #0]
 8002e14:	4b13      	ldr	r3, [pc, #76]	; (8002e64 <SystemInit+0x70>)
 8002e16:	4915      	ldr	r1, [pc, #84]	; (8002e6c <SystemInit+0x78>)
 8002e18:	400a      	ands	r2, r1
 8002e1a:	601a      	str	r2, [r3, #0]
 8002e1c:	4b11      	ldr	r3, [pc, #68]	; (8002e64 <SystemInit+0x70>)
 8002e1e:	681a      	ldr	r2, [r3, #0]
 8002e20:	4b10      	ldr	r3, [pc, #64]	; (8002e64 <SystemInit+0x70>)
 8002e22:	4913      	ldr	r1, [pc, #76]	; (8002e70 <SystemInit+0x7c>)
 8002e24:	400a      	ands	r2, r1
 8002e26:	601a      	str	r2, [r3, #0]
 8002e28:	4b0e      	ldr	r3, [pc, #56]	; (8002e64 <SystemInit+0x70>)
 8002e2a:	685a      	ldr	r2, [r3, #4]
 8002e2c:	4b0d      	ldr	r3, [pc, #52]	; (8002e64 <SystemInit+0x70>)
 8002e2e:	4911      	ldr	r1, [pc, #68]	; (8002e74 <SystemInit+0x80>)
 8002e30:	400a      	ands	r2, r1
 8002e32:	605a      	str	r2, [r3, #4]
 8002e34:	4b0b      	ldr	r3, [pc, #44]	; (8002e64 <SystemInit+0x70>)
 8002e36:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8002e38:	4b0a      	ldr	r3, [pc, #40]	; (8002e64 <SystemInit+0x70>)
 8002e3a:	210f      	movs	r1, #15
 8002e3c:	438a      	bics	r2, r1
 8002e3e:	62da      	str	r2, [r3, #44]	; 0x2c
 8002e40:	4b08      	ldr	r3, [pc, #32]	; (8002e64 <SystemInit+0x70>)
 8002e42:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8002e44:	4b07      	ldr	r3, [pc, #28]	; (8002e64 <SystemInit+0x70>)
 8002e46:	490c      	ldr	r1, [pc, #48]	; (8002e78 <SystemInit+0x84>)
 8002e48:	400a      	ands	r2, r1
 8002e4a:	631a      	str	r2, [r3, #48]	; 0x30
 8002e4c:	4b05      	ldr	r3, [pc, #20]	; (8002e64 <SystemInit+0x70>)
 8002e4e:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8002e50:	4b04      	ldr	r3, [pc, #16]	; (8002e64 <SystemInit+0x70>)
 8002e52:	2101      	movs	r1, #1
 8002e54:	438a      	bics	r2, r1
 8002e56:	635a      	str	r2, [r3, #52]	; 0x34
 8002e58:	4b02      	ldr	r3, [pc, #8]	; (8002e64 <SystemInit+0x70>)
 8002e5a:	2200      	movs	r2, #0
 8002e5c:	609a      	str	r2, [r3, #8]
 8002e5e:	46c0      	nop			; (mov r8, r8)
 8002e60:	46bd      	mov	sp, r7
 8002e62:	bd80      	pop	{r7, pc}
 8002e64:	40021000 	.word	0x40021000
 8002e68:	f8ffb80c 	.word	0xf8ffb80c
 8002e6c:	fef6ffff 	.word	0xfef6ffff
 8002e70:	fffbffff 	.word	0xfffbffff
 8002e74:	ffc0ffff 	.word	0xffc0ffff
 8002e78:	fffffeac 	.word	0xfffffeac

08002e7c <NMI_Handler>:
 8002e7c:	b580      	push	{r7, lr}
 8002e7e:	af00      	add	r7, sp, #0
 8002e80:	46c0      	nop			; (mov r8, r8)
 8002e82:	46bd      	mov	sp, r7
 8002e84:	bd80      	pop	{r7, pc}

08002e86 <HardFault_Handler>:
 8002e86:	b580      	push	{r7, lr}
 8002e88:	af00      	add	r7, sp, #0
 8002e8a:	e7fe      	b.n	8002e8a <HardFault_Handler+0x4>

08002e8c <SVC_Handler>:
 8002e8c:	b580      	push	{r7, lr}
 8002e8e:	af00      	add	r7, sp, #0
 8002e90:	46c0      	nop			; (mov r8, r8)
 8002e92:	46bd      	mov	sp, r7
 8002e94:	bd80      	pop	{r7, pc}

08002e96 <PendSV_Handler>:
 8002e96:	b580      	push	{r7, lr}
 8002e98:	af00      	add	r7, sp, #0
 8002e9a:	46c0      	nop			; (mov r8, r8)
 8002e9c:	46bd      	mov	sp, r7
 8002e9e:	bd80      	pop	{r7, pc}

08002ea0 <__libc_init_array>:
 8002ea0:	b570      	push	{r4, r5, r6, lr}
 8002ea2:	2600      	movs	r6, #0
 8002ea4:	4d0c      	ldr	r5, [pc, #48]	; (8002ed8 <__libc_init_array+0x38>)
 8002ea6:	4c0d      	ldr	r4, [pc, #52]	; (8002edc <__libc_init_array+0x3c>)
 8002ea8:	1b64      	subs	r4, r4, r5
 8002eaa:	10a4      	asrs	r4, r4, #2
 8002eac:	42a6      	cmp	r6, r4
 8002eae:	d109      	bne.n	8002ec4 <__libc_init_array+0x24>
 8002eb0:	2600      	movs	r6, #0
 8002eb2:	f000 f821 	bl	8002ef8 <_init>
 8002eb6:	4d0a      	ldr	r5, [pc, #40]	; (8002ee0 <__libc_init_array+0x40>)
 8002eb8:	4c0a      	ldr	r4, [pc, #40]	; (8002ee4 <__libc_init_array+0x44>)
 8002eba:	1b64      	subs	r4, r4, r5
 8002ebc:	10a4      	asrs	r4, r4, #2
 8002ebe:	42a6      	cmp	r6, r4
 8002ec0:	d105      	bne.n	8002ece <__libc_init_array+0x2e>
 8002ec2:	bd70      	pop	{r4, r5, r6, pc}
 8002ec4:	00b3      	lsls	r3, r6, #2
 8002ec6:	58eb      	ldr	r3, [r5, r3]
 8002ec8:	4798      	blx	r3
 8002eca:	3601      	adds	r6, #1
 8002ecc:	e7ee      	b.n	8002eac <__libc_init_array+0xc>
 8002ece:	00b3      	lsls	r3, r6, #2
 8002ed0:	58eb      	ldr	r3, [r5, r3]
 8002ed2:	4798      	blx	r3
 8002ed4:	3601      	adds	r6, #1
 8002ed6:	e7f2      	b.n	8002ebe <__libc_init_array+0x1e>
 8002ed8:	08003010 	.word	0x08003010
 8002edc:	08003010 	.word	0x08003010
 8002ee0:	08003010 	.word	0x08003010
 8002ee4:	08003014 	.word	0x08003014

08002ee8 <memset>:
 8002ee8:	0003      	movs	r3, r0
 8002eea:	1812      	adds	r2, r2, r0
 8002eec:	4293      	cmp	r3, r2
 8002eee:	d100      	bne.n	8002ef2 <memset+0xa>
 8002ef0:	4770      	bx	lr
 8002ef2:	7019      	strb	r1, [r3, #0]
 8002ef4:	3301      	adds	r3, #1
 8002ef6:	e7f9      	b.n	8002eec <memset+0x4>

08002ef8 <_init>:
 8002ef8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002efa:	46c0      	nop			; (mov r8, r8)
 8002efc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002efe:	bc08      	pop	{r3}
 8002f00:	469e      	mov	lr, r3
 8002f02:	4770      	bx	lr

08002f04 <_fini>:
 8002f04:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002f06:	46c0      	nop			; (mov r8, r8)
 8002f08:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002f0a:	bc08      	pop	{r3}
 8002f0c:	469e      	mov	lr, r3
 8002f0e:	4770      	bx	lr
