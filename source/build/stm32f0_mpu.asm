
build/stm32f0_mpu.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             0000391c  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000170  080039dc  080039dc  000139dc  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000004  08003b4c  08003b4c  00013b4c  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08003b50  08003b50  00013b50  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000004  20000000  08003b54  00020000  2**2  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000118  20000008  08003b58  00020008  2**3  ALLOC
  7 ._user_heap_stack 00000600  20000120  08003b58  00020120  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020004  2**0  CONTENTS, READONLY
  9 .debug_info       00004aba  00000000  00000000  0002002c  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     00000eb4  00000000  00000000  00024ae6  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        00001572  00000000  00000000  0002599a  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    00000408  00000000  00000000  00026f0c  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     00000378  00000000  00000000  00027314  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       0000154d  00000000  00000000  0002768c  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        000013eb  00000000  00000000  00028bd9  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          0000007f  00000000  00000000  00029fc4  2**0  CONTENTS, READONLY
 17 .debug_frame      00000f00  00000000  00000000  0002a044  2**2  CONTENTS, READONLY, DEBUGGING

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
 80000dc:	20000008 	.word	0x20000008
 80000e0:	00000000 	.word	0x00000000
 80000e4:	080039c4 	.word	0x080039c4

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
 8000100:	2000000c 	.word	0x2000000c
 8000104:	080039c4 	.word	0x080039c4

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

08000220 <__aeabi_fadd>:
 8000220:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000222:	4647      	mov	r7, r8
 8000224:	46ce      	mov	lr, r9
 8000226:	0243      	lsls	r3, r0, #9
 8000228:	0a5b      	lsrs	r3, r3, #9
 800022a:	0044      	lsls	r4, r0, #1
 800022c:	0fc2      	lsrs	r2, r0, #31
 800022e:	469c      	mov	ip, r3
 8000230:	0048      	lsls	r0, r1, #1
 8000232:	00dd      	lsls	r5, r3, #3
 8000234:	024b      	lsls	r3, r1, #9
 8000236:	0e24      	lsrs	r4, r4, #24
 8000238:	0a5b      	lsrs	r3, r3, #9
 800023a:	0e00      	lsrs	r0, r0, #24
 800023c:	b580      	push	{r7, lr}
 800023e:	4698      	mov	r8, r3
 8000240:	0026      	movs	r6, r4
 8000242:	4691      	mov	r9, r2
 8000244:	0fc9      	lsrs	r1, r1, #31
 8000246:	00db      	lsls	r3, r3, #3
 8000248:	1a27      	subs	r7, r4, r0
 800024a:	428a      	cmp	r2, r1
 800024c:	d029      	beq.n	80002a2 <__aeabi_fadd+0x82>
 800024e:	2f00      	cmp	r7, #0
 8000250:	dd15      	ble.n	800027e <__aeabi_fadd+0x5e>
 8000252:	2800      	cmp	r0, #0
 8000254:	d14a      	bne.n	80002ec <__aeabi_fadd+0xcc>
 8000256:	2b00      	cmp	r3, #0
 8000258:	d000      	beq.n	800025c <__aeabi_fadd+0x3c>
 800025a:	e095      	b.n	8000388 <__aeabi_fadd+0x168>
 800025c:	08ed      	lsrs	r5, r5, #3
 800025e:	2cff      	cmp	r4, #255	; 0xff
 8000260:	d100      	bne.n	8000264 <__aeabi_fadd+0x44>
 8000262:	e088      	b.n	8000376 <__aeabi_fadd+0x156>
 8000264:	026b      	lsls	r3, r5, #9
 8000266:	0a5b      	lsrs	r3, r3, #9
 8000268:	b2e6      	uxtb	r6, r4
 800026a:	025b      	lsls	r3, r3, #9
 800026c:	05f6      	lsls	r6, r6, #23
 800026e:	0a58      	lsrs	r0, r3, #9
 8000270:	4330      	orrs	r0, r6
 8000272:	07d2      	lsls	r2, r2, #31
 8000274:	4310      	orrs	r0, r2
 8000276:	bc0c      	pop	{r2, r3}
 8000278:	4690      	mov	r8, r2
 800027a:	4699      	mov	r9, r3
 800027c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800027e:	2f00      	cmp	r7, #0
 8000280:	d000      	beq.n	8000284 <__aeabi_fadd+0x64>
 8000282:	e087      	b.n	8000394 <__aeabi_fadd+0x174>
 8000284:	1c60      	adds	r0, r4, #1
 8000286:	b2c0      	uxtb	r0, r0
 8000288:	2801      	cmp	r0, #1
 800028a:	dc00      	bgt.n	800028e <__aeabi_fadd+0x6e>
 800028c:	e0b6      	b.n	80003fc <__aeabi_fadd+0x1dc>
 800028e:	1aee      	subs	r6, r5, r3
 8000290:	0172      	lsls	r2, r6, #5
 8000292:	d500      	bpl.n	8000296 <__aeabi_fadd+0x76>
 8000294:	e0c5      	b.n	8000422 <__aeabi_fadd+0x202>
 8000296:	2e00      	cmp	r6, #0
 8000298:	d13d      	bne.n	8000316 <__aeabi_fadd+0xf6>
 800029a:	2200      	movs	r2, #0
 800029c:	2600      	movs	r6, #0
 800029e:	2300      	movs	r3, #0
 80002a0:	e7e3      	b.n	800026a <__aeabi_fadd+0x4a>
 80002a2:	2f00      	cmp	r7, #0
 80002a4:	dc00      	bgt.n	80002a8 <__aeabi_fadd+0x88>
 80002a6:	e096      	b.n	80003d6 <__aeabi_fadd+0x1b6>
 80002a8:	2800      	cmp	r0, #0
 80002aa:	d05d      	beq.n	8000368 <__aeabi_fadd+0x148>
 80002ac:	2cff      	cmp	r4, #255	; 0xff
 80002ae:	d060      	beq.n	8000372 <__aeabi_fadd+0x152>
 80002b0:	2280      	movs	r2, #128	; 0x80
 80002b2:	04d2      	lsls	r2, r2, #19
 80002b4:	4313      	orrs	r3, r2
 80002b6:	2f1b      	cmp	r7, #27
 80002b8:	dd00      	ble.n	80002bc <__aeabi_fadd+0x9c>
 80002ba:	e0ec      	b.n	8000496 <__aeabi_fadd+0x276>
 80002bc:	2220      	movs	r2, #32
 80002be:	1bd2      	subs	r2, r2, r7
 80002c0:	0018      	movs	r0, r3
 80002c2:	4093      	lsls	r3, r2
 80002c4:	40f8      	lsrs	r0, r7
 80002c6:	1e5a      	subs	r2, r3, #1
 80002c8:	4193      	sbcs	r3, r2
 80002ca:	4303      	orrs	r3, r0
 80002cc:	18ed      	adds	r5, r5, r3
 80002ce:	016b      	lsls	r3, r5, #5
 80002d0:	d57b      	bpl.n	80003ca <__aeabi_fadd+0x1aa>
 80002d2:	3401      	adds	r4, #1
 80002d4:	2cff      	cmp	r4, #255	; 0xff
 80002d6:	d100      	bne.n	80002da <__aeabi_fadd+0xba>
 80002d8:	e0b7      	b.n	800044a <__aeabi_fadd+0x22a>
 80002da:	2201      	movs	r2, #1
 80002dc:	2607      	movs	r6, #7
 80002de:	402a      	ands	r2, r5
 80002e0:	086b      	lsrs	r3, r5, #1
 80002e2:	4d9a      	ldr	r5, [pc, #616]	; (800054c <__aeabi_fadd+0x32c>)
 80002e4:	401d      	ands	r5, r3
 80002e6:	4315      	orrs	r5, r2
 80002e8:	402e      	ands	r6, r5
 80002ea:	e029      	b.n	8000340 <__aeabi_fadd+0x120>
 80002ec:	2cff      	cmp	r4, #255	; 0xff
 80002ee:	d0b5      	beq.n	800025c <__aeabi_fadd+0x3c>
 80002f0:	2280      	movs	r2, #128	; 0x80
 80002f2:	04d2      	lsls	r2, r2, #19
 80002f4:	4313      	orrs	r3, r2
 80002f6:	2f1b      	cmp	r7, #27
 80002f8:	dd00      	ble.n	80002fc <__aeabi_fadd+0xdc>
 80002fa:	e0b2      	b.n	8000462 <__aeabi_fadd+0x242>
 80002fc:	2220      	movs	r2, #32
 80002fe:	1bd2      	subs	r2, r2, r7
 8000300:	0019      	movs	r1, r3
 8000302:	4093      	lsls	r3, r2
 8000304:	40f9      	lsrs	r1, r7
 8000306:	1e5a      	subs	r2, r3, #1
 8000308:	4193      	sbcs	r3, r2
 800030a:	430b      	orrs	r3, r1
 800030c:	1aed      	subs	r5, r5, r3
 800030e:	016b      	lsls	r3, r5, #5
 8000310:	d55b      	bpl.n	80003ca <__aeabi_fadd+0x1aa>
 8000312:	01ad      	lsls	r5, r5, #6
 8000314:	09ae      	lsrs	r6, r5, #6
 8000316:	0030      	movs	r0, r6
 8000318:	f001 fb38 	bl	800198c <__clzsi2>
 800031c:	3805      	subs	r0, #5
 800031e:	4086      	lsls	r6, r0
 8000320:	4284      	cmp	r4, r0
 8000322:	dc65      	bgt.n	80003f0 <__aeabi_fadd+0x1d0>
 8000324:	1b04      	subs	r4, r0, r4
 8000326:	0033      	movs	r3, r6
 8000328:	2020      	movs	r0, #32
 800032a:	3401      	adds	r4, #1
 800032c:	40e3      	lsrs	r3, r4
 800032e:	1b04      	subs	r4, r0, r4
 8000330:	40a6      	lsls	r6, r4
 8000332:	1e75      	subs	r5, r6, #1
 8000334:	41ae      	sbcs	r6, r5
 8000336:	4333      	orrs	r3, r6
 8000338:	2607      	movs	r6, #7
 800033a:	001d      	movs	r5, r3
 800033c:	2400      	movs	r4, #0
 800033e:	401e      	ands	r6, r3
 8000340:	2201      	movs	r2, #1
 8000342:	464b      	mov	r3, r9
 8000344:	401a      	ands	r2, r3
 8000346:	2e00      	cmp	r6, #0
 8000348:	d004      	beq.n	8000354 <__aeabi_fadd+0x134>
 800034a:	230f      	movs	r3, #15
 800034c:	402b      	ands	r3, r5
 800034e:	2b04      	cmp	r3, #4
 8000350:	d000      	beq.n	8000354 <__aeabi_fadd+0x134>
 8000352:	3504      	adds	r5, #4
 8000354:	016b      	lsls	r3, r5, #5
 8000356:	d400      	bmi.n	800035a <__aeabi_fadd+0x13a>
 8000358:	e780      	b.n	800025c <__aeabi_fadd+0x3c>
 800035a:	3401      	adds	r4, #1
 800035c:	b2e6      	uxtb	r6, r4
 800035e:	2cff      	cmp	r4, #255	; 0xff
 8000360:	d12f      	bne.n	80003c2 <__aeabi_fadd+0x1a2>
 8000362:	26ff      	movs	r6, #255	; 0xff
 8000364:	2300      	movs	r3, #0
 8000366:	e780      	b.n	800026a <__aeabi_fadd+0x4a>
 8000368:	2b00      	cmp	r3, #0
 800036a:	d152      	bne.n	8000412 <__aeabi_fadd+0x1f2>
 800036c:	2cff      	cmp	r4, #255	; 0xff
 800036e:	d000      	beq.n	8000372 <__aeabi_fadd+0x152>
 8000370:	e774      	b.n	800025c <__aeabi_fadd+0x3c>
 8000372:	000a      	movs	r2, r1
 8000374:	08ed      	lsrs	r5, r5, #3
 8000376:	2d00      	cmp	r5, #0
 8000378:	d0f3      	beq.n	8000362 <__aeabi_fadd+0x142>
 800037a:	2380      	movs	r3, #128	; 0x80
 800037c:	03db      	lsls	r3, r3, #15
 800037e:	432b      	orrs	r3, r5
 8000380:	025b      	lsls	r3, r3, #9
 8000382:	0a5b      	lsrs	r3, r3, #9
 8000384:	26ff      	movs	r6, #255	; 0xff
 8000386:	e770      	b.n	800026a <__aeabi_fadd+0x4a>
 8000388:	3f01      	subs	r7, #1
 800038a:	2f00      	cmp	r7, #0
 800038c:	d0be      	beq.n	800030c <__aeabi_fadd+0xec>
 800038e:	2cff      	cmp	r4, #255	; 0xff
 8000390:	d1b1      	bne.n	80002f6 <__aeabi_fadd+0xd6>
 8000392:	e763      	b.n	800025c <__aeabi_fadd+0x3c>
 8000394:	2c00      	cmp	r4, #0
 8000396:	d047      	beq.n	8000428 <__aeabi_fadd+0x208>
 8000398:	28ff      	cmp	r0, #255	; 0xff
 800039a:	d069      	beq.n	8000470 <__aeabi_fadd+0x250>
 800039c:	2480      	movs	r4, #128	; 0x80
 800039e:	04e4      	lsls	r4, r4, #19
 80003a0:	427a      	negs	r2, r7
 80003a2:	4325      	orrs	r5, r4
 80003a4:	2a1b      	cmp	r2, #27
 80003a6:	dd00      	ble.n	80003aa <__aeabi_fadd+0x18a>
 80003a8:	e0c5      	b.n	8000536 <__aeabi_fadd+0x316>
 80003aa:	002c      	movs	r4, r5
 80003ac:	2620      	movs	r6, #32
 80003ae:	40d4      	lsrs	r4, r2
 80003b0:	1ab2      	subs	r2, r6, r2
 80003b2:	4095      	lsls	r5, r2
 80003b4:	1e6a      	subs	r2, r5, #1
 80003b6:	4195      	sbcs	r5, r2
 80003b8:	4325      	orrs	r5, r4
 80003ba:	1b5d      	subs	r5, r3, r5
 80003bc:	0004      	movs	r4, r0
 80003be:	4689      	mov	r9, r1
 80003c0:	e7a5      	b.n	800030e <__aeabi_fadd+0xee>
 80003c2:	01ab      	lsls	r3, r5, #6
 80003c4:	0a5b      	lsrs	r3, r3, #9
 80003c6:	e750      	b.n	800026a <__aeabi_fadd+0x4a>
 80003c8:	2400      	movs	r4, #0
 80003ca:	2201      	movs	r2, #1
 80003cc:	464b      	mov	r3, r9
 80003ce:	401a      	ands	r2, r3
 80003d0:	076b      	lsls	r3, r5, #29
 80003d2:	d1ba      	bne.n	800034a <__aeabi_fadd+0x12a>
 80003d4:	e742      	b.n	800025c <__aeabi_fadd+0x3c>
 80003d6:	2f00      	cmp	r7, #0
 80003d8:	d13b      	bne.n	8000452 <__aeabi_fadd+0x232>
 80003da:	3401      	adds	r4, #1
 80003dc:	b2e0      	uxtb	r0, r4
 80003de:	2801      	cmp	r0, #1
 80003e0:	dd4a      	ble.n	8000478 <__aeabi_fadd+0x258>
 80003e2:	2cff      	cmp	r4, #255	; 0xff
 80003e4:	d0bd      	beq.n	8000362 <__aeabi_fadd+0x142>
 80003e6:	2607      	movs	r6, #7
 80003e8:	18ed      	adds	r5, r5, r3
 80003ea:	086d      	lsrs	r5, r5, #1
 80003ec:	402e      	ands	r6, r5
 80003ee:	e7a7      	b.n	8000340 <__aeabi_fadd+0x120>
 80003f0:	2307      	movs	r3, #7
 80003f2:	4d57      	ldr	r5, [pc, #348]	; (8000550 <__aeabi_fadd+0x330>)
 80003f4:	1a24      	subs	r4, r4, r0
 80003f6:	4035      	ands	r5, r6
 80003f8:	401e      	ands	r6, r3
 80003fa:	e7a1      	b.n	8000340 <__aeabi_fadd+0x120>
 80003fc:	2c00      	cmp	r4, #0
 80003fe:	d11b      	bne.n	8000438 <__aeabi_fadd+0x218>
 8000400:	2d00      	cmp	r5, #0
 8000402:	d16e      	bne.n	80004e2 <__aeabi_fadd+0x2c2>
 8000404:	2b00      	cmp	r3, #0
 8000406:	d100      	bne.n	800040a <__aeabi_fadd+0x1ea>
 8000408:	e09a      	b.n	8000540 <__aeabi_fadd+0x320>
 800040a:	000a      	movs	r2, r1
 800040c:	001d      	movs	r5, r3
 800040e:	003c      	movs	r4, r7
 8000410:	e724      	b.n	800025c <__aeabi_fadd+0x3c>
 8000412:	3f01      	subs	r7, #1
 8000414:	2f00      	cmp	r7, #0
 8000416:	d100      	bne.n	800041a <__aeabi_fadd+0x1fa>
 8000418:	e758      	b.n	80002cc <__aeabi_fadd+0xac>
 800041a:	2cff      	cmp	r4, #255	; 0xff
 800041c:	d000      	beq.n	8000420 <__aeabi_fadd+0x200>
 800041e:	e74a      	b.n	80002b6 <__aeabi_fadd+0x96>
 8000420:	e7a7      	b.n	8000372 <__aeabi_fadd+0x152>
 8000422:	1b5e      	subs	r6, r3, r5
 8000424:	4689      	mov	r9, r1
 8000426:	e776      	b.n	8000316 <__aeabi_fadd+0xf6>
 8000428:	2d00      	cmp	r5, #0
 800042a:	d11c      	bne.n	8000466 <__aeabi_fadd+0x246>
 800042c:	000a      	movs	r2, r1
 800042e:	28ff      	cmp	r0, #255	; 0xff
 8000430:	d01f      	beq.n	8000472 <__aeabi_fadd+0x252>
 8000432:	0004      	movs	r4, r0
 8000434:	001d      	movs	r5, r3
 8000436:	e711      	b.n	800025c <__aeabi_fadd+0x3c>
 8000438:	2d00      	cmp	r5, #0
 800043a:	d15d      	bne.n	80004f8 <__aeabi_fadd+0x2d8>
 800043c:	2b00      	cmp	r3, #0
 800043e:	d117      	bne.n	8000470 <__aeabi_fadd+0x250>
 8000440:	2380      	movs	r3, #128	; 0x80
 8000442:	2200      	movs	r2, #0
 8000444:	03db      	lsls	r3, r3, #15
 8000446:	26ff      	movs	r6, #255	; 0xff
 8000448:	e70f      	b.n	800026a <__aeabi_fadd+0x4a>
 800044a:	000a      	movs	r2, r1
 800044c:	26ff      	movs	r6, #255	; 0xff
 800044e:	2300      	movs	r3, #0
 8000450:	e70b      	b.n	800026a <__aeabi_fadd+0x4a>
 8000452:	2c00      	cmp	r4, #0
 8000454:	d121      	bne.n	800049a <__aeabi_fadd+0x27a>
 8000456:	2d00      	cmp	r5, #0
 8000458:	d166      	bne.n	8000528 <__aeabi_fadd+0x308>
 800045a:	28ff      	cmp	r0, #255	; 0xff
 800045c:	d1e9      	bne.n	8000432 <__aeabi_fadd+0x212>
 800045e:	001d      	movs	r5, r3
 8000460:	e787      	b.n	8000372 <__aeabi_fadd+0x152>
 8000462:	2301      	movs	r3, #1
 8000464:	e752      	b.n	800030c <__aeabi_fadd+0xec>
 8000466:	1c7a      	adds	r2, r7, #1
 8000468:	d0a7      	beq.n	80003ba <__aeabi_fadd+0x19a>
 800046a:	43fa      	mvns	r2, r7
 800046c:	28ff      	cmp	r0, #255	; 0xff
 800046e:	d199      	bne.n	80003a4 <__aeabi_fadd+0x184>
 8000470:	000a      	movs	r2, r1
 8000472:	001d      	movs	r5, r3
 8000474:	24ff      	movs	r4, #255	; 0xff
 8000476:	e6f1      	b.n	800025c <__aeabi_fadd+0x3c>
 8000478:	2e00      	cmp	r6, #0
 800047a:	d121      	bne.n	80004c0 <__aeabi_fadd+0x2a0>
 800047c:	2d00      	cmp	r5, #0
 800047e:	d04f      	beq.n	8000520 <__aeabi_fadd+0x300>
 8000480:	2b00      	cmp	r3, #0
 8000482:	d04c      	beq.n	800051e <__aeabi_fadd+0x2fe>
 8000484:	18ed      	adds	r5, r5, r3
 8000486:	016b      	lsls	r3, r5, #5
 8000488:	d59e      	bpl.n	80003c8 <__aeabi_fadd+0x1a8>
 800048a:	4b31      	ldr	r3, [pc, #196]	; (8000550 <__aeabi_fadd+0x330>)
 800048c:	3607      	adds	r6, #7
 800048e:	402e      	ands	r6, r5
 8000490:	2401      	movs	r4, #1
 8000492:	401d      	ands	r5, r3
 8000494:	e754      	b.n	8000340 <__aeabi_fadd+0x120>
 8000496:	2301      	movs	r3, #1
 8000498:	e718      	b.n	80002cc <__aeabi_fadd+0xac>
 800049a:	28ff      	cmp	r0, #255	; 0xff
 800049c:	d0df      	beq.n	800045e <__aeabi_fadd+0x23e>
 800049e:	2480      	movs	r4, #128	; 0x80
 80004a0:	04e4      	lsls	r4, r4, #19
 80004a2:	427f      	negs	r7, r7
 80004a4:	4325      	orrs	r5, r4
 80004a6:	2f1b      	cmp	r7, #27
 80004a8:	dc4d      	bgt.n	8000546 <__aeabi_fadd+0x326>
 80004aa:	2620      	movs	r6, #32
 80004ac:	1bf6      	subs	r6, r6, r7
 80004ae:	002c      	movs	r4, r5
 80004b0:	40b5      	lsls	r5, r6
 80004b2:	40fc      	lsrs	r4, r7
 80004b4:	1e6a      	subs	r2, r5, #1
 80004b6:	4195      	sbcs	r5, r2
 80004b8:	4325      	orrs	r5, r4
 80004ba:	18ed      	adds	r5, r5, r3
 80004bc:	0004      	movs	r4, r0
 80004be:	e706      	b.n	80002ce <__aeabi_fadd+0xae>
 80004c0:	2d00      	cmp	r5, #0
 80004c2:	d0cc      	beq.n	800045e <__aeabi_fadd+0x23e>
 80004c4:	2b00      	cmp	r3, #0
 80004c6:	d100      	bne.n	80004ca <__aeabi_fadd+0x2aa>
 80004c8:	e753      	b.n	8000372 <__aeabi_fadd+0x152>
 80004ca:	2180      	movs	r1, #128	; 0x80
 80004cc:	4660      	mov	r0, ip
 80004ce:	03c9      	lsls	r1, r1, #15
 80004d0:	4208      	tst	r0, r1
 80004d2:	d003      	beq.n	80004dc <__aeabi_fadd+0x2bc>
 80004d4:	4640      	mov	r0, r8
 80004d6:	4208      	tst	r0, r1
 80004d8:	d100      	bne.n	80004dc <__aeabi_fadd+0x2bc>
 80004da:	001d      	movs	r5, r3
 80004dc:	2101      	movs	r1, #1
 80004de:	4011      	ands	r1, r2
 80004e0:	e747      	b.n	8000372 <__aeabi_fadd+0x152>
 80004e2:	2b00      	cmp	r3, #0
 80004e4:	d100      	bne.n	80004e8 <__aeabi_fadd+0x2c8>
 80004e6:	e6b9      	b.n	800025c <__aeabi_fadd+0x3c>
 80004e8:	1aea      	subs	r2, r5, r3
 80004ea:	0150      	lsls	r0, r2, #5
 80004ec:	d525      	bpl.n	800053a <__aeabi_fadd+0x31a>
 80004ee:	2607      	movs	r6, #7
 80004f0:	1b5d      	subs	r5, r3, r5
 80004f2:	402e      	ands	r6, r5
 80004f4:	4689      	mov	r9, r1
 80004f6:	e723      	b.n	8000340 <__aeabi_fadd+0x120>
 80004f8:	24ff      	movs	r4, #255	; 0xff
 80004fa:	2b00      	cmp	r3, #0
 80004fc:	d100      	bne.n	8000500 <__aeabi_fadd+0x2e0>
 80004fe:	e6ad      	b.n	800025c <__aeabi_fadd+0x3c>
 8000500:	2280      	movs	r2, #128	; 0x80
 8000502:	4660      	mov	r0, ip
 8000504:	03d2      	lsls	r2, r2, #15
 8000506:	4210      	tst	r0, r2
 8000508:	d004      	beq.n	8000514 <__aeabi_fadd+0x2f4>
 800050a:	4640      	mov	r0, r8
 800050c:	4210      	tst	r0, r2
 800050e:	d101      	bne.n	8000514 <__aeabi_fadd+0x2f4>
 8000510:	001d      	movs	r5, r3
 8000512:	4689      	mov	r9, r1
 8000514:	2201      	movs	r2, #1
 8000516:	464b      	mov	r3, r9
 8000518:	24ff      	movs	r4, #255	; 0xff
 800051a:	401a      	ands	r2, r3
 800051c:	e69e      	b.n	800025c <__aeabi_fadd+0x3c>
 800051e:	002b      	movs	r3, r5
 8000520:	08dd      	lsrs	r5, r3, #3
 8000522:	000a      	movs	r2, r1
 8000524:	2400      	movs	r4, #0
 8000526:	e69d      	b.n	8000264 <__aeabi_fadd+0x44>
 8000528:	1c7a      	adds	r2, r7, #1
 800052a:	d0c6      	beq.n	80004ba <__aeabi_fadd+0x29a>
 800052c:	43ff      	mvns	r7, r7
 800052e:	28ff      	cmp	r0, #255	; 0xff
 8000530:	d1b9      	bne.n	80004a6 <__aeabi_fadd+0x286>
 8000532:	001d      	movs	r5, r3
 8000534:	e71d      	b.n	8000372 <__aeabi_fadd+0x152>
 8000536:	2501      	movs	r5, #1
 8000538:	e73f      	b.n	80003ba <__aeabi_fadd+0x19a>
 800053a:	1e15      	subs	r5, r2, #0
 800053c:	d000      	beq.n	8000540 <__aeabi_fadd+0x320>
 800053e:	e744      	b.n	80003ca <__aeabi_fadd+0x1aa>
 8000540:	2200      	movs	r2, #0
 8000542:	2300      	movs	r3, #0
 8000544:	e691      	b.n	800026a <__aeabi_fadd+0x4a>
 8000546:	2501      	movs	r5, #1
 8000548:	e7b7      	b.n	80004ba <__aeabi_fadd+0x29a>
 800054a:	46c0      	nop			; (mov r8, r8)
 800054c:	7dffffff 	.word	0x7dffffff
 8000550:	fbffffff 	.word	0xfbffffff

08000554 <__aeabi_fdiv>:
 8000554:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000556:	4657      	mov	r7, sl
 8000558:	464e      	mov	r6, r9
 800055a:	4645      	mov	r5, r8
 800055c:	46de      	mov	lr, fp
 800055e:	0244      	lsls	r4, r0, #9
 8000560:	b5e0      	push	{r5, r6, r7, lr}
 8000562:	0046      	lsls	r6, r0, #1
 8000564:	4688      	mov	r8, r1
 8000566:	0a64      	lsrs	r4, r4, #9
 8000568:	0e36      	lsrs	r6, r6, #24
 800056a:	0fc7      	lsrs	r7, r0, #31
 800056c:	2e00      	cmp	r6, #0
 800056e:	d063      	beq.n	8000638 <__aeabi_fdiv+0xe4>
 8000570:	2eff      	cmp	r6, #255	; 0xff
 8000572:	d024      	beq.n	80005be <__aeabi_fdiv+0x6a>
 8000574:	2380      	movs	r3, #128	; 0x80
 8000576:	00e4      	lsls	r4, r4, #3
 8000578:	04db      	lsls	r3, r3, #19
 800057a:	431c      	orrs	r4, r3
 800057c:	2300      	movs	r3, #0
 800057e:	4699      	mov	r9, r3
 8000580:	469b      	mov	fp, r3
 8000582:	3e7f      	subs	r6, #127	; 0x7f
 8000584:	4643      	mov	r3, r8
 8000586:	4642      	mov	r2, r8
 8000588:	025d      	lsls	r5, r3, #9
 800058a:	0fd2      	lsrs	r2, r2, #31
 800058c:	005b      	lsls	r3, r3, #1
 800058e:	0a6d      	lsrs	r5, r5, #9
 8000590:	0e1b      	lsrs	r3, r3, #24
 8000592:	4690      	mov	r8, r2
 8000594:	4692      	mov	sl, r2
 8000596:	d065      	beq.n	8000664 <__aeabi_fdiv+0x110>
 8000598:	2bff      	cmp	r3, #255	; 0xff
 800059a:	d055      	beq.n	8000648 <__aeabi_fdiv+0xf4>
 800059c:	2280      	movs	r2, #128	; 0x80
 800059e:	2100      	movs	r1, #0
 80005a0:	00ed      	lsls	r5, r5, #3
 80005a2:	04d2      	lsls	r2, r2, #19
 80005a4:	3b7f      	subs	r3, #127	; 0x7f
 80005a6:	4315      	orrs	r5, r2
 80005a8:	1af6      	subs	r6, r6, r3
 80005aa:	4643      	mov	r3, r8
 80005ac:	464a      	mov	r2, r9
 80005ae:	407b      	eors	r3, r7
 80005b0:	2a0f      	cmp	r2, #15
 80005b2:	d900      	bls.n	80005b6 <__aeabi_fdiv+0x62>
 80005b4:	e08d      	b.n	80006d2 <__aeabi_fdiv+0x17e>
 80005b6:	486d      	ldr	r0, [pc, #436]	; (800076c <__aeabi_fdiv+0x218>)
 80005b8:	0092      	lsls	r2, r2, #2
 80005ba:	5882      	ldr	r2, [r0, r2]
 80005bc:	4697      	mov	pc, r2
 80005be:	2c00      	cmp	r4, #0
 80005c0:	d154      	bne.n	800066c <__aeabi_fdiv+0x118>
 80005c2:	2308      	movs	r3, #8
 80005c4:	4699      	mov	r9, r3
 80005c6:	3b06      	subs	r3, #6
 80005c8:	26ff      	movs	r6, #255	; 0xff
 80005ca:	469b      	mov	fp, r3
 80005cc:	e7da      	b.n	8000584 <__aeabi_fdiv+0x30>
 80005ce:	2500      	movs	r5, #0
 80005d0:	4653      	mov	r3, sl
 80005d2:	2902      	cmp	r1, #2
 80005d4:	d01b      	beq.n	800060e <__aeabi_fdiv+0xba>
 80005d6:	2903      	cmp	r1, #3
 80005d8:	d100      	bne.n	80005dc <__aeabi_fdiv+0x88>
 80005da:	e0bf      	b.n	800075c <__aeabi_fdiv+0x208>
 80005dc:	2901      	cmp	r1, #1
 80005de:	d028      	beq.n	8000632 <__aeabi_fdiv+0xde>
 80005e0:	0030      	movs	r0, r6
 80005e2:	307f      	adds	r0, #127	; 0x7f
 80005e4:	2800      	cmp	r0, #0
 80005e6:	dd20      	ble.n	800062a <__aeabi_fdiv+0xd6>
 80005e8:	076a      	lsls	r2, r5, #29
 80005ea:	d004      	beq.n	80005f6 <__aeabi_fdiv+0xa2>
 80005ec:	220f      	movs	r2, #15
 80005ee:	402a      	ands	r2, r5
 80005f0:	2a04      	cmp	r2, #4
 80005f2:	d000      	beq.n	80005f6 <__aeabi_fdiv+0xa2>
 80005f4:	3504      	adds	r5, #4
 80005f6:	012a      	lsls	r2, r5, #4
 80005f8:	d503      	bpl.n	8000602 <__aeabi_fdiv+0xae>
 80005fa:	0030      	movs	r0, r6
 80005fc:	4a5c      	ldr	r2, [pc, #368]	; (8000770 <__aeabi_fdiv+0x21c>)
 80005fe:	3080      	adds	r0, #128	; 0x80
 8000600:	4015      	ands	r5, r2
 8000602:	28fe      	cmp	r0, #254	; 0xfe
 8000604:	dc03      	bgt.n	800060e <__aeabi_fdiv+0xba>
 8000606:	01ac      	lsls	r4, r5, #6
 8000608:	0a64      	lsrs	r4, r4, #9
 800060a:	b2c2      	uxtb	r2, r0
 800060c:	e001      	b.n	8000612 <__aeabi_fdiv+0xbe>
 800060e:	22ff      	movs	r2, #255	; 0xff
 8000610:	2400      	movs	r4, #0
 8000612:	0264      	lsls	r4, r4, #9
 8000614:	05d2      	lsls	r2, r2, #23
 8000616:	0a60      	lsrs	r0, r4, #9
 8000618:	07db      	lsls	r3, r3, #31
 800061a:	4310      	orrs	r0, r2
 800061c:	4318      	orrs	r0, r3
 800061e:	bc3c      	pop	{r2, r3, r4, r5}
 8000620:	4690      	mov	r8, r2
 8000622:	4699      	mov	r9, r3
 8000624:	46a2      	mov	sl, r4
 8000626:	46ab      	mov	fp, r5
 8000628:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800062a:	2201      	movs	r2, #1
 800062c:	1a10      	subs	r0, r2, r0
 800062e:	281b      	cmp	r0, #27
 8000630:	dd7c      	ble.n	800072c <__aeabi_fdiv+0x1d8>
 8000632:	2200      	movs	r2, #0
 8000634:	2400      	movs	r4, #0
 8000636:	e7ec      	b.n	8000612 <__aeabi_fdiv+0xbe>
 8000638:	2c00      	cmp	r4, #0
 800063a:	d11d      	bne.n	8000678 <__aeabi_fdiv+0x124>
 800063c:	2304      	movs	r3, #4
 800063e:	4699      	mov	r9, r3
 8000640:	3b03      	subs	r3, #3
 8000642:	2600      	movs	r6, #0
 8000644:	469b      	mov	fp, r3
 8000646:	e79d      	b.n	8000584 <__aeabi_fdiv+0x30>
 8000648:	3eff      	subs	r6, #255	; 0xff
 800064a:	2d00      	cmp	r5, #0
 800064c:	d120      	bne.n	8000690 <__aeabi_fdiv+0x13c>
 800064e:	2102      	movs	r1, #2
 8000650:	4643      	mov	r3, r8
 8000652:	464a      	mov	r2, r9
 8000654:	407b      	eors	r3, r7
 8000656:	430a      	orrs	r2, r1
 8000658:	2a0f      	cmp	r2, #15
 800065a:	d8d8      	bhi.n	800060e <__aeabi_fdiv+0xba>
 800065c:	4845      	ldr	r0, [pc, #276]	; (8000774 <__aeabi_fdiv+0x220>)
 800065e:	0092      	lsls	r2, r2, #2
 8000660:	5882      	ldr	r2, [r0, r2]
 8000662:	4697      	mov	pc, r2
 8000664:	2d00      	cmp	r5, #0
 8000666:	d119      	bne.n	800069c <__aeabi_fdiv+0x148>
 8000668:	2101      	movs	r1, #1
 800066a:	e7f1      	b.n	8000650 <__aeabi_fdiv+0xfc>
 800066c:	230c      	movs	r3, #12
 800066e:	4699      	mov	r9, r3
 8000670:	3b09      	subs	r3, #9
 8000672:	26ff      	movs	r6, #255	; 0xff
 8000674:	469b      	mov	fp, r3
 8000676:	e785      	b.n	8000584 <__aeabi_fdiv+0x30>
 8000678:	0020      	movs	r0, r4
 800067a:	f001 f987 	bl	800198c <__clzsi2>
 800067e:	2676      	movs	r6, #118	; 0x76
 8000680:	1f43      	subs	r3, r0, #5
 8000682:	409c      	lsls	r4, r3
 8000684:	2300      	movs	r3, #0
 8000686:	4276      	negs	r6, r6
 8000688:	1a36      	subs	r6, r6, r0
 800068a:	4699      	mov	r9, r3
 800068c:	469b      	mov	fp, r3
 800068e:	e779      	b.n	8000584 <__aeabi_fdiv+0x30>
 8000690:	464a      	mov	r2, r9
 8000692:	2303      	movs	r3, #3
 8000694:	431a      	orrs	r2, r3
 8000696:	4691      	mov	r9, r2
 8000698:	2103      	movs	r1, #3
 800069a:	e786      	b.n	80005aa <__aeabi_fdiv+0x56>
 800069c:	0028      	movs	r0, r5
 800069e:	f001 f975 	bl	800198c <__clzsi2>
 80006a2:	1f43      	subs	r3, r0, #5
 80006a4:	1836      	adds	r6, r6, r0
 80006a6:	409d      	lsls	r5, r3
 80006a8:	3676      	adds	r6, #118	; 0x76
 80006aa:	2100      	movs	r1, #0
 80006ac:	e77d      	b.n	80005aa <__aeabi_fdiv+0x56>
 80006ae:	2480      	movs	r4, #128	; 0x80
 80006b0:	2300      	movs	r3, #0
 80006b2:	03e4      	lsls	r4, r4, #15
 80006b4:	22ff      	movs	r2, #255	; 0xff
 80006b6:	e7ac      	b.n	8000612 <__aeabi_fdiv+0xbe>
 80006b8:	2500      	movs	r5, #0
 80006ba:	2380      	movs	r3, #128	; 0x80
 80006bc:	03db      	lsls	r3, r3, #15
 80006be:	421c      	tst	r4, r3
 80006c0:	d028      	beq.n	8000714 <__aeabi_fdiv+0x1c0>
 80006c2:	421d      	tst	r5, r3
 80006c4:	d126      	bne.n	8000714 <__aeabi_fdiv+0x1c0>
 80006c6:	432b      	orrs	r3, r5
 80006c8:	025c      	lsls	r4, r3, #9
 80006ca:	0a64      	lsrs	r4, r4, #9
 80006cc:	4643      	mov	r3, r8
 80006ce:	22ff      	movs	r2, #255	; 0xff
 80006d0:	e79f      	b.n	8000612 <__aeabi_fdiv+0xbe>
 80006d2:	0162      	lsls	r2, r4, #5
 80006d4:	016c      	lsls	r4, r5, #5
 80006d6:	42a2      	cmp	r2, r4
 80006d8:	d224      	bcs.n	8000724 <__aeabi_fdiv+0x1d0>
 80006da:	211b      	movs	r1, #27
 80006dc:	2500      	movs	r5, #0
 80006de:	3e01      	subs	r6, #1
 80006e0:	2701      	movs	r7, #1
 80006e2:	0010      	movs	r0, r2
 80006e4:	006d      	lsls	r5, r5, #1
 80006e6:	0052      	lsls	r2, r2, #1
 80006e8:	2800      	cmp	r0, #0
 80006ea:	db01      	blt.n	80006f0 <__aeabi_fdiv+0x19c>
 80006ec:	4294      	cmp	r4, r2
 80006ee:	d801      	bhi.n	80006f4 <__aeabi_fdiv+0x1a0>
 80006f0:	1b12      	subs	r2, r2, r4
 80006f2:	433d      	orrs	r5, r7
 80006f4:	3901      	subs	r1, #1
 80006f6:	2900      	cmp	r1, #0
 80006f8:	d1f3      	bne.n	80006e2 <__aeabi_fdiv+0x18e>
 80006fa:	0014      	movs	r4, r2
 80006fc:	1e62      	subs	r2, r4, #1
 80006fe:	4194      	sbcs	r4, r2
 8000700:	4325      	orrs	r5, r4
 8000702:	e76d      	b.n	80005e0 <__aeabi_fdiv+0x8c>
 8000704:	46ba      	mov	sl, r7
 8000706:	4659      	mov	r1, fp
 8000708:	0025      	movs	r5, r4
 800070a:	4653      	mov	r3, sl
 800070c:	2902      	cmp	r1, #2
 800070e:	d000      	beq.n	8000712 <__aeabi_fdiv+0x1be>
 8000710:	e761      	b.n	80005d6 <__aeabi_fdiv+0x82>
 8000712:	e77c      	b.n	800060e <__aeabi_fdiv+0xba>
 8000714:	2380      	movs	r3, #128	; 0x80
 8000716:	03db      	lsls	r3, r3, #15
 8000718:	431c      	orrs	r4, r3
 800071a:	0264      	lsls	r4, r4, #9
 800071c:	0a64      	lsrs	r4, r4, #9
 800071e:	003b      	movs	r3, r7
 8000720:	22ff      	movs	r2, #255	; 0xff
 8000722:	e776      	b.n	8000612 <__aeabi_fdiv+0xbe>
 8000724:	1b12      	subs	r2, r2, r4
 8000726:	211a      	movs	r1, #26
 8000728:	2501      	movs	r5, #1
 800072a:	e7d9      	b.n	80006e0 <__aeabi_fdiv+0x18c>
 800072c:	369e      	adds	r6, #158	; 0x9e
 800072e:	002a      	movs	r2, r5
 8000730:	40b5      	lsls	r5, r6
 8000732:	002c      	movs	r4, r5
 8000734:	40c2      	lsrs	r2, r0
 8000736:	1e65      	subs	r5, r4, #1
 8000738:	41ac      	sbcs	r4, r5
 800073a:	4314      	orrs	r4, r2
 800073c:	0762      	lsls	r2, r4, #29
 800073e:	d004      	beq.n	800074a <__aeabi_fdiv+0x1f6>
 8000740:	220f      	movs	r2, #15
 8000742:	4022      	ands	r2, r4
 8000744:	2a04      	cmp	r2, #4
 8000746:	d000      	beq.n	800074a <__aeabi_fdiv+0x1f6>
 8000748:	3404      	adds	r4, #4
 800074a:	0162      	lsls	r2, r4, #5
 800074c:	d403      	bmi.n	8000756 <__aeabi_fdiv+0x202>
 800074e:	01a4      	lsls	r4, r4, #6
 8000750:	0a64      	lsrs	r4, r4, #9
 8000752:	2200      	movs	r2, #0
 8000754:	e75d      	b.n	8000612 <__aeabi_fdiv+0xbe>
 8000756:	2201      	movs	r2, #1
 8000758:	2400      	movs	r4, #0
 800075a:	e75a      	b.n	8000612 <__aeabi_fdiv+0xbe>
 800075c:	2480      	movs	r4, #128	; 0x80
 800075e:	03e4      	lsls	r4, r4, #15
 8000760:	432c      	orrs	r4, r5
 8000762:	0264      	lsls	r4, r4, #9
 8000764:	0a64      	lsrs	r4, r4, #9
 8000766:	22ff      	movs	r2, #255	; 0xff
 8000768:	e753      	b.n	8000612 <__aeabi_fdiv+0xbe>
 800076a:	46c0      	nop			; (mov r8, r8)
 800076c:	080039f0 	.word	0x080039f0
 8000770:	f7ffffff 	.word	0xf7ffffff
 8000774:	08003a30 	.word	0x08003a30

08000778 <__aeabi_ui2f>:
 8000778:	b570      	push	{r4, r5, r6, lr}
 800077a:	1e04      	subs	r4, r0, #0
 800077c:	d034      	beq.n	80007e8 <__aeabi_ui2f+0x70>
 800077e:	f001 f905 	bl	800198c <__clzsi2>
 8000782:	229e      	movs	r2, #158	; 0x9e
 8000784:	1a12      	subs	r2, r2, r0
 8000786:	2a96      	cmp	r2, #150	; 0x96
 8000788:	dc07      	bgt.n	800079a <__aeabi_ui2f+0x22>
 800078a:	b2d2      	uxtb	r2, r2
 800078c:	2808      	cmp	r0, #8
 800078e:	dd2e      	ble.n	80007ee <__aeabi_ui2f+0x76>
 8000790:	3808      	subs	r0, #8
 8000792:	4084      	lsls	r4, r0
 8000794:	0260      	lsls	r0, r4, #9
 8000796:	0a40      	lsrs	r0, r0, #9
 8000798:	e021      	b.n	80007de <__aeabi_ui2f+0x66>
 800079a:	2a99      	cmp	r2, #153	; 0x99
 800079c:	dd09      	ble.n	80007b2 <__aeabi_ui2f+0x3a>
 800079e:	0003      	movs	r3, r0
 80007a0:	0021      	movs	r1, r4
 80007a2:	331b      	adds	r3, #27
 80007a4:	4099      	lsls	r1, r3
 80007a6:	1e4b      	subs	r3, r1, #1
 80007a8:	4199      	sbcs	r1, r3
 80007aa:	2305      	movs	r3, #5
 80007ac:	1a1b      	subs	r3, r3, r0
 80007ae:	40dc      	lsrs	r4, r3
 80007b0:	430c      	orrs	r4, r1
 80007b2:	2805      	cmp	r0, #5
 80007b4:	dd01      	ble.n	80007ba <__aeabi_ui2f+0x42>
 80007b6:	1f43      	subs	r3, r0, #5
 80007b8:	409c      	lsls	r4, r3
 80007ba:	0023      	movs	r3, r4
 80007bc:	490d      	ldr	r1, [pc, #52]	; (80007f4 <__aeabi_ui2f+0x7c>)
 80007be:	400b      	ands	r3, r1
 80007c0:	0765      	lsls	r5, r4, #29
 80007c2:	d009      	beq.n	80007d8 <__aeabi_ui2f+0x60>
 80007c4:	250f      	movs	r5, #15
 80007c6:	402c      	ands	r4, r5
 80007c8:	2c04      	cmp	r4, #4
 80007ca:	d005      	beq.n	80007d8 <__aeabi_ui2f+0x60>
 80007cc:	3304      	adds	r3, #4
 80007ce:	015c      	lsls	r4, r3, #5
 80007d0:	d502      	bpl.n	80007d8 <__aeabi_ui2f+0x60>
 80007d2:	229f      	movs	r2, #159	; 0x9f
 80007d4:	400b      	ands	r3, r1
 80007d6:	1a12      	subs	r2, r2, r0
 80007d8:	019b      	lsls	r3, r3, #6
 80007da:	0a58      	lsrs	r0, r3, #9
 80007dc:	b2d2      	uxtb	r2, r2
 80007de:	0240      	lsls	r0, r0, #9
 80007e0:	05d2      	lsls	r2, r2, #23
 80007e2:	0a40      	lsrs	r0, r0, #9
 80007e4:	4310      	orrs	r0, r2
 80007e6:	bd70      	pop	{r4, r5, r6, pc}
 80007e8:	2200      	movs	r2, #0
 80007ea:	2000      	movs	r0, #0
 80007ec:	e7f7      	b.n	80007de <__aeabi_ui2f+0x66>
 80007ee:	0260      	lsls	r0, r4, #9
 80007f0:	0a40      	lsrs	r0, r0, #9
 80007f2:	e7f4      	b.n	80007de <__aeabi_ui2f+0x66>
 80007f4:	fbffffff 	.word	0xfbffffff

080007f8 <__aeabi_dadd>:
 80007f8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80007fa:	464f      	mov	r7, r9
 80007fc:	4646      	mov	r6, r8
 80007fe:	46d6      	mov	lr, sl
 8000800:	000c      	movs	r4, r1
 8000802:	0309      	lsls	r1, r1, #12
 8000804:	b5c0      	push	{r6, r7, lr}
 8000806:	0a49      	lsrs	r1, r1, #9
 8000808:	0f47      	lsrs	r7, r0, #29
 800080a:	005e      	lsls	r6, r3, #1
 800080c:	4339      	orrs	r1, r7
 800080e:	031f      	lsls	r7, r3, #12
 8000810:	0fdb      	lsrs	r3, r3, #31
 8000812:	469c      	mov	ip, r3
 8000814:	0065      	lsls	r5, r4, #1
 8000816:	0a7b      	lsrs	r3, r7, #9
 8000818:	0f57      	lsrs	r7, r2, #29
 800081a:	431f      	orrs	r7, r3
 800081c:	0d6d      	lsrs	r5, r5, #21
 800081e:	0fe4      	lsrs	r4, r4, #31
 8000820:	0d76      	lsrs	r6, r6, #21
 8000822:	46a1      	mov	r9, r4
 8000824:	00c0      	lsls	r0, r0, #3
 8000826:	46b8      	mov	r8, r7
 8000828:	00d2      	lsls	r2, r2, #3
 800082a:	1bab      	subs	r3, r5, r6
 800082c:	4564      	cmp	r4, ip
 800082e:	d07b      	beq.n	8000928 <__aeabi_dadd+0x130>
 8000830:	2b00      	cmp	r3, #0
 8000832:	dd5f      	ble.n	80008f4 <__aeabi_dadd+0xfc>
 8000834:	2e00      	cmp	r6, #0
 8000836:	d000      	beq.n	800083a <__aeabi_dadd+0x42>
 8000838:	e0a4      	b.n	8000984 <__aeabi_dadd+0x18c>
 800083a:	003e      	movs	r6, r7
 800083c:	4316      	orrs	r6, r2
 800083e:	d100      	bne.n	8000842 <__aeabi_dadd+0x4a>
 8000840:	e112      	b.n	8000a68 <__aeabi_dadd+0x270>
 8000842:	1e5e      	subs	r6, r3, #1
 8000844:	2e00      	cmp	r6, #0
 8000846:	d000      	beq.n	800084a <__aeabi_dadd+0x52>
 8000848:	e19e      	b.n	8000b88 <__aeabi_dadd+0x390>
 800084a:	1a87      	subs	r7, r0, r2
 800084c:	4643      	mov	r3, r8
 800084e:	42b8      	cmp	r0, r7
 8000850:	4180      	sbcs	r0, r0
 8000852:	2501      	movs	r5, #1
 8000854:	1ac9      	subs	r1, r1, r3
 8000856:	4240      	negs	r0, r0
 8000858:	1a09      	subs	r1, r1, r0
 800085a:	020b      	lsls	r3, r1, #8
 800085c:	d400      	bmi.n	8000860 <__aeabi_dadd+0x68>
 800085e:	e131      	b.n	8000ac4 <__aeabi_dadd+0x2cc>
 8000860:	0249      	lsls	r1, r1, #9
 8000862:	0a4e      	lsrs	r6, r1, #9
 8000864:	2e00      	cmp	r6, #0
 8000866:	d100      	bne.n	800086a <__aeabi_dadd+0x72>
 8000868:	e16e      	b.n	8000b48 <__aeabi_dadd+0x350>
 800086a:	0030      	movs	r0, r6
 800086c:	f001 f88e 	bl	800198c <__clzsi2>
 8000870:	0003      	movs	r3, r0
 8000872:	3b08      	subs	r3, #8
 8000874:	2b1f      	cmp	r3, #31
 8000876:	dd00      	ble.n	800087a <__aeabi_dadd+0x82>
 8000878:	e161      	b.n	8000b3e <__aeabi_dadd+0x346>
 800087a:	2220      	movs	r2, #32
 800087c:	0039      	movs	r1, r7
 800087e:	1ad2      	subs	r2, r2, r3
 8000880:	409e      	lsls	r6, r3
 8000882:	40d1      	lsrs	r1, r2
 8000884:	409f      	lsls	r7, r3
 8000886:	430e      	orrs	r6, r1
 8000888:	429d      	cmp	r5, r3
 800088a:	dd00      	ble.n	800088e <__aeabi_dadd+0x96>
 800088c:	e151      	b.n	8000b32 <__aeabi_dadd+0x33a>
 800088e:	1b5d      	subs	r5, r3, r5
 8000890:	1c6b      	adds	r3, r5, #1
 8000892:	2b1f      	cmp	r3, #31
 8000894:	dd00      	ble.n	8000898 <__aeabi_dadd+0xa0>
 8000896:	e17c      	b.n	8000b92 <__aeabi_dadd+0x39a>
 8000898:	2120      	movs	r1, #32
 800089a:	1ac9      	subs	r1, r1, r3
 800089c:	003d      	movs	r5, r7
 800089e:	0030      	movs	r0, r6
 80008a0:	408f      	lsls	r7, r1
 80008a2:	4088      	lsls	r0, r1
 80008a4:	40dd      	lsrs	r5, r3
 80008a6:	1e79      	subs	r1, r7, #1
 80008a8:	418f      	sbcs	r7, r1
 80008aa:	0031      	movs	r1, r6
 80008ac:	2207      	movs	r2, #7
 80008ae:	4328      	orrs	r0, r5
 80008b0:	40d9      	lsrs	r1, r3
 80008b2:	2500      	movs	r5, #0
 80008b4:	4307      	orrs	r7, r0
 80008b6:	403a      	ands	r2, r7
 80008b8:	2a00      	cmp	r2, #0
 80008ba:	d009      	beq.n	80008d0 <__aeabi_dadd+0xd8>
 80008bc:	230f      	movs	r3, #15
 80008be:	403b      	ands	r3, r7
 80008c0:	2b04      	cmp	r3, #4
 80008c2:	d005      	beq.n	80008d0 <__aeabi_dadd+0xd8>
 80008c4:	1d3b      	adds	r3, r7, #4
 80008c6:	42bb      	cmp	r3, r7
 80008c8:	41bf      	sbcs	r7, r7
 80008ca:	427f      	negs	r7, r7
 80008cc:	19c9      	adds	r1, r1, r7
 80008ce:	001f      	movs	r7, r3
 80008d0:	020b      	lsls	r3, r1, #8
 80008d2:	d400      	bmi.n	80008d6 <__aeabi_dadd+0xde>
 80008d4:	e226      	b.n	8000d24 <__aeabi_dadd+0x52c>
 80008d6:	1c6a      	adds	r2, r5, #1
 80008d8:	4bc6      	ldr	r3, [pc, #792]	; (8000bf4 <__aeabi_dadd+0x3fc>)
 80008da:	0555      	lsls	r5, r2, #21
 80008dc:	0d6d      	lsrs	r5, r5, #21
 80008de:	429a      	cmp	r2, r3
 80008e0:	d100      	bne.n	80008e4 <__aeabi_dadd+0xec>
 80008e2:	e106      	b.n	8000af2 <__aeabi_dadd+0x2fa>
 80008e4:	4ac4      	ldr	r2, [pc, #784]	; (8000bf8 <__aeabi_dadd+0x400>)
 80008e6:	08ff      	lsrs	r7, r7, #3
 80008e8:	400a      	ands	r2, r1
 80008ea:	0753      	lsls	r3, r2, #29
 80008ec:	0252      	lsls	r2, r2, #9
 80008ee:	433b      	orrs	r3, r7
 80008f0:	0b12      	lsrs	r2, r2, #12
 80008f2:	e08e      	b.n	8000a12 <__aeabi_dadd+0x21a>
 80008f4:	2b00      	cmp	r3, #0
 80008f6:	d000      	beq.n	80008fa <__aeabi_dadd+0x102>
 80008f8:	e0b8      	b.n	8000a6c <__aeabi_dadd+0x274>
 80008fa:	1c6b      	adds	r3, r5, #1
 80008fc:	055b      	lsls	r3, r3, #21
 80008fe:	0d5b      	lsrs	r3, r3, #21
 8000900:	2b01      	cmp	r3, #1
 8000902:	dc00      	bgt.n	8000906 <__aeabi_dadd+0x10e>
 8000904:	e130      	b.n	8000b68 <__aeabi_dadd+0x370>
 8000906:	1a87      	subs	r7, r0, r2
 8000908:	4643      	mov	r3, r8
 800090a:	42b8      	cmp	r0, r7
 800090c:	41b6      	sbcs	r6, r6
 800090e:	1acb      	subs	r3, r1, r3
 8000910:	4276      	negs	r6, r6
 8000912:	1b9e      	subs	r6, r3, r6
 8000914:	0233      	lsls	r3, r6, #8
 8000916:	d500      	bpl.n	800091a <__aeabi_dadd+0x122>
 8000918:	e14c      	b.n	8000bb4 <__aeabi_dadd+0x3bc>
 800091a:	003b      	movs	r3, r7
 800091c:	4333      	orrs	r3, r6
 800091e:	d1a1      	bne.n	8000864 <__aeabi_dadd+0x6c>
 8000920:	2200      	movs	r2, #0
 8000922:	2400      	movs	r4, #0
 8000924:	2500      	movs	r5, #0
 8000926:	e070      	b.n	8000a0a <__aeabi_dadd+0x212>
 8000928:	2b00      	cmp	r3, #0
 800092a:	dc00      	bgt.n	800092e <__aeabi_dadd+0x136>
 800092c:	e0e5      	b.n	8000afa <__aeabi_dadd+0x302>
 800092e:	2e00      	cmp	r6, #0
 8000930:	d100      	bne.n	8000934 <__aeabi_dadd+0x13c>
 8000932:	e083      	b.n	8000a3c <__aeabi_dadd+0x244>
 8000934:	4eaf      	ldr	r6, [pc, #700]	; (8000bf4 <__aeabi_dadd+0x3fc>)
 8000936:	42b5      	cmp	r5, r6
 8000938:	d060      	beq.n	80009fc <__aeabi_dadd+0x204>
 800093a:	2680      	movs	r6, #128	; 0x80
 800093c:	0436      	lsls	r6, r6, #16
 800093e:	4337      	orrs	r7, r6
 8000940:	46b8      	mov	r8, r7
 8000942:	2b38      	cmp	r3, #56	; 0x38
 8000944:	dc00      	bgt.n	8000948 <__aeabi_dadd+0x150>
 8000946:	e13e      	b.n	8000bc6 <__aeabi_dadd+0x3ce>
 8000948:	4643      	mov	r3, r8
 800094a:	4313      	orrs	r3, r2
 800094c:	001f      	movs	r7, r3
 800094e:	1e7a      	subs	r2, r7, #1
 8000950:	4197      	sbcs	r7, r2
 8000952:	183f      	adds	r7, r7, r0
 8000954:	4287      	cmp	r7, r0
 8000956:	4180      	sbcs	r0, r0
 8000958:	4240      	negs	r0, r0
 800095a:	1809      	adds	r1, r1, r0
 800095c:	020b      	lsls	r3, r1, #8
 800095e:	d400      	bmi.n	8000962 <__aeabi_dadd+0x16a>
 8000960:	e0b0      	b.n	8000ac4 <__aeabi_dadd+0x2cc>
 8000962:	4ba4      	ldr	r3, [pc, #656]	; (8000bf4 <__aeabi_dadd+0x3fc>)
 8000964:	3501      	adds	r5, #1
 8000966:	429d      	cmp	r5, r3
 8000968:	d100      	bne.n	800096c <__aeabi_dadd+0x174>
 800096a:	e0c3      	b.n	8000af4 <__aeabi_dadd+0x2fc>
 800096c:	4aa2      	ldr	r2, [pc, #648]	; (8000bf8 <__aeabi_dadd+0x400>)
 800096e:	087b      	lsrs	r3, r7, #1
 8000970:	400a      	ands	r2, r1
 8000972:	2101      	movs	r1, #1
 8000974:	400f      	ands	r7, r1
 8000976:	431f      	orrs	r7, r3
 8000978:	0851      	lsrs	r1, r2, #1
 800097a:	07d3      	lsls	r3, r2, #31
 800097c:	2207      	movs	r2, #7
 800097e:	431f      	orrs	r7, r3
 8000980:	403a      	ands	r2, r7
 8000982:	e799      	b.n	80008b8 <__aeabi_dadd+0xc0>
 8000984:	4e9b      	ldr	r6, [pc, #620]	; (8000bf4 <__aeabi_dadd+0x3fc>)
 8000986:	42b5      	cmp	r5, r6
 8000988:	d038      	beq.n	80009fc <__aeabi_dadd+0x204>
 800098a:	2680      	movs	r6, #128	; 0x80
 800098c:	0436      	lsls	r6, r6, #16
 800098e:	4337      	orrs	r7, r6
 8000990:	46b8      	mov	r8, r7
 8000992:	2b38      	cmp	r3, #56	; 0x38
 8000994:	dd00      	ble.n	8000998 <__aeabi_dadd+0x1a0>
 8000996:	e0dc      	b.n	8000b52 <__aeabi_dadd+0x35a>
 8000998:	2b1f      	cmp	r3, #31
 800099a:	dc00      	bgt.n	800099e <__aeabi_dadd+0x1a6>
 800099c:	e130      	b.n	8000c00 <__aeabi_dadd+0x408>
 800099e:	001e      	movs	r6, r3
 80009a0:	4647      	mov	r7, r8
 80009a2:	3e20      	subs	r6, #32
 80009a4:	40f7      	lsrs	r7, r6
 80009a6:	46bc      	mov	ip, r7
 80009a8:	2b20      	cmp	r3, #32
 80009aa:	d004      	beq.n	80009b6 <__aeabi_dadd+0x1be>
 80009ac:	2640      	movs	r6, #64	; 0x40
 80009ae:	1af3      	subs	r3, r6, r3
 80009b0:	4646      	mov	r6, r8
 80009b2:	409e      	lsls	r6, r3
 80009b4:	4332      	orrs	r2, r6
 80009b6:	0017      	movs	r7, r2
 80009b8:	4663      	mov	r3, ip
 80009ba:	1e7a      	subs	r2, r7, #1
 80009bc:	4197      	sbcs	r7, r2
 80009be:	431f      	orrs	r7, r3
 80009c0:	e0cc      	b.n	8000b5c <__aeabi_dadd+0x364>
 80009c2:	2b00      	cmp	r3, #0
 80009c4:	d100      	bne.n	80009c8 <__aeabi_dadd+0x1d0>
 80009c6:	e204      	b.n	8000dd2 <__aeabi_dadd+0x5da>
 80009c8:	4643      	mov	r3, r8
 80009ca:	4313      	orrs	r3, r2
 80009cc:	d100      	bne.n	80009d0 <__aeabi_dadd+0x1d8>
 80009ce:	e159      	b.n	8000c84 <__aeabi_dadd+0x48c>
 80009d0:	074b      	lsls	r3, r1, #29
 80009d2:	08c0      	lsrs	r0, r0, #3
 80009d4:	4318      	orrs	r0, r3
 80009d6:	2380      	movs	r3, #128	; 0x80
 80009d8:	08c9      	lsrs	r1, r1, #3
 80009da:	031b      	lsls	r3, r3, #12
 80009dc:	4219      	tst	r1, r3
 80009de:	d008      	beq.n	80009f2 <__aeabi_dadd+0x1fa>
 80009e0:	4645      	mov	r5, r8
 80009e2:	08ed      	lsrs	r5, r5, #3
 80009e4:	421d      	tst	r5, r3
 80009e6:	d104      	bne.n	80009f2 <__aeabi_dadd+0x1fa>
 80009e8:	4643      	mov	r3, r8
 80009ea:	08d0      	lsrs	r0, r2, #3
 80009ec:	0759      	lsls	r1, r3, #29
 80009ee:	4308      	orrs	r0, r1
 80009f0:	0029      	movs	r1, r5
 80009f2:	0f42      	lsrs	r2, r0, #29
 80009f4:	00c9      	lsls	r1, r1, #3
 80009f6:	4d7f      	ldr	r5, [pc, #508]	; (8000bf4 <__aeabi_dadd+0x3fc>)
 80009f8:	4311      	orrs	r1, r2
 80009fa:	00c0      	lsls	r0, r0, #3
 80009fc:	074b      	lsls	r3, r1, #29
 80009fe:	08ca      	lsrs	r2, r1, #3
 8000a00:	497c      	ldr	r1, [pc, #496]	; (8000bf4 <__aeabi_dadd+0x3fc>)
 8000a02:	08c0      	lsrs	r0, r0, #3
 8000a04:	4303      	orrs	r3, r0
 8000a06:	428d      	cmp	r5, r1
 8000a08:	d068      	beq.n	8000adc <__aeabi_dadd+0x2e4>
 8000a0a:	0312      	lsls	r2, r2, #12
 8000a0c:	056d      	lsls	r5, r5, #21
 8000a0e:	0b12      	lsrs	r2, r2, #12
 8000a10:	0d6d      	lsrs	r5, r5, #21
 8000a12:	2100      	movs	r1, #0
 8000a14:	0312      	lsls	r2, r2, #12
 8000a16:	0018      	movs	r0, r3
 8000a18:	0b13      	lsrs	r3, r2, #12
 8000a1a:	0d0a      	lsrs	r2, r1, #20
 8000a1c:	0512      	lsls	r2, r2, #20
 8000a1e:	431a      	orrs	r2, r3
 8000a20:	4b76      	ldr	r3, [pc, #472]	; (8000bfc <__aeabi_dadd+0x404>)
 8000a22:	052d      	lsls	r5, r5, #20
 8000a24:	4013      	ands	r3, r2
 8000a26:	432b      	orrs	r3, r5
 8000a28:	005b      	lsls	r3, r3, #1
 8000a2a:	07e4      	lsls	r4, r4, #31
 8000a2c:	085b      	lsrs	r3, r3, #1
 8000a2e:	4323      	orrs	r3, r4
 8000a30:	0019      	movs	r1, r3
 8000a32:	bc1c      	pop	{r2, r3, r4}
 8000a34:	4690      	mov	r8, r2
 8000a36:	4699      	mov	r9, r3
 8000a38:	46a2      	mov	sl, r4
 8000a3a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a3c:	003e      	movs	r6, r7
 8000a3e:	4316      	orrs	r6, r2
 8000a40:	d012      	beq.n	8000a68 <__aeabi_dadd+0x270>
 8000a42:	1e5e      	subs	r6, r3, #1
 8000a44:	2e00      	cmp	r6, #0
 8000a46:	d000      	beq.n	8000a4a <__aeabi_dadd+0x252>
 8000a48:	e100      	b.n	8000c4c <__aeabi_dadd+0x454>
 8000a4a:	1887      	adds	r7, r0, r2
 8000a4c:	4287      	cmp	r7, r0
 8000a4e:	4180      	sbcs	r0, r0
 8000a50:	4441      	add	r1, r8
 8000a52:	4240      	negs	r0, r0
 8000a54:	1809      	adds	r1, r1, r0
 8000a56:	2501      	movs	r5, #1
 8000a58:	020b      	lsls	r3, r1, #8
 8000a5a:	d533      	bpl.n	8000ac4 <__aeabi_dadd+0x2cc>
 8000a5c:	2502      	movs	r5, #2
 8000a5e:	e785      	b.n	800096c <__aeabi_dadd+0x174>
 8000a60:	4664      	mov	r4, ip
 8000a62:	0033      	movs	r3, r6
 8000a64:	4641      	mov	r1, r8
 8000a66:	0010      	movs	r0, r2
 8000a68:	001d      	movs	r5, r3
 8000a6a:	e7c7      	b.n	80009fc <__aeabi_dadd+0x204>
 8000a6c:	2d00      	cmp	r5, #0
 8000a6e:	d000      	beq.n	8000a72 <__aeabi_dadd+0x27a>
 8000a70:	e0da      	b.n	8000c28 <__aeabi_dadd+0x430>
 8000a72:	000c      	movs	r4, r1
 8000a74:	4304      	orrs	r4, r0
 8000a76:	d0f3      	beq.n	8000a60 <__aeabi_dadd+0x268>
 8000a78:	1c5c      	adds	r4, r3, #1
 8000a7a:	d100      	bne.n	8000a7e <__aeabi_dadd+0x286>
 8000a7c:	e19f      	b.n	8000dbe <__aeabi_dadd+0x5c6>
 8000a7e:	4c5d      	ldr	r4, [pc, #372]	; (8000bf4 <__aeabi_dadd+0x3fc>)
 8000a80:	42a6      	cmp	r6, r4
 8000a82:	d100      	bne.n	8000a86 <__aeabi_dadd+0x28e>
 8000a84:	e12f      	b.n	8000ce6 <__aeabi_dadd+0x4ee>
 8000a86:	43db      	mvns	r3, r3
 8000a88:	2b38      	cmp	r3, #56	; 0x38
 8000a8a:	dd00      	ble.n	8000a8e <__aeabi_dadd+0x296>
 8000a8c:	e166      	b.n	8000d5c <__aeabi_dadd+0x564>
 8000a8e:	2b1f      	cmp	r3, #31
 8000a90:	dd00      	ble.n	8000a94 <__aeabi_dadd+0x29c>
 8000a92:	e183      	b.n	8000d9c <__aeabi_dadd+0x5a4>
 8000a94:	2420      	movs	r4, #32
 8000a96:	0005      	movs	r5, r0
 8000a98:	1ae4      	subs	r4, r4, r3
 8000a9a:	000f      	movs	r7, r1
 8000a9c:	40dd      	lsrs	r5, r3
 8000a9e:	40d9      	lsrs	r1, r3
 8000aa0:	40a0      	lsls	r0, r4
 8000aa2:	4643      	mov	r3, r8
 8000aa4:	40a7      	lsls	r7, r4
 8000aa6:	1a5b      	subs	r3, r3, r1
 8000aa8:	1e44      	subs	r4, r0, #1
 8000aaa:	41a0      	sbcs	r0, r4
 8000aac:	4698      	mov	r8, r3
 8000aae:	432f      	orrs	r7, r5
 8000ab0:	4338      	orrs	r0, r7
 8000ab2:	1a17      	subs	r7, r2, r0
 8000ab4:	42ba      	cmp	r2, r7
 8000ab6:	4192      	sbcs	r2, r2
 8000ab8:	4643      	mov	r3, r8
 8000aba:	4252      	negs	r2, r2
 8000abc:	1a99      	subs	r1, r3, r2
 8000abe:	4664      	mov	r4, ip
 8000ac0:	0035      	movs	r5, r6
 8000ac2:	e6ca      	b.n	800085a <__aeabi_dadd+0x62>
 8000ac4:	2207      	movs	r2, #7
 8000ac6:	403a      	ands	r2, r7
 8000ac8:	2a00      	cmp	r2, #0
 8000aca:	d000      	beq.n	8000ace <__aeabi_dadd+0x2d6>
 8000acc:	e6f6      	b.n	80008bc <__aeabi_dadd+0xc4>
 8000ace:	074b      	lsls	r3, r1, #29
 8000ad0:	08ca      	lsrs	r2, r1, #3
 8000ad2:	4948      	ldr	r1, [pc, #288]	; (8000bf4 <__aeabi_dadd+0x3fc>)
 8000ad4:	08ff      	lsrs	r7, r7, #3
 8000ad6:	433b      	orrs	r3, r7
 8000ad8:	428d      	cmp	r5, r1
 8000ada:	d196      	bne.n	8000a0a <__aeabi_dadd+0x212>
 8000adc:	0019      	movs	r1, r3
 8000ade:	4311      	orrs	r1, r2
 8000ae0:	d100      	bne.n	8000ae4 <__aeabi_dadd+0x2ec>
 8000ae2:	e19e      	b.n	8000e22 <__aeabi_dadd+0x62a>
 8000ae4:	2180      	movs	r1, #128	; 0x80
 8000ae6:	0309      	lsls	r1, r1, #12
 8000ae8:	430a      	orrs	r2, r1
 8000aea:	0312      	lsls	r2, r2, #12
 8000aec:	0b12      	lsrs	r2, r2, #12
 8000aee:	4d41      	ldr	r5, [pc, #260]	; (8000bf4 <__aeabi_dadd+0x3fc>)
 8000af0:	e78f      	b.n	8000a12 <__aeabi_dadd+0x21a>
 8000af2:	0015      	movs	r5, r2
 8000af4:	2200      	movs	r2, #0
 8000af6:	2300      	movs	r3, #0
 8000af8:	e78b      	b.n	8000a12 <__aeabi_dadd+0x21a>
 8000afa:	2b00      	cmp	r3, #0
 8000afc:	d000      	beq.n	8000b00 <__aeabi_dadd+0x308>
 8000afe:	e0c7      	b.n	8000c90 <__aeabi_dadd+0x498>
 8000b00:	1c6b      	adds	r3, r5, #1
 8000b02:	055f      	lsls	r7, r3, #21
 8000b04:	0d7f      	lsrs	r7, r7, #21
 8000b06:	2f01      	cmp	r7, #1
 8000b08:	dc00      	bgt.n	8000b0c <__aeabi_dadd+0x314>
 8000b0a:	e0f1      	b.n	8000cf0 <__aeabi_dadd+0x4f8>
 8000b0c:	4d39      	ldr	r5, [pc, #228]	; (8000bf4 <__aeabi_dadd+0x3fc>)
 8000b0e:	42ab      	cmp	r3, r5
 8000b10:	d100      	bne.n	8000b14 <__aeabi_dadd+0x31c>
 8000b12:	e0b9      	b.n	8000c88 <__aeabi_dadd+0x490>
 8000b14:	1885      	adds	r5, r0, r2
 8000b16:	000a      	movs	r2, r1
 8000b18:	4285      	cmp	r5, r0
 8000b1a:	4189      	sbcs	r1, r1
 8000b1c:	4442      	add	r2, r8
 8000b1e:	4249      	negs	r1, r1
 8000b20:	1851      	adds	r1, r2, r1
 8000b22:	2207      	movs	r2, #7
 8000b24:	07cf      	lsls	r7, r1, #31
 8000b26:	086d      	lsrs	r5, r5, #1
 8000b28:	432f      	orrs	r7, r5
 8000b2a:	0849      	lsrs	r1, r1, #1
 8000b2c:	403a      	ands	r2, r7
 8000b2e:	001d      	movs	r5, r3
 8000b30:	e6c2      	b.n	80008b8 <__aeabi_dadd+0xc0>
 8000b32:	2207      	movs	r2, #7
 8000b34:	4930      	ldr	r1, [pc, #192]	; (8000bf8 <__aeabi_dadd+0x400>)
 8000b36:	1aed      	subs	r5, r5, r3
 8000b38:	4031      	ands	r1, r6
 8000b3a:	403a      	ands	r2, r7
 8000b3c:	e6bc      	b.n	80008b8 <__aeabi_dadd+0xc0>
 8000b3e:	003e      	movs	r6, r7
 8000b40:	3828      	subs	r0, #40	; 0x28
 8000b42:	4086      	lsls	r6, r0
 8000b44:	2700      	movs	r7, #0
 8000b46:	e69f      	b.n	8000888 <__aeabi_dadd+0x90>
 8000b48:	0038      	movs	r0, r7
 8000b4a:	f000 ff1f 	bl	800198c <__clzsi2>
 8000b4e:	3020      	adds	r0, #32
 8000b50:	e68e      	b.n	8000870 <__aeabi_dadd+0x78>
 8000b52:	4643      	mov	r3, r8
 8000b54:	4313      	orrs	r3, r2
 8000b56:	001f      	movs	r7, r3
 8000b58:	1e7a      	subs	r2, r7, #1
 8000b5a:	4197      	sbcs	r7, r2
 8000b5c:	1bc7      	subs	r7, r0, r7
 8000b5e:	42b8      	cmp	r0, r7
 8000b60:	4180      	sbcs	r0, r0
 8000b62:	4240      	negs	r0, r0
 8000b64:	1a09      	subs	r1, r1, r0
 8000b66:	e678      	b.n	800085a <__aeabi_dadd+0x62>
 8000b68:	000e      	movs	r6, r1
 8000b6a:	003b      	movs	r3, r7
 8000b6c:	4306      	orrs	r6, r0
 8000b6e:	4313      	orrs	r3, r2
 8000b70:	2d00      	cmp	r5, #0
 8000b72:	d161      	bne.n	8000c38 <__aeabi_dadd+0x440>
 8000b74:	2e00      	cmp	r6, #0
 8000b76:	d000      	beq.n	8000b7a <__aeabi_dadd+0x382>
 8000b78:	e0f4      	b.n	8000d64 <__aeabi_dadd+0x56c>
 8000b7a:	2b00      	cmp	r3, #0
 8000b7c:	d100      	bne.n	8000b80 <__aeabi_dadd+0x388>
 8000b7e:	e11b      	b.n	8000db8 <__aeabi_dadd+0x5c0>
 8000b80:	4664      	mov	r4, ip
 8000b82:	0039      	movs	r1, r7
 8000b84:	0010      	movs	r0, r2
 8000b86:	e739      	b.n	80009fc <__aeabi_dadd+0x204>
 8000b88:	4f1a      	ldr	r7, [pc, #104]	; (8000bf4 <__aeabi_dadd+0x3fc>)
 8000b8a:	42bb      	cmp	r3, r7
 8000b8c:	d07a      	beq.n	8000c84 <__aeabi_dadd+0x48c>
 8000b8e:	0033      	movs	r3, r6
 8000b90:	e6ff      	b.n	8000992 <__aeabi_dadd+0x19a>
 8000b92:	0030      	movs	r0, r6
 8000b94:	3d1f      	subs	r5, #31
 8000b96:	40e8      	lsrs	r0, r5
 8000b98:	2b20      	cmp	r3, #32
 8000b9a:	d003      	beq.n	8000ba4 <__aeabi_dadd+0x3ac>
 8000b9c:	2140      	movs	r1, #64	; 0x40
 8000b9e:	1acb      	subs	r3, r1, r3
 8000ba0:	409e      	lsls	r6, r3
 8000ba2:	4337      	orrs	r7, r6
 8000ba4:	1e7b      	subs	r3, r7, #1
 8000ba6:	419f      	sbcs	r7, r3
 8000ba8:	2207      	movs	r2, #7
 8000baa:	4307      	orrs	r7, r0
 8000bac:	403a      	ands	r2, r7
 8000bae:	2100      	movs	r1, #0
 8000bb0:	2500      	movs	r5, #0
 8000bb2:	e789      	b.n	8000ac8 <__aeabi_dadd+0x2d0>
 8000bb4:	1a17      	subs	r7, r2, r0
 8000bb6:	4643      	mov	r3, r8
 8000bb8:	42ba      	cmp	r2, r7
 8000bba:	41b6      	sbcs	r6, r6
 8000bbc:	1a59      	subs	r1, r3, r1
 8000bbe:	4276      	negs	r6, r6
 8000bc0:	1b8e      	subs	r6, r1, r6
 8000bc2:	4664      	mov	r4, ip
 8000bc4:	e64e      	b.n	8000864 <__aeabi_dadd+0x6c>
 8000bc6:	2b1f      	cmp	r3, #31
 8000bc8:	dd00      	ble.n	8000bcc <__aeabi_dadd+0x3d4>
 8000bca:	e0ad      	b.n	8000d28 <__aeabi_dadd+0x530>
 8000bcc:	2620      	movs	r6, #32
 8000bce:	4647      	mov	r7, r8
 8000bd0:	1af6      	subs	r6, r6, r3
 8000bd2:	40b7      	lsls	r7, r6
 8000bd4:	46b9      	mov	r9, r7
 8000bd6:	0017      	movs	r7, r2
 8000bd8:	46b2      	mov	sl, r6
 8000bda:	40df      	lsrs	r7, r3
 8000bdc:	464e      	mov	r6, r9
 8000bde:	433e      	orrs	r6, r7
 8000be0:	0037      	movs	r7, r6
 8000be2:	4656      	mov	r6, sl
 8000be4:	40b2      	lsls	r2, r6
 8000be6:	1e56      	subs	r6, r2, #1
 8000be8:	41b2      	sbcs	r2, r6
 8000bea:	4317      	orrs	r7, r2
 8000bec:	4642      	mov	r2, r8
 8000bee:	40da      	lsrs	r2, r3
 8000bf0:	1889      	adds	r1, r1, r2
 8000bf2:	e6ae      	b.n	8000952 <__aeabi_dadd+0x15a>
 8000bf4:	000007ff 	.word	0x000007ff
 8000bf8:	ff7fffff 	.word	0xff7fffff
 8000bfc:	800fffff 	.word	0x800fffff
 8000c00:	2620      	movs	r6, #32
 8000c02:	4647      	mov	r7, r8
 8000c04:	1af6      	subs	r6, r6, r3
 8000c06:	40b7      	lsls	r7, r6
 8000c08:	46b9      	mov	r9, r7
 8000c0a:	0017      	movs	r7, r2
 8000c0c:	46b2      	mov	sl, r6
 8000c0e:	40df      	lsrs	r7, r3
 8000c10:	464e      	mov	r6, r9
 8000c12:	433e      	orrs	r6, r7
 8000c14:	0037      	movs	r7, r6
 8000c16:	4656      	mov	r6, sl
 8000c18:	40b2      	lsls	r2, r6
 8000c1a:	1e56      	subs	r6, r2, #1
 8000c1c:	41b2      	sbcs	r2, r6
 8000c1e:	4317      	orrs	r7, r2
 8000c20:	4642      	mov	r2, r8
 8000c22:	40da      	lsrs	r2, r3
 8000c24:	1a89      	subs	r1, r1, r2
 8000c26:	e799      	b.n	8000b5c <__aeabi_dadd+0x364>
 8000c28:	4c7f      	ldr	r4, [pc, #508]	; (8000e28 <__aeabi_dadd+0x630>)
 8000c2a:	42a6      	cmp	r6, r4
 8000c2c:	d05b      	beq.n	8000ce6 <__aeabi_dadd+0x4ee>
 8000c2e:	2480      	movs	r4, #128	; 0x80
 8000c30:	0424      	lsls	r4, r4, #16
 8000c32:	425b      	negs	r3, r3
 8000c34:	4321      	orrs	r1, r4
 8000c36:	e727      	b.n	8000a88 <__aeabi_dadd+0x290>
 8000c38:	2e00      	cmp	r6, #0
 8000c3a:	d10c      	bne.n	8000c56 <__aeabi_dadd+0x45e>
 8000c3c:	2b00      	cmp	r3, #0
 8000c3e:	d100      	bne.n	8000c42 <__aeabi_dadd+0x44a>
 8000c40:	e0cb      	b.n	8000dda <__aeabi_dadd+0x5e2>
 8000c42:	4664      	mov	r4, ip
 8000c44:	0039      	movs	r1, r7
 8000c46:	0010      	movs	r0, r2
 8000c48:	4d77      	ldr	r5, [pc, #476]	; (8000e28 <__aeabi_dadd+0x630>)
 8000c4a:	e6d7      	b.n	80009fc <__aeabi_dadd+0x204>
 8000c4c:	4f76      	ldr	r7, [pc, #472]	; (8000e28 <__aeabi_dadd+0x630>)
 8000c4e:	42bb      	cmp	r3, r7
 8000c50:	d018      	beq.n	8000c84 <__aeabi_dadd+0x48c>
 8000c52:	0033      	movs	r3, r6
 8000c54:	e675      	b.n	8000942 <__aeabi_dadd+0x14a>
 8000c56:	2b00      	cmp	r3, #0
 8000c58:	d014      	beq.n	8000c84 <__aeabi_dadd+0x48c>
 8000c5a:	074b      	lsls	r3, r1, #29
 8000c5c:	08c0      	lsrs	r0, r0, #3
 8000c5e:	4318      	orrs	r0, r3
 8000c60:	2380      	movs	r3, #128	; 0x80
 8000c62:	08c9      	lsrs	r1, r1, #3
 8000c64:	031b      	lsls	r3, r3, #12
 8000c66:	4219      	tst	r1, r3
 8000c68:	d007      	beq.n	8000c7a <__aeabi_dadd+0x482>
 8000c6a:	08fc      	lsrs	r4, r7, #3
 8000c6c:	421c      	tst	r4, r3
 8000c6e:	d104      	bne.n	8000c7a <__aeabi_dadd+0x482>
 8000c70:	0779      	lsls	r1, r7, #29
 8000c72:	08d0      	lsrs	r0, r2, #3
 8000c74:	4308      	orrs	r0, r1
 8000c76:	46e1      	mov	r9, ip
 8000c78:	0021      	movs	r1, r4
 8000c7a:	464c      	mov	r4, r9
 8000c7c:	0f42      	lsrs	r2, r0, #29
 8000c7e:	00c9      	lsls	r1, r1, #3
 8000c80:	4311      	orrs	r1, r2
 8000c82:	00c0      	lsls	r0, r0, #3
 8000c84:	4d68      	ldr	r5, [pc, #416]	; (8000e28 <__aeabi_dadd+0x630>)
 8000c86:	e6b9      	b.n	80009fc <__aeabi_dadd+0x204>
 8000c88:	001d      	movs	r5, r3
 8000c8a:	2200      	movs	r2, #0
 8000c8c:	2300      	movs	r3, #0
 8000c8e:	e6c0      	b.n	8000a12 <__aeabi_dadd+0x21a>
 8000c90:	2d00      	cmp	r5, #0
 8000c92:	d15b      	bne.n	8000d4c <__aeabi_dadd+0x554>
 8000c94:	000d      	movs	r5, r1
 8000c96:	4305      	orrs	r5, r0
 8000c98:	d100      	bne.n	8000c9c <__aeabi_dadd+0x4a4>
 8000c9a:	e6e2      	b.n	8000a62 <__aeabi_dadd+0x26a>
 8000c9c:	1c5d      	adds	r5, r3, #1
 8000c9e:	d100      	bne.n	8000ca2 <__aeabi_dadd+0x4aa>
 8000ca0:	e0b0      	b.n	8000e04 <__aeabi_dadd+0x60c>
 8000ca2:	4d61      	ldr	r5, [pc, #388]	; (8000e28 <__aeabi_dadd+0x630>)
 8000ca4:	42ae      	cmp	r6, r5
 8000ca6:	d01f      	beq.n	8000ce8 <__aeabi_dadd+0x4f0>
 8000ca8:	43db      	mvns	r3, r3
 8000caa:	2b38      	cmp	r3, #56	; 0x38
 8000cac:	dc71      	bgt.n	8000d92 <__aeabi_dadd+0x59a>
 8000cae:	2b1f      	cmp	r3, #31
 8000cb0:	dd00      	ble.n	8000cb4 <__aeabi_dadd+0x4bc>
 8000cb2:	e096      	b.n	8000de2 <__aeabi_dadd+0x5ea>
 8000cb4:	2520      	movs	r5, #32
 8000cb6:	000f      	movs	r7, r1
 8000cb8:	1aed      	subs	r5, r5, r3
 8000cba:	40af      	lsls	r7, r5
 8000cbc:	46b9      	mov	r9, r7
 8000cbe:	0007      	movs	r7, r0
 8000cc0:	46aa      	mov	sl, r5
 8000cc2:	40df      	lsrs	r7, r3
 8000cc4:	464d      	mov	r5, r9
 8000cc6:	433d      	orrs	r5, r7
 8000cc8:	002f      	movs	r7, r5
 8000cca:	4655      	mov	r5, sl
 8000ccc:	40a8      	lsls	r0, r5
 8000cce:	40d9      	lsrs	r1, r3
 8000cd0:	1e45      	subs	r5, r0, #1
 8000cd2:	41a8      	sbcs	r0, r5
 8000cd4:	4488      	add	r8, r1
 8000cd6:	4307      	orrs	r7, r0
 8000cd8:	18bf      	adds	r7, r7, r2
 8000cda:	4297      	cmp	r7, r2
 8000cdc:	4192      	sbcs	r2, r2
 8000cde:	4251      	negs	r1, r2
 8000ce0:	4441      	add	r1, r8
 8000ce2:	0035      	movs	r5, r6
 8000ce4:	e63a      	b.n	800095c <__aeabi_dadd+0x164>
 8000ce6:	4664      	mov	r4, ip
 8000ce8:	0035      	movs	r5, r6
 8000cea:	4641      	mov	r1, r8
 8000cec:	0010      	movs	r0, r2
 8000cee:	e685      	b.n	80009fc <__aeabi_dadd+0x204>
 8000cf0:	000b      	movs	r3, r1
 8000cf2:	4303      	orrs	r3, r0
 8000cf4:	2d00      	cmp	r5, #0
 8000cf6:	d000      	beq.n	8000cfa <__aeabi_dadd+0x502>
 8000cf8:	e663      	b.n	80009c2 <__aeabi_dadd+0x1ca>
 8000cfa:	2b00      	cmp	r3, #0
 8000cfc:	d0f5      	beq.n	8000cea <__aeabi_dadd+0x4f2>
 8000cfe:	4643      	mov	r3, r8
 8000d00:	4313      	orrs	r3, r2
 8000d02:	d100      	bne.n	8000d06 <__aeabi_dadd+0x50e>
 8000d04:	e67a      	b.n	80009fc <__aeabi_dadd+0x204>
 8000d06:	1887      	adds	r7, r0, r2
 8000d08:	4287      	cmp	r7, r0
 8000d0a:	4180      	sbcs	r0, r0
 8000d0c:	2207      	movs	r2, #7
 8000d0e:	4441      	add	r1, r8
 8000d10:	4240      	negs	r0, r0
 8000d12:	1809      	adds	r1, r1, r0
 8000d14:	403a      	ands	r2, r7
 8000d16:	020b      	lsls	r3, r1, #8
 8000d18:	d400      	bmi.n	8000d1c <__aeabi_dadd+0x524>
 8000d1a:	e6d5      	b.n	8000ac8 <__aeabi_dadd+0x2d0>
 8000d1c:	4b43      	ldr	r3, [pc, #268]	; (8000e2c <__aeabi_dadd+0x634>)
 8000d1e:	3501      	adds	r5, #1
 8000d20:	4019      	ands	r1, r3
 8000d22:	e5c9      	b.n	80008b8 <__aeabi_dadd+0xc0>
 8000d24:	0038      	movs	r0, r7
 8000d26:	e669      	b.n	80009fc <__aeabi_dadd+0x204>
 8000d28:	001e      	movs	r6, r3
 8000d2a:	4647      	mov	r7, r8
 8000d2c:	3e20      	subs	r6, #32
 8000d2e:	40f7      	lsrs	r7, r6
 8000d30:	46bc      	mov	ip, r7
 8000d32:	2b20      	cmp	r3, #32
 8000d34:	d004      	beq.n	8000d40 <__aeabi_dadd+0x548>
 8000d36:	2640      	movs	r6, #64	; 0x40
 8000d38:	1af3      	subs	r3, r6, r3
 8000d3a:	4646      	mov	r6, r8
 8000d3c:	409e      	lsls	r6, r3
 8000d3e:	4332      	orrs	r2, r6
 8000d40:	0017      	movs	r7, r2
 8000d42:	4663      	mov	r3, ip
 8000d44:	1e7a      	subs	r2, r7, #1
 8000d46:	4197      	sbcs	r7, r2
 8000d48:	431f      	orrs	r7, r3
 8000d4a:	e602      	b.n	8000952 <__aeabi_dadd+0x15a>
 8000d4c:	4d36      	ldr	r5, [pc, #216]	; (8000e28 <__aeabi_dadd+0x630>)
 8000d4e:	42ae      	cmp	r6, r5
 8000d50:	d0ca      	beq.n	8000ce8 <__aeabi_dadd+0x4f0>
 8000d52:	2580      	movs	r5, #128	; 0x80
 8000d54:	042d      	lsls	r5, r5, #16
 8000d56:	425b      	negs	r3, r3
 8000d58:	4329      	orrs	r1, r5
 8000d5a:	e7a6      	b.n	8000caa <__aeabi_dadd+0x4b2>
 8000d5c:	4308      	orrs	r0, r1
 8000d5e:	1e41      	subs	r1, r0, #1
 8000d60:	4188      	sbcs	r0, r1
 8000d62:	e6a6      	b.n	8000ab2 <__aeabi_dadd+0x2ba>
 8000d64:	2b00      	cmp	r3, #0
 8000d66:	d100      	bne.n	8000d6a <__aeabi_dadd+0x572>
 8000d68:	e648      	b.n	80009fc <__aeabi_dadd+0x204>
 8000d6a:	1a87      	subs	r7, r0, r2
 8000d6c:	4643      	mov	r3, r8
 8000d6e:	42b8      	cmp	r0, r7
 8000d70:	41b6      	sbcs	r6, r6
 8000d72:	1acb      	subs	r3, r1, r3
 8000d74:	4276      	negs	r6, r6
 8000d76:	1b9e      	subs	r6, r3, r6
 8000d78:	0233      	lsls	r3, r6, #8
 8000d7a:	d54b      	bpl.n	8000e14 <__aeabi_dadd+0x61c>
 8000d7c:	1a17      	subs	r7, r2, r0
 8000d7e:	4643      	mov	r3, r8
 8000d80:	42ba      	cmp	r2, r7
 8000d82:	4192      	sbcs	r2, r2
 8000d84:	1a59      	subs	r1, r3, r1
 8000d86:	4252      	negs	r2, r2
 8000d88:	1a89      	subs	r1, r1, r2
 8000d8a:	2207      	movs	r2, #7
 8000d8c:	4664      	mov	r4, ip
 8000d8e:	403a      	ands	r2, r7
 8000d90:	e592      	b.n	80008b8 <__aeabi_dadd+0xc0>
 8000d92:	4301      	orrs	r1, r0
 8000d94:	000f      	movs	r7, r1
 8000d96:	1e79      	subs	r1, r7, #1
 8000d98:	418f      	sbcs	r7, r1
 8000d9a:	e79d      	b.n	8000cd8 <__aeabi_dadd+0x4e0>
 8000d9c:	001c      	movs	r4, r3
 8000d9e:	000f      	movs	r7, r1
 8000da0:	3c20      	subs	r4, #32
 8000da2:	40e7      	lsrs	r7, r4
 8000da4:	2b20      	cmp	r3, #32
 8000da6:	d003      	beq.n	8000db0 <__aeabi_dadd+0x5b8>
 8000da8:	2440      	movs	r4, #64	; 0x40
 8000daa:	1ae3      	subs	r3, r4, r3
 8000dac:	4099      	lsls	r1, r3
 8000dae:	4308      	orrs	r0, r1
 8000db0:	1e41      	subs	r1, r0, #1
 8000db2:	4188      	sbcs	r0, r1
 8000db4:	4338      	orrs	r0, r7
 8000db6:	e67c      	b.n	8000ab2 <__aeabi_dadd+0x2ba>
 8000db8:	2200      	movs	r2, #0
 8000dba:	2400      	movs	r4, #0
 8000dbc:	e625      	b.n	8000a0a <__aeabi_dadd+0x212>
 8000dbe:	1a17      	subs	r7, r2, r0
 8000dc0:	4643      	mov	r3, r8
 8000dc2:	42ba      	cmp	r2, r7
 8000dc4:	4192      	sbcs	r2, r2
 8000dc6:	1a59      	subs	r1, r3, r1
 8000dc8:	4252      	negs	r2, r2
 8000dca:	1a89      	subs	r1, r1, r2
 8000dcc:	4664      	mov	r4, ip
 8000dce:	0035      	movs	r5, r6
 8000dd0:	e543      	b.n	800085a <__aeabi_dadd+0x62>
 8000dd2:	4641      	mov	r1, r8
 8000dd4:	0010      	movs	r0, r2
 8000dd6:	4d14      	ldr	r5, [pc, #80]	; (8000e28 <__aeabi_dadd+0x630>)
 8000dd8:	e610      	b.n	80009fc <__aeabi_dadd+0x204>
 8000dda:	2280      	movs	r2, #128	; 0x80
 8000ddc:	2400      	movs	r4, #0
 8000dde:	0312      	lsls	r2, r2, #12
 8000de0:	e680      	b.n	8000ae4 <__aeabi_dadd+0x2ec>
 8000de2:	001d      	movs	r5, r3
 8000de4:	000f      	movs	r7, r1
 8000de6:	3d20      	subs	r5, #32
 8000de8:	40ef      	lsrs	r7, r5
 8000dea:	46bc      	mov	ip, r7
 8000dec:	2b20      	cmp	r3, #32
 8000dee:	d003      	beq.n	8000df8 <__aeabi_dadd+0x600>
 8000df0:	2540      	movs	r5, #64	; 0x40
 8000df2:	1aeb      	subs	r3, r5, r3
 8000df4:	4099      	lsls	r1, r3
 8000df6:	4308      	orrs	r0, r1
 8000df8:	0007      	movs	r7, r0
 8000dfa:	4663      	mov	r3, ip
 8000dfc:	1e78      	subs	r0, r7, #1
 8000dfe:	4187      	sbcs	r7, r0
 8000e00:	431f      	orrs	r7, r3
 8000e02:	e769      	b.n	8000cd8 <__aeabi_dadd+0x4e0>
 8000e04:	1887      	adds	r7, r0, r2
 8000e06:	4297      	cmp	r7, r2
 8000e08:	419b      	sbcs	r3, r3
 8000e0a:	4441      	add	r1, r8
 8000e0c:	425b      	negs	r3, r3
 8000e0e:	18c9      	adds	r1, r1, r3
 8000e10:	0035      	movs	r5, r6
 8000e12:	e5a3      	b.n	800095c <__aeabi_dadd+0x164>
 8000e14:	003b      	movs	r3, r7
 8000e16:	4333      	orrs	r3, r6
 8000e18:	d0ce      	beq.n	8000db8 <__aeabi_dadd+0x5c0>
 8000e1a:	2207      	movs	r2, #7
 8000e1c:	0031      	movs	r1, r6
 8000e1e:	403a      	ands	r2, r7
 8000e20:	e652      	b.n	8000ac8 <__aeabi_dadd+0x2d0>
 8000e22:	2300      	movs	r3, #0
 8000e24:	001a      	movs	r2, r3
 8000e26:	e5f4      	b.n	8000a12 <__aeabi_dadd+0x21a>
 8000e28:	000007ff 	.word	0x000007ff
 8000e2c:	ff7fffff 	.word	0xff7fffff

08000e30 <__aeabi_ddiv>:
 8000e30:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000e32:	4657      	mov	r7, sl
 8000e34:	46de      	mov	lr, fp
 8000e36:	464e      	mov	r6, r9
 8000e38:	4645      	mov	r5, r8
 8000e3a:	b5e0      	push	{r5, r6, r7, lr}
 8000e3c:	4683      	mov	fp, r0
 8000e3e:	0007      	movs	r7, r0
 8000e40:	030e      	lsls	r6, r1, #12
 8000e42:	0048      	lsls	r0, r1, #1
 8000e44:	b085      	sub	sp, #20
 8000e46:	4692      	mov	sl, r2
 8000e48:	001c      	movs	r4, r3
 8000e4a:	0b36      	lsrs	r6, r6, #12
 8000e4c:	0d40      	lsrs	r0, r0, #21
 8000e4e:	0fcd      	lsrs	r5, r1, #31
 8000e50:	2800      	cmp	r0, #0
 8000e52:	d100      	bne.n	8000e56 <__aeabi_ddiv+0x26>
 8000e54:	e09d      	b.n	8000f92 <__aeabi_ddiv+0x162>
 8000e56:	4b95      	ldr	r3, [pc, #596]	; (80010ac <__aeabi_ddiv+0x27c>)
 8000e58:	4298      	cmp	r0, r3
 8000e5a:	d039      	beq.n	8000ed0 <__aeabi_ddiv+0xa0>
 8000e5c:	2380      	movs	r3, #128	; 0x80
 8000e5e:	00f6      	lsls	r6, r6, #3
 8000e60:	041b      	lsls	r3, r3, #16
 8000e62:	431e      	orrs	r6, r3
 8000e64:	4a92      	ldr	r2, [pc, #584]	; (80010b0 <__aeabi_ddiv+0x280>)
 8000e66:	0f7b      	lsrs	r3, r7, #29
 8000e68:	4333      	orrs	r3, r6
 8000e6a:	4699      	mov	r9, r3
 8000e6c:	4694      	mov	ip, r2
 8000e6e:	0003      	movs	r3, r0
 8000e70:	4463      	add	r3, ip
 8000e72:	9300      	str	r3, [sp, #0]
 8000e74:	2300      	movs	r3, #0
 8000e76:	2600      	movs	r6, #0
 8000e78:	00ff      	lsls	r7, r7, #3
 8000e7a:	9302      	str	r3, [sp, #8]
 8000e7c:	0323      	lsls	r3, r4, #12
 8000e7e:	0b1b      	lsrs	r3, r3, #12
 8000e80:	4698      	mov	r8, r3
 8000e82:	0063      	lsls	r3, r4, #1
 8000e84:	0fe4      	lsrs	r4, r4, #31
 8000e86:	4652      	mov	r2, sl
 8000e88:	0d5b      	lsrs	r3, r3, #21
 8000e8a:	9401      	str	r4, [sp, #4]
 8000e8c:	d100      	bne.n	8000e90 <__aeabi_ddiv+0x60>
 8000e8e:	e0b3      	b.n	8000ff8 <__aeabi_ddiv+0x1c8>
 8000e90:	4986      	ldr	r1, [pc, #536]	; (80010ac <__aeabi_ddiv+0x27c>)
 8000e92:	428b      	cmp	r3, r1
 8000e94:	d100      	bne.n	8000e98 <__aeabi_ddiv+0x68>
 8000e96:	e09e      	b.n	8000fd6 <__aeabi_ddiv+0x1a6>
 8000e98:	4642      	mov	r2, r8
 8000e9a:	00d1      	lsls	r1, r2, #3
 8000e9c:	2280      	movs	r2, #128	; 0x80
 8000e9e:	0412      	lsls	r2, r2, #16
 8000ea0:	430a      	orrs	r2, r1
 8000ea2:	4651      	mov	r1, sl
 8000ea4:	0f49      	lsrs	r1, r1, #29
 8000ea6:	4311      	orrs	r1, r2
 8000ea8:	468b      	mov	fp, r1
 8000eaa:	4981      	ldr	r1, [pc, #516]	; (80010b0 <__aeabi_ddiv+0x280>)
 8000eac:	4652      	mov	r2, sl
 8000eae:	468c      	mov	ip, r1
 8000eb0:	9900      	ldr	r1, [sp, #0]
 8000eb2:	4463      	add	r3, ip
 8000eb4:	1acb      	subs	r3, r1, r3
 8000eb6:	2100      	movs	r1, #0
 8000eb8:	00d2      	lsls	r2, r2, #3
 8000eba:	9300      	str	r3, [sp, #0]
 8000ebc:	002b      	movs	r3, r5
 8000ebe:	4063      	eors	r3, r4
 8000ec0:	469a      	mov	sl, r3
 8000ec2:	2e0f      	cmp	r6, #15
 8000ec4:	d900      	bls.n	8000ec8 <__aeabi_ddiv+0x98>
 8000ec6:	e105      	b.n	80010d4 <__aeabi_ddiv+0x2a4>
 8000ec8:	4b7a      	ldr	r3, [pc, #488]	; (80010b4 <__aeabi_ddiv+0x284>)
 8000eca:	00b6      	lsls	r6, r6, #2
 8000ecc:	599b      	ldr	r3, [r3, r6]
 8000ece:	469f      	mov	pc, r3
 8000ed0:	465b      	mov	r3, fp
 8000ed2:	4333      	orrs	r3, r6
 8000ed4:	4699      	mov	r9, r3
 8000ed6:	d000      	beq.n	8000eda <__aeabi_ddiv+0xaa>
 8000ed8:	e0b8      	b.n	800104c <__aeabi_ddiv+0x21c>
 8000eda:	2302      	movs	r3, #2
 8000edc:	2608      	movs	r6, #8
 8000ede:	2700      	movs	r7, #0
 8000ee0:	9000      	str	r0, [sp, #0]
 8000ee2:	9302      	str	r3, [sp, #8]
 8000ee4:	e7ca      	b.n	8000e7c <__aeabi_ddiv+0x4c>
 8000ee6:	46cb      	mov	fp, r9
 8000ee8:	003a      	movs	r2, r7
 8000eea:	9902      	ldr	r1, [sp, #8]
 8000eec:	9501      	str	r5, [sp, #4]
 8000eee:	9b01      	ldr	r3, [sp, #4]
 8000ef0:	469a      	mov	sl, r3
 8000ef2:	2902      	cmp	r1, #2
 8000ef4:	d027      	beq.n	8000f46 <__aeabi_ddiv+0x116>
 8000ef6:	2903      	cmp	r1, #3
 8000ef8:	d100      	bne.n	8000efc <__aeabi_ddiv+0xcc>
 8000efa:	e280      	b.n	80013fe <__aeabi_ddiv+0x5ce>
 8000efc:	2901      	cmp	r1, #1
 8000efe:	d044      	beq.n	8000f8a <__aeabi_ddiv+0x15a>
 8000f00:	496d      	ldr	r1, [pc, #436]	; (80010b8 <__aeabi_ddiv+0x288>)
 8000f02:	9b00      	ldr	r3, [sp, #0]
 8000f04:	468c      	mov	ip, r1
 8000f06:	4463      	add	r3, ip
 8000f08:	001c      	movs	r4, r3
 8000f0a:	2c00      	cmp	r4, #0
 8000f0c:	dd38      	ble.n	8000f80 <__aeabi_ddiv+0x150>
 8000f0e:	0753      	lsls	r3, r2, #29
 8000f10:	d000      	beq.n	8000f14 <__aeabi_ddiv+0xe4>
 8000f12:	e213      	b.n	800133c <__aeabi_ddiv+0x50c>
 8000f14:	08d2      	lsrs	r2, r2, #3
 8000f16:	465b      	mov	r3, fp
 8000f18:	01db      	lsls	r3, r3, #7
 8000f1a:	d509      	bpl.n	8000f30 <__aeabi_ddiv+0x100>
 8000f1c:	4659      	mov	r1, fp
 8000f1e:	4b67      	ldr	r3, [pc, #412]	; (80010bc <__aeabi_ddiv+0x28c>)
 8000f20:	4019      	ands	r1, r3
 8000f22:	468b      	mov	fp, r1
 8000f24:	2180      	movs	r1, #128	; 0x80
 8000f26:	00c9      	lsls	r1, r1, #3
 8000f28:	468c      	mov	ip, r1
 8000f2a:	9b00      	ldr	r3, [sp, #0]
 8000f2c:	4463      	add	r3, ip
 8000f2e:	001c      	movs	r4, r3
 8000f30:	4b63      	ldr	r3, [pc, #396]	; (80010c0 <__aeabi_ddiv+0x290>)
 8000f32:	429c      	cmp	r4, r3
 8000f34:	dc07      	bgt.n	8000f46 <__aeabi_ddiv+0x116>
 8000f36:	465b      	mov	r3, fp
 8000f38:	0564      	lsls	r4, r4, #21
 8000f3a:	075f      	lsls	r7, r3, #29
 8000f3c:	025b      	lsls	r3, r3, #9
 8000f3e:	4317      	orrs	r7, r2
 8000f40:	0b1b      	lsrs	r3, r3, #12
 8000f42:	0d62      	lsrs	r2, r4, #21
 8000f44:	e002      	b.n	8000f4c <__aeabi_ddiv+0x11c>
 8000f46:	2300      	movs	r3, #0
 8000f48:	2700      	movs	r7, #0
 8000f4a:	4a58      	ldr	r2, [pc, #352]	; (80010ac <__aeabi_ddiv+0x27c>)
 8000f4c:	2100      	movs	r1, #0
 8000f4e:	031b      	lsls	r3, r3, #12
 8000f50:	0b1c      	lsrs	r4, r3, #12
 8000f52:	0d0b      	lsrs	r3, r1, #20
 8000f54:	051b      	lsls	r3, r3, #20
 8000f56:	4323      	orrs	r3, r4
 8000f58:	0514      	lsls	r4, r2, #20
 8000f5a:	4a5a      	ldr	r2, [pc, #360]	; (80010c4 <__aeabi_ddiv+0x294>)
 8000f5c:	0038      	movs	r0, r7
 8000f5e:	4013      	ands	r3, r2
 8000f60:	431c      	orrs	r4, r3
 8000f62:	4653      	mov	r3, sl
 8000f64:	0064      	lsls	r4, r4, #1
 8000f66:	07db      	lsls	r3, r3, #31
 8000f68:	0864      	lsrs	r4, r4, #1
 8000f6a:	431c      	orrs	r4, r3
 8000f6c:	0021      	movs	r1, r4
 8000f6e:	b005      	add	sp, #20
 8000f70:	bc3c      	pop	{r2, r3, r4, r5}
 8000f72:	4690      	mov	r8, r2
 8000f74:	4699      	mov	r9, r3
 8000f76:	46a2      	mov	sl, r4
 8000f78:	46ab      	mov	fp, r5
 8000f7a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000f7c:	2201      	movs	r2, #1
 8000f7e:	4252      	negs	r2, r2
 8000f80:	2301      	movs	r3, #1
 8000f82:	1b1b      	subs	r3, r3, r4
 8000f84:	2b38      	cmp	r3, #56	; 0x38
 8000f86:	dc00      	bgt.n	8000f8a <__aeabi_ddiv+0x15a>
 8000f88:	e1ad      	b.n	80012e6 <__aeabi_ddiv+0x4b6>
 8000f8a:	2200      	movs	r2, #0
 8000f8c:	2300      	movs	r3, #0
 8000f8e:	2700      	movs	r7, #0
 8000f90:	e7dc      	b.n	8000f4c <__aeabi_ddiv+0x11c>
 8000f92:	465b      	mov	r3, fp
 8000f94:	4333      	orrs	r3, r6
 8000f96:	4699      	mov	r9, r3
 8000f98:	d05e      	beq.n	8001058 <__aeabi_ddiv+0x228>
 8000f9a:	2e00      	cmp	r6, #0
 8000f9c:	d100      	bne.n	8000fa0 <__aeabi_ddiv+0x170>
 8000f9e:	e18a      	b.n	80012b6 <__aeabi_ddiv+0x486>
 8000fa0:	0030      	movs	r0, r6
 8000fa2:	f000 fcf3 	bl	800198c <__clzsi2>
 8000fa6:	0003      	movs	r3, r0
 8000fa8:	3b0b      	subs	r3, #11
 8000faa:	2b1c      	cmp	r3, #28
 8000fac:	dd00      	ble.n	8000fb0 <__aeabi_ddiv+0x180>
 8000fae:	e17b      	b.n	80012a8 <__aeabi_ddiv+0x478>
 8000fb0:	221d      	movs	r2, #29
 8000fb2:	1ad3      	subs	r3, r2, r3
 8000fb4:	465a      	mov	r2, fp
 8000fb6:	0001      	movs	r1, r0
 8000fb8:	40da      	lsrs	r2, r3
 8000fba:	3908      	subs	r1, #8
 8000fbc:	408e      	lsls	r6, r1
 8000fbe:	0013      	movs	r3, r2
 8000fc0:	465f      	mov	r7, fp
 8000fc2:	4333      	orrs	r3, r6
 8000fc4:	4699      	mov	r9, r3
 8000fc6:	408f      	lsls	r7, r1
 8000fc8:	4b3f      	ldr	r3, [pc, #252]	; (80010c8 <__aeabi_ddiv+0x298>)
 8000fca:	2600      	movs	r6, #0
 8000fcc:	1a1b      	subs	r3, r3, r0
 8000fce:	9300      	str	r3, [sp, #0]
 8000fd0:	2300      	movs	r3, #0
 8000fd2:	9302      	str	r3, [sp, #8]
 8000fd4:	e752      	b.n	8000e7c <__aeabi_ddiv+0x4c>
 8000fd6:	4641      	mov	r1, r8
 8000fd8:	4653      	mov	r3, sl
 8000fda:	430b      	orrs	r3, r1
 8000fdc:	493b      	ldr	r1, [pc, #236]	; (80010cc <__aeabi_ddiv+0x29c>)
 8000fde:	469b      	mov	fp, r3
 8000fe0:	468c      	mov	ip, r1
 8000fe2:	9b00      	ldr	r3, [sp, #0]
 8000fe4:	4463      	add	r3, ip
 8000fe6:	9300      	str	r3, [sp, #0]
 8000fe8:	465b      	mov	r3, fp
 8000fea:	2b00      	cmp	r3, #0
 8000fec:	d13b      	bne.n	8001066 <__aeabi_ddiv+0x236>
 8000fee:	2302      	movs	r3, #2
 8000ff0:	2200      	movs	r2, #0
 8000ff2:	431e      	orrs	r6, r3
 8000ff4:	2102      	movs	r1, #2
 8000ff6:	e761      	b.n	8000ebc <__aeabi_ddiv+0x8c>
 8000ff8:	4643      	mov	r3, r8
 8000ffa:	4313      	orrs	r3, r2
 8000ffc:	469b      	mov	fp, r3
 8000ffe:	d037      	beq.n	8001070 <__aeabi_ddiv+0x240>
 8001000:	4643      	mov	r3, r8
 8001002:	2b00      	cmp	r3, #0
 8001004:	d100      	bne.n	8001008 <__aeabi_ddiv+0x1d8>
 8001006:	e162      	b.n	80012ce <__aeabi_ddiv+0x49e>
 8001008:	4640      	mov	r0, r8
 800100a:	f000 fcbf 	bl	800198c <__clzsi2>
 800100e:	0003      	movs	r3, r0
 8001010:	3b0b      	subs	r3, #11
 8001012:	2b1c      	cmp	r3, #28
 8001014:	dd00      	ble.n	8001018 <__aeabi_ddiv+0x1e8>
 8001016:	e153      	b.n	80012c0 <__aeabi_ddiv+0x490>
 8001018:	0002      	movs	r2, r0
 800101a:	4641      	mov	r1, r8
 800101c:	3a08      	subs	r2, #8
 800101e:	4091      	lsls	r1, r2
 8001020:	4688      	mov	r8, r1
 8001022:	211d      	movs	r1, #29
 8001024:	1acb      	subs	r3, r1, r3
 8001026:	4651      	mov	r1, sl
 8001028:	40d9      	lsrs	r1, r3
 800102a:	000b      	movs	r3, r1
 800102c:	4641      	mov	r1, r8
 800102e:	430b      	orrs	r3, r1
 8001030:	469b      	mov	fp, r3
 8001032:	4653      	mov	r3, sl
 8001034:	4093      	lsls	r3, r2
 8001036:	001a      	movs	r2, r3
 8001038:	9b00      	ldr	r3, [sp, #0]
 800103a:	4925      	ldr	r1, [pc, #148]	; (80010d0 <__aeabi_ddiv+0x2a0>)
 800103c:	469c      	mov	ip, r3
 800103e:	4460      	add	r0, ip
 8001040:	0003      	movs	r3, r0
 8001042:	468c      	mov	ip, r1
 8001044:	4463      	add	r3, ip
 8001046:	9300      	str	r3, [sp, #0]
 8001048:	2100      	movs	r1, #0
 800104a:	e737      	b.n	8000ebc <__aeabi_ddiv+0x8c>
 800104c:	2303      	movs	r3, #3
 800104e:	46b1      	mov	r9, r6
 8001050:	9000      	str	r0, [sp, #0]
 8001052:	260c      	movs	r6, #12
 8001054:	9302      	str	r3, [sp, #8]
 8001056:	e711      	b.n	8000e7c <__aeabi_ddiv+0x4c>
 8001058:	2300      	movs	r3, #0
 800105a:	9300      	str	r3, [sp, #0]
 800105c:	3301      	adds	r3, #1
 800105e:	2604      	movs	r6, #4
 8001060:	2700      	movs	r7, #0
 8001062:	9302      	str	r3, [sp, #8]
 8001064:	e70a      	b.n	8000e7c <__aeabi_ddiv+0x4c>
 8001066:	2303      	movs	r3, #3
 8001068:	46c3      	mov	fp, r8
 800106a:	431e      	orrs	r6, r3
 800106c:	2103      	movs	r1, #3
 800106e:	e725      	b.n	8000ebc <__aeabi_ddiv+0x8c>
 8001070:	3301      	adds	r3, #1
 8001072:	431e      	orrs	r6, r3
 8001074:	2200      	movs	r2, #0
 8001076:	2101      	movs	r1, #1
 8001078:	e720      	b.n	8000ebc <__aeabi_ddiv+0x8c>
 800107a:	2300      	movs	r3, #0
 800107c:	469a      	mov	sl, r3
 800107e:	2380      	movs	r3, #128	; 0x80
 8001080:	2700      	movs	r7, #0
 8001082:	031b      	lsls	r3, r3, #12
 8001084:	4a09      	ldr	r2, [pc, #36]	; (80010ac <__aeabi_ddiv+0x27c>)
 8001086:	e761      	b.n	8000f4c <__aeabi_ddiv+0x11c>
 8001088:	2380      	movs	r3, #128	; 0x80
 800108a:	4649      	mov	r1, r9
 800108c:	031b      	lsls	r3, r3, #12
 800108e:	4219      	tst	r1, r3
 8001090:	d100      	bne.n	8001094 <__aeabi_ddiv+0x264>
 8001092:	e0e2      	b.n	800125a <__aeabi_ddiv+0x42a>
 8001094:	4659      	mov	r1, fp
 8001096:	4219      	tst	r1, r3
 8001098:	d000      	beq.n	800109c <__aeabi_ddiv+0x26c>
 800109a:	e0de      	b.n	800125a <__aeabi_ddiv+0x42a>
 800109c:	430b      	orrs	r3, r1
 800109e:	031b      	lsls	r3, r3, #12
 80010a0:	0017      	movs	r7, r2
 80010a2:	0b1b      	lsrs	r3, r3, #12
 80010a4:	46a2      	mov	sl, r4
 80010a6:	4a01      	ldr	r2, [pc, #4]	; (80010ac <__aeabi_ddiv+0x27c>)
 80010a8:	e750      	b.n	8000f4c <__aeabi_ddiv+0x11c>
 80010aa:	46c0      	nop			; (mov r8, r8)
 80010ac:	000007ff 	.word	0x000007ff
 80010b0:	fffffc01 	.word	0xfffffc01
 80010b4:	08003a70 	.word	0x08003a70
 80010b8:	000003ff 	.word	0x000003ff
 80010bc:	feffffff 	.word	0xfeffffff
 80010c0:	000007fe 	.word	0x000007fe
 80010c4:	800fffff 	.word	0x800fffff
 80010c8:	fffffc0d 	.word	0xfffffc0d
 80010cc:	fffff801 	.word	0xfffff801
 80010d0:	000003f3 	.word	0x000003f3
 80010d4:	45d9      	cmp	r9, fp
 80010d6:	d900      	bls.n	80010da <__aeabi_ddiv+0x2aa>
 80010d8:	e0cb      	b.n	8001272 <__aeabi_ddiv+0x442>
 80010da:	d100      	bne.n	80010de <__aeabi_ddiv+0x2ae>
 80010dc:	e0c6      	b.n	800126c <__aeabi_ddiv+0x43c>
 80010de:	003c      	movs	r4, r7
 80010e0:	4648      	mov	r0, r9
 80010e2:	2700      	movs	r7, #0
 80010e4:	9b00      	ldr	r3, [sp, #0]
 80010e6:	3b01      	subs	r3, #1
 80010e8:	9300      	str	r3, [sp, #0]
 80010ea:	465b      	mov	r3, fp
 80010ec:	0e16      	lsrs	r6, r2, #24
 80010ee:	021b      	lsls	r3, r3, #8
 80010f0:	431e      	orrs	r6, r3
 80010f2:	0213      	lsls	r3, r2, #8
 80010f4:	4698      	mov	r8, r3
 80010f6:	0433      	lsls	r3, r6, #16
 80010f8:	0c1b      	lsrs	r3, r3, #16
 80010fa:	4699      	mov	r9, r3
 80010fc:	0c31      	lsrs	r1, r6, #16
 80010fe:	9101      	str	r1, [sp, #4]
 8001100:	f7ff f888 	bl	8000214 <__aeabi_uidivmod>
 8001104:	464a      	mov	r2, r9
 8001106:	4342      	muls	r2, r0
 8001108:	040b      	lsls	r3, r1, #16
 800110a:	0c21      	lsrs	r1, r4, #16
 800110c:	0005      	movs	r5, r0
 800110e:	4319      	orrs	r1, r3
 8001110:	428a      	cmp	r2, r1
 8001112:	d907      	bls.n	8001124 <__aeabi_ddiv+0x2f4>
 8001114:	1989      	adds	r1, r1, r6
 8001116:	3d01      	subs	r5, #1
 8001118:	428e      	cmp	r6, r1
 800111a:	d803      	bhi.n	8001124 <__aeabi_ddiv+0x2f4>
 800111c:	428a      	cmp	r2, r1
 800111e:	d901      	bls.n	8001124 <__aeabi_ddiv+0x2f4>
 8001120:	1e85      	subs	r5, r0, #2
 8001122:	1989      	adds	r1, r1, r6
 8001124:	1a88      	subs	r0, r1, r2
 8001126:	9901      	ldr	r1, [sp, #4]
 8001128:	f7ff f874 	bl	8000214 <__aeabi_uidivmod>
 800112c:	0409      	lsls	r1, r1, #16
 800112e:	468c      	mov	ip, r1
 8001130:	464a      	mov	r2, r9
 8001132:	0421      	lsls	r1, r4, #16
 8001134:	4664      	mov	r4, ip
 8001136:	4342      	muls	r2, r0
 8001138:	0c09      	lsrs	r1, r1, #16
 800113a:	0003      	movs	r3, r0
 800113c:	4321      	orrs	r1, r4
 800113e:	428a      	cmp	r2, r1
 8001140:	d904      	bls.n	800114c <__aeabi_ddiv+0x31c>
 8001142:	1989      	adds	r1, r1, r6
 8001144:	3b01      	subs	r3, #1
 8001146:	428e      	cmp	r6, r1
 8001148:	d800      	bhi.n	800114c <__aeabi_ddiv+0x31c>
 800114a:	e0f1      	b.n	8001330 <__aeabi_ddiv+0x500>
 800114c:	042d      	lsls	r5, r5, #16
 800114e:	431d      	orrs	r5, r3
 8001150:	46ab      	mov	fp, r5
 8001152:	4643      	mov	r3, r8
 8001154:	1a89      	subs	r1, r1, r2
 8001156:	4642      	mov	r2, r8
 8001158:	0c28      	lsrs	r0, r5, #16
 800115a:	0412      	lsls	r2, r2, #16
 800115c:	0c1d      	lsrs	r5, r3, #16
 800115e:	465b      	mov	r3, fp
 8001160:	0c14      	lsrs	r4, r2, #16
 8001162:	0022      	movs	r2, r4
 8001164:	041b      	lsls	r3, r3, #16
 8001166:	0c1b      	lsrs	r3, r3, #16
 8001168:	435a      	muls	r2, r3
 800116a:	9403      	str	r4, [sp, #12]
 800116c:	436b      	muls	r3, r5
 800116e:	4344      	muls	r4, r0
 8001170:	9502      	str	r5, [sp, #8]
 8001172:	4368      	muls	r0, r5
 8001174:	191b      	adds	r3, r3, r4
 8001176:	0c15      	lsrs	r5, r2, #16
 8001178:	18eb      	adds	r3, r5, r3
 800117a:	429c      	cmp	r4, r3
 800117c:	d903      	bls.n	8001186 <__aeabi_ddiv+0x356>
 800117e:	2480      	movs	r4, #128	; 0x80
 8001180:	0264      	lsls	r4, r4, #9
 8001182:	46a4      	mov	ip, r4
 8001184:	4460      	add	r0, ip
 8001186:	0c1c      	lsrs	r4, r3, #16
 8001188:	0415      	lsls	r5, r2, #16
 800118a:	041b      	lsls	r3, r3, #16
 800118c:	0c2d      	lsrs	r5, r5, #16
 800118e:	1820      	adds	r0, r4, r0
 8001190:	195d      	adds	r5, r3, r5
 8001192:	4281      	cmp	r1, r0
 8001194:	d377      	bcc.n	8001286 <__aeabi_ddiv+0x456>
 8001196:	d073      	beq.n	8001280 <__aeabi_ddiv+0x450>
 8001198:	1a0c      	subs	r4, r1, r0
 800119a:	4aa2      	ldr	r2, [pc, #648]	; (8001424 <__aeabi_ddiv+0x5f4>)
 800119c:	1b7d      	subs	r5, r7, r5
 800119e:	42af      	cmp	r7, r5
 80011a0:	41bf      	sbcs	r7, r7
 80011a2:	4694      	mov	ip, r2
 80011a4:	9b00      	ldr	r3, [sp, #0]
 80011a6:	427f      	negs	r7, r7
 80011a8:	4463      	add	r3, ip
 80011aa:	1be0      	subs	r0, r4, r7
 80011ac:	001c      	movs	r4, r3
 80011ae:	4286      	cmp	r6, r0
 80011b0:	d100      	bne.n	80011b4 <__aeabi_ddiv+0x384>
 80011b2:	e0db      	b.n	800136c <__aeabi_ddiv+0x53c>
 80011b4:	9901      	ldr	r1, [sp, #4]
 80011b6:	f7ff f82d 	bl	8000214 <__aeabi_uidivmod>
 80011ba:	464a      	mov	r2, r9
 80011bc:	4342      	muls	r2, r0
 80011be:	040b      	lsls	r3, r1, #16
 80011c0:	0c29      	lsrs	r1, r5, #16
 80011c2:	0007      	movs	r7, r0
 80011c4:	4319      	orrs	r1, r3
 80011c6:	428a      	cmp	r2, r1
 80011c8:	d907      	bls.n	80011da <__aeabi_ddiv+0x3aa>
 80011ca:	1989      	adds	r1, r1, r6
 80011cc:	3f01      	subs	r7, #1
 80011ce:	428e      	cmp	r6, r1
 80011d0:	d803      	bhi.n	80011da <__aeabi_ddiv+0x3aa>
 80011d2:	428a      	cmp	r2, r1
 80011d4:	d901      	bls.n	80011da <__aeabi_ddiv+0x3aa>
 80011d6:	1e87      	subs	r7, r0, #2
 80011d8:	1989      	adds	r1, r1, r6
 80011da:	1a88      	subs	r0, r1, r2
 80011dc:	9901      	ldr	r1, [sp, #4]
 80011de:	f7ff f819 	bl	8000214 <__aeabi_uidivmod>
 80011e2:	0409      	lsls	r1, r1, #16
 80011e4:	464a      	mov	r2, r9
 80011e6:	4689      	mov	r9, r1
 80011e8:	0429      	lsls	r1, r5, #16
 80011ea:	464d      	mov	r5, r9
 80011ec:	4342      	muls	r2, r0
 80011ee:	0c09      	lsrs	r1, r1, #16
 80011f0:	0003      	movs	r3, r0
 80011f2:	4329      	orrs	r1, r5
 80011f4:	428a      	cmp	r2, r1
 80011f6:	d907      	bls.n	8001208 <__aeabi_ddiv+0x3d8>
 80011f8:	1989      	adds	r1, r1, r6
 80011fa:	3b01      	subs	r3, #1
 80011fc:	428e      	cmp	r6, r1
 80011fe:	d803      	bhi.n	8001208 <__aeabi_ddiv+0x3d8>
 8001200:	428a      	cmp	r2, r1
 8001202:	d901      	bls.n	8001208 <__aeabi_ddiv+0x3d8>
 8001204:	1e83      	subs	r3, r0, #2
 8001206:	1989      	adds	r1, r1, r6
 8001208:	043f      	lsls	r7, r7, #16
 800120a:	1a89      	subs	r1, r1, r2
 800120c:	003a      	movs	r2, r7
 800120e:	9f03      	ldr	r7, [sp, #12]
 8001210:	431a      	orrs	r2, r3
 8001212:	0038      	movs	r0, r7
 8001214:	0413      	lsls	r3, r2, #16
 8001216:	0c1b      	lsrs	r3, r3, #16
 8001218:	4358      	muls	r0, r3
 800121a:	4681      	mov	r9, r0
 800121c:	9802      	ldr	r0, [sp, #8]
 800121e:	0c15      	lsrs	r5, r2, #16
 8001220:	436f      	muls	r7, r5
 8001222:	4343      	muls	r3, r0
 8001224:	4345      	muls	r5, r0
 8001226:	4648      	mov	r0, r9
 8001228:	0c00      	lsrs	r0, r0, #16
 800122a:	4684      	mov	ip, r0
 800122c:	19db      	adds	r3, r3, r7
 800122e:	4463      	add	r3, ip
 8001230:	429f      	cmp	r7, r3
 8001232:	d903      	bls.n	800123c <__aeabi_ddiv+0x40c>
 8001234:	2080      	movs	r0, #128	; 0x80
 8001236:	0240      	lsls	r0, r0, #9
 8001238:	4684      	mov	ip, r0
 800123a:	4465      	add	r5, ip
 800123c:	4648      	mov	r0, r9
 800123e:	0c1f      	lsrs	r7, r3, #16
 8001240:	0400      	lsls	r0, r0, #16
 8001242:	041b      	lsls	r3, r3, #16
 8001244:	0c00      	lsrs	r0, r0, #16
 8001246:	197d      	adds	r5, r7, r5
 8001248:	1818      	adds	r0, r3, r0
 800124a:	42a9      	cmp	r1, r5
 800124c:	d200      	bcs.n	8001250 <__aeabi_ddiv+0x420>
 800124e:	e084      	b.n	800135a <__aeabi_ddiv+0x52a>
 8001250:	d100      	bne.n	8001254 <__aeabi_ddiv+0x424>
 8001252:	e07f      	b.n	8001354 <__aeabi_ddiv+0x524>
 8001254:	2301      	movs	r3, #1
 8001256:	431a      	orrs	r2, r3
 8001258:	e657      	b.n	8000f0a <__aeabi_ddiv+0xda>
 800125a:	2380      	movs	r3, #128	; 0x80
 800125c:	464a      	mov	r2, r9
 800125e:	031b      	lsls	r3, r3, #12
 8001260:	4313      	orrs	r3, r2
 8001262:	031b      	lsls	r3, r3, #12
 8001264:	0b1b      	lsrs	r3, r3, #12
 8001266:	46aa      	mov	sl, r5
 8001268:	4a6f      	ldr	r2, [pc, #444]	; (8001428 <__aeabi_ddiv+0x5f8>)
 800126a:	e66f      	b.n	8000f4c <__aeabi_ddiv+0x11c>
 800126c:	42ba      	cmp	r2, r7
 800126e:	d900      	bls.n	8001272 <__aeabi_ddiv+0x442>
 8001270:	e735      	b.n	80010de <__aeabi_ddiv+0x2ae>
 8001272:	464b      	mov	r3, r9
 8001274:	07dc      	lsls	r4, r3, #31
 8001276:	0858      	lsrs	r0, r3, #1
 8001278:	087b      	lsrs	r3, r7, #1
 800127a:	431c      	orrs	r4, r3
 800127c:	07ff      	lsls	r7, r7, #31
 800127e:	e734      	b.n	80010ea <__aeabi_ddiv+0x2ba>
 8001280:	2400      	movs	r4, #0
 8001282:	42af      	cmp	r7, r5
 8001284:	d289      	bcs.n	800119a <__aeabi_ddiv+0x36a>
 8001286:	4447      	add	r7, r8
 8001288:	4547      	cmp	r7, r8
 800128a:	41a4      	sbcs	r4, r4
 800128c:	465b      	mov	r3, fp
 800128e:	4264      	negs	r4, r4
 8001290:	19a4      	adds	r4, r4, r6
 8001292:	1864      	adds	r4, r4, r1
 8001294:	3b01      	subs	r3, #1
 8001296:	42a6      	cmp	r6, r4
 8001298:	d21e      	bcs.n	80012d8 <__aeabi_ddiv+0x4a8>
 800129a:	42a0      	cmp	r0, r4
 800129c:	d86d      	bhi.n	800137a <__aeabi_ddiv+0x54a>
 800129e:	d100      	bne.n	80012a2 <__aeabi_ddiv+0x472>
 80012a0:	e0b6      	b.n	8001410 <__aeabi_ddiv+0x5e0>
 80012a2:	1a24      	subs	r4, r4, r0
 80012a4:	469b      	mov	fp, r3
 80012a6:	e778      	b.n	800119a <__aeabi_ddiv+0x36a>
 80012a8:	0003      	movs	r3, r0
 80012aa:	465a      	mov	r2, fp
 80012ac:	3b28      	subs	r3, #40	; 0x28
 80012ae:	409a      	lsls	r2, r3
 80012b0:	2700      	movs	r7, #0
 80012b2:	4691      	mov	r9, r2
 80012b4:	e688      	b.n	8000fc8 <__aeabi_ddiv+0x198>
 80012b6:	4658      	mov	r0, fp
 80012b8:	f000 fb68 	bl	800198c <__clzsi2>
 80012bc:	3020      	adds	r0, #32
 80012be:	e672      	b.n	8000fa6 <__aeabi_ddiv+0x176>
 80012c0:	0003      	movs	r3, r0
 80012c2:	4652      	mov	r2, sl
 80012c4:	3b28      	subs	r3, #40	; 0x28
 80012c6:	409a      	lsls	r2, r3
 80012c8:	4693      	mov	fp, r2
 80012ca:	2200      	movs	r2, #0
 80012cc:	e6b4      	b.n	8001038 <__aeabi_ddiv+0x208>
 80012ce:	4650      	mov	r0, sl
 80012d0:	f000 fb5c 	bl	800198c <__clzsi2>
 80012d4:	3020      	adds	r0, #32
 80012d6:	e69a      	b.n	800100e <__aeabi_ddiv+0x1de>
 80012d8:	42a6      	cmp	r6, r4
 80012da:	d1e2      	bne.n	80012a2 <__aeabi_ddiv+0x472>
 80012dc:	45b8      	cmp	r8, r7
 80012de:	d9dc      	bls.n	800129a <__aeabi_ddiv+0x46a>
 80012e0:	1a34      	subs	r4, r6, r0
 80012e2:	469b      	mov	fp, r3
 80012e4:	e759      	b.n	800119a <__aeabi_ddiv+0x36a>
 80012e6:	2b1f      	cmp	r3, #31
 80012e8:	dc65      	bgt.n	80013b6 <__aeabi_ddiv+0x586>
 80012ea:	4c50      	ldr	r4, [pc, #320]	; (800142c <__aeabi_ddiv+0x5fc>)
 80012ec:	9900      	ldr	r1, [sp, #0]
 80012ee:	46a4      	mov	ip, r4
 80012f0:	465c      	mov	r4, fp
 80012f2:	4461      	add	r1, ip
 80012f4:	0008      	movs	r0, r1
 80012f6:	408c      	lsls	r4, r1
 80012f8:	0011      	movs	r1, r2
 80012fa:	4082      	lsls	r2, r0
 80012fc:	40d9      	lsrs	r1, r3
 80012fe:	1e50      	subs	r0, r2, #1
 8001300:	4182      	sbcs	r2, r0
 8001302:	430c      	orrs	r4, r1
 8001304:	4314      	orrs	r4, r2
 8001306:	465a      	mov	r2, fp
 8001308:	40da      	lsrs	r2, r3
 800130a:	0013      	movs	r3, r2
 800130c:	0762      	lsls	r2, r4, #29
 800130e:	d009      	beq.n	8001324 <__aeabi_ddiv+0x4f4>
 8001310:	220f      	movs	r2, #15
 8001312:	4022      	ands	r2, r4
 8001314:	2a04      	cmp	r2, #4
 8001316:	d005      	beq.n	8001324 <__aeabi_ddiv+0x4f4>
 8001318:	0022      	movs	r2, r4
 800131a:	1d14      	adds	r4, r2, #4
 800131c:	4294      	cmp	r4, r2
 800131e:	4189      	sbcs	r1, r1
 8001320:	4249      	negs	r1, r1
 8001322:	185b      	adds	r3, r3, r1
 8001324:	021a      	lsls	r2, r3, #8
 8001326:	d562      	bpl.n	80013ee <__aeabi_ddiv+0x5be>
 8001328:	2201      	movs	r2, #1
 800132a:	2300      	movs	r3, #0
 800132c:	2700      	movs	r7, #0
 800132e:	e60d      	b.n	8000f4c <__aeabi_ddiv+0x11c>
 8001330:	428a      	cmp	r2, r1
 8001332:	d800      	bhi.n	8001336 <__aeabi_ddiv+0x506>
 8001334:	e70a      	b.n	800114c <__aeabi_ddiv+0x31c>
 8001336:	1e83      	subs	r3, r0, #2
 8001338:	1989      	adds	r1, r1, r6
 800133a:	e707      	b.n	800114c <__aeabi_ddiv+0x31c>
 800133c:	230f      	movs	r3, #15
 800133e:	4013      	ands	r3, r2
 8001340:	2b04      	cmp	r3, #4
 8001342:	d100      	bne.n	8001346 <__aeabi_ddiv+0x516>
 8001344:	e5e6      	b.n	8000f14 <__aeabi_ddiv+0xe4>
 8001346:	1d17      	adds	r7, r2, #4
 8001348:	4297      	cmp	r7, r2
 800134a:	4192      	sbcs	r2, r2
 800134c:	4253      	negs	r3, r2
 800134e:	449b      	add	fp, r3
 8001350:	08fa      	lsrs	r2, r7, #3
 8001352:	e5e0      	b.n	8000f16 <__aeabi_ddiv+0xe6>
 8001354:	2800      	cmp	r0, #0
 8001356:	d100      	bne.n	800135a <__aeabi_ddiv+0x52a>
 8001358:	e5d7      	b.n	8000f0a <__aeabi_ddiv+0xda>
 800135a:	1871      	adds	r1, r6, r1
 800135c:	1e53      	subs	r3, r2, #1
 800135e:	42b1      	cmp	r1, r6
 8001360:	d327      	bcc.n	80013b2 <__aeabi_ddiv+0x582>
 8001362:	42a9      	cmp	r1, r5
 8001364:	d315      	bcc.n	8001392 <__aeabi_ddiv+0x562>
 8001366:	d058      	beq.n	800141a <__aeabi_ddiv+0x5ea>
 8001368:	001a      	movs	r2, r3
 800136a:	e773      	b.n	8001254 <__aeabi_ddiv+0x424>
 800136c:	2b00      	cmp	r3, #0
 800136e:	dc00      	bgt.n	8001372 <__aeabi_ddiv+0x542>
 8001370:	e604      	b.n	8000f7c <__aeabi_ddiv+0x14c>
 8001372:	2301      	movs	r3, #1
 8001374:	2200      	movs	r2, #0
 8001376:	449b      	add	fp, r3
 8001378:	e5cd      	b.n	8000f16 <__aeabi_ddiv+0xe6>
 800137a:	2302      	movs	r3, #2
 800137c:	4447      	add	r7, r8
 800137e:	4547      	cmp	r7, r8
 8001380:	4189      	sbcs	r1, r1
 8001382:	425b      	negs	r3, r3
 8001384:	469c      	mov	ip, r3
 8001386:	4249      	negs	r1, r1
 8001388:	1989      	adds	r1, r1, r6
 800138a:	190c      	adds	r4, r1, r4
 800138c:	44e3      	add	fp, ip
 800138e:	1a24      	subs	r4, r4, r0
 8001390:	e703      	b.n	800119a <__aeabi_ddiv+0x36a>
 8001392:	4643      	mov	r3, r8
 8001394:	005f      	lsls	r7, r3, #1
 8001396:	4547      	cmp	r7, r8
 8001398:	419b      	sbcs	r3, r3
 800139a:	46b8      	mov	r8, r7
 800139c:	425b      	negs	r3, r3
 800139e:	199e      	adds	r6, r3, r6
 80013a0:	3a02      	subs	r2, #2
 80013a2:	1989      	adds	r1, r1, r6
 80013a4:	42a9      	cmp	r1, r5
 80013a6:	d000      	beq.n	80013aa <__aeabi_ddiv+0x57a>
 80013a8:	e754      	b.n	8001254 <__aeabi_ddiv+0x424>
 80013aa:	4540      	cmp	r0, r8
 80013ac:	d000      	beq.n	80013b0 <__aeabi_ddiv+0x580>
 80013ae:	e751      	b.n	8001254 <__aeabi_ddiv+0x424>
 80013b0:	e5ab      	b.n	8000f0a <__aeabi_ddiv+0xda>
 80013b2:	001a      	movs	r2, r3
 80013b4:	e7f6      	b.n	80013a4 <__aeabi_ddiv+0x574>
 80013b6:	211f      	movs	r1, #31
 80013b8:	465f      	mov	r7, fp
 80013ba:	4249      	negs	r1, r1
 80013bc:	1b0c      	subs	r4, r1, r4
 80013be:	40e7      	lsrs	r7, r4
 80013c0:	2b20      	cmp	r3, #32
 80013c2:	d007      	beq.n	80013d4 <__aeabi_ddiv+0x5a4>
 80013c4:	491a      	ldr	r1, [pc, #104]	; (8001430 <__aeabi_ddiv+0x600>)
 80013c6:	9b00      	ldr	r3, [sp, #0]
 80013c8:	468c      	mov	ip, r1
 80013ca:	4463      	add	r3, ip
 80013cc:	0018      	movs	r0, r3
 80013ce:	465b      	mov	r3, fp
 80013d0:	4083      	lsls	r3, r0
 80013d2:	431a      	orrs	r2, r3
 80013d4:	1e50      	subs	r0, r2, #1
 80013d6:	4182      	sbcs	r2, r0
 80013d8:	433a      	orrs	r2, r7
 80013da:	2707      	movs	r7, #7
 80013dc:	2300      	movs	r3, #0
 80013de:	4017      	ands	r7, r2
 80013e0:	d009      	beq.n	80013f6 <__aeabi_ddiv+0x5c6>
 80013e2:	210f      	movs	r1, #15
 80013e4:	2300      	movs	r3, #0
 80013e6:	4011      	ands	r1, r2
 80013e8:	0014      	movs	r4, r2
 80013ea:	2904      	cmp	r1, #4
 80013ec:	d195      	bne.n	800131a <__aeabi_ddiv+0x4ea>
 80013ee:	0022      	movs	r2, r4
 80013f0:	075f      	lsls	r7, r3, #29
 80013f2:	025b      	lsls	r3, r3, #9
 80013f4:	0b1b      	lsrs	r3, r3, #12
 80013f6:	08d2      	lsrs	r2, r2, #3
 80013f8:	4317      	orrs	r7, r2
 80013fa:	2200      	movs	r2, #0
 80013fc:	e5a6      	b.n	8000f4c <__aeabi_ddiv+0x11c>
 80013fe:	2380      	movs	r3, #128	; 0x80
 8001400:	4659      	mov	r1, fp
 8001402:	031b      	lsls	r3, r3, #12
 8001404:	430b      	orrs	r3, r1
 8001406:	031b      	lsls	r3, r3, #12
 8001408:	0017      	movs	r7, r2
 800140a:	0b1b      	lsrs	r3, r3, #12
 800140c:	4a06      	ldr	r2, [pc, #24]	; (8001428 <__aeabi_ddiv+0x5f8>)
 800140e:	e59d      	b.n	8000f4c <__aeabi_ddiv+0x11c>
 8001410:	42bd      	cmp	r5, r7
 8001412:	d8b2      	bhi.n	800137a <__aeabi_ddiv+0x54a>
 8001414:	469b      	mov	fp, r3
 8001416:	2400      	movs	r4, #0
 8001418:	e6bf      	b.n	800119a <__aeabi_ddiv+0x36a>
 800141a:	4580      	cmp	r8, r0
 800141c:	d3b9      	bcc.n	8001392 <__aeabi_ddiv+0x562>
 800141e:	001a      	movs	r2, r3
 8001420:	e7c3      	b.n	80013aa <__aeabi_ddiv+0x57a>
 8001422:	46c0      	nop			; (mov r8, r8)
 8001424:	000003ff 	.word	0x000003ff
 8001428:	000007ff 	.word	0x000007ff
 800142c:	0000041e 	.word	0x0000041e
 8001430:	0000043e 	.word	0x0000043e

08001434 <__aeabi_dmul>:
 8001434:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001436:	4657      	mov	r7, sl
 8001438:	46de      	mov	lr, fp
 800143a:	464e      	mov	r6, r9
 800143c:	4645      	mov	r5, r8
 800143e:	b5e0      	push	{r5, r6, r7, lr}
 8001440:	4683      	mov	fp, r0
 8001442:	0006      	movs	r6, r0
 8001444:	030f      	lsls	r7, r1, #12
 8001446:	0048      	lsls	r0, r1, #1
 8001448:	b087      	sub	sp, #28
 800144a:	4692      	mov	sl, r2
 800144c:	001d      	movs	r5, r3
 800144e:	0b3f      	lsrs	r7, r7, #12
 8001450:	0d40      	lsrs	r0, r0, #21
 8001452:	0fcc      	lsrs	r4, r1, #31
 8001454:	2800      	cmp	r0, #0
 8001456:	d100      	bne.n	800145a <__aeabi_dmul+0x26>
 8001458:	e06f      	b.n	800153a <__aeabi_dmul+0x106>
 800145a:	4bde      	ldr	r3, [pc, #888]	; (80017d4 <__aeabi_dmul+0x3a0>)
 800145c:	4298      	cmp	r0, r3
 800145e:	d038      	beq.n	80014d2 <__aeabi_dmul+0x9e>
 8001460:	2380      	movs	r3, #128	; 0x80
 8001462:	00ff      	lsls	r7, r7, #3
 8001464:	041b      	lsls	r3, r3, #16
 8001466:	431f      	orrs	r7, r3
 8001468:	0f73      	lsrs	r3, r6, #29
 800146a:	433b      	orrs	r3, r7
 800146c:	9301      	str	r3, [sp, #4]
 800146e:	4bda      	ldr	r3, [pc, #872]	; (80017d8 <__aeabi_dmul+0x3a4>)
 8001470:	2700      	movs	r7, #0
 8001472:	4699      	mov	r9, r3
 8001474:	2300      	movs	r3, #0
 8001476:	469b      	mov	fp, r3
 8001478:	00f6      	lsls	r6, r6, #3
 800147a:	4481      	add	r9, r0
 800147c:	032b      	lsls	r3, r5, #12
 800147e:	0069      	lsls	r1, r5, #1
 8001480:	0b1b      	lsrs	r3, r3, #12
 8001482:	4652      	mov	r2, sl
 8001484:	4698      	mov	r8, r3
 8001486:	0d49      	lsrs	r1, r1, #21
 8001488:	0fed      	lsrs	r5, r5, #31
 800148a:	2900      	cmp	r1, #0
 800148c:	d100      	bne.n	8001490 <__aeabi_dmul+0x5c>
 800148e:	e085      	b.n	800159c <__aeabi_dmul+0x168>
 8001490:	4bd0      	ldr	r3, [pc, #832]	; (80017d4 <__aeabi_dmul+0x3a0>)
 8001492:	4299      	cmp	r1, r3
 8001494:	d100      	bne.n	8001498 <__aeabi_dmul+0x64>
 8001496:	e073      	b.n	8001580 <__aeabi_dmul+0x14c>
 8001498:	4643      	mov	r3, r8
 800149a:	00da      	lsls	r2, r3, #3
 800149c:	2380      	movs	r3, #128	; 0x80
 800149e:	041b      	lsls	r3, r3, #16
 80014a0:	4313      	orrs	r3, r2
 80014a2:	4652      	mov	r2, sl
 80014a4:	48cc      	ldr	r0, [pc, #816]	; (80017d8 <__aeabi_dmul+0x3a4>)
 80014a6:	0f52      	lsrs	r2, r2, #29
 80014a8:	4684      	mov	ip, r0
 80014aa:	4313      	orrs	r3, r2
 80014ac:	4652      	mov	r2, sl
 80014ae:	2000      	movs	r0, #0
 80014b0:	4461      	add	r1, ip
 80014b2:	00d2      	lsls	r2, r2, #3
 80014b4:	4489      	add	r9, r1
 80014b6:	0021      	movs	r1, r4
 80014b8:	4069      	eors	r1, r5
 80014ba:	9100      	str	r1, [sp, #0]
 80014bc:	468c      	mov	ip, r1
 80014be:	2101      	movs	r1, #1
 80014c0:	4449      	add	r1, r9
 80014c2:	468a      	mov	sl, r1
 80014c4:	2f0f      	cmp	r7, #15
 80014c6:	d900      	bls.n	80014ca <__aeabi_dmul+0x96>
 80014c8:	e090      	b.n	80015ec <__aeabi_dmul+0x1b8>
 80014ca:	49c4      	ldr	r1, [pc, #784]	; (80017dc <__aeabi_dmul+0x3a8>)
 80014cc:	00bf      	lsls	r7, r7, #2
 80014ce:	59cf      	ldr	r7, [r1, r7]
 80014d0:	46bf      	mov	pc, r7
 80014d2:	465b      	mov	r3, fp
 80014d4:	433b      	orrs	r3, r7
 80014d6:	9301      	str	r3, [sp, #4]
 80014d8:	d000      	beq.n	80014dc <__aeabi_dmul+0xa8>
 80014da:	e16a      	b.n	80017b2 <__aeabi_dmul+0x37e>
 80014dc:	2302      	movs	r3, #2
 80014de:	2708      	movs	r7, #8
 80014e0:	2600      	movs	r6, #0
 80014e2:	4681      	mov	r9, r0
 80014e4:	469b      	mov	fp, r3
 80014e6:	e7c9      	b.n	800147c <__aeabi_dmul+0x48>
 80014e8:	0032      	movs	r2, r6
 80014ea:	4658      	mov	r0, fp
 80014ec:	9b01      	ldr	r3, [sp, #4]
 80014ee:	4661      	mov	r1, ip
 80014f0:	9100      	str	r1, [sp, #0]
 80014f2:	2802      	cmp	r0, #2
 80014f4:	d100      	bne.n	80014f8 <__aeabi_dmul+0xc4>
 80014f6:	e075      	b.n	80015e4 <__aeabi_dmul+0x1b0>
 80014f8:	2803      	cmp	r0, #3
 80014fa:	d100      	bne.n	80014fe <__aeabi_dmul+0xca>
 80014fc:	e1fe      	b.n	80018fc <__aeabi_dmul+0x4c8>
 80014fe:	2801      	cmp	r0, #1
 8001500:	d000      	beq.n	8001504 <__aeabi_dmul+0xd0>
 8001502:	e12c      	b.n	800175e <__aeabi_dmul+0x32a>
 8001504:	2300      	movs	r3, #0
 8001506:	2700      	movs	r7, #0
 8001508:	2600      	movs	r6, #0
 800150a:	2500      	movs	r5, #0
 800150c:	033f      	lsls	r7, r7, #12
 800150e:	0d2a      	lsrs	r2, r5, #20
 8001510:	0b3f      	lsrs	r7, r7, #12
 8001512:	48b3      	ldr	r0, [pc, #716]	; (80017e0 <__aeabi_dmul+0x3ac>)
 8001514:	0512      	lsls	r2, r2, #20
 8001516:	433a      	orrs	r2, r7
 8001518:	4002      	ands	r2, r0
 800151a:	051b      	lsls	r3, r3, #20
 800151c:	4313      	orrs	r3, r2
 800151e:	9a00      	ldr	r2, [sp, #0]
 8001520:	005b      	lsls	r3, r3, #1
 8001522:	07d1      	lsls	r1, r2, #31
 8001524:	085b      	lsrs	r3, r3, #1
 8001526:	430b      	orrs	r3, r1
 8001528:	0030      	movs	r0, r6
 800152a:	0019      	movs	r1, r3
 800152c:	b007      	add	sp, #28
 800152e:	bc3c      	pop	{r2, r3, r4, r5}
 8001530:	4690      	mov	r8, r2
 8001532:	4699      	mov	r9, r3
 8001534:	46a2      	mov	sl, r4
 8001536:	46ab      	mov	fp, r5
 8001538:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800153a:	465b      	mov	r3, fp
 800153c:	433b      	orrs	r3, r7
 800153e:	9301      	str	r3, [sp, #4]
 8001540:	d100      	bne.n	8001544 <__aeabi_dmul+0x110>
 8001542:	e12f      	b.n	80017a4 <__aeabi_dmul+0x370>
 8001544:	2f00      	cmp	r7, #0
 8001546:	d100      	bne.n	800154a <__aeabi_dmul+0x116>
 8001548:	e1a5      	b.n	8001896 <__aeabi_dmul+0x462>
 800154a:	0038      	movs	r0, r7
 800154c:	f000 fa1e 	bl	800198c <__clzsi2>
 8001550:	0003      	movs	r3, r0
 8001552:	3b0b      	subs	r3, #11
 8001554:	2b1c      	cmp	r3, #28
 8001556:	dd00      	ble.n	800155a <__aeabi_dmul+0x126>
 8001558:	e196      	b.n	8001888 <__aeabi_dmul+0x454>
 800155a:	221d      	movs	r2, #29
 800155c:	1ad3      	subs	r3, r2, r3
 800155e:	465a      	mov	r2, fp
 8001560:	0001      	movs	r1, r0
 8001562:	40da      	lsrs	r2, r3
 8001564:	465e      	mov	r6, fp
 8001566:	3908      	subs	r1, #8
 8001568:	408f      	lsls	r7, r1
 800156a:	0013      	movs	r3, r2
 800156c:	408e      	lsls	r6, r1
 800156e:	433b      	orrs	r3, r7
 8001570:	9301      	str	r3, [sp, #4]
 8001572:	4b9c      	ldr	r3, [pc, #624]	; (80017e4 <__aeabi_dmul+0x3b0>)
 8001574:	2700      	movs	r7, #0
 8001576:	1a1b      	subs	r3, r3, r0
 8001578:	4699      	mov	r9, r3
 800157a:	2300      	movs	r3, #0
 800157c:	469b      	mov	fp, r3
 800157e:	e77d      	b.n	800147c <__aeabi_dmul+0x48>
 8001580:	4641      	mov	r1, r8
 8001582:	4653      	mov	r3, sl
 8001584:	430b      	orrs	r3, r1
 8001586:	4993      	ldr	r1, [pc, #588]	; (80017d4 <__aeabi_dmul+0x3a0>)
 8001588:	468c      	mov	ip, r1
 800158a:	44e1      	add	r9, ip
 800158c:	2b00      	cmp	r3, #0
 800158e:	d000      	beq.n	8001592 <__aeabi_dmul+0x15e>
 8001590:	e11a      	b.n	80017c8 <__aeabi_dmul+0x394>
 8001592:	2202      	movs	r2, #2
 8001594:	2002      	movs	r0, #2
 8001596:	4317      	orrs	r7, r2
 8001598:	2200      	movs	r2, #0
 800159a:	e78c      	b.n	80014b6 <__aeabi_dmul+0x82>
 800159c:	4313      	orrs	r3, r2
 800159e:	d100      	bne.n	80015a2 <__aeabi_dmul+0x16e>
 80015a0:	e10d      	b.n	80017be <__aeabi_dmul+0x38a>
 80015a2:	4643      	mov	r3, r8
 80015a4:	2b00      	cmp	r3, #0
 80015a6:	d100      	bne.n	80015aa <__aeabi_dmul+0x176>
 80015a8:	e181      	b.n	80018ae <__aeabi_dmul+0x47a>
 80015aa:	4640      	mov	r0, r8
 80015ac:	f000 f9ee 	bl	800198c <__clzsi2>
 80015b0:	0002      	movs	r2, r0
 80015b2:	3a0b      	subs	r2, #11
 80015b4:	2a1c      	cmp	r2, #28
 80015b6:	dd00      	ble.n	80015ba <__aeabi_dmul+0x186>
 80015b8:	e172      	b.n	80018a0 <__aeabi_dmul+0x46c>
 80015ba:	0001      	movs	r1, r0
 80015bc:	4643      	mov	r3, r8
 80015be:	3908      	subs	r1, #8
 80015c0:	408b      	lsls	r3, r1
 80015c2:	4698      	mov	r8, r3
 80015c4:	231d      	movs	r3, #29
 80015c6:	1a9a      	subs	r2, r3, r2
 80015c8:	4653      	mov	r3, sl
 80015ca:	40d3      	lsrs	r3, r2
 80015cc:	001a      	movs	r2, r3
 80015ce:	4643      	mov	r3, r8
 80015d0:	4313      	orrs	r3, r2
 80015d2:	4652      	mov	r2, sl
 80015d4:	408a      	lsls	r2, r1
 80015d6:	4649      	mov	r1, r9
 80015d8:	1a08      	subs	r0, r1, r0
 80015da:	4982      	ldr	r1, [pc, #520]	; (80017e4 <__aeabi_dmul+0x3b0>)
 80015dc:	4689      	mov	r9, r1
 80015de:	4481      	add	r9, r0
 80015e0:	2000      	movs	r0, #0
 80015e2:	e768      	b.n	80014b6 <__aeabi_dmul+0x82>
 80015e4:	4b7b      	ldr	r3, [pc, #492]	; (80017d4 <__aeabi_dmul+0x3a0>)
 80015e6:	2700      	movs	r7, #0
 80015e8:	2600      	movs	r6, #0
 80015ea:	e78e      	b.n	800150a <__aeabi_dmul+0xd6>
 80015ec:	0c14      	lsrs	r4, r2, #16
 80015ee:	0412      	lsls	r2, r2, #16
 80015f0:	0c12      	lsrs	r2, r2, #16
 80015f2:	0011      	movs	r1, r2
 80015f4:	0c37      	lsrs	r7, r6, #16
 80015f6:	0436      	lsls	r6, r6, #16
 80015f8:	0c35      	lsrs	r5, r6, #16
 80015fa:	4379      	muls	r1, r7
 80015fc:	0028      	movs	r0, r5
 80015fe:	468c      	mov	ip, r1
 8001600:	002e      	movs	r6, r5
 8001602:	4360      	muls	r0, r4
 8001604:	4460      	add	r0, ip
 8001606:	4683      	mov	fp, r0
 8001608:	4356      	muls	r6, r2
 800160a:	0021      	movs	r1, r4
 800160c:	0c30      	lsrs	r0, r6, #16
 800160e:	4680      	mov	r8, r0
 8001610:	4658      	mov	r0, fp
 8001612:	4379      	muls	r1, r7
 8001614:	4440      	add	r0, r8
 8001616:	9102      	str	r1, [sp, #8]
 8001618:	4584      	cmp	ip, r0
 800161a:	d906      	bls.n	800162a <__aeabi_dmul+0x1f6>
 800161c:	4688      	mov	r8, r1
 800161e:	2180      	movs	r1, #128	; 0x80
 8001620:	0249      	lsls	r1, r1, #9
 8001622:	468c      	mov	ip, r1
 8001624:	44e0      	add	r8, ip
 8001626:	4641      	mov	r1, r8
 8001628:	9102      	str	r1, [sp, #8]
 800162a:	0436      	lsls	r6, r6, #16
 800162c:	0c01      	lsrs	r1, r0, #16
 800162e:	0c36      	lsrs	r6, r6, #16
 8001630:	0400      	lsls	r0, r0, #16
 8001632:	468b      	mov	fp, r1
 8001634:	1981      	adds	r1, r0, r6
 8001636:	0c1e      	lsrs	r6, r3, #16
 8001638:	041b      	lsls	r3, r3, #16
 800163a:	0c1b      	lsrs	r3, r3, #16
 800163c:	9103      	str	r1, [sp, #12]
 800163e:	0019      	movs	r1, r3
 8001640:	4379      	muls	r1, r7
 8001642:	468c      	mov	ip, r1
 8001644:	0028      	movs	r0, r5
 8001646:	4375      	muls	r5, r6
 8001648:	4465      	add	r5, ip
 800164a:	46a8      	mov	r8, r5
 800164c:	4358      	muls	r0, r3
 800164e:	0c05      	lsrs	r5, r0, #16
 8001650:	4445      	add	r5, r8
 8001652:	4377      	muls	r7, r6
 8001654:	42a9      	cmp	r1, r5
 8001656:	d903      	bls.n	8001660 <__aeabi_dmul+0x22c>
 8001658:	2180      	movs	r1, #128	; 0x80
 800165a:	0249      	lsls	r1, r1, #9
 800165c:	468c      	mov	ip, r1
 800165e:	4467      	add	r7, ip
 8001660:	0c29      	lsrs	r1, r5, #16
 8001662:	468c      	mov	ip, r1
 8001664:	0039      	movs	r1, r7
 8001666:	0400      	lsls	r0, r0, #16
 8001668:	0c00      	lsrs	r0, r0, #16
 800166a:	042d      	lsls	r5, r5, #16
 800166c:	182d      	adds	r5, r5, r0
 800166e:	4461      	add	r1, ip
 8001670:	44ab      	add	fp, r5
 8001672:	9105      	str	r1, [sp, #20]
 8001674:	4659      	mov	r1, fp
 8001676:	9104      	str	r1, [sp, #16]
 8001678:	9901      	ldr	r1, [sp, #4]
 800167a:	040f      	lsls	r7, r1, #16
 800167c:	0c3f      	lsrs	r7, r7, #16
 800167e:	0c08      	lsrs	r0, r1, #16
 8001680:	0039      	movs	r1, r7
 8001682:	4351      	muls	r1, r2
 8001684:	4342      	muls	r2, r0
 8001686:	4690      	mov	r8, r2
 8001688:	0002      	movs	r2, r0
 800168a:	468c      	mov	ip, r1
 800168c:	0c09      	lsrs	r1, r1, #16
 800168e:	468b      	mov	fp, r1
 8001690:	4362      	muls	r2, r4
 8001692:	437c      	muls	r4, r7
 8001694:	4444      	add	r4, r8
 8001696:	445c      	add	r4, fp
 8001698:	45a0      	cmp	r8, r4
 800169a:	d903      	bls.n	80016a4 <__aeabi_dmul+0x270>
 800169c:	2180      	movs	r1, #128	; 0x80
 800169e:	0249      	lsls	r1, r1, #9
 80016a0:	4688      	mov	r8, r1
 80016a2:	4442      	add	r2, r8
 80016a4:	0c21      	lsrs	r1, r4, #16
 80016a6:	4688      	mov	r8, r1
 80016a8:	4661      	mov	r1, ip
 80016aa:	0409      	lsls	r1, r1, #16
 80016ac:	0c09      	lsrs	r1, r1, #16
 80016ae:	468c      	mov	ip, r1
 80016b0:	0039      	movs	r1, r7
 80016b2:	4359      	muls	r1, r3
 80016b4:	4343      	muls	r3, r0
 80016b6:	4370      	muls	r0, r6
 80016b8:	437e      	muls	r6, r7
 80016ba:	0c0f      	lsrs	r7, r1, #16
 80016bc:	18f6      	adds	r6, r6, r3
 80016be:	0424      	lsls	r4, r4, #16
 80016c0:	19be      	adds	r6, r7, r6
 80016c2:	4464      	add	r4, ip
 80016c4:	4442      	add	r2, r8
 80016c6:	468c      	mov	ip, r1
 80016c8:	42b3      	cmp	r3, r6
 80016ca:	d903      	bls.n	80016d4 <__aeabi_dmul+0x2a0>
 80016cc:	2380      	movs	r3, #128	; 0x80
 80016ce:	025b      	lsls	r3, r3, #9
 80016d0:	4698      	mov	r8, r3
 80016d2:	4440      	add	r0, r8
 80016d4:	9b02      	ldr	r3, [sp, #8]
 80016d6:	4661      	mov	r1, ip
 80016d8:	4698      	mov	r8, r3
 80016da:	9b04      	ldr	r3, [sp, #16]
 80016dc:	0437      	lsls	r7, r6, #16
 80016de:	4443      	add	r3, r8
 80016e0:	469b      	mov	fp, r3
 80016e2:	45ab      	cmp	fp, r5
 80016e4:	41ad      	sbcs	r5, r5
 80016e6:	426b      	negs	r3, r5
 80016e8:	040d      	lsls	r5, r1, #16
 80016ea:	9905      	ldr	r1, [sp, #20]
 80016ec:	0c2d      	lsrs	r5, r5, #16
 80016ee:	468c      	mov	ip, r1
 80016f0:	197f      	adds	r7, r7, r5
 80016f2:	4467      	add	r7, ip
 80016f4:	18fd      	adds	r5, r7, r3
 80016f6:	46a8      	mov	r8, r5
 80016f8:	465d      	mov	r5, fp
 80016fa:	192d      	adds	r5, r5, r4
 80016fc:	42a5      	cmp	r5, r4
 80016fe:	41a4      	sbcs	r4, r4
 8001700:	4693      	mov	fp, r2
 8001702:	4264      	negs	r4, r4
 8001704:	46a4      	mov	ip, r4
 8001706:	44c3      	add	fp, r8
 8001708:	44dc      	add	ip, fp
 800170a:	428f      	cmp	r7, r1
 800170c:	41bf      	sbcs	r7, r7
 800170e:	4598      	cmp	r8, r3
 8001710:	419b      	sbcs	r3, r3
 8001712:	4593      	cmp	fp, r2
 8001714:	4192      	sbcs	r2, r2
 8001716:	45a4      	cmp	ip, r4
 8001718:	41a4      	sbcs	r4, r4
 800171a:	425b      	negs	r3, r3
 800171c:	427f      	negs	r7, r7
 800171e:	431f      	orrs	r7, r3
 8001720:	0c36      	lsrs	r6, r6, #16
 8001722:	4252      	negs	r2, r2
 8001724:	4264      	negs	r4, r4
 8001726:	19bf      	adds	r7, r7, r6
 8001728:	4322      	orrs	r2, r4
 800172a:	18bf      	adds	r7, r7, r2
 800172c:	4662      	mov	r2, ip
 800172e:	1838      	adds	r0, r7, r0
 8001730:	0243      	lsls	r3, r0, #9
 8001732:	0dd2      	lsrs	r2, r2, #23
 8001734:	9903      	ldr	r1, [sp, #12]
 8001736:	4313      	orrs	r3, r2
 8001738:	026a      	lsls	r2, r5, #9
 800173a:	430a      	orrs	r2, r1
 800173c:	1e50      	subs	r0, r2, #1
 800173e:	4182      	sbcs	r2, r0
 8001740:	4661      	mov	r1, ip
 8001742:	0ded      	lsrs	r5, r5, #23
 8001744:	432a      	orrs	r2, r5
 8001746:	024e      	lsls	r6, r1, #9
 8001748:	4332      	orrs	r2, r6
 800174a:	01d9      	lsls	r1, r3, #7
 800174c:	d400      	bmi.n	8001750 <__aeabi_dmul+0x31c>
 800174e:	e0b3      	b.n	80018b8 <__aeabi_dmul+0x484>
 8001750:	2601      	movs	r6, #1
 8001752:	0850      	lsrs	r0, r2, #1
 8001754:	4032      	ands	r2, r6
 8001756:	4302      	orrs	r2, r0
 8001758:	07de      	lsls	r6, r3, #31
 800175a:	4332      	orrs	r2, r6
 800175c:	085b      	lsrs	r3, r3, #1
 800175e:	4c22      	ldr	r4, [pc, #136]	; (80017e8 <__aeabi_dmul+0x3b4>)
 8001760:	4454      	add	r4, sl
 8001762:	2c00      	cmp	r4, #0
 8001764:	dd62      	ble.n	800182c <__aeabi_dmul+0x3f8>
 8001766:	0751      	lsls	r1, r2, #29
 8001768:	d009      	beq.n	800177e <__aeabi_dmul+0x34a>
 800176a:	200f      	movs	r0, #15
 800176c:	4010      	ands	r0, r2
 800176e:	2804      	cmp	r0, #4
 8001770:	d005      	beq.n	800177e <__aeabi_dmul+0x34a>
 8001772:	1d10      	adds	r0, r2, #4
 8001774:	4290      	cmp	r0, r2
 8001776:	4192      	sbcs	r2, r2
 8001778:	4252      	negs	r2, r2
 800177a:	189b      	adds	r3, r3, r2
 800177c:	0002      	movs	r2, r0
 800177e:	01d9      	lsls	r1, r3, #7
 8001780:	d504      	bpl.n	800178c <__aeabi_dmul+0x358>
 8001782:	2480      	movs	r4, #128	; 0x80
 8001784:	4819      	ldr	r0, [pc, #100]	; (80017ec <__aeabi_dmul+0x3b8>)
 8001786:	00e4      	lsls	r4, r4, #3
 8001788:	4003      	ands	r3, r0
 800178a:	4454      	add	r4, sl
 800178c:	4818      	ldr	r0, [pc, #96]	; (80017f0 <__aeabi_dmul+0x3bc>)
 800178e:	4284      	cmp	r4, r0
 8001790:	dd00      	ble.n	8001794 <__aeabi_dmul+0x360>
 8001792:	e727      	b.n	80015e4 <__aeabi_dmul+0x1b0>
 8001794:	075e      	lsls	r6, r3, #29
 8001796:	025b      	lsls	r3, r3, #9
 8001798:	08d2      	lsrs	r2, r2, #3
 800179a:	0b1f      	lsrs	r7, r3, #12
 800179c:	0563      	lsls	r3, r4, #21
 800179e:	4316      	orrs	r6, r2
 80017a0:	0d5b      	lsrs	r3, r3, #21
 80017a2:	e6b2      	b.n	800150a <__aeabi_dmul+0xd6>
 80017a4:	2300      	movs	r3, #0
 80017a6:	4699      	mov	r9, r3
 80017a8:	3301      	adds	r3, #1
 80017aa:	2704      	movs	r7, #4
 80017ac:	2600      	movs	r6, #0
 80017ae:	469b      	mov	fp, r3
 80017b0:	e664      	b.n	800147c <__aeabi_dmul+0x48>
 80017b2:	2303      	movs	r3, #3
 80017b4:	9701      	str	r7, [sp, #4]
 80017b6:	4681      	mov	r9, r0
 80017b8:	270c      	movs	r7, #12
 80017ba:	469b      	mov	fp, r3
 80017bc:	e65e      	b.n	800147c <__aeabi_dmul+0x48>
 80017be:	2201      	movs	r2, #1
 80017c0:	2001      	movs	r0, #1
 80017c2:	4317      	orrs	r7, r2
 80017c4:	2200      	movs	r2, #0
 80017c6:	e676      	b.n	80014b6 <__aeabi_dmul+0x82>
 80017c8:	2303      	movs	r3, #3
 80017ca:	2003      	movs	r0, #3
 80017cc:	431f      	orrs	r7, r3
 80017ce:	4643      	mov	r3, r8
 80017d0:	e671      	b.n	80014b6 <__aeabi_dmul+0x82>
 80017d2:	46c0      	nop			; (mov r8, r8)
 80017d4:	000007ff 	.word	0x000007ff
 80017d8:	fffffc01 	.word	0xfffffc01
 80017dc:	08003ab0 	.word	0x08003ab0
 80017e0:	800fffff 	.word	0x800fffff
 80017e4:	fffffc0d 	.word	0xfffffc0d
 80017e8:	000003ff 	.word	0x000003ff
 80017ec:	feffffff 	.word	0xfeffffff
 80017f0:	000007fe 	.word	0x000007fe
 80017f4:	2300      	movs	r3, #0
 80017f6:	2780      	movs	r7, #128	; 0x80
 80017f8:	9300      	str	r3, [sp, #0]
 80017fa:	033f      	lsls	r7, r7, #12
 80017fc:	2600      	movs	r6, #0
 80017fe:	4b43      	ldr	r3, [pc, #268]	; (800190c <__aeabi_dmul+0x4d8>)
 8001800:	e683      	b.n	800150a <__aeabi_dmul+0xd6>
 8001802:	9b01      	ldr	r3, [sp, #4]
 8001804:	0032      	movs	r2, r6
 8001806:	46a4      	mov	ip, r4
 8001808:	4658      	mov	r0, fp
 800180a:	e670      	b.n	80014ee <__aeabi_dmul+0xba>
 800180c:	46ac      	mov	ip, r5
 800180e:	e66e      	b.n	80014ee <__aeabi_dmul+0xba>
 8001810:	2780      	movs	r7, #128	; 0x80
 8001812:	9901      	ldr	r1, [sp, #4]
 8001814:	033f      	lsls	r7, r7, #12
 8001816:	4239      	tst	r1, r7
 8001818:	d02d      	beq.n	8001876 <__aeabi_dmul+0x442>
 800181a:	423b      	tst	r3, r7
 800181c:	d12b      	bne.n	8001876 <__aeabi_dmul+0x442>
 800181e:	431f      	orrs	r7, r3
 8001820:	033f      	lsls	r7, r7, #12
 8001822:	0b3f      	lsrs	r7, r7, #12
 8001824:	9500      	str	r5, [sp, #0]
 8001826:	0016      	movs	r6, r2
 8001828:	4b38      	ldr	r3, [pc, #224]	; (800190c <__aeabi_dmul+0x4d8>)
 800182a:	e66e      	b.n	800150a <__aeabi_dmul+0xd6>
 800182c:	2501      	movs	r5, #1
 800182e:	1b2d      	subs	r5, r5, r4
 8001830:	2d38      	cmp	r5, #56	; 0x38
 8001832:	dd00      	ble.n	8001836 <__aeabi_dmul+0x402>
 8001834:	e666      	b.n	8001504 <__aeabi_dmul+0xd0>
 8001836:	2d1f      	cmp	r5, #31
 8001838:	dc40      	bgt.n	80018bc <__aeabi_dmul+0x488>
 800183a:	4835      	ldr	r0, [pc, #212]	; (8001910 <__aeabi_dmul+0x4dc>)
 800183c:	001c      	movs	r4, r3
 800183e:	4450      	add	r0, sl
 8001840:	0016      	movs	r6, r2
 8001842:	4082      	lsls	r2, r0
 8001844:	4084      	lsls	r4, r0
 8001846:	40ee      	lsrs	r6, r5
 8001848:	1e50      	subs	r0, r2, #1
 800184a:	4182      	sbcs	r2, r0
 800184c:	4334      	orrs	r4, r6
 800184e:	4314      	orrs	r4, r2
 8001850:	40eb      	lsrs	r3, r5
 8001852:	0762      	lsls	r2, r4, #29
 8001854:	d009      	beq.n	800186a <__aeabi_dmul+0x436>
 8001856:	220f      	movs	r2, #15
 8001858:	4022      	ands	r2, r4
 800185a:	2a04      	cmp	r2, #4
 800185c:	d005      	beq.n	800186a <__aeabi_dmul+0x436>
 800185e:	0022      	movs	r2, r4
 8001860:	1d14      	adds	r4, r2, #4
 8001862:	4294      	cmp	r4, r2
 8001864:	4180      	sbcs	r0, r0
 8001866:	4240      	negs	r0, r0
 8001868:	181b      	adds	r3, r3, r0
 800186a:	021a      	lsls	r2, r3, #8
 800186c:	d53e      	bpl.n	80018ec <__aeabi_dmul+0x4b8>
 800186e:	2301      	movs	r3, #1
 8001870:	2700      	movs	r7, #0
 8001872:	2600      	movs	r6, #0
 8001874:	e649      	b.n	800150a <__aeabi_dmul+0xd6>
 8001876:	2780      	movs	r7, #128	; 0x80
 8001878:	9b01      	ldr	r3, [sp, #4]
 800187a:	033f      	lsls	r7, r7, #12
 800187c:	431f      	orrs	r7, r3
 800187e:	033f      	lsls	r7, r7, #12
 8001880:	0b3f      	lsrs	r7, r7, #12
 8001882:	9400      	str	r4, [sp, #0]
 8001884:	4b21      	ldr	r3, [pc, #132]	; (800190c <__aeabi_dmul+0x4d8>)
 8001886:	e640      	b.n	800150a <__aeabi_dmul+0xd6>
 8001888:	0003      	movs	r3, r0
 800188a:	465a      	mov	r2, fp
 800188c:	3b28      	subs	r3, #40	; 0x28
 800188e:	409a      	lsls	r2, r3
 8001890:	2600      	movs	r6, #0
 8001892:	9201      	str	r2, [sp, #4]
 8001894:	e66d      	b.n	8001572 <__aeabi_dmul+0x13e>
 8001896:	4658      	mov	r0, fp
 8001898:	f000 f878 	bl	800198c <__clzsi2>
 800189c:	3020      	adds	r0, #32
 800189e:	e657      	b.n	8001550 <__aeabi_dmul+0x11c>
 80018a0:	0003      	movs	r3, r0
 80018a2:	4652      	mov	r2, sl
 80018a4:	3b28      	subs	r3, #40	; 0x28
 80018a6:	409a      	lsls	r2, r3
 80018a8:	0013      	movs	r3, r2
 80018aa:	2200      	movs	r2, #0
 80018ac:	e693      	b.n	80015d6 <__aeabi_dmul+0x1a2>
 80018ae:	4650      	mov	r0, sl
 80018b0:	f000 f86c 	bl	800198c <__clzsi2>
 80018b4:	3020      	adds	r0, #32
 80018b6:	e67b      	b.n	80015b0 <__aeabi_dmul+0x17c>
 80018b8:	46ca      	mov	sl, r9
 80018ba:	e750      	b.n	800175e <__aeabi_dmul+0x32a>
 80018bc:	201f      	movs	r0, #31
 80018be:	001e      	movs	r6, r3
 80018c0:	4240      	negs	r0, r0
 80018c2:	1b04      	subs	r4, r0, r4
 80018c4:	40e6      	lsrs	r6, r4
 80018c6:	2d20      	cmp	r5, #32
 80018c8:	d003      	beq.n	80018d2 <__aeabi_dmul+0x49e>
 80018ca:	4c12      	ldr	r4, [pc, #72]	; (8001914 <__aeabi_dmul+0x4e0>)
 80018cc:	4454      	add	r4, sl
 80018ce:	40a3      	lsls	r3, r4
 80018d0:	431a      	orrs	r2, r3
 80018d2:	1e50      	subs	r0, r2, #1
 80018d4:	4182      	sbcs	r2, r0
 80018d6:	4332      	orrs	r2, r6
 80018d8:	2607      	movs	r6, #7
 80018da:	2700      	movs	r7, #0
 80018dc:	4016      	ands	r6, r2
 80018de:	d009      	beq.n	80018f4 <__aeabi_dmul+0x4c0>
 80018e0:	200f      	movs	r0, #15
 80018e2:	2300      	movs	r3, #0
 80018e4:	4010      	ands	r0, r2
 80018e6:	0014      	movs	r4, r2
 80018e8:	2804      	cmp	r0, #4
 80018ea:	d1b9      	bne.n	8001860 <__aeabi_dmul+0x42c>
 80018ec:	0022      	movs	r2, r4
 80018ee:	075e      	lsls	r6, r3, #29
 80018f0:	025b      	lsls	r3, r3, #9
 80018f2:	0b1f      	lsrs	r7, r3, #12
 80018f4:	08d2      	lsrs	r2, r2, #3
 80018f6:	4316      	orrs	r6, r2
 80018f8:	2300      	movs	r3, #0
 80018fa:	e606      	b.n	800150a <__aeabi_dmul+0xd6>
 80018fc:	2780      	movs	r7, #128	; 0x80
 80018fe:	033f      	lsls	r7, r7, #12
 8001900:	431f      	orrs	r7, r3
 8001902:	033f      	lsls	r7, r7, #12
 8001904:	0b3f      	lsrs	r7, r7, #12
 8001906:	0016      	movs	r6, r2
 8001908:	4b00      	ldr	r3, [pc, #0]	; (800190c <__aeabi_dmul+0x4d8>)
 800190a:	e5fe      	b.n	800150a <__aeabi_dmul+0xd6>
 800190c:	000007ff 	.word	0x000007ff
 8001910:	0000041e 	.word	0x0000041e
 8001914:	0000043e 	.word	0x0000043e

08001918 <__aeabi_i2d>:
 8001918:	b570      	push	{r4, r5, r6, lr}
 800191a:	2800      	cmp	r0, #0
 800191c:	d02d      	beq.n	800197a <__aeabi_i2d+0x62>
 800191e:	17c3      	asrs	r3, r0, #31
 8001920:	18c5      	adds	r5, r0, r3
 8001922:	405d      	eors	r5, r3
 8001924:	0fc4      	lsrs	r4, r0, #31
 8001926:	0028      	movs	r0, r5
 8001928:	f000 f830 	bl	800198c <__clzsi2>
 800192c:	4b15      	ldr	r3, [pc, #84]	; (8001984 <__aeabi_i2d+0x6c>)
 800192e:	1a1b      	subs	r3, r3, r0
 8001930:	055b      	lsls	r3, r3, #21
 8001932:	0d5b      	lsrs	r3, r3, #21
 8001934:	280a      	cmp	r0, #10
 8001936:	dd15      	ble.n	8001964 <__aeabi_i2d+0x4c>
 8001938:	380b      	subs	r0, #11
 800193a:	4085      	lsls	r5, r0
 800193c:	2200      	movs	r2, #0
 800193e:	032d      	lsls	r5, r5, #12
 8001940:	0b2d      	lsrs	r5, r5, #12
 8001942:	2100      	movs	r1, #0
 8001944:	0010      	movs	r0, r2
 8001946:	032d      	lsls	r5, r5, #12
 8001948:	0d0a      	lsrs	r2, r1, #20
 800194a:	0b2d      	lsrs	r5, r5, #12
 800194c:	0512      	lsls	r2, r2, #20
 800194e:	432a      	orrs	r2, r5
 8001950:	4d0d      	ldr	r5, [pc, #52]	; (8001988 <__aeabi_i2d+0x70>)
 8001952:	051b      	lsls	r3, r3, #20
 8001954:	402a      	ands	r2, r5
 8001956:	4313      	orrs	r3, r2
 8001958:	005b      	lsls	r3, r3, #1
 800195a:	07e4      	lsls	r4, r4, #31
 800195c:	085b      	lsrs	r3, r3, #1
 800195e:	4323      	orrs	r3, r4
 8001960:	0019      	movs	r1, r3
 8001962:	bd70      	pop	{r4, r5, r6, pc}
 8001964:	0002      	movs	r2, r0
 8001966:	0029      	movs	r1, r5
 8001968:	3215      	adds	r2, #21
 800196a:	4091      	lsls	r1, r2
 800196c:	000a      	movs	r2, r1
 800196e:	210b      	movs	r1, #11
 8001970:	1a08      	subs	r0, r1, r0
 8001972:	40c5      	lsrs	r5, r0
 8001974:	032d      	lsls	r5, r5, #12
 8001976:	0b2d      	lsrs	r5, r5, #12
 8001978:	e7e3      	b.n	8001942 <__aeabi_i2d+0x2a>
 800197a:	2400      	movs	r4, #0
 800197c:	2300      	movs	r3, #0
 800197e:	2500      	movs	r5, #0
 8001980:	2200      	movs	r2, #0
 8001982:	e7de      	b.n	8001942 <__aeabi_i2d+0x2a>
 8001984:	0000041e 	.word	0x0000041e
 8001988:	800fffff 	.word	0x800fffff

0800198c <__clzsi2>:
 800198c:	211c      	movs	r1, #28
 800198e:	2301      	movs	r3, #1
 8001990:	041b      	lsls	r3, r3, #16
 8001992:	4298      	cmp	r0, r3
 8001994:	d301      	bcc.n	800199a <__clzsi2+0xe>
 8001996:	0c00      	lsrs	r0, r0, #16
 8001998:	3910      	subs	r1, #16
 800199a:	0a1b      	lsrs	r3, r3, #8
 800199c:	4298      	cmp	r0, r3
 800199e:	d301      	bcc.n	80019a4 <__clzsi2+0x18>
 80019a0:	0a00      	lsrs	r0, r0, #8
 80019a2:	3908      	subs	r1, #8
 80019a4:	091b      	lsrs	r3, r3, #4
 80019a6:	4298      	cmp	r0, r3
 80019a8:	d301      	bcc.n	80019ae <__clzsi2+0x22>
 80019aa:	0900      	lsrs	r0, r0, #4
 80019ac:	3904      	subs	r1, #4
 80019ae:	a202      	add	r2, pc, #8	; (adr r2, 80019b8 <__clzsi2+0x2c>)
 80019b0:	5c10      	ldrb	r0, [r2, r0]
 80019b2:	1840      	adds	r0, r0, r1
 80019b4:	4770      	bx	lr
 80019b6:	46c0      	nop			; (mov r8, r8)
 80019b8:	02020304 	.word	0x02020304
 80019bc:	01010101 	.word	0x01010101
	...

080019c8 <Reset_Handler>:
 80019c8:	480d      	ldr	r0, [pc, #52]	; (8001a00 <LoopForever+0x2>)
 80019ca:	4685      	mov	sp, r0
 80019cc:	480d      	ldr	r0, [pc, #52]	; (8001a04 <LoopForever+0x6>)
 80019ce:	490e      	ldr	r1, [pc, #56]	; (8001a08 <LoopForever+0xa>)
 80019d0:	4a0e      	ldr	r2, [pc, #56]	; (8001a0c <LoopForever+0xe>)
 80019d2:	2300      	movs	r3, #0
 80019d4:	e002      	b.n	80019dc <LoopCopyDataInit>

080019d6 <CopyDataInit>:
 80019d6:	58d4      	ldr	r4, [r2, r3]
 80019d8:	50c4      	str	r4, [r0, r3]
 80019da:	3304      	adds	r3, #4

080019dc <LoopCopyDataInit>:
 80019dc:	18c4      	adds	r4, r0, r3
 80019de:	428c      	cmp	r4, r1
 80019e0:	d3f9      	bcc.n	80019d6 <CopyDataInit>
 80019e2:	4a0b      	ldr	r2, [pc, #44]	; (8001a10 <LoopForever+0x12>)
 80019e4:	4c0b      	ldr	r4, [pc, #44]	; (8001a14 <LoopForever+0x16>)
 80019e6:	2300      	movs	r3, #0
 80019e8:	e001      	b.n	80019ee <LoopFillZerobss>

080019ea <FillZerobss>:
 80019ea:	6013      	str	r3, [r2, #0]
 80019ec:	3204      	adds	r2, #4

080019ee <LoopFillZerobss>:
 80019ee:	42a2      	cmp	r2, r4
 80019f0:	d3fb      	bcc.n	80019ea <FillZerobss>
 80019f2:	f001 fd87 	bl	8003504 <SystemInit>
 80019f6:	f001 ffb9 	bl	800396c <__libc_init_array>
 80019fa:	f000 fc59 	bl	80022b0 <main>

080019fe <LoopForever>:
 80019fe:	e7fe      	b.n	80019fe <LoopForever>
 8001a00:	20002000 	.word	0x20002000
 8001a04:	20000000 	.word	0x20000000
 8001a08:	20000004 	.word	0x20000004
 8001a0c:	08003b54 	.word	0x08003b54
 8001a10:	20000008 	.word	0x20000008
 8001a14:	20000120 	.word	0x20000120

08001a18 <ADC1_COMP_IRQHandler>:
 8001a18:	e7fe      	b.n	8001a18 <ADC1_COMP_IRQHandler>

08001a1a <LL_USART_IsActiveFlag_TC>:
 8001a1a:	b580      	push	{r7, lr}
 8001a1c:	b082      	sub	sp, #8
 8001a1e:	af00      	add	r7, sp, #0
 8001a20:	6078      	str	r0, [r7, #4]
 8001a22:	687b      	ldr	r3, [r7, #4]
 8001a24:	69db      	ldr	r3, [r3, #28]
 8001a26:	2240      	movs	r2, #64	; 0x40
 8001a28:	4013      	ands	r3, r2
 8001a2a:	3b40      	subs	r3, #64	; 0x40
 8001a2c:	425a      	negs	r2, r3
 8001a2e:	4153      	adcs	r3, r2
 8001a30:	b2db      	uxtb	r3, r3
 8001a32:	0018      	movs	r0, r3
 8001a34:	46bd      	mov	sp, r7
 8001a36:	b002      	add	sp, #8
 8001a38:	bd80      	pop	{r7, pc}

08001a3a <LL_USART_IsActiveFlag_TXE>:
 8001a3a:	b580      	push	{r7, lr}
 8001a3c:	b082      	sub	sp, #8
 8001a3e:	af00      	add	r7, sp, #0
 8001a40:	6078      	str	r0, [r7, #4]
 8001a42:	687b      	ldr	r3, [r7, #4]
 8001a44:	69db      	ldr	r3, [r3, #28]
 8001a46:	2280      	movs	r2, #128	; 0x80
 8001a48:	4013      	ands	r3, r2
 8001a4a:	3b80      	subs	r3, #128	; 0x80
 8001a4c:	425a      	negs	r2, r3
 8001a4e:	4153      	adcs	r3, r2
 8001a50:	b2db      	uxtb	r3, r3
 8001a52:	0018      	movs	r0, r3
 8001a54:	46bd      	mov	sp, r7
 8001a56:	b002      	add	sp, #8
 8001a58:	bd80      	pop	{r7, pc}

08001a5a <LL_USART_ClearFlag_TC>:
 8001a5a:	b580      	push	{r7, lr}
 8001a5c:	b082      	sub	sp, #8
 8001a5e:	af00      	add	r7, sp, #0
 8001a60:	6078      	str	r0, [r7, #4]
 8001a62:	687b      	ldr	r3, [r7, #4]
 8001a64:	2240      	movs	r2, #64	; 0x40
 8001a66:	621a      	str	r2, [r3, #32]
 8001a68:	46c0      	nop			; (mov r8, r8)
 8001a6a:	46bd      	mov	sp, r7
 8001a6c:	b002      	add	sp, #8
 8001a6e:	bd80      	pop	{r7, pc}

08001a70 <LL_USART_TransmitData8>:
 8001a70:	b580      	push	{r7, lr}
 8001a72:	b082      	sub	sp, #8
 8001a74:	af00      	add	r7, sp, #0
 8001a76:	6078      	str	r0, [r7, #4]
 8001a78:	000a      	movs	r2, r1
 8001a7a:	1cfb      	adds	r3, r7, #3
 8001a7c:	701a      	strb	r2, [r3, #0]
 8001a7e:	1cfb      	adds	r3, r7, #3
 8001a80:	781b      	ldrb	r3, [r3, #0]
 8001a82:	b29a      	uxth	r2, r3
 8001a84:	687b      	ldr	r3, [r7, #4]
 8001a86:	851a      	strh	r2, [r3, #40]	; 0x28
 8001a88:	46c0      	nop			; (mov r8, r8)
 8001a8a:	46bd      	mov	sp, r7
 8001a8c:	b002      	add	sp, #8
 8001a8e:	bd80      	pop	{r7, pc}

08001a90 <crc32>:
 8001a90:	b580      	push	{r7, lr}
 8001a92:	4f40      	ldr	r7, [pc, #256]	; (8001b94 <crc32+0x104>)
 8001a94:	44bd      	add	sp, r7
 8001a96:	af00      	add	r7, sp, #0
 8001a98:	6078      	str	r0, [r7, #4]
 8001a9a:	6039      	str	r1, [r7, #0]
 8001a9c:	2300      	movs	r3, #0
 8001a9e:	4a3e      	ldr	r2, [pc, #248]	; (8001b98 <crc32+0x108>)
 8001aa0:	18ba      	adds	r2, r7, r2
 8001aa2:	6013      	str	r3, [r2, #0]
 8001aa4:	4b3d      	ldr	r3, [pc, #244]	; (8001b9c <crc32+0x10c>)
 8001aa6:	18fb      	adds	r3, r7, r3
 8001aa8:	2200      	movs	r2, #0
 8001aaa:	801a      	strh	r2, [r3, #0]
 8001aac:	e03f      	b.n	8001b2e <crc32+0x9e>
 8001aae:	4b3b      	ldr	r3, [pc, #236]	; (8001b9c <crc32+0x10c>)
 8001ab0:	18fb      	adds	r3, r7, r3
 8001ab2:	881b      	ldrh	r3, [r3, #0]
 8001ab4:	4a38      	ldr	r2, [pc, #224]	; (8001b98 <crc32+0x108>)
 8001ab6:	18ba      	adds	r2, r7, r2
 8001ab8:	6013      	str	r3, [r2, #0]
 8001aba:	2381      	movs	r3, #129	; 0x81
 8001abc:	00db      	lsls	r3, r3, #3
 8001abe:	18fb      	adds	r3, r7, r3
 8001ac0:	2200      	movs	r2, #0
 8001ac2:	801a      	strh	r2, [r3, #0]
 8001ac4:	e01a      	b.n	8001afc <crc32+0x6c>
 8001ac6:	4b34      	ldr	r3, [pc, #208]	; (8001b98 <crc32+0x108>)
 8001ac8:	18fb      	adds	r3, r7, r3
 8001aca:	681b      	ldr	r3, [r3, #0]
 8001acc:	2201      	movs	r2, #1
 8001ace:	4013      	ands	r3, r2
 8001ad0:	d006      	beq.n	8001ae0 <crc32+0x50>
 8001ad2:	4b31      	ldr	r3, [pc, #196]	; (8001b98 <crc32+0x108>)
 8001ad4:	18fb      	adds	r3, r7, r3
 8001ad6:	681b      	ldr	r3, [r3, #0]
 8001ad8:	085b      	lsrs	r3, r3, #1
 8001ada:	4a31      	ldr	r2, [pc, #196]	; (8001ba0 <crc32+0x110>)
 8001adc:	4053      	eors	r3, r2
 8001ade:	e003      	b.n	8001ae8 <crc32+0x58>
 8001ae0:	4b2d      	ldr	r3, [pc, #180]	; (8001b98 <crc32+0x108>)
 8001ae2:	18fb      	adds	r3, r7, r3
 8001ae4:	681b      	ldr	r3, [r3, #0]
 8001ae6:	085b      	lsrs	r3, r3, #1
 8001ae8:	4a2b      	ldr	r2, [pc, #172]	; (8001b98 <crc32+0x108>)
 8001aea:	18ba      	adds	r2, r7, r2
 8001aec:	6013      	str	r3, [r2, #0]
 8001aee:	2181      	movs	r1, #129	; 0x81
 8001af0:	00c9      	lsls	r1, r1, #3
 8001af2:	187b      	adds	r3, r7, r1
 8001af4:	881a      	ldrh	r2, [r3, #0]
 8001af6:	187b      	adds	r3, r7, r1
 8001af8:	3201      	adds	r2, #1
 8001afa:	801a      	strh	r2, [r3, #0]
 8001afc:	2381      	movs	r3, #129	; 0x81
 8001afe:	00db      	lsls	r3, r3, #3
 8001b00:	18fb      	adds	r3, r7, r3
 8001b02:	881b      	ldrh	r3, [r3, #0]
 8001b04:	2b07      	cmp	r3, #7
 8001b06:	d9de      	bls.n	8001ac6 <crc32+0x36>
 8001b08:	4824      	ldr	r0, [pc, #144]	; (8001b9c <crc32+0x10c>)
 8001b0a:	183b      	adds	r3, r7, r0
 8001b0c:	881a      	ldrh	r2, [r3, #0]
 8001b0e:	4b25      	ldr	r3, [pc, #148]	; (8001ba4 <crc32+0x114>)
 8001b10:	2182      	movs	r1, #130	; 0x82
 8001b12:	00c9      	lsls	r1, r1, #3
 8001b14:	468c      	mov	ip, r1
 8001b16:	44bc      	add	ip, r7
 8001b18:	4463      	add	r3, ip
 8001b1a:	0092      	lsls	r2, r2, #2
 8001b1c:	491e      	ldr	r1, [pc, #120]	; (8001b98 <crc32+0x108>)
 8001b1e:	1879      	adds	r1, r7, r1
 8001b20:	6809      	ldr	r1, [r1, #0]
 8001b22:	50d1      	str	r1, [r2, r3]
 8001b24:	183b      	adds	r3, r7, r0
 8001b26:	881a      	ldrh	r2, [r3, #0]
 8001b28:	183b      	adds	r3, r7, r0
 8001b2a:	3201      	adds	r2, #1
 8001b2c:	801a      	strh	r2, [r3, #0]
 8001b2e:	4b1b      	ldr	r3, [pc, #108]	; (8001b9c <crc32+0x10c>)
 8001b30:	18fb      	adds	r3, r7, r3
 8001b32:	881b      	ldrh	r3, [r3, #0]
 8001b34:	2bff      	cmp	r3, #255	; 0xff
 8001b36:	d9ba      	bls.n	8001aae <crc32+0x1e>
 8001b38:	2301      	movs	r3, #1
 8001b3a:	425b      	negs	r3, r3
 8001b3c:	4a16      	ldr	r2, [pc, #88]	; (8001b98 <crc32+0x108>)
 8001b3e:	18ba      	adds	r2, r7, r2
 8001b40:	6013      	str	r3, [r2, #0]
 8001b42:	e018      	b.n	8001b76 <crc32+0xe6>
 8001b44:	687b      	ldr	r3, [r7, #4]
 8001b46:	1c5a      	adds	r2, r3, #1
 8001b48:	607a      	str	r2, [r7, #4]
 8001b4a:	781b      	ldrb	r3, [r3, #0]
 8001b4c:	001a      	movs	r2, r3
 8001b4e:	4912      	ldr	r1, [pc, #72]	; (8001b98 <crc32+0x108>)
 8001b50:	187b      	adds	r3, r7, r1
 8001b52:	681b      	ldr	r3, [r3, #0]
 8001b54:	4053      	eors	r3, r2
 8001b56:	22ff      	movs	r2, #255	; 0xff
 8001b58:	401a      	ands	r2, r3
 8001b5a:	4b12      	ldr	r3, [pc, #72]	; (8001ba4 <crc32+0x114>)
 8001b5c:	2082      	movs	r0, #130	; 0x82
 8001b5e:	00c0      	lsls	r0, r0, #3
 8001b60:	4684      	mov	ip, r0
 8001b62:	44bc      	add	ip, r7
 8001b64:	4463      	add	r3, ip
 8001b66:	0092      	lsls	r2, r2, #2
 8001b68:	58d2      	ldr	r2, [r2, r3]
 8001b6a:	187b      	adds	r3, r7, r1
 8001b6c:	681b      	ldr	r3, [r3, #0]
 8001b6e:	0a1b      	lsrs	r3, r3, #8
 8001b70:	4053      	eors	r3, r2
 8001b72:	187a      	adds	r2, r7, r1
 8001b74:	6013      	str	r3, [r2, #0]
 8001b76:	683b      	ldr	r3, [r7, #0]
 8001b78:	1e5a      	subs	r2, r3, #1
 8001b7a:	603a      	str	r2, [r7, #0]
 8001b7c:	2b00      	cmp	r3, #0
 8001b7e:	d1e1      	bne.n	8001b44 <crc32+0xb4>
 8001b80:	4b05      	ldr	r3, [pc, #20]	; (8001b98 <crc32+0x108>)
 8001b82:	18fb      	adds	r3, r7, r3
 8001b84:	681b      	ldr	r3, [r3, #0]
 8001b86:	43db      	mvns	r3, r3
 8001b88:	0018      	movs	r0, r3
 8001b8a:	46bd      	mov	sp, r7
 8001b8c:	2382      	movs	r3, #130	; 0x82
 8001b8e:	00db      	lsls	r3, r3, #3
 8001b90:	449d      	add	sp, r3
 8001b92:	bd80      	pop	{r7, pc}
 8001b94:	fffffbf0 	.word	0xfffffbf0
 8001b98:	0000040c 	.word	0x0000040c
 8001b9c:	0000040a 	.word	0x0000040a
 8001ba0:	edb88320 	.word	0xedb88320
 8001ba4:	fffffbf8 	.word	0xfffffbf8

08001ba8 <stateMsg_fill>:
 8001ba8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001baa:	b085      	sub	sp, #20
 8001bac:	af00      	add	r7, sp, #0
 8001bae:	6078      	str	r0, [r7, #4]
 8001bb0:	687b      	ldr	r3, [r7, #4]
 8001bb2:	22ff      	movs	r2, #255	; 0xff
 8001bb4:	701a      	strb	r2, [r3, #0]
 8001bb6:	687b      	ldr	r3, [r7, #4]
 8001bb8:	22fe      	movs	r2, #254	; 0xfe
 8001bba:	705a      	strb	r2, [r3, #1]
 8001bbc:	4bc5      	ldr	r3, [pc, #788]	; (8001ed4 <stateMsg_fill+0x32c>)
 8001bbe:	681b      	ldr	r3, [r3, #0]
 8001bc0:	001a      	movs	r2, r3
 8001bc2:	687b      	ldr	r3, [r7, #4]
 8001bc4:	3302      	adds	r3, #2
 8001bc6:	21ff      	movs	r1, #255	; 0xff
 8001bc8:	4011      	ands	r1, r2
 8001bca:	000c      	movs	r4, r1
 8001bcc:	7819      	ldrb	r1, [r3, #0]
 8001bce:	2000      	movs	r0, #0
 8001bd0:	4001      	ands	r1, r0
 8001bd2:	1c08      	adds	r0, r1, #0
 8001bd4:	1c21      	adds	r1, r4, #0
 8001bd6:	4301      	orrs	r1, r0
 8001bd8:	7019      	strb	r1, [r3, #0]
 8001bda:	0a11      	lsrs	r1, r2, #8
 8001bdc:	20ff      	movs	r0, #255	; 0xff
 8001bde:	4001      	ands	r1, r0
 8001be0:	000c      	movs	r4, r1
 8001be2:	7859      	ldrb	r1, [r3, #1]
 8001be4:	2000      	movs	r0, #0
 8001be6:	4001      	ands	r1, r0
 8001be8:	1c08      	adds	r0, r1, #0
 8001bea:	1c21      	adds	r1, r4, #0
 8001bec:	4301      	orrs	r1, r0
 8001bee:	7059      	strb	r1, [r3, #1]
 8001bf0:	0c11      	lsrs	r1, r2, #16
 8001bf2:	20ff      	movs	r0, #255	; 0xff
 8001bf4:	4001      	ands	r1, r0
 8001bf6:	000c      	movs	r4, r1
 8001bf8:	7899      	ldrb	r1, [r3, #2]
 8001bfa:	2000      	movs	r0, #0
 8001bfc:	4001      	ands	r1, r0
 8001bfe:	1c08      	adds	r0, r1, #0
 8001c00:	1c21      	adds	r1, r4, #0
 8001c02:	4301      	orrs	r1, r0
 8001c04:	7099      	strb	r1, [r3, #2]
 8001c06:	0e10      	lsrs	r0, r2, #24
 8001c08:	78da      	ldrb	r2, [r3, #3]
 8001c0a:	2100      	movs	r1, #0
 8001c0c:	400a      	ands	r2, r1
 8001c0e:	1c11      	adds	r1, r2, #0
 8001c10:	1c02      	adds	r2, r0, #0
 8001c12:	430a      	orrs	r2, r1
 8001c14:	70da      	strb	r2, [r3, #3]
 8001c16:	f000 fb21 	bl	800225c <getTime_s>
 8001c1a:	1c02      	adds	r2, r0, #0
 8001c1c:	687b      	ldr	r3, [r7, #4]
 8001c1e:	3306      	adds	r3, #6
 8001c20:	21ff      	movs	r1, #255	; 0xff
 8001c22:	4011      	ands	r1, r2
 8001c24:	000c      	movs	r4, r1
 8001c26:	7819      	ldrb	r1, [r3, #0]
 8001c28:	2000      	movs	r0, #0
 8001c2a:	4001      	ands	r1, r0
 8001c2c:	1c08      	adds	r0, r1, #0
 8001c2e:	1c21      	adds	r1, r4, #0
 8001c30:	4301      	orrs	r1, r0
 8001c32:	7019      	strb	r1, [r3, #0]
 8001c34:	0a11      	lsrs	r1, r2, #8
 8001c36:	20ff      	movs	r0, #255	; 0xff
 8001c38:	4001      	ands	r1, r0
 8001c3a:	000c      	movs	r4, r1
 8001c3c:	7859      	ldrb	r1, [r3, #1]
 8001c3e:	2000      	movs	r0, #0
 8001c40:	4001      	ands	r1, r0
 8001c42:	1c08      	adds	r0, r1, #0
 8001c44:	1c21      	adds	r1, r4, #0
 8001c46:	4301      	orrs	r1, r0
 8001c48:	7059      	strb	r1, [r3, #1]
 8001c4a:	0c11      	lsrs	r1, r2, #16
 8001c4c:	20ff      	movs	r0, #255	; 0xff
 8001c4e:	4001      	ands	r1, r0
 8001c50:	000c      	movs	r4, r1
 8001c52:	7899      	ldrb	r1, [r3, #2]
 8001c54:	2000      	movs	r0, #0
 8001c56:	4001      	ands	r1, r0
 8001c58:	1c08      	adds	r0, r1, #0
 8001c5a:	1c21      	adds	r1, r4, #0
 8001c5c:	4301      	orrs	r1, r0
 8001c5e:	7099      	strb	r1, [r3, #2]
 8001c60:	0e10      	lsrs	r0, r2, #24
 8001c62:	78da      	ldrb	r2, [r3, #3]
 8001c64:	2100      	movs	r1, #0
 8001c66:	400a      	ands	r2, r1
 8001c68:	1c11      	adds	r1, r2, #0
 8001c6a:	1c02      	adds	r2, r0, #0
 8001c6c:	430a      	orrs	r2, r1
 8001c6e:	70da      	strb	r2, [r3, #3]
 8001c70:	230f      	movs	r3, #15
 8001c72:	18fb      	adds	r3, r7, r3
 8001c74:	2200      	movs	r2, #0
 8001c76:	701a      	strb	r2, [r3, #0]
 8001c78:	e121      	b.n	8001ebe <stateMsg_fill+0x316>
 8001c7a:	260f      	movs	r6, #15
 8001c7c:	19bb      	adds	r3, r7, r6
 8001c7e:	781b      	ldrb	r3, [r3, #0]
 8001c80:	19ba      	adds	r2, r7, r6
 8001c82:	7814      	ldrb	r4, [r2, #0]
 8001c84:	4a94      	ldr	r2, [pc, #592]	; (8001ed8 <stateMsg_fill+0x330>)
 8001c86:	00db      	lsls	r3, r3, #3
 8001c88:	18d3      	adds	r3, r2, r3
 8001c8a:	6819      	ldr	r1, [r3, #0]
 8001c8c:	685a      	ldr	r2, [r3, #4]
 8001c8e:	6878      	ldr	r0, [r7, #4]
 8001c90:	1c63      	adds	r3, r4, #1
 8001c92:	00db      	lsls	r3, r3, #3
 8001c94:	18c3      	adds	r3, r0, r3
 8001c96:	3302      	adds	r3, #2
 8001c98:	20ff      	movs	r0, #255	; 0xff
 8001c9a:	4008      	ands	r0, r1
 8001c9c:	0005      	movs	r5, r0
 8001c9e:	7818      	ldrb	r0, [r3, #0]
 8001ca0:	2400      	movs	r4, #0
 8001ca2:	4020      	ands	r0, r4
 8001ca4:	1c04      	adds	r4, r0, #0
 8001ca6:	1c28      	adds	r0, r5, #0
 8001ca8:	4320      	orrs	r0, r4
 8001caa:	7018      	strb	r0, [r3, #0]
 8001cac:	0a08      	lsrs	r0, r1, #8
 8001cae:	24ff      	movs	r4, #255	; 0xff
 8001cb0:	4020      	ands	r0, r4
 8001cb2:	0005      	movs	r5, r0
 8001cb4:	7858      	ldrb	r0, [r3, #1]
 8001cb6:	2400      	movs	r4, #0
 8001cb8:	4020      	ands	r0, r4
 8001cba:	1c04      	adds	r4, r0, #0
 8001cbc:	1c28      	adds	r0, r5, #0
 8001cbe:	4320      	orrs	r0, r4
 8001cc0:	7058      	strb	r0, [r3, #1]
 8001cc2:	0c08      	lsrs	r0, r1, #16
 8001cc4:	24ff      	movs	r4, #255	; 0xff
 8001cc6:	4020      	ands	r0, r4
 8001cc8:	0005      	movs	r5, r0
 8001cca:	7898      	ldrb	r0, [r3, #2]
 8001ccc:	2400      	movs	r4, #0
 8001cce:	4020      	ands	r0, r4
 8001cd0:	1c04      	adds	r4, r0, #0
 8001cd2:	1c28      	adds	r0, r5, #0
 8001cd4:	4320      	orrs	r0, r4
 8001cd6:	7098      	strb	r0, [r3, #2]
 8001cd8:	0e0d      	lsrs	r5, r1, #24
 8001cda:	78d8      	ldrb	r0, [r3, #3]
 8001cdc:	2400      	movs	r4, #0
 8001cde:	4020      	ands	r0, r4
 8001ce0:	1c04      	adds	r4, r0, #0
 8001ce2:	1c28      	adds	r0, r5, #0
 8001ce4:	4320      	orrs	r0, r4
 8001ce6:	70d8      	strb	r0, [r3, #3]
 8001ce8:	20ff      	movs	r0, #255	; 0xff
 8001cea:	4010      	ands	r0, r2
 8001cec:	0005      	movs	r5, r0
 8001cee:	7918      	ldrb	r0, [r3, #4]
 8001cf0:	2400      	movs	r4, #0
 8001cf2:	4020      	ands	r0, r4
 8001cf4:	1c04      	adds	r4, r0, #0
 8001cf6:	1c28      	adds	r0, r5, #0
 8001cf8:	4320      	orrs	r0, r4
 8001cfa:	7118      	strb	r0, [r3, #4]
 8001cfc:	0a10      	lsrs	r0, r2, #8
 8001cfe:	24ff      	movs	r4, #255	; 0xff
 8001d00:	4020      	ands	r0, r4
 8001d02:	0005      	movs	r5, r0
 8001d04:	7958      	ldrb	r0, [r3, #5]
 8001d06:	2400      	movs	r4, #0
 8001d08:	4020      	ands	r0, r4
 8001d0a:	1c04      	adds	r4, r0, #0
 8001d0c:	1c28      	adds	r0, r5, #0
 8001d0e:	4320      	orrs	r0, r4
 8001d10:	7158      	strb	r0, [r3, #5]
 8001d12:	0c10      	lsrs	r0, r2, #16
 8001d14:	24ff      	movs	r4, #255	; 0xff
 8001d16:	4020      	ands	r0, r4
 8001d18:	0005      	movs	r5, r0
 8001d1a:	7998      	ldrb	r0, [r3, #6]
 8001d1c:	2400      	movs	r4, #0
 8001d1e:	4020      	ands	r0, r4
 8001d20:	1c04      	adds	r4, r0, #0
 8001d22:	1c28      	adds	r0, r5, #0
 8001d24:	4320      	orrs	r0, r4
 8001d26:	7198      	strb	r0, [r3, #6]
 8001d28:	0e10      	lsrs	r0, r2, #24
 8001d2a:	79da      	ldrb	r2, [r3, #7]
 8001d2c:	2100      	movs	r1, #0
 8001d2e:	400a      	ands	r2, r1
 8001d30:	1c11      	adds	r1, r2, #0
 8001d32:	1c02      	adds	r2, r0, #0
 8001d34:	430a      	orrs	r2, r1
 8001d36:	71da      	strb	r2, [r3, #7]
 8001d38:	19bb      	adds	r3, r7, r6
 8001d3a:	781b      	ldrb	r3, [r3, #0]
 8001d3c:	19ba      	adds	r2, r7, r6
 8001d3e:	7814      	ldrb	r4, [r2, #0]
 8001d40:	4a65      	ldr	r2, [pc, #404]	; (8001ed8 <stateMsg_fill+0x330>)
 8001d42:	3303      	adds	r3, #3
 8001d44:	00db      	lsls	r3, r3, #3
 8001d46:	18d3      	adds	r3, r2, r3
 8001d48:	6819      	ldr	r1, [r3, #0]
 8001d4a:	685a      	ldr	r2, [r3, #4]
 8001d4c:	6878      	ldr	r0, [r7, #4]
 8001d4e:	1d23      	adds	r3, r4, #4
 8001d50:	00db      	lsls	r3, r3, #3
 8001d52:	18c3      	adds	r3, r0, r3
 8001d54:	3302      	adds	r3, #2
 8001d56:	20ff      	movs	r0, #255	; 0xff
 8001d58:	4008      	ands	r0, r1
 8001d5a:	0005      	movs	r5, r0
 8001d5c:	7818      	ldrb	r0, [r3, #0]
 8001d5e:	2400      	movs	r4, #0
 8001d60:	4020      	ands	r0, r4
 8001d62:	1c04      	adds	r4, r0, #0
 8001d64:	1c28      	adds	r0, r5, #0
 8001d66:	4320      	orrs	r0, r4
 8001d68:	7018      	strb	r0, [r3, #0]
 8001d6a:	0a08      	lsrs	r0, r1, #8
 8001d6c:	24ff      	movs	r4, #255	; 0xff
 8001d6e:	4020      	ands	r0, r4
 8001d70:	0005      	movs	r5, r0
 8001d72:	7858      	ldrb	r0, [r3, #1]
 8001d74:	2400      	movs	r4, #0
 8001d76:	4020      	ands	r0, r4
 8001d78:	1c04      	adds	r4, r0, #0
 8001d7a:	1c28      	adds	r0, r5, #0
 8001d7c:	4320      	orrs	r0, r4
 8001d7e:	7058      	strb	r0, [r3, #1]
 8001d80:	0c08      	lsrs	r0, r1, #16
 8001d82:	24ff      	movs	r4, #255	; 0xff
 8001d84:	4020      	ands	r0, r4
 8001d86:	0005      	movs	r5, r0
 8001d88:	7898      	ldrb	r0, [r3, #2]
 8001d8a:	2400      	movs	r4, #0
 8001d8c:	4020      	ands	r0, r4
 8001d8e:	1c04      	adds	r4, r0, #0
 8001d90:	1c28      	adds	r0, r5, #0
 8001d92:	4320      	orrs	r0, r4
 8001d94:	7098      	strb	r0, [r3, #2]
 8001d96:	0e0d      	lsrs	r5, r1, #24
 8001d98:	78d8      	ldrb	r0, [r3, #3]
 8001d9a:	2400      	movs	r4, #0
 8001d9c:	4020      	ands	r0, r4
 8001d9e:	1c04      	adds	r4, r0, #0
 8001da0:	1c28      	adds	r0, r5, #0
 8001da2:	4320      	orrs	r0, r4
 8001da4:	70d8      	strb	r0, [r3, #3]
 8001da6:	20ff      	movs	r0, #255	; 0xff
 8001da8:	4010      	ands	r0, r2
 8001daa:	0005      	movs	r5, r0
 8001dac:	7918      	ldrb	r0, [r3, #4]
 8001dae:	2400      	movs	r4, #0
 8001db0:	4020      	ands	r0, r4
 8001db2:	1c04      	adds	r4, r0, #0
 8001db4:	1c28      	adds	r0, r5, #0
 8001db6:	4320      	orrs	r0, r4
 8001db8:	7118      	strb	r0, [r3, #4]
 8001dba:	0a10      	lsrs	r0, r2, #8
 8001dbc:	24ff      	movs	r4, #255	; 0xff
 8001dbe:	4020      	ands	r0, r4
 8001dc0:	0005      	movs	r5, r0
 8001dc2:	7958      	ldrb	r0, [r3, #5]
 8001dc4:	2400      	movs	r4, #0
 8001dc6:	4020      	ands	r0, r4
 8001dc8:	1c04      	adds	r4, r0, #0
 8001dca:	1c28      	adds	r0, r5, #0
 8001dcc:	4320      	orrs	r0, r4
 8001dce:	7158      	strb	r0, [r3, #5]
 8001dd0:	0c10      	lsrs	r0, r2, #16
 8001dd2:	24ff      	movs	r4, #255	; 0xff
 8001dd4:	4020      	ands	r0, r4
 8001dd6:	0005      	movs	r5, r0
 8001dd8:	7998      	ldrb	r0, [r3, #6]
 8001dda:	2400      	movs	r4, #0
 8001ddc:	4020      	ands	r0, r4
 8001dde:	1c04      	adds	r4, r0, #0
 8001de0:	1c28      	adds	r0, r5, #0
 8001de2:	4320      	orrs	r0, r4
 8001de4:	7198      	strb	r0, [r3, #6]
 8001de6:	0e10      	lsrs	r0, r2, #24
 8001de8:	79da      	ldrb	r2, [r3, #7]
 8001dea:	2100      	movs	r1, #0
 8001dec:	400a      	ands	r2, r1
 8001dee:	1c11      	adds	r1, r2, #0
 8001df0:	1c02      	adds	r2, r0, #0
 8001df2:	430a      	orrs	r2, r1
 8001df4:	71da      	strb	r2, [r3, #7]
 8001df6:	19bb      	adds	r3, r7, r6
 8001df8:	781b      	ldrb	r3, [r3, #0]
 8001dfa:	19ba      	adds	r2, r7, r6
 8001dfc:	7814      	ldrb	r4, [r2, #0]
 8001dfe:	4a36      	ldr	r2, [pc, #216]	; (8001ed8 <stateMsg_fill+0x330>)
 8001e00:	3306      	adds	r3, #6
 8001e02:	00db      	lsls	r3, r3, #3
 8001e04:	18d3      	adds	r3, r2, r3
 8001e06:	6819      	ldr	r1, [r3, #0]
 8001e08:	685a      	ldr	r2, [r3, #4]
 8001e0a:	6878      	ldr	r0, [r7, #4]
 8001e0c:	1de3      	adds	r3, r4, #7
 8001e0e:	00db      	lsls	r3, r3, #3
 8001e10:	18c3      	adds	r3, r0, r3
 8001e12:	3302      	adds	r3, #2
 8001e14:	20ff      	movs	r0, #255	; 0xff
 8001e16:	4008      	ands	r0, r1
 8001e18:	0005      	movs	r5, r0
 8001e1a:	7818      	ldrb	r0, [r3, #0]
 8001e1c:	2400      	movs	r4, #0
 8001e1e:	4020      	ands	r0, r4
 8001e20:	1c04      	adds	r4, r0, #0
 8001e22:	1c28      	adds	r0, r5, #0
 8001e24:	4320      	orrs	r0, r4
 8001e26:	7018      	strb	r0, [r3, #0]
 8001e28:	0a08      	lsrs	r0, r1, #8
 8001e2a:	24ff      	movs	r4, #255	; 0xff
 8001e2c:	4020      	ands	r0, r4
 8001e2e:	0005      	movs	r5, r0
 8001e30:	7858      	ldrb	r0, [r3, #1]
 8001e32:	2400      	movs	r4, #0
 8001e34:	4020      	ands	r0, r4
 8001e36:	1c04      	adds	r4, r0, #0
 8001e38:	1c28      	adds	r0, r5, #0
 8001e3a:	4320      	orrs	r0, r4
 8001e3c:	7058      	strb	r0, [r3, #1]
 8001e3e:	0c08      	lsrs	r0, r1, #16
 8001e40:	24ff      	movs	r4, #255	; 0xff
 8001e42:	4020      	ands	r0, r4
 8001e44:	0005      	movs	r5, r0
 8001e46:	7898      	ldrb	r0, [r3, #2]
 8001e48:	2400      	movs	r4, #0
 8001e4a:	4020      	ands	r0, r4
 8001e4c:	1c04      	adds	r4, r0, #0
 8001e4e:	1c28      	adds	r0, r5, #0
 8001e50:	4320      	orrs	r0, r4
 8001e52:	7098      	strb	r0, [r3, #2]
 8001e54:	0e0d      	lsrs	r5, r1, #24
 8001e56:	78d8      	ldrb	r0, [r3, #3]
 8001e58:	2400      	movs	r4, #0
 8001e5a:	4020      	ands	r0, r4
 8001e5c:	1c04      	adds	r4, r0, #0
 8001e5e:	1c28      	adds	r0, r5, #0
 8001e60:	4320      	orrs	r0, r4
 8001e62:	70d8      	strb	r0, [r3, #3]
 8001e64:	20ff      	movs	r0, #255	; 0xff
 8001e66:	4010      	ands	r0, r2
 8001e68:	0005      	movs	r5, r0
 8001e6a:	7918      	ldrb	r0, [r3, #4]
 8001e6c:	2400      	movs	r4, #0
 8001e6e:	4020      	ands	r0, r4
 8001e70:	1c04      	adds	r4, r0, #0
 8001e72:	1c28      	adds	r0, r5, #0
 8001e74:	4320      	orrs	r0, r4
 8001e76:	7118      	strb	r0, [r3, #4]
 8001e78:	0a10      	lsrs	r0, r2, #8
 8001e7a:	24ff      	movs	r4, #255	; 0xff
 8001e7c:	4020      	ands	r0, r4
 8001e7e:	0005      	movs	r5, r0
 8001e80:	7958      	ldrb	r0, [r3, #5]
 8001e82:	2400      	movs	r4, #0
 8001e84:	4020      	ands	r0, r4
 8001e86:	1c04      	adds	r4, r0, #0
 8001e88:	1c28      	adds	r0, r5, #0
 8001e8a:	4320      	orrs	r0, r4
 8001e8c:	7158      	strb	r0, [r3, #5]
 8001e8e:	0c10      	lsrs	r0, r2, #16
 8001e90:	24ff      	movs	r4, #255	; 0xff
 8001e92:	4020      	ands	r0, r4
 8001e94:	0005      	movs	r5, r0
 8001e96:	7998      	ldrb	r0, [r3, #6]
 8001e98:	2400      	movs	r4, #0
 8001e9a:	4020      	ands	r0, r4
 8001e9c:	1c04      	adds	r4, r0, #0
 8001e9e:	1c28      	adds	r0, r5, #0
 8001ea0:	4320      	orrs	r0, r4
 8001ea2:	7198      	strb	r0, [r3, #6]
 8001ea4:	0e10      	lsrs	r0, r2, #24
 8001ea6:	79da      	ldrb	r2, [r3, #7]
 8001ea8:	2100      	movs	r1, #0
 8001eaa:	400a      	ands	r2, r1
 8001eac:	1c11      	adds	r1, r2, #0
 8001eae:	1c02      	adds	r2, r0, #0
 8001eb0:	430a      	orrs	r2, r1
 8001eb2:	71da      	strb	r2, [r3, #7]
 8001eb4:	19bb      	adds	r3, r7, r6
 8001eb6:	781a      	ldrb	r2, [r3, #0]
 8001eb8:	19bb      	adds	r3, r7, r6
 8001eba:	3201      	adds	r2, #1
 8001ebc:	701a      	strb	r2, [r3, #0]
 8001ebe:	230f      	movs	r3, #15
 8001ec0:	18fb      	adds	r3, r7, r3
 8001ec2:	781b      	ldrb	r3, [r3, #0]
 8001ec4:	2b02      	cmp	r3, #2
 8001ec6:	d800      	bhi.n	8001eca <stateMsg_fill+0x322>
 8001ec8:	e6d7      	b.n	8001c7a <stateMsg_fill+0xd2>
 8001eca:	230e      	movs	r3, #14
 8001ecc:	18fb      	adds	r3, r7, r3
 8001ece:	2200      	movs	r2, #0
 8001ed0:	701a      	strb	r2, [r3, #0]
 8001ed2:	e069      	b.n	8001fa8 <stateMsg_fill+0x400>
 8001ed4:	20000108 	.word	0x20000108
 8001ed8:	20000070 	.word	0x20000070
 8001edc:	260e      	movs	r6, #14
 8001ede:	19bb      	adds	r3, r7, r6
 8001ee0:	781b      	ldrb	r3, [r3, #0]
 8001ee2:	19ba      	adds	r2, r7, r6
 8001ee4:	7814      	ldrb	r4, [r2, #0]
 8001ee6:	4a58      	ldr	r2, [pc, #352]	; (8002048 <stateMsg_fill+0x4a0>)
 8001ee8:	330f      	adds	r3, #15
 8001eea:	00db      	lsls	r3, r3, #3
 8001eec:	18d3      	adds	r3, r2, r3
 8001eee:	6819      	ldr	r1, [r3, #0]
 8001ef0:	685a      	ldr	r2, [r3, #4]
 8001ef2:	6878      	ldr	r0, [r7, #4]
 8001ef4:	0023      	movs	r3, r4
 8001ef6:	330a      	adds	r3, #10
 8001ef8:	00db      	lsls	r3, r3, #3
 8001efa:	18c3      	adds	r3, r0, r3
 8001efc:	3302      	adds	r3, #2
 8001efe:	20ff      	movs	r0, #255	; 0xff
 8001f00:	4008      	ands	r0, r1
 8001f02:	0005      	movs	r5, r0
 8001f04:	7818      	ldrb	r0, [r3, #0]
 8001f06:	2400      	movs	r4, #0
 8001f08:	4020      	ands	r0, r4
 8001f0a:	1c04      	adds	r4, r0, #0
 8001f0c:	1c28      	adds	r0, r5, #0
 8001f0e:	4320      	orrs	r0, r4
 8001f10:	7018      	strb	r0, [r3, #0]
 8001f12:	0a08      	lsrs	r0, r1, #8
 8001f14:	24ff      	movs	r4, #255	; 0xff
 8001f16:	4020      	ands	r0, r4
 8001f18:	0005      	movs	r5, r0
 8001f1a:	7858      	ldrb	r0, [r3, #1]
 8001f1c:	2400      	movs	r4, #0
 8001f1e:	4020      	ands	r0, r4
 8001f20:	1c04      	adds	r4, r0, #0
 8001f22:	1c28      	adds	r0, r5, #0
 8001f24:	4320      	orrs	r0, r4
 8001f26:	7058      	strb	r0, [r3, #1]
 8001f28:	0c08      	lsrs	r0, r1, #16
 8001f2a:	24ff      	movs	r4, #255	; 0xff
 8001f2c:	4020      	ands	r0, r4
 8001f2e:	0005      	movs	r5, r0
 8001f30:	7898      	ldrb	r0, [r3, #2]
 8001f32:	2400      	movs	r4, #0
 8001f34:	4020      	ands	r0, r4
 8001f36:	1c04      	adds	r4, r0, #0
 8001f38:	1c28      	adds	r0, r5, #0
 8001f3a:	4320      	orrs	r0, r4
 8001f3c:	7098      	strb	r0, [r3, #2]
 8001f3e:	0e0d      	lsrs	r5, r1, #24
 8001f40:	78d8      	ldrb	r0, [r3, #3]
 8001f42:	2400      	movs	r4, #0
 8001f44:	4020      	ands	r0, r4
 8001f46:	1c04      	adds	r4, r0, #0
 8001f48:	1c28      	adds	r0, r5, #0
 8001f4a:	4320      	orrs	r0, r4
 8001f4c:	70d8      	strb	r0, [r3, #3]
 8001f4e:	20ff      	movs	r0, #255	; 0xff
 8001f50:	4010      	ands	r0, r2
 8001f52:	0005      	movs	r5, r0
 8001f54:	7918      	ldrb	r0, [r3, #4]
 8001f56:	2400      	movs	r4, #0
 8001f58:	4020      	ands	r0, r4
 8001f5a:	1c04      	adds	r4, r0, #0
 8001f5c:	1c28      	adds	r0, r5, #0
 8001f5e:	4320      	orrs	r0, r4
 8001f60:	7118      	strb	r0, [r3, #4]
 8001f62:	0a10      	lsrs	r0, r2, #8
 8001f64:	24ff      	movs	r4, #255	; 0xff
 8001f66:	4020      	ands	r0, r4
 8001f68:	0005      	movs	r5, r0
 8001f6a:	7958      	ldrb	r0, [r3, #5]
 8001f6c:	2400      	movs	r4, #0
 8001f6e:	4020      	ands	r0, r4
 8001f70:	1c04      	adds	r4, r0, #0
 8001f72:	1c28      	adds	r0, r5, #0
 8001f74:	4320      	orrs	r0, r4
 8001f76:	7158      	strb	r0, [r3, #5]
 8001f78:	0c10      	lsrs	r0, r2, #16
 8001f7a:	24ff      	movs	r4, #255	; 0xff
 8001f7c:	4020      	ands	r0, r4
 8001f7e:	0005      	movs	r5, r0
 8001f80:	7998      	ldrb	r0, [r3, #6]
 8001f82:	2400      	movs	r4, #0
 8001f84:	4020      	ands	r0, r4
 8001f86:	1c04      	adds	r4, r0, #0
 8001f88:	1c28      	adds	r0, r5, #0
 8001f8a:	4320      	orrs	r0, r4
 8001f8c:	7198      	strb	r0, [r3, #6]
 8001f8e:	0e10      	lsrs	r0, r2, #24
 8001f90:	79da      	ldrb	r2, [r3, #7]
 8001f92:	2100      	movs	r1, #0
 8001f94:	400a      	ands	r2, r1
 8001f96:	1c11      	adds	r1, r2, #0
 8001f98:	1c02      	adds	r2, r0, #0
 8001f9a:	430a      	orrs	r2, r1
 8001f9c:	71da      	strb	r2, [r3, #7]
 8001f9e:	19bb      	adds	r3, r7, r6
 8001fa0:	781a      	ldrb	r2, [r3, #0]
 8001fa2:	19bb      	adds	r3, r7, r6
 8001fa4:	3201      	adds	r2, #1
 8001fa6:	701a      	strb	r2, [r3, #0]
 8001fa8:	230e      	movs	r3, #14
 8001faa:	18fb      	adds	r3, r7, r3
 8001fac:	781b      	ldrb	r3, [r3, #0]
 8001fae:	2b03      	cmp	r3, #3
 8001fb0:	d994      	bls.n	8001edc <stateMsg_fill+0x334>
 8001fb2:	687b      	ldr	r3, [r7, #4]
 8001fb4:	3372      	adds	r3, #114	; 0x72
 8001fb6:	781a      	ldrb	r2, [r3, #0]
 8001fb8:	2100      	movs	r1, #0
 8001fba:	400a      	ands	r2, r1
 8001fbc:	701a      	strb	r2, [r3, #0]
 8001fbe:	785a      	ldrb	r2, [r3, #1]
 8001fc0:	2100      	movs	r1, #0
 8001fc2:	400a      	ands	r2, r1
 8001fc4:	705a      	strb	r2, [r3, #1]
 8001fc6:	789a      	ldrb	r2, [r3, #2]
 8001fc8:	2100      	movs	r1, #0
 8001fca:	400a      	ands	r2, r1
 8001fcc:	709a      	strb	r2, [r3, #2]
 8001fce:	78da      	ldrb	r2, [r3, #3]
 8001fd0:	2100      	movs	r1, #0
 8001fd2:	400a      	ands	r2, r1
 8001fd4:	70da      	strb	r2, [r3, #3]
 8001fd6:	687b      	ldr	r3, [r7, #4]
 8001fd8:	2176      	movs	r1, #118	; 0x76
 8001fda:	0018      	movs	r0, r3
 8001fdc:	f7ff fd58 	bl	8001a90 <crc32>
 8001fe0:	0002      	movs	r2, r0
 8001fe2:	687b      	ldr	r3, [r7, #4]
 8001fe4:	3372      	adds	r3, #114	; 0x72
 8001fe6:	21ff      	movs	r1, #255	; 0xff
 8001fe8:	4011      	ands	r1, r2
 8001fea:	000c      	movs	r4, r1
 8001fec:	7819      	ldrb	r1, [r3, #0]
 8001fee:	2000      	movs	r0, #0
 8001ff0:	4001      	ands	r1, r0
 8001ff2:	1c08      	adds	r0, r1, #0
 8001ff4:	1c21      	adds	r1, r4, #0
 8001ff6:	4301      	orrs	r1, r0
 8001ff8:	7019      	strb	r1, [r3, #0]
 8001ffa:	0a11      	lsrs	r1, r2, #8
 8001ffc:	20ff      	movs	r0, #255	; 0xff
 8001ffe:	4001      	ands	r1, r0
 8002000:	000c      	movs	r4, r1
 8002002:	7859      	ldrb	r1, [r3, #1]
 8002004:	2000      	movs	r0, #0
 8002006:	4001      	ands	r1, r0
 8002008:	1c08      	adds	r0, r1, #0
 800200a:	1c21      	adds	r1, r4, #0
 800200c:	4301      	orrs	r1, r0
 800200e:	7059      	strb	r1, [r3, #1]
 8002010:	0c11      	lsrs	r1, r2, #16
 8002012:	20ff      	movs	r0, #255	; 0xff
 8002014:	4001      	ands	r1, r0
 8002016:	000c      	movs	r4, r1
 8002018:	7899      	ldrb	r1, [r3, #2]
 800201a:	2000      	movs	r0, #0
 800201c:	4001      	ands	r1, r0
 800201e:	1c08      	adds	r0, r1, #0
 8002020:	1c21      	adds	r1, r4, #0
 8002022:	4301      	orrs	r1, r0
 8002024:	7099      	strb	r1, [r3, #2]
 8002026:	0e10      	lsrs	r0, r2, #24
 8002028:	78da      	ldrb	r2, [r3, #3]
 800202a:	2100      	movs	r1, #0
 800202c:	400a      	ands	r2, r1
 800202e:	1c11      	adds	r1, r2, #0
 8002030:	1c02      	adds	r2, r0, #0
 8002032:	430a      	orrs	r2, r1
 8002034:	70da      	strb	r2, [r3, #3]
 8002036:	4b05      	ldr	r3, [pc, #20]	; (800204c <stateMsg_fill+0x4a4>)
 8002038:	681b      	ldr	r3, [r3, #0]
 800203a:	1c5a      	adds	r2, r3, #1
 800203c:	4b03      	ldr	r3, [pc, #12]	; (800204c <stateMsg_fill+0x4a4>)
 800203e:	601a      	str	r2, [r3, #0]
 8002040:	46c0      	nop			; (mov r8, r8)
 8002042:	46bd      	mov	sp, r7
 8002044:	b005      	add	sp, #20
 8002046:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002048:	20000070 	.word	0x20000070
 800204c:	20000108 	.word	0x20000108

08002050 <stateMsg_send>:
 8002050:	b580      	push	{r7, lr}
 8002052:	b086      	sub	sp, #24
 8002054:	af00      	add	r7, sp, #0
 8002056:	6078      	str	r0, [r7, #4]
 8002058:	2300      	movs	r3, #0
 800205a:	617b      	str	r3, [r7, #20]
 800205c:	687b      	ldr	r3, [r7, #4]
 800205e:	60fb      	str	r3, [r7, #12]
 8002060:	2313      	movs	r3, #19
 8002062:	18fb      	adds	r3, r7, r3
 8002064:	2276      	movs	r2, #118	; 0x76
 8002066:	701a      	strb	r2, [r3, #0]
 8002068:	4b15      	ldr	r3, [pc, #84]	; (80020c0 <stateMsg_send+0x70>)
 800206a:	0018      	movs	r0, r3
 800206c:	f7ff fcf5 	bl	8001a5a <LL_USART_ClearFlag_TC>
 8002070:	e012      	b.n	8002098 <stateMsg_send+0x48>
 8002072:	46c0      	nop			; (mov r8, r8)
 8002074:	4b12      	ldr	r3, [pc, #72]	; (80020c0 <stateMsg_send+0x70>)
 8002076:	0018      	movs	r0, r3
 8002078:	f7ff fcdf 	bl	8001a3a <LL_USART_IsActiveFlag_TXE>
 800207c:	1e03      	subs	r3, r0, #0
 800207e:	d0f9      	beq.n	8002074 <stateMsg_send+0x24>
 8002080:	697b      	ldr	r3, [r7, #20]
 8002082:	1c5a      	adds	r2, r3, #1
 8002084:	617a      	str	r2, [r7, #20]
 8002086:	001a      	movs	r2, r3
 8002088:	68fb      	ldr	r3, [r7, #12]
 800208a:	189b      	adds	r3, r3, r2
 800208c:	781b      	ldrb	r3, [r3, #0]
 800208e:	4a0c      	ldr	r2, [pc, #48]	; (80020c0 <stateMsg_send+0x70>)
 8002090:	0019      	movs	r1, r3
 8002092:	0010      	movs	r0, r2
 8002094:	f7ff fcec 	bl	8001a70 <LL_USART_TransmitData8>
 8002098:	2213      	movs	r2, #19
 800209a:	18bb      	adds	r3, r7, r2
 800209c:	781b      	ldrb	r3, [r3, #0]
 800209e:	18ba      	adds	r2, r7, r2
 80020a0:	1e59      	subs	r1, r3, #1
 80020a2:	7011      	strb	r1, [r2, #0]
 80020a4:	2b00      	cmp	r3, #0
 80020a6:	d1e4      	bne.n	8002072 <stateMsg_send+0x22>
 80020a8:	46c0      	nop			; (mov r8, r8)
 80020aa:	4b05      	ldr	r3, [pc, #20]	; (80020c0 <stateMsg_send+0x70>)
 80020ac:	0018      	movs	r0, r3
 80020ae:	f7ff fcb4 	bl	8001a1a <LL_USART_IsActiveFlag_TC>
 80020b2:	1e03      	subs	r3, r0, #0
 80020b4:	d0f9      	beq.n	80020aa <stateMsg_send+0x5a>
 80020b6:	46c0      	nop			; (mov r8, r8)
 80020b8:	46bd      	mov	sp, r7
 80020ba:	b006      	add	sp, #24
 80020bc:	bd80      	pop	{r7, pc}
 80020be:	46c0      	nop			; (mov r8, r8)
 80020c0:	40013800 	.word	0x40013800

080020c4 <NVIC_SetPriority>:
 80020c4:	b590      	push	{r4, r7, lr}
 80020c6:	b083      	sub	sp, #12
 80020c8:	af00      	add	r7, sp, #0
 80020ca:	0002      	movs	r2, r0
 80020cc:	6039      	str	r1, [r7, #0]
 80020ce:	1dfb      	adds	r3, r7, #7
 80020d0:	701a      	strb	r2, [r3, #0]
 80020d2:	1dfb      	adds	r3, r7, #7
 80020d4:	781b      	ldrb	r3, [r3, #0]
 80020d6:	2b7f      	cmp	r3, #127	; 0x7f
 80020d8:	d932      	bls.n	8002140 <NVIC_SetPriority+0x7c>
 80020da:	4a2f      	ldr	r2, [pc, #188]	; (8002198 <NVIC_SetPriority+0xd4>)
 80020dc:	1dfb      	adds	r3, r7, #7
 80020de:	781b      	ldrb	r3, [r3, #0]
 80020e0:	0019      	movs	r1, r3
 80020e2:	230f      	movs	r3, #15
 80020e4:	400b      	ands	r3, r1
 80020e6:	3b08      	subs	r3, #8
 80020e8:	089b      	lsrs	r3, r3, #2
 80020ea:	3306      	adds	r3, #6
 80020ec:	009b      	lsls	r3, r3, #2
 80020ee:	18d3      	adds	r3, r2, r3
 80020f0:	3304      	adds	r3, #4
 80020f2:	681b      	ldr	r3, [r3, #0]
 80020f4:	1dfa      	adds	r2, r7, #7
 80020f6:	7812      	ldrb	r2, [r2, #0]
 80020f8:	0011      	movs	r1, r2
 80020fa:	2203      	movs	r2, #3
 80020fc:	400a      	ands	r2, r1
 80020fe:	00d2      	lsls	r2, r2, #3
 8002100:	21ff      	movs	r1, #255	; 0xff
 8002102:	4091      	lsls	r1, r2
 8002104:	000a      	movs	r2, r1
 8002106:	43d2      	mvns	r2, r2
 8002108:	401a      	ands	r2, r3
 800210a:	0011      	movs	r1, r2
 800210c:	683b      	ldr	r3, [r7, #0]
 800210e:	019b      	lsls	r3, r3, #6
 8002110:	22ff      	movs	r2, #255	; 0xff
 8002112:	401a      	ands	r2, r3
 8002114:	1dfb      	adds	r3, r7, #7
 8002116:	781b      	ldrb	r3, [r3, #0]
 8002118:	0018      	movs	r0, r3
 800211a:	2303      	movs	r3, #3
 800211c:	4003      	ands	r3, r0
 800211e:	00db      	lsls	r3, r3, #3
 8002120:	409a      	lsls	r2, r3
 8002122:	481d      	ldr	r0, [pc, #116]	; (8002198 <NVIC_SetPriority+0xd4>)
 8002124:	1dfb      	adds	r3, r7, #7
 8002126:	781b      	ldrb	r3, [r3, #0]
 8002128:	001c      	movs	r4, r3
 800212a:	230f      	movs	r3, #15
 800212c:	4023      	ands	r3, r4
 800212e:	3b08      	subs	r3, #8
 8002130:	089b      	lsrs	r3, r3, #2
 8002132:	430a      	orrs	r2, r1
 8002134:	3306      	adds	r3, #6
 8002136:	009b      	lsls	r3, r3, #2
 8002138:	18c3      	adds	r3, r0, r3
 800213a:	3304      	adds	r3, #4
 800213c:	601a      	str	r2, [r3, #0]
 800213e:	e027      	b.n	8002190 <NVIC_SetPriority+0xcc>
 8002140:	4a16      	ldr	r2, [pc, #88]	; (800219c <NVIC_SetPriority+0xd8>)
 8002142:	1dfb      	adds	r3, r7, #7
 8002144:	781b      	ldrb	r3, [r3, #0]
 8002146:	b25b      	sxtb	r3, r3
 8002148:	089b      	lsrs	r3, r3, #2
 800214a:	33c0      	adds	r3, #192	; 0xc0
 800214c:	009b      	lsls	r3, r3, #2
 800214e:	589b      	ldr	r3, [r3, r2]
 8002150:	1dfa      	adds	r2, r7, #7
 8002152:	7812      	ldrb	r2, [r2, #0]
 8002154:	0011      	movs	r1, r2
 8002156:	2203      	movs	r2, #3
 8002158:	400a      	ands	r2, r1
 800215a:	00d2      	lsls	r2, r2, #3
 800215c:	21ff      	movs	r1, #255	; 0xff
 800215e:	4091      	lsls	r1, r2
 8002160:	000a      	movs	r2, r1
 8002162:	43d2      	mvns	r2, r2
 8002164:	401a      	ands	r2, r3
 8002166:	0011      	movs	r1, r2
 8002168:	683b      	ldr	r3, [r7, #0]
 800216a:	019b      	lsls	r3, r3, #6
 800216c:	22ff      	movs	r2, #255	; 0xff
 800216e:	401a      	ands	r2, r3
 8002170:	1dfb      	adds	r3, r7, #7
 8002172:	781b      	ldrb	r3, [r3, #0]
 8002174:	0018      	movs	r0, r3
 8002176:	2303      	movs	r3, #3
 8002178:	4003      	ands	r3, r0
 800217a:	00db      	lsls	r3, r3, #3
 800217c:	409a      	lsls	r2, r3
 800217e:	4807      	ldr	r0, [pc, #28]	; (800219c <NVIC_SetPriority+0xd8>)
 8002180:	1dfb      	adds	r3, r7, #7
 8002182:	781b      	ldrb	r3, [r3, #0]
 8002184:	b25b      	sxtb	r3, r3
 8002186:	089b      	lsrs	r3, r3, #2
 8002188:	430a      	orrs	r2, r1
 800218a:	33c0      	adds	r3, #192	; 0xc0
 800218c:	009b      	lsls	r3, r3, #2
 800218e:	501a      	str	r2, [r3, r0]
 8002190:	46c0      	nop			; (mov r8, r8)
 8002192:	46bd      	mov	sp, r7
 8002194:	b003      	add	sp, #12
 8002196:	bd90      	pop	{r4, r7, pc}
 8002198:	e000ed00 	.word	0xe000ed00
 800219c:	e000e100 	.word	0xe000e100

080021a0 <LL_InitTick>:
 80021a0:	b580      	push	{r7, lr}
 80021a2:	b082      	sub	sp, #8
 80021a4:	af00      	add	r7, sp, #0
 80021a6:	6078      	str	r0, [r7, #4]
 80021a8:	6039      	str	r1, [r7, #0]
 80021aa:	6839      	ldr	r1, [r7, #0]
 80021ac:	6878      	ldr	r0, [r7, #4]
 80021ae:	f7fd ffab 	bl	8000108 <__udivsi3>
 80021b2:	0003      	movs	r3, r0
 80021b4:	001a      	movs	r2, r3
 80021b6:	4b06      	ldr	r3, [pc, #24]	; (80021d0 <LL_InitTick+0x30>)
 80021b8:	3a01      	subs	r2, #1
 80021ba:	605a      	str	r2, [r3, #4]
 80021bc:	4b04      	ldr	r3, [pc, #16]	; (80021d0 <LL_InitTick+0x30>)
 80021be:	2200      	movs	r2, #0
 80021c0:	609a      	str	r2, [r3, #8]
 80021c2:	4b03      	ldr	r3, [pc, #12]	; (80021d0 <LL_InitTick+0x30>)
 80021c4:	2205      	movs	r2, #5
 80021c6:	601a      	str	r2, [r3, #0]
 80021c8:	46c0      	nop			; (mov r8, r8)
 80021ca:	46bd      	mov	sp, r7
 80021cc:	b002      	add	sp, #8
 80021ce:	bd80      	pop	{r7, pc}
 80021d0:	e000e010 	.word	0xe000e010

080021d4 <LL_SYSTICK_EnableIT>:
 80021d4:	b580      	push	{r7, lr}
 80021d6:	af00      	add	r7, sp, #0
 80021d8:	4b04      	ldr	r3, [pc, #16]	; (80021ec <LL_SYSTICK_EnableIT+0x18>)
 80021da:	681a      	ldr	r2, [r3, #0]
 80021dc:	4b03      	ldr	r3, [pc, #12]	; (80021ec <LL_SYSTICK_EnableIT+0x18>)
 80021de:	2102      	movs	r1, #2
 80021e0:	430a      	orrs	r2, r1
 80021e2:	601a      	str	r2, [r3, #0]
 80021e4:	46c0      	nop			; (mov r8, r8)
 80021e6:	46bd      	mov	sp, r7
 80021e8:	bd80      	pop	{r7, pc}
 80021ea:	46c0      	nop			; (mov r8, r8)
 80021ec:	e000e010 	.word	0xe000e010

080021f0 <SysTick_Handler>:
 80021f0:	b580      	push	{r7, lr}
 80021f2:	af00      	add	r7, sp, #0
 80021f4:	4b0c      	ldr	r3, [pc, #48]	; (8002228 <SysTick_Handler+0x38>)
 80021f6:	681b      	ldr	r3, [r3, #0]
 80021f8:	1c5a      	adds	r2, r3, #1
 80021fa:	23fa      	movs	r3, #250	; 0xfa
 80021fc:	009b      	lsls	r3, r3, #2
 80021fe:	0019      	movs	r1, r3
 8002200:	0010      	movs	r0, r2
 8002202:	f7fe f807 	bl	8000214 <__aeabi_uidivmod>
 8002206:	000b      	movs	r3, r1
 8002208:	001a      	movs	r2, r3
 800220a:	4b07      	ldr	r3, [pc, #28]	; (8002228 <SysTick_Handler+0x38>)
 800220c:	601a      	str	r2, [r3, #0]
 800220e:	4b06      	ldr	r3, [pc, #24]	; (8002228 <SysTick_Handler+0x38>)
 8002210:	681b      	ldr	r3, [r3, #0]
 8002212:	2b00      	cmp	r3, #0
 8002214:	d104      	bne.n	8002220 <SysTick_Handler+0x30>
 8002216:	4b05      	ldr	r3, [pc, #20]	; (800222c <SysTick_Handler+0x3c>)
 8002218:	681b      	ldr	r3, [r3, #0]
 800221a:	1c5a      	adds	r2, r3, #1
 800221c:	4b03      	ldr	r3, [pc, #12]	; (800222c <SysTick_Handler+0x3c>)
 800221e:	601a      	str	r2, [r3, #0]
 8002220:	46c0      	nop			; (mov r8, r8)
 8002222:	46bd      	mov	sp, r7
 8002224:	bd80      	pop	{r7, pc}
 8002226:	46c0      	nop			; (mov r8, r8)
 8002228:	20000110 	.word	0x20000110
 800222c:	2000010c 	.word	0x2000010c

08002230 <systick_config>:
 8002230:	b580      	push	{r7, lr}
 8002232:	af00      	add	r7, sp, #0
 8002234:	23fa      	movs	r3, #250	; 0xfa
 8002236:	009b      	lsls	r3, r3, #2
 8002238:	4a07      	ldr	r2, [pc, #28]	; (8002258 <systick_config+0x28>)
 800223a:	0019      	movs	r1, r3
 800223c:	0010      	movs	r0, r2
 800223e:	f7ff ffaf 	bl	80021a0 <LL_InitTick>
 8002242:	f7ff ffc7 	bl	80021d4 <LL_SYSTICK_EnableIT>
 8002246:	2301      	movs	r3, #1
 8002248:	425b      	negs	r3, r3
 800224a:	2100      	movs	r1, #0
 800224c:	0018      	movs	r0, r3
 800224e:	f7ff ff39 	bl	80020c4 <NVIC_SetPriority>
 8002252:	46c0      	nop			; (mov r8, r8)
 8002254:	46bd      	mov	sp, r7
 8002256:	bd80      	pop	{r7, pc}
 8002258:	02dc6c00 	.word	0x02dc6c00

0800225c <getTime_s>:
 800225c:	b5b0      	push	{r4, r5, r7, lr}
 800225e:	b082      	sub	sp, #8
 8002260:	af00      	add	r7, sp, #0
 8002262:	4b11      	ldr	r3, [pc, #68]	; (80022a8 <getTime_s+0x4c>)
 8002264:	681b      	ldr	r3, [r3, #0]
 8002266:	607b      	str	r3, [r7, #4]
 8002268:	4b10      	ldr	r3, [pc, #64]	; (80022ac <getTime_s+0x50>)
 800226a:	681b      	ldr	r3, [r3, #0]
 800226c:	603b      	str	r3, [r7, #0]
 800226e:	6838      	ldr	r0, [r7, #0]
 8002270:	f7fe fa82 	bl	8000778 <__aeabi_ui2f>
 8002274:	1c04      	adds	r4, r0, #0
 8002276:	6878      	ldr	r0, [r7, #4]
 8002278:	f7fe fa7e 	bl	8000778 <__aeabi_ui2f>
 800227c:	1c05      	adds	r5, r0, #0
 800227e:	23fa      	movs	r3, #250	; 0xfa
 8002280:	009b      	lsls	r3, r3, #2
 8002282:	0018      	movs	r0, r3
 8002284:	f7fe fa78 	bl	8000778 <__aeabi_ui2f>
 8002288:	1c03      	adds	r3, r0, #0
 800228a:	1c19      	adds	r1, r3, #0
 800228c:	1c28      	adds	r0, r5, #0
 800228e:	f7fe f961 	bl	8000554 <__aeabi_fdiv>
 8002292:	1c03      	adds	r3, r0, #0
 8002294:	1c19      	adds	r1, r3, #0
 8002296:	1c20      	adds	r0, r4, #0
 8002298:	f7fd ffc2 	bl	8000220 <__aeabi_fadd>
 800229c:	1c03      	adds	r3, r0, #0
 800229e:	1c18      	adds	r0, r3, #0
 80022a0:	46bd      	mov	sp, r7
 80022a2:	b002      	add	sp, #8
 80022a4:	bdb0      	pop	{r4, r5, r7, pc}
 80022a6:	46c0      	nop			; (mov r8, r8)
 80022a8:	20000110 	.word	0x20000110
 80022ac:	2000010c 	.word	0x2000010c

080022b0 <main>:
 80022b0:	b590      	push	{r4, r7, lr}
 80022b2:	b0a5      	sub	sp, #148	; 0x94
 80022b4:	af00      	add	r7, sp, #0
 80022b6:	2300      	movs	r3, #0
 80022b8:	248c      	movs	r4, #140	; 0x8c
 80022ba:	193a      	adds	r2, r7, r4
 80022bc:	6013      	str	r3, [r2, #0]
 80022be:	f000 fbad 	bl	8002a1c <rcc_config>
 80022c2:	f000 fbdf 	bl	8002a84 <gpio_config>
 80022c6:	f000 fbf1 	bl	8002aac <exti_config>
 80022ca:	f000 fbf5 	bl	8002ab8 <usart_config>
 80022ce:	f000 fc6b 	bl	8002ba8 <i2c_config>
 80022d2:	f000 fd65 	bl	8002da0 <printf_config>
 80022d6:	f7ff ffab 	bl	8002230 <systick_config>
 80022da:	4b26      	ldr	r3, [pc, #152]	; (8002374 <main+0xc4>)
 80022dc:	2248      	movs	r2, #72	; 0x48
 80022de:	2100      	movs	r1, #0
 80022e0:	0018      	movs	r0, r3
 80022e2:	f001 fb67 	bl	80039b4 <memset>
 80022e6:	4b24      	ldr	r3, [pc, #144]	; (8002378 <main+0xc8>)
 80022e8:	2298      	movs	r2, #152	; 0x98
 80022ea:	2100      	movs	r1, #0
 80022ec:	0018      	movs	r0, r3
 80022ee:	f001 fb61 	bl	80039b4 <memset>
 80022f2:	2314      	movs	r3, #20
 80022f4:	18fb      	adds	r3, r7, r3
 80022f6:	0018      	movs	r0, r3
 80022f8:	2376      	movs	r3, #118	; 0x76
 80022fa:	001a      	movs	r2, r3
 80022fc:	2100      	movs	r1, #0
 80022fe:	f001 fb59 	bl	80039b4 <memset>
 8002302:	f000 fedb 	bl	80030bc <mpu9255_init>
 8002306:	0003      	movs	r3, r0
 8002308:	193a      	adds	r2, r7, r4
 800230a:	6013      	str	r3, [r2, #0]
 800230c:	193b      	adds	r3, r7, r4
 800230e:	681a      	ldr	r2, [r3, #0]
 8002310:	4b1a      	ldr	r3, [pc, #104]	; (800237c <main+0xcc>)
 8002312:	0011      	movs	r1, r2
 8002314:	0018      	movs	r0, r3
 8002316:	f001 fb03 	bl	8003920 <xprintf>
 800231a:	230c      	movs	r3, #12
 800231c:	18fb      	adds	r3, r7, r3
 800231e:	0018      	movs	r0, r3
 8002320:	2306      	movs	r3, #6
 8002322:	001a      	movs	r2, r3
 8002324:	2100      	movs	r1, #0
 8002326:	f001 fb45 	bl	80039b4 <memset>
 800232a:	1d3b      	adds	r3, r7, #4
 800232c:	0018      	movs	r0, r3
 800232e:	2306      	movs	r3, #6
 8002330:	001a      	movs	r2, r3
 8002332:	2100      	movs	r1, #0
 8002334:	f001 fb3e 	bl	80039b4 <memset>
 8002338:	1d3a      	adds	r2, r7, #4
 800233a:	240c      	movs	r4, #12
 800233c:	193b      	adds	r3, r7, r4
 800233e:	0011      	movs	r1, r2
 8002340:	0018      	movs	r0, r3
 8002342:	f000 ff9a 	bl	800327a <mpu9255_readIMU>
 8002346:	4a0b      	ldr	r2, [pc, #44]	; (8002374 <main+0xc4>)
 8002348:	193b      	adds	r3, r7, r4
 800234a:	0011      	movs	r1, r2
 800234c:	0018      	movs	r0, r3
 800234e:	f000 ffeb 	bl	8003328 <mpu9255_recalcAccel>
 8002352:	4a0b      	ldr	r2, [pc, #44]	; (8002380 <main+0xd0>)
 8002354:	1d3b      	adds	r3, r7, #4
 8002356:	0011      	movs	r1, r2
 8002358:	0018      	movs	r0, r3
 800235a:	f001 f879 	bl	8003450 <mpu9255_recalcGyro>
 800235e:	2414      	movs	r4, #20
 8002360:	193b      	adds	r3, r7, r4
 8002362:	0018      	movs	r0, r3
 8002364:	f7ff fc20 	bl	8001ba8 <stateMsg_fill>
 8002368:	193b      	adds	r3, r7, r4
 800236a:	0018      	movs	r0, r3
 800236c:	f7ff fe70 	bl	8002050 <stateMsg_send>
 8002370:	e7e2      	b.n	8002338 <main+0x88>
 8002372:	46c0      	nop			; (mov r8, r8)
 8002374:	20000028 	.word	0x20000028
 8002378:	20000070 	.word	0x20000070
 800237c:	080039dc 	.word	0x080039dc
 8002380:	20000040 	.word	0x20000040

08002384 <LL_RCC_HSI_Enable>:
 8002384:	b580      	push	{r7, lr}
 8002386:	af00      	add	r7, sp, #0
 8002388:	4b04      	ldr	r3, [pc, #16]	; (800239c <LL_RCC_HSI_Enable+0x18>)
 800238a:	681a      	ldr	r2, [r3, #0]
 800238c:	4b03      	ldr	r3, [pc, #12]	; (800239c <LL_RCC_HSI_Enable+0x18>)
 800238e:	2101      	movs	r1, #1
 8002390:	430a      	orrs	r2, r1
 8002392:	601a      	str	r2, [r3, #0]
 8002394:	46c0      	nop			; (mov r8, r8)
 8002396:	46bd      	mov	sp, r7
 8002398:	bd80      	pop	{r7, pc}
 800239a:	46c0      	nop			; (mov r8, r8)
 800239c:	40021000 	.word	0x40021000

080023a0 <LL_RCC_HSI_IsReady>:
 80023a0:	b580      	push	{r7, lr}
 80023a2:	af00      	add	r7, sp, #0
 80023a4:	4b05      	ldr	r3, [pc, #20]	; (80023bc <LL_RCC_HSI_IsReady+0x1c>)
 80023a6:	681b      	ldr	r3, [r3, #0]
 80023a8:	2202      	movs	r2, #2
 80023aa:	4013      	ands	r3, r2
 80023ac:	3b02      	subs	r3, #2
 80023ae:	425a      	negs	r2, r3
 80023b0:	4153      	adcs	r3, r2
 80023b2:	b2db      	uxtb	r3, r3
 80023b4:	0018      	movs	r0, r3
 80023b6:	46bd      	mov	sp, r7
 80023b8:	bd80      	pop	{r7, pc}
 80023ba:	46c0      	nop			; (mov r8, r8)
 80023bc:	40021000 	.word	0x40021000

080023c0 <LL_RCC_SetSysClkSource>:
 80023c0:	b580      	push	{r7, lr}
 80023c2:	b082      	sub	sp, #8
 80023c4:	af00      	add	r7, sp, #0
 80023c6:	6078      	str	r0, [r7, #4]
 80023c8:	4b06      	ldr	r3, [pc, #24]	; (80023e4 <LL_RCC_SetSysClkSource+0x24>)
 80023ca:	685b      	ldr	r3, [r3, #4]
 80023cc:	2203      	movs	r2, #3
 80023ce:	4393      	bics	r3, r2
 80023d0:	0019      	movs	r1, r3
 80023d2:	4b04      	ldr	r3, [pc, #16]	; (80023e4 <LL_RCC_SetSysClkSource+0x24>)
 80023d4:	687a      	ldr	r2, [r7, #4]
 80023d6:	430a      	orrs	r2, r1
 80023d8:	605a      	str	r2, [r3, #4]
 80023da:	46c0      	nop			; (mov r8, r8)
 80023dc:	46bd      	mov	sp, r7
 80023de:	b002      	add	sp, #8
 80023e0:	bd80      	pop	{r7, pc}
 80023e2:	46c0      	nop			; (mov r8, r8)
 80023e4:	40021000 	.word	0x40021000

080023e8 <LL_RCC_GetSysClkSource>:
 80023e8:	b580      	push	{r7, lr}
 80023ea:	af00      	add	r7, sp, #0
 80023ec:	4b03      	ldr	r3, [pc, #12]	; (80023fc <LL_RCC_GetSysClkSource+0x14>)
 80023ee:	685b      	ldr	r3, [r3, #4]
 80023f0:	220c      	movs	r2, #12
 80023f2:	4013      	ands	r3, r2
 80023f4:	0018      	movs	r0, r3
 80023f6:	46bd      	mov	sp, r7
 80023f8:	bd80      	pop	{r7, pc}
 80023fa:	46c0      	nop			; (mov r8, r8)
 80023fc:	40021000 	.word	0x40021000

08002400 <LL_RCC_SetAHBPrescaler>:
 8002400:	b580      	push	{r7, lr}
 8002402:	b082      	sub	sp, #8
 8002404:	af00      	add	r7, sp, #0
 8002406:	6078      	str	r0, [r7, #4]
 8002408:	4b06      	ldr	r3, [pc, #24]	; (8002424 <LL_RCC_SetAHBPrescaler+0x24>)
 800240a:	685b      	ldr	r3, [r3, #4]
 800240c:	22f0      	movs	r2, #240	; 0xf0
 800240e:	4393      	bics	r3, r2
 8002410:	0019      	movs	r1, r3
 8002412:	4b04      	ldr	r3, [pc, #16]	; (8002424 <LL_RCC_SetAHBPrescaler+0x24>)
 8002414:	687a      	ldr	r2, [r7, #4]
 8002416:	430a      	orrs	r2, r1
 8002418:	605a      	str	r2, [r3, #4]
 800241a:	46c0      	nop			; (mov r8, r8)
 800241c:	46bd      	mov	sp, r7
 800241e:	b002      	add	sp, #8
 8002420:	bd80      	pop	{r7, pc}
 8002422:	46c0      	nop			; (mov r8, r8)
 8002424:	40021000 	.word	0x40021000

08002428 <LL_RCC_SetAPB1Prescaler>:
 8002428:	b580      	push	{r7, lr}
 800242a:	b082      	sub	sp, #8
 800242c:	af00      	add	r7, sp, #0
 800242e:	6078      	str	r0, [r7, #4]
 8002430:	4b06      	ldr	r3, [pc, #24]	; (800244c <LL_RCC_SetAPB1Prescaler+0x24>)
 8002432:	685b      	ldr	r3, [r3, #4]
 8002434:	4a06      	ldr	r2, [pc, #24]	; (8002450 <LL_RCC_SetAPB1Prescaler+0x28>)
 8002436:	4013      	ands	r3, r2
 8002438:	0019      	movs	r1, r3
 800243a:	4b04      	ldr	r3, [pc, #16]	; (800244c <LL_RCC_SetAPB1Prescaler+0x24>)
 800243c:	687a      	ldr	r2, [r7, #4]
 800243e:	430a      	orrs	r2, r1
 8002440:	605a      	str	r2, [r3, #4]
 8002442:	46c0      	nop			; (mov r8, r8)
 8002444:	46bd      	mov	sp, r7
 8002446:	b002      	add	sp, #8
 8002448:	bd80      	pop	{r7, pc}
 800244a:	46c0      	nop			; (mov r8, r8)
 800244c:	40021000 	.word	0x40021000
 8002450:	fffff8ff 	.word	0xfffff8ff

08002454 <LL_RCC_SetUSARTClockSource>:
 8002454:	b580      	push	{r7, lr}
 8002456:	b082      	sub	sp, #8
 8002458:	af00      	add	r7, sp, #0
 800245a:	6078      	str	r0, [r7, #4]
 800245c:	4b09      	ldr	r3, [pc, #36]	; (8002484 <LL_RCC_SetUSARTClockSource+0x30>)
 800245e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002460:	687a      	ldr	r2, [r7, #4]
 8002462:	0e12      	lsrs	r2, r2, #24
 8002464:	2103      	movs	r1, #3
 8002466:	4091      	lsls	r1, r2
 8002468:	000a      	movs	r2, r1
 800246a:	43d2      	mvns	r2, r2
 800246c:	401a      	ands	r2, r3
 800246e:	0011      	movs	r1, r2
 8002470:	687b      	ldr	r3, [r7, #4]
 8002472:	021b      	lsls	r3, r3, #8
 8002474:	0a1a      	lsrs	r2, r3, #8
 8002476:	4b03      	ldr	r3, [pc, #12]	; (8002484 <LL_RCC_SetUSARTClockSource+0x30>)
 8002478:	430a      	orrs	r2, r1
 800247a:	631a      	str	r2, [r3, #48]	; 0x30
 800247c:	46c0      	nop			; (mov r8, r8)
 800247e:	46bd      	mov	sp, r7
 8002480:	b002      	add	sp, #8
 8002482:	bd80      	pop	{r7, pc}
 8002484:	40021000 	.word	0x40021000

08002488 <LL_RCC_SetI2CClockSource>:
 8002488:	b580      	push	{r7, lr}
 800248a:	b082      	sub	sp, #8
 800248c:	af00      	add	r7, sp, #0
 800248e:	6078      	str	r0, [r7, #4]
 8002490:	4b06      	ldr	r3, [pc, #24]	; (80024ac <LL_RCC_SetI2CClockSource+0x24>)
 8002492:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002494:	2210      	movs	r2, #16
 8002496:	4393      	bics	r3, r2
 8002498:	0019      	movs	r1, r3
 800249a:	4b04      	ldr	r3, [pc, #16]	; (80024ac <LL_RCC_SetI2CClockSource+0x24>)
 800249c:	687a      	ldr	r2, [r7, #4]
 800249e:	430a      	orrs	r2, r1
 80024a0:	631a      	str	r2, [r3, #48]	; 0x30
 80024a2:	46c0      	nop			; (mov r8, r8)
 80024a4:	46bd      	mov	sp, r7
 80024a6:	b002      	add	sp, #8
 80024a8:	bd80      	pop	{r7, pc}
 80024aa:	46c0      	nop			; (mov r8, r8)
 80024ac:	40021000 	.word	0x40021000

080024b0 <LL_RCC_PLL_Enable>:
 80024b0:	b580      	push	{r7, lr}
 80024b2:	af00      	add	r7, sp, #0
 80024b4:	4b04      	ldr	r3, [pc, #16]	; (80024c8 <LL_RCC_PLL_Enable+0x18>)
 80024b6:	681a      	ldr	r2, [r3, #0]
 80024b8:	4b03      	ldr	r3, [pc, #12]	; (80024c8 <LL_RCC_PLL_Enable+0x18>)
 80024ba:	2180      	movs	r1, #128	; 0x80
 80024bc:	0449      	lsls	r1, r1, #17
 80024be:	430a      	orrs	r2, r1
 80024c0:	601a      	str	r2, [r3, #0]
 80024c2:	46c0      	nop			; (mov r8, r8)
 80024c4:	46bd      	mov	sp, r7
 80024c6:	bd80      	pop	{r7, pc}
 80024c8:	40021000 	.word	0x40021000

080024cc <LL_RCC_PLL_IsReady>:
 80024cc:	b580      	push	{r7, lr}
 80024ce:	af00      	add	r7, sp, #0
 80024d0:	4b07      	ldr	r3, [pc, #28]	; (80024f0 <LL_RCC_PLL_IsReady+0x24>)
 80024d2:	681a      	ldr	r2, [r3, #0]
 80024d4:	2380      	movs	r3, #128	; 0x80
 80024d6:	049b      	lsls	r3, r3, #18
 80024d8:	4013      	ands	r3, r2
 80024da:	22fe      	movs	r2, #254	; 0xfe
 80024dc:	0612      	lsls	r2, r2, #24
 80024de:	4694      	mov	ip, r2
 80024e0:	4463      	add	r3, ip
 80024e2:	425a      	negs	r2, r3
 80024e4:	4153      	adcs	r3, r2
 80024e6:	b2db      	uxtb	r3, r3
 80024e8:	0018      	movs	r0, r3
 80024ea:	46bd      	mov	sp, r7
 80024ec:	bd80      	pop	{r7, pc}
 80024ee:	46c0      	nop			; (mov r8, r8)
 80024f0:	40021000 	.word	0x40021000

080024f4 <LL_RCC_PLL_ConfigDomain_SYS>:
 80024f4:	b580      	push	{r7, lr}
 80024f6:	b082      	sub	sp, #8
 80024f8:	af00      	add	r7, sp, #0
 80024fa:	6078      	str	r0, [r7, #4]
 80024fc:	6039      	str	r1, [r7, #0]
 80024fe:	4b0e      	ldr	r3, [pc, #56]	; (8002538 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8002500:	685b      	ldr	r3, [r3, #4]
 8002502:	4a0e      	ldr	r2, [pc, #56]	; (800253c <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8002504:	4013      	ands	r3, r2
 8002506:	0019      	movs	r1, r3
 8002508:	687a      	ldr	r2, [r7, #4]
 800250a:	2380      	movs	r3, #128	; 0x80
 800250c:	025b      	lsls	r3, r3, #9
 800250e:	401a      	ands	r2, r3
 8002510:	683b      	ldr	r3, [r7, #0]
 8002512:	431a      	orrs	r2, r3
 8002514:	4b08      	ldr	r3, [pc, #32]	; (8002538 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8002516:	430a      	orrs	r2, r1
 8002518:	605a      	str	r2, [r3, #4]
 800251a:	4b07      	ldr	r3, [pc, #28]	; (8002538 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800251c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800251e:	220f      	movs	r2, #15
 8002520:	4393      	bics	r3, r2
 8002522:	0019      	movs	r1, r3
 8002524:	687b      	ldr	r3, [r7, #4]
 8002526:	220f      	movs	r2, #15
 8002528:	401a      	ands	r2, r3
 800252a:	4b03      	ldr	r3, [pc, #12]	; (8002538 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800252c:	430a      	orrs	r2, r1
 800252e:	62da      	str	r2, [r3, #44]	; 0x2c
 8002530:	46c0      	nop			; (mov r8, r8)
 8002532:	46bd      	mov	sp, r7
 8002534:	b002      	add	sp, #8
 8002536:	bd80      	pop	{r7, pc}
 8002538:	40021000 	.word	0x40021000
 800253c:	ffc2ffff 	.word	0xffc2ffff

08002540 <LL_FLASH_SetLatency>:
 8002540:	b580      	push	{r7, lr}
 8002542:	b082      	sub	sp, #8
 8002544:	af00      	add	r7, sp, #0
 8002546:	6078      	str	r0, [r7, #4]
 8002548:	4b06      	ldr	r3, [pc, #24]	; (8002564 <LL_FLASH_SetLatency+0x24>)
 800254a:	681b      	ldr	r3, [r3, #0]
 800254c:	2201      	movs	r2, #1
 800254e:	4393      	bics	r3, r2
 8002550:	0019      	movs	r1, r3
 8002552:	4b04      	ldr	r3, [pc, #16]	; (8002564 <LL_FLASH_SetLatency+0x24>)
 8002554:	687a      	ldr	r2, [r7, #4]
 8002556:	430a      	orrs	r2, r1
 8002558:	601a      	str	r2, [r3, #0]
 800255a:	46c0      	nop			; (mov r8, r8)
 800255c:	46bd      	mov	sp, r7
 800255e:	b002      	add	sp, #8
 8002560:	bd80      	pop	{r7, pc}
 8002562:	46c0      	nop			; (mov r8, r8)
 8002564:	40022000 	.word	0x40022000

08002568 <LL_AHB1_GRP1_EnableClock>:
 8002568:	b580      	push	{r7, lr}
 800256a:	b084      	sub	sp, #16
 800256c:	af00      	add	r7, sp, #0
 800256e:	6078      	str	r0, [r7, #4]
 8002570:	4b07      	ldr	r3, [pc, #28]	; (8002590 <LL_AHB1_GRP1_EnableClock+0x28>)
 8002572:	6959      	ldr	r1, [r3, #20]
 8002574:	4b06      	ldr	r3, [pc, #24]	; (8002590 <LL_AHB1_GRP1_EnableClock+0x28>)
 8002576:	687a      	ldr	r2, [r7, #4]
 8002578:	430a      	orrs	r2, r1
 800257a:	615a      	str	r2, [r3, #20]
 800257c:	4b04      	ldr	r3, [pc, #16]	; (8002590 <LL_AHB1_GRP1_EnableClock+0x28>)
 800257e:	695b      	ldr	r3, [r3, #20]
 8002580:	687a      	ldr	r2, [r7, #4]
 8002582:	4013      	ands	r3, r2
 8002584:	60fb      	str	r3, [r7, #12]
 8002586:	68fb      	ldr	r3, [r7, #12]
 8002588:	46c0      	nop			; (mov r8, r8)
 800258a:	46bd      	mov	sp, r7
 800258c:	b004      	add	sp, #16
 800258e:	bd80      	pop	{r7, pc}
 8002590:	40021000 	.word	0x40021000

08002594 <LL_APB1_GRP1_EnableClock>:
 8002594:	b580      	push	{r7, lr}
 8002596:	b084      	sub	sp, #16
 8002598:	af00      	add	r7, sp, #0
 800259a:	6078      	str	r0, [r7, #4]
 800259c:	4b07      	ldr	r3, [pc, #28]	; (80025bc <LL_APB1_GRP1_EnableClock+0x28>)
 800259e:	69d9      	ldr	r1, [r3, #28]
 80025a0:	4b06      	ldr	r3, [pc, #24]	; (80025bc <LL_APB1_GRP1_EnableClock+0x28>)
 80025a2:	687a      	ldr	r2, [r7, #4]
 80025a4:	430a      	orrs	r2, r1
 80025a6:	61da      	str	r2, [r3, #28]
 80025a8:	4b04      	ldr	r3, [pc, #16]	; (80025bc <LL_APB1_GRP1_EnableClock+0x28>)
 80025aa:	69db      	ldr	r3, [r3, #28]
 80025ac:	687a      	ldr	r2, [r7, #4]
 80025ae:	4013      	ands	r3, r2
 80025b0:	60fb      	str	r3, [r7, #12]
 80025b2:	68fb      	ldr	r3, [r7, #12]
 80025b4:	46c0      	nop			; (mov r8, r8)
 80025b6:	46bd      	mov	sp, r7
 80025b8:	b004      	add	sp, #16
 80025ba:	bd80      	pop	{r7, pc}
 80025bc:	40021000 	.word	0x40021000

080025c0 <LL_APB1_GRP2_EnableClock>:
 80025c0:	b580      	push	{r7, lr}
 80025c2:	b084      	sub	sp, #16
 80025c4:	af00      	add	r7, sp, #0
 80025c6:	6078      	str	r0, [r7, #4]
 80025c8:	4b07      	ldr	r3, [pc, #28]	; (80025e8 <LL_APB1_GRP2_EnableClock+0x28>)
 80025ca:	6999      	ldr	r1, [r3, #24]
 80025cc:	4b06      	ldr	r3, [pc, #24]	; (80025e8 <LL_APB1_GRP2_EnableClock+0x28>)
 80025ce:	687a      	ldr	r2, [r7, #4]
 80025d0:	430a      	orrs	r2, r1
 80025d2:	619a      	str	r2, [r3, #24]
 80025d4:	4b04      	ldr	r3, [pc, #16]	; (80025e8 <LL_APB1_GRP2_EnableClock+0x28>)
 80025d6:	699b      	ldr	r3, [r3, #24]
 80025d8:	687a      	ldr	r2, [r7, #4]
 80025da:	4013      	ands	r3, r2
 80025dc:	60fb      	str	r3, [r7, #12]
 80025de:	68fb      	ldr	r3, [r7, #12]
 80025e0:	46c0      	nop			; (mov r8, r8)
 80025e2:	46bd      	mov	sp, r7
 80025e4:	b004      	add	sp, #16
 80025e6:	bd80      	pop	{r7, pc}
 80025e8:	40021000 	.word	0x40021000

080025ec <LL_GPIO_SetPinMode>:
 80025ec:	b580      	push	{r7, lr}
 80025ee:	b084      	sub	sp, #16
 80025f0:	af00      	add	r7, sp, #0
 80025f2:	60f8      	str	r0, [r7, #12]
 80025f4:	60b9      	str	r1, [r7, #8]
 80025f6:	607a      	str	r2, [r7, #4]
 80025f8:	68fb      	ldr	r3, [r7, #12]
 80025fa:	6819      	ldr	r1, [r3, #0]
 80025fc:	68bb      	ldr	r3, [r7, #8]
 80025fe:	68ba      	ldr	r2, [r7, #8]
 8002600:	435a      	muls	r2, r3
 8002602:	0013      	movs	r3, r2
 8002604:	005b      	lsls	r3, r3, #1
 8002606:	189b      	adds	r3, r3, r2
 8002608:	43db      	mvns	r3, r3
 800260a:	400b      	ands	r3, r1
 800260c:	001a      	movs	r2, r3
 800260e:	68bb      	ldr	r3, [r7, #8]
 8002610:	68b9      	ldr	r1, [r7, #8]
 8002612:	434b      	muls	r3, r1
 8002614:	6879      	ldr	r1, [r7, #4]
 8002616:	434b      	muls	r3, r1
 8002618:	431a      	orrs	r2, r3
 800261a:	68fb      	ldr	r3, [r7, #12]
 800261c:	601a      	str	r2, [r3, #0]
 800261e:	46c0      	nop			; (mov r8, r8)
 8002620:	46bd      	mov	sp, r7
 8002622:	b004      	add	sp, #16
 8002624:	bd80      	pop	{r7, pc}

08002626 <LL_GPIO_SetPinOutputType>:
 8002626:	b580      	push	{r7, lr}
 8002628:	b084      	sub	sp, #16
 800262a:	af00      	add	r7, sp, #0
 800262c:	60f8      	str	r0, [r7, #12]
 800262e:	60b9      	str	r1, [r7, #8]
 8002630:	607a      	str	r2, [r7, #4]
 8002632:	68fb      	ldr	r3, [r7, #12]
 8002634:	685b      	ldr	r3, [r3, #4]
 8002636:	68ba      	ldr	r2, [r7, #8]
 8002638:	43d2      	mvns	r2, r2
 800263a:	401a      	ands	r2, r3
 800263c:	68bb      	ldr	r3, [r7, #8]
 800263e:	6879      	ldr	r1, [r7, #4]
 8002640:	434b      	muls	r3, r1
 8002642:	431a      	orrs	r2, r3
 8002644:	68fb      	ldr	r3, [r7, #12]
 8002646:	605a      	str	r2, [r3, #4]
 8002648:	46c0      	nop			; (mov r8, r8)
 800264a:	46bd      	mov	sp, r7
 800264c:	b004      	add	sp, #16
 800264e:	bd80      	pop	{r7, pc}

08002650 <LL_GPIO_SetPinSpeed>:
 8002650:	b580      	push	{r7, lr}
 8002652:	b084      	sub	sp, #16
 8002654:	af00      	add	r7, sp, #0
 8002656:	60f8      	str	r0, [r7, #12]
 8002658:	60b9      	str	r1, [r7, #8]
 800265a:	607a      	str	r2, [r7, #4]
 800265c:	68fb      	ldr	r3, [r7, #12]
 800265e:	6899      	ldr	r1, [r3, #8]
 8002660:	68bb      	ldr	r3, [r7, #8]
 8002662:	68ba      	ldr	r2, [r7, #8]
 8002664:	435a      	muls	r2, r3
 8002666:	0013      	movs	r3, r2
 8002668:	005b      	lsls	r3, r3, #1
 800266a:	189b      	adds	r3, r3, r2
 800266c:	43db      	mvns	r3, r3
 800266e:	400b      	ands	r3, r1
 8002670:	001a      	movs	r2, r3
 8002672:	68bb      	ldr	r3, [r7, #8]
 8002674:	68b9      	ldr	r1, [r7, #8]
 8002676:	434b      	muls	r3, r1
 8002678:	6879      	ldr	r1, [r7, #4]
 800267a:	434b      	muls	r3, r1
 800267c:	431a      	orrs	r2, r3
 800267e:	68fb      	ldr	r3, [r7, #12]
 8002680:	609a      	str	r2, [r3, #8]
 8002682:	46c0      	nop			; (mov r8, r8)
 8002684:	46bd      	mov	sp, r7
 8002686:	b004      	add	sp, #16
 8002688:	bd80      	pop	{r7, pc}

0800268a <LL_GPIO_SetPinPull>:
 800268a:	b580      	push	{r7, lr}
 800268c:	b084      	sub	sp, #16
 800268e:	af00      	add	r7, sp, #0
 8002690:	60f8      	str	r0, [r7, #12]
 8002692:	60b9      	str	r1, [r7, #8]
 8002694:	607a      	str	r2, [r7, #4]
 8002696:	68fb      	ldr	r3, [r7, #12]
 8002698:	68d9      	ldr	r1, [r3, #12]
 800269a:	68bb      	ldr	r3, [r7, #8]
 800269c:	68ba      	ldr	r2, [r7, #8]
 800269e:	435a      	muls	r2, r3
 80026a0:	0013      	movs	r3, r2
 80026a2:	005b      	lsls	r3, r3, #1
 80026a4:	189b      	adds	r3, r3, r2
 80026a6:	43db      	mvns	r3, r3
 80026a8:	400b      	ands	r3, r1
 80026aa:	001a      	movs	r2, r3
 80026ac:	68bb      	ldr	r3, [r7, #8]
 80026ae:	68b9      	ldr	r1, [r7, #8]
 80026b0:	434b      	muls	r3, r1
 80026b2:	6879      	ldr	r1, [r7, #4]
 80026b4:	434b      	muls	r3, r1
 80026b6:	431a      	orrs	r2, r3
 80026b8:	68fb      	ldr	r3, [r7, #12]
 80026ba:	60da      	str	r2, [r3, #12]
 80026bc:	46c0      	nop			; (mov r8, r8)
 80026be:	46bd      	mov	sp, r7
 80026c0:	b004      	add	sp, #16
 80026c2:	bd80      	pop	{r7, pc}

080026c4 <LL_GPIO_SetAFPin_0_7>:
 80026c4:	b580      	push	{r7, lr}
 80026c6:	b084      	sub	sp, #16
 80026c8:	af00      	add	r7, sp, #0
 80026ca:	60f8      	str	r0, [r7, #12]
 80026cc:	60b9      	str	r1, [r7, #8]
 80026ce:	607a      	str	r2, [r7, #4]
 80026d0:	68fb      	ldr	r3, [r7, #12]
 80026d2:	6a19      	ldr	r1, [r3, #32]
 80026d4:	68bb      	ldr	r3, [r7, #8]
 80026d6:	68ba      	ldr	r2, [r7, #8]
 80026d8:	4353      	muls	r3, r2
 80026da:	68ba      	ldr	r2, [r7, #8]
 80026dc:	4353      	muls	r3, r2
 80026de:	68ba      	ldr	r2, [r7, #8]
 80026e0:	435a      	muls	r2, r3
 80026e2:	0013      	movs	r3, r2
 80026e4:	011b      	lsls	r3, r3, #4
 80026e6:	1a9b      	subs	r3, r3, r2
 80026e8:	43db      	mvns	r3, r3
 80026ea:	400b      	ands	r3, r1
 80026ec:	001a      	movs	r2, r3
 80026ee:	68bb      	ldr	r3, [r7, #8]
 80026f0:	68b9      	ldr	r1, [r7, #8]
 80026f2:	434b      	muls	r3, r1
 80026f4:	68b9      	ldr	r1, [r7, #8]
 80026f6:	434b      	muls	r3, r1
 80026f8:	68b9      	ldr	r1, [r7, #8]
 80026fa:	434b      	muls	r3, r1
 80026fc:	6879      	ldr	r1, [r7, #4]
 80026fe:	434b      	muls	r3, r1
 8002700:	431a      	orrs	r2, r3
 8002702:	68fb      	ldr	r3, [r7, #12]
 8002704:	621a      	str	r2, [r3, #32]
 8002706:	46c0      	nop			; (mov r8, r8)
 8002708:	46bd      	mov	sp, r7
 800270a:	b004      	add	sp, #16
 800270c:	bd80      	pop	{r7, pc}

0800270e <LL_GPIO_SetAFPin_8_15>:
 800270e:	b580      	push	{r7, lr}
 8002710:	b084      	sub	sp, #16
 8002712:	af00      	add	r7, sp, #0
 8002714:	60f8      	str	r0, [r7, #12]
 8002716:	60b9      	str	r1, [r7, #8]
 8002718:	607a      	str	r2, [r7, #4]
 800271a:	68fb      	ldr	r3, [r7, #12]
 800271c:	6a59      	ldr	r1, [r3, #36]	; 0x24
 800271e:	68bb      	ldr	r3, [r7, #8]
 8002720:	0a1b      	lsrs	r3, r3, #8
 8002722:	68ba      	ldr	r2, [r7, #8]
 8002724:	0a12      	lsrs	r2, r2, #8
 8002726:	4353      	muls	r3, r2
 8002728:	68ba      	ldr	r2, [r7, #8]
 800272a:	0a12      	lsrs	r2, r2, #8
 800272c:	4353      	muls	r3, r2
 800272e:	68ba      	ldr	r2, [r7, #8]
 8002730:	0a12      	lsrs	r2, r2, #8
 8002732:	435a      	muls	r2, r3
 8002734:	0013      	movs	r3, r2
 8002736:	011b      	lsls	r3, r3, #4
 8002738:	1a9b      	subs	r3, r3, r2
 800273a:	43db      	mvns	r3, r3
 800273c:	400b      	ands	r3, r1
 800273e:	001a      	movs	r2, r3
 8002740:	68bb      	ldr	r3, [r7, #8]
 8002742:	0a1b      	lsrs	r3, r3, #8
 8002744:	68b9      	ldr	r1, [r7, #8]
 8002746:	0a09      	lsrs	r1, r1, #8
 8002748:	434b      	muls	r3, r1
 800274a:	68b9      	ldr	r1, [r7, #8]
 800274c:	0a09      	lsrs	r1, r1, #8
 800274e:	434b      	muls	r3, r1
 8002750:	68b9      	ldr	r1, [r7, #8]
 8002752:	0a09      	lsrs	r1, r1, #8
 8002754:	434b      	muls	r3, r1
 8002756:	6879      	ldr	r1, [r7, #4]
 8002758:	434b      	muls	r3, r1
 800275a:	431a      	orrs	r2, r3
 800275c:	68fb      	ldr	r3, [r7, #12]
 800275e:	625a      	str	r2, [r3, #36]	; 0x24
 8002760:	46c0      	nop			; (mov r8, r8)
 8002762:	46bd      	mov	sp, r7
 8002764:	b004      	add	sp, #16
 8002766:	bd80      	pop	{r7, pc}

08002768 <LL_USART_Enable>:
 8002768:	b580      	push	{r7, lr}
 800276a:	b082      	sub	sp, #8
 800276c:	af00      	add	r7, sp, #0
 800276e:	6078      	str	r0, [r7, #4]
 8002770:	687b      	ldr	r3, [r7, #4]
 8002772:	681b      	ldr	r3, [r3, #0]
 8002774:	2201      	movs	r2, #1
 8002776:	431a      	orrs	r2, r3
 8002778:	687b      	ldr	r3, [r7, #4]
 800277a:	601a      	str	r2, [r3, #0]
 800277c:	46c0      	nop			; (mov r8, r8)
 800277e:	46bd      	mov	sp, r7
 8002780:	b002      	add	sp, #8
 8002782:	bd80      	pop	{r7, pc}

08002784 <LL_USART_SetTransferDirection>:
 8002784:	b580      	push	{r7, lr}
 8002786:	b082      	sub	sp, #8
 8002788:	af00      	add	r7, sp, #0
 800278a:	6078      	str	r0, [r7, #4]
 800278c:	6039      	str	r1, [r7, #0]
 800278e:	687b      	ldr	r3, [r7, #4]
 8002790:	681b      	ldr	r3, [r3, #0]
 8002792:	220c      	movs	r2, #12
 8002794:	4393      	bics	r3, r2
 8002796:	001a      	movs	r2, r3
 8002798:	683b      	ldr	r3, [r7, #0]
 800279a:	431a      	orrs	r2, r3
 800279c:	687b      	ldr	r3, [r7, #4]
 800279e:	601a      	str	r2, [r3, #0]
 80027a0:	46c0      	nop			; (mov r8, r8)
 80027a2:	46bd      	mov	sp, r7
 80027a4:	b002      	add	sp, #8
 80027a6:	bd80      	pop	{r7, pc}

080027a8 <LL_USART_SetParity>:
 80027a8:	b580      	push	{r7, lr}
 80027aa:	b082      	sub	sp, #8
 80027ac:	af00      	add	r7, sp, #0
 80027ae:	6078      	str	r0, [r7, #4]
 80027b0:	6039      	str	r1, [r7, #0]
 80027b2:	687b      	ldr	r3, [r7, #4]
 80027b4:	681b      	ldr	r3, [r3, #0]
 80027b6:	4a05      	ldr	r2, [pc, #20]	; (80027cc <LL_USART_SetParity+0x24>)
 80027b8:	401a      	ands	r2, r3
 80027ba:	683b      	ldr	r3, [r7, #0]
 80027bc:	431a      	orrs	r2, r3
 80027be:	687b      	ldr	r3, [r7, #4]
 80027c0:	601a      	str	r2, [r3, #0]
 80027c2:	46c0      	nop			; (mov r8, r8)
 80027c4:	46bd      	mov	sp, r7
 80027c6:	b002      	add	sp, #8
 80027c8:	bd80      	pop	{r7, pc}
 80027ca:	46c0      	nop			; (mov r8, r8)
 80027cc:	fffff9ff 	.word	0xfffff9ff

080027d0 <LL_USART_SetDataWidth>:
 80027d0:	b580      	push	{r7, lr}
 80027d2:	b082      	sub	sp, #8
 80027d4:	af00      	add	r7, sp, #0
 80027d6:	6078      	str	r0, [r7, #4]
 80027d8:	6039      	str	r1, [r7, #0]
 80027da:	687b      	ldr	r3, [r7, #4]
 80027dc:	681b      	ldr	r3, [r3, #0]
 80027de:	4a05      	ldr	r2, [pc, #20]	; (80027f4 <LL_USART_SetDataWidth+0x24>)
 80027e0:	401a      	ands	r2, r3
 80027e2:	683b      	ldr	r3, [r7, #0]
 80027e4:	431a      	orrs	r2, r3
 80027e6:	687b      	ldr	r3, [r7, #4]
 80027e8:	601a      	str	r2, [r3, #0]
 80027ea:	46c0      	nop			; (mov r8, r8)
 80027ec:	46bd      	mov	sp, r7
 80027ee:	b002      	add	sp, #8
 80027f0:	bd80      	pop	{r7, pc}
 80027f2:	46c0      	nop			; (mov r8, r8)
 80027f4:	ffffefff 	.word	0xffffefff

080027f8 <LL_USART_SetStopBitsLength>:
 80027f8:	b580      	push	{r7, lr}
 80027fa:	b082      	sub	sp, #8
 80027fc:	af00      	add	r7, sp, #0
 80027fe:	6078      	str	r0, [r7, #4]
 8002800:	6039      	str	r1, [r7, #0]
 8002802:	687b      	ldr	r3, [r7, #4]
 8002804:	685b      	ldr	r3, [r3, #4]
 8002806:	4a05      	ldr	r2, [pc, #20]	; (800281c <LL_USART_SetStopBitsLength+0x24>)
 8002808:	401a      	ands	r2, r3
 800280a:	683b      	ldr	r3, [r7, #0]
 800280c:	431a      	orrs	r2, r3
 800280e:	687b      	ldr	r3, [r7, #4]
 8002810:	605a      	str	r2, [r3, #4]
 8002812:	46c0      	nop			; (mov r8, r8)
 8002814:	46bd      	mov	sp, r7
 8002816:	b002      	add	sp, #8
 8002818:	bd80      	pop	{r7, pc}
 800281a:	46c0      	nop			; (mov r8, r8)
 800281c:	ffffcfff 	.word	0xffffcfff

08002820 <LL_USART_SetTransferBitOrder>:
 8002820:	b580      	push	{r7, lr}
 8002822:	b082      	sub	sp, #8
 8002824:	af00      	add	r7, sp, #0
 8002826:	6078      	str	r0, [r7, #4]
 8002828:	6039      	str	r1, [r7, #0]
 800282a:	687b      	ldr	r3, [r7, #4]
 800282c:	685b      	ldr	r3, [r3, #4]
 800282e:	4a05      	ldr	r2, [pc, #20]	; (8002844 <LL_USART_SetTransferBitOrder+0x24>)
 8002830:	401a      	ands	r2, r3
 8002832:	683b      	ldr	r3, [r7, #0]
 8002834:	431a      	orrs	r2, r3
 8002836:	687b      	ldr	r3, [r7, #4]
 8002838:	605a      	str	r2, [r3, #4]
 800283a:	46c0      	nop			; (mov r8, r8)
 800283c:	46bd      	mov	sp, r7
 800283e:	b002      	add	sp, #8
 8002840:	bd80      	pop	{r7, pc}
 8002842:	46c0      	nop			; (mov r8, r8)
 8002844:	fff7ffff 	.word	0xfff7ffff

08002848 <LL_USART_SetBaudRate>:
 8002848:	b5b0      	push	{r4, r5, r7, lr}
 800284a:	b084      	sub	sp, #16
 800284c:	af00      	add	r7, sp, #0
 800284e:	60f8      	str	r0, [r7, #12]
 8002850:	60b9      	str	r1, [r7, #8]
 8002852:	607a      	str	r2, [r7, #4]
 8002854:	603b      	str	r3, [r7, #0]
 8002856:	2500      	movs	r5, #0
 8002858:	2400      	movs	r4, #0
 800285a:	687a      	ldr	r2, [r7, #4]
 800285c:	2380      	movs	r3, #128	; 0x80
 800285e:	021b      	lsls	r3, r3, #8
 8002860:	429a      	cmp	r2, r3
 8002862:	d117      	bne.n	8002894 <LL_USART_SetBaudRate+0x4c>
 8002864:	68bb      	ldr	r3, [r7, #8]
 8002866:	005a      	lsls	r2, r3, #1
 8002868:	683b      	ldr	r3, [r7, #0]
 800286a:	085b      	lsrs	r3, r3, #1
 800286c:	18d3      	adds	r3, r2, r3
 800286e:	6839      	ldr	r1, [r7, #0]
 8002870:	0018      	movs	r0, r3
 8002872:	f7fd fc49 	bl	8000108 <__udivsi3>
 8002876:	0003      	movs	r3, r0
 8002878:	b29b      	uxth	r3, r3
 800287a:	001d      	movs	r5, r3
 800287c:	4b0e      	ldr	r3, [pc, #56]	; (80028b8 <LL_USART_SetBaudRate+0x70>)
 800287e:	402b      	ands	r3, r5
 8002880:	001c      	movs	r4, r3
 8002882:	086b      	lsrs	r3, r5, #1
 8002884:	b29b      	uxth	r3, r3
 8002886:	001a      	movs	r2, r3
 8002888:	2307      	movs	r3, #7
 800288a:	4013      	ands	r3, r2
 800288c:	431c      	orrs	r4, r3
 800288e:	68fb      	ldr	r3, [r7, #12]
 8002890:	60dc      	str	r4, [r3, #12]
 8002892:	e00c      	b.n	80028ae <LL_USART_SetBaudRate+0x66>
 8002894:	683b      	ldr	r3, [r7, #0]
 8002896:	085a      	lsrs	r2, r3, #1
 8002898:	68bb      	ldr	r3, [r7, #8]
 800289a:	18d3      	adds	r3, r2, r3
 800289c:	6839      	ldr	r1, [r7, #0]
 800289e:	0018      	movs	r0, r3
 80028a0:	f7fd fc32 	bl	8000108 <__udivsi3>
 80028a4:	0003      	movs	r3, r0
 80028a6:	b29b      	uxth	r3, r3
 80028a8:	001a      	movs	r2, r3
 80028aa:	68fb      	ldr	r3, [r7, #12]
 80028ac:	60da      	str	r2, [r3, #12]
 80028ae:	46c0      	nop			; (mov r8, r8)
 80028b0:	46bd      	mov	sp, r7
 80028b2:	b004      	add	sp, #16
 80028b4:	bdb0      	pop	{r4, r5, r7, pc}
 80028b6:	46c0      	nop			; (mov r8, r8)
 80028b8:	0000fff0 	.word	0x0000fff0

080028bc <LL_USART_IsActiveFlag_TEACK>:
 80028bc:	b580      	push	{r7, lr}
 80028be:	b082      	sub	sp, #8
 80028c0:	af00      	add	r7, sp, #0
 80028c2:	6078      	str	r0, [r7, #4]
 80028c4:	687b      	ldr	r3, [r7, #4]
 80028c6:	69da      	ldr	r2, [r3, #28]
 80028c8:	2380      	movs	r3, #128	; 0x80
 80028ca:	039b      	lsls	r3, r3, #14
 80028cc:	4013      	ands	r3, r2
 80028ce:	4a05      	ldr	r2, [pc, #20]	; (80028e4 <LL_USART_IsActiveFlag_TEACK+0x28>)
 80028d0:	4694      	mov	ip, r2
 80028d2:	4463      	add	r3, ip
 80028d4:	425a      	negs	r2, r3
 80028d6:	4153      	adcs	r3, r2
 80028d8:	b2db      	uxtb	r3, r3
 80028da:	0018      	movs	r0, r3
 80028dc:	46bd      	mov	sp, r7
 80028de:	b002      	add	sp, #8
 80028e0:	bd80      	pop	{r7, pc}
 80028e2:	46c0      	nop			; (mov r8, r8)
 80028e4:	ffe00000 	.word	0xffe00000

080028e8 <LL_USART_IsActiveFlag_REACK>:
 80028e8:	b580      	push	{r7, lr}
 80028ea:	b082      	sub	sp, #8
 80028ec:	af00      	add	r7, sp, #0
 80028ee:	6078      	str	r0, [r7, #4]
 80028f0:	687b      	ldr	r3, [r7, #4]
 80028f2:	69da      	ldr	r2, [r3, #28]
 80028f4:	2380      	movs	r3, #128	; 0x80
 80028f6:	03db      	lsls	r3, r3, #15
 80028f8:	4013      	ands	r3, r2
 80028fa:	4a05      	ldr	r2, [pc, #20]	; (8002910 <LL_USART_IsActiveFlag_REACK+0x28>)
 80028fc:	4694      	mov	ip, r2
 80028fe:	4463      	add	r3, ip
 8002900:	425a      	negs	r2, r3
 8002902:	4153      	adcs	r3, r2
 8002904:	b2db      	uxtb	r3, r3
 8002906:	0018      	movs	r0, r3
 8002908:	46bd      	mov	sp, r7
 800290a:	b002      	add	sp, #8
 800290c:	bd80      	pop	{r7, pc}
 800290e:	46c0      	nop			; (mov r8, r8)
 8002910:	ffc00000 	.word	0xffc00000

08002914 <LL_I2C_Enable>:
 8002914:	b580      	push	{r7, lr}
 8002916:	b082      	sub	sp, #8
 8002918:	af00      	add	r7, sp, #0
 800291a:	6078      	str	r0, [r7, #4]
 800291c:	687b      	ldr	r3, [r7, #4]
 800291e:	681b      	ldr	r3, [r3, #0]
 8002920:	2201      	movs	r2, #1
 8002922:	431a      	orrs	r2, r3
 8002924:	687b      	ldr	r3, [r7, #4]
 8002926:	601a      	str	r2, [r3, #0]
 8002928:	46c0      	nop			; (mov r8, r8)
 800292a:	46bd      	mov	sp, r7
 800292c:	b002      	add	sp, #8
 800292e:	bd80      	pop	{r7, pc}

08002930 <LL_I2C_Disable>:
 8002930:	b580      	push	{r7, lr}
 8002932:	b082      	sub	sp, #8
 8002934:	af00      	add	r7, sp, #0
 8002936:	6078      	str	r0, [r7, #4]
 8002938:	687b      	ldr	r3, [r7, #4]
 800293a:	681b      	ldr	r3, [r3, #0]
 800293c:	2201      	movs	r2, #1
 800293e:	4393      	bics	r3, r2
 8002940:	001a      	movs	r2, r3
 8002942:	687b      	ldr	r3, [r7, #4]
 8002944:	601a      	str	r2, [r3, #0]
 8002946:	46c0      	nop			; (mov r8, r8)
 8002948:	46bd      	mov	sp, r7
 800294a:	b002      	add	sp, #8
 800294c:	bd80      	pop	{r7, pc}
	...

08002950 <LL_I2C_SetDigitalFilter>:
 8002950:	b580      	push	{r7, lr}
 8002952:	b082      	sub	sp, #8
 8002954:	af00      	add	r7, sp, #0
 8002956:	6078      	str	r0, [r7, #4]
 8002958:	6039      	str	r1, [r7, #0]
 800295a:	687b      	ldr	r3, [r7, #4]
 800295c:	681b      	ldr	r3, [r3, #0]
 800295e:	4a05      	ldr	r2, [pc, #20]	; (8002974 <LL_I2C_SetDigitalFilter+0x24>)
 8002960:	401a      	ands	r2, r3
 8002962:	683b      	ldr	r3, [r7, #0]
 8002964:	021b      	lsls	r3, r3, #8
 8002966:	431a      	orrs	r2, r3
 8002968:	687b      	ldr	r3, [r7, #4]
 800296a:	601a      	str	r2, [r3, #0]
 800296c:	46c0      	nop			; (mov r8, r8)
 800296e:	46bd      	mov	sp, r7
 8002970:	b002      	add	sp, #8
 8002972:	bd80      	pop	{r7, pc}
 8002974:	fffff0ff 	.word	0xfffff0ff

08002978 <LL_I2C_DisableAnalogFilter>:
 8002978:	b580      	push	{r7, lr}
 800297a:	b082      	sub	sp, #8
 800297c:	af00      	add	r7, sp, #0
 800297e:	6078      	str	r0, [r7, #4]
 8002980:	687b      	ldr	r3, [r7, #4]
 8002982:	681b      	ldr	r3, [r3, #0]
 8002984:	2280      	movs	r2, #128	; 0x80
 8002986:	0152      	lsls	r2, r2, #5
 8002988:	431a      	orrs	r2, r3
 800298a:	687b      	ldr	r3, [r7, #4]
 800298c:	601a      	str	r2, [r3, #0]
 800298e:	46c0      	nop			; (mov r8, r8)
 8002990:	46bd      	mov	sp, r7
 8002992:	b002      	add	sp, #8
 8002994:	bd80      	pop	{r7, pc}

08002996 <LL_I2C_DisableClockStretching>:
 8002996:	b580      	push	{r7, lr}
 8002998:	b082      	sub	sp, #8
 800299a:	af00      	add	r7, sp, #0
 800299c:	6078      	str	r0, [r7, #4]
 800299e:	687b      	ldr	r3, [r7, #4]
 80029a0:	681b      	ldr	r3, [r3, #0]
 80029a2:	2280      	movs	r2, #128	; 0x80
 80029a4:	0292      	lsls	r2, r2, #10
 80029a6:	431a      	orrs	r2, r3
 80029a8:	687b      	ldr	r3, [r7, #4]
 80029aa:	601a      	str	r2, [r3, #0]
 80029ac:	46c0      	nop			; (mov r8, r8)
 80029ae:	46bd      	mov	sp, r7
 80029b0:	b002      	add	sp, #8
 80029b2:	bd80      	pop	{r7, pc}

080029b4 <LL_I2C_SetMasterAddressingMode>:
 80029b4:	b580      	push	{r7, lr}
 80029b6:	b082      	sub	sp, #8
 80029b8:	af00      	add	r7, sp, #0
 80029ba:	6078      	str	r0, [r7, #4]
 80029bc:	6039      	str	r1, [r7, #0]
 80029be:	687b      	ldr	r3, [r7, #4]
 80029c0:	685b      	ldr	r3, [r3, #4]
 80029c2:	4a05      	ldr	r2, [pc, #20]	; (80029d8 <LL_I2C_SetMasterAddressingMode+0x24>)
 80029c4:	401a      	ands	r2, r3
 80029c6:	683b      	ldr	r3, [r7, #0]
 80029c8:	431a      	orrs	r2, r3
 80029ca:	687b      	ldr	r3, [r7, #4]
 80029cc:	605a      	str	r2, [r3, #4]
 80029ce:	46c0      	nop			; (mov r8, r8)
 80029d0:	46bd      	mov	sp, r7
 80029d2:	b002      	add	sp, #8
 80029d4:	bd80      	pop	{r7, pc}
 80029d6:	46c0      	nop			; (mov r8, r8)
 80029d8:	fffff7ff 	.word	0xfffff7ff

080029dc <LL_I2C_SetTiming>:
 80029dc:	b580      	push	{r7, lr}
 80029de:	b082      	sub	sp, #8
 80029e0:	af00      	add	r7, sp, #0
 80029e2:	6078      	str	r0, [r7, #4]
 80029e4:	6039      	str	r1, [r7, #0]
 80029e6:	687b      	ldr	r3, [r7, #4]
 80029e8:	683a      	ldr	r2, [r7, #0]
 80029ea:	611a      	str	r2, [r3, #16]
 80029ec:	46c0      	nop			; (mov r8, r8)
 80029ee:	46bd      	mov	sp, r7
 80029f0:	b002      	add	sp, #8
 80029f2:	bd80      	pop	{r7, pc}

080029f4 <LL_I2C_SetMode>:
 80029f4:	b580      	push	{r7, lr}
 80029f6:	b082      	sub	sp, #8
 80029f8:	af00      	add	r7, sp, #0
 80029fa:	6078      	str	r0, [r7, #4]
 80029fc:	6039      	str	r1, [r7, #0]
 80029fe:	687b      	ldr	r3, [r7, #4]
 8002a00:	681b      	ldr	r3, [r3, #0]
 8002a02:	4a05      	ldr	r2, [pc, #20]	; (8002a18 <LL_I2C_SetMode+0x24>)
 8002a04:	401a      	ands	r2, r3
 8002a06:	683b      	ldr	r3, [r7, #0]
 8002a08:	431a      	orrs	r2, r3
 8002a0a:	687b      	ldr	r3, [r7, #4]
 8002a0c:	601a      	str	r2, [r3, #0]
 8002a0e:	46c0      	nop			; (mov r8, r8)
 8002a10:	46bd      	mov	sp, r7
 8002a12:	b002      	add	sp, #8
 8002a14:	bd80      	pop	{r7, pc}
 8002a16:	46c0      	nop			; (mov r8, r8)
 8002a18:	ffcfffff 	.word	0xffcfffff

08002a1c <rcc_config>:
 8002a1c:	b580      	push	{r7, lr}
 8002a1e:	af00      	add	r7, sp, #0
 8002a20:	2001      	movs	r0, #1
 8002a22:	f7ff fd8d 	bl	8002540 <LL_FLASH_SetLatency>
 8002a26:	f7ff fcad 	bl	8002384 <LL_RCC_HSI_Enable>
 8002a2a:	46c0      	nop			; (mov r8, r8)
 8002a2c:	f7ff fcb8 	bl	80023a0 <LL_RCC_HSI_IsReady>
 8002a30:	0003      	movs	r3, r0
 8002a32:	2b01      	cmp	r3, #1
 8002a34:	d1fa      	bne.n	8002a2c <rcc_config+0x10>
 8002a36:	23a0      	movs	r3, #160	; 0xa0
 8002a38:	039b      	lsls	r3, r3, #14
 8002a3a:	0019      	movs	r1, r3
 8002a3c:	2000      	movs	r0, #0
 8002a3e:	f7ff fd59 	bl	80024f4 <LL_RCC_PLL_ConfigDomain_SYS>
 8002a42:	f7ff fd35 	bl	80024b0 <LL_RCC_PLL_Enable>
 8002a46:	46c0      	nop			; (mov r8, r8)
 8002a48:	f7ff fd40 	bl	80024cc <LL_RCC_PLL_IsReady>
 8002a4c:	0003      	movs	r3, r0
 8002a4e:	2b01      	cmp	r3, #1
 8002a50:	d1fa      	bne.n	8002a48 <rcc_config+0x2c>
 8002a52:	2000      	movs	r0, #0
 8002a54:	f7ff fcd4 	bl	8002400 <LL_RCC_SetAHBPrescaler>
 8002a58:	2002      	movs	r0, #2
 8002a5a:	f7ff fcb1 	bl	80023c0 <LL_RCC_SetSysClkSource>
 8002a5e:	46c0      	nop			; (mov r8, r8)
 8002a60:	f7ff fcc2 	bl	80023e8 <LL_RCC_GetSysClkSource>
 8002a64:	0003      	movs	r3, r0
 8002a66:	2b08      	cmp	r3, #8
 8002a68:	d1fa      	bne.n	8002a60 <rcc_config+0x44>
 8002a6a:	2000      	movs	r0, #0
 8002a6c:	f7ff fcdc 	bl	8002428 <LL_RCC_SetAPB1Prescaler>
 8002a70:	4b02      	ldr	r3, [pc, #8]	; (8002a7c <rcc_config+0x60>)
 8002a72:	4a03      	ldr	r2, [pc, #12]	; (8002a80 <rcc_config+0x64>)
 8002a74:	601a      	str	r2, [r3, #0]
 8002a76:	46c0      	nop			; (mov r8, r8)
 8002a78:	46bd      	mov	sp, r7
 8002a7a:	bd80      	pop	{r7, pc}
 8002a7c:	20000000 	.word	0x20000000
 8002a80:	02dc6c00 	.word	0x02dc6c00

08002a84 <gpio_config>:
 8002a84:	b580      	push	{r7, lr}
 8002a86:	af00      	add	r7, sp, #0
 8002a88:	2380      	movs	r3, #128	; 0x80
 8002a8a:	031b      	lsls	r3, r3, #12
 8002a8c:	0018      	movs	r0, r3
 8002a8e:	f7ff fd6b 	bl	8002568 <LL_AHB1_GRP1_EnableClock>
 8002a92:	2380      	movs	r3, #128	; 0x80
 8002a94:	005b      	lsls	r3, r3, #1
 8002a96:	4804      	ldr	r0, [pc, #16]	; (8002aa8 <gpio_config+0x24>)
 8002a98:	2201      	movs	r2, #1
 8002a9a:	0019      	movs	r1, r3
 8002a9c:	f7ff fda6 	bl	80025ec <LL_GPIO_SetPinMode>
 8002aa0:	46c0      	nop			; (mov r8, r8)
 8002aa2:	46bd      	mov	sp, r7
 8002aa4:	bd80      	pop	{r7, pc}
 8002aa6:	46c0      	nop			; (mov r8, r8)
 8002aa8:	48000800 	.word	0x48000800

08002aac <exti_config>:
 8002aac:	b580      	push	{r7, lr}
 8002aae:	af00      	add	r7, sp, #0
 8002ab0:	46c0      	nop			; (mov r8, r8)
 8002ab2:	46bd      	mov	sp, r7
 8002ab4:	bd80      	pop	{r7, pc}
	...

08002ab8 <usart_config>:
 8002ab8:	b580      	push	{r7, lr}
 8002aba:	af00      	add	r7, sp, #0
 8002abc:	2380      	movs	r3, #128	; 0x80
 8002abe:	029b      	lsls	r3, r3, #10
 8002ac0:	0018      	movs	r0, r3
 8002ac2:	f7ff fd51 	bl	8002568 <LL_AHB1_GRP1_EnableClock>
 8002ac6:	2380      	movs	r3, #128	; 0x80
 8002ac8:	0099      	lsls	r1, r3, #2
 8002aca:	2390      	movs	r3, #144	; 0x90
 8002acc:	05db      	lsls	r3, r3, #23
 8002ace:	2202      	movs	r2, #2
 8002ad0:	0018      	movs	r0, r3
 8002ad2:	f7ff fd8b 	bl	80025ec <LL_GPIO_SetPinMode>
 8002ad6:	2380      	movs	r3, #128	; 0x80
 8002ad8:	0099      	lsls	r1, r3, #2
 8002ada:	2390      	movs	r3, #144	; 0x90
 8002adc:	05db      	lsls	r3, r3, #23
 8002ade:	2201      	movs	r2, #1
 8002ae0:	0018      	movs	r0, r3
 8002ae2:	f7ff fe14 	bl	800270e <LL_GPIO_SetAFPin_8_15>
 8002ae6:	2380      	movs	r3, #128	; 0x80
 8002ae8:	0099      	lsls	r1, r3, #2
 8002aea:	2390      	movs	r3, #144	; 0x90
 8002aec:	05db      	lsls	r3, r3, #23
 8002aee:	2203      	movs	r2, #3
 8002af0:	0018      	movs	r0, r3
 8002af2:	f7ff fdad 	bl	8002650 <LL_GPIO_SetPinSpeed>
 8002af6:	2380      	movs	r3, #128	; 0x80
 8002af8:	00d9      	lsls	r1, r3, #3
 8002afa:	2390      	movs	r3, #144	; 0x90
 8002afc:	05db      	lsls	r3, r3, #23
 8002afe:	2202      	movs	r2, #2
 8002b00:	0018      	movs	r0, r3
 8002b02:	f7ff fd73 	bl	80025ec <LL_GPIO_SetPinMode>
 8002b06:	2380      	movs	r3, #128	; 0x80
 8002b08:	00d9      	lsls	r1, r3, #3
 8002b0a:	2390      	movs	r3, #144	; 0x90
 8002b0c:	05db      	lsls	r3, r3, #23
 8002b0e:	2201      	movs	r2, #1
 8002b10:	0018      	movs	r0, r3
 8002b12:	f7ff fdfc 	bl	800270e <LL_GPIO_SetAFPin_8_15>
 8002b16:	2380      	movs	r3, #128	; 0x80
 8002b18:	00d9      	lsls	r1, r3, #3
 8002b1a:	2390      	movs	r3, #144	; 0x90
 8002b1c:	05db      	lsls	r3, r3, #23
 8002b1e:	2203      	movs	r2, #3
 8002b20:	0018      	movs	r0, r3
 8002b22:	f7ff fd95 	bl	8002650 <LL_GPIO_SetPinSpeed>
 8002b26:	2380      	movs	r3, #128	; 0x80
 8002b28:	01db      	lsls	r3, r3, #7
 8002b2a:	0018      	movs	r0, r3
 8002b2c:	f7ff fd48 	bl	80025c0 <LL_APB1_GRP2_EnableClock>
 8002b30:	2000      	movs	r0, #0
 8002b32:	f7ff fc8f 	bl	8002454 <LL_RCC_SetUSARTClockSource>
 8002b36:	4b1a      	ldr	r3, [pc, #104]	; (8002ba0 <usart_config+0xe8>)
 8002b38:	210c      	movs	r1, #12
 8002b3a:	0018      	movs	r0, r3
 8002b3c:	f7ff fe22 	bl	8002784 <LL_USART_SetTransferDirection>
 8002b40:	4b17      	ldr	r3, [pc, #92]	; (8002ba0 <usart_config+0xe8>)
 8002b42:	2100      	movs	r1, #0
 8002b44:	0018      	movs	r0, r3
 8002b46:	f7ff fe2f 	bl	80027a8 <LL_USART_SetParity>
 8002b4a:	4b15      	ldr	r3, [pc, #84]	; (8002ba0 <usart_config+0xe8>)
 8002b4c:	2100      	movs	r1, #0
 8002b4e:	0018      	movs	r0, r3
 8002b50:	f7ff fe3e 	bl	80027d0 <LL_USART_SetDataWidth>
 8002b54:	4b12      	ldr	r3, [pc, #72]	; (8002ba0 <usart_config+0xe8>)
 8002b56:	2100      	movs	r1, #0
 8002b58:	0018      	movs	r0, r3
 8002b5a:	f7ff fe4d 	bl	80027f8 <LL_USART_SetStopBitsLength>
 8002b5e:	4b10      	ldr	r3, [pc, #64]	; (8002ba0 <usart_config+0xe8>)
 8002b60:	2100      	movs	r1, #0
 8002b62:	0018      	movs	r0, r3
 8002b64:	f7ff fe5c 	bl	8002820 <LL_USART_SetTransferBitOrder>
 8002b68:	4b0e      	ldr	r3, [pc, #56]	; (8002ba4 <usart_config+0xec>)
 8002b6a:	6819      	ldr	r1, [r3, #0]
 8002b6c:	23e1      	movs	r3, #225	; 0xe1
 8002b6e:	025b      	lsls	r3, r3, #9
 8002b70:	480b      	ldr	r0, [pc, #44]	; (8002ba0 <usart_config+0xe8>)
 8002b72:	2200      	movs	r2, #0
 8002b74:	f7ff fe68 	bl	8002848 <LL_USART_SetBaudRate>
 8002b78:	4b09      	ldr	r3, [pc, #36]	; (8002ba0 <usart_config+0xe8>)
 8002b7a:	0018      	movs	r0, r3
 8002b7c:	f7ff fdf4 	bl	8002768 <LL_USART_Enable>
 8002b80:	46c0      	nop			; (mov r8, r8)
 8002b82:	4b07      	ldr	r3, [pc, #28]	; (8002ba0 <usart_config+0xe8>)
 8002b84:	0018      	movs	r0, r3
 8002b86:	f7ff fe99 	bl	80028bc <LL_USART_IsActiveFlag_TEACK>
 8002b8a:	1e03      	subs	r3, r0, #0
 8002b8c:	d0f9      	beq.n	8002b82 <usart_config+0xca>
 8002b8e:	4b04      	ldr	r3, [pc, #16]	; (8002ba0 <usart_config+0xe8>)
 8002b90:	0018      	movs	r0, r3
 8002b92:	f7ff fea9 	bl	80028e8 <LL_USART_IsActiveFlag_REACK>
 8002b96:	1e03      	subs	r3, r0, #0
 8002b98:	d0f3      	beq.n	8002b82 <usart_config+0xca>
 8002b9a:	46c0      	nop			; (mov r8, r8)
 8002b9c:	46bd      	mov	sp, r7
 8002b9e:	bd80      	pop	{r7, pc}
 8002ba0:	40013800 	.word	0x40013800
 8002ba4:	20000000 	.word	0x20000000

08002ba8 <i2c_config>:
 8002ba8:	b580      	push	{r7, lr}
 8002baa:	af00      	add	r7, sp, #0
 8002bac:	2380      	movs	r3, #128	; 0x80
 8002bae:	02db      	lsls	r3, r3, #11
 8002bb0:	0018      	movs	r0, r3
 8002bb2:	f7ff fcd9 	bl	8002568 <LL_AHB1_GRP1_EnableClock>
 8002bb6:	4b36      	ldr	r3, [pc, #216]	; (8002c90 <i2c_config+0xe8>)
 8002bb8:	2202      	movs	r2, #2
 8002bba:	2140      	movs	r1, #64	; 0x40
 8002bbc:	0018      	movs	r0, r3
 8002bbe:	f7ff fd15 	bl	80025ec <LL_GPIO_SetPinMode>
 8002bc2:	4b33      	ldr	r3, [pc, #204]	; (8002c90 <i2c_config+0xe8>)
 8002bc4:	2201      	movs	r2, #1
 8002bc6:	2140      	movs	r1, #64	; 0x40
 8002bc8:	0018      	movs	r0, r3
 8002bca:	f7ff fd2c 	bl	8002626 <LL_GPIO_SetPinOutputType>
 8002bce:	4b30      	ldr	r3, [pc, #192]	; (8002c90 <i2c_config+0xe8>)
 8002bd0:	2201      	movs	r2, #1
 8002bd2:	2140      	movs	r1, #64	; 0x40
 8002bd4:	0018      	movs	r0, r3
 8002bd6:	f7ff fd58 	bl	800268a <LL_GPIO_SetPinPull>
 8002bda:	4b2d      	ldr	r3, [pc, #180]	; (8002c90 <i2c_config+0xe8>)
 8002bdc:	2201      	movs	r2, #1
 8002bde:	2140      	movs	r1, #64	; 0x40
 8002be0:	0018      	movs	r0, r3
 8002be2:	f7ff fd6f 	bl	80026c4 <LL_GPIO_SetAFPin_0_7>
 8002be6:	4b2a      	ldr	r3, [pc, #168]	; (8002c90 <i2c_config+0xe8>)
 8002be8:	2203      	movs	r2, #3
 8002bea:	2140      	movs	r1, #64	; 0x40
 8002bec:	0018      	movs	r0, r3
 8002bee:	f7ff fd2f 	bl	8002650 <LL_GPIO_SetPinSpeed>
 8002bf2:	4b27      	ldr	r3, [pc, #156]	; (8002c90 <i2c_config+0xe8>)
 8002bf4:	2202      	movs	r2, #2
 8002bf6:	2180      	movs	r1, #128	; 0x80
 8002bf8:	0018      	movs	r0, r3
 8002bfa:	f7ff fcf7 	bl	80025ec <LL_GPIO_SetPinMode>
 8002bfe:	4b24      	ldr	r3, [pc, #144]	; (8002c90 <i2c_config+0xe8>)
 8002c00:	2201      	movs	r2, #1
 8002c02:	2180      	movs	r1, #128	; 0x80
 8002c04:	0018      	movs	r0, r3
 8002c06:	f7ff fd0e 	bl	8002626 <LL_GPIO_SetPinOutputType>
 8002c0a:	4b21      	ldr	r3, [pc, #132]	; (8002c90 <i2c_config+0xe8>)
 8002c0c:	2201      	movs	r2, #1
 8002c0e:	2180      	movs	r1, #128	; 0x80
 8002c10:	0018      	movs	r0, r3
 8002c12:	f7ff fd3a 	bl	800268a <LL_GPIO_SetPinPull>
 8002c16:	4b1e      	ldr	r3, [pc, #120]	; (8002c90 <i2c_config+0xe8>)
 8002c18:	2201      	movs	r2, #1
 8002c1a:	2180      	movs	r1, #128	; 0x80
 8002c1c:	0018      	movs	r0, r3
 8002c1e:	f7ff fd51 	bl	80026c4 <LL_GPIO_SetAFPin_0_7>
 8002c22:	4b1b      	ldr	r3, [pc, #108]	; (8002c90 <i2c_config+0xe8>)
 8002c24:	2203      	movs	r2, #3
 8002c26:	2180      	movs	r1, #128	; 0x80
 8002c28:	0018      	movs	r0, r3
 8002c2a:	f7ff fd11 	bl	8002650 <LL_GPIO_SetPinSpeed>
 8002c2e:	2010      	movs	r0, #16
 8002c30:	f7ff fc2a 	bl	8002488 <LL_RCC_SetI2CClockSource>
 8002c34:	4b17      	ldr	r3, [pc, #92]	; (8002c94 <i2c_config+0xec>)
 8002c36:	0018      	movs	r0, r3
 8002c38:	f7ff fe7a 	bl	8002930 <LL_I2C_Disable>
 8002c3c:	2380      	movs	r3, #128	; 0x80
 8002c3e:	039b      	lsls	r3, r3, #14
 8002c40:	0018      	movs	r0, r3
 8002c42:	f7ff fca7 	bl	8002594 <LL_APB1_GRP1_EnableClock>
 8002c46:	4b13      	ldr	r3, [pc, #76]	; (8002c94 <i2c_config+0xec>)
 8002c48:	0018      	movs	r0, r3
 8002c4a:	f7ff fe95 	bl	8002978 <LL_I2C_DisableAnalogFilter>
 8002c4e:	4b11      	ldr	r3, [pc, #68]	; (8002c94 <i2c_config+0xec>)
 8002c50:	2101      	movs	r1, #1
 8002c52:	0018      	movs	r0, r3
 8002c54:	f7ff fe7c 	bl	8002950 <LL_I2C_SetDigitalFilter>
 8002c58:	4a0f      	ldr	r2, [pc, #60]	; (8002c98 <i2c_config+0xf0>)
 8002c5a:	4b0e      	ldr	r3, [pc, #56]	; (8002c94 <i2c_config+0xec>)
 8002c5c:	0011      	movs	r1, r2
 8002c5e:	0018      	movs	r0, r3
 8002c60:	f7ff febc 	bl	80029dc <LL_I2C_SetTiming>
 8002c64:	4b0b      	ldr	r3, [pc, #44]	; (8002c94 <i2c_config+0xec>)
 8002c66:	0018      	movs	r0, r3
 8002c68:	f7ff fe95 	bl	8002996 <LL_I2C_DisableClockStretching>
 8002c6c:	4b09      	ldr	r3, [pc, #36]	; (8002c94 <i2c_config+0xec>)
 8002c6e:	2100      	movs	r1, #0
 8002c70:	0018      	movs	r0, r3
 8002c72:	f7ff fe9f 	bl	80029b4 <LL_I2C_SetMasterAddressingMode>
 8002c76:	4b07      	ldr	r3, [pc, #28]	; (8002c94 <i2c_config+0xec>)
 8002c78:	2100      	movs	r1, #0
 8002c7a:	0018      	movs	r0, r3
 8002c7c:	f7ff feba 	bl	80029f4 <LL_I2C_SetMode>
 8002c80:	4b04      	ldr	r3, [pc, #16]	; (8002c94 <i2c_config+0xec>)
 8002c82:	0018      	movs	r0, r3
 8002c84:	f7ff fe46 	bl	8002914 <LL_I2C_Enable>
 8002c88:	46c0      	nop			; (mov r8, r8)
 8002c8a:	46bd      	mov	sp, r7
 8002c8c:	bd80      	pop	{r7, pc}
 8002c8e:	46c0      	nop			; (mov r8, r8)
 8002c90:	48000400 	.word	0x48000400
 8002c94:	40005400 	.word	0x40005400
 8002c98:	2000090e 	.word	0x2000090e

08002c9c <LL_USART_IsActiveFlag_RXNE>:
 8002c9c:	b580      	push	{r7, lr}
 8002c9e:	b082      	sub	sp, #8
 8002ca0:	af00      	add	r7, sp, #0
 8002ca2:	6078      	str	r0, [r7, #4]
 8002ca4:	687b      	ldr	r3, [r7, #4]
 8002ca6:	69db      	ldr	r3, [r3, #28]
 8002ca8:	2220      	movs	r2, #32
 8002caa:	4013      	ands	r3, r2
 8002cac:	3b20      	subs	r3, #32
 8002cae:	425a      	negs	r2, r3
 8002cb0:	4153      	adcs	r3, r2
 8002cb2:	b2db      	uxtb	r3, r3
 8002cb4:	0018      	movs	r0, r3
 8002cb6:	46bd      	mov	sp, r7
 8002cb8:	b002      	add	sp, #8
 8002cba:	bd80      	pop	{r7, pc}

08002cbc <LL_USART_IsActiveFlag_TC>:
 8002cbc:	b580      	push	{r7, lr}
 8002cbe:	b082      	sub	sp, #8
 8002cc0:	af00      	add	r7, sp, #0
 8002cc2:	6078      	str	r0, [r7, #4]
 8002cc4:	687b      	ldr	r3, [r7, #4]
 8002cc6:	69db      	ldr	r3, [r3, #28]
 8002cc8:	2240      	movs	r2, #64	; 0x40
 8002cca:	4013      	ands	r3, r2
 8002ccc:	3b40      	subs	r3, #64	; 0x40
 8002cce:	425a      	negs	r2, r3
 8002cd0:	4153      	adcs	r3, r2
 8002cd2:	b2db      	uxtb	r3, r3
 8002cd4:	0018      	movs	r0, r3
 8002cd6:	46bd      	mov	sp, r7
 8002cd8:	b002      	add	sp, #8
 8002cda:	bd80      	pop	{r7, pc}

08002cdc <LL_USART_IsActiveFlag_TXE>:
 8002cdc:	b580      	push	{r7, lr}
 8002cde:	b082      	sub	sp, #8
 8002ce0:	af00      	add	r7, sp, #0
 8002ce2:	6078      	str	r0, [r7, #4]
 8002ce4:	687b      	ldr	r3, [r7, #4]
 8002ce6:	69db      	ldr	r3, [r3, #28]
 8002ce8:	2280      	movs	r2, #128	; 0x80
 8002cea:	4013      	ands	r3, r2
 8002cec:	3b80      	subs	r3, #128	; 0x80
 8002cee:	425a      	negs	r2, r3
 8002cf0:	4153      	adcs	r3, r2
 8002cf2:	b2db      	uxtb	r3, r3
 8002cf4:	0018      	movs	r0, r3
 8002cf6:	46bd      	mov	sp, r7
 8002cf8:	b002      	add	sp, #8
 8002cfa:	bd80      	pop	{r7, pc}

08002cfc <LL_USART_ReceiveData8>:
 8002cfc:	b580      	push	{r7, lr}
 8002cfe:	b082      	sub	sp, #8
 8002d00:	af00      	add	r7, sp, #0
 8002d02:	6078      	str	r0, [r7, #4]
 8002d04:	687b      	ldr	r3, [r7, #4]
 8002d06:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
 8002d08:	b29b      	uxth	r3, r3
 8002d0a:	b2db      	uxtb	r3, r3
 8002d0c:	0018      	movs	r0, r3
 8002d0e:	46bd      	mov	sp, r7
 8002d10:	b002      	add	sp, #8
 8002d12:	bd80      	pop	{r7, pc}

08002d14 <LL_USART_TransmitData8>:
 8002d14:	b580      	push	{r7, lr}
 8002d16:	b082      	sub	sp, #8
 8002d18:	af00      	add	r7, sp, #0
 8002d1a:	6078      	str	r0, [r7, #4]
 8002d1c:	000a      	movs	r2, r1
 8002d1e:	1cfb      	adds	r3, r7, #3
 8002d20:	701a      	strb	r2, [r3, #0]
 8002d22:	1cfb      	adds	r3, r7, #3
 8002d24:	781b      	ldrb	r3, [r3, #0]
 8002d26:	b29a      	uxth	r2, r3
 8002d28:	687b      	ldr	r3, [r7, #4]
 8002d2a:	851a      	strh	r2, [r3, #40]	; 0x28
 8002d2c:	46c0      	nop			; (mov r8, r8)
 8002d2e:	46bd      	mov	sp, r7
 8002d30:	b002      	add	sp, #8
 8002d32:	bd80      	pop	{r7, pc}

08002d34 <usart_getc>:
 8002d34:	b580      	push	{r7, lr}
 8002d36:	af00      	add	r7, sp, #0
 8002d38:	46c0      	nop			; (mov r8, r8)
 8002d3a:	4b07      	ldr	r3, [pc, #28]	; (8002d58 <usart_getc+0x24>)
 8002d3c:	0018      	movs	r0, r3
 8002d3e:	f7ff ffad 	bl	8002c9c <LL_USART_IsActiveFlag_RXNE>
 8002d42:	1e03      	subs	r3, r0, #0
 8002d44:	d0f9      	beq.n	8002d3a <usart_getc+0x6>
 8002d46:	4b04      	ldr	r3, [pc, #16]	; (8002d58 <usart_getc+0x24>)
 8002d48:	0018      	movs	r0, r3
 8002d4a:	f7ff ffd7 	bl	8002cfc <LL_USART_ReceiveData8>
 8002d4e:	0003      	movs	r3, r0
 8002d50:	0018      	movs	r0, r3
 8002d52:	46bd      	mov	sp, r7
 8002d54:	bd80      	pop	{r7, pc}
 8002d56:	46c0      	nop			; (mov r8, r8)
 8002d58:	40013800 	.word	0x40013800

08002d5c <usart_putc>:
 8002d5c:	b580      	push	{r7, lr}
 8002d5e:	b082      	sub	sp, #8
 8002d60:	af00      	add	r7, sp, #0
 8002d62:	0002      	movs	r2, r0
 8002d64:	1dfb      	adds	r3, r7, #7
 8002d66:	701a      	strb	r2, [r3, #0]
 8002d68:	46c0      	nop			; (mov r8, r8)
 8002d6a:	4b0c      	ldr	r3, [pc, #48]	; (8002d9c <usart_putc+0x40>)
 8002d6c:	0018      	movs	r0, r3
 8002d6e:	f7ff ffb5 	bl	8002cdc <LL_USART_IsActiveFlag_TXE>
 8002d72:	1e03      	subs	r3, r0, #0
 8002d74:	d0f9      	beq.n	8002d6a <usart_putc+0xe>
 8002d76:	1dfb      	adds	r3, r7, #7
 8002d78:	781b      	ldrb	r3, [r3, #0]
 8002d7a:	4a08      	ldr	r2, [pc, #32]	; (8002d9c <usart_putc+0x40>)
 8002d7c:	0019      	movs	r1, r3
 8002d7e:	0010      	movs	r0, r2
 8002d80:	f7ff ffc8 	bl	8002d14 <LL_USART_TransmitData8>
 8002d84:	46c0      	nop			; (mov r8, r8)
 8002d86:	4b05      	ldr	r3, [pc, #20]	; (8002d9c <usart_putc+0x40>)
 8002d88:	0018      	movs	r0, r3
 8002d8a:	f7ff ff97 	bl	8002cbc <LL_USART_IsActiveFlag_TC>
 8002d8e:	1e03      	subs	r3, r0, #0
 8002d90:	d0f9      	beq.n	8002d86 <usart_putc+0x2a>
 8002d92:	46c0      	nop			; (mov r8, r8)
 8002d94:	46bd      	mov	sp, r7
 8002d96:	b002      	add	sp, #8
 8002d98:	bd80      	pop	{r7, pc}
 8002d9a:	46c0      	nop			; (mov r8, r8)
 8002d9c:	40013800 	.word	0x40013800

08002da0 <printf_config>:
 8002da0:	b580      	push	{r7, lr}
 8002da2:	af00      	add	r7, sp, #0
 8002da4:	4b04      	ldr	r3, [pc, #16]	; (8002db8 <printf_config+0x18>)
 8002da6:	4a05      	ldr	r2, [pc, #20]	; (8002dbc <printf_config+0x1c>)
 8002da8:	601a      	str	r2, [r3, #0]
 8002daa:	4b05      	ldr	r3, [pc, #20]	; (8002dc0 <printf_config+0x20>)
 8002dac:	4a05      	ldr	r2, [pc, #20]	; (8002dc4 <printf_config+0x24>)
 8002dae:	601a      	str	r2, [r3, #0]
 8002db0:	46c0      	nop			; (mov r8, r8)
 8002db2:	46bd      	mov	sp, r7
 8002db4:	bd80      	pop	{r7, pc}
 8002db6:	46c0      	nop			; (mov r8, r8)
 8002db8:	2000011c 	.word	0x2000011c
 8002dbc:	08002d5d 	.word	0x08002d5d
 8002dc0:	20000118 	.word	0x20000118
 8002dc4:	08002d35 	.word	0x08002d35

08002dc8 <LL_I2C_IsActiveFlag_TXIS>:
 8002dc8:	b580      	push	{r7, lr}
 8002dca:	b082      	sub	sp, #8
 8002dcc:	af00      	add	r7, sp, #0
 8002dce:	6078      	str	r0, [r7, #4]
 8002dd0:	687b      	ldr	r3, [r7, #4]
 8002dd2:	699b      	ldr	r3, [r3, #24]
 8002dd4:	2202      	movs	r2, #2
 8002dd6:	4013      	ands	r3, r2
 8002dd8:	3b02      	subs	r3, #2
 8002dda:	425a      	negs	r2, r3
 8002ddc:	4153      	adcs	r3, r2
 8002dde:	b2db      	uxtb	r3, r3
 8002de0:	0018      	movs	r0, r3
 8002de2:	46bd      	mov	sp, r7
 8002de4:	b002      	add	sp, #8
 8002de6:	bd80      	pop	{r7, pc}

08002de8 <LL_I2C_IsActiveFlag_RXNE>:
 8002de8:	b580      	push	{r7, lr}
 8002dea:	b082      	sub	sp, #8
 8002dec:	af00      	add	r7, sp, #0
 8002dee:	6078      	str	r0, [r7, #4]
 8002df0:	687b      	ldr	r3, [r7, #4]
 8002df2:	699b      	ldr	r3, [r3, #24]
 8002df4:	2204      	movs	r2, #4
 8002df6:	4013      	ands	r3, r2
 8002df8:	3b04      	subs	r3, #4
 8002dfa:	425a      	negs	r2, r3
 8002dfc:	4153      	adcs	r3, r2
 8002dfe:	b2db      	uxtb	r3, r3
 8002e00:	0018      	movs	r0, r3
 8002e02:	46bd      	mov	sp, r7
 8002e04:	b002      	add	sp, #8
 8002e06:	bd80      	pop	{r7, pc}

08002e08 <LL_I2C_IsActiveFlag_TC>:
 8002e08:	b580      	push	{r7, lr}
 8002e0a:	b082      	sub	sp, #8
 8002e0c:	af00      	add	r7, sp, #0
 8002e0e:	6078      	str	r0, [r7, #4]
 8002e10:	687b      	ldr	r3, [r7, #4]
 8002e12:	699b      	ldr	r3, [r3, #24]
 8002e14:	2240      	movs	r2, #64	; 0x40
 8002e16:	4013      	ands	r3, r2
 8002e18:	3b40      	subs	r3, #64	; 0x40
 8002e1a:	425a      	negs	r2, r3
 8002e1c:	4153      	adcs	r3, r2
 8002e1e:	b2db      	uxtb	r3, r3
 8002e20:	0018      	movs	r0, r3
 8002e22:	46bd      	mov	sp, r7
 8002e24:	b002      	add	sp, #8
 8002e26:	bd80      	pop	{r7, pc}

08002e28 <LL_I2C_HandleTransfer>:
 8002e28:	b580      	push	{r7, lr}
 8002e2a:	b084      	sub	sp, #16
 8002e2c:	af00      	add	r7, sp, #0
 8002e2e:	60f8      	str	r0, [r7, #12]
 8002e30:	60b9      	str	r1, [r7, #8]
 8002e32:	607a      	str	r2, [r7, #4]
 8002e34:	603b      	str	r3, [r7, #0]
 8002e36:	68fb      	ldr	r3, [r7, #12]
 8002e38:	685b      	ldr	r3, [r3, #4]
 8002e3a:	4a09      	ldr	r2, [pc, #36]	; (8002e60 <LL_I2C_HandleTransfer+0x38>)
 8002e3c:	401a      	ands	r2, r3
 8002e3e:	68b9      	ldr	r1, [r7, #8]
 8002e40:	687b      	ldr	r3, [r7, #4]
 8002e42:	4319      	orrs	r1, r3
 8002e44:	683b      	ldr	r3, [r7, #0]
 8002e46:	041b      	lsls	r3, r3, #16
 8002e48:	4319      	orrs	r1, r3
 8002e4a:	69bb      	ldr	r3, [r7, #24]
 8002e4c:	4319      	orrs	r1, r3
 8002e4e:	69fb      	ldr	r3, [r7, #28]
 8002e50:	430b      	orrs	r3, r1
 8002e52:	431a      	orrs	r2, r3
 8002e54:	68fb      	ldr	r3, [r7, #12]
 8002e56:	605a      	str	r2, [r3, #4]
 8002e58:	46c0      	nop			; (mov r8, r8)
 8002e5a:	46bd      	mov	sp, r7
 8002e5c:	b004      	add	sp, #16
 8002e5e:	bd80      	pop	{r7, pc}
 8002e60:	fc008000 	.word	0xfc008000

08002e64 <LL_I2C_ReceiveData8>:
 8002e64:	b580      	push	{r7, lr}
 8002e66:	b082      	sub	sp, #8
 8002e68:	af00      	add	r7, sp, #0
 8002e6a:	6078      	str	r0, [r7, #4]
 8002e6c:	687b      	ldr	r3, [r7, #4]
 8002e6e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8002e70:	b2db      	uxtb	r3, r3
 8002e72:	0018      	movs	r0, r3
 8002e74:	46bd      	mov	sp, r7
 8002e76:	b002      	add	sp, #8
 8002e78:	bd80      	pop	{r7, pc}

08002e7a <LL_I2C_TransmitData8>:
 8002e7a:	b580      	push	{r7, lr}
 8002e7c:	b082      	sub	sp, #8
 8002e7e:	af00      	add	r7, sp, #0
 8002e80:	6078      	str	r0, [r7, #4]
 8002e82:	000a      	movs	r2, r1
 8002e84:	1cfb      	adds	r3, r7, #3
 8002e86:	701a      	strb	r2, [r3, #0]
 8002e88:	1cfb      	adds	r3, r7, #3
 8002e8a:	781a      	ldrb	r2, [r3, #0]
 8002e8c:	687b      	ldr	r3, [r7, #4]
 8002e8e:	629a      	str	r2, [r3, #40]	; 0x28
 8002e90:	46c0      	nop			; (mov r8, r8)
 8002e92:	46bd      	mov	sp, r7
 8002e94:	b002      	add	sp, #8
 8002e96:	bd80      	pop	{r7, pc}

08002e98 <mpu9255_WriteMulti>:
 8002e98:	b590      	push	{r4, r7, lr}
 8002e9a:	b087      	sub	sp, #28
 8002e9c:	af02      	add	r7, sp, #8
 8002e9e:	0004      	movs	r4, r0
 8002ea0:	0008      	movs	r0, r1
 8002ea2:	603a      	str	r2, [r7, #0]
 8002ea4:	0019      	movs	r1, r3
 8002ea6:	1dfb      	adds	r3, r7, #7
 8002ea8:	1c22      	adds	r2, r4, #0
 8002eaa:	701a      	strb	r2, [r3, #0]
 8002eac:	1dbb      	adds	r3, r7, #6
 8002eae:	1c02      	adds	r2, r0, #0
 8002eb0:	701a      	strb	r2, [r3, #0]
 8002eb2:	1d7b      	adds	r3, r7, #5
 8002eb4:	1c0a      	adds	r2, r1, #0
 8002eb6:	701a      	strb	r2, [r3, #0]
 8002eb8:	23fa      	movs	r3, #250	; 0xfa
 8002eba:	009b      	lsls	r3, r3, #2
 8002ebc:	60fb      	str	r3, [r7, #12]
 8002ebe:	1dfb      	adds	r3, r7, #7
 8002ec0:	7819      	ldrb	r1, [r3, #0]
 8002ec2:	1d7b      	adds	r3, r7, #5
 8002ec4:	781b      	ldrb	r3, [r3, #0]
 8002ec6:	3301      	adds	r3, #1
 8002ec8:	001a      	movs	r2, r3
 8002eca:	4833      	ldr	r0, [pc, #204]	; (8002f98 <mpu9255_WriteMulti+0x100>)
 8002ecc:	2380      	movs	r3, #128	; 0x80
 8002ece:	019b      	lsls	r3, r3, #6
 8002ed0:	9301      	str	r3, [sp, #4]
 8002ed2:	2380      	movs	r3, #128	; 0x80
 8002ed4:	049b      	lsls	r3, r3, #18
 8002ed6:	9300      	str	r3, [sp, #0]
 8002ed8:	0013      	movs	r3, r2
 8002eda:	2200      	movs	r2, #0
 8002edc:	f7ff ffa4 	bl	8002e28 <LL_I2C_HandleTransfer>
 8002ee0:	46c0      	nop			; (mov r8, r8)
 8002ee2:	4b2d      	ldr	r3, [pc, #180]	; (8002f98 <mpu9255_WriteMulti+0x100>)
 8002ee4:	0018      	movs	r0, r3
 8002ee6:	f7ff ff6f 	bl	8002dc8 <LL_I2C_IsActiveFlag_TXIS>
 8002eea:	1e03      	subs	r3, r0, #0
 8002eec:	d104      	bne.n	8002ef8 <mpu9255_WriteMulti+0x60>
 8002eee:	68fb      	ldr	r3, [r7, #12]
 8002ef0:	1e5a      	subs	r2, r3, #1
 8002ef2:	60fa      	str	r2, [r7, #12]
 8002ef4:	2b00      	cmp	r3, #0
 8002ef6:	dcf4      	bgt.n	8002ee2 <mpu9255_WriteMulti+0x4a>
 8002ef8:	68fb      	ldr	r3, [r7, #12]
 8002efa:	2b00      	cmp	r3, #0
 8002efc:	dc01      	bgt.n	8002f02 <mpu9255_WriteMulti+0x6a>
 8002efe:	2303      	movs	r3, #3
 8002f00:	e045      	b.n	8002f8e <mpu9255_WriteMulti+0xf6>
 8002f02:	1dbb      	adds	r3, r7, #6
 8002f04:	781b      	ldrb	r3, [r3, #0]
 8002f06:	4a24      	ldr	r2, [pc, #144]	; (8002f98 <mpu9255_WriteMulti+0x100>)
 8002f08:	0019      	movs	r1, r3
 8002f0a:	0010      	movs	r0, r2
 8002f0c:	f7ff ffb5 	bl	8002e7a <LL_I2C_TransmitData8>
 8002f10:	230b      	movs	r3, #11
 8002f12:	18fb      	adds	r3, r7, r3
 8002f14:	2200      	movs	r2, #0
 8002f16:	701a      	strb	r2, [r3, #0]
 8002f18:	e020      	b.n	8002f5c <mpu9255_WriteMulti+0xc4>
 8002f1a:	46c0      	nop			; (mov r8, r8)
 8002f1c:	4b1e      	ldr	r3, [pc, #120]	; (8002f98 <mpu9255_WriteMulti+0x100>)
 8002f1e:	0018      	movs	r0, r3
 8002f20:	f7ff ff52 	bl	8002dc8 <LL_I2C_IsActiveFlag_TXIS>
 8002f24:	1e03      	subs	r3, r0, #0
 8002f26:	d104      	bne.n	8002f32 <mpu9255_WriteMulti+0x9a>
 8002f28:	68fb      	ldr	r3, [r7, #12]
 8002f2a:	1e5a      	subs	r2, r3, #1
 8002f2c:	60fa      	str	r2, [r7, #12]
 8002f2e:	2b00      	cmp	r3, #0
 8002f30:	dcf4      	bgt.n	8002f1c <mpu9255_WriteMulti+0x84>
 8002f32:	68fb      	ldr	r3, [r7, #12]
 8002f34:	2b00      	cmp	r3, #0
 8002f36:	dc01      	bgt.n	8002f3c <mpu9255_WriteMulti+0xa4>
 8002f38:	2303      	movs	r3, #3
 8002f3a:	e028      	b.n	8002f8e <mpu9255_WriteMulti+0xf6>
 8002f3c:	240b      	movs	r4, #11
 8002f3e:	193b      	adds	r3, r7, r4
 8002f40:	781b      	ldrb	r3, [r3, #0]
 8002f42:	683a      	ldr	r2, [r7, #0]
 8002f44:	18d3      	adds	r3, r2, r3
 8002f46:	781b      	ldrb	r3, [r3, #0]
 8002f48:	4a13      	ldr	r2, [pc, #76]	; (8002f98 <mpu9255_WriteMulti+0x100>)
 8002f4a:	0019      	movs	r1, r3
 8002f4c:	0010      	movs	r0, r2
 8002f4e:	f7ff ff94 	bl	8002e7a <LL_I2C_TransmitData8>
 8002f52:	193b      	adds	r3, r7, r4
 8002f54:	781a      	ldrb	r2, [r3, #0]
 8002f56:	193b      	adds	r3, r7, r4
 8002f58:	3201      	adds	r2, #1
 8002f5a:	701a      	strb	r2, [r3, #0]
 8002f5c:	230b      	movs	r3, #11
 8002f5e:	18fa      	adds	r2, r7, r3
 8002f60:	1d7b      	adds	r3, r7, #5
 8002f62:	7812      	ldrb	r2, [r2, #0]
 8002f64:	781b      	ldrb	r3, [r3, #0]
 8002f66:	429a      	cmp	r2, r3
 8002f68:	d3d7      	bcc.n	8002f1a <mpu9255_WriteMulti+0x82>
 8002f6a:	46c0      	nop			; (mov r8, r8)
 8002f6c:	4b0a      	ldr	r3, [pc, #40]	; (8002f98 <mpu9255_WriteMulti+0x100>)
 8002f6e:	0018      	movs	r0, r3
 8002f70:	f7ff ff4a 	bl	8002e08 <LL_I2C_IsActiveFlag_TC>
 8002f74:	1e03      	subs	r3, r0, #0
 8002f76:	d004      	beq.n	8002f82 <mpu9255_WriteMulti+0xea>
 8002f78:	68fb      	ldr	r3, [r7, #12]
 8002f7a:	1e5a      	subs	r2, r3, #1
 8002f7c:	60fa      	str	r2, [r7, #12]
 8002f7e:	2b00      	cmp	r3, #0
 8002f80:	dcf4      	bgt.n	8002f6c <mpu9255_WriteMulti+0xd4>
 8002f82:	68fb      	ldr	r3, [r7, #12]
 8002f84:	2b00      	cmp	r3, #0
 8002f86:	dc01      	bgt.n	8002f8c <mpu9255_WriteMulti+0xf4>
 8002f88:	2303      	movs	r3, #3
 8002f8a:	e000      	b.n	8002f8e <mpu9255_WriteMulti+0xf6>
 8002f8c:	2300      	movs	r3, #0
 8002f8e:	0018      	movs	r0, r3
 8002f90:	46bd      	mov	sp, r7
 8002f92:	b005      	add	sp, #20
 8002f94:	bd90      	pop	{r4, r7, pc}
 8002f96:	46c0      	nop			; (mov r8, r8)
 8002f98:	40005400 	.word	0x40005400

08002f9c <mpu9255_ReadMulti>:
 8002f9c:	b5b0      	push	{r4, r5, r7, lr}
 8002f9e:	b086      	sub	sp, #24
 8002fa0:	af02      	add	r7, sp, #8
 8002fa2:	0004      	movs	r4, r0
 8002fa4:	0008      	movs	r0, r1
 8002fa6:	603a      	str	r2, [r7, #0]
 8002fa8:	0019      	movs	r1, r3
 8002faa:	1dfb      	adds	r3, r7, #7
 8002fac:	1c22      	adds	r2, r4, #0
 8002fae:	701a      	strb	r2, [r3, #0]
 8002fb0:	1dbb      	adds	r3, r7, #6
 8002fb2:	1c02      	adds	r2, r0, #0
 8002fb4:	701a      	strb	r2, [r3, #0]
 8002fb6:	1d7b      	adds	r3, r7, #5
 8002fb8:	1c0a      	adds	r2, r1, #0
 8002fba:	701a      	strb	r2, [r3, #0]
 8002fbc:	23fa      	movs	r3, #250	; 0xfa
 8002fbe:	009b      	lsls	r3, r3, #2
 8002fc0:	60fb      	str	r3, [r7, #12]
 8002fc2:	1dbb      	adds	r3, r7, #6
 8002fc4:	7819      	ldrb	r1, [r3, #0]
 8002fc6:	1dfb      	adds	r3, r7, #7
 8002fc8:	7818      	ldrb	r0, [r3, #0]
 8002fca:	2300      	movs	r3, #0
 8002fcc:	2200      	movs	r2, #0
 8002fce:	f7ff ff63 	bl	8002e98 <mpu9255_WriteMulti>
 8002fd2:	0003      	movs	r3, r0
 8002fd4:	2b03      	cmp	r3, #3
 8002fd6:	d101      	bne.n	8002fdc <mpu9255_ReadMulti+0x40>
 8002fd8:	2303      	movs	r3, #3
 8002fda:	e04d      	b.n	8003078 <mpu9255_ReadMulti+0xdc>
 8002fdc:	1dfb      	adds	r3, r7, #7
 8002fde:	7819      	ldrb	r1, [r3, #0]
 8002fe0:	1d7b      	adds	r3, r7, #5
 8002fe2:	781a      	ldrb	r2, [r3, #0]
 8002fe4:	4826      	ldr	r0, [pc, #152]	; (8003080 <mpu9255_ReadMulti+0xe4>)
 8002fe6:	2390      	movs	r3, #144	; 0x90
 8002fe8:	019b      	lsls	r3, r3, #6
 8002fea:	9301      	str	r3, [sp, #4]
 8002fec:	2380      	movs	r3, #128	; 0x80
 8002fee:	049b      	lsls	r3, r3, #18
 8002ff0:	9300      	str	r3, [sp, #0]
 8002ff2:	0013      	movs	r3, r2
 8002ff4:	2200      	movs	r2, #0
 8002ff6:	f7ff ff17 	bl	8002e28 <LL_I2C_HandleTransfer>
 8002ffa:	230b      	movs	r3, #11
 8002ffc:	18fb      	adds	r3, r7, r3
 8002ffe:	2200      	movs	r2, #0
 8003000:	701a      	strb	r2, [r3, #0]
 8003002:	e020      	b.n	8003046 <mpu9255_ReadMulti+0xaa>
 8003004:	46c0      	nop			; (mov r8, r8)
 8003006:	4b1e      	ldr	r3, [pc, #120]	; (8003080 <mpu9255_ReadMulti+0xe4>)
 8003008:	0018      	movs	r0, r3
 800300a:	f7ff feed 	bl	8002de8 <LL_I2C_IsActiveFlag_RXNE>
 800300e:	1e03      	subs	r3, r0, #0
 8003010:	d104      	bne.n	800301c <mpu9255_ReadMulti+0x80>
 8003012:	68fb      	ldr	r3, [r7, #12]
 8003014:	1e5a      	subs	r2, r3, #1
 8003016:	60fa      	str	r2, [r7, #12]
 8003018:	2b00      	cmp	r3, #0
 800301a:	dcf4      	bgt.n	8003006 <mpu9255_ReadMulti+0x6a>
 800301c:	68fb      	ldr	r3, [r7, #12]
 800301e:	2b00      	cmp	r3, #0
 8003020:	dc01      	bgt.n	8003026 <mpu9255_ReadMulti+0x8a>
 8003022:	2303      	movs	r3, #3
 8003024:	e028      	b.n	8003078 <mpu9255_ReadMulti+0xdc>
 8003026:	250b      	movs	r5, #11
 8003028:	197b      	adds	r3, r7, r5
 800302a:	781b      	ldrb	r3, [r3, #0]
 800302c:	683a      	ldr	r2, [r7, #0]
 800302e:	18d4      	adds	r4, r2, r3
 8003030:	4b13      	ldr	r3, [pc, #76]	; (8003080 <mpu9255_ReadMulti+0xe4>)
 8003032:	0018      	movs	r0, r3
 8003034:	f7ff ff16 	bl	8002e64 <LL_I2C_ReceiveData8>
 8003038:	0003      	movs	r3, r0
 800303a:	7023      	strb	r3, [r4, #0]
 800303c:	197b      	adds	r3, r7, r5
 800303e:	781a      	ldrb	r2, [r3, #0]
 8003040:	197b      	adds	r3, r7, r5
 8003042:	3201      	adds	r2, #1
 8003044:	701a      	strb	r2, [r3, #0]
 8003046:	230b      	movs	r3, #11
 8003048:	18fa      	adds	r2, r7, r3
 800304a:	1d7b      	adds	r3, r7, #5
 800304c:	7812      	ldrb	r2, [r2, #0]
 800304e:	781b      	ldrb	r3, [r3, #0]
 8003050:	429a      	cmp	r2, r3
 8003052:	d3d7      	bcc.n	8003004 <mpu9255_ReadMulti+0x68>
 8003054:	46c0      	nop			; (mov r8, r8)
 8003056:	4b0a      	ldr	r3, [pc, #40]	; (8003080 <mpu9255_ReadMulti+0xe4>)
 8003058:	0018      	movs	r0, r3
 800305a:	f7ff fed5 	bl	8002e08 <LL_I2C_IsActiveFlag_TC>
 800305e:	1e03      	subs	r3, r0, #0
 8003060:	d004      	beq.n	800306c <mpu9255_ReadMulti+0xd0>
 8003062:	68fb      	ldr	r3, [r7, #12]
 8003064:	1e5a      	subs	r2, r3, #1
 8003066:	60fa      	str	r2, [r7, #12]
 8003068:	2b00      	cmp	r3, #0
 800306a:	dcf4      	bgt.n	8003056 <mpu9255_ReadMulti+0xba>
 800306c:	68fb      	ldr	r3, [r7, #12]
 800306e:	2b00      	cmp	r3, #0
 8003070:	dc01      	bgt.n	8003076 <mpu9255_ReadMulti+0xda>
 8003072:	2303      	movs	r3, #3
 8003074:	e000      	b.n	8003078 <mpu9255_ReadMulti+0xdc>
 8003076:	2300      	movs	r3, #0
 8003078:	0018      	movs	r0, r3
 800307a:	46bd      	mov	sp, r7
 800307c:	b004      	add	sp, #16
 800307e:	bdb0      	pop	{r4, r5, r7, pc}
 8003080:	40005400 	.word	0x40005400

08003084 <mpu9255_WriteByte>:
 8003084:	b590      	push	{r4, r7, lr}
 8003086:	b083      	sub	sp, #12
 8003088:	af00      	add	r7, sp, #0
 800308a:	0004      	movs	r4, r0
 800308c:	0008      	movs	r0, r1
 800308e:	0011      	movs	r1, r2
 8003090:	1dfb      	adds	r3, r7, #7
 8003092:	1c22      	adds	r2, r4, #0
 8003094:	701a      	strb	r2, [r3, #0]
 8003096:	1dbb      	adds	r3, r7, #6
 8003098:	1c02      	adds	r2, r0, #0
 800309a:	701a      	strb	r2, [r3, #0]
 800309c:	1d7b      	adds	r3, r7, #5
 800309e:	1c0a      	adds	r2, r1, #0
 80030a0:	701a      	strb	r2, [r3, #0]
 80030a2:	1d7a      	adds	r2, r7, #5
 80030a4:	1dbb      	adds	r3, r7, #6
 80030a6:	7819      	ldrb	r1, [r3, #0]
 80030a8:	1dfb      	adds	r3, r7, #7
 80030aa:	7818      	ldrb	r0, [r3, #0]
 80030ac:	2301      	movs	r3, #1
 80030ae:	f7ff fef3 	bl	8002e98 <mpu9255_WriteMulti>
 80030b2:	0003      	movs	r3, r0
 80030b4:	0018      	movs	r0, r3
 80030b6:	46bd      	mov	sp, r7
 80030b8:	b003      	add	sp, #12
 80030ba:	bd90      	pop	{r4, r7, pc}

080030bc <mpu9255_init>:
 80030bc:	b580      	push	{r7, lr}
 80030be:	b084      	sub	sp, #16
 80030c0:	af00      	add	r7, sp, #0
 80030c2:	2300      	movs	r3, #0
 80030c4:	60fb      	str	r3, [r7, #12]
 80030c6:	2280      	movs	r2, #128	; 0x80
 80030c8:	216b      	movs	r1, #107	; 0x6b
 80030ca:	20d0      	movs	r0, #208	; 0xd0
 80030cc:	f7ff ffda 	bl	8003084 <mpu9255_WriteByte>
 80030d0:	0003      	movs	r3, r0
 80030d2:	60fb      	str	r3, [r7, #12]
 80030d4:	68fb      	ldr	r3, [r7, #12]
 80030d6:	2b00      	cmp	r3, #0
 80030d8:	d000      	beq.n	80030dc <mpu9255_init+0x20>
 80030da:	e090      	b.n	80031fe <mpu9255_init+0x142>
 80030dc:	2300      	movs	r3, #0
 80030de:	60bb      	str	r3, [r7, #8]
 80030e0:	2300      	movs	r3, #0
 80030e2:	607b      	str	r3, [r7, #4]
 80030e4:	e005      	b.n	80030f2 <mpu9255_init+0x36>
 80030e6:	68bb      	ldr	r3, [r7, #8]
 80030e8:	3301      	adds	r3, #1
 80030ea:	60bb      	str	r3, [r7, #8]
 80030ec:	687b      	ldr	r3, [r7, #4]
 80030ee:	3301      	adds	r3, #1
 80030f0:	607b      	str	r3, [r7, #4]
 80030f2:	687b      	ldr	r3, [r7, #4]
 80030f4:	4a51      	ldr	r2, [pc, #324]	; (800323c <mpu9255_init+0x180>)
 80030f6:	4293      	cmp	r3, r2
 80030f8:	ddf5      	ble.n	80030e6 <mpu9255_init+0x2a>
 80030fa:	2201      	movs	r2, #1
 80030fc:	2119      	movs	r1, #25
 80030fe:	20d0      	movs	r0, #208	; 0xd0
 8003100:	f7ff ffc0 	bl	8003084 <mpu9255_WriteByte>
 8003104:	0003      	movs	r3, r0
 8003106:	60fb      	str	r3, [r7, #12]
 8003108:	68fb      	ldr	r3, [r7, #12]
 800310a:	2b00      	cmp	r3, #0
 800310c:	d000      	beq.n	8003110 <mpu9255_init+0x54>
 800310e:	e078      	b.n	8003202 <mpu9255_init+0x146>
 8003110:	2205      	movs	r2, #5
 8003112:	211a      	movs	r1, #26
 8003114:	20d0      	movs	r0, #208	; 0xd0
 8003116:	f7ff ffb5 	bl	8003084 <mpu9255_WriteByte>
 800311a:	0003      	movs	r3, r0
 800311c:	60fb      	str	r3, [r7, #12]
 800311e:	68fb      	ldr	r3, [r7, #12]
 8003120:	2b00      	cmp	r3, #0
 8003122:	d000      	beq.n	8003126 <mpu9255_init+0x6a>
 8003124:	e06f      	b.n	8003206 <mpu9255_init+0x14a>
 8003126:	2208      	movs	r2, #8
 8003128:	211c      	movs	r1, #28
 800312a:	20d0      	movs	r0, #208	; 0xd0
 800312c:	f7ff ffaa 	bl	8003084 <mpu9255_WriteByte>
 8003130:	0003      	movs	r3, r0
 8003132:	60fb      	str	r3, [r7, #12]
 8003134:	68fb      	ldr	r3, [r7, #12]
 8003136:	2b00      	cmp	r3, #0
 8003138:	d167      	bne.n	800320a <mpu9255_init+0x14e>
 800313a:	2204      	movs	r2, #4
 800313c:	211d      	movs	r1, #29
 800313e:	20d0      	movs	r0, #208	; 0xd0
 8003140:	f7ff ffa0 	bl	8003084 <mpu9255_WriteByte>
 8003144:	0003      	movs	r3, r0
 8003146:	60fb      	str	r3, [r7, #12]
 8003148:	68fb      	ldr	r3, [r7, #12]
 800314a:	2b00      	cmp	r3, #0
 800314c:	d15f      	bne.n	800320e <mpu9255_init+0x152>
 800314e:	2200      	movs	r2, #0
 8003150:	2123      	movs	r1, #35	; 0x23
 8003152:	20d0      	movs	r0, #208	; 0xd0
 8003154:	f7ff ff96 	bl	8003084 <mpu9255_WriteByte>
 8003158:	0003      	movs	r3, r0
 800315a:	60fb      	str	r3, [r7, #12]
 800315c:	68fb      	ldr	r3, [r7, #12]
 800315e:	2b00      	cmp	r3, #0
 8003160:	d157      	bne.n	8003212 <mpu9255_init+0x156>
 8003162:	2200      	movs	r2, #0
 8003164:	2138      	movs	r1, #56	; 0x38
 8003166:	20d0      	movs	r0, #208	; 0xd0
 8003168:	f7ff ff8c 	bl	8003084 <mpu9255_WriteByte>
 800316c:	0003      	movs	r3, r0
 800316e:	60fb      	str	r3, [r7, #12]
 8003170:	68fb      	ldr	r3, [r7, #12]
 8003172:	2b00      	cmp	r3, #0
 8003174:	d14f      	bne.n	8003216 <mpu9255_init+0x15a>
 8003176:	2200      	movs	r2, #0
 8003178:	216a      	movs	r1, #106	; 0x6a
 800317a:	20d0      	movs	r0, #208	; 0xd0
 800317c:	f7ff ff82 	bl	8003084 <mpu9255_WriteByte>
 8003180:	0003      	movs	r3, r0
 8003182:	60fb      	str	r3, [r7, #12]
 8003184:	68fb      	ldr	r3, [r7, #12]
 8003186:	2b00      	cmp	r3, #0
 8003188:	d147      	bne.n	800321a <mpu9255_init+0x15e>
 800318a:	2201      	movs	r2, #1
 800318c:	216b      	movs	r1, #107	; 0x6b
 800318e:	20d0      	movs	r0, #208	; 0xd0
 8003190:	f7ff ff78 	bl	8003084 <mpu9255_WriteByte>
 8003194:	0003      	movs	r3, r0
 8003196:	60fb      	str	r3, [r7, #12]
 8003198:	68fb      	ldr	r3, [r7, #12]
 800319a:	2b00      	cmp	r3, #0
 800319c:	d13f      	bne.n	800321e <mpu9255_init+0x162>
 800319e:	2200      	movs	r2, #0
 80031a0:	216c      	movs	r1, #108	; 0x6c
 80031a2:	20d0      	movs	r0, #208	; 0xd0
 80031a4:	f7ff ff6e 	bl	8003084 <mpu9255_WriteByte>
 80031a8:	0003      	movs	r3, r0
 80031aa:	60fb      	str	r3, [r7, #12]
 80031ac:	68fb      	ldr	r3, [r7, #12]
 80031ae:	2b00      	cmp	r3, #0
 80031b0:	d137      	bne.n	8003222 <mpu9255_init+0x166>
 80031b2:	2200      	movs	r2, #0
 80031b4:	211b      	movs	r1, #27
 80031b6:	20d0      	movs	r0, #208	; 0xd0
 80031b8:	f7ff ff64 	bl	8003084 <mpu9255_WriteByte>
 80031bc:	0003      	movs	r3, r0
 80031be:	60fb      	str	r3, [r7, #12]
 80031c0:	68fb      	ldr	r3, [r7, #12]
 80031c2:	2b00      	cmp	r3, #0
 80031c4:	d12f      	bne.n	8003226 <mpu9255_init+0x16a>
 80031c6:	2202      	movs	r2, #2
 80031c8:	2137      	movs	r1, #55	; 0x37
 80031ca:	20d0      	movs	r0, #208	; 0xd0
 80031cc:	f7ff ff5a 	bl	8003084 <mpu9255_WriteByte>
 80031d0:	0003      	movs	r3, r0
 80031d2:	60fb      	str	r3, [r7, #12]
 80031d4:	68fb      	ldr	r3, [r7, #12]
 80031d6:	2b00      	cmp	r3, #0
 80031d8:	d127      	bne.n	800322a <mpu9255_init+0x16e>
 80031da:	2216      	movs	r2, #22
 80031dc:	210a      	movs	r1, #10
 80031de:	2018      	movs	r0, #24
 80031e0:	f7ff ff50 	bl	8003084 <mpu9255_WriteByte>
 80031e4:	0003      	movs	r3, r0
 80031e6:	60fb      	str	r3, [r7, #12]
 80031e8:	68fb      	ldr	r3, [r7, #12]
 80031ea:	2b00      	cmp	r3, #0
 80031ec:	d11f      	bne.n	800322e <mpu9255_init+0x172>
 80031ee:	2200      	movs	r2, #0
 80031f0:	2137      	movs	r1, #55	; 0x37
 80031f2:	20d0      	movs	r0, #208	; 0xd0
 80031f4:	f7ff ff46 	bl	8003084 <mpu9255_WriteByte>
 80031f8:	0003      	movs	r3, r0
 80031fa:	60fb      	str	r3, [r7, #12]
 80031fc:	e018      	b.n	8003230 <mpu9255_init+0x174>
 80031fe:	46c0      	nop			; (mov r8, r8)
 8003200:	e016      	b.n	8003230 <mpu9255_init+0x174>
 8003202:	46c0      	nop			; (mov r8, r8)
 8003204:	e014      	b.n	8003230 <mpu9255_init+0x174>
 8003206:	46c0      	nop			; (mov r8, r8)
 8003208:	e012      	b.n	8003230 <mpu9255_init+0x174>
 800320a:	46c0      	nop			; (mov r8, r8)
 800320c:	e010      	b.n	8003230 <mpu9255_init+0x174>
 800320e:	46c0      	nop			; (mov r8, r8)
 8003210:	e00e      	b.n	8003230 <mpu9255_init+0x174>
 8003212:	46c0      	nop			; (mov r8, r8)
 8003214:	e00c      	b.n	8003230 <mpu9255_init+0x174>
 8003216:	46c0      	nop			; (mov r8, r8)
 8003218:	e00a      	b.n	8003230 <mpu9255_init+0x174>
 800321a:	46c0      	nop			; (mov r8, r8)
 800321c:	e008      	b.n	8003230 <mpu9255_init+0x174>
 800321e:	46c0      	nop			; (mov r8, r8)
 8003220:	e006      	b.n	8003230 <mpu9255_init+0x174>
 8003222:	46c0      	nop			; (mov r8, r8)
 8003224:	e004      	b.n	8003230 <mpu9255_init+0x174>
 8003226:	46c0      	nop			; (mov r8, r8)
 8003228:	e002      	b.n	8003230 <mpu9255_init+0x174>
 800322a:	46c0      	nop			; (mov r8, r8)
 800322c:	e000      	b.n	8003230 <mpu9255_init+0x174>
 800322e:	46c0      	nop			; (mov r8, r8)
 8003230:	68fb      	ldr	r3, [r7, #12]
 8003232:	0018      	movs	r0, r3
 8003234:	46bd      	mov	sp, r7
 8003236:	b004      	add	sp, #16
 8003238:	bd80      	pop	{r7, pc}
 800323a:	46c0      	nop			; (mov r8, r8)
 800323c:	000f423f 	.word	0x000f423f

08003240 <_swapBytesI16>:
 8003240:	b580      	push	{r7, lr}
 8003242:	b084      	sub	sp, #16
 8003244:	af00      	add	r7, sp, #0
 8003246:	0002      	movs	r2, r0
 8003248:	1dbb      	adds	r3, r7, #6
 800324a:	801a      	strh	r2, [r3, #0]
 800324c:	1dbb      	adds	r3, r7, #6
 800324e:	60fb      	str	r3, [r7, #12]
 8003250:	210b      	movs	r1, #11
 8003252:	187b      	adds	r3, r7, r1
 8003254:	68fa      	ldr	r2, [r7, #12]
 8003256:	7812      	ldrb	r2, [r2, #0]
 8003258:	701a      	strb	r2, [r3, #0]
 800325a:	68fb      	ldr	r3, [r7, #12]
 800325c:	785a      	ldrb	r2, [r3, #1]
 800325e:	68fb      	ldr	r3, [r7, #12]
 8003260:	701a      	strb	r2, [r3, #0]
 8003262:	68fb      	ldr	r3, [r7, #12]
 8003264:	3301      	adds	r3, #1
 8003266:	187a      	adds	r2, r7, r1
 8003268:	7812      	ldrb	r2, [r2, #0]
 800326a:	701a      	strb	r2, [r3, #0]
 800326c:	1dbb      	adds	r3, r7, #6
 800326e:	2200      	movs	r2, #0
 8003270:	5e9b      	ldrsh	r3, [r3, r2]
 8003272:	0018      	movs	r0, r3
 8003274:	46bd      	mov	sp, r7
 8003276:	b004      	add	sp, #16
 8003278:	bd80      	pop	{r7, pc}

0800327a <mpu9255_readIMU>:
 800327a:	b590      	push	{r4, r7, lr}
 800327c:	b087      	sub	sp, #28
 800327e:	af00      	add	r7, sp, #0
 8003280:	6078      	str	r0, [r7, #4]
 8003282:	6039      	str	r1, [r7, #0]
 8003284:	2300      	movs	r3, #0
 8003286:	617b      	str	r3, [r7, #20]
 8003288:	687a      	ldr	r2, [r7, #4]
 800328a:	2306      	movs	r3, #6
 800328c:	213b      	movs	r1, #59	; 0x3b
 800328e:	20d0      	movs	r0, #208	; 0xd0
 8003290:	f7ff fe84 	bl	8002f9c <mpu9255_ReadMulti>
 8003294:	0003      	movs	r3, r0
 8003296:	617b      	str	r3, [r7, #20]
 8003298:	697b      	ldr	r3, [r7, #20]
 800329a:	2b00      	cmp	r3, #0
 800329c:	d13b      	bne.n	8003316 <mpu9255_readIMU+0x9c>
 800329e:	683a      	ldr	r2, [r7, #0]
 80032a0:	2306      	movs	r3, #6
 80032a2:	2143      	movs	r1, #67	; 0x43
 80032a4:	20d0      	movs	r0, #208	; 0xd0
 80032a6:	f7ff fe79 	bl	8002f9c <mpu9255_ReadMulti>
 80032aa:	0003      	movs	r3, r0
 80032ac:	617b      	str	r3, [r7, #20]
 80032ae:	697b      	ldr	r3, [r7, #20]
 80032b0:	2b00      	cmp	r3, #0
 80032b2:	d132      	bne.n	800331a <mpu9255_readIMU+0xa0>
 80032b4:	2300      	movs	r3, #0
 80032b6:	613b      	str	r3, [r7, #16]
 80032b8:	e011      	b.n	80032de <mpu9255_readIMU+0x64>
 80032ba:	693b      	ldr	r3, [r7, #16]
 80032bc:	005b      	lsls	r3, r3, #1
 80032be:	687a      	ldr	r2, [r7, #4]
 80032c0:	18d3      	adds	r3, r2, r3
 80032c2:	2100      	movs	r1, #0
 80032c4:	5e59      	ldrsh	r1, [r3, r1]
 80032c6:	693b      	ldr	r3, [r7, #16]
 80032c8:	005b      	lsls	r3, r3, #1
 80032ca:	687a      	ldr	r2, [r7, #4]
 80032cc:	18d4      	adds	r4, r2, r3
 80032ce:	0008      	movs	r0, r1
 80032d0:	f7ff ffb6 	bl	8003240 <_swapBytesI16>
 80032d4:	0003      	movs	r3, r0
 80032d6:	8023      	strh	r3, [r4, #0]
 80032d8:	693b      	ldr	r3, [r7, #16]
 80032da:	3301      	adds	r3, #1
 80032dc:	613b      	str	r3, [r7, #16]
 80032de:	693b      	ldr	r3, [r7, #16]
 80032e0:	2b02      	cmp	r3, #2
 80032e2:	ddea      	ble.n	80032ba <mpu9255_readIMU+0x40>
 80032e4:	2300      	movs	r3, #0
 80032e6:	60fb      	str	r3, [r7, #12]
 80032e8:	e011      	b.n	800330e <mpu9255_readIMU+0x94>
 80032ea:	68fb      	ldr	r3, [r7, #12]
 80032ec:	005b      	lsls	r3, r3, #1
 80032ee:	683a      	ldr	r2, [r7, #0]
 80032f0:	18d3      	adds	r3, r2, r3
 80032f2:	2100      	movs	r1, #0
 80032f4:	5e59      	ldrsh	r1, [r3, r1]
 80032f6:	68fb      	ldr	r3, [r7, #12]
 80032f8:	005b      	lsls	r3, r3, #1
 80032fa:	683a      	ldr	r2, [r7, #0]
 80032fc:	18d4      	adds	r4, r2, r3
 80032fe:	0008      	movs	r0, r1
 8003300:	f7ff ff9e 	bl	8003240 <_swapBytesI16>
 8003304:	0003      	movs	r3, r0
 8003306:	8023      	strh	r3, [r4, #0]
 8003308:	68fb      	ldr	r3, [r7, #12]
 800330a:	3301      	adds	r3, #1
 800330c:	60fb      	str	r3, [r7, #12]
 800330e:	68fb      	ldr	r3, [r7, #12]
 8003310:	2b02      	cmp	r3, #2
 8003312:	ddea      	ble.n	80032ea <mpu9255_readIMU+0x70>
 8003314:	e002      	b.n	800331c <mpu9255_readIMU+0xa2>
 8003316:	46c0      	nop			; (mov r8, r8)
 8003318:	e000      	b.n	800331c <mpu9255_readIMU+0xa2>
 800331a:	46c0      	nop			; (mov r8, r8)
 800331c:	697b      	ldr	r3, [r7, #20]
 800331e:	0018      	movs	r0, r3
 8003320:	46bd      	mov	sp, r7
 8003322:	b007      	add	sp, #28
 8003324:	bd90      	pop	{r4, r7, pc}
	...

08003328 <mpu9255_recalcAccel>:
 8003328:	b5b0      	push	{r4, r5, r7, lr}
 800332a:	b08a      	sub	sp, #40	; 0x28
 800332c:	af00      	add	r7, sp, #0
 800332e:	6078      	str	r0, [r7, #4]
 8003330:	6039      	str	r1, [r7, #0]
 8003332:	2508      	movs	r5, #8
 8003334:	197a      	adds	r2, r7, r5
 8003336:	2300      	movs	r3, #0
 8003338:	2400      	movs	r4, #0
 800333a:	6013      	str	r3, [r2, #0]
 800333c:	6054      	str	r4, [r2, #4]
 800333e:	197a      	adds	r2, r7, r5
 8003340:	2300      	movs	r3, #0
 8003342:	2400      	movs	r4, #0
 8003344:	6093      	str	r3, [r2, #8]
 8003346:	60d4      	str	r4, [r2, #12]
 8003348:	197a      	adds	r2, r7, r5
 800334a:	2300      	movs	r3, #0
 800334c:	2400      	movs	r4, #0
 800334e:	6113      	str	r3, [r2, #16]
 8003350:	6154      	str	r4, [r2, #20]
 8003352:	687b      	ldr	r3, [r7, #4]
 8003354:	2200      	movs	r2, #0
 8003356:	5e9b      	ldrsh	r3, [r3, r2]
 8003358:	0018      	movs	r0, r3
 800335a:	f7fe fadd 	bl	8001918 <__aeabi_i2d>
 800335e:	4a39      	ldr	r2, [pc, #228]	; (8003444 <mpu9255_recalcAccel+0x11c>)
 8003360:	4b39      	ldr	r3, [pc, #228]	; (8003448 <mpu9255_recalcAccel+0x120>)
 8003362:	f7fe f867 	bl	8001434 <__aeabi_dmul>
 8003366:	0003      	movs	r3, r0
 8003368:	000c      	movs	r4, r1
 800336a:	0018      	movs	r0, r3
 800336c:	0021      	movs	r1, r4
 800336e:	2200      	movs	r2, #0
 8003370:	4b36      	ldr	r3, [pc, #216]	; (800344c <mpu9255_recalcAccel+0x124>)
 8003372:	f7fd fd5d 	bl	8000e30 <__aeabi_ddiv>
 8003376:	0003      	movs	r3, r0
 8003378:	000c      	movs	r4, r1
 800337a:	0018      	movs	r0, r3
 800337c:	0021      	movs	r1, r4
 800337e:	0002      	movs	r2, r0
 8003380:	000b      	movs	r3, r1
 8003382:	f7fd fa39 	bl	80007f8 <__aeabi_dadd>
 8003386:	0003      	movs	r3, r0
 8003388:	000c      	movs	r4, r1
 800338a:	197a      	adds	r2, r7, r5
 800338c:	6013      	str	r3, [r2, #0]
 800338e:	6054      	str	r4, [r2, #4]
 8003390:	687b      	ldr	r3, [r7, #4]
 8003392:	3302      	adds	r3, #2
 8003394:	2200      	movs	r2, #0
 8003396:	5e9b      	ldrsh	r3, [r3, r2]
 8003398:	0018      	movs	r0, r3
 800339a:	f7fe fabd 	bl	8001918 <__aeabi_i2d>
 800339e:	4a29      	ldr	r2, [pc, #164]	; (8003444 <mpu9255_recalcAccel+0x11c>)
 80033a0:	4b29      	ldr	r3, [pc, #164]	; (8003448 <mpu9255_recalcAccel+0x120>)
 80033a2:	f7fe f847 	bl	8001434 <__aeabi_dmul>
 80033a6:	0003      	movs	r3, r0
 80033a8:	000c      	movs	r4, r1
 80033aa:	0018      	movs	r0, r3
 80033ac:	0021      	movs	r1, r4
 80033ae:	2200      	movs	r2, #0
 80033b0:	4b26      	ldr	r3, [pc, #152]	; (800344c <mpu9255_recalcAccel+0x124>)
 80033b2:	f7fd fd3d 	bl	8000e30 <__aeabi_ddiv>
 80033b6:	0003      	movs	r3, r0
 80033b8:	000c      	movs	r4, r1
 80033ba:	0018      	movs	r0, r3
 80033bc:	0021      	movs	r1, r4
 80033be:	0002      	movs	r2, r0
 80033c0:	000b      	movs	r3, r1
 80033c2:	f7fd fa19 	bl	80007f8 <__aeabi_dadd>
 80033c6:	0003      	movs	r3, r0
 80033c8:	000c      	movs	r4, r1
 80033ca:	197a      	adds	r2, r7, r5
 80033cc:	6093      	str	r3, [r2, #8]
 80033ce:	60d4      	str	r4, [r2, #12]
 80033d0:	687b      	ldr	r3, [r7, #4]
 80033d2:	3304      	adds	r3, #4
 80033d4:	2200      	movs	r2, #0
 80033d6:	5e9b      	ldrsh	r3, [r3, r2]
 80033d8:	0018      	movs	r0, r3
 80033da:	f7fe fa9d 	bl	8001918 <__aeabi_i2d>
 80033de:	4a19      	ldr	r2, [pc, #100]	; (8003444 <mpu9255_recalcAccel+0x11c>)
 80033e0:	4b19      	ldr	r3, [pc, #100]	; (8003448 <mpu9255_recalcAccel+0x120>)
 80033e2:	f7fe f827 	bl	8001434 <__aeabi_dmul>
 80033e6:	0003      	movs	r3, r0
 80033e8:	000c      	movs	r4, r1
 80033ea:	0018      	movs	r0, r3
 80033ec:	0021      	movs	r1, r4
 80033ee:	2200      	movs	r2, #0
 80033f0:	4b16      	ldr	r3, [pc, #88]	; (800344c <mpu9255_recalcAccel+0x124>)
 80033f2:	f7fd fd1d 	bl	8000e30 <__aeabi_ddiv>
 80033f6:	0003      	movs	r3, r0
 80033f8:	000c      	movs	r4, r1
 80033fa:	0018      	movs	r0, r3
 80033fc:	0021      	movs	r1, r4
 80033fe:	0002      	movs	r2, r0
 8003400:	000b      	movs	r3, r1
 8003402:	f7fd f9f9 	bl	80007f8 <__aeabi_dadd>
 8003406:	0003      	movs	r3, r0
 8003408:	000c      	movs	r4, r1
 800340a:	197a      	adds	r2, r7, r5
 800340c:	6113      	str	r3, [r2, #16]
 800340e:	6154      	str	r4, [r2, #20]
 8003410:	2300      	movs	r3, #0
 8003412:	627b      	str	r3, [r7, #36]	; 0x24
 8003414:	e00f      	b.n	8003436 <mpu9255_recalcAccel+0x10e>
 8003416:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8003418:	00db      	lsls	r3, r3, #3
 800341a:	683a      	ldr	r2, [r7, #0]
 800341c:	18d2      	adds	r2, r2, r3
 800341e:	2308      	movs	r3, #8
 8003420:	18f9      	adds	r1, r7, r3
 8003422:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8003424:	00db      	lsls	r3, r3, #3
 8003426:	18cb      	adds	r3, r1, r3
 8003428:	685c      	ldr	r4, [r3, #4]
 800342a:	681b      	ldr	r3, [r3, #0]
 800342c:	6013      	str	r3, [r2, #0]
 800342e:	6054      	str	r4, [r2, #4]
 8003430:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8003432:	3301      	adds	r3, #1
 8003434:	627b      	str	r3, [r7, #36]	; 0x24
 8003436:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8003438:	2b02      	cmp	r3, #2
 800343a:	ddec      	ble.n	8003416 <mpu9255_recalcAccel+0xee>
 800343c:	46c0      	nop			; (mov r8, r8)
 800343e:	46bd      	mov	sp, r7
 8003440:	b00a      	add	sp, #40	; 0x28
 8003442:	bdb0      	pop	{r4, r5, r7, pc}
 8003444:	374bc6a8 	.word	0x374bc6a8
 8003448:	4023a189 	.word	0x4023a189
 800344c:	40d00000 	.word	0x40d00000

08003450 <mpu9255_recalcGyro>:
 8003450:	b5b0      	push	{r4, r5, r7, lr}
 8003452:	b082      	sub	sp, #8
 8003454:	af00      	add	r7, sp, #0
 8003456:	6078      	str	r0, [r7, #4]
 8003458:	6039      	str	r1, [r7, #0]
 800345a:	687b      	ldr	r3, [r7, #4]
 800345c:	2200      	movs	r2, #0
 800345e:	5e9b      	ldrsh	r3, [r3, r2]
 8003460:	0018      	movs	r0, r3
 8003462:	f7fe fa59 	bl	8001918 <__aeabi_i2d>
 8003466:	4a24      	ldr	r2, [pc, #144]	; (80034f8 <mpu9255_recalcGyro+0xa8>)
 8003468:	4b24      	ldr	r3, [pc, #144]	; (80034fc <mpu9255_recalcGyro+0xac>)
 800346a:	f7fd ffe3 	bl	8001434 <__aeabi_dmul>
 800346e:	0003      	movs	r3, r0
 8003470:	000c      	movs	r4, r1
 8003472:	0018      	movs	r0, r3
 8003474:	0021      	movs	r1, r4
 8003476:	2200      	movs	r2, #0
 8003478:	4b21      	ldr	r3, [pc, #132]	; (8003500 <mpu9255_recalcGyro+0xb0>)
 800347a:	f7fd fcd9 	bl	8000e30 <__aeabi_ddiv>
 800347e:	0003      	movs	r3, r0
 8003480:	000c      	movs	r4, r1
 8003482:	683a      	ldr	r2, [r7, #0]
 8003484:	6013      	str	r3, [r2, #0]
 8003486:	6054      	str	r4, [r2, #4]
 8003488:	687b      	ldr	r3, [r7, #4]
 800348a:	3302      	adds	r3, #2
 800348c:	2200      	movs	r2, #0
 800348e:	5e9b      	ldrsh	r3, [r3, r2]
 8003490:	0018      	movs	r0, r3
 8003492:	f7fe fa41 	bl	8001918 <__aeabi_i2d>
 8003496:	4a18      	ldr	r2, [pc, #96]	; (80034f8 <mpu9255_recalcGyro+0xa8>)
 8003498:	4b18      	ldr	r3, [pc, #96]	; (80034fc <mpu9255_recalcGyro+0xac>)
 800349a:	f7fd ffcb 	bl	8001434 <__aeabi_dmul>
 800349e:	0003      	movs	r3, r0
 80034a0:	000c      	movs	r4, r1
 80034a2:	0018      	movs	r0, r3
 80034a4:	0021      	movs	r1, r4
 80034a6:	683b      	ldr	r3, [r7, #0]
 80034a8:	3308      	adds	r3, #8
 80034aa:	001d      	movs	r5, r3
 80034ac:	2200      	movs	r2, #0
 80034ae:	4b14      	ldr	r3, [pc, #80]	; (8003500 <mpu9255_recalcGyro+0xb0>)
 80034b0:	f7fd fcbe 	bl	8000e30 <__aeabi_ddiv>
 80034b4:	0003      	movs	r3, r0
 80034b6:	000c      	movs	r4, r1
 80034b8:	602b      	str	r3, [r5, #0]
 80034ba:	606c      	str	r4, [r5, #4]
 80034bc:	687b      	ldr	r3, [r7, #4]
 80034be:	3304      	adds	r3, #4
 80034c0:	2200      	movs	r2, #0
 80034c2:	5e9b      	ldrsh	r3, [r3, r2]
 80034c4:	0018      	movs	r0, r3
 80034c6:	f7fe fa27 	bl	8001918 <__aeabi_i2d>
 80034ca:	4a0b      	ldr	r2, [pc, #44]	; (80034f8 <mpu9255_recalcGyro+0xa8>)
 80034cc:	4b0b      	ldr	r3, [pc, #44]	; (80034fc <mpu9255_recalcGyro+0xac>)
 80034ce:	f7fd ffb1 	bl	8001434 <__aeabi_dmul>
 80034d2:	0003      	movs	r3, r0
 80034d4:	000c      	movs	r4, r1
 80034d6:	0018      	movs	r0, r3
 80034d8:	0021      	movs	r1, r4
 80034da:	683b      	ldr	r3, [r7, #0]
 80034dc:	3310      	adds	r3, #16
 80034de:	001d      	movs	r5, r3
 80034e0:	2200      	movs	r2, #0
 80034e2:	4b07      	ldr	r3, [pc, #28]	; (8003500 <mpu9255_recalcGyro+0xb0>)
 80034e4:	f7fd fca4 	bl	8000e30 <__aeabi_ddiv>
 80034e8:	0003      	movs	r3, r0
 80034ea:	000c      	movs	r4, r1
 80034ec:	602b      	str	r3, [r5, #0]
 80034ee:	606c      	str	r4, [r5, #4]
 80034f0:	46c0      	nop			; (mov r8, r8)
 80034f2:	46bd      	mov	sp, r7
 80034f4:	b002      	add	sp, #8
 80034f6:	bdb0      	pop	{r4, r5, r7, pc}
 80034f8:	54442d18 	.word	0x54442d18
 80034fc:	400921fb 	.word	0x400921fb
 8003500:	40d70700 	.word	0x40d70700

08003504 <SystemInit>:
 8003504:	b580      	push	{r7, lr}
 8003506:	af00      	add	r7, sp, #0
 8003508:	4b1a      	ldr	r3, [pc, #104]	; (8003574 <SystemInit+0x70>)
 800350a:	681a      	ldr	r2, [r3, #0]
 800350c:	4b19      	ldr	r3, [pc, #100]	; (8003574 <SystemInit+0x70>)
 800350e:	2101      	movs	r1, #1
 8003510:	430a      	orrs	r2, r1
 8003512:	601a      	str	r2, [r3, #0]
 8003514:	4b17      	ldr	r3, [pc, #92]	; (8003574 <SystemInit+0x70>)
 8003516:	685a      	ldr	r2, [r3, #4]
 8003518:	4b16      	ldr	r3, [pc, #88]	; (8003574 <SystemInit+0x70>)
 800351a:	4917      	ldr	r1, [pc, #92]	; (8003578 <SystemInit+0x74>)
 800351c:	400a      	ands	r2, r1
 800351e:	605a      	str	r2, [r3, #4]
 8003520:	4b14      	ldr	r3, [pc, #80]	; (8003574 <SystemInit+0x70>)
 8003522:	681a      	ldr	r2, [r3, #0]
 8003524:	4b13      	ldr	r3, [pc, #76]	; (8003574 <SystemInit+0x70>)
 8003526:	4915      	ldr	r1, [pc, #84]	; (800357c <SystemInit+0x78>)
 8003528:	400a      	ands	r2, r1
 800352a:	601a      	str	r2, [r3, #0]
 800352c:	4b11      	ldr	r3, [pc, #68]	; (8003574 <SystemInit+0x70>)
 800352e:	681a      	ldr	r2, [r3, #0]
 8003530:	4b10      	ldr	r3, [pc, #64]	; (8003574 <SystemInit+0x70>)
 8003532:	4913      	ldr	r1, [pc, #76]	; (8003580 <SystemInit+0x7c>)
 8003534:	400a      	ands	r2, r1
 8003536:	601a      	str	r2, [r3, #0]
 8003538:	4b0e      	ldr	r3, [pc, #56]	; (8003574 <SystemInit+0x70>)
 800353a:	685a      	ldr	r2, [r3, #4]
 800353c:	4b0d      	ldr	r3, [pc, #52]	; (8003574 <SystemInit+0x70>)
 800353e:	4911      	ldr	r1, [pc, #68]	; (8003584 <SystemInit+0x80>)
 8003540:	400a      	ands	r2, r1
 8003542:	605a      	str	r2, [r3, #4]
 8003544:	4b0b      	ldr	r3, [pc, #44]	; (8003574 <SystemInit+0x70>)
 8003546:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8003548:	4b0a      	ldr	r3, [pc, #40]	; (8003574 <SystemInit+0x70>)
 800354a:	210f      	movs	r1, #15
 800354c:	438a      	bics	r2, r1
 800354e:	62da      	str	r2, [r3, #44]	; 0x2c
 8003550:	4b08      	ldr	r3, [pc, #32]	; (8003574 <SystemInit+0x70>)
 8003552:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8003554:	4b07      	ldr	r3, [pc, #28]	; (8003574 <SystemInit+0x70>)
 8003556:	490c      	ldr	r1, [pc, #48]	; (8003588 <SystemInit+0x84>)
 8003558:	400a      	ands	r2, r1
 800355a:	631a      	str	r2, [r3, #48]	; 0x30
 800355c:	4b05      	ldr	r3, [pc, #20]	; (8003574 <SystemInit+0x70>)
 800355e:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8003560:	4b04      	ldr	r3, [pc, #16]	; (8003574 <SystemInit+0x70>)
 8003562:	2101      	movs	r1, #1
 8003564:	438a      	bics	r2, r1
 8003566:	635a      	str	r2, [r3, #52]	; 0x34
 8003568:	4b02      	ldr	r3, [pc, #8]	; (8003574 <SystemInit+0x70>)
 800356a:	2200      	movs	r2, #0
 800356c:	609a      	str	r2, [r3, #8]
 800356e:	46c0      	nop			; (mov r8, r8)
 8003570:	46bd      	mov	sp, r7
 8003572:	bd80      	pop	{r7, pc}
 8003574:	40021000 	.word	0x40021000
 8003578:	f8ffb80c 	.word	0xf8ffb80c
 800357c:	fef6ffff 	.word	0xfef6ffff
 8003580:	fffbffff 	.word	0xfffbffff
 8003584:	ffc0ffff 	.word	0xffc0ffff
 8003588:	fffffeac 	.word	0xfffffeac

0800358c <xputc>:
 800358c:	b580      	push	{r7, lr}
 800358e:	b082      	sub	sp, #8
 8003590:	af00      	add	r7, sp, #0
 8003592:	0002      	movs	r2, r0
 8003594:	1dfb      	adds	r3, r7, #7
 8003596:	701a      	strb	r2, [r3, #0]
 8003598:	1dfb      	adds	r3, r7, #7
 800359a:	781b      	ldrb	r3, [r3, #0]
 800359c:	2b0a      	cmp	r3, #10
 800359e:	d102      	bne.n	80035a6 <xputc+0x1a>
 80035a0:	200d      	movs	r0, #13
 80035a2:	f7ff fff3 	bl	800358c <xputc>
 80035a6:	4b0d      	ldr	r3, [pc, #52]	; (80035dc <xputc+0x50>)
 80035a8:	681b      	ldr	r3, [r3, #0]
 80035aa:	2b00      	cmp	r3, #0
 80035ac:	d008      	beq.n	80035c0 <xputc+0x34>
 80035ae:	4b0b      	ldr	r3, [pc, #44]	; (80035dc <xputc+0x50>)
 80035b0:	681b      	ldr	r3, [r3, #0]
 80035b2:	1c59      	adds	r1, r3, #1
 80035b4:	4a09      	ldr	r2, [pc, #36]	; (80035dc <xputc+0x50>)
 80035b6:	6011      	str	r1, [r2, #0]
 80035b8:	1dfa      	adds	r2, r7, #7
 80035ba:	7812      	ldrb	r2, [r2, #0]
 80035bc:	701a      	strb	r2, [r3, #0]
 80035be:	e009      	b.n	80035d4 <xputc+0x48>
 80035c0:	4b07      	ldr	r3, [pc, #28]	; (80035e0 <xputc+0x54>)
 80035c2:	681b      	ldr	r3, [r3, #0]
 80035c4:	2b00      	cmp	r3, #0
 80035c6:	d005      	beq.n	80035d4 <xputc+0x48>
 80035c8:	4b05      	ldr	r3, [pc, #20]	; (80035e0 <xputc+0x54>)
 80035ca:	681b      	ldr	r3, [r3, #0]
 80035cc:	1dfa      	adds	r2, r7, #7
 80035ce:	7812      	ldrb	r2, [r2, #0]
 80035d0:	0010      	movs	r0, r2
 80035d2:	4798      	blx	r3
 80035d4:	46bd      	mov	sp, r7
 80035d6:	b002      	add	sp, #8
 80035d8:	bd80      	pop	{r7, pc}
 80035da:	46c0      	nop			; (mov r8, r8)
 80035dc:	20000114 	.word	0x20000114
 80035e0:	2000011c 	.word	0x2000011c

080035e4 <xputs>:
 80035e4:	b580      	push	{r7, lr}
 80035e6:	b082      	sub	sp, #8
 80035e8:	af00      	add	r7, sp, #0
 80035ea:	6078      	str	r0, [r7, #4]
 80035ec:	e006      	b.n	80035fc <xputs+0x18>
 80035ee:	687b      	ldr	r3, [r7, #4]
 80035f0:	1c5a      	adds	r2, r3, #1
 80035f2:	607a      	str	r2, [r7, #4]
 80035f4:	781b      	ldrb	r3, [r3, #0]
 80035f6:	0018      	movs	r0, r3
 80035f8:	f7ff ffc8 	bl	800358c <xputc>
 80035fc:	687b      	ldr	r3, [r7, #4]
 80035fe:	781b      	ldrb	r3, [r3, #0]
 8003600:	2b00      	cmp	r3, #0
 8003602:	d1f4      	bne.n	80035ee <xputs+0xa>
 8003604:	46c0      	nop			; (mov r8, r8)
 8003606:	46bd      	mov	sp, r7
 8003608:	b002      	add	sp, #8
 800360a:	bd80      	pop	{r7, pc}

0800360c <xvprintf>:
 800360c:	b590      	push	{r4, r7, lr}
 800360e:	b093      	sub	sp, #76	; 0x4c
 8003610:	af00      	add	r7, sp, #0
 8003612:	6078      	str	r0, [r7, #4]
 8003614:	6039      	str	r1, [r7, #0]
 8003616:	687b      	ldr	r3, [r7, #4]
 8003618:	1c5a      	adds	r2, r3, #1
 800361a:	607a      	str	r2, [r7, #4]
 800361c:	2133      	movs	r1, #51	; 0x33
 800361e:	187a      	adds	r2, r7, r1
 8003620:	781b      	ldrb	r3, [r3, #0]
 8003622:	7013      	strb	r3, [r2, #0]
 8003624:	187b      	adds	r3, r7, r1
 8003626:	781b      	ldrb	r3, [r3, #0]
 8003628:	2b00      	cmp	r3, #0
 800362a:	d100      	bne.n	800362e <xvprintf+0x22>
 800362c:	e16f      	b.n	800390e <xvprintf+0x302>
 800362e:	2333      	movs	r3, #51	; 0x33
 8003630:	18fb      	adds	r3, r7, r3
 8003632:	781b      	ldrb	r3, [r3, #0]
 8003634:	2b25      	cmp	r3, #37	; 0x25
 8003636:	d006      	beq.n	8003646 <xvprintf+0x3a>
 8003638:	2333      	movs	r3, #51	; 0x33
 800363a:	18fb      	adds	r3, r7, r3
 800363c:	781b      	ldrb	r3, [r3, #0]
 800363e:	0018      	movs	r0, r3
 8003640:	f7ff ffa4 	bl	800358c <xputc>
 8003644:	e162      	b.n	800390c <xvprintf+0x300>
 8003646:	2300      	movs	r3, #0
 8003648:	637b      	str	r3, [r7, #52]	; 0x34
 800364a:	687b      	ldr	r3, [r7, #4]
 800364c:	1c5a      	adds	r2, r3, #1
 800364e:	607a      	str	r2, [r7, #4]
 8003650:	2133      	movs	r1, #51	; 0x33
 8003652:	187a      	adds	r2, r7, r1
 8003654:	781b      	ldrb	r3, [r3, #0]
 8003656:	7013      	strb	r3, [r2, #0]
 8003658:	187b      	adds	r3, r7, r1
 800365a:	781b      	ldrb	r3, [r3, #0]
 800365c:	2b30      	cmp	r3, #48	; 0x30
 800365e:	d109      	bne.n	8003674 <xvprintf+0x68>
 8003660:	2301      	movs	r3, #1
 8003662:	637b      	str	r3, [r7, #52]	; 0x34
 8003664:	687b      	ldr	r3, [r7, #4]
 8003666:	1c5a      	adds	r2, r3, #1
 8003668:	607a      	str	r2, [r7, #4]
 800366a:	2233      	movs	r2, #51	; 0x33
 800366c:	18ba      	adds	r2, r7, r2
 800366e:	781b      	ldrb	r3, [r3, #0]
 8003670:	7013      	strb	r3, [r2, #0]
 8003672:	e00d      	b.n	8003690 <xvprintf+0x84>
 8003674:	2333      	movs	r3, #51	; 0x33
 8003676:	18fb      	adds	r3, r7, r3
 8003678:	781b      	ldrb	r3, [r3, #0]
 800367a:	2b2d      	cmp	r3, #45	; 0x2d
 800367c:	d108      	bne.n	8003690 <xvprintf+0x84>
 800367e:	2302      	movs	r3, #2
 8003680:	637b      	str	r3, [r7, #52]	; 0x34
 8003682:	687b      	ldr	r3, [r7, #4]
 8003684:	1c5a      	adds	r2, r3, #1
 8003686:	607a      	str	r2, [r7, #4]
 8003688:	2233      	movs	r2, #51	; 0x33
 800368a:	18ba      	adds	r2, r7, r2
 800368c:	781b      	ldrb	r3, [r3, #0]
 800368e:	7013      	strb	r3, [r2, #0]
 8003690:	2300      	movs	r3, #0
 8003692:	63bb      	str	r3, [r7, #56]	; 0x38
 8003694:	e011      	b.n	80036ba <xvprintf+0xae>
 8003696:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8003698:	0013      	movs	r3, r2
 800369a:	009b      	lsls	r3, r3, #2
 800369c:	189b      	adds	r3, r3, r2
 800369e:	005b      	lsls	r3, r3, #1
 80036a0:	001a      	movs	r2, r3
 80036a2:	2133      	movs	r1, #51	; 0x33
 80036a4:	187b      	adds	r3, r7, r1
 80036a6:	781b      	ldrb	r3, [r3, #0]
 80036a8:	18d3      	adds	r3, r2, r3
 80036aa:	3b30      	subs	r3, #48	; 0x30
 80036ac:	63bb      	str	r3, [r7, #56]	; 0x38
 80036ae:	687b      	ldr	r3, [r7, #4]
 80036b0:	1c5a      	adds	r2, r3, #1
 80036b2:	607a      	str	r2, [r7, #4]
 80036b4:	187a      	adds	r2, r7, r1
 80036b6:	781b      	ldrb	r3, [r3, #0]
 80036b8:	7013      	strb	r3, [r2, #0]
 80036ba:	2333      	movs	r3, #51	; 0x33
 80036bc:	18fb      	adds	r3, r7, r3
 80036be:	781b      	ldrb	r3, [r3, #0]
 80036c0:	2b2f      	cmp	r3, #47	; 0x2f
 80036c2:	d904      	bls.n	80036ce <xvprintf+0xc2>
 80036c4:	2333      	movs	r3, #51	; 0x33
 80036c6:	18fb      	adds	r3, r7, r3
 80036c8:	781b      	ldrb	r3, [r3, #0]
 80036ca:	2b39      	cmp	r3, #57	; 0x39
 80036cc:	d9e3      	bls.n	8003696 <xvprintf+0x8a>
 80036ce:	2333      	movs	r3, #51	; 0x33
 80036d0:	18fb      	adds	r3, r7, r3
 80036d2:	781b      	ldrb	r3, [r3, #0]
 80036d4:	2b6c      	cmp	r3, #108	; 0x6c
 80036d6:	d004      	beq.n	80036e2 <xvprintf+0xd6>
 80036d8:	2333      	movs	r3, #51	; 0x33
 80036da:	18fb      	adds	r3, r7, r3
 80036dc:	781b      	ldrb	r3, [r3, #0]
 80036de:	2b4c      	cmp	r3, #76	; 0x4c
 80036e0:	d10a      	bne.n	80036f8 <xvprintf+0xec>
 80036e2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80036e4:	2204      	movs	r2, #4
 80036e6:	4313      	orrs	r3, r2
 80036e8:	637b      	str	r3, [r7, #52]	; 0x34
 80036ea:	687b      	ldr	r3, [r7, #4]
 80036ec:	1c5a      	adds	r2, r3, #1
 80036ee:	607a      	str	r2, [r7, #4]
 80036f0:	2233      	movs	r2, #51	; 0x33
 80036f2:	18ba      	adds	r2, r7, r2
 80036f4:	781b      	ldrb	r3, [r3, #0]
 80036f6:	7013      	strb	r3, [r2, #0]
 80036f8:	2333      	movs	r3, #51	; 0x33
 80036fa:	18fb      	adds	r3, r7, r3
 80036fc:	781b      	ldrb	r3, [r3, #0]
 80036fe:	2b00      	cmp	r3, #0
 8003700:	d100      	bne.n	8003704 <xvprintf+0xf8>
 8003702:	e106      	b.n	8003912 <xvprintf+0x306>
 8003704:	2132      	movs	r1, #50	; 0x32
 8003706:	187b      	adds	r3, r7, r1
 8003708:	2233      	movs	r2, #51	; 0x33
 800370a:	18ba      	adds	r2, r7, r2
 800370c:	7812      	ldrb	r2, [r2, #0]
 800370e:	701a      	strb	r2, [r3, #0]
 8003710:	187b      	adds	r3, r7, r1
 8003712:	781b      	ldrb	r3, [r3, #0]
 8003714:	2b60      	cmp	r3, #96	; 0x60
 8003716:	d905      	bls.n	8003724 <xvprintf+0x118>
 8003718:	2232      	movs	r2, #50	; 0x32
 800371a:	18bb      	adds	r3, r7, r2
 800371c:	18ba      	adds	r2, r7, r2
 800371e:	7812      	ldrb	r2, [r2, #0]
 8003720:	3a20      	subs	r2, #32
 8003722:	701a      	strb	r2, [r3, #0]
 8003724:	2332      	movs	r3, #50	; 0x32
 8003726:	18fb      	adds	r3, r7, r3
 8003728:	781b      	ldrb	r3, [r3, #0]
 800372a:	3b42      	subs	r3, #66	; 0x42
 800372c:	2b16      	cmp	r3, #22
 800372e:	d847      	bhi.n	80037c0 <xvprintf+0x1b4>
 8003730:	009a      	lsls	r2, r3, #2
 8003732:	4b7a      	ldr	r3, [pc, #488]	; (800391c <xvprintf+0x310>)
 8003734:	18d3      	adds	r3, r2, r3
 8003736:	681b      	ldr	r3, [r3, #0]
 8003738:	469f      	mov	pc, r3
 800373a:	683b      	ldr	r3, [r7, #0]
 800373c:	1d1a      	adds	r2, r3, #4
 800373e:	603a      	str	r2, [r7, #0]
 8003740:	681b      	ldr	r3, [r3, #0]
 8003742:	627b      	str	r3, [r7, #36]	; 0x24
 8003744:	2300      	movs	r3, #0
 8003746:	63fb      	str	r3, [r7, #60]	; 0x3c
 8003748:	e002      	b.n	8003750 <xvprintf+0x144>
 800374a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800374c:	3301      	adds	r3, #1
 800374e:	63fb      	str	r3, [r7, #60]	; 0x3c
 8003750:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8003752:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8003754:	18d3      	adds	r3, r2, r3
 8003756:	781b      	ldrb	r3, [r3, #0]
 8003758:	2b00      	cmp	r3, #0
 800375a:	d1f6      	bne.n	800374a <xvprintf+0x13e>
 800375c:	e002      	b.n	8003764 <xvprintf+0x158>
 800375e:	2020      	movs	r0, #32
 8003760:	f7ff ff14 	bl	800358c <xputc>
 8003764:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8003766:	2202      	movs	r2, #2
 8003768:	4013      	ands	r3, r2
 800376a:	d105      	bne.n	8003778 <xvprintf+0x16c>
 800376c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800376e:	1c5a      	adds	r2, r3, #1
 8003770:	63fa      	str	r2, [r7, #60]	; 0x3c
 8003772:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8003774:	429a      	cmp	r2, r3
 8003776:	d8f2      	bhi.n	800375e <xvprintf+0x152>
 8003778:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800377a:	0018      	movs	r0, r3
 800377c:	f7ff ff32 	bl	80035e4 <xputs>
 8003780:	e002      	b.n	8003788 <xvprintf+0x17c>
 8003782:	2020      	movs	r0, #32
 8003784:	f7ff ff02 	bl	800358c <xputc>
 8003788:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800378a:	1c5a      	adds	r2, r3, #1
 800378c:	63fa      	str	r2, [r7, #60]	; 0x3c
 800378e:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8003790:	429a      	cmp	r2, r3
 8003792:	d8f6      	bhi.n	8003782 <xvprintf+0x176>
 8003794:	e0ba      	b.n	800390c <xvprintf+0x300>
 8003796:	683b      	ldr	r3, [r7, #0]
 8003798:	1d1a      	adds	r2, r3, #4
 800379a:	603a      	str	r2, [r7, #0]
 800379c:	681b      	ldr	r3, [r3, #0]
 800379e:	b2db      	uxtb	r3, r3
 80037a0:	0018      	movs	r0, r3
 80037a2:	f7ff fef3 	bl	800358c <xputc>
 80037a6:	e0b1      	b.n	800390c <xvprintf+0x300>
 80037a8:	2302      	movs	r3, #2
 80037aa:	647b      	str	r3, [r7, #68]	; 0x44
 80037ac:	e00f      	b.n	80037ce <xvprintf+0x1c2>
 80037ae:	2308      	movs	r3, #8
 80037b0:	647b      	str	r3, [r7, #68]	; 0x44
 80037b2:	e00c      	b.n	80037ce <xvprintf+0x1c2>
 80037b4:	230a      	movs	r3, #10
 80037b6:	647b      	str	r3, [r7, #68]	; 0x44
 80037b8:	e009      	b.n	80037ce <xvprintf+0x1c2>
 80037ba:	2310      	movs	r3, #16
 80037bc:	647b      	str	r3, [r7, #68]	; 0x44
 80037be:	e006      	b.n	80037ce <xvprintf+0x1c2>
 80037c0:	2333      	movs	r3, #51	; 0x33
 80037c2:	18fb      	adds	r3, r7, r3
 80037c4:	781b      	ldrb	r3, [r3, #0]
 80037c6:	0018      	movs	r0, r3
 80037c8:	f7ff fee0 	bl	800358c <xputc>
 80037cc:	e09e      	b.n	800390c <xvprintf+0x300>
 80037ce:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80037d0:	2204      	movs	r2, #4
 80037d2:	4013      	ands	r3, r2
 80037d4:	d005      	beq.n	80037e2 <xvprintf+0x1d6>
 80037d6:	683b      	ldr	r3, [r7, #0]
 80037d8:	1d1a      	adds	r2, r3, #4
 80037da:	603a      	str	r2, [r7, #0]
 80037dc:	681b      	ldr	r3, [r3, #0]
 80037de:	62fb      	str	r3, [r7, #44]	; 0x2c
 80037e0:	e00e      	b.n	8003800 <xvprintf+0x1f4>
 80037e2:	2332      	movs	r3, #50	; 0x32
 80037e4:	18fb      	adds	r3, r7, r3
 80037e6:	781b      	ldrb	r3, [r3, #0]
 80037e8:	2b44      	cmp	r3, #68	; 0x44
 80037ea:	d104      	bne.n	80037f6 <xvprintf+0x1ea>
 80037ec:	683b      	ldr	r3, [r7, #0]
 80037ee:	1d1a      	adds	r2, r3, #4
 80037f0:	603a      	str	r2, [r7, #0]
 80037f2:	681b      	ldr	r3, [r3, #0]
 80037f4:	e003      	b.n	80037fe <xvprintf+0x1f2>
 80037f6:	683b      	ldr	r3, [r7, #0]
 80037f8:	1d1a      	adds	r2, r3, #4
 80037fa:	603a      	str	r2, [r7, #0]
 80037fc:	681b      	ldr	r3, [r3, #0]
 80037fe:	62fb      	str	r3, [r7, #44]	; 0x2c
 8003800:	2332      	movs	r3, #50	; 0x32
 8003802:	18fb      	adds	r3, r7, r3
 8003804:	781b      	ldrb	r3, [r3, #0]
 8003806:	2b44      	cmp	r3, #68	; 0x44
 8003808:	d109      	bne.n	800381e <xvprintf+0x212>
 800380a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800380c:	2b00      	cmp	r3, #0
 800380e:	da06      	bge.n	800381e <xvprintf+0x212>
 8003810:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8003812:	425b      	negs	r3, r3
 8003814:	62fb      	str	r3, [r7, #44]	; 0x2c
 8003816:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8003818:	2210      	movs	r2, #16
 800381a:	4313      	orrs	r3, r2
 800381c:	637b      	str	r3, [r7, #52]	; 0x34
 800381e:	2300      	movs	r3, #0
 8003820:	643b      	str	r3, [r7, #64]	; 0x40
 8003822:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8003824:	62bb      	str	r3, [r7, #40]	; 0x28
 8003826:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8003828:	6c79      	ldr	r1, [r7, #68]	; 0x44
 800382a:	0018      	movs	r0, r3
 800382c:	f7fc fcf2 	bl	8000214 <__aeabi_uidivmod>
 8003830:	000b      	movs	r3, r1
 8003832:	001a      	movs	r2, r3
 8003834:	2432      	movs	r4, #50	; 0x32
 8003836:	193b      	adds	r3, r7, r4
 8003838:	701a      	strb	r2, [r3, #0]
 800383a:	6c79      	ldr	r1, [r7, #68]	; 0x44
 800383c:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 800383e:	f7fc fc63 	bl	8000108 <__udivsi3>
 8003842:	0003      	movs	r3, r0
 8003844:	62bb      	str	r3, [r7, #40]	; 0x28
 8003846:	193b      	adds	r3, r7, r4
 8003848:	781b      	ldrb	r3, [r3, #0]
 800384a:	2b09      	cmp	r3, #9
 800384c:	d90d      	bls.n	800386a <xvprintf+0x25e>
 800384e:	2333      	movs	r3, #51	; 0x33
 8003850:	18fb      	adds	r3, r7, r3
 8003852:	781b      	ldrb	r3, [r3, #0]
 8003854:	2b78      	cmp	r3, #120	; 0x78
 8003856:	d101      	bne.n	800385c <xvprintf+0x250>
 8003858:	2327      	movs	r3, #39	; 0x27
 800385a:	e000      	b.n	800385e <xvprintf+0x252>
 800385c:	2307      	movs	r3, #7
 800385e:	2132      	movs	r1, #50	; 0x32
 8003860:	187a      	adds	r2, r7, r1
 8003862:	1879      	adds	r1, r7, r1
 8003864:	7809      	ldrb	r1, [r1, #0]
 8003866:	185b      	adds	r3, r3, r1
 8003868:	7013      	strb	r3, [r2, #0]
 800386a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800386c:	1c5a      	adds	r2, r3, #1
 800386e:	643a      	str	r2, [r7, #64]	; 0x40
 8003870:	2232      	movs	r2, #50	; 0x32
 8003872:	18ba      	adds	r2, r7, r2
 8003874:	7812      	ldrb	r2, [r2, #0]
 8003876:	3230      	adds	r2, #48	; 0x30
 8003878:	b2d1      	uxtb	r1, r2
 800387a:	220c      	movs	r2, #12
 800387c:	18ba      	adds	r2, r7, r2
 800387e:	54d1      	strb	r1, [r2, r3]
 8003880:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8003882:	2b00      	cmp	r3, #0
 8003884:	d002      	beq.n	800388c <xvprintf+0x280>
 8003886:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003888:	2b17      	cmp	r3, #23
 800388a:	d9cc      	bls.n	8003826 <xvprintf+0x21a>
 800388c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800388e:	2210      	movs	r2, #16
 8003890:	4013      	ands	r3, r2
 8003892:	d006      	beq.n	80038a2 <xvprintf+0x296>
 8003894:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003896:	1c5a      	adds	r2, r3, #1
 8003898:	643a      	str	r2, [r7, #64]	; 0x40
 800389a:	220c      	movs	r2, #12
 800389c:	18ba      	adds	r2, r7, r2
 800389e:	212d      	movs	r1, #45	; 0x2d
 80038a0:	54d1      	strb	r1, [r2, r3]
 80038a2:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80038a4:	63fb      	str	r3, [r7, #60]	; 0x3c
 80038a6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80038a8:	2201      	movs	r2, #1
 80038aa:	4013      	ands	r3, r2
 80038ac:	d001      	beq.n	80038b2 <xvprintf+0x2a6>
 80038ae:	2230      	movs	r2, #48	; 0x30
 80038b0:	e000      	b.n	80038b4 <xvprintf+0x2a8>
 80038b2:	2220      	movs	r2, #32
 80038b4:	2332      	movs	r3, #50	; 0x32
 80038b6:	18fb      	adds	r3, r7, r3
 80038b8:	701a      	strb	r2, [r3, #0]
 80038ba:	e005      	b.n	80038c8 <xvprintf+0x2bc>
 80038bc:	2332      	movs	r3, #50	; 0x32
 80038be:	18fb      	adds	r3, r7, r3
 80038c0:	781b      	ldrb	r3, [r3, #0]
 80038c2:	0018      	movs	r0, r3
 80038c4:	f7ff fe62 	bl	800358c <xputc>
 80038c8:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80038ca:	2202      	movs	r2, #2
 80038cc:	4013      	ands	r3, r2
 80038ce:	d105      	bne.n	80038dc <xvprintf+0x2d0>
 80038d0:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80038d2:	1c5a      	adds	r2, r3, #1
 80038d4:	63fa      	str	r2, [r7, #60]	; 0x3c
 80038d6:	6bba      	ldr	r2, [r7, #56]	; 0x38
 80038d8:	429a      	cmp	r2, r3
 80038da:	d8ef      	bhi.n	80038bc <xvprintf+0x2b0>
 80038dc:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80038de:	3b01      	subs	r3, #1
 80038e0:	643b      	str	r3, [r7, #64]	; 0x40
 80038e2:	230c      	movs	r3, #12
 80038e4:	18fa      	adds	r2, r7, r3
 80038e6:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80038e8:	18d3      	adds	r3, r2, r3
 80038ea:	781b      	ldrb	r3, [r3, #0]
 80038ec:	0018      	movs	r0, r3
 80038ee:	f7ff fe4d 	bl	800358c <xputc>
 80038f2:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80038f4:	2b00      	cmp	r3, #0
 80038f6:	d1f1      	bne.n	80038dc <xvprintf+0x2d0>
 80038f8:	e002      	b.n	8003900 <xvprintf+0x2f4>
 80038fa:	2020      	movs	r0, #32
 80038fc:	f7ff fe46 	bl	800358c <xputc>
 8003900:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8003902:	1c5a      	adds	r2, r3, #1
 8003904:	63fa      	str	r2, [r7, #60]	; 0x3c
 8003906:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8003908:	429a      	cmp	r2, r3
 800390a:	d8f6      	bhi.n	80038fa <xvprintf+0x2ee>
 800390c:	e683      	b.n	8003616 <xvprintf+0xa>
 800390e:	46c0      	nop			; (mov r8, r8)
 8003910:	e000      	b.n	8003914 <xvprintf+0x308>
 8003912:	46c0      	nop			; (mov r8, r8)
 8003914:	46c0      	nop			; (mov r8, r8)
 8003916:	46bd      	mov	sp, r7
 8003918:	b013      	add	sp, #76	; 0x4c
 800391a:	bd90      	pop	{r4, r7, pc}
 800391c:	08003af0 	.word	0x08003af0

08003920 <xprintf>:
 8003920:	b40f      	push	{r0, r1, r2, r3}
 8003922:	b580      	push	{r7, lr}
 8003924:	b082      	sub	sp, #8
 8003926:	af00      	add	r7, sp, #0
 8003928:	2314      	movs	r3, #20
 800392a:	18fb      	adds	r3, r7, r3
 800392c:	607b      	str	r3, [r7, #4]
 800392e:	687a      	ldr	r2, [r7, #4]
 8003930:	693b      	ldr	r3, [r7, #16]
 8003932:	0011      	movs	r1, r2
 8003934:	0018      	movs	r0, r3
 8003936:	f7ff fe69 	bl	800360c <xvprintf>
 800393a:	46c0      	nop			; (mov r8, r8)
 800393c:	46bd      	mov	sp, r7
 800393e:	b002      	add	sp, #8
 8003940:	bc80      	pop	{r7}
 8003942:	bc08      	pop	{r3}
 8003944:	b004      	add	sp, #16
 8003946:	4718      	bx	r3

08003948 <NMI_Handler>:
 8003948:	b580      	push	{r7, lr}
 800394a:	af00      	add	r7, sp, #0
 800394c:	46c0      	nop			; (mov r8, r8)
 800394e:	46bd      	mov	sp, r7
 8003950:	bd80      	pop	{r7, pc}

08003952 <HardFault_Handler>:
 8003952:	b580      	push	{r7, lr}
 8003954:	af00      	add	r7, sp, #0
 8003956:	e7fe      	b.n	8003956 <HardFault_Handler+0x4>

08003958 <SVC_Handler>:
 8003958:	b580      	push	{r7, lr}
 800395a:	af00      	add	r7, sp, #0
 800395c:	46c0      	nop			; (mov r8, r8)
 800395e:	46bd      	mov	sp, r7
 8003960:	bd80      	pop	{r7, pc}

08003962 <PendSV_Handler>:
 8003962:	b580      	push	{r7, lr}
 8003964:	af00      	add	r7, sp, #0
 8003966:	46c0      	nop			; (mov r8, r8)
 8003968:	46bd      	mov	sp, r7
 800396a:	bd80      	pop	{r7, pc}

0800396c <__libc_init_array>:
 800396c:	b570      	push	{r4, r5, r6, lr}
 800396e:	2600      	movs	r6, #0
 8003970:	4d0c      	ldr	r5, [pc, #48]	; (80039a4 <__libc_init_array+0x38>)
 8003972:	4c0d      	ldr	r4, [pc, #52]	; (80039a8 <__libc_init_array+0x3c>)
 8003974:	1b64      	subs	r4, r4, r5
 8003976:	10a4      	asrs	r4, r4, #2
 8003978:	42a6      	cmp	r6, r4
 800397a:	d109      	bne.n	8003990 <__libc_init_array+0x24>
 800397c:	2600      	movs	r6, #0
 800397e:	f000 f821 	bl	80039c4 <_init>
 8003982:	4d0a      	ldr	r5, [pc, #40]	; (80039ac <__libc_init_array+0x40>)
 8003984:	4c0a      	ldr	r4, [pc, #40]	; (80039b0 <__libc_init_array+0x44>)
 8003986:	1b64      	subs	r4, r4, r5
 8003988:	10a4      	asrs	r4, r4, #2
 800398a:	42a6      	cmp	r6, r4
 800398c:	d105      	bne.n	800399a <__libc_init_array+0x2e>
 800398e:	bd70      	pop	{r4, r5, r6, pc}
 8003990:	00b3      	lsls	r3, r6, #2
 8003992:	58eb      	ldr	r3, [r5, r3]
 8003994:	4798      	blx	r3
 8003996:	3601      	adds	r6, #1
 8003998:	e7ee      	b.n	8003978 <__libc_init_array+0xc>
 800399a:	00b3      	lsls	r3, r6, #2
 800399c:	58eb      	ldr	r3, [r5, r3]
 800399e:	4798      	blx	r3
 80039a0:	3601      	adds	r6, #1
 80039a2:	e7f2      	b.n	800398a <__libc_init_array+0x1e>
 80039a4:	08003b4c 	.word	0x08003b4c
 80039a8:	08003b4c 	.word	0x08003b4c
 80039ac:	08003b4c 	.word	0x08003b4c
 80039b0:	08003b50 	.word	0x08003b50

080039b4 <memset>:
 80039b4:	0003      	movs	r3, r0
 80039b6:	1812      	adds	r2, r2, r0
 80039b8:	4293      	cmp	r3, r2
 80039ba:	d100      	bne.n	80039be <memset+0xa>
 80039bc:	4770      	bx	lr
 80039be:	7019      	strb	r1, [r3, #0]
 80039c0:	3301      	adds	r3, #1
 80039c2:	e7f9      	b.n	80039b8 <memset+0x4>

080039c4 <_init>:
 80039c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80039c6:	46c0      	nop			; (mov r8, r8)
 80039c8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80039ca:	bc08      	pop	{r3}
 80039cc:	469e      	mov	lr, r3
 80039ce:	4770      	bx	lr

080039d0 <_fini>:
 80039d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80039d2:	46c0      	nop			; (mov r8, r8)
 80039d4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80039d6:	bc08      	pop	{r3}
 80039d8:	469e      	mov	lr, r3
 80039da:	4770      	bx	lr
