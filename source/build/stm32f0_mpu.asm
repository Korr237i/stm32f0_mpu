
build/stm32f0_mpu.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             0000358c  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000170  0800364c  0800364c  0001364c  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000004  080037bc  080037bc  000137bc  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  080037c0  080037c0  000137c0  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000004  20000000  080037c4  00020000  2**2  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000118  20000008  080037c8  00020008  2**3  ALLOC
  7 ._user_heap_stack 00000600  20000120  080037c8  00020120  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020004  2**0  CONTENTS, READONLY
  9 .debug_info       00004ab6  00000000  00000000  0002002c  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     00000e74  00000000  00000000  00024ae2  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        00001572  00000000  00000000  00025956  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    00000408  00000000  00000000  00026ec8  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     00000378  00000000  00000000  000272d0  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       0000153e  00000000  00000000  00027648  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        000013eb  00000000  00000000  00028b86  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          0000007f  00000000  00000000  00029f71  2**0  CONTENTS, READONLY
 17 .debug_frame      00000efc  00000000  00000000  00029ff0  2**2  CONTENTS, READONLY, DEBUGGING

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
 80000e4:	08003634 	.word	0x08003634

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
 8000104:	08003634 	.word	0x08003634

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
 800076c:	08003660 	.word	0x08003660
 8000770:	f7ffffff 	.word	0xf7ffffff
 8000774:	080036a0 	.word	0x080036a0

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
 80010b4:	080036e0 	.word	0x080036e0
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
 80017dc:	08003720 	.word	0x08003720
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
 80019f2:	f001 fbbf 	bl	8003174 <SystemInit>
 80019f6:	f001 fdf1 	bl	80035dc <__libc_init_array>
 80019fa:	f000 fa91 	bl	8001f20 <main>

080019fe <LoopForever>:
 80019fe:	e7fe      	b.n	80019fe <LoopForever>
 8001a00:	20002000 	.word	0x20002000
 8001a04:	20000000 	.word	0x20000000
 8001a08:	20000004 	.word	0x20000004
 8001a0c:	080037c4 	.word	0x080037c4
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
 8001ba8:	b590      	push	{r4, r7, lr}
 8001baa:	b085      	sub	sp, #20
 8001bac:	af00      	add	r7, sp, #0
 8001bae:	6078      	str	r0, [r7, #4]
 8001bb0:	687b      	ldr	r3, [r7, #4]
 8001bb2:	22ff      	movs	r2, #255	; 0xff
 8001bb4:	701a      	strb	r2, [r3, #0]
 8001bb6:	687b      	ldr	r3, [r7, #4]
 8001bb8:	22fe      	movs	r2, #254	; 0xfe
 8001bba:	705a      	strb	r2, [r3, #1]
 8001bbc:	4b3e      	ldr	r3, [pc, #248]	; (8001cb8 <stateMsg_fill+0x110>)
 8001bbe:	681b      	ldr	r3, [r3, #0]
 8001bc0:	001a      	movs	r2, r3
 8001bc2:	687b      	ldr	r3, [r7, #4]
 8001bc4:	605a      	str	r2, [r3, #4]
 8001bc6:	f000 f981 	bl	8001ecc <getTime_s>
 8001bca:	1c02      	adds	r2, r0, #0
 8001bcc:	687b      	ldr	r3, [r7, #4]
 8001bce:	609a      	str	r2, [r3, #8]
 8001bd0:	230f      	movs	r3, #15
 8001bd2:	18fb      	adds	r3, r7, r3
 8001bd4:	2200      	movs	r2, #0
 8001bd6:	701a      	strb	r2, [r3, #0]
 8001bd8:	e034      	b.n	8001c44 <stateMsg_fill+0x9c>
 8001bda:	200f      	movs	r0, #15
 8001bdc:	183b      	adds	r3, r7, r0
 8001bde:	781b      	ldrb	r3, [r3, #0]
 8001be0:	183a      	adds	r2, r7, r0
 8001be2:	7812      	ldrb	r2, [r2, #0]
 8001be4:	4935      	ldr	r1, [pc, #212]	; (8001cbc <stateMsg_fill+0x114>)
 8001be6:	00db      	lsls	r3, r3, #3
 8001be8:	18cb      	adds	r3, r1, r3
 8001bea:	685c      	ldr	r4, [r3, #4]
 8001bec:	681b      	ldr	r3, [r3, #0]
 8001bee:	6879      	ldr	r1, [r7, #4]
 8001bf0:	3202      	adds	r2, #2
 8001bf2:	00d2      	lsls	r2, r2, #3
 8001bf4:	188a      	adds	r2, r1, r2
 8001bf6:	6013      	str	r3, [r2, #0]
 8001bf8:	6054      	str	r4, [r2, #4]
 8001bfa:	183b      	adds	r3, r7, r0
 8001bfc:	781b      	ldrb	r3, [r3, #0]
 8001bfe:	183a      	adds	r2, r7, r0
 8001c00:	7812      	ldrb	r2, [r2, #0]
 8001c02:	492e      	ldr	r1, [pc, #184]	; (8001cbc <stateMsg_fill+0x114>)
 8001c04:	3303      	adds	r3, #3
 8001c06:	00db      	lsls	r3, r3, #3
 8001c08:	18cb      	adds	r3, r1, r3
 8001c0a:	685c      	ldr	r4, [r3, #4]
 8001c0c:	681b      	ldr	r3, [r3, #0]
 8001c0e:	6879      	ldr	r1, [r7, #4]
 8001c10:	3205      	adds	r2, #5
 8001c12:	00d2      	lsls	r2, r2, #3
 8001c14:	188a      	adds	r2, r1, r2
 8001c16:	6013      	str	r3, [r2, #0]
 8001c18:	6054      	str	r4, [r2, #4]
 8001c1a:	183b      	adds	r3, r7, r0
 8001c1c:	781b      	ldrb	r3, [r3, #0]
 8001c1e:	183a      	adds	r2, r7, r0
 8001c20:	7812      	ldrb	r2, [r2, #0]
 8001c22:	4926      	ldr	r1, [pc, #152]	; (8001cbc <stateMsg_fill+0x114>)
 8001c24:	3306      	adds	r3, #6
 8001c26:	00db      	lsls	r3, r3, #3
 8001c28:	18cb      	adds	r3, r1, r3
 8001c2a:	685c      	ldr	r4, [r3, #4]
 8001c2c:	681b      	ldr	r3, [r3, #0]
 8001c2e:	6879      	ldr	r1, [r7, #4]
 8001c30:	3208      	adds	r2, #8
 8001c32:	00d2      	lsls	r2, r2, #3
 8001c34:	188a      	adds	r2, r1, r2
 8001c36:	6013      	str	r3, [r2, #0]
 8001c38:	6054      	str	r4, [r2, #4]
 8001c3a:	183b      	adds	r3, r7, r0
 8001c3c:	781a      	ldrb	r2, [r3, #0]
 8001c3e:	183b      	adds	r3, r7, r0
 8001c40:	3201      	adds	r2, #1
 8001c42:	701a      	strb	r2, [r3, #0]
 8001c44:	230f      	movs	r3, #15
 8001c46:	18fb      	adds	r3, r7, r3
 8001c48:	781b      	ldrb	r3, [r3, #0]
 8001c4a:	2b02      	cmp	r3, #2
 8001c4c:	d9c5      	bls.n	8001bda <stateMsg_fill+0x32>
 8001c4e:	230e      	movs	r3, #14
 8001c50:	18fb      	adds	r3, r7, r3
 8001c52:	2200      	movs	r2, #0
 8001c54:	701a      	strb	r2, [r3, #0]
 8001c56:	e015      	b.n	8001c84 <stateMsg_fill+0xdc>
 8001c58:	200e      	movs	r0, #14
 8001c5a:	183b      	adds	r3, r7, r0
 8001c5c:	781b      	ldrb	r3, [r3, #0]
 8001c5e:	183a      	adds	r2, r7, r0
 8001c60:	7812      	ldrb	r2, [r2, #0]
 8001c62:	4916      	ldr	r1, [pc, #88]	; (8001cbc <stateMsg_fill+0x114>)
 8001c64:	330f      	adds	r3, #15
 8001c66:	00db      	lsls	r3, r3, #3
 8001c68:	18cb      	adds	r3, r1, r3
 8001c6a:	685c      	ldr	r4, [r3, #4]
 8001c6c:	681b      	ldr	r3, [r3, #0]
 8001c6e:	6879      	ldr	r1, [r7, #4]
 8001c70:	320b      	adds	r2, #11
 8001c72:	00d2      	lsls	r2, r2, #3
 8001c74:	188a      	adds	r2, r1, r2
 8001c76:	6013      	str	r3, [r2, #0]
 8001c78:	6054      	str	r4, [r2, #4]
 8001c7a:	183b      	adds	r3, r7, r0
 8001c7c:	781a      	ldrb	r2, [r3, #0]
 8001c7e:	183b      	adds	r3, r7, r0
 8001c80:	3201      	adds	r2, #1
 8001c82:	701a      	strb	r2, [r3, #0]
 8001c84:	230e      	movs	r3, #14
 8001c86:	18fb      	adds	r3, r7, r3
 8001c88:	781b      	ldrb	r3, [r3, #0]
 8001c8a:	2b03      	cmp	r3, #3
 8001c8c:	d9e4      	bls.n	8001c58 <stateMsg_fill+0xb0>
 8001c8e:	687b      	ldr	r3, [r7, #4]
 8001c90:	2200      	movs	r2, #0
 8001c92:	679a      	str	r2, [r3, #120]	; 0x78
 8001c94:	687b      	ldr	r3, [r7, #4]
 8001c96:	2180      	movs	r1, #128	; 0x80
 8001c98:	0018      	movs	r0, r3
 8001c9a:	f7ff fef9 	bl	8001a90 <crc32>
 8001c9e:	0002      	movs	r2, r0
 8001ca0:	687b      	ldr	r3, [r7, #4]
 8001ca2:	679a      	str	r2, [r3, #120]	; 0x78
 8001ca4:	4b04      	ldr	r3, [pc, #16]	; (8001cb8 <stateMsg_fill+0x110>)
 8001ca6:	681b      	ldr	r3, [r3, #0]
 8001ca8:	1c5a      	adds	r2, r3, #1
 8001caa:	4b03      	ldr	r3, [pc, #12]	; (8001cb8 <stateMsg_fill+0x110>)
 8001cac:	601a      	str	r2, [r3, #0]
 8001cae:	46c0      	nop			; (mov r8, r8)
 8001cb0:	46bd      	mov	sp, r7
 8001cb2:	b005      	add	sp, #20
 8001cb4:	bd90      	pop	{r4, r7, pc}
 8001cb6:	46c0      	nop			; (mov r8, r8)
 8001cb8:	20000108 	.word	0x20000108
 8001cbc:	20000070 	.word	0x20000070

08001cc0 <stateMsg_send>:
 8001cc0:	b580      	push	{r7, lr}
 8001cc2:	b086      	sub	sp, #24
 8001cc4:	af00      	add	r7, sp, #0
 8001cc6:	6078      	str	r0, [r7, #4]
 8001cc8:	2300      	movs	r3, #0
 8001cca:	617b      	str	r3, [r7, #20]
 8001ccc:	687b      	ldr	r3, [r7, #4]
 8001cce:	60fb      	str	r3, [r7, #12]
 8001cd0:	2313      	movs	r3, #19
 8001cd2:	18fb      	adds	r3, r7, r3
 8001cd4:	2280      	movs	r2, #128	; 0x80
 8001cd6:	701a      	strb	r2, [r3, #0]
 8001cd8:	4b15      	ldr	r3, [pc, #84]	; (8001d30 <stateMsg_send+0x70>)
 8001cda:	0018      	movs	r0, r3
 8001cdc:	f7ff febd 	bl	8001a5a <LL_USART_ClearFlag_TC>
 8001ce0:	e012      	b.n	8001d08 <stateMsg_send+0x48>
 8001ce2:	46c0      	nop			; (mov r8, r8)
 8001ce4:	4b12      	ldr	r3, [pc, #72]	; (8001d30 <stateMsg_send+0x70>)
 8001ce6:	0018      	movs	r0, r3
 8001ce8:	f7ff fea7 	bl	8001a3a <LL_USART_IsActiveFlag_TXE>
 8001cec:	1e03      	subs	r3, r0, #0
 8001cee:	d0f9      	beq.n	8001ce4 <stateMsg_send+0x24>
 8001cf0:	697b      	ldr	r3, [r7, #20]
 8001cf2:	1c5a      	adds	r2, r3, #1
 8001cf4:	617a      	str	r2, [r7, #20]
 8001cf6:	001a      	movs	r2, r3
 8001cf8:	68fb      	ldr	r3, [r7, #12]
 8001cfa:	189b      	adds	r3, r3, r2
 8001cfc:	781b      	ldrb	r3, [r3, #0]
 8001cfe:	4a0c      	ldr	r2, [pc, #48]	; (8001d30 <stateMsg_send+0x70>)
 8001d00:	0019      	movs	r1, r3
 8001d02:	0010      	movs	r0, r2
 8001d04:	f7ff feb4 	bl	8001a70 <LL_USART_TransmitData8>
 8001d08:	2213      	movs	r2, #19
 8001d0a:	18bb      	adds	r3, r7, r2
 8001d0c:	781b      	ldrb	r3, [r3, #0]
 8001d0e:	18ba      	adds	r2, r7, r2
 8001d10:	1e59      	subs	r1, r3, #1
 8001d12:	7011      	strb	r1, [r2, #0]
 8001d14:	2b00      	cmp	r3, #0
 8001d16:	d1e4      	bne.n	8001ce2 <stateMsg_send+0x22>
 8001d18:	46c0      	nop			; (mov r8, r8)
 8001d1a:	4b05      	ldr	r3, [pc, #20]	; (8001d30 <stateMsg_send+0x70>)
 8001d1c:	0018      	movs	r0, r3
 8001d1e:	f7ff fe7c 	bl	8001a1a <LL_USART_IsActiveFlag_TC>
 8001d22:	1e03      	subs	r3, r0, #0
 8001d24:	d0f9      	beq.n	8001d1a <stateMsg_send+0x5a>
 8001d26:	46c0      	nop			; (mov r8, r8)
 8001d28:	46bd      	mov	sp, r7
 8001d2a:	b006      	add	sp, #24
 8001d2c:	bd80      	pop	{r7, pc}
 8001d2e:	46c0      	nop			; (mov r8, r8)
 8001d30:	40013800 	.word	0x40013800

08001d34 <NVIC_SetPriority>:
 8001d34:	b590      	push	{r4, r7, lr}
 8001d36:	b083      	sub	sp, #12
 8001d38:	af00      	add	r7, sp, #0
 8001d3a:	0002      	movs	r2, r0
 8001d3c:	6039      	str	r1, [r7, #0]
 8001d3e:	1dfb      	adds	r3, r7, #7
 8001d40:	701a      	strb	r2, [r3, #0]
 8001d42:	1dfb      	adds	r3, r7, #7
 8001d44:	781b      	ldrb	r3, [r3, #0]
 8001d46:	2b7f      	cmp	r3, #127	; 0x7f
 8001d48:	d932      	bls.n	8001db0 <NVIC_SetPriority+0x7c>
 8001d4a:	4a2f      	ldr	r2, [pc, #188]	; (8001e08 <NVIC_SetPriority+0xd4>)
 8001d4c:	1dfb      	adds	r3, r7, #7
 8001d4e:	781b      	ldrb	r3, [r3, #0]
 8001d50:	0019      	movs	r1, r3
 8001d52:	230f      	movs	r3, #15
 8001d54:	400b      	ands	r3, r1
 8001d56:	3b08      	subs	r3, #8
 8001d58:	089b      	lsrs	r3, r3, #2
 8001d5a:	3306      	adds	r3, #6
 8001d5c:	009b      	lsls	r3, r3, #2
 8001d5e:	18d3      	adds	r3, r2, r3
 8001d60:	3304      	adds	r3, #4
 8001d62:	681b      	ldr	r3, [r3, #0]
 8001d64:	1dfa      	adds	r2, r7, #7
 8001d66:	7812      	ldrb	r2, [r2, #0]
 8001d68:	0011      	movs	r1, r2
 8001d6a:	2203      	movs	r2, #3
 8001d6c:	400a      	ands	r2, r1
 8001d6e:	00d2      	lsls	r2, r2, #3
 8001d70:	21ff      	movs	r1, #255	; 0xff
 8001d72:	4091      	lsls	r1, r2
 8001d74:	000a      	movs	r2, r1
 8001d76:	43d2      	mvns	r2, r2
 8001d78:	401a      	ands	r2, r3
 8001d7a:	0011      	movs	r1, r2
 8001d7c:	683b      	ldr	r3, [r7, #0]
 8001d7e:	019b      	lsls	r3, r3, #6
 8001d80:	22ff      	movs	r2, #255	; 0xff
 8001d82:	401a      	ands	r2, r3
 8001d84:	1dfb      	adds	r3, r7, #7
 8001d86:	781b      	ldrb	r3, [r3, #0]
 8001d88:	0018      	movs	r0, r3
 8001d8a:	2303      	movs	r3, #3
 8001d8c:	4003      	ands	r3, r0
 8001d8e:	00db      	lsls	r3, r3, #3
 8001d90:	409a      	lsls	r2, r3
 8001d92:	481d      	ldr	r0, [pc, #116]	; (8001e08 <NVIC_SetPriority+0xd4>)
 8001d94:	1dfb      	adds	r3, r7, #7
 8001d96:	781b      	ldrb	r3, [r3, #0]
 8001d98:	001c      	movs	r4, r3
 8001d9a:	230f      	movs	r3, #15
 8001d9c:	4023      	ands	r3, r4
 8001d9e:	3b08      	subs	r3, #8
 8001da0:	089b      	lsrs	r3, r3, #2
 8001da2:	430a      	orrs	r2, r1
 8001da4:	3306      	adds	r3, #6
 8001da6:	009b      	lsls	r3, r3, #2
 8001da8:	18c3      	adds	r3, r0, r3
 8001daa:	3304      	adds	r3, #4
 8001dac:	601a      	str	r2, [r3, #0]
 8001dae:	e027      	b.n	8001e00 <NVIC_SetPriority+0xcc>
 8001db0:	4a16      	ldr	r2, [pc, #88]	; (8001e0c <NVIC_SetPriority+0xd8>)
 8001db2:	1dfb      	adds	r3, r7, #7
 8001db4:	781b      	ldrb	r3, [r3, #0]
 8001db6:	b25b      	sxtb	r3, r3
 8001db8:	089b      	lsrs	r3, r3, #2
 8001dba:	33c0      	adds	r3, #192	; 0xc0
 8001dbc:	009b      	lsls	r3, r3, #2
 8001dbe:	589b      	ldr	r3, [r3, r2]
 8001dc0:	1dfa      	adds	r2, r7, #7
 8001dc2:	7812      	ldrb	r2, [r2, #0]
 8001dc4:	0011      	movs	r1, r2
 8001dc6:	2203      	movs	r2, #3
 8001dc8:	400a      	ands	r2, r1
 8001dca:	00d2      	lsls	r2, r2, #3
 8001dcc:	21ff      	movs	r1, #255	; 0xff
 8001dce:	4091      	lsls	r1, r2
 8001dd0:	000a      	movs	r2, r1
 8001dd2:	43d2      	mvns	r2, r2
 8001dd4:	401a      	ands	r2, r3
 8001dd6:	0011      	movs	r1, r2
 8001dd8:	683b      	ldr	r3, [r7, #0]
 8001dda:	019b      	lsls	r3, r3, #6
 8001ddc:	22ff      	movs	r2, #255	; 0xff
 8001dde:	401a      	ands	r2, r3
 8001de0:	1dfb      	adds	r3, r7, #7
 8001de2:	781b      	ldrb	r3, [r3, #0]
 8001de4:	0018      	movs	r0, r3
 8001de6:	2303      	movs	r3, #3
 8001de8:	4003      	ands	r3, r0
 8001dea:	00db      	lsls	r3, r3, #3
 8001dec:	409a      	lsls	r2, r3
 8001dee:	4807      	ldr	r0, [pc, #28]	; (8001e0c <NVIC_SetPriority+0xd8>)
 8001df0:	1dfb      	adds	r3, r7, #7
 8001df2:	781b      	ldrb	r3, [r3, #0]
 8001df4:	b25b      	sxtb	r3, r3
 8001df6:	089b      	lsrs	r3, r3, #2
 8001df8:	430a      	orrs	r2, r1
 8001dfa:	33c0      	adds	r3, #192	; 0xc0
 8001dfc:	009b      	lsls	r3, r3, #2
 8001dfe:	501a      	str	r2, [r3, r0]
 8001e00:	46c0      	nop			; (mov r8, r8)
 8001e02:	46bd      	mov	sp, r7
 8001e04:	b003      	add	sp, #12
 8001e06:	bd90      	pop	{r4, r7, pc}
 8001e08:	e000ed00 	.word	0xe000ed00
 8001e0c:	e000e100 	.word	0xe000e100

08001e10 <LL_InitTick>:
 8001e10:	b580      	push	{r7, lr}
 8001e12:	b082      	sub	sp, #8
 8001e14:	af00      	add	r7, sp, #0
 8001e16:	6078      	str	r0, [r7, #4]
 8001e18:	6039      	str	r1, [r7, #0]
 8001e1a:	6839      	ldr	r1, [r7, #0]
 8001e1c:	6878      	ldr	r0, [r7, #4]
 8001e1e:	f7fe f973 	bl	8000108 <__udivsi3>
 8001e22:	0003      	movs	r3, r0
 8001e24:	001a      	movs	r2, r3
 8001e26:	4b06      	ldr	r3, [pc, #24]	; (8001e40 <LL_InitTick+0x30>)
 8001e28:	3a01      	subs	r2, #1
 8001e2a:	605a      	str	r2, [r3, #4]
 8001e2c:	4b04      	ldr	r3, [pc, #16]	; (8001e40 <LL_InitTick+0x30>)
 8001e2e:	2200      	movs	r2, #0
 8001e30:	609a      	str	r2, [r3, #8]
 8001e32:	4b03      	ldr	r3, [pc, #12]	; (8001e40 <LL_InitTick+0x30>)
 8001e34:	2205      	movs	r2, #5
 8001e36:	601a      	str	r2, [r3, #0]
 8001e38:	46c0      	nop			; (mov r8, r8)
 8001e3a:	46bd      	mov	sp, r7
 8001e3c:	b002      	add	sp, #8
 8001e3e:	bd80      	pop	{r7, pc}
 8001e40:	e000e010 	.word	0xe000e010

08001e44 <LL_SYSTICK_EnableIT>:
 8001e44:	b580      	push	{r7, lr}
 8001e46:	af00      	add	r7, sp, #0
 8001e48:	4b04      	ldr	r3, [pc, #16]	; (8001e5c <LL_SYSTICK_EnableIT+0x18>)
 8001e4a:	681a      	ldr	r2, [r3, #0]
 8001e4c:	4b03      	ldr	r3, [pc, #12]	; (8001e5c <LL_SYSTICK_EnableIT+0x18>)
 8001e4e:	2102      	movs	r1, #2
 8001e50:	430a      	orrs	r2, r1
 8001e52:	601a      	str	r2, [r3, #0]
 8001e54:	46c0      	nop			; (mov r8, r8)
 8001e56:	46bd      	mov	sp, r7
 8001e58:	bd80      	pop	{r7, pc}
 8001e5a:	46c0      	nop			; (mov r8, r8)
 8001e5c:	e000e010 	.word	0xe000e010

08001e60 <SysTick_Handler>:
 8001e60:	b580      	push	{r7, lr}
 8001e62:	af00      	add	r7, sp, #0
 8001e64:	4b0c      	ldr	r3, [pc, #48]	; (8001e98 <SysTick_Handler+0x38>)
 8001e66:	681b      	ldr	r3, [r3, #0]
 8001e68:	1c5a      	adds	r2, r3, #1
 8001e6a:	23fa      	movs	r3, #250	; 0xfa
 8001e6c:	009b      	lsls	r3, r3, #2
 8001e6e:	0019      	movs	r1, r3
 8001e70:	0010      	movs	r0, r2
 8001e72:	f7fe f9cf 	bl	8000214 <__aeabi_uidivmod>
 8001e76:	000b      	movs	r3, r1
 8001e78:	001a      	movs	r2, r3
 8001e7a:	4b07      	ldr	r3, [pc, #28]	; (8001e98 <SysTick_Handler+0x38>)
 8001e7c:	601a      	str	r2, [r3, #0]
 8001e7e:	4b06      	ldr	r3, [pc, #24]	; (8001e98 <SysTick_Handler+0x38>)
 8001e80:	681b      	ldr	r3, [r3, #0]
 8001e82:	2b00      	cmp	r3, #0
 8001e84:	d104      	bne.n	8001e90 <SysTick_Handler+0x30>
 8001e86:	4b05      	ldr	r3, [pc, #20]	; (8001e9c <SysTick_Handler+0x3c>)
 8001e88:	681b      	ldr	r3, [r3, #0]
 8001e8a:	1c5a      	adds	r2, r3, #1
 8001e8c:	4b03      	ldr	r3, [pc, #12]	; (8001e9c <SysTick_Handler+0x3c>)
 8001e8e:	601a      	str	r2, [r3, #0]
 8001e90:	46c0      	nop			; (mov r8, r8)
 8001e92:	46bd      	mov	sp, r7
 8001e94:	bd80      	pop	{r7, pc}
 8001e96:	46c0      	nop			; (mov r8, r8)
 8001e98:	20000110 	.word	0x20000110
 8001e9c:	2000010c 	.word	0x2000010c

08001ea0 <systick_config>:
 8001ea0:	b580      	push	{r7, lr}
 8001ea2:	af00      	add	r7, sp, #0
 8001ea4:	23fa      	movs	r3, #250	; 0xfa
 8001ea6:	009b      	lsls	r3, r3, #2
 8001ea8:	4a07      	ldr	r2, [pc, #28]	; (8001ec8 <systick_config+0x28>)
 8001eaa:	0019      	movs	r1, r3
 8001eac:	0010      	movs	r0, r2
 8001eae:	f7ff ffaf 	bl	8001e10 <LL_InitTick>
 8001eb2:	f7ff ffc7 	bl	8001e44 <LL_SYSTICK_EnableIT>
 8001eb6:	2301      	movs	r3, #1
 8001eb8:	425b      	negs	r3, r3
 8001eba:	2100      	movs	r1, #0
 8001ebc:	0018      	movs	r0, r3
 8001ebe:	f7ff ff39 	bl	8001d34 <NVIC_SetPriority>
 8001ec2:	46c0      	nop			; (mov r8, r8)
 8001ec4:	46bd      	mov	sp, r7
 8001ec6:	bd80      	pop	{r7, pc}
 8001ec8:	02dc6c00 	.word	0x02dc6c00

08001ecc <getTime_s>:
 8001ecc:	b5b0      	push	{r4, r5, r7, lr}
 8001ece:	b082      	sub	sp, #8
 8001ed0:	af00      	add	r7, sp, #0
 8001ed2:	4b11      	ldr	r3, [pc, #68]	; (8001f18 <getTime_s+0x4c>)
 8001ed4:	681b      	ldr	r3, [r3, #0]
 8001ed6:	607b      	str	r3, [r7, #4]
 8001ed8:	4b10      	ldr	r3, [pc, #64]	; (8001f1c <getTime_s+0x50>)
 8001eda:	681b      	ldr	r3, [r3, #0]
 8001edc:	603b      	str	r3, [r7, #0]
 8001ede:	6838      	ldr	r0, [r7, #0]
 8001ee0:	f7fe fc4a 	bl	8000778 <__aeabi_ui2f>
 8001ee4:	1c04      	adds	r4, r0, #0
 8001ee6:	6878      	ldr	r0, [r7, #4]
 8001ee8:	f7fe fc46 	bl	8000778 <__aeabi_ui2f>
 8001eec:	1c05      	adds	r5, r0, #0
 8001eee:	23fa      	movs	r3, #250	; 0xfa
 8001ef0:	009b      	lsls	r3, r3, #2
 8001ef2:	0018      	movs	r0, r3
 8001ef4:	f7fe fc40 	bl	8000778 <__aeabi_ui2f>
 8001ef8:	1c03      	adds	r3, r0, #0
 8001efa:	1c19      	adds	r1, r3, #0
 8001efc:	1c28      	adds	r0, r5, #0
 8001efe:	f7fe fb29 	bl	8000554 <__aeabi_fdiv>
 8001f02:	1c03      	adds	r3, r0, #0
 8001f04:	1c19      	adds	r1, r3, #0
 8001f06:	1c20      	adds	r0, r4, #0
 8001f08:	f7fe f98a 	bl	8000220 <__aeabi_fadd>
 8001f0c:	1c03      	adds	r3, r0, #0
 8001f0e:	1c18      	adds	r0, r3, #0
 8001f10:	46bd      	mov	sp, r7
 8001f12:	b002      	add	sp, #8
 8001f14:	bdb0      	pop	{r4, r5, r7, pc}
 8001f16:	46c0      	nop			; (mov r8, r8)
 8001f18:	20000110 	.word	0x20000110
 8001f1c:	2000010c 	.word	0x2000010c

08001f20 <main>:
 8001f20:	b590      	push	{r4, r7, lr}
 8001f22:	b0a7      	sub	sp, #156	; 0x9c
 8001f24:	af00      	add	r7, sp, #0
 8001f26:	2300      	movs	r3, #0
 8001f28:	2494      	movs	r4, #148	; 0x94
 8001f2a:	193a      	adds	r2, r7, r4
 8001f2c:	6013      	str	r3, [r2, #0]
 8001f2e:	f000 fbad 	bl	800268c <rcc_config>
 8001f32:	f000 fbdf 	bl	80026f4 <gpio_config>
 8001f36:	f000 fbf1 	bl	800271c <exti_config>
 8001f3a:	f000 fbf5 	bl	8002728 <usart_config>
 8001f3e:	f000 fc6b 	bl	8002818 <i2c_config>
 8001f42:	f000 fd65 	bl	8002a10 <printf_config>
 8001f46:	f7ff ffab 	bl	8001ea0 <systick_config>
 8001f4a:	4b26      	ldr	r3, [pc, #152]	; (8001fe4 <main+0xc4>)
 8001f4c:	2248      	movs	r2, #72	; 0x48
 8001f4e:	2100      	movs	r1, #0
 8001f50:	0018      	movs	r0, r3
 8001f52:	f001 fb67 	bl	8003624 <memset>
 8001f56:	4b24      	ldr	r3, [pc, #144]	; (8001fe8 <main+0xc8>)
 8001f58:	2298      	movs	r2, #152	; 0x98
 8001f5a:	2100      	movs	r1, #0
 8001f5c:	0018      	movs	r0, r3
 8001f5e:	f001 fb61 	bl	8003624 <memset>
 8001f62:	2310      	movs	r3, #16
 8001f64:	18fb      	adds	r3, r7, r3
 8001f66:	0018      	movs	r0, r3
 8001f68:	2380      	movs	r3, #128	; 0x80
 8001f6a:	001a      	movs	r2, r3
 8001f6c:	2100      	movs	r1, #0
 8001f6e:	f001 fb59 	bl	8003624 <memset>
 8001f72:	f000 fedb 	bl	8002d2c <mpu9255_init>
 8001f76:	0003      	movs	r3, r0
 8001f78:	193a      	adds	r2, r7, r4
 8001f7a:	6013      	str	r3, [r2, #0]
 8001f7c:	193b      	adds	r3, r7, r4
 8001f7e:	681a      	ldr	r2, [r3, #0]
 8001f80:	4b1a      	ldr	r3, [pc, #104]	; (8001fec <main+0xcc>)
 8001f82:	0011      	movs	r1, r2
 8001f84:	0018      	movs	r0, r3
 8001f86:	f001 fb03 	bl	8003590 <xprintf>
 8001f8a:	2308      	movs	r3, #8
 8001f8c:	18fb      	adds	r3, r7, r3
 8001f8e:	0018      	movs	r0, r3
 8001f90:	2306      	movs	r3, #6
 8001f92:	001a      	movs	r2, r3
 8001f94:	2100      	movs	r1, #0
 8001f96:	f001 fb45 	bl	8003624 <memset>
 8001f9a:	003b      	movs	r3, r7
 8001f9c:	0018      	movs	r0, r3
 8001f9e:	2306      	movs	r3, #6
 8001fa0:	001a      	movs	r2, r3
 8001fa2:	2100      	movs	r1, #0
 8001fa4:	f001 fb3e 	bl	8003624 <memset>
 8001fa8:	003a      	movs	r2, r7
 8001faa:	2408      	movs	r4, #8
 8001fac:	193b      	adds	r3, r7, r4
 8001fae:	0011      	movs	r1, r2
 8001fb0:	0018      	movs	r0, r3
 8001fb2:	f000 ff9a 	bl	8002eea <mpu9255_readIMU>
 8001fb6:	4a0b      	ldr	r2, [pc, #44]	; (8001fe4 <main+0xc4>)
 8001fb8:	193b      	adds	r3, r7, r4
 8001fba:	0011      	movs	r1, r2
 8001fbc:	0018      	movs	r0, r3
 8001fbe:	f000 ffeb 	bl	8002f98 <mpu9255_recalcAccel>
 8001fc2:	4a0b      	ldr	r2, [pc, #44]	; (8001ff0 <main+0xd0>)
 8001fc4:	003b      	movs	r3, r7
 8001fc6:	0011      	movs	r1, r2
 8001fc8:	0018      	movs	r0, r3
 8001fca:	f001 f879 	bl	80030c0 <mpu9255_recalcGyro>
 8001fce:	2410      	movs	r4, #16
 8001fd0:	193b      	adds	r3, r7, r4
 8001fd2:	0018      	movs	r0, r3
 8001fd4:	f7ff fde8 	bl	8001ba8 <stateMsg_fill>
 8001fd8:	193b      	adds	r3, r7, r4
 8001fda:	0018      	movs	r0, r3
 8001fdc:	f7ff fe70 	bl	8001cc0 <stateMsg_send>
 8001fe0:	e7e2      	b.n	8001fa8 <main+0x88>
 8001fe2:	46c0      	nop			; (mov r8, r8)
 8001fe4:	20000028 	.word	0x20000028
 8001fe8:	20000070 	.word	0x20000070
 8001fec:	0800364c 	.word	0x0800364c
 8001ff0:	20000040 	.word	0x20000040

08001ff4 <LL_RCC_HSI_Enable>:
 8001ff4:	b580      	push	{r7, lr}
 8001ff6:	af00      	add	r7, sp, #0
 8001ff8:	4b04      	ldr	r3, [pc, #16]	; (800200c <LL_RCC_HSI_Enable+0x18>)
 8001ffa:	681a      	ldr	r2, [r3, #0]
 8001ffc:	4b03      	ldr	r3, [pc, #12]	; (800200c <LL_RCC_HSI_Enable+0x18>)
 8001ffe:	2101      	movs	r1, #1
 8002000:	430a      	orrs	r2, r1
 8002002:	601a      	str	r2, [r3, #0]
 8002004:	46c0      	nop			; (mov r8, r8)
 8002006:	46bd      	mov	sp, r7
 8002008:	bd80      	pop	{r7, pc}
 800200a:	46c0      	nop			; (mov r8, r8)
 800200c:	40021000 	.word	0x40021000

08002010 <LL_RCC_HSI_IsReady>:
 8002010:	b580      	push	{r7, lr}
 8002012:	af00      	add	r7, sp, #0
 8002014:	4b05      	ldr	r3, [pc, #20]	; (800202c <LL_RCC_HSI_IsReady+0x1c>)
 8002016:	681b      	ldr	r3, [r3, #0]
 8002018:	2202      	movs	r2, #2
 800201a:	4013      	ands	r3, r2
 800201c:	3b02      	subs	r3, #2
 800201e:	425a      	negs	r2, r3
 8002020:	4153      	adcs	r3, r2
 8002022:	b2db      	uxtb	r3, r3
 8002024:	0018      	movs	r0, r3
 8002026:	46bd      	mov	sp, r7
 8002028:	bd80      	pop	{r7, pc}
 800202a:	46c0      	nop			; (mov r8, r8)
 800202c:	40021000 	.word	0x40021000

08002030 <LL_RCC_SetSysClkSource>:
 8002030:	b580      	push	{r7, lr}
 8002032:	b082      	sub	sp, #8
 8002034:	af00      	add	r7, sp, #0
 8002036:	6078      	str	r0, [r7, #4]
 8002038:	4b06      	ldr	r3, [pc, #24]	; (8002054 <LL_RCC_SetSysClkSource+0x24>)
 800203a:	685b      	ldr	r3, [r3, #4]
 800203c:	2203      	movs	r2, #3
 800203e:	4393      	bics	r3, r2
 8002040:	0019      	movs	r1, r3
 8002042:	4b04      	ldr	r3, [pc, #16]	; (8002054 <LL_RCC_SetSysClkSource+0x24>)
 8002044:	687a      	ldr	r2, [r7, #4]
 8002046:	430a      	orrs	r2, r1
 8002048:	605a      	str	r2, [r3, #4]
 800204a:	46c0      	nop			; (mov r8, r8)
 800204c:	46bd      	mov	sp, r7
 800204e:	b002      	add	sp, #8
 8002050:	bd80      	pop	{r7, pc}
 8002052:	46c0      	nop			; (mov r8, r8)
 8002054:	40021000 	.word	0x40021000

08002058 <LL_RCC_GetSysClkSource>:
 8002058:	b580      	push	{r7, lr}
 800205a:	af00      	add	r7, sp, #0
 800205c:	4b03      	ldr	r3, [pc, #12]	; (800206c <LL_RCC_GetSysClkSource+0x14>)
 800205e:	685b      	ldr	r3, [r3, #4]
 8002060:	220c      	movs	r2, #12
 8002062:	4013      	ands	r3, r2
 8002064:	0018      	movs	r0, r3
 8002066:	46bd      	mov	sp, r7
 8002068:	bd80      	pop	{r7, pc}
 800206a:	46c0      	nop			; (mov r8, r8)
 800206c:	40021000 	.word	0x40021000

08002070 <LL_RCC_SetAHBPrescaler>:
 8002070:	b580      	push	{r7, lr}
 8002072:	b082      	sub	sp, #8
 8002074:	af00      	add	r7, sp, #0
 8002076:	6078      	str	r0, [r7, #4]
 8002078:	4b06      	ldr	r3, [pc, #24]	; (8002094 <LL_RCC_SetAHBPrescaler+0x24>)
 800207a:	685b      	ldr	r3, [r3, #4]
 800207c:	22f0      	movs	r2, #240	; 0xf0
 800207e:	4393      	bics	r3, r2
 8002080:	0019      	movs	r1, r3
 8002082:	4b04      	ldr	r3, [pc, #16]	; (8002094 <LL_RCC_SetAHBPrescaler+0x24>)
 8002084:	687a      	ldr	r2, [r7, #4]
 8002086:	430a      	orrs	r2, r1
 8002088:	605a      	str	r2, [r3, #4]
 800208a:	46c0      	nop			; (mov r8, r8)
 800208c:	46bd      	mov	sp, r7
 800208e:	b002      	add	sp, #8
 8002090:	bd80      	pop	{r7, pc}
 8002092:	46c0      	nop			; (mov r8, r8)
 8002094:	40021000 	.word	0x40021000

08002098 <LL_RCC_SetAPB1Prescaler>:
 8002098:	b580      	push	{r7, lr}
 800209a:	b082      	sub	sp, #8
 800209c:	af00      	add	r7, sp, #0
 800209e:	6078      	str	r0, [r7, #4]
 80020a0:	4b06      	ldr	r3, [pc, #24]	; (80020bc <LL_RCC_SetAPB1Prescaler+0x24>)
 80020a2:	685b      	ldr	r3, [r3, #4]
 80020a4:	4a06      	ldr	r2, [pc, #24]	; (80020c0 <LL_RCC_SetAPB1Prescaler+0x28>)
 80020a6:	4013      	ands	r3, r2
 80020a8:	0019      	movs	r1, r3
 80020aa:	4b04      	ldr	r3, [pc, #16]	; (80020bc <LL_RCC_SetAPB1Prescaler+0x24>)
 80020ac:	687a      	ldr	r2, [r7, #4]
 80020ae:	430a      	orrs	r2, r1
 80020b0:	605a      	str	r2, [r3, #4]
 80020b2:	46c0      	nop			; (mov r8, r8)
 80020b4:	46bd      	mov	sp, r7
 80020b6:	b002      	add	sp, #8
 80020b8:	bd80      	pop	{r7, pc}
 80020ba:	46c0      	nop			; (mov r8, r8)
 80020bc:	40021000 	.word	0x40021000
 80020c0:	fffff8ff 	.word	0xfffff8ff

080020c4 <LL_RCC_SetUSARTClockSource>:
 80020c4:	b580      	push	{r7, lr}
 80020c6:	b082      	sub	sp, #8
 80020c8:	af00      	add	r7, sp, #0
 80020ca:	6078      	str	r0, [r7, #4]
 80020cc:	4b09      	ldr	r3, [pc, #36]	; (80020f4 <LL_RCC_SetUSARTClockSource+0x30>)
 80020ce:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80020d0:	687a      	ldr	r2, [r7, #4]
 80020d2:	0e12      	lsrs	r2, r2, #24
 80020d4:	2103      	movs	r1, #3
 80020d6:	4091      	lsls	r1, r2
 80020d8:	000a      	movs	r2, r1
 80020da:	43d2      	mvns	r2, r2
 80020dc:	401a      	ands	r2, r3
 80020de:	0011      	movs	r1, r2
 80020e0:	687b      	ldr	r3, [r7, #4]
 80020e2:	021b      	lsls	r3, r3, #8
 80020e4:	0a1a      	lsrs	r2, r3, #8
 80020e6:	4b03      	ldr	r3, [pc, #12]	; (80020f4 <LL_RCC_SetUSARTClockSource+0x30>)
 80020e8:	430a      	orrs	r2, r1
 80020ea:	631a      	str	r2, [r3, #48]	; 0x30
 80020ec:	46c0      	nop			; (mov r8, r8)
 80020ee:	46bd      	mov	sp, r7
 80020f0:	b002      	add	sp, #8
 80020f2:	bd80      	pop	{r7, pc}
 80020f4:	40021000 	.word	0x40021000

080020f8 <LL_RCC_SetI2CClockSource>:
 80020f8:	b580      	push	{r7, lr}
 80020fa:	b082      	sub	sp, #8
 80020fc:	af00      	add	r7, sp, #0
 80020fe:	6078      	str	r0, [r7, #4]
 8002100:	4b06      	ldr	r3, [pc, #24]	; (800211c <LL_RCC_SetI2CClockSource+0x24>)
 8002102:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002104:	2210      	movs	r2, #16
 8002106:	4393      	bics	r3, r2
 8002108:	0019      	movs	r1, r3
 800210a:	4b04      	ldr	r3, [pc, #16]	; (800211c <LL_RCC_SetI2CClockSource+0x24>)
 800210c:	687a      	ldr	r2, [r7, #4]
 800210e:	430a      	orrs	r2, r1
 8002110:	631a      	str	r2, [r3, #48]	; 0x30
 8002112:	46c0      	nop			; (mov r8, r8)
 8002114:	46bd      	mov	sp, r7
 8002116:	b002      	add	sp, #8
 8002118:	bd80      	pop	{r7, pc}
 800211a:	46c0      	nop			; (mov r8, r8)
 800211c:	40021000 	.word	0x40021000

08002120 <LL_RCC_PLL_Enable>:
 8002120:	b580      	push	{r7, lr}
 8002122:	af00      	add	r7, sp, #0
 8002124:	4b04      	ldr	r3, [pc, #16]	; (8002138 <LL_RCC_PLL_Enable+0x18>)
 8002126:	681a      	ldr	r2, [r3, #0]
 8002128:	4b03      	ldr	r3, [pc, #12]	; (8002138 <LL_RCC_PLL_Enable+0x18>)
 800212a:	2180      	movs	r1, #128	; 0x80
 800212c:	0449      	lsls	r1, r1, #17
 800212e:	430a      	orrs	r2, r1
 8002130:	601a      	str	r2, [r3, #0]
 8002132:	46c0      	nop			; (mov r8, r8)
 8002134:	46bd      	mov	sp, r7
 8002136:	bd80      	pop	{r7, pc}
 8002138:	40021000 	.word	0x40021000

0800213c <LL_RCC_PLL_IsReady>:
 800213c:	b580      	push	{r7, lr}
 800213e:	af00      	add	r7, sp, #0
 8002140:	4b07      	ldr	r3, [pc, #28]	; (8002160 <LL_RCC_PLL_IsReady+0x24>)
 8002142:	681a      	ldr	r2, [r3, #0]
 8002144:	2380      	movs	r3, #128	; 0x80
 8002146:	049b      	lsls	r3, r3, #18
 8002148:	4013      	ands	r3, r2
 800214a:	22fe      	movs	r2, #254	; 0xfe
 800214c:	0612      	lsls	r2, r2, #24
 800214e:	4694      	mov	ip, r2
 8002150:	4463      	add	r3, ip
 8002152:	425a      	negs	r2, r3
 8002154:	4153      	adcs	r3, r2
 8002156:	b2db      	uxtb	r3, r3
 8002158:	0018      	movs	r0, r3
 800215a:	46bd      	mov	sp, r7
 800215c:	bd80      	pop	{r7, pc}
 800215e:	46c0      	nop			; (mov r8, r8)
 8002160:	40021000 	.word	0x40021000

08002164 <LL_RCC_PLL_ConfigDomain_SYS>:
 8002164:	b580      	push	{r7, lr}
 8002166:	b082      	sub	sp, #8
 8002168:	af00      	add	r7, sp, #0
 800216a:	6078      	str	r0, [r7, #4]
 800216c:	6039      	str	r1, [r7, #0]
 800216e:	4b0e      	ldr	r3, [pc, #56]	; (80021a8 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8002170:	685b      	ldr	r3, [r3, #4]
 8002172:	4a0e      	ldr	r2, [pc, #56]	; (80021ac <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8002174:	4013      	ands	r3, r2
 8002176:	0019      	movs	r1, r3
 8002178:	687a      	ldr	r2, [r7, #4]
 800217a:	2380      	movs	r3, #128	; 0x80
 800217c:	025b      	lsls	r3, r3, #9
 800217e:	401a      	ands	r2, r3
 8002180:	683b      	ldr	r3, [r7, #0]
 8002182:	431a      	orrs	r2, r3
 8002184:	4b08      	ldr	r3, [pc, #32]	; (80021a8 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8002186:	430a      	orrs	r2, r1
 8002188:	605a      	str	r2, [r3, #4]
 800218a:	4b07      	ldr	r3, [pc, #28]	; (80021a8 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800218c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800218e:	220f      	movs	r2, #15
 8002190:	4393      	bics	r3, r2
 8002192:	0019      	movs	r1, r3
 8002194:	687b      	ldr	r3, [r7, #4]
 8002196:	220f      	movs	r2, #15
 8002198:	401a      	ands	r2, r3
 800219a:	4b03      	ldr	r3, [pc, #12]	; (80021a8 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800219c:	430a      	orrs	r2, r1
 800219e:	62da      	str	r2, [r3, #44]	; 0x2c
 80021a0:	46c0      	nop			; (mov r8, r8)
 80021a2:	46bd      	mov	sp, r7
 80021a4:	b002      	add	sp, #8
 80021a6:	bd80      	pop	{r7, pc}
 80021a8:	40021000 	.word	0x40021000
 80021ac:	ffc2ffff 	.word	0xffc2ffff

080021b0 <LL_FLASH_SetLatency>:
 80021b0:	b580      	push	{r7, lr}
 80021b2:	b082      	sub	sp, #8
 80021b4:	af00      	add	r7, sp, #0
 80021b6:	6078      	str	r0, [r7, #4]
 80021b8:	4b06      	ldr	r3, [pc, #24]	; (80021d4 <LL_FLASH_SetLatency+0x24>)
 80021ba:	681b      	ldr	r3, [r3, #0]
 80021bc:	2201      	movs	r2, #1
 80021be:	4393      	bics	r3, r2
 80021c0:	0019      	movs	r1, r3
 80021c2:	4b04      	ldr	r3, [pc, #16]	; (80021d4 <LL_FLASH_SetLatency+0x24>)
 80021c4:	687a      	ldr	r2, [r7, #4]
 80021c6:	430a      	orrs	r2, r1
 80021c8:	601a      	str	r2, [r3, #0]
 80021ca:	46c0      	nop			; (mov r8, r8)
 80021cc:	46bd      	mov	sp, r7
 80021ce:	b002      	add	sp, #8
 80021d0:	bd80      	pop	{r7, pc}
 80021d2:	46c0      	nop			; (mov r8, r8)
 80021d4:	40022000 	.word	0x40022000

080021d8 <LL_AHB1_GRP1_EnableClock>:
 80021d8:	b580      	push	{r7, lr}
 80021da:	b084      	sub	sp, #16
 80021dc:	af00      	add	r7, sp, #0
 80021de:	6078      	str	r0, [r7, #4]
 80021e0:	4b07      	ldr	r3, [pc, #28]	; (8002200 <LL_AHB1_GRP1_EnableClock+0x28>)
 80021e2:	6959      	ldr	r1, [r3, #20]
 80021e4:	4b06      	ldr	r3, [pc, #24]	; (8002200 <LL_AHB1_GRP1_EnableClock+0x28>)
 80021e6:	687a      	ldr	r2, [r7, #4]
 80021e8:	430a      	orrs	r2, r1
 80021ea:	615a      	str	r2, [r3, #20]
 80021ec:	4b04      	ldr	r3, [pc, #16]	; (8002200 <LL_AHB1_GRP1_EnableClock+0x28>)
 80021ee:	695b      	ldr	r3, [r3, #20]
 80021f0:	687a      	ldr	r2, [r7, #4]
 80021f2:	4013      	ands	r3, r2
 80021f4:	60fb      	str	r3, [r7, #12]
 80021f6:	68fb      	ldr	r3, [r7, #12]
 80021f8:	46c0      	nop			; (mov r8, r8)
 80021fa:	46bd      	mov	sp, r7
 80021fc:	b004      	add	sp, #16
 80021fe:	bd80      	pop	{r7, pc}
 8002200:	40021000 	.word	0x40021000

08002204 <LL_APB1_GRP1_EnableClock>:
 8002204:	b580      	push	{r7, lr}
 8002206:	b084      	sub	sp, #16
 8002208:	af00      	add	r7, sp, #0
 800220a:	6078      	str	r0, [r7, #4]
 800220c:	4b07      	ldr	r3, [pc, #28]	; (800222c <LL_APB1_GRP1_EnableClock+0x28>)
 800220e:	69d9      	ldr	r1, [r3, #28]
 8002210:	4b06      	ldr	r3, [pc, #24]	; (800222c <LL_APB1_GRP1_EnableClock+0x28>)
 8002212:	687a      	ldr	r2, [r7, #4]
 8002214:	430a      	orrs	r2, r1
 8002216:	61da      	str	r2, [r3, #28]
 8002218:	4b04      	ldr	r3, [pc, #16]	; (800222c <LL_APB1_GRP1_EnableClock+0x28>)
 800221a:	69db      	ldr	r3, [r3, #28]
 800221c:	687a      	ldr	r2, [r7, #4]
 800221e:	4013      	ands	r3, r2
 8002220:	60fb      	str	r3, [r7, #12]
 8002222:	68fb      	ldr	r3, [r7, #12]
 8002224:	46c0      	nop			; (mov r8, r8)
 8002226:	46bd      	mov	sp, r7
 8002228:	b004      	add	sp, #16
 800222a:	bd80      	pop	{r7, pc}
 800222c:	40021000 	.word	0x40021000

08002230 <LL_APB1_GRP2_EnableClock>:
 8002230:	b580      	push	{r7, lr}
 8002232:	b084      	sub	sp, #16
 8002234:	af00      	add	r7, sp, #0
 8002236:	6078      	str	r0, [r7, #4]
 8002238:	4b07      	ldr	r3, [pc, #28]	; (8002258 <LL_APB1_GRP2_EnableClock+0x28>)
 800223a:	6999      	ldr	r1, [r3, #24]
 800223c:	4b06      	ldr	r3, [pc, #24]	; (8002258 <LL_APB1_GRP2_EnableClock+0x28>)
 800223e:	687a      	ldr	r2, [r7, #4]
 8002240:	430a      	orrs	r2, r1
 8002242:	619a      	str	r2, [r3, #24]
 8002244:	4b04      	ldr	r3, [pc, #16]	; (8002258 <LL_APB1_GRP2_EnableClock+0x28>)
 8002246:	699b      	ldr	r3, [r3, #24]
 8002248:	687a      	ldr	r2, [r7, #4]
 800224a:	4013      	ands	r3, r2
 800224c:	60fb      	str	r3, [r7, #12]
 800224e:	68fb      	ldr	r3, [r7, #12]
 8002250:	46c0      	nop			; (mov r8, r8)
 8002252:	46bd      	mov	sp, r7
 8002254:	b004      	add	sp, #16
 8002256:	bd80      	pop	{r7, pc}
 8002258:	40021000 	.word	0x40021000

0800225c <LL_GPIO_SetPinMode>:
 800225c:	b580      	push	{r7, lr}
 800225e:	b084      	sub	sp, #16
 8002260:	af00      	add	r7, sp, #0
 8002262:	60f8      	str	r0, [r7, #12]
 8002264:	60b9      	str	r1, [r7, #8]
 8002266:	607a      	str	r2, [r7, #4]
 8002268:	68fb      	ldr	r3, [r7, #12]
 800226a:	6819      	ldr	r1, [r3, #0]
 800226c:	68bb      	ldr	r3, [r7, #8]
 800226e:	68ba      	ldr	r2, [r7, #8]
 8002270:	435a      	muls	r2, r3
 8002272:	0013      	movs	r3, r2
 8002274:	005b      	lsls	r3, r3, #1
 8002276:	189b      	adds	r3, r3, r2
 8002278:	43db      	mvns	r3, r3
 800227a:	400b      	ands	r3, r1
 800227c:	001a      	movs	r2, r3
 800227e:	68bb      	ldr	r3, [r7, #8]
 8002280:	68b9      	ldr	r1, [r7, #8]
 8002282:	434b      	muls	r3, r1
 8002284:	6879      	ldr	r1, [r7, #4]
 8002286:	434b      	muls	r3, r1
 8002288:	431a      	orrs	r2, r3
 800228a:	68fb      	ldr	r3, [r7, #12]
 800228c:	601a      	str	r2, [r3, #0]
 800228e:	46c0      	nop			; (mov r8, r8)
 8002290:	46bd      	mov	sp, r7
 8002292:	b004      	add	sp, #16
 8002294:	bd80      	pop	{r7, pc}

08002296 <LL_GPIO_SetPinOutputType>:
 8002296:	b580      	push	{r7, lr}
 8002298:	b084      	sub	sp, #16
 800229a:	af00      	add	r7, sp, #0
 800229c:	60f8      	str	r0, [r7, #12]
 800229e:	60b9      	str	r1, [r7, #8]
 80022a0:	607a      	str	r2, [r7, #4]
 80022a2:	68fb      	ldr	r3, [r7, #12]
 80022a4:	685b      	ldr	r3, [r3, #4]
 80022a6:	68ba      	ldr	r2, [r7, #8]
 80022a8:	43d2      	mvns	r2, r2
 80022aa:	401a      	ands	r2, r3
 80022ac:	68bb      	ldr	r3, [r7, #8]
 80022ae:	6879      	ldr	r1, [r7, #4]
 80022b0:	434b      	muls	r3, r1
 80022b2:	431a      	orrs	r2, r3
 80022b4:	68fb      	ldr	r3, [r7, #12]
 80022b6:	605a      	str	r2, [r3, #4]
 80022b8:	46c0      	nop			; (mov r8, r8)
 80022ba:	46bd      	mov	sp, r7
 80022bc:	b004      	add	sp, #16
 80022be:	bd80      	pop	{r7, pc}

080022c0 <LL_GPIO_SetPinSpeed>:
 80022c0:	b580      	push	{r7, lr}
 80022c2:	b084      	sub	sp, #16
 80022c4:	af00      	add	r7, sp, #0
 80022c6:	60f8      	str	r0, [r7, #12]
 80022c8:	60b9      	str	r1, [r7, #8]
 80022ca:	607a      	str	r2, [r7, #4]
 80022cc:	68fb      	ldr	r3, [r7, #12]
 80022ce:	6899      	ldr	r1, [r3, #8]
 80022d0:	68bb      	ldr	r3, [r7, #8]
 80022d2:	68ba      	ldr	r2, [r7, #8]
 80022d4:	435a      	muls	r2, r3
 80022d6:	0013      	movs	r3, r2
 80022d8:	005b      	lsls	r3, r3, #1
 80022da:	189b      	adds	r3, r3, r2
 80022dc:	43db      	mvns	r3, r3
 80022de:	400b      	ands	r3, r1
 80022e0:	001a      	movs	r2, r3
 80022e2:	68bb      	ldr	r3, [r7, #8]
 80022e4:	68b9      	ldr	r1, [r7, #8]
 80022e6:	434b      	muls	r3, r1
 80022e8:	6879      	ldr	r1, [r7, #4]
 80022ea:	434b      	muls	r3, r1
 80022ec:	431a      	orrs	r2, r3
 80022ee:	68fb      	ldr	r3, [r7, #12]
 80022f0:	609a      	str	r2, [r3, #8]
 80022f2:	46c0      	nop			; (mov r8, r8)
 80022f4:	46bd      	mov	sp, r7
 80022f6:	b004      	add	sp, #16
 80022f8:	bd80      	pop	{r7, pc}

080022fa <LL_GPIO_SetPinPull>:
 80022fa:	b580      	push	{r7, lr}
 80022fc:	b084      	sub	sp, #16
 80022fe:	af00      	add	r7, sp, #0
 8002300:	60f8      	str	r0, [r7, #12]
 8002302:	60b9      	str	r1, [r7, #8]
 8002304:	607a      	str	r2, [r7, #4]
 8002306:	68fb      	ldr	r3, [r7, #12]
 8002308:	68d9      	ldr	r1, [r3, #12]
 800230a:	68bb      	ldr	r3, [r7, #8]
 800230c:	68ba      	ldr	r2, [r7, #8]
 800230e:	435a      	muls	r2, r3
 8002310:	0013      	movs	r3, r2
 8002312:	005b      	lsls	r3, r3, #1
 8002314:	189b      	adds	r3, r3, r2
 8002316:	43db      	mvns	r3, r3
 8002318:	400b      	ands	r3, r1
 800231a:	001a      	movs	r2, r3
 800231c:	68bb      	ldr	r3, [r7, #8]
 800231e:	68b9      	ldr	r1, [r7, #8]
 8002320:	434b      	muls	r3, r1
 8002322:	6879      	ldr	r1, [r7, #4]
 8002324:	434b      	muls	r3, r1
 8002326:	431a      	orrs	r2, r3
 8002328:	68fb      	ldr	r3, [r7, #12]
 800232a:	60da      	str	r2, [r3, #12]
 800232c:	46c0      	nop			; (mov r8, r8)
 800232e:	46bd      	mov	sp, r7
 8002330:	b004      	add	sp, #16
 8002332:	bd80      	pop	{r7, pc}

08002334 <LL_GPIO_SetAFPin_0_7>:
 8002334:	b580      	push	{r7, lr}
 8002336:	b084      	sub	sp, #16
 8002338:	af00      	add	r7, sp, #0
 800233a:	60f8      	str	r0, [r7, #12]
 800233c:	60b9      	str	r1, [r7, #8]
 800233e:	607a      	str	r2, [r7, #4]
 8002340:	68fb      	ldr	r3, [r7, #12]
 8002342:	6a19      	ldr	r1, [r3, #32]
 8002344:	68bb      	ldr	r3, [r7, #8]
 8002346:	68ba      	ldr	r2, [r7, #8]
 8002348:	4353      	muls	r3, r2
 800234a:	68ba      	ldr	r2, [r7, #8]
 800234c:	4353      	muls	r3, r2
 800234e:	68ba      	ldr	r2, [r7, #8]
 8002350:	435a      	muls	r2, r3
 8002352:	0013      	movs	r3, r2
 8002354:	011b      	lsls	r3, r3, #4
 8002356:	1a9b      	subs	r3, r3, r2
 8002358:	43db      	mvns	r3, r3
 800235a:	400b      	ands	r3, r1
 800235c:	001a      	movs	r2, r3
 800235e:	68bb      	ldr	r3, [r7, #8]
 8002360:	68b9      	ldr	r1, [r7, #8]
 8002362:	434b      	muls	r3, r1
 8002364:	68b9      	ldr	r1, [r7, #8]
 8002366:	434b      	muls	r3, r1
 8002368:	68b9      	ldr	r1, [r7, #8]
 800236a:	434b      	muls	r3, r1
 800236c:	6879      	ldr	r1, [r7, #4]
 800236e:	434b      	muls	r3, r1
 8002370:	431a      	orrs	r2, r3
 8002372:	68fb      	ldr	r3, [r7, #12]
 8002374:	621a      	str	r2, [r3, #32]
 8002376:	46c0      	nop			; (mov r8, r8)
 8002378:	46bd      	mov	sp, r7
 800237a:	b004      	add	sp, #16
 800237c:	bd80      	pop	{r7, pc}

0800237e <LL_GPIO_SetAFPin_8_15>:
 800237e:	b580      	push	{r7, lr}
 8002380:	b084      	sub	sp, #16
 8002382:	af00      	add	r7, sp, #0
 8002384:	60f8      	str	r0, [r7, #12]
 8002386:	60b9      	str	r1, [r7, #8]
 8002388:	607a      	str	r2, [r7, #4]
 800238a:	68fb      	ldr	r3, [r7, #12]
 800238c:	6a59      	ldr	r1, [r3, #36]	; 0x24
 800238e:	68bb      	ldr	r3, [r7, #8]
 8002390:	0a1b      	lsrs	r3, r3, #8
 8002392:	68ba      	ldr	r2, [r7, #8]
 8002394:	0a12      	lsrs	r2, r2, #8
 8002396:	4353      	muls	r3, r2
 8002398:	68ba      	ldr	r2, [r7, #8]
 800239a:	0a12      	lsrs	r2, r2, #8
 800239c:	4353      	muls	r3, r2
 800239e:	68ba      	ldr	r2, [r7, #8]
 80023a0:	0a12      	lsrs	r2, r2, #8
 80023a2:	435a      	muls	r2, r3
 80023a4:	0013      	movs	r3, r2
 80023a6:	011b      	lsls	r3, r3, #4
 80023a8:	1a9b      	subs	r3, r3, r2
 80023aa:	43db      	mvns	r3, r3
 80023ac:	400b      	ands	r3, r1
 80023ae:	001a      	movs	r2, r3
 80023b0:	68bb      	ldr	r3, [r7, #8]
 80023b2:	0a1b      	lsrs	r3, r3, #8
 80023b4:	68b9      	ldr	r1, [r7, #8]
 80023b6:	0a09      	lsrs	r1, r1, #8
 80023b8:	434b      	muls	r3, r1
 80023ba:	68b9      	ldr	r1, [r7, #8]
 80023bc:	0a09      	lsrs	r1, r1, #8
 80023be:	434b      	muls	r3, r1
 80023c0:	68b9      	ldr	r1, [r7, #8]
 80023c2:	0a09      	lsrs	r1, r1, #8
 80023c4:	434b      	muls	r3, r1
 80023c6:	6879      	ldr	r1, [r7, #4]
 80023c8:	434b      	muls	r3, r1
 80023ca:	431a      	orrs	r2, r3
 80023cc:	68fb      	ldr	r3, [r7, #12]
 80023ce:	625a      	str	r2, [r3, #36]	; 0x24
 80023d0:	46c0      	nop			; (mov r8, r8)
 80023d2:	46bd      	mov	sp, r7
 80023d4:	b004      	add	sp, #16
 80023d6:	bd80      	pop	{r7, pc}

080023d8 <LL_USART_Enable>:
 80023d8:	b580      	push	{r7, lr}
 80023da:	b082      	sub	sp, #8
 80023dc:	af00      	add	r7, sp, #0
 80023de:	6078      	str	r0, [r7, #4]
 80023e0:	687b      	ldr	r3, [r7, #4]
 80023e2:	681b      	ldr	r3, [r3, #0]
 80023e4:	2201      	movs	r2, #1
 80023e6:	431a      	orrs	r2, r3
 80023e8:	687b      	ldr	r3, [r7, #4]
 80023ea:	601a      	str	r2, [r3, #0]
 80023ec:	46c0      	nop			; (mov r8, r8)
 80023ee:	46bd      	mov	sp, r7
 80023f0:	b002      	add	sp, #8
 80023f2:	bd80      	pop	{r7, pc}

080023f4 <LL_USART_SetTransferDirection>:
 80023f4:	b580      	push	{r7, lr}
 80023f6:	b082      	sub	sp, #8
 80023f8:	af00      	add	r7, sp, #0
 80023fa:	6078      	str	r0, [r7, #4]
 80023fc:	6039      	str	r1, [r7, #0]
 80023fe:	687b      	ldr	r3, [r7, #4]
 8002400:	681b      	ldr	r3, [r3, #0]
 8002402:	220c      	movs	r2, #12
 8002404:	4393      	bics	r3, r2
 8002406:	001a      	movs	r2, r3
 8002408:	683b      	ldr	r3, [r7, #0]
 800240a:	431a      	orrs	r2, r3
 800240c:	687b      	ldr	r3, [r7, #4]
 800240e:	601a      	str	r2, [r3, #0]
 8002410:	46c0      	nop			; (mov r8, r8)
 8002412:	46bd      	mov	sp, r7
 8002414:	b002      	add	sp, #8
 8002416:	bd80      	pop	{r7, pc}

08002418 <LL_USART_SetParity>:
 8002418:	b580      	push	{r7, lr}
 800241a:	b082      	sub	sp, #8
 800241c:	af00      	add	r7, sp, #0
 800241e:	6078      	str	r0, [r7, #4]
 8002420:	6039      	str	r1, [r7, #0]
 8002422:	687b      	ldr	r3, [r7, #4]
 8002424:	681b      	ldr	r3, [r3, #0]
 8002426:	4a05      	ldr	r2, [pc, #20]	; (800243c <LL_USART_SetParity+0x24>)
 8002428:	401a      	ands	r2, r3
 800242a:	683b      	ldr	r3, [r7, #0]
 800242c:	431a      	orrs	r2, r3
 800242e:	687b      	ldr	r3, [r7, #4]
 8002430:	601a      	str	r2, [r3, #0]
 8002432:	46c0      	nop			; (mov r8, r8)
 8002434:	46bd      	mov	sp, r7
 8002436:	b002      	add	sp, #8
 8002438:	bd80      	pop	{r7, pc}
 800243a:	46c0      	nop			; (mov r8, r8)
 800243c:	fffff9ff 	.word	0xfffff9ff

08002440 <LL_USART_SetDataWidth>:
 8002440:	b580      	push	{r7, lr}
 8002442:	b082      	sub	sp, #8
 8002444:	af00      	add	r7, sp, #0
 8002446:	6078      	str	r0, [r7, #4]
 8002448:	6039      	str	r1, [r7, #0]
 800244a:	687b      	ldr	r3, [r7, #4]
 800244c:	681b      	ldr	r3, [r3, #0]
 800244e:	4a05      	ldr	r2, [pc, #20]	; (8002464 <LL_USART_SetDataWidth+0x24>)
 8002450:	401a      	ands	r2, r3
 8002452:	683b      	ldr	r3, [r7, #0]
 8002454:	431a      	orrs	r2, r3
 8002456:	687b      	ldr	r3, [r7, #4]
 8002458:	601a      	str	r2, [r3, #0]
 800245a:	46c0      	nop			; (mov r8, r8)
 800245c:	46bd      	mov	sp, r7
 800245e:	b002      	add	sp, #8
 8002460:	bd80      	pop	{r7, pc}
 8002462:	46c0      	nop			; (mov r8, r8)
 8002464:	ffffefff 	.word	0xffffefff

08002468 <LL_USART_SetStopBitsLength>:
 8002468:	b580      	push	{r7, lr}
 800246a:	b082      	sub	sp, #8
 800246c:	af00      	add	r7, sp, #0
 800246e:	6078      	str	r0, [r7, #4]
 8002470:	6039      	str	r1, [r7, #0]
 8002472:	687b      	ldr	r3, [r7, #4]
 8002474:	685b      	ldr	r3, [r3, #4]
 8002476:	4a05      	ldr	r2, [pc, #20]	; (800248c <LL_USART_SetStopBitsLength+0x24>)
 8002478:	401a      	ands	r2, r3
 800247a:	683b      	ldr	r3, [r7, #0]
 800247c:	431a      	orrs	r2, r3
 800247e:	687b      	ldr	r3, [r7, #4]
 8002480:	605a      	str	r2, [r3, #4]
 8002482:	46c0      	nop			; (mov r8, r8)
 8002484:	46bd      	mov	sp, r7
 8002486:	b002      	add	sp, #8
 8002488:	bd80      	pop	{r7, pc}
 800248a:	46c0      	nop			; (mov r8, r8)
 800248c:	ffffcfff 	.word	0xffffcfff

08002490 <LL_USART_SetTransferBitOrder>:
 8002490:	b580      	push	{r7, lr}
 8002492:	b082      	sub	sp, #8
 8002494:	af00      	add	r7, sp, #0
 8002496:	6078      	str	r0, [r7, #4]
 8002498:	6039      	str	r1, [r7, #0]
 800249a:	687b      	ldr	r3, [r7, #4]
 800249c:	685b      	ldr	r3, [r3, #4]
 800249e:	4a05      	ldr	r2, [pc, #20]	; (80024b4 <LL_USART_SetTransferBitOrder+0x24>)
 80024a0:	401a      	ands	r2, r3
 80024a2:	683b      	ldr	r3, [r7, #0]
 80024a4:	431a      	orrs	r2, r3
 80024a6:	687b      	ldr	r3, [r7, #4]
 80024a8:	605a      	str	r2, [r3, #4]
 80024aa:	46c0      	nop			; (mov r8, r8)
 80024ac:	46bd      	mov	sp, r7
 80024ae:	b002      	add	sp, #8
 80024b0:	bd80      	pop	{r7, pc}
 80024b2:	46c0      	nop			; (mov r8, r8)
 80024b4:	fff7ffff 	.word	0xfff7ffff

080024b8 <LL_USART_SetBaudRate>:
 80024b8:	b5b0      	push	{r4, r5, r7, lr}
 80024ba:	b084      	sub	sp, #16
 80024bc:	af00      	add	r7, sp, #0
 80024be:	60f8      	str	r0, [r7, #12]
 80024c0:	60b9      	str	r1, [r7, #8]
 80024c2:	607a      	str	r2, [r7, #4]
 80024c4:	603b      	str	r3, [r7, #0]
 80024c6:	2500      	movs	r5, #0
 80024c8:	2400      	movs	r4, #0
 80024ca:	687a      	ldr	r2, [r7, #4]
 80024cc:	2380      	movs	r3, #128	; 0x80
 80024ce:	021b      	lsls	r3, r3, #8
 80024d0:	429a      	cmp	r2, r3
 80024d2:	d117      	bne.n	8002504 <LL_USART_SetBaudRate+0x4c>
 80024d4:	68bb      	ldr	r3, [r7, #8]
 80024d6:	005a      	lsls	r2, r3, #1
 80024d8:	683b      	ldr	r3, [r7, #0]
 80024da:	085b      	lsrs	r3, r3, #1
 80024dc:	18d3      	adds	r3, r2, r3
 80024de:	6839      	ldr	r1, [r7, #0]
 80024e0:	0018      	movs	r0, r3
 80024e2:	f7fd fe11 	bl	8000108 <__udivsi3>
 80024e6:	0003      	movs	r3, r0
 80024e8:	b29b      	uxth	r3, r3
 80024ea:	001d      	movs	r5, r3
 80024ec:	4b0e      	ldr	r3, [pc, #56]	; (8002528 <LL_USART_SetBaudRate+0x70>)
 80024ee:	402b      	ands	r3, r5
 80024f0:	001c      	movs	r4, r3
 80024f2:	086b      	lsrs	r3, r5, #1
 80024f4:	b29b      	uxth	r3, r3
 80024f6:	001a      	movs	r2, r3
 80024f8:	2307      	movs	r3, #7
 80024fa:	4013      	ands	r3, r2
 80024fc:	431c      	orrs	r4, r3
 80024fe:	68fb      	ldr	r3, [r7, #12]
 8002500:	60dc      	str	r4, [r3, #12]
 8002502:	e00c      	b.n	800251e <LL_USART_SetBaudRate+0x66>
 8002504:	683b      	ldr	r3, [r7, #0]
 8002506:	085a      	lsrs	r2, r3, #1
 8002508:	68bb      	ldr	r3, [r7, #8]
 800250a:	18d3      	adds	r3, r2, r3
 800250c:	6839      	ldr	r1, [r7, #0]
 800250e:	0018      	movs	r0, r3
 8002510:	f7fd fdfa 	bl	8000108 <__udivsi3>
 8002514:	0003      	movs	r3, r0
 8002516:	b29b      	uxth	r3, r3
 8002518:	001a      	movs	r2, r3
 800251a:	68fb      	ldr	r3, [r7, #12]
 800251c:	60da      	str	r2, [r3, #12]
 800251e:	46c0      	nop			; (mov r8, r8)
 8002520:	46bd      	mov	sp, r7
 8002522:	b004      	add	sp, #16
 8002524:	bdb0      	pop	{r4, r5, r7, pc}
 8002526:	46c0      	nop			; (mov r8, r8)
 8002528:	0000fff0 	.word	0x0000fff0

0800252c <LL_USART_IsActiveFlag_TEACK>:
 800252c:	b580      	push	{r7, lr}
 800252e:	b082      	sub	sp, #8
 8002530:	af00      	add	r7, sp, #0
 8002532:	6078      	str	r0, [r7, #4]
 8002534:	687b      	ldr	r3, [r7, #4]
 8002536:	69da      	ldr	r2, [r3, #28]
 8002538:	2380      	movs	r3, #128	; 0x80
 800253a:	039b      	lsls	r3, r3, #14
 800253c:	4013      	ands	r3, r2
 800253e:	4a05      	ldr	r2, [pc, #20]	; (8002554 <LL_USART_IsActiveFlag_TEACK+0x28>)
 8002540:	4694      	mov	ip, r2
 8002542:	4463      	add	r3, ip
 8002544:	425a      	negs	r2, r3
 8002546:	4153      	adcs	r3, r2
 8002548:	b2db      	uxtb	r3, r3
 800254a:	0018      	movs	r0, r3
 800254c:	46bd      	mov	sp, r7
 800254e:	b002      	add	sp, #8
 8002550:	bd80      	pop	{r7, pc}
 8002552:	46c0      	nop			; (mov r8, r8)
 8002554:	ffe00000 	.word	0xffe00000

08002558 <LL_USART_IsActiveFlag_REACK>:
 8002558:	b580      	push	{r7, lr}
 800255a:	b082      	sub	sp, #8
 800255c:	af00      	add	r7, sp, #0
 800255e:	6078      	str	r0, [r7, #4]
 8002560:	687b      	ldr	r3, [r7, #4]
 8002562:	69da      	ldr	r2, [r3, #28]
 8002564:	2380      	movs	r3, #128	; 0x80
 8002566:	03db      	lsls	r3, r3, #15
 8002568:	4013      	ands	r3, r2
 800256a:	4a05      	ldr	r2, [pc, #20]	; (8002580 <LL_USART_IsActiveFlag_REACK+0x28>)
 800256c:	4694      	mov	ip, r2
 800256e:	4463      	add	r3, ip
 8002570:	425a      	negs	r2, r3
 8002572:	4153      	adcs	r3, r2
 8002574:	b2db      	uxtb	r3, r3
 8002576:	0018      	movs	r0, r3
 8002578:	46bd      	mov	sp, r7
 800257a:	b002      	add	sp, #8
 800257c:	bd80      	pop	{r7, pc}
 800257e:	46c0      	nop			; (mov r8, r8)
 8002580:	ffc00000 	.word	0xffc00000

08002584 <LL_I2C_Enable>:
 8002584:	b580      	push	{r7, lr}
 8002586:	b082      	sub	sp, #8
 8002588:	af00      	add	r7, sp, #0
 800258a:	6078      	str	r0, [r7, #4]
 800258c:	687b      	ldr	r3, [r7, #4]
 800258e:	681b      	ldr	r3, [r3, #0]
 8002590:	2201      	movs	r2, #1
 8002592:	431a      	orrs	r2, r3
 8002594:	687b      	ldr	r3, [r7, #4]
 8002596:	601a      	str	r2, [r3, #0]
 8002598:	46c0      	nop			; (mov r8, r8)
 800259a:	46bd      	mov	sp, r7
 800259c:	b002      	add	sp, #8
 800259e:	bd80      	pop	{r7, pc}

080025a0 <LL_I2C_Disable>:
 80025a0:	b580      	push	{r7, lr}
 80025a2:	b082      	sub	sp, #8
 80025a4:	af00      	add	r7, sp, #0
 80025a6:	6078      	str	r0, [r7, #4]
 80025a8:	687b      	ldr	r3, [r7, #4]
 80025aa:	681b      	ldr	r3, [r3, #0]
 80025ac:	2201      	movs	r2, #1
 80025ae:	4393      	bics	r3, r2
 80025b0:	001a      	movs	r2, r3
 80025b2:	687b      	ldr	r3, [r7, #4]
 80025b4:	601a      	str	r2, [r3, #0]
 80025b6:	46c0      	nop			; (mov r8, r8)
 80025b8:	46bd      	mov	sp, r7
 80025ba:	b002      	add	sp, #8
 80025bc:	bd80      	pop	{r7, pc}
	...

080025c0 <LL_I2C_SetDigitalFilter>:
 80025c0:	b580      	push	{r7, lr}
 80025c2:	b082      	sub	sp, #8
 80025c4:	af00      	add	r7, sp, #0
 80025c6:	6078      	str	r0, [r7, #4]
 80025c8:	6039      	str	r1, [r7, #0]
 80025ca:	687b      	ldr	r3, [r7, #4]
 80025cc:	681b      	ldr	r3, [r3, #0]
 80025ce:	4a05      	ldr	r2, [pc, #20]	; (80025e4 <LL_I2C_SetDigitalFilter+0x24>)
 80025d0:	401a      	ands	r2, r3
 80025d2:	683b      	ldr	r3, [r7, #0]
 80025d4:	021b      	lsls	r3, r3, #8
 80025d6:	431a      	orrs	r2, r3
 80025d8:	687b      	ldr	r3, [r7, #4]
 80025da:	601a      	str	r2, [r3, #0]
 80025dc:	46c0      	nop			; (mov r8, r8)
 80025de:	46bd      	mov	sp, r7
 80025e0:	b002      	add	sp, #8
 80025e2:	bd80      	pop	{r7, pc}
 80025e4:	fffff0ff 	.word	0xfffff0ff

080025e8 <LL_I2C_DisableAnalogFilter>:
 80025e8:	b580      	push	{r7, lr}
 80025ea:	b082      	sub	sp, #8
 80025ec:	af00      	add	r7, sp, #0
 80025ee:	6078      	str	r0, [r7, #4]
 80025f0:	687b      	ldr	r3, [r7, #4]
 80025f2:	681b      	ldr	r3, [r3, #0]
 80025f4:	2280      	movs	r2, #128	; 0x80
 80025f6:	0152      	lsls	r2, r2, #5
 80025f8:	431a      	orrs	r2, r3
 80025fa:	687b      	ldr	r3, [r7, #4]
 80025fc:	601a      	str	r2, [r3, #0]
 80025fe:	46c0      	nop			; (mov r8, r8)
 8002600:	46bd      	mov	sp, r7
 8002602:	b002      	add	sp, #8
 8002604:	bd80      	pop	{r7, pc}

08002606 <LL_I2C_DisableClockStretching>:
 8002606:	b580      	push	{r7, lr}
 8002608:	b082      	sub	sp, #8
 800260a:	af00      	add	r7, sp, #0
 800260c:	6078      	str	r0, [r7, #4]
 800260e:	687b      	ldr	r3, [r7, #4]
 8002610:	681b      	ldr	r3, [r3, #0]
 8002612:	2280      	movs	r2, #128	; 0x80
 8002614:	0292      	lsls	r2, r2, #10
 8002616:	431a      	orrs	r2, r3
 8002618:	687b      	ldr	r3, [r7, #4]
 800261a:	601a      	str	r2, [r3, #0]
 800261c:	46c0      	nop			; (mov r8, r8)
 800261e:	46bd      	mov	sp, r7
 8002620:	b002      	add	sp, #8
 8002622:	bd80      	pop	{r7, pc}

08002624 <LL_I2C_SetMasterAddressingMode>:
 8002624:	b580      	push	{r7, lr}
 8002626:	b082      	sub	sp, #8
 8002628:	af00      	add	r7, sp, #0
 800262a:	6078      	str	r0, [r7, #4]
 800262c:	6039      	str	r1, [r7, #0]
 800262e:	687b      	ldr	r3, [r7, #4]
 8002630:	685b      	ldr	r3, [r3, #4]
 8002632:	4a05      	ldr	r2, [pc, #20]	; (8002648 <LL_I2C_SetMasterAddressingMode+0x24>)
 8002634:	401a      	ands	r2, r3
 8002636:	683b      	ldr	r3, [r7, #0]
 8002638:	431a      	orrs	r2, r3
 800263a:	687b      	ldr	r3, [r7, #4]
 800263c:	605a      	str	r2, [r3, #4]
 800263e:	46c0      	nop			; (mov r8, r8)
 8002640:	46bd      	mov	sp, r7
 8002642:	b002      	add	sp, #8
 8002644:	bd80      	pop	{r7, pc}
 8002646:	46c0      	nop			; (mov r8, r8)
 8002648:	fffff7ff 	.word	0xfffff7ff

0800264c <LL_I2C_SetTiming>:
 800264c:	b580      	push	{r7, lr}
 800264e:	b082      	sub	sp, #8
 8002650:	af00      	add	r7, sp, #0
 8002652:	6078      	str	r0, [r7, #4]
 8002654:	6039      	str	r1, [r7, #0]
 8002656:	687b      	ldr	r3, [r7, #4]
 8002658:	683a      	ldr	r2, [r7, #0]
 800265a:	611a      	str	r2, [r3, #16]
 800265c:	46c0      	nop			; (mov r8, r8)
 800265e:	46bd      	mov	sp, r7
 8002660:	b002      	add	sp, #8
 8002662:	bd80      	pop	{r7, pc}

08002664 <LL_I2C_SetMode>:
 8002664:	b580      	push	{r7, lr}
 8002666:	b082      	sub	sp, #8
 8002668:	af00      	add	r7, sp, #0
 800266a:	6078      	str	r0, [r7, #4]
 800266c:	6039      	str	r1, [r7, #0]
 800266e:	687b      	ldr	r3, [r7, #4]
 8002670:	681b      	ldr	r3, [r3, #0]
 8002672:	4a05      	ldr	r2, [pc, #20]	; (8002688 <LL_I2C_SetMode+0x24>)
 8002674:	401a      	ands	r2, r3
 8002676:	683b      	ldr	r3, [r7, #0]
 8002678:	431a      	orrs	r2, r3
 800267a:	687b      	ldr	r3, [r7, #4]
 800267c:	601a      	str	r2, [r3, #0]
 800267e:	46c0      	nop			; (mov r8, r8)
 8002680:	46bd      	mov	sp, r7
 8002682:	b002      	add	sp, #8
 8002684:	bd80      	pop	{r7, pc}
 8002686:	46c0      	nop			; (mov r8, r8)
 8002688:	ffcfffff 	.word	0xffcfffff

0800268c <rcc_config>:
 800268c:	b580      	push	{r7, lr}
 800268e:	af00      	add	r7, sp, #0
 8002690:	2001      	movs	r0, #1
 8002692:	f7ff fd8d 	bl	80021b0 <LL_FLASH_SetLatency>
 8002696:	f7ff fcad 	bl	8001ff4 <LL_RCC_HSI_Enable>
 800269a:	46c0      	nop			; (mov r8, r8)
 800269c:	f7ff fcb8 	bl	8002010 <LL_RCC_HSI_IsReady>
 80026a0:	0003      	movs	r3, r0
 80026a2:	2b01      	cmp	r3, #1
 80026a4:	d1fa      	bne.n	800269c <rcc_config+0x10>
 80026a6:	23a0      	movs	r3, #160	; 0xa0
 80026a8:	039b      	lsls	r3, r3, #14
 80026aa:	0019      	movs	r1, r3
 80026ac:	2000      	movs	r0, #0
 80026ae:	f7ff fd59 	bl	8002164 <LL_RCC_PLL_ConfigDomain_SYS>
 80026b2:	f7ff fd35 	bl	8002120 <LL_RCC_PLL_Enable>
 80026b6:	46c0      	nop			; (mov r8, r8)
 80026b8:	f7ff fd40 	bl	800213c <LL_RCC_PLL_IsReady>
 80026bc:	0003      	movs	r3, r0
 80026be:	2b01      	cmp	r3, #1
 80026c0:	d1fa      	bne.n	80026b8 <rcc_config+0x2c>
 80026c2:	2000      	movs	r0, #0
 80026c4:	f7ff fcd4 	bl	8002070 <LL_RCC_SetAHBPrescaler>
 80026c8:	2002      	movs	r0, #2
 80026ca:	f7ff fcb1 	bl	8002030 <LL_RCC_SetSysClkSource>
 80026ce:	46c0      	nop			; (mov r8, r8)
 80026d0:	f7ff fcc2 	bl	8002058 <LL_RCC_GetSysClkSource>
 80026d4:	0003      	movs	r3, r0
 80026d6:	2b08      	cmp	r3, #8
 80026d8:	d1fa      	bne.n	80026d0 <rcc_config+0x44>
 80026da:	2000      	movs	r0, #0
 80026dc:	f7ff fcdc 	bl	8002098 <LL_RCC_SetAPB1Prescaler>
 80026e0:	4b02      	ldr	r3, [pc, #8]	; (80026ec <rcc_config+0x60>)
 80026e2:	4a03      	ldr	r2, [pc, #12]	; (80026f0 <rcc_config+0x64>)
 80026e4:	601a      	str	r2, [r3, #0]
 80026e6:	46c0      	nop			; (mov r8, r8)
 80026e8:	46bd      	mov	sp, r7
 80026ea:	bd80      	pop	{r7, pc}
 80026ec:	20000000 	.word	0x20000000
 80026f0:	02dc6c00 	.word	0x02dc6c00

080026f4 <gpio_config>:
 80026f4:	b580      	push	{r7, lr}
 80026f6:	af00      	add	r7, sp, #0
 80026f8:	2380      	movs	r3, #128	; 0x80
 80026fa:	031b      	lsls	r3, r3, #12
 80026fc:	0018      	movs	r0, r3
 80026fe:	f7ff fd6b 	bl	80021d8 <LL_AHB1_GRP1_EnableClock>
 8002702:	2380      	movs	r3, #128	; 0x80
 8002704:	005b      	lsls	r3, r3, #1
 8002706:	4804      	ldr	r0, [pc, #16]	; (8002718 <gpio_config+0x24>)
 8002708:	2201      	movs	r2, #1
 800270a:	0019      	movs	r1, r3
 800270c:	f7ff fda6 	bl	800225c <LL_GPIO_SetPinMode>
 8002710:	46c0      	nop			; (mov r8, r8)
 8002712:	46bd      	mov	sp, r7
 8002714:	bd80      	pop	{r7, pc}
 8002716:	46c0      	nop			; (mov r8, r8)
 8002718:	48000800 	.word	0x48000800

0800271c <exti_config>:
 800271c:	b580      	push	{r7, lr}
 800271e:	af00      	add	r7, sp, #0
 8002720:	46c0      	nop			; (mov r8, r8)
 8002722:	46bd      	mov	sp, r7
 8002724:	bd80      	pop	{r7, pc}
	...

08002728 <usart_config>:
 8002728:	b580      	push	{r7, lr}
 800272a:	af00      	add	r7, sp, #0
 800272c:	2380      	movs	r3, #128	; 0x80
 800272e:	029b      	lsls	r3, r3, #10
 8002730:	0018      	movs	r0, r3
 8002732:	f7ff fd51 	bl	80021d8 <LL_AHB1_GRP1_EnableClock>
 8002736:	2380      	movs	r3, #128	; 0x80
 8002738:	0099      	lsls	r1, r3, #2
 800273a:	2390      	movs	r3, #144	; 0x90
 800273c:	05db      	lsls	r3, r3, #23
 800273e:	2202      	movs	r2, #2
 8002740:	0018      	movs	r0, r3
 8002742:	f7ff fd8b 	bl	800225c <LL_GPIO_SetPinMode>
 8002746:	2380      	movs	r3, #128	; 0x80
 8002748:	0099      	lsls	r1, r3, #2
 800274a:	2390      	movs	r3, #144	; 0x90
 800274c:	05db      	lsls	r3, r3, #23
 800274e:	2201      	movs	r2, #1
 8002750:	0018      	movs	r0, r3
 8002752:	f7ff fe14 	bl	800237e <LL_GPIO_SetAFPin_8_15>
 8002756:	2380      	movs	r3, #128	; 0x80
 8002758:	0099      	lsls	r1, r3, #2
 800275a:	2390      	movs	r3, #144	; 0x90
 800275c:	05db      	lsls	r3, r3, #23
 800275e:	2203      	movs	r2, #3
 8002760:	0018      	movs	r0, r3
 8002762:	f7ff fdad 	bl	80022c0 <LL_GPIO_SetPinSpeed>
 8002766:	2380      	movs	r3, #128	; 0x80
 8002768:	00d9      	lsls	r1, r3, #3
 800276a:	2390      	movs	r3, #144	; 0x90
 800276c:	05db      	lsls	r3, r3, #23
 800276e:	2202      	movs	r2, #2
 8002770:	0018      	movs	r0, r3
 8002772:	f7ff fd73 	bl	800225c <LL_GPIO_SetPinMode>
 8002776:	2380      	movs	r3, #128	; 0x80
 8002778:	00d9      	lsls	r1, r3, #3
 800277a:	2390      	movs	r3, #144	; 0x90
 800277c:	05db      	lsls	r3, r3, #23
 800277e:	2201      	movs	r2, #1
 8002780:	0018      	movs	r0, r3
 8002782:	f7ff fdfc 	bl	800237e <LL_GPIO_SetAFPin_8_15>
 8002786:	2380      	movs	r3, #128	; 0x80
 8002788:	00d9      	lsls	r1, r3, #3
 800278a:	2390      	movs	r3, #144	; 0x90
 800278c:	05db      	lsls	r3, r3, #23
 800278e:	2203      	movs	r2, #3
 8002790:	0018      	movs	r0, r3
 8002792:	f7ff fd95 	bl	80022c0 <LL_GPIO_SetPinSpeed>
 8002796:	2380      	movs	r3, #128	; 0x80
 8002798:	01db      	lsls	r3, r3, #7
 800279a:	0018      	movs	r0, r3
 800279c:	f7ff fd48 	bl	8002230 <LL_APB1_GRP2_EnableClock>
 80027a0:	2000      	movs	r0, #0
 80027a2:	f7ff fc8f 	bl	80020c4 <LL_RCC_SetUSARTClockSource>
 80027a6:	4b1a      	ldr	r3, [pc, #104]	; (8002810 <usart_config+0xe8>)
 80027a8:	210c      	movs	r1, #12
 80027aa:	0018      	movs	r0, r3
 80027ac:	f7ff fe22 	bl	80023f4 <LL_USART_SetTransferDirection>
 80027b0:	4b17      	ldr	r3, [pc, #92]	; (8002810 <usart_config+0xe8>)
 80027b2:	2100      	movs	r1, #0
 80027b4:	0018      	movs	r0, r3
 80027b6:	f7ff fe2f 	bl	8002418 <LL_USART_SetParity>
 80027ba:	4b15      	ldr	r3, [pc, #84]	; (8002810 <usart_config+0xe8>)
 80027bc:	2100      	movs	r1, #0
 80027be:	0018      	movs	r0, r3
 80027c0:	f7ff fe3e 	bl	8002440 <LL_USART_SetDataWidth>
 80027c4:	4b12      	ldr	r3, [pc, #72]	; (8002810 <usart_config+0xe8>)
 80027c6:	2100      	movs	r1, #0
 80027c8:	0018      	movs	r0, r3
 80027ca:	f7ff fe4d 	bl	8002468 <LL_USART_SetStopBitsLength>
 80027ce:	4b10      	ldr	r3, [pc, #64]	; (8002810 <usart_config+0xe8>)
 80027d0:	2100      	movs	r1, #0
 80027d2:	0018      	movs	r0, r3
 80027d4:	f7ff fe5c 	bl	8002490 <LL_USART_SetTransferBitOrder>
 80027d8:	4b0e      	ldr	r3, [pc, #56]	; (8002814 <usart_config+0xec>)
 80027da:	6819      	ldr	r1, [r3, #0]
 80027dc:	23e1      	movs	r3, #225	; 0xe1
 80027de:	025b      	lsls	r3, r3, #9
 80027e0:	480b      	ldr	r0, [pc, #44]	; (8002810 <usart_config+0xe8>)
 80027e2:	2200      	movs	r2, #0
 80027e4:	f7ff fe68 	bl	80024b8 <LL_USART_SetBaudRate>
 80027e8:	4b09      	ldr	r3, [pc, #36]	; (8002810 <usart_config+0xe8>)
 80027ea:	0018      	movs	r0, r3
 80027ec:	f7ff fdf4 	bl	80023d8 <LL_USART_Enable>
 80027f0:	46c0      	nop			; (mov r8, r8)
 80027f2:	4b07      	ldr	r3, [pc, #28]	; (8002810 <usart_config+0xe8>)
 80027f4:	0018      	movs	r0, r3
 80027f6:	f7ff fe99 	bl	800252c <LL_USART_IsActiveFlag_TEACK>
 80027fa:	1e03      	subs	r3, r0, #0
 80027fc:	d0f9      	beq.n	80027f2 <usart_config+0xca>
 80027fe:	4b04      	ldr	r3, [pc, #16]	; (8002810 <usart_config+0xe8>)
 8002800:	0018      	movs	r0, r3
 8002802:	f7ff fea9 	bl	8002558 <LL_USART_IsActiveFlag_REACK>
 8002806:	1e03      	subs	r3, r0, #0
 8002808:	d0f3      	beq.n	80027f2 <usart_config+0xca>
 800280a:	46c0      	nop			; (mov r8, r8)
 800280c:	46bd      	mov	sp, r7
 800280e:	bd80      	pop	{r7, pc}
 8002810:	40013800 	.word	0x40013800
 8002814:	20000000 	.word	0x20000000

08002818 <i2c_config>:
 8002818:	b580      	push	{r7, lr}
 800281a:	af00      	add	r7, sp, #0
 800281c:	2380      	movs	r3, #128	; 0x80
 800281e:	02db      	lsls	r3, r3, #11
 8002820:	0018      	movs	r0, r3
 8002822:	f7ff fcd9 	bl	80021d8 <LL_AHB1_GRP1_EnableClock>
 8002826:	4b36      	ldr	r3, [pc, #216]	; (8002900 <i2c_config+0xe8>)
 8002828:	2202      	movs	r2, #2
 800282a:	2140      	movs	r1, #64	; 0x40
 800282c:	0018      	movs	r0, r3
 800282e:	f7ff fd15 	bl	800225c <LL_GPIO_SetPinMode>
 8002832:	4b33      	ldr	r3, [pc, #204]	; (8002900 <i2c_config+0xe8>)
 8002834:	2201      	movs	r2, #1
 8002836:	2140      	movs	r1, #64	; 0x40
 8002838:	0018      	movs	r0, r3
 800283a:	f7ff fd2c 	bl	8002296 <LL_GPIO_SetPinOutputType>
 800283e:	4b30      	ldr	r3, [pc, #192]	; (8002900 <i2c_config+0xe8>)
 8002840:	2201      	movs	r2, #1
 8002842:	2140      	movs	r1, #64	; 0x40
 8002844:	0018      	movs	r0, r3
 8002846:	f7ff fd58 	bl	80022fa <LL_GPIO_SetPinPull>
 800284a:	4b2d      	ldr	r3, [pc, #180]	; (8002900 <i2c_config+0xe8>)
 800284c:	2201      	movs	r2, #1
 800284e:	2140      	movs	r1, #64	; 0x40
 8002850:	0018      	movs	r0, r3
 8002852:	f7ff fd6f 	bl	8002334 <LL_GPIO_SetAFPin_0_7>
 8002856:	4b2a      	ldr	r3, [pc, #168]	; (8002900 <i2c_config+0xe8>)
 8002858:	2203      	movs	r2, #3
 800285a:	2140      	movs	r1, #64	; 0x40
 800285c:	0018      	movs	r0, r3
 800285e:	f7ff fd2f 	bl	80022c0 <LL_GPIO_SetPinSpeed>
 8002862:	4b27      	ldr	r3, [pc, #156]	; (8002900 <i2c_config+0xe8>)
 8002864:	2202      	movs	r2, #2
 8002866:	2180      	movs	r1, #128	; 0x80
 8002868:	0018      	movs	r0, r3
 800286a:	f7ff fcf7 	bl	800225c <LL_GPIO_SetPinMode>
 800286e:	4b24      	ldr	r3, [pc, #144]	; (8002900 <i2c_config+0xe8>)
 8002870:	2201      	movs	r2, #1
 8002872:	2180      	movs	r1, #128	; 0x80
 8002874:	0018      	movs	r0, r3
 8002876:	f7ff fd0e 	bl	8002296 <LL_GPIO_SetPinOutputType>
 800287a:	4b21      	ldr	r3, [pc, #132]	; (8002900 <i2c_config+0xe8>)
 800287c:	2201      	movs	r2, #1
 800287e:	2180      	movs	r1, #128	; 0x80
 8002880:	0018      	movs	r0, r3
 8002882:	f7ff fd3a 	bl	80022fa <LL_GPIO_SetPinPull>
 8002886:	4b1e      	ldr	r3, [pc, #120]	; (8002900 <i2c_config+0xe8>)
 8002888:	2201      	movs	r2, #1
 800288a:	2180      	movs	r1, #128	; 0x80
 800288c:	0018      	movs	r0, r3
 800288e:	f7ff fd51 	bl	8002334 <LL_GPIO_SetAFPin_0_7>
 8002892:	4b1b      	ldr	r3, [pc, #108]	; (8002900 <i2c_config+0xe8>)
 8002894:	2203      	movs	r2, #3
 8002896:	2180      	movs	r1, #128	; 0x80
 8002898:	0018      	movs	r0, r3
 800289a:	f7ff fd11 	bl	80022c0 <LL_GPIO_SetPinSpeed>
 800289e:	2010      	movs	r0, #16
 80028a0:	f7ff fc2a 	bl	80020f8 <LL_RCC_SetI2CClockSource>
 80028a4:	4b17      	ldr	r3, [pc, #92]	; (8002904 <i2c_config+0xec>)
 80028a6:	0018      	movs	r0, r3
 80028a8:	f7ff fe7a 	bl	80025a0 <LL_I2C_Disable>
 80028ac:	2380      	movs	r3, #128	; 0x80
 80028ae:	039b      	lsls	r3, r3, #14
 80028b0:	0018      	movs	r0, r3
 80028b2:	f7ff fca7 	bl	8002204 <LL_APB1_GRP1_EnableClock>
 80028b6:	4b13      	ldr	r3, [pc, #76]	; (8002904 <i2c_config+0xec>)
 80028b8:	0018      	movs	r0, r3
 80028ba:	f7ff fe95 	bl	80025e8 <LL_I2C_DisableAnalogFilter>
 80028be:	4b11      	ldr	r3, [pc, #68]	; (8002904 <i2c_config+0xec>)
 80028c0:	2101      	movs	r1, #1
 80028c2:	0018      	movs	r0, r3
 80028c4:	f7ff fe7c 	bl	80025c0 <LL_I2C_SetDigitalFilter>
 80028c8:	4a0f      	ldr	r2, [pc, #60]	; (8002908 <i2c_config+0xf0>)
 80028ca:	4b0e      	ldr	r3, [pc, #56]	; (8002904 <i2c_config+0xec>)
 80028cc:	0011      	movs	r1, r2
 80028ce:	0018      	movs	r0, r3
 80028d0:	f7ff febc 	bl	800264c <LL_I2C_SetTiming>
 80028d4:	4b0b      	ldr	r3, [pc, #44]	; (8002904 <i2c_config+0xec>)
 80028d6:	0018      	movs	r0, r3
 80028d8:	f7ff fe95 	bl	8002606 <LL_I2C_DisableClockStretching>
 80028dc:	4b09      	ldr	r3, [pc, #36]	; (8002904 <i2c_config+0xec>)
 80028de:	2100      	movs	r1, #0
 80028e0:	0018      	movs	r0, r3
 80028e2:	f7ff fe9f 	bl	8002624 <LL_I2C_SetMasterAddressingMode>
 80028e6:	4b07      	ldr	r3, [pc, #28]	; (8002904 <i2c_config+0xec>)
 80028e8:	2100      	movs	r1, #0
 80028ea:	0018      	movs	r0, r3
 80028ec:	f7ff feba 	bl	8002664 <LL_I2C_SetMode>
 80028f0:	4b04      	ldr	r3, [pc, #16]	; (8002904 <i2c_config+0xec>)
 80028f2:	0018      	movs	r0, r3
 80028f4:	f7ff fe46 	bl	8002584 <LL_I2C_Enable>
 80028f8:	46c0      	nop			; (mov r8, r8)
 80028fa:	46bd      	mov	sp, r7
 80028fc:	bd80      	pop	{r7, pc}
 80028fe:	46c0      	nop			; (mov r8, r8)
 8002900:	48000400 	.word	0x48000400
 8002904:	40005400 	.word	0x40005400
 8002908:	2000090e 	.word	0x2000090e

0800290c <LL_USART_IsActiveFlag_RXNE>:
 800290c:	b580      	push	{r7, lr}
 800290e:	b082      	sub	sp, #8
 8002910:	af00      	add	r7, sp, #0
 8002912:	6078      	str	r0, [r7, #4]
 8002914:	687b      	ldr	r3, [r7, #4]
 8002916:	69db      	ldr	r3, [r3, #28]
 8002918:	2220      	movs	r2, #32
 800291a:	4013      	ands	r3, r2
 800291c:	3b20      	subs	r3, #32
 800291e:	425a      	negs	r2, r3
 8002920:	4153      	adcs	r3, r2
 8002922:	b2db      	uxtb	r3, r3
 8002924:	0018      	movs	r0, r3
 8002926:	46bd      	mov	sp, r7
 8002928:	b002      	add	sp, #8
 800292a:	bd80      	pop	{r7, pc}

0800292c <LL_USART_IsActiveFlag_TC>:
 800292c:	b580      	push	{r7, lr}
 800292e:	b082      	sub	sp, #8
 8002930:	af00      	add	r7, sp, #0
 8002932:	6078      	str	r0, [r7, #4]
 8002934:	687b      	ldr	r3, [r7, #4]
 8002936:	69db      	ldr	r3, [r3, #28]
 8002938:	2240      	movs	r2, #64	; 0x40
 800293a:	4013      	ands	r3, r2
 800293c:	3b40      	subs	r3, #64	; 0x40
 800293e:	425a      	negs	r2, r3
 8002940:	4153      	adcs	r3, r2
 8002942:	b2db      	uxtb	r3, r3
 8002944:	0018      	movs	r0, r3
 8002946:	46bd      	mov	sp, r7
 8002948:	b002      	add	sp, #8
 800294a:	bd80      	pop	{r7, pc}

0800294c <LL_USART_IsActiveFlag_TXE>:
 800294c:	b580      	push	{r7, lr}
 800294e:	b082      	sub	sp, #8
 8002950:	af00      	add	r7, sp, #0
 8002952:	6078      	str	r0, [r7, #4]
 8002954:	687b      	ldr	r3, [r7, #4]
 8002956:	69db      	ldr	r3, [r3, #28]
 8002958:	2280      	movs	r2, #128	; 0x80
 800295a:	4013      	ands	r3, r2
 800295c:	3b80      	subs	r3, #128	; 0x80
 800295e:	425a      	negs	r2, r3
 8002960:	4153      	adcs	r3, r2
 8002962:	b2db      	uxtb	r3, r3
 8002964:	0018      	movs	r0, r3
 8002966:	46bd      	mov	sp, r7
 8002968:	b002      	add	sp, #8
 800296a:	bd80      	pop	{r7, pc}

0800296c <LL_USART_ReceiveData8>:
 800296c:	b580      	push	{r7, lr}
 800296e:	b082      	sub	sp, #8
 8002970:	af00      	add	r7, sp, #0
 8002972:	6078      	str	r0, [r7, #4]
 8002974:	687b      	ldr	r3, [r7, #4]
 8002976:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
 8002978:	b29b      	uxth	r3, r3
 800297a:	b2db      	uxtb	r3, r3
 800297c:	0018      	movs	r0, r3
 800297e:	46bd      	mov	sp, r7
 8002980:	b002      	add	sp, #8
 8002982:	bd80      	pop	{r7, pc}

08002984 <LL_USART_TransmitData8>:
 8002984:	b580      	push	{r7, lr}
 8002986:	b082      	sub	sp, #8
 8002988:	af00      	add	r7, sp, #0
 800298a:	6078      	str	r0, [r7, #4]
 800298c:	000a      	movs	r2, r1
 800298e:	1cfb      	adds	r3, r7, #3
 8002990:	701a      	strb	r2, [r3, #0]
 8002992:	1cfb      	adds	r3, r7, #3
 8002994:	781b      	ldrb	r3, [r3, #0]
 8002996:	b29a      	uxth	r2, r3
 8002998:	687b      	ldr	r3, [r7, #4]
 800299a:	851a      	strh	r2, [r3, #40]	; 0x28
 800299c:	46c0      	nop			; (mov r8, r8)
 800299e:	46bd      	mov	sp, r7
 80029a0:	b002      	add	sp, #8
 80029a2:	bd80      	pop	{r7, pc}

080029a4 <usart_getc>:
 80029a4:	b580      	push	{r7, lr}
 80029a6:	af00      	add	r7, sp, #0
 80029a8:	46c0      	nop			; (mov r8, r8)
 80029aa:	4b07      	ldr	r3, [pc, #28]	; (80029c8 <usart_getc+0x24>)
 80029ac:	0018      	movs	r0, r3
 80029ae:	f7ff ffad 	bl	800290c <LL_USART_IsActiveFlag_RXNE>
 80029b2:	1e03      	subs	r3, r0, #0
 80029b4:	d0f9      	beq.n	80029aa <usart_getc+0x6>
 80029b6:	4b04      	ldr	r3, [pc, #16]	; (80029c8 <usart_getc+0x24>)
 80029b8:	0018      	movs	r0, r3
 80029ba:	f7ff ffd7 	bl	800296c <LL_USART_ReceiveData8>
 80029be:	0003      	movs	r3, r0
 80029c0:	0018      	movs	r0, r3
 80029c2:	46bd      	mov	sp, r7
 80029c4:	bd80      	pop	{r7, pc}
 80029c6:	46c0      	nop			; (mov r8, r8)
 80029c8:	40013800 	.word	0x40013800

080029cc <usart_putc>:
 80029cc:	b580      	push	{r7, lr}
 80029ce:	b082      	sub	sp, #8
 80029d0:	af00      	add	r7, sp, #0
 80029d2:	0002      	movs	r2, r0
 80029d4:	1dfb      	adds	r3, r7, #7
 80029d6:	701a      	strb	r2, [r3, #0]
 80029d8:	46c0      	nop			; (mov r8, r8)
 80029da:	4b0c      	ldr	r3, [pc, #48]	; (8002a0c <usart_putc+0x40>)
 80029dc:	0018      	movs	r0, r3
 80029de:	f7ff ffb5 	bl	800294c <LL_USART_IsActiveFlag_TXE>
 80029e2:	1e03      	subs	r3, r0, #0
 80029e4:	d0f9      	beq.n	80029da <usart_putc+0xe>
 80029e6:	1dfb      	adds	r3, r7, #7
 80029e8:	781b      	ldrb	r3, [r3, #0]
 80029ea:	4a08      	ldr	r2, [pc, #32]	; (8002a0c <usart_putc+0x40>)
 80029ec:	0019      	movs	r1, r3
 80029ee:	0010      	movs	r0, r2
 80029f0:	f7ff ffc8 	bl	8002984 <LL_USART_TransmitData8>
 80029f4:	46c0      	nop			; (mov r8, r8)
 80029f6:	4b05      	ldr	r3, [pc, #20]	; (8002a0c <usart_putc+0x40>)
 80029f8:	0018      	movs	r0, r3
 80029fa:	f7ff ff97 	bl	800292c <LL_USART_IsActiveFlag_TC>
 80029fe:	1e03      	subs	r3, r0, #0
 8002a00:	d0f9      	beq.n	80029f6 <usart_putc+0x2a>
 8002a02:	46c0      	nop			; (mov r8, r8)
 8002a04:	46bd      	mov	sp, r7
 8002a06:	b002      	add	sp, #8
 8002a08:	bd80      	pop	{r7, pc}
 8002a0a:	46c0      	nop			; (mov r8, r8)
 8002a0c:	40013800 	.word	0x40013800

08002a10 <printf_config>:
 8002a10:	b580      	push	{r7, lr}
 8002a12:	af00      	add	r7, sp, #0
 8002a14:	4b04      	ldr	r3, [pc, #16]	; (8002a28 <printf_config+0x18>)
 8002a16:	4a05      	ldr	r2, [pc, #20]	; (8002a2c <printf_config+0x1c>)
 8002a18:	601a      	str	r2, [r3, #0]
 8002a1a:	4b05      	ldr	r3, [pc, #20]	; (8002a30 <printf_config+0x20>)
 8002a1c:	4a05      	ldr	r2, [pc, #20]	; (8002a34 <printf_config+0x24>)
 8002a1e:	601a      	str	r2, [r3, #0]
 8002a20:	46c0      	nop			; (mov r8, r8)
 8002a22:	46bd      	mov	sp, r7
 8002a24:	bd80      	pop	{r7, pc}
 8002a26:	46c0      	nop			; (mov r8, r8)
 8002a28:	2000011c 	.word	0x2000011c
 8002a2c:	080029cd 	.word	0x080029cd
 8002a30:	20000118 	.word	0x20000118
 8002a34:	080029a5 	.word	0x080029a5

08002a38 <LL_I2C_IsActiveFlag_TXIS>:
 8002a38:	b580      	push	{r7, lr}
 8002a3a:	b082      	sub	sp, #8
 8002a3c:	af00      	add	r7, sp, #0
 8002a3e:	6078      	str	r0, [r7, #4]
 8002a40:	687b      	ldr	r3, [r7, #4]
 8002a42:	699b      	ldr	r3, [r3, #24]
 8002a44:	2202      	movs	r2, #2
 8002a46:	4013      	ands	r3, r2
 8002a48:	3b02      	subs	r3, #2
 8002a4a:	425a      	negs	r2, r3
 8002a4c:	4153      	adcs	r3, r2
 8002a4e:	b2db      	uxtb	r3, r3
 8002a50:	0018      	movs	r0, r3
 8002a52:	46bd      	mov	sp, r7
 8002a54:	b002      	add	sp, #8
 8002a56:	bd80      	pop	{r7, pc}

08002a58 <LL_I2C_IsActiveFlag_RXNE>:
 8002a58:	b580      	push	{r7, lr}
 8002a5a:	b082      	sub	sp, #8
 8002a5c:	af00      	add	r7, sp, #0
 8002a5e:	6078      	str	r0, [r7, #4]
 8002a60:	687b      	ldr	r3, [r7, #4]
 8002a62:	699b      	ldr	r3, [r3, #24]
 8002a64:	2204      	movs	r2, #4
 8002a66:	4013      	ands	r3, r2
 8002a68:	3b04      	subs	r3, #4
 8002a6a:	425a      	negs	r2, r3
 8002a6c:	4153      	adcs	r3, r2
 8002a6e:	b2db      	uxtb	r3, r3
 8002a70:	0018      	movs	r0, r3
 8002a72:	46bd      	mov	sp, r7
 8002a74:	b002      	add	sp, #8
 8002a76:	bd80      	pop	{r7, pc}

08002a78 <LL_I2C_IsActiveFlag_TC>:
 8002a78:	b580      	push	{r7, lr}
 8002a7a:	b082      	sub	sp, #8
 8002a7c:	af00      	add	r7, sp, #0
 8002a7e:	6078      	str	r0, [r7, #4]
 8002a80:	687b      	ldr	r3, [r7, #4]
 8002a82:	699b      	ldr	r3, [r3, #24]
 8002a84:	2240      	movs	r2, #64	; 0x40
 8002a86:	4013      	ands	r3, r2
 8002a88:	3b40      	subs	r3, #64	; 0x40
 8002a8a:	425a      	negs	r2, r3
 8002a8c:	4153      	adcs	r3, r2
 8002a8e:	b2db      	uxtb	r3, r3
 8002a90:	0018      	movs	r0, r3
 8002a92:	46bd      	mov	sp, r7
 8002a94:	b002      	add	sp, #8
 8002a96:	bd80      	pop	{r7, pc}

08002a98 <LL_I2C_HandleTransfer>:
 8002a98:	b580      	push	{r7, lr}
 8002a9a:	b084      	sub	sp, #16
 8002a9c:	af00      	add	r7, sp, #0
 8002a9e:	60f8      	str	r0, [r7, #12]
 8002aa0:	60b9      	str	r1, [r7, #8]
 8002aa2:	607a      	str	r2, [r7, #4]
 8002aa4:	603b      	str	r3, [r7, #0]
 8002aa6:	68fb      	ldr	r3, [r7, #12]
 8002aa8:	685b      	ldr	r3, [r3, #4]
 8002aaa:	4a09      	ldr	r2, [pc, #36]	; (8002ad0 <LL_I2C_HandleTransfer+0x38>)
 8002aac:	401a      	ands	r2, r3
 8002aae:	68b9      	ldr	r1, [r7, #8]
 8002ab0:	687b      	ldr	r3, [r7, #4]
 8002ab2:	4319      	orrs	r1, r3
 8002ab4:	683b      	ldr	r3, [r7, #0]
 8002ab6:	041b      	lsls	r3, r3, #16
 8002ab8:	4319      	orrs	r1, r3
 8002aba:	69bb      	ldr	r3, [r7, #24]
 8002abc:	4319      	orrs	r1, r3
 8002abe:	69fb      	ldr	r3, [r7, #28]
 8002ac0:	430b      	orrs	r3, r1
 8002ac2:	431a      	orrs	r2, r3
 8002ac4:	68fb      	ldr	r3, [r7, #12]
 8002ac6:	605a      	str	r2, [r3, #4]
 8002ac8:	46c0      	nop			; (mov r8, r8)
 8002aca:	46bd      	mov	sp, r7
 8002acc:	b004      	add	sp, #16
 8002ace:	bd80      	pop	{r7, pc}
 8002ad0:	fc008000 	.word	0xfc008000

08002ad4 <LL_I2C_ReceiveData8>:
 8002ad4:	b580      	push	{r7, lr}
 8002ad6:	b082      	sub	sp, #8
 8002ad8:	af00      	add	r7, sp, #0
 8002ada:	6078      	str	r0, [r7, #4]
 8002adc:	687b      	ldr	r3, [r7, #4]
 8002ade:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8002ae0:	b2db      	uxtb	r3, r3
 8002ae2:	0018      	movs	r0, r3
 8002ae4:	46bd      	mov	sp, r7
 8002ae6:	b002      	add	sp, #8
 8002ae8:	bd80      	pop	{r7, pc}

08002aea <LL_I2C_TransmitData8>:
 8002aea:	b580      	push	{r7, lr}
 8002aec:	b082      	sub	sp, #8
 8002aee:	af00      	add	r7, sp, #0
 8002af0:	6078      	str	r0, [r7, #4]
 8002af2:	000a      	movs	r2, r1
 8002af4:	1cfb      	adds	r3, r7, #3
 8002af6:	701a      	strb	r2, [r3, #0]
 8002af8:	1cfb      	adds	r3, r7, #3
 8002afa:	781a      	ldrb	r2, [r3, #0]
 8002afc:	687b      	ldr	r3, [r7, #4]
 8002afe:	629a      	str	r2, [r3, #40]	; 0x28
 8002b00:	46c0      	nop			; (mov r8, r8)
 8002b02:	46bd      	mov	sp, r7
 8002b04:	b002      	add	sp, #8
 8002b06:	bd80      	pop	{r7, pc}

08002b08 <mpu9255_WriteMulti>:
 8002b08:	b590      	push	{r4, r7, lr}
 8002b0a:	b087      	sub	sp, #28
 8002b0c:	af02      	add	r7, sp, #8
 8002b0e:	0004      	movs	r4, r0
 8002b10:	0008      	movs	r0, r1
 8002b12:	603a      	str	r2, [r7, #0]
 8002b14:	0019      	movs	r1, r3
 8002b16:	1dfb      	adds	r3, r7, #7
 8002b18:	1c22      	adds	r2, r4, #0
 8002b1a:	701a      	strb	r2, [r3, #0]
 8002b1c:	1dbb      	adds	r3, r7, #6
 8002b1e:	1c02      	adds	r2, r0, #0
 8002b20:	701a      	strb	r2, [r3, #0]
 8002b22:	1d7b      	adds	r3, r7, #5
 8002b24:	1c0a      	adds	r2, r1, #0
 8002b26:	701a      	strb	r2, [r3, #0]
 8002b28:	23fa      	movs	r3, #250	; 0xfa
 8002b2a:	009b      	lsls	r3, r3, #2
 8002b2c:	60fb      	str	r3, [r7, #12]
 8002b2e:	1dfb      	adds	r3, r7, #7
 8002b30:	7819      	ldrb	r1, [r3, #0]
 8002b32:	1d7b      	adds	r3, r7, #5
 8002b34:	781b      	ldrb	r3, [r3, #0]
 8002b36:	3301      	adds	r3, #1
 8002b38:	001a      	movs	r2, r3
 8002b3a:	4833      	ldr	r0, [pc, #204]	; (8002c08 <mpu9255_WriteMulti+0x100>)
 8002b3c:	2380      	movs	r3, #128	; 0x80
 8002b3e:	019b      	lsls	r3, r3, #6
 8002b40:	9301      	str	r3, [sp, #4]
 8002b42:	2380      	movs	r3, #128	; 0x80
 8002b44:	049b      	lsls	r3, r3, #18
 8002b46:	9300      	str	r3, [sp, #0]
 8002b48:	0013      	movs	r3, r2
 8002b4a:	2200      	movs	r2, #0
 8002b4c:	f7ff ffa4 	bl	8002a98 <LL_I2C_HandleTransfer>
 8002b50:	46c0      	nop			; (mov r8, r8)
 8002b52:	4b2d      	ldr	r3, [pc, #180]	; (8002c08 <mpu9255_WriteMulti+0x100>)
 8002b54:	0018      	movs	r0, r3
 8002b56:	f7ff ff6f 	bl	8002a38 <LL_I2C_IsActiveFlag_TXIS>
 8002b5a:	1e03      	subs	r3, r0, #0
 8002b5c:	d104      	bne.n	8002b68 <mpu9255_WriteMulti+0x60>
 8002b5e:	68fb      	ldr	r3, [r7, #12]
 8002b60:	1e5a      	subs	r2, r3, #1
 8002b62:	60fa      	str	r2, [r7, #12]
 8002b64:	2b00      	cmp	r3, #0
 8002b66:	dcf4      	bgt.n	8002b52 <mpu9255_WriteMulti+0x4a>
 8002b68:	68fb      	ldr	r3, [r7, #12]
 8002b6a:	2b00      	cmp	r3, #0
 8002b6c:	dc01      	bgt.n	8002b72 <mpu9255_WriteMulti+0x6a>
 8002b6e:	2303      	movs	r3, #3
 8002b70:	e045      	b.n	8002bfe <mpu9255_WriteMulti+0xf6>
 8002b72:	1dbb      	adds	r3, r7, #6
 8002b74:	781b      	ldrb	r3, [r3, #0]
 8002b76:	4a24      	ldr	r2, [pc, #144]	; (8002c08 <mpu9255_WriteMulti+0x100>)
 8002b78:	0019      	movs	r1, r3
 8002b7a:	0010      	movs	r0, r2
 8002b7c:	f7ff ffb5 	bl	8002aea <LL_I2C_TransmitData8>
 8002b80:	230b      	movs	r3, #11
 8002b82:	18fb      	adds	r3, r7, r3
 8002b84:	2200      	movs	r2, #0
 8002b86:	701a      	strb	r2, [r3, #0]
 8002b88:	e020      	b.n	8002bcc <mpu9255_WriteMulti+0xc4>
 8002b8a:	46c0      	nop			; (mov r8, r8)
 8002b8c:	4b1e      	ldr	r3, [pc, #120]	; (8002c08 <mpu9255_WriteMulti+0x100>)
 8002b8e:	0018      	movs	r0, r3
 8002b90:	f7ff ff52 	bl	8002a38 <LL_I2C_IsActiveFlag_TXIS>
 8002b94:	1e03      	subs	r3, r0, #0
 8002b96:	d104      	bne.n	8002ba2 <mpu9255_WriteMulti+0x9a>
 8002b98:	68fb      	ldr	r3, [r7, #12]
 8002b9a:	1e5a      	subs	r2, r3, #1
 8002b9c:	60fa      	str	r2, [r7, #12]
 8002b9e:	2b00      	cmp	r3, #0
 8002ba0:	dcf4      	bgt.n	8002b8c <mpu9255_WriteMulti+0x84>
 8002ba2:	68fb      	ldr	r3, [r7, #12]
 8002ba4:	2b00      	cmp	r3, #0
 8002ba6:	dc01      	bgt.n	8002bac <mpu9255_WriteMulti+0xa4>
 8002ba8:	2303      	movs	r3, #3
 8002baa:	e028      	b.n	8002bfe <mpu9255_WriteMulti+0xf6>
 8002bac:	240b      	movs	r4, #11
 8002bae:	193b      	adds	r3, r7, r4
 8002bb0:	781b      	ldrb	r3, [r3, #0]
 8002bb2:	683a      	ldr	r2, [r7, #0]
 8002bb4:	18d3      	adds	r3, r2, r3
 8002bb6:	781b      	ldrb	r3, [r3, #0]
 8002bb8:	4a13      	ldr	r2, [pc, #76]	; (8002c08 <mpu9255_WriteMulti+0x100>)
 8002bba:	0019      	movs	r1, r3
 8002bbc:	0010      	movs	r0, r2
 8002bbe:	f7ff ff94 	bl	8002aea <LL_I2C_TransmitData8>
 8002bc2:	193b      	adds	r3, r7, r4
 8002bc4:	781a      	ldrb	r2, [r3, #0]
 8002bc6:	193b      	adds	r3, r7, r4
 8002bc8:	3201      	adds	r2, #1
 8002bca:	701a      	strb	r2, [r3, #0]
 8002bcc:	230b      	movs	r3, #11
 8002bce:	18fa      	adds	r2, r7, r3
 8002bd0:	1d7b      	adds	r3, r7, #5
 8002bd2:	7812      	ldrb	r2, [r2, #0]
 8002bd4:	781b      	ldrb	r3, [r3, #0]
 8002bd6:	429a      	cmp	r2, r3
 8002bd8:	d3d7      	bcc.n	8002b8a <mpu9255_WriteMulti+0x82>
 8002bda:	46c0      	nop			; (mov r8, r8)
 8002bdc:	4b0a      	ldr	r3, [pc, #40]	; (8002c08 <mpu9255_WriteMulti+0x100>)
 8002bde:	0018      	movs	r0, r3
 8002be0:	f7ff ff4a 	bl	8002a78 <LL_I2C_IsActiveFlag_TC>
 8002be4:	1e03      	subs	r3, r0, #0
 8002be6:	d004      	beq.n	8002bf2 <mpu9255_WriteMulti+0xea>
 8002be8:	68fb      	ldr	r3, [r7, #12]
 8002bea:	1e5a      	subs	r2, r3, #1
 8002bec:	60fa      	str	r2, [r7, #12]
 8002bee:	2b00      	cmp	r3, #0
 8002bf0:	dcf4      	bgt.n	8002bdc <mpu9255_WriteMulti+0xd4>
 8002bf2:	68fb      	ldr	r3, [r7, #12]
 8002bf4:	2b00      	cmp	r3, #0
 8002bf6:	dc01      	bgt.n	8002bfc <mpu9255_WriteMulti+0xf4>
 8002bf8:	2303      	movs	r3, #3
 8002bfa:	e000      	b.n	8002bfe <mpu9255_WriteMulti+0xf6>
 8002bfc:	2300      	movs	r3, #0
 8002bfe:	0018      	movs	r0, r3
 8002c00:	46bd      	mov	sp, r7
 8002c02:	b005      	add	sp, #20
 8002c04:	bd90      	pop	{r4, r7, pc}
 8002c06:	46c0      	nop			; (mov r8, r8)
 8002c08:	40005400 	.word	0x40005400

08002c0c <mpu9255_ReadMulti>:
 8002c0c:	b5b0      	push	{r4, r5, r7, lr}
 8002c0e:	b086      	sub	sp, #24
 8002c10:	af02      	add	r7, sp, #8
 8002c12:	0004      	movs	r4, r0
 8002c14:	0008      	movs	r0, r1
 8002c16:	603a      	str	r2, [r7, #0]
 8002c18:	0019      	movs	r1, r3
 8002c1a:	1dfb      	adds	r3, r7, #7
 8002c1c:	1c22      	adds	r2, r4, #0
 8002c1e:	701a      	strb	r2, [r3, #0]
 8002c20:	1dbb      	adds	r3, r7, #6
 8002c22:	1c02      	adds	r2, r0, #0
 8002c24:	701a      	strb	r2, [r3, #0]
 8002c26:	1d7b      	adds	r3, r7, #5
 8002c28:	1c0a      	adds	r2, r1, #0
 8002c2a:	701a      	strb	r2, [r3, #0]
 8002c2c:	23fa      	movs	r3, #250	; 0xfa
 8002c2e:	009b      	lsls	r3, r3, #2
 8002c30:	60fb      	str	r3, [r7, #12]
 8002c32:	1dbb      	adds	r3, r7, #6
 8002c34:	7819      	ldrb	r1, [r3, #0]
 8002c36:	1dfb      	adds	r3, r7, #7
 8002c38:	7818      	ldrb	r0, [r3, #0]
 8002c3a:	2300      	movs	r3, #0
 8002c3c:	2200      	movs	r2, #0
 8002c3e:	f7ff ff63 	bl	8002b08 <mpu9255_WriteMulti>
 8002c42:	0003      	movs	r3, r0
 8002c44:	2b03      	cmp	r3, #3
 8002c46:	d101      	bne.n	8002c4c <mpu9255_ReadMulti+0x40>
 8002c48:	2303      	movs	r3, #3
 8002c4a:	e04d      	b.n	8002ce8 <mpu9255_ReadMulti+0xdc>
 8002c4c:	1dfb      	adds	r3, r7, #7
 8002c4e:	7819      	ldrb	r1, [r3, #0]
 8002c50:	1d7b      	adds	r3, r7, #5
 8002c52:	781a      	ldrb	r2, [r3, #0]
 8002c54:	4826      	ldr	r0, [pc, #152]	; (8002cf0 <mpu9255_ReadMulti+0xe4>)
 8002c56:	2390      	movs	r3, #144	; 0x90
 8002c58:	019b      	lsls	r3, r3, #6
 8002c5a:	9301      	str	r3, [sp, #4]
 8002c5c:	2380      	movs	r3, #128	; 0x80
 8002c5e:	049b      	lsls	r3, r3, #18
 8002c60:	9300      	str	r3, [sp, #0]
 8002c62:	0013      	movs	r3, r2
 8002c64:	2200      	movs	r2, #0
 8002c66:	f7ff ff17 	bl	8002a98 <LL_I2C_HandleTransfer>
 8002c6a:	230b      	movs	r3, #11
 8002c6c:	18fb      	adds	r3, r7, r3
 8002c6e:	2200      	movs	r2, #0
 8002c70:	701a      	strb	r2, [r3, #0]
 8002c72:	e020      	b.n	8002cb6 <mpu9255_ReadMulti+0xaa>
 8002c74:	46c0      	nop			; (mov r8, r8)
 8002c76:	4b1e      	ldr	r3, [pc, #120]	; (8002cf0 <mpu9255_ReadMulti+0xe4>)
 8002c78:	0018      	movs	r0, r3
 8002c7a:	f7ff feed 	bl	8002a58 <LL_I2C_IsActiveFlag_RXNE>
 8002c7e:	1e03      	subs	r3, r0, #0
 8002c80:	d104      	bne.n	8002c8c <mpu9255_ReadMulti+0x80>
 8002c82:	68fb      	ldr	r3, [r7, #12]
 8002c84:	1e5a      	subs	r2, r3, #1
 8002c86:	60fa      	str	r2, [r7, #12]
 8002c88:	2b00      	cmp	r3, #0
 8002c8a:	dcf4      	bgt.n	8002c76 <mpu9255_ReadMulti+0x6a>
 8002c8c:	68fb      	ldr	r3, [r7, #12]
 8002c8e:	2b00      	cmp	r3, #0
 8002c90:	dc01      	bgt.n	8002c96 <mpu9255_ReadMulti+0x8a>
 8002c92:	2303      	movs	r3, #3
 8002c94:	e028      	b.n	8002ce8 <mpu9255_ReadMulti+0xdc>
 8002c96:	250b      	movs	r5, #11
 8002c98:	197b      	adds	r3, r7, r5
 8002c9a:	781b      	ldrb	r3, [r3, #0]
 8002c9c:	683a      	ldr	r2, [r7, #0]
 8002c9e:	18d4      	adds	r4, r2, r3
 8002ca0:	4b13      	ldr	r3, [pc, #76]	; (8002cf0 <mpu9255_ReadMulti+0xe4>)
 8002ca2:	0018      	movs	r0, r3
 8002ca4:	f7ff ff16 	bl	8002ad4 <LL_I2C_ReceiveData8>
 8002ca8:	0003      	movs	r3, r0
 8002caa:	7023      	strb	r3, [r4, #0]
 8002cac:	197b      	adds	r3, r7, r5
 8002cae:	781a      	ldrb	r2, [r3, #0]
 8002cb0:	197b      	adds	r3, r7, r5
 8002cb2:	3201      	adds	r2, #1
 8002cb4:	701a      	strb	r2, [r3, #0]
 8002cb6:	230b      	movs	r3, #11
 8002cb8:	18fa      	adds	r2, r7, r3
 8002cba:	1d7b      	adds	r3, r7, #5
 8002cbc:	7812      	ldrb	r2, [r2, #0]
 8002cbe:	781b      	ldrb	r3, [r3, #0]
 8002cc0:	429a      	cmp	r2, r3
 8002cc2:	d3d7      	bcc.n	8002c74 <mpu9255_ReadMulti+0x68>
 8002cc4:	46c0      	nop			; (mov r8, r8)
 8002cc6:	4b0a      	ldr	r3, [pc, #40]	; (8002cf0 <mpu9255_ReadMulti+0xe4>)
 8002cc8:	0018      	movs	r0, r3
 8002cca:	f7ff fed5 	bl	8002a78 <LL_I2C_IsActiveFlag_TC>
 8002cce:	1e03      	subs	r3, r0, #0
 8002cd0:	d004      	beq.n	8002cdc <mpu9255_ReadMulti+0xd0>
 8002cd2:	68fb      	ldr	r3, [r7, #12]
 8002cd4:	1e5a      	subs	r2, r3, #1
 8002cd6:	60fa      	str	r2, [r7, #12]
 8002cd8:	2b00      	cmp	r3, #0
 8002cda:	dcf4      	bgt.n	8002cc6 <mpu9255_ReadMulti+0xba>
 8002cdc:	68fb      	ldr	r3, [r7, #12]
 8002cde:	2b00      	cmp	r3, #0
 8002ce0:	dc01      	bgt.n	8002ce6 <mpu9255_ReadMulti+0xda>
 8002ce2:	2303      	movs	r3, #3
 8002ce4:	e000      	b.n	8002ce8 <mpu9255_ReadMulti+0xdc>
 8002ce6:	2300      	movs	r3, #0
 8002ce8:	0018      	movs	r0, r3
 8002cea:	46bd      	mov	sp, r7
 8002cec:	b004      	add	sp, #16
 8002cee:	bdb0      	pop	{r4, r5, r7, pc}
 8002cf0:	40005400 	.word	0x40005400

08002cf4 <mpu9255_WriteByte>:
 8002cf4:	b590      	push	{r4, r7, lr}
 8002cf6:	b083      	sub	sp, #12
 8002cf8:	af00      	add	r7, sp, #0
 8002cfa:	0004      	movs	r4, r0
 8002cfc:	0008      	movs	r0, r1
 8002cfe:	0011      	movs	r1, r2
 8002d00:	1dfb      	adds	r3, r7, #7
 8002d02:	1c22      	adds	r2, r4, #0
 8002d04:	701a      	strb	r2, [r3, #0]
 8002d06:	1dbb      	adds	r3, r7, #6
 8002d08:	1c02      	adds	r2, r0, #0
 8002d0a:	701a      	strb	r2, [r3, #0]
 8002d0c:	1d7b      	adds	r3, r7, #5
 8002d0e:	1c0a      	adds	r2, r1, #0
 8002d10:	701a      	strb	r2, [r3, #0]
 8002d12:	1d7a      	adds	r2, r7, #5
 8002d14:	1dbb      	adds	r3, r7, #6
 8002d16:	7819      	ldrb	r1, [r3, #0]
 8002d18:	1dfb      	adds	r3, r7, #7
 8002d1a:	7818      	ldrb	r0, [r3, #0]
 8002d1c:	2301      	movs	r3, #1
 8002d1e:	f7ff fef3 	bl	8002b08 <mpu9255_WriteMulti>
 8002d22:	0003      	movs	r3, r0
 8002d24:	0018      	movs	r0, r3
 8002d26:	46bd      	mov	sp, r7
 8002d28:	b003      	add	sp, #12
 8002d2a:	bd90      	pop	{r4, r7, pc}

08002d2c <mpu9255_init>:
 8002d2c:	b580      	push	{r7, lr}
 8002d2e:	b084      	sub	sp, #16
 8002d30:	af00      	add	r7, sp, #0
 8002d32:	2300      	movs	r3, #0
 8002d34:	60fb      	str	r3, [r7, #12]
 8002d36:	2280      	movs	r2, #128	; 0x80
 8002d38:	216b      	movs	r1, #107	; 0x6b
 8002d3a:	20d0      	movs	r0, #208	; 0xd0
 8002d3c:	f7ff ffda 	bl	8002cf4 <mpu9255_WriteByte>
 8002d40:	0003      	movs	r3, r0
 8002d42:	60fb      	str	r3, [r7, #12]
 8002d44:	68fb      	ldr	r3, [r7, #12]
 8002d46:	2b00      	cmp	r3, #0
 8002d48:	d000      	beq.n	8002d4c <mpu9255_init+0x20>
 8002d4a:	e090      	b.n	8002e6e <mpu9255_init+0x142>
 8002d4c:	2300      	movs	r3, #0
 8002d4e:	60bb      	str	r3, [r7, #8]
 8002d50:	2300      	movs	r3, #0
 8002d52:	607b      	str	r3, [r7, #4]
 8002d54:	e005      	b.n	8002d62 <mpu9255_init+0x36>
 8002d56:	68bb      	ldr	r3, [r7, #8]
 8002d58:	3301      	adds	r3, #1
 8002d5a:	60bb      	str	r3, [r7, #8]
 8002d5c:	687b      	ldr	r3, [r7, #4]
 8002d5e:	3301      	adds	r3, #1
 8002d60:	607b      	str	r3, [r7, #4]
 8002d62:	687b      	ldr	r3, [r7, #4]
 8002d64:	4a51      	ldr	r2, [pc, #324]	; (8002eac <mpu9255_init+0x180>)
 8002d66:	4293      	cmp	r3, r2
 8002d68:	ddf5      	ble.n	8002d56 <mpu9255_init+0x2a>
 8002d6a:	2201      	movs	r2, #1
 8002d6c:	2119      	movs	r1, #25
 8002d6e:	20d0      	movs	r0, #208	; 0xd0
 8002d70:	f7ff ffc0 	bl	8002cf4 <mpu9255_WriteByte>
 8002d74:	0003      	movs	r3, r0
 8002d76:	60fb      	str	r3, [r7, #12]
 8002d78:	68fb      	ldr	r3, [r7, #12]
 8002d7a:	2b00      	cmp	r3, #0
 8002d7c:	d000      	beq.n	8002d80 <mpu9255_init+0x54>
 8002d7e:	e078      	b.n	8002e72 <mpu9255_init+0x146>
 8002d80:	2205      	movs	r2, #5
 8002d82:	211a      	movs	r1, #26
 8002d84:	20d0      	movs	r0, #208	; 0xd0
 8002d86:	f7ff ffb5 	bl	8002cf4 <mpu9255_WriteByte>
 8002d8a:	0003      	movs	r3, r0
 8002d8c:	60fb      	str	r3, [r7, #12]
 8002d8e:	68fb      	ldr	r3, [r7, #12]
 8002d90:	2b00      	cmp	r3, #0
 8002d92:	d000      	beq.n	8002d96 <mpu9255_init+0x6a>
 8002d94:	e06f      	b.n	8002e76 <mpu9255_init+0x14a>
 8002d96:	2208      	movs	r2, #8
 8002d98:	211c      	movs	r1, #28
 8002d9a:	20d0      	movs	r0, #208	; 0xd0
 8002d9c:	f7ff ffaa 	bl	8002cf4 <mpu9255_WriteByte>
 8002da0:	0003      	movs	r3, r0
 8002da2:	60fb      	str	r3, [r7, #12]
 8002da4:	68fb      	ldr	r3, [r7, #12]
 8002da6:	2b00      	cmp	r3, #0
 8002da8:	d167      	bne.n	8002e7a <mpu9255_init+0x14e>
 8002daa:	2204      	movs	r2, #4
 8002dac:	211d      	movs	r1, #29
 8002dae:	20d0      	movs	r0, #208	; 0xd0
 8002db0:	f7ff ffa0 	bl	8002cf4 <mpu9255_WriteByte>
 8002db4:	0003      	movs	r3, r0
 8002db6:	60fb      	str	r3, [r7, #12]
 8002db8:	68fb      	ldr	r3, [r7, #12]
 8002dba:	2b00      	cmp	r3, #0
 8002dbc:	d15f      	bne.n	8002e7e <mpu9255_init+0x152>
 8002dbe:	2200      	movs	r2, #0
 8002dc0:	2123      	movs	r1, #35	; 0x23
 8002dc2:	20d0      	movs	r0, #208	; 0xd0
 8002dc4:	f7ff ff96 	bl	8002cf4 <mpu9255_WriteByte>
 8002dc8:	0003      	movs	r3, r0
 8002dca:	60fb      	str	r3, [r7, #12]
 8002dcc:	68fb      	ldr	r3, [r7, #12]
 8002dce:	2b00      	cmp	r3, #0
 8002dd0:	d157      	bne.n	8002e82 <mpu9255_init+0x156>
 8002dd2:	2200      	movs	r2, #0
 8002dd4:	2138      	movs	r1, #56	; 0x38
 8002dd6:	20d0      	movs	r0, #208	; 0xd0
 8002dd8:	f7ff ff8c 	bl	8002cf4 <mpu9255_WriteByte>
 8002ddc:	0003      	movs	r3, r0
 8002dde:	60fb      	str	r3, [r7, #12]
 8002de0:	68fb      	ldr	r3, [r7, #12]
 8002de2:	2b00      	cmp	r3, #0
 8002de4:	d14f      	bne.n	8002e86 <mpu9255_init+0x15a>
 8002de6:	2200      	movs	r2, #0
 8002de8:	216a      	movs	r1, #106	; 0x6a
 8002dea:	20d0      	movs	r0, #208	; 0xd0
 8002dec:	f7ff ff82 	bl	8002cf4 <mpu9255_WriteByte>
 8002df0:	0003      	movs	r3, r0
 8002df2:	60fb      	str	r3, [r7, #12]
 8002df4:	68fb      	ldr	r3, [r7, #12]
 8002df6:	2b00      	cmp	r3, #0
 8002df8:	d147      	bne.n	8002e8a <mpu9255_init+0x15e>
 8002dfa:	2201      	movs	r2, #1
 8002dfc:	216b      	movs	r1, #107	; 0x6b
 8002dfe:	20d0      	movs	r0, #208	; 0xd0
 8002e00:	f7ff ff78 	bl	8002cf4 <mpu9255_WriteByte>
 8002e04:	0003      	movs	r3, r0
 8002e06:	60fb      	str	r3, [r7, #12]
 8002e08:	68fb      	ldr	r3, [r7, #12]
 8002e0a:	2b00      	cmp	r3, #0
 8002e0c:	d13f      	bne.n	8002e8e <mpu9255_init+0x162>
 8002e0e:	2200      	movs	r2, #0
 8002e10:	216c      	movs	r1, #108	; 0x6c
 8002e12:	20d0      	movs	r0, #208	; 0xd0
 8002e14:	f7ff ff6e 	bl	8002cf4 <mpu9255_WriteByte>
 8002e18:	0003      	movs	r3, r0
 8002e1a:	60fb      	str	r3, [r7, #12]
 8002e1c:	68fb      	ldr	r3, [r7, #12]
 8002e1e:	2b00      	cmp	r3, #0
 8002e20:	d137      	bne.n	8002e92 <mpu9255_init+0x166>
 8002e22:	2200      	movs	r2, #0
 8002e24:	211b      	movs	r1, #27
 8002e26:	20d0      	movs	r0, #208	; 0xd0
 8002e28:	f7ff ff64 	bl	8002cf4 <mpu9255_WriteByte>
 8002e2c:	0003      	movs	r3, r0
 8002e2e:	60fb      	str	r3, [r7, #12]
 8002e30:	68fb      	ldr	r3, [r7, #12]
 8002e32:	2b00      	cmp	r3, #0
 8002e34:	d12f      	bne.n	8002e96 <mpu9255_init+0x16a>
 8002e36:	2202      	movs	r2, #2
 8002e38:	2137      	movs	r1, #55	; 0x37
 8002e3a:	20d0      	movs	r0, #208	; 0xd0
 8002e3c:	f7ff ff5a 	bl	8002cf4 <mpu9255_WriteByte>
 8002e40:	0003      	movs	r3, r0
 8002e42:	60fb      	str	r3, [r7, #12]
 8002e44:	68fb      	ldr	r3, [r7, #12]
 8002e46:	2b00      	cmp	r3, #0
 8002e48:	d127      	bne.n	8002e9a <mpu9255_init+0x16e>
 8002e4a:	2216      	movs	r2, #22
 8002e4c:	210a      	movs	r1, #10
 8002e4e:	2018      	movs	r0, #24
 8002e50:	f7ff ff50 	bl	8002cf4 <mpu9255_WriteByte>
 8002e54:	0003      	movs	r3, r0
 8002e56:	60fb      	str	r3, [r7, #12]
 8002e58:	68fb      	ldr	r3, [r7, #12]
 8002e5a:	2b00      	cmp	r3, #0
 8002e5c:	d11f      	bne.n	8002e9e <mpu9255_init+0x172>
 8002e5e:	2200      	movs	r2, #0
 8002e60:	2137      	movs	r1, #55	; 0x37
 8002e62:	20d0      	movs	r0, #208	; 0xd0
 8002e64:	f7ff ff46 	bl	8002cf4 <mpu9255_WriteByte>
 8002e68:	0003      	movs	r3, r0
 8002e6a:	60fb      	str	r3, [r7, #12]
 8002e6c:	e018      	b.n	8002ea0 <mpu9255_init+0x174>
 8002e6e:	46c0      	nop			; (mov r8, r8)
 8002e70:	e016      	b.n	8002ea0 <mpu9255_init+0x174>
 8002e72:	46c0      	nop			; (mov r8, r8)
 8002e74:	e014      	b.n	8002ea0 <mpu9255_init+0x174>
 8002e76:	46c0      	nop			; (mov r8, r8)
 8002e78:	e012      	b.n	8002ea0 <mpu9255_init+0x174>
 8002e7a:	46c0      	nop			; (mov r8, r8)
 8002e7c:	e010      	b.n	8002ea0 <mpu9255_init+0x174>
 8002e7e:	46c0      	nop			; (mov r8, r8)
 8002e80:	e00e      	b.n	8002ea0 <mpu9255_init+0x174>
 8002e82:	46c0      	nop			; (mov r8, r8)
 8002e84:	e00c      	b.n	8002ea0 <mpu9255_init+0x174>
 8002e86:	46c0      	nop			; (mov r8, r8)
 8002e88:	e00a      	b.n	8002ea0 <mpu9255_init+0x174>
 8002e8a:	46c0      	nop			; (mov r8, r8)
 8002e8c:	e008      	b.n	8002ea0 <mpu9255_init+0x174>
 8002e8e:	46c0      	nop			; (mov r8, r8)
 8002e90:	e006      	b.n	8002ea0 <mpu9255_init+0x174>
 8002e92:	46c0      	nop			; (mov r8, r8)
 8002e94:	e004      	b.n	8002ea0 <mpu9255_init+0x174>
 8002e96:	46c0      	nop			; (mov r8, r8)
 8002e98:	e002      	b.n	8002ea0 <mpu9255_init+0x174>
 8002e9a:	46c0      	nop			; (mov r8, r8)
 8002e9c:	e000      	b.n	8002ea0 <mpu9255_init+0x174>
 8002e9e:	46c0      	nop			; (mov r8, r8)
 8002ea0:	68fb      	ldr	r3, [r7, #12]
 8002ea2:	0018      	movs	r0, r3
 8002ea4:	46bd      	mov	sp, r7
 8002ea6:	b004      	add	sp, #16
 8002ea8:	bd80      	pop	{r7, pc}
 8002eaa:	46c0      	nop			; (mov r8, r8)
 8002eac:	000f423f 	.word	0x000f423f

08002eb0 <_swapBytesI16>:
 8002eb0:	b580      	push	{r7, lr}
 8002eb2:	b084      	sub	sp, #16
 8002eb4:	af00      	add	r7, sp, #0
 8002eb6:	0002      	movs	r2, r0
 8002eb8:	1dbb      	adds	r3, r7, #6
 8002eba:	801a      	strh	r2, [r3, #0]
 8002ebc:	1dbb      	adds	r3, r7, #6
 8002ebe:	60fb      	str	r3, [r7, #12]
 8002ec0:	210b      	movs	r1, #11
 8002ec2:	187b      	adds	r3, r7, r1
 8002ec4:	68fa      	ldr	r2, [r7, #12]
 8002ec6:	7812      	ldrb	r2, [r2, #0]
 8002ec8:	701a      	strb	r2, [r3, #0]
 8002eca:	68fb      	ldr	r3, [r7, #12]
 8002ecc:	785a      	ldrb	r2, [r3, #1]
 8002ece:	68fb      	ldr	r3, [r7, #12]
 8002ed0:	701a      	strb	r2, [r3, #0]
 8002ed2:	68fb      	ldr	r3, [r7, #12]
 8002ed4:	3301      	adds	r3, #1
 8002ed6:	187a      	adds	r2, r7, r1
 8002ed8:	7812      	ldrb	r2, [r2, #0]
 8002eda:	701a      	strb	r2, [r3, #0]
 8002edc:	1dbb      	adds	r3, r7, #6
 8002ede:	2200      	movs	r2, #0
 8002ee0:	5e9b      	ldrsh	r3, [r3, r2]
 8002ee2:	0018      	movs	r0, r3
 8002ee4:	46bd      	mov	sp, r7
 8002ee6:	b004      	add	sp, #16
 8002ee8:	bd80      	pop	{r7, pc}

08002eea <mpu9255_readIMU>:
 8002eea:	b590      	push	{r4, r7, lr}
 8002eec:	b087      	sub	sp, #28
 8002eee:	af00      	add	r7, sp, #0
 8002ef0:	6078      	str	r0, [r7, #4]
 8002ef2:	6039      	str	r1, [r7, #0]
 8002ef4:	2300      	movs	r3, #0
 8002ef6:	617b      	str	r3, [r7, #20]
 8002ef8:	687a      	ldr	r2, [r7, #4]
 8002efa:	2306      	movs	r3, #6
 8002efc:	213b      	movs	r1, #59	; 0x3b
 8002efe:	20d0      	movs	r0, #208	; 0xd0
 8002f00:	f7ff fe84 	bl	8002c0c <mpu9255_ReadMulti>
 8002f04:	0003      	movs	r3, r0
 8002f06:	617b      	str	r3, [r7, #20]
 8002f08:	697b      	ldr	r3, [r7, #20]
 8002f0a:	2b00      	cmp	r3, #0
 8002f0c:	d13b      	bne.n	8002f86 <mpu9255_readIMU+0x9c>
 8002f0e:	683a      	ldr	r2, [r7, #0]
 8002f10:	2306      	movs	r3, #6
 8002f12:	2143      	movs	r1, #67	; 0x43
 8002f14:	20d0      	movs	r0, #208	; 0xd0
 8002f16:	f7ff fe79 	bl	8002c0c <mpu9255_ReadMulti>
 8002f1a:	0003      	movs	r3, r0
 8002f1c:	617b      	str	r3, [r7, #20]
 8002f1e:	697b      	ldr	r3, [r7, #20]
 8002f20:	2b00      	cmp	r3, #0
 8002f22:	d132      	bne.n	8002f8a <mpu9255_readIMU+0xa0>
 8002f24:	2300      	movs	r3, #0
 8002f26:	613b      	str	r3, [r7, #16]
 8002f28:	e011      	b.n	8002f4e <mpu9255_readIMU+0x64>
 8002f2a:	693b      	ldr	r3, [r7, #16]
 8002f2c:	005b      	lsls	r3, r3, #1
 8002f2e:	687a      	ldr	r2, [r7, #4]
 8002f30:	18d3      	adds	r3, r2, r3
 8002f32:	2100      	movs	r1, #0
 8002f34:	5e59      	ldrsh	r1, [r3, r1]
 8002f36:	693b      	ldr	r3, [r7, #16]
 8002f38:	005b      	lsls	r3, r3, #1
 8002f3a:	687a      	ldr	r2, [r7, #4]
 8002f3c:	18d4      	adds	r4, r2, r3
 8002f3e:	0008      	movs	r0, r1
 8002f40:	f7ff ffb6 	bl	8002eb0 <_swapBytesI16>
 8002f44:	0003      	movs	r3, r0
 8002f46:	8023      	strh	r3, [r4, #0]
 8002f48:	693b      	ldr	r3, [r7, #16]
 8002f4a:	3301      	adds	r3, #1
 8002f4c:	613b      	str	r3, [r7, #16]
 8002f4e:	693b      	ldr	r3, [r7, #16]
 8002f50:	2b02      	cmp	r3, #2
 8002f52:	ddea      	ble.n	8002f2a <mpu9255_readIMU+0x40>
 8002f54:	2300      	movs	r3, #0
 8002f56:	60fb      	str	r3, [r7, #12]
 8002f58:	e011      	b.n	8002f7e <mpu9255_readIMU+0x94>
 8002f5a:	68fb      	ldr	r3, [r7, #12]
 8002f5c:	005b      	lsls	r3, r3, #1
 8002f5e:	683a      	ldr	r2, [r7, #0]
 8002f60:	18d3      	adds	r3, r2, r3
 8002f62:	2100      	movs	r1, #0
 8002f64:	5e59      	ldrsh	r1, [r3, r1]
 8002f66:	68fb      	ldr	r3, [r7, #12]
 8002f68:	005b      	lsls	r3, r3, #1
 8002f6a:	683a      	ldr	r2, [r7, #0]
 8002f6c:	18d4      	adds	r4, r2, r3
 8002f6e:	0008      	movs	r0, r1
 8002f70:	f7ff ff9e 	bl	8002eb0 <_swapBytesI16>
 8002f74:	0003      	movs	r3, r0
 8002f76:	8023      	strh	r3, [r4, #0]
 8002f78:	68fb      	ldr	r3, [r7, #12]
 8002f7a:	3301      	adds	r3, #1
 8002f7c:	60fb      	str	r3, [r7, #12]
 8002f7e:	68fb      	ldr	r3, [r7, #12]
 8002f80:	2b02      	cmp	r3, #2
 8002f82:	ddea      	ble.n	8002f5a <mpu9255_readIMU+0x70>
 8002f84:	e002      	b.n	8002f8c <mpu9255_readIMU+0xa2>
 8002f86:	46c0      	nop			; (mov r8, r8)
 8002f88:	e000      	b.n	8002f8c <mpu9255_readIMU+0xa2>
 8002f8a:	46c0      	nop			; (mov r8, r8)
 8002f8c:	697b      	ldr	r3, [r7, #20]
 8002f8e:	0018      	movs	r0, r3
 8002f90:	46bd      	mov	sp, r7
 8002f92:	b007      	add	sp, #28
 8002f94:	bd90      	pop	{r4, r7, pc}
	...

08002f98 <mpu9255_recalcAccel>:
 8002f98:	b5b0      	push	{r4, r5, r7, lr}
 8002f9a:	b08a      	sub	sp, #40	; 0x28
 8002f9c:	af00      	add	r7, sp, #0
 8002f9e:	6078      	str	r0, [r7, #4]
 8002fa0:	6039      	str	r1, [r7, #0]
 8002fa2:	2508      	movs	r5, #8
 8002fa4:	197a      	adds	r2, r7, r5
 8002fa6:	2300      	movs	r3, #0
 8002fa8:	2400      	movs	r4, #0
 8002faa:	6013      	str	r3, [r2, #0]
 8002fac:	6054      	str	r4, [r2, #4]
 8002fae:	197a      	adds	r2, r7, r5
 8002fb0:	2300      	movs	r3, #0
 8002fb2:	2400      	movs	r4, #0
 8002fb4:	6093      	str	r3, [r2, #8]
 8002fb6:	60d4      	str	r4, [r2, #12]
 8002fb8:	197a      	adds	r2, r7, r5
 8002fba:	2300      	movs	r3, #0
 8002fbc:	2400      	movs	r4, #0
 8002fbe:	6113      	str	r3, [r2, #16]
 8002fc0:	6154      	str	r4, [r2, #20]
 8002fc2:	687b      	ldr	r3, [r7, #4]
 8002fc4:	2200      	movs	r2, #0
 8002fc6:	5e9b      	ldrsh	r3, [r3, r2]
 8002fc8:	0018      	movs	r0, r3
 8002fca:	f7fe fca5 	bl	8001918 <__aeabi_i2d>
 8002fce:	4a39      	ldr	r2, [pc, #228]	; (80030b4 <mpu9255_recalcAccel+0x11c>)
 8002fd0:	4b39      	ldr	r3, [pc, #228]	; (80030b8 <mpu9255_recalcAccel+0x120>)
 8002fd2:	f7fe fa2f 	bl	8001434 <__aeabi_dmul>
 8002fd6:	0003      	movs	r3, r0
 8002fd8:	000c      	movs	r4, r1
 8002fda:	0018      	movs	r0, r3
 8002fdc:	0021      	movs	r1, r4
 8002fde:	2200      	movs	r2, #0
 8002fe0:	4b36      	ldr	r3, [pc, #216]	; (80030bc <mpu9255_recalcAccel+0x124>)
 8002fe2:	f7fd ff25 	bl	8000e30 <__aeabi_ddiv>
 8002fe6:	0003      	movs	r3, r0
 8002fe8:	000c      	movs	r4, r1
 8002fea:	0018      	movs	r0, r3
 8002fec:	0021      	movs	r1, r4
 8002fee:	0002      	movs	r2, r0
 8002ff0:	000b      	movs	r3, r1
 8002ff2:	f7fd fc01 	bl	80007f8 <__aeabi_dadd>
 8002ff6:	0003      	movs	r3, r0
 8002ff8:	000c      	movs	r4, r1
 8002ffa:	197a      	adds	r2, r7, r5
 8002ffc:	6013      	str	r3, [r2, #0]
 8002ffe:	6054      	str	r4, [r2, #4]
 8003000:	687b      	ldr	r3, [r7, #4]
 8003002:	3302      	adds	r3, #2
 8003004:	2200      	movs	r2, #0
 8003006:	5e9b      	ldrsh	r3, [r3, r2]
 8003008:	0018      	movs	r0, r3
 800300a:	f7fe fc85 	bl	8001918 <__aeabi_i2d>
 800300e:	4a29      	ldr	r2, [pc, #164]	; (80030b4 <mpu9255_recalcAccel+0x11c>)
 8003010:	4b29      	ldr	r3, [pc, #164]	; (80030b8 <mpu9255_recalcAccel+0x120>)
 8003012:	f7fe fa0f 	bl	8001434 <__aeabi_dmul>
 8003016:	0003      	movs	r3, r0
 8003018:	000c      	movs	r4, r1
 800301a:	0018      	movs	r0, r3
 800301c:	0021      	movs	r1, r4
 800301e:	2200      	movs	r2, #0
 8003020:	4b26      	ldr	r3, [pc, #152]	; (80030bc <mpu9255_recalcAccel+0x124>)
 8003022:	f7fd ff05 	bl	8000e30 <__aeabi_ddiv>
 8003026:	0003      	movs	r3, r0
 8003028:	000c      	movs	r4, r1
 800302a:	0018      	movs	r0, r3
 800302c:	0021      	movs	r1, r4
 800302e:	0002      	movs	r2, r0
 8003030:	000b      	movs	r3, r1
 8003032:	f7fd fbe1 	bl	80007f8 <__aeabi_dadd>
 8003036:	0003      	movs	r3, r0
 8003038:	000c      	movs	r4, r1
 800303a:	197a      	adds	r2, r7, r5
 800303c:	6093      	str	r3, [r2, #8]
 800303e:	60d4      	str	r4, [r2, #12]
 8003040:	687b      	ldr	r3, [r7, #4]
 8003042:	3304      	adds	r3, #4
 8003044:	2200      	movs	r2, #0
 8003046:	5e9b      	ldrsh	r3, [r3, r2]
 8003048:	0018      	movs	r0, r3
 800304a:	f7fe fc65 	bl	8001918 <__aeabi_i2d>
 800304e:	4a19      	ldr	r2, [pc, #100]	; (80030b4 <mpu9255_recalcAccel+0x11c>)
 8003050:	4b19      	ldr	r3, [pc, #100]	; (80030b8 <mpu9255_recalcAccel+0x120>)
 8003052:	f7fe f9ef 	bl	8001434 <__aeabi_dmul>
 8003056:	0003      	movs	r3, r0
 8003058:	000c      	movs	r4, r1
 800305a:	0018      	movs	r0, r3
 800305c:	0021      	movs	r1, r4
 800305e:	2200      	movs	r2, #0
 8003060:	4b16      	ldr	r3, [pc, #88]	; (80030bc <mpu9255_recalcAccel+0x124>)
 8003062:	f7fd fee5 	bl	8000e30 <__aeabi_ddiv>
 8003066:	0003      	movs	r3, r0
 8003068:	000c      	movs	r4, r1
 800306a:	0018      	movs	r0, r3
 800306c:	0021      	movs	r1, r4
 800306e:	0002      	movs	r2, r0
 8003070:	000b      	movs	r3, r1
 8003072:	f7fd fbc1 	bl	80007f8 <__aeabi_dadd>
 8003076:	0003      	movs	r3, r0
 8003078:	000c      	movs	r4, r1
 800307a:	197a      	adds	r2, r7, r5
 800307c:	6113      	str	r3, [r2, #16]
 800307e:	6154      	str	r4, [r2, #20]
 8003080:	2300      	movs	r3, #0
 8003082:	627b      	str	r3, [r7, #36]	; 0x24
 8003084:	e00f      	b.n	80030a6 <mpu9255_recalcAccel+0x10e>
 8003086:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8003088:	00db      	lsls	r3, r3, #3
 800308a:	683a      	ldr	r2, [r7, #0]
 800308c:	18d2      	adds	r2, r2, r3
 800308e:	2308      	movs	r3, #8
 8003090:	18f9      	adds	r1, r7, r3
 8003092:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8003094:	00db      	lsls	r3, r3, #3
 8003096:	18cb      	adds	r3, r1, r3
 8003098:	685c      	ldr	r4, [r3, #4]
 800309a:	681b      	ldr	r3, [r3, #0]
 800309c:	6013      	str	r3, [r2, #0]
 800309e:	6054      	str	r4, [r2, #4]
 80030a0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80030a2:	3301      	adds	r3, #1
 80030a4:	627b      	str	r3, [r7, #36]	; 0x24
 80030a6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80030a8:	2b02      	cmp	r3, #2
 80030aa:	ddec      	ble.n	8003086 <mpu9255_recalcAccel+0xee>
 80030ac:	46c0      	nop			; (mov r8, r8)
 80030ae:	46bd      	mov	sp, r7
 80030b0:	b00a      	add	sp, #40	; 0x28
 80030b2:	bdb0      	pop	{r4, r5, r7, pc}
 80030b4:	374bc6a8 	.word	0x374bc6a8
 80030b8:	4023a189 	.word	0x4023a189
 80030bc:	40d00000 	.word	0x40d00000

080030c0 <mpu9255_recalcGyro>:
 80030c0:	b5b0      	push	{r4, r5, r7, lr}
 80030c2:	b082      	sub	sp, #8
 80030c4:	af00      	add	r7, sp, #0
 80030c6:	6078      	str	r0, [r7, #4]
 80030c8:	6039      	str	r1, [r7, #0]
 80030ca:	687b      	ldr	r3, [r7, #4]
 80030cc:	2200      	movs	r2, #0
 80030ce:	5e9b      	ldrsh	r3, [r3, r2]
 80030d0:	0018      	movs	r0, r3
 80030d2:	f7fe fc21 	bl	8001918 <__aeabi_i2d>
 80030d6:	4a24      	ldr	r2, [pc, #144]	; (8003168 <mpu9255_recalcGyro+0xa8>)
 80030d8:	4b24      	ldr	r3, [pc, #144]	; (800316c <mpu9255_recalcGyro+0xac>)
 80030da:	f7fe f9ab 	bl	8001434 <__aeabi_dmul>
 80030de:	0003      	movs	r3, r0
 80030e0:	000c      	movs	r4, r1
 80030e2:	0018      	movs	r0, r3
 80030e4:	0021      	movs	r1, r4
 80030e6:	2200      	movs	r2, #0
 80030e8:	4b21      	ldr	r3, [pc, #132]	; (8003170 <mpu9255_recalcGyro+0xb0>)
 80030ea:	f7fd fea1 	bl	8000e30 <__aeabi_ddiv>
 80030ee:	0003      	movs	r3, r0
 80030f0:	000c      	movs	r4, r1
 80030f2:	683a      	ldr	r2, [r7, #0]
 80030f4:	6013      	str	r3, [r2, #0]
 80030f6:	6054      	str	r4, [r2, #4]
 80030f8:	687b      	ldr	r3, [r7, #4]
 80030fa:	3302      	adds	r3, #2
 80030fc:	2200      	movs	r2, #0
 80030fe:	5e9b      	ldrsh	r3, [r3, r2]
 8003100:	0018      	movs	r0, r3
 8003102:	f7fe fc09 	bl	8001918 <__aeabi_i2d>
 8003106:	4a18      	ldr	r2, [pc, #96]	; (8003168 <mpu9255_recalcGyro+0xa8>)
 8003108:	4b18      	ldr	r3, [pc, #96]	; (800316c <mpu9255_recalcGyro+0xac>)
 800310a:	f7fe f993 	bl	8001434 <__aeabi_dmul>
 800310e:	0003      	movs	r3, r0
 8003110:	000c      	movs	r4, r1
 8003112:	0018      	movs	r0, r3
 8003114:	0021      	movs	r1, r4
 8003116:	683b      	ldr	r3, [r7, #0]
 8003118:	3308      	adds	r3, #8
 800311a:	001d      	movs	r5, r3
 800311c:	2200      	movs	r2, #0
 800311e:	4b14      	ldr	r3, [pc, #80]	; (8003170 <mpu9255_recalcGyro+0xb0>)
 8003120:	f7fd fe86 	bl	8000e30 <__aeabi_ddiv>
 8003124:	0003      	movs	r3, r0
 8003126:	000c      	movs	r4, r1
 8003128:	602b      	str	r3, [r5, #0]
 800312a:	606c      	str	r4, [r5, #4]
 800312c:	687b      	ldr	r3, [r7, #4]
 800312e:	3304      	adds	r3, #4
 8003130:	2200      	movs	r2, #0
 8003132:	5e9b      	ldrsh	r3, [r3, r2]
 8003134:	0018      	movs	r0, r3
 8003136:	f7fe fbef 	bl	8001918 <__aeabi_i2d>
 800313a:	4a0b      	ldr	r2, [pc, #44]	; (8003168 <mpu9255_recalcGyro+0xa8>)
 800313c:	4b0b      	ldr	r3, [pc, #44]	; (800316c <mpu9255_recalcGyro+0xac>)
 800313e:	f7fe f979 	bl	8001434 <__aeabi_dmul>
 8003142:	0003      	movs	r3, r0
 8003144:	000c      	movs	r4, r1
 8003146:	0018      	movs	r0, r3
 8003148:	0021      	movs	r1, r4
 800314a:	683b      	ldr	r3, [r7, #0]
 800314c:	3310      	adds	r3, #16
 800314e:	001d      	movs	r5, r3
 8003150:	2200      	movs	r2, #0
 8003152:	4b07      	ldr	r3, [pc, #28]	; (8003170 <mpu9255_recalcGyro+0xb0>)
 8003154:	f7fd fe6c 	bl	8000e30 <__aeabi_ddiv>
 8003158:	0003      	movs	r3, r0
 800315a:	000c      	movs	r4, r1
 800315c:	602b      	str	r3, [r5, #0]
 800315e:	606c      	str	r4, [r5, #4]
 8003160:	46c0      	nop			; (mov r8, r8)
 8003162:	46bd      	mov	sp, r7
 8003164:	b002      	add	sp, #8
 8003166:	bdb0      	pop	{r4, r5, r7, pc}
 8003168:	54442d18 	.word	0x54442d18
 800316c:	400921fb 	.word	0x400921fb
 8003170:	40d70700 	.word	0x40d70700

08003174 <SystemInit>:
 8003174:	b580      	push	{r7, lr}
 8003176:	af00      	add	r7, sp, #0
 8003178:	4b1a      	ldr	r3, [pc, #104]	; (80031e4 <SystemInit+0x70>)
 800317a:	681a      	ldr	r2, [r3, #0]
 800317c:	4b19      	ldr	r3, [pc, #100]	; (80031e4 <SystemInit+0x70>)
 800317e:	2101      	movs	r1, #1
 8003180:	430a      	orrs	r2, r1
 8003182:	601a      	str	r2, [r3, #0]
 8003184:	4b17      	ldr	r3, [pc, #92]	; (80031e4 <SystemInit+0x70>)
 8003186:	685a      	ldr	r2, [r3, #4]
 8003188:	4b16      	ldr	r3, [pc, #88]	; (80031e4 <SystemInit+0x70>)
 800318a:	4917      	ldr	r1, [pc, #92]	; (80031e8 <SystemInit+0x74>)
 800318c:	400a      	ands	r2, r1
 800318e:	605a      	str	r2, [r3, #4]
 8003190:	4b14      	ldr	r3, [pc, #80]	; (80031e4 <SystemInit+0x70>)
 8003192:	681a      	ldr	r2, [r3, #0]
 8003194:	4b13      	ldr	r3, [pc, #76]	; (80031e4 <SystemInit+0x70>)
 8003196:	4915      	ldr	r1, [pc, #84]	; (80031ec <SystemInit+0x78>)
 8003198:	400a      	ands	r2, r1
 800319a:	601a      	str	r2, [r3, #0]
 800319c:	4b11      	ldr	r3, [pc, #68]	; (80031e4 <SystemInit+0x70>)
 800319e:	681a      	ldr	r2, [r3, #0]
 80031a0:	4b10      	ldr	r3, [pc, #64]	; (80031e4 <SystemInit+0x70>)
 80031a2:	4913      	ldr	r1, [pc, #76]	; (80031f0 <SystemInit+0x7c>)
 80031a4:	400a      	ands	r2, r1
 80031a6:	601a      	str	r2, [r3, #0]
 80031a8:	4b0e      	ldr	r3, [pc, #56]	; (80031e4 <SystemInit+0x70>)
 80031aa:	685a      	ldr	r2, [r3, #4]
 80031ac:	4b0d      	ldr	r3, [pc, #52]	; (80031e4 <SystemInit+0x70>)
 80031ae:	4911      	ldr	r1, [pc, #68]	; (80031f4 <SystemInit+0x80>)
 80031b0:	400a      	ands	r2, r1
 80031b2:	605a      	str	r2, [r3, #4]
 80031b4:	4b0b      	ldr	r3, [pc, #44]	; (80031e4 <SystemInit+0x70>)
 80031b6:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80031b8:	4b0a      	ldr	r3, [pc, #40]	; (80031e4 <SystemInit+0x70>)
 80031ba:	210f      	movs	r1, #15
 80031bc:	438a      	bics	r2, r1
 80031be:	62da      	str	r2, [r3, #44]	; 0x2c
 80031c0:	4b08      	ldr	r3, [pc, #32]	; (80031e4 <SystemInit+0x70>)
 80031c2:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80031c4:	4b07      	ldr	r3, [pc, #28]	; (80031e4 <SystemInit+0x70>)
 80031c6:	490c      	ldr	r1, [pc, #48]	; (80031f8 <SystemInit+0x84>)
 80031c8:	400a      	ands	r2, r1
 80031ca:	631a      	str	r2, [r3, #48]	; 0x30
 80031cc:	4b05      	ldr	r3, [pc, #20]	; (80031e4 <SystemInit+0x70>)
 80031ce:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 80031d0:	4b04      	ldr	r3, [pc, #16]	; (80031e4 <SystemInit+0x70>)
 80031d2:	2101      	movs	r1, #1
 80031d4:	438a      	bics	r2, r1
 80031d6:	635a      	str	r2, [r3, #52]	; 0x34
 80031d8:	4b02      	ldr	r3, [pc, #8]	; (80031e4 <SystemInit+0x70>)
 80031da:	2200      	movs	r2, #0
 80031dc:	609a      	str	r2, [r3, #8]
 80031de:	46c0      	nop			; (mov r8, r8)
 80031e0:	46bd      	mov	sp, r7
 80031e2:	bd80      	pop	{r7, pc}
 80031e4:	40021000 	.word	0x40021000
 80031e8:	f8ffb80c 	.word	0xf8ffb80c
 80031ec:	fef6ffff 	.word	0xfef6ffff
 80031f0:	fffbffff 	.word	0xfffbffff
 80031f4:	ffc0ffff 	.word	0xffc0ffff
 80031f8:	fffffeac 	.word	0xfffffeac

080031fc <xputc>:
 80031fc:	b580      	push	{r7, lr}
 80031fe:	b082      	sub	sp, #8
 8003200:	af00      	add	r7, sp, #0
 8003202:	0002      	movs	r2, r0
 8003204:	1dfb      	adds	r3, r7, #7
 8003206:	701a      	strb	r2, [r3, #0]
 8003208:	1dfb      	adds	r3, r7, #7
 800320a:	781b      	ldrb	r3, [r3, #0]
 800320c:	2b0a      	cmp	r3, #10
 800320e:	d102      	bne.n	8003216 <xputc+0x1a>
 8003210:	200d      	movs	r0, #13
 8003212:	f7ff fff3 	bl	80031fc <xputc>
 8003216:	4b0d      	ldr	r3, [pc, #52]	; (800324c <xputc+0x50>)
 8003218:	681b      	ldr	r3, [r3, #0]
 800321a:	2b00      	cmp	r3, #0
 800321c:	d008      	beq.n	8003230 <xputc+0x34>
 800321e:	4b0b      	ldr	r3, [pc, #44]	; (800324c <xputc+0x50>)
 8003220:	681b      	ldr	r3, [r3, #0]
 8003222:	1c59      	adds	r1, r3, #1
 8003224:	4a09      	ldr	r2, [pc, #36]	; (800324c <xputc+0x50>)
 8003226:	6011      	str	r1, [r2, #0]
 8003228:	1dfa      	adds	r2, r7, #7
 800322a:	7812      	ldrb	r2, [r2, #0]
 800322c:	701a      	strb	r2, [r3, #0]
 800322e:	e009      	b.n	8003244 <xputc+0x48>
 8003230:	4b07      	ldr	r3, [pc, #28]	; (8003250 <xputc+0x54>)
 8003232:	681b      	ldr	r3, [r3, #0]
 8003234:	2b00      	cmp	r3, #0
 8003236:	d005      	beq.n	8003244 <xputc+0x48>
 8003238:	4b05      	ldr	r3, [pc, #20]	; (8003250 <xputc+0x54>)
 800323a:	681b      	ldr	r3, [r3, #0]
 800323c:	1dfa      	adds	r2, r7, #7
 800323e:	7812      	ldrb	r2, [r2, #0]
 8003240:	0010      	movs	r0, r2
 8003242:	4798      	blx	r3
 8003244:	46bd      	mov	sp, r7
 8003246:	b002      	add	sp, #8
 8003248:	bd80      	pop	{r7, pc}
 800324a:	46c0      	nop			; (mov r8, r8)
 800324c:	20000114 	.word	0x20000114
 8003250:	2000011c 	.word	0x2000011c

08003254 <xputs>:
 8003254:	b580      	push	{r7, lr}
 8003256:	b082      	sub	sp, #8
 8003258:	af00      	add	r7, sp, #0
 800325a:	6078      	str	r0, [r7, #4]
 800325c:	e006      	b.n	800326c <xputs+0x18>
 800325e:	687b      	ldr	r3, [r7, #4]
 8003260:	1c5a      	adds	r2, r3, #1
 8003262:	607a      	str	r2, [r7, #4]
 8003264:	781b      	ldrb	r3, [r3, #0]
 8003266:	0018      	movs	r0, r3
 8003268:	f7ff ffc8 	bl	80031fc <xputc>
 800326c:	687b      	ldr	r3, [r7, #4]
 800326e:	781b      	ldrb	r3, [r3, #0]
 8003270:	2b00      	cmp	r3, #0
 8003272:	d1f4      	bne.n	800325e <xputs+0xa>
 8003274:	46c0      	nop			; (mov r8, r8)
 8003276:	46bd      	mov	sp, r7
 8003278:	b002      	add	sp, #8
 800327a:	bd80      	pop	{r7, pc}

0800327c <xvprintf>:
 800327c:	b590      	push	{r4, r7, lr}
 800327e:	b093      	sub	sp, #76	; 0x4c
 8003280:	af00      	add	r7, sp, #0
 8003282:	6078      	str	r0, [r7, #4]
 8003284:	6039      	str	r1, [r7, #0]
 8003286:	687b      	ldr	r3, [r7, #4]
 8003288:	1c5a      	adds	r2, r3, #1
 800328a:	607a      	str	r2, [r7, #4]
 800328c:	2133      	movs	r1, #51	; 0x33
 800328e:	187a      	adds	r2, r7, r1
 8003290:	781b      	ldrb	r3, [r3, #0]
 8003292:	7013      	strb	r3, [r2, #0]
 8003294:	187b      	adds	r3, r7, r1
 8003296:	781b      	ldrb	r3, [r3, #0]
 8003298:	2b00      	cmp	r3, #0
 800329a:	d100      	bne.n	800329e <xvprintf+0x22>
 800329c:	e16f      	b.n	800357e <xvprintf+0x302>
 800329e:	2333      	movs	r3, #51	; 0x33
 80032a0:	18fb      	adds	r3, r7, r3
 80032a2:	781b      	ldrb	r3, [r3, #0]
 80032a4:	2b25      	cmp	r3, #37	; 0x25
 80032a6:	d006      	beq.n	80032b6 <xvprintf+0x3a>
 80032a8:	2333      	movs	r3, #51	; 0x33
 80032aa:	18fb      	adds	r3, r7, r3
 80032ac:	781b      	ldrb	r3, [r3, #0]
 80032ae:	0018      	movs	r0, r3
 80032b0:	f7ff ffa4 	bl	80031fc <xputc>
 80032b4:	e162      	b.n	800357c <xvprintf+0x300>
 80032b6:	2300      	movs	r3, #0
 80032b8:	637b      	str	r3, [r7, #52]	; 0x34
 80032ba:	687b      	ldr	r3, [r7, #4]
 80032bc:	1c5a      	adds	r2, r3, #1
 80032be:	607a      	str	r2, [r7, #4]
 80032c0:	2133      	movs	r1, #51	; 0x33
 80032c2:	187a      	adds	r2, r7, r1
 80032c4:	781b      	ldrb	r3, [r3, #0]
 80032c6:	7013      	strb	r3, [r2, #0]
 80032c8:	187b      	adds	r3, r7, r1
 80032ca:	781b      	ldrb	r3, [r3, #0]
 80032cc:	2b30      	cmp	r3, #48	; 0x30
 80032ce:	d109      	bne.n	80032e4 <xvprintf+0x68>
 80032d0:	2301      	movs	r3, #1
 80032d2:	637b      	str	r3, [r7, #52]	; 0x34
 80032d4:	687b      	ldr	r3, [r7, #4]
 80032d6:	1c5a      	adds	r2, r3, #1
 80032d8:	607a      	str	r2, [r7, #4]
 80032da:	2233      	movs	r2, #51	; 0x33
 80032dc:	18ba      	adds	r2, r7, r2
 80032de:	781b      	ldrb	r3, [r3, #0]
 80032e0:	7013      	strb	r3, [r2, #0]
 80032e2:	e00d      	b.n	8003300 <xvprintf+0x84>
 80032e4:	2333      	movs	r3, #51	; 0x33
 80032e6:	18fb      	adds	r3, r7, r3
 80032e8:	781b      	ldrb	r3, [r3, #0]
 80032ea:	2b2d      	cmp	r3, #45	; 0x2d
 80032ec:	d108      	bne.n	8003300 <xvprintf+0x84>
 80032ee:	2302      	movs	r3, #2
 80032f0:	637b      	str	r3, [r7, #52]	; 0x34
 80032f2:	687b      	ldr	r3, [r7, #4]
 80032f4:	1c5a      	adds	r2, r3, #1
 80032f6:	607a      	str	r2, [r7, #4]
 80032f8:	2233      	movs	r2, #51	; 0x33
 80032fa:	18ba      	adds	r2, r7, r2
 80032fc:	781b      	ldrb	r3, [r3, #0]
 80032fe:	7013      	strb	r3, [r2, #0]
 8003300:	2300      	movs	r3, #0
 8003302:	63bb      	str	r3, [r7, #56]	; 0x38
 8003304:	e011      	b.n	800332a <xvprintf+0xae>
 8003306:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8003308:	0013      	movs	r3, r2
 800330a:	009b      	lsls	r3, r3, #2
 800330c:	189b      	adds	r3, r3, r2
 800330e:	005b      	lsls	r3, r3, #1
 8003310:	001a      	movs	r2, r3
 8003312:	2133      	movs	r1, #51	; 0x33
 8003314:	187b      	adds	r3, r7, r1
 8003316:	781b      	ldrb	r3, [r3, #0]
 8003318:	18d3      	adds	r3, r2, r3
 800331a:	3b30      	subs	r3, #48	; 0x30
 800331c:	63bb      	str	r3, [r7, #56]	; 0x38
 800331e:	687b      	ldr	r3, [r7, #4]
 8003320:	1c5a      	adds	r2, r3, #1
 8003322:	607a      	str	r2, [r7, #4]
 8003324:	187a      	adds	r2, r7, r1
 8003326:	781b      	ldrb	r3, [r3, #0]
 8003328:	7013      	strb	r3, [r2, #0]
 800332a:	2333      	movs	r3, #51	; 0x33
 800332c:	18fb      	adds	r3, r7, r3
 800332e:	781b      	ldrb	r3, [r3, #0]
 8003330:	2b2f      	cmp	r3, #47	; 0x2f
 8003332:	d904      	bls.n	800333e <xvprintf+0xc2>
 8003334:	2333      	movs	r3, #51	; 0x33
 8003336:	18fb      	adds	r3, r7, r3
 8003338:	781b      	ldrb	r3, [r3, #0]
 800333a:	2b39      	cmp	r3, #57	; 0x39
 800333c:	d9e3      	bls.n	8003306 <xvprintf+0x8a>
 800333e:	2333      	movs	r3, #51	; 0x33
 8003340:	18fb      	adds	r3, r7, r3
 8003342:	781b      	ldrb	r3, [r3, #0]
 8003344:	2b6c      	cmp	r3, #108	; 0x6c
 8003346:	d004      	beq.n	8003352 <xvprintf+0xd6>
 8003348:	2333      	movs	r3, #51	; 0x33
 800334a:	18fb      	adds	r3, r7, r3
 800334c:	781b      	ldrb	r3, [r3, #0]
 800334e:	2b4c      	cmp	r3, #76	; 0x4c
 8003350:	d10a      	bne.n	8003368 <xvprintf+0xec>
 8003352:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8003354:	2204      	movs	r2, #4
 8003356:	4313      	orrs	r3, r2
 8003358:	637b      	str	r3, [r7, #52]	; 0x34
 800335a:	687b      	ldr	r3, [r7, #4]
 800335c:	1c5a      	adds	r2, r3, #1
 800335e:	607a      	str	r2, [r7, #4]
 8003360:	2233      	movs	r2, #51	; 0x33
 8003362:	18ba      	adds	r2, r7, r2
 8003364:	781b      	ldrb	r3, [r3, #0]
 8003366:	7013      	strb	r3, [r2, #0]
 8003368:	2333      	movs	r3, #51	; 0x33
 800336a:	18fb      	adds	r3, r7, r3
 800336c:	781b      	ldrb	r3, [r3, #0]
 800336e:	2b00      	cmp	r3, #0
 8003370:	d100      	bne.n	8003374 <xvprintf+0xf8>
 8003372:	e106      	b.n	8003582 <xvprintf+0x306>
 8003374:	2132      	movs	r1, #50	; 0x32
 8003376:	187b      	adds	r3, r7, r1
 8003378:	2233      	movs	r2, #51	; 0x33
 800337a:	18ba      	adds	r2, r7, r2
 800337c:	7812      	ldrb	r2, [r2, #0]
 800337e:	701a      	strb	r2, [r3, #0]
 8003380:	187b      	adds	r3, r7, r1
 8003382:	781b      	ldrb	r3, [r3, #0]
 8003384:	2b60      	cmp	r3, #96	; 0x60
 8003386:	d905      	bls.n	8003394 <xvprintf+0x118>
 8003388:	2232      	movs	r2, #50	; 0x32
 800338a:	18bb      	adds	r3, r7, r2
 800338c:	18ba      	adds	r2, r7, r2
 800338e:	7812      	ldrb	r2, [r2, #0]
 8003390:	3a20      	subs	r2, #32
 8003392:	701a      	strb	r2, [r3, #0]
 8003394:	2332      	movs	r3, #50	; 0x32
 8003396:	18fb      	adds	r3, r7, r3
 8003398:	781b      	ldrb	r3, [r3, #0]
 800339a:	3b42      	subs	r3, #66	; 0x42
 800339c:	2b16      	cmp	r3, #22
 800339e:	d847      	bhi.n	8003430 <xvprintf+0x1b4>
 80033a0:	009a      	lsls	r2, r3, #2
 80033a2:	4b7a      	ldr	r3, [pc, #488]	; (800358c <xvprintf+0x310>)
 80033a4:	18d3      	adds	r3, r2, r3
 80033a6:	681b      	ldr	r3, [r3, #0]
 80033a8:	469f      	mov	pc, r3
 80033aa:	683b      	ldr	r3, [r7, #0]
 80033ac:	1d1a      	adds	r2, r3, #4
 80033ae:	603a      	str	r2, [r7, #0]
 80033b0:	681b      	ldr	r3, [r3, #0]
 80033b2:	627b      	str	r3, [r7, #36]	; 0x24
 80033b4:	2300      	movs	r3, #0
 80033b6:	63fb      	str	r3, [r7, #60]	; 0x3c
 80033b8:	e002      	b.n	80033c0 <xvprintf+0x144>
 80033ba:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80033bc:	3301      	adds	r3, #1
 80033be:	63fb      	str	r3, [r7, #60]	; 0x3c
 80033c0:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 80033c2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80033c4:	18d3      	adds	r3, r2, r3
 80033c6:	781b      	ldrb	r3, [r3, #0]
 80033c8:	2b00      	cmp	r3, #0
 80033ca:	d1f6      	bne.n	80033ba <xvprintf+0x13e>
 80033cc:	e002      	b.n	80033d4 <xvprintf+0x158>
 80033ce:	2020      	movs	r0, #32
 80033d0:	f7ff ff14 	bl	80031fc <xputc>
 80033d4:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80033d6:	2202      	movs	r2, #2
 80033d8:	4013      	ands	r3, r2
 80033da:	d105      	bne.n	80033e8 <xvprintf+0x16c>
 80033dc:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80033de:	1c5a      	adds	r2, r3, #1
 80033e0:	63fa      	str	r2, [r7, #60]	; 0x3c
 80033e2:	6bba      	ldr	r2, [r7, #56]	; 0x38
 80033e4:	429a      	cmp	r2, r3
 80033e6:	d8f2      	bhi.n	80033ce <xvprintf+0x152>
 80033e8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80033ea:	0018      	movs	r0, r3
 80033ec:	f7ff ff32 	bl	8003254 <xputs>
 80033f0:	e002      	b.n	80033f8 <xvprintf+0x17c>
 80033f2:	2020      	movs	r0, #32
 80033f4:	f7ff ff02 	bl	80031fc <xputc>
 80033f8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80033fa:	1c5a      	adds	r2, r3, #1
 80033fc:	63fa      	str	r2, [r7, #60]	; 0x3c
 80033fe:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8003400:	429a      	cmp	r2, r3
 8003402:	d8f6      	bhi.n	80033f2 <xvprintf+0x176>
 8003404:	e0ba      	b.n	800357c <xvprintf+0x300>
 8003406:	683b      	ldr	r3, [r7, #0]
 8003408:	1d1a      	adds	r2, r3, #4
 800340a:	603a      	str	r2, [r7, #0]
 800340c:	681b      	ldr	r3, [r3, #0]
 800340e:	b2db      	uxtb	r3, r3
 8003410:	0018      	movs	r0, r3
 8003412:	f7ff fef3 	bl	80031fc <xputc>
 8003416:	e0b1      	b.n	800357c <xvprintf+0x300>
 8003418:	2302      	movs	r3, #2
 800341a:	647b      	str	r3, [r7, #68]	; 0x44
 800341c:	e00f      	b.n	800343e <xvprintf+0x1c2>
 800341e:	2308      	movs	r3, #8
 8003420:	647b      	str	r3, [r7, #68]	; 0x44
 8003422:	e00c      	b.n	800343e <xvprintf+0x1c2>
 8003424:	230a      	movs	r3, #10
 8003426:	647b      	str	r3, [r7, #68]	; 0x44
 8003428:	e009      	b.n	800343e <xvprintf+0x1c2>
 800342a:	2310      	movs	r3, #16
 800342c:	647b      	str	r3, [r7, #68]	; 0x44
 800342e:	e006      	b.n	800343e <xvprintf+0x1c2>
 8003430:	2333      	movs	r3, #51	; 0x33
 8003432:	18fb      	adds	r3, r7, r3
 8003434:	781b      	ldrb	r3, [r3, #0]
 8003436:	0018      	movs	r0, r3
 8003438:	f7ff fee0 	bl	80031fc <xputc>
 800343c:	e09e      	b.n	800357c <xvprintf+0x300>
 800343e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8003440:	2204      	movs	r2, #4
 8003442:	4013      	ands	r3, r2
 8003444:	d005      	beq.n	8003452 <xvprintf+0x1d6>
 8003446:	683b      	ldr	r3, [r7, #0]
 8003448:	1d1a      	adds	r2, r3, #4
 800344a:	603a      	str	r2, [r7, #0]
 800344c:	681b      	ldr	r3, [r3, #0]
 800344e:	62fb      	str	r3, [r7, #44]	; 0x2c
 8003450:	e00e      	b.n	8003470 <xvprintf+0x1f4>
 8003452:	2332      	movs	r3, #50	; 0x32
 8003454:	18fb      	adds	r3, r7, r3
 8003456:	781b      	ldrb	r3, [r3, #0]
 8003458:	2b44      	cmp	r3, #68	; 0x44
 800345a:	d104      	bne.n	8003466 <xvprintf+0x1ea>
 800345c:	683b      	ldr	r3, [r7, #0]
 800345e:	1d1a      	adds	r2, r3, #4
 8003460:	603a      	str	r2, [r7, #0]
 8003462:	681b      	ldr	r3, [r3, #0]
 8003464:	e003      	b.n	800346e <xvprintf+0x1f2>
 8003466:	683b      	ldr	r3, [r7, #0]
 8003468:	1d1a      	adds	r2, r3, #4
 800346a:	603a      	str	r2, [r7, #0]
 800346c:	681b      	ldr	r3, [r3, #0]
 800346e:	62fb      	str	r3, [r7, #44]	; 0x2c
 8003470:	2332      	movs	r3, #50	; 0x32
 8003472:	18fb      	adds	r3, r7, r3
 8003474:	781b      	ldrb	r3, [r3, #0]
 8003476:	2b44      	cmp	r3, #68	; 0x44
 8003478:	d109      	bne.n	800348e <xvprintf+0x212>
 800347a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800347c:	2b00      	cmp	r3, #0
 800347e:	da06      	bge.n	800348e <xvprintf+0x212>
 8003480:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8003482:	425b      	negs	r3, r3
 8003484:	62fb      	str	r3, [r7, #44]	; 0x2c
 8003486:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8003488:	2210      	movs	r2, #16
 800348a:	4313      	orrs	r3, r2
 800348c:	637b      	str	r3, [r7, #52]	; 0x34
 800348e:	2300      	movs	r3, #0
 8003490:	643b      	str	r3, [r7, #64]	; 0x40
 8003492:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8003494:	62bb      	str	r3, [r7, #40]	; 0x28
 8003496:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8003498:	6c79      	ldr	r1, [r7, #68]	; 0x44
 800349a:	0018      	movs	r0, r3
 800349c:	f7fc feba 	bl	8000214 <__aeabi_uidivmod>
 80034a0:	000b      	movs	r3, r1
 80034a2:	001a      	movs	r2, r3
 80034a4:	2432      	movs	r4, #50	; 0x32
 80034a6:	193b      	adds	r3, r7, r4
 80034a8:	701a      	strb	r2, [r3, #0]
 80034aa:	6c79      	ldr	r1, [r7, #68]	; 0x44
 80034ac:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 80034ae:	f7fc fe2b 	bl	8000108 <__udivsi3>
 80034b2:	0003      	movs	r3, r0
 80034b4:	62bb      	str	r3, [r7, #40]	; 0x28
 80034b6:	193b      	adds	r3, r7, r4
 80034b8:	781b      	ldrb	r3, [r3, #0]
 80034ba:	2b09      	cmp	r3, #9
 80034bc:	d90d      	bls.n	80034da <xvprintf+0x25e>
 80034be:	2333      	movs	r3, #51	; 0x33
 80034c0:	18fb      	adds	r3, r7, r3
 80034c2:	781b      	ldrb	r3, [r3, #0]
 80034c4:	2b78      	cmp	r3, #120	; 0x78
 80034c6:	d101      	bne.n	80034cc <xvprintf+0x250>
 80034c8:	2327      	movs	r3, #39	; 0x27
 80034ca:	e000      	b.n	80034ce <xvprintf+0x252>
 80034cc:	2307      	movs	r3, #7
 80034ce:	2132      	movs	r1, #50	; 0x32
 80034d0:	187a      	adds	r2, r7, r1
 80034d2:	1879      	adds	r1, r7, r1
 80034d4:	7809      	ldrb	r1, [r1, #0]
 80034d6:	185b      	adds	r3, r3, r1
 80034d8:	7013      	strb	r3, [r2, #0]
 80034da:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80034dc:	1c5a      	adds	r2, r3, #1
 80034de:	643a      	str	r2, [r7, #64]	; 0x40
 80034e0:	2232      	movs	r2, #50	; 0x32
 80034e2:	18ba      	adds	r2, r7, r2
 80034e4:	7812      	ldrb	r2, [r2, #0]
 80034e6:	3230      	adds	r2, #48	; 0x30
 80034e8:	b2d1      	uxtb	r1, r2
 80034ea:	220c      	movs	r2, #12
 80034ec:	18ba      	adds	r2, r7, r2
 80034ee:	54d1      	strb	r1, [r2, r3]
 80034f0:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80034f2:	2b00      	cmp	r3, #0
 80034f4:	d002      	beq.n	80034fc <xvprintf+0x280>
 80034f6:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80034f8:	2b17      	cmp	r3, #23
 80034fa:	d9cc      	bls.n	8003496 <xvprintf+0x21a>
 80034fc:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80034fe:	2210      	movs	r2, #16
 8003500:	4013      	ands	r3, r2
 8003502:	d006      	beq.n	8003512 <xvprintf+0x296>
 8003504:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003506:	1c5a      	adds	r2, r3, #1
 8003508:	643a      	str	r2, [r7, #64]	; 0x40
 800350a:	220c      	movs	r2, #12
 800350c:	18ba      	adds	r2, r7, r2
 800350e:	212d      	movs	r1, #45	; 0x2d
 8003510:	54d1      	strb	r1, [r2, r3]
 8003512:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003514:	63fb      	str	r3, [r7, #60]	; 0x3c
 8003516:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8003518:	2201      	movs	r2, #1
 800351a:	4013      	ands	r3, r2
 800351c:	d001      	beq.n	8003522 <xvprintf+0x2a6>
 800351e:	2230      	movs	r2, #48	; 0x30
 8003520:	e000      	b.n	8003524 <xvprintf+0x2a8>
 8003522:	2220      	movs	r2, #32
 8003524:	2332      	movs	r3, #50	; 0x32
 8003526:	18fb      	adds	r3, r7, r3
 8003528:	701a      	strb	r2, [r3, #0]
 800352a:	e005      	b.n	8003538 <xvprintf+0x2bc>
 800352c:	2332      	movs	r3, #50	; 0x32
 800352e:	18fb      	adds	r3, r7, r3
 8003530:	781b      	ldrb	r3, [r3, #0]
 8003532:	0018      	movs	r0, r3
 8003534:	f7ff fe62 	bl	80031fc <xputc>
 8003538:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800353a:	2202      	movs	r2, #2
 800353c:	4013      	ands	r3, r2
 800353e:	d105      	bne.n	800354c <xvprintf+0x2d0>
 8003540:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8003542:	1c5a      	adds	r2, r3, #1
 8003544:	63fa      	str	r2, [r7, #60]	; 0x3c
 8003546:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8003548:	429a      	cmp	r2, r3
 800354a:	d8ef      	bhi.n	800352c <xvprintf+0x2b0>
 800354c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800354e:	3b01      	subs	r3, #1
 8003550:	643b      	str	r3, [r7, #64]	; 0x40
 8003552:	230c      	movs	r3, #12
 8003554:	18fa      	adds	r2, r7, r3
 8003556:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003558:	18d3      	adds	r3, r2, r3
 800355a:	781b      	ldrb	r3, [r3, #0]
 800355c:	0018      	movs	r0, r3
 800355e:	f7ff fe4d 	bl	80031fc <xputc>
 8003562:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003564:	2b00      	cmp	r3, #0
 8003566:	d1f1      	bne.n	800354c <xvprintf+0x2d0>
 8003568:	e002      	b.n	8003570 <xvprintf+0x2f4>
 800356a:	2020      	movs	r0, #32
 800356c:	f7ff fe46 	bl	80031fc <xputc>
 8003570:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8003572:	1c5a      	adds	r2, r3, #1
 8003574:	63fa      	str	r2, [r7, #60]	; 0x3c
 8003576:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8003578:	429a      	cmp	r2, r3
 800357a:	d8f6      	bhi.n	800356a <xvprintf+0x2ee>
 800357c:	e683      	b.n	8003286 <xvprintf+0xa>
 800357e:	46c0      	nop			; (mov r8, r8)
 8003580:	e000      	b.n	8003584 <xvprintf+0x308>
 8003582:	46c0      	nop			; (mov r8, r8)
 8003584:	46c0      	nop			; (mov r8, r8)
 8003586:	46bd      	mov	sp, r7
 8003588:	b013      	add	sp, #76	; 0x4c
 800358a:	bd90      	pop	{r4, r7, pc}
 800358c:	08003760 	.word	0x08003760

08003590 <xprintf>:
 8003590:	b40f      	push	{r0, r1, r2, r3}
 8003592:	b580      	push	{r7, lr}
 8003594:	b082      	sub	sp, #8
 8003596:	af00      	add	r7, sp, #0
 8003598:	2314      	movs	r3, #20
 800359a:	18fb      	adds	r3, r7, r3
 800359c:	607b      	str	r3, [r7, #4]
 800359e:	687a      	ldr	r2, [r7, #4]
 80035a0:	693b      	ldr	r3, [r7, #16]
 80035a2:	0011      	movs	r1, r2
 80035a4:	0018      	movs	r0, r3
 80035a6:	f7ff fe69 	bl	800327c <xvprintf>
 80035aa:	46c0      	nop			; (mov r8, r8)
 80035ac:	46bd      	mov	sp, r7
 80035ae:	b002      	add	sp, #8
 80035b0:	bc80      	pop	{r7}
 80035b2:	bc08      	pop	{r3}
 80035b4:	b004      	add	sp, #16
 80035b6:	4718      	bx	r3

080035b8 <NMI_Handler>:
 80035b8:	b580      	push	{r7, lr}
 80035ba:	af00      	add	r7, sp, #0
 80035bc:	46c0      	nop			; (mov r8, r8)
 80035be:	46bd      	mov	sp, r7
 80035c0:	bd80      	pop	{r7, pc}

080035c2 <HardFault_Handler>:
 80035c2:	b580      	push	{r7, lr}
 80035c4:	af00      	add	r7, sp, #0
 80035c6:	e7fe      	b.n	80035c6 <HardFault_Handler+0x4>

080035c8 <SVC_Handler>:
 80035c8:	b580      	push	{r7, lr}
 80035ca:	af00      	add	r7, sp, #0
 80035cc:	46c0      	nop			; (mov r8, r8)
 80035ce:	46bd      	mov	sp, r7
 80035d0:	bd80      	pop	{r7, pc}

080035d2 <PendSV_Handler>:
 80035d2:	b580      	push	{r7, lr}
 80035d4:	af00      	add	r7, sp, #0
 80035d6:	46c0      	nop			; (mov r8, r8)
 80035d8:	46bd      	mov	sp, r7
 80035da:	bd80      	pop	{r7, pc}

080035dc <__libc_init_array>:
 80035dc:	b570      	push	{r4, r5, r6, lr}
 80035de:	2600      	movs	r6, #0
 80035e0:	4d0c      	ldr	r5, [pc, #48]	; (8003614 <__libc_init_array+0x38>)
 80035e2:	4c0d      	ldr	r4, [pc, #52]	; (8003618 <__libc_init_array+0x3c>)
 80035e4:	1b64      	subs	r4, r4, r5
 80035e6:	10a4      	asrs	r4, r4, #2
 80035e8:	42a6      	cmp	r6, r4
 80035ea:	d109      	bne.n	8003600 <__libc_init_array+0x24>
 80035ec:	2600      	movs	r6, #0
 80035ee:	f000 f821 	bl	8003634 <_init>
 80035f2:	4d0a      	ldr	r5, [pc, #40]	; (800361c <__libc_init_array+0x40>)
 80035f4:	4c0a      	ldr	r4, [pc, #40]	; (8003620 <__libc_init_array+0x44>)
 80035f6:	1b64      	subs	r4, r4, r5
 80035f8:	10a4      	asrs	r4, r4, #2
 80035fa:	42a6      	cmp	r6, r4
 80035fc:	d105      	bne.n	800360a <__libc_init_array+0x2e>
 80035fe:	bd70      	pop	{r4, r5, r6, pc}
 8003600:	00b3      	lsls	r3, r6, #2
 8003602:	58eb      	ldr	r3, [r5, r3]
 8003604:	4798      	blx	r3
 8003606:	3601      	adds	r6, #1
 8003608:	e7ee      	b.n	80035e8 <__libc_init_array+0xc>
 800360a:	00b3      	lsls	r3, r6, #2
 800360c:	58eb      	ldr	r3, [r5, r3]
 800360e:	4798      	blx	r3
 8003610:	3601      	adds	r6, #1
 8003612:	e7f2      	b.n	80035fa <__libc_init_array+0x1e>
 8003614:	080037bc 	.word	0x080037bc
 8003618:	080037bc 	.word	0x080037bc
 800361c:	080037bc 	.word	0x080037bc
 8003620:	080037c0 	.word	0x080037c0

08003624 <memset>:
 8003624:	0003      	movs	r3, r0
 8003626:	1812      	adds	r2, r2, r0
 8003628:	4293      	cmp	r3, r2
 800362a:	d100      	bne.n	800362e <memset+0xa>
 800362c:	4770      	bx	lr
 800362e:	7019      	strb	r1, [r3, #0]
 8003630:	3301      	adds	r3, #1
 8003632:	e7f9      	b.n	8003628 <memset+0x4>

08003634 <_init>:
 8003634:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8003636:	46c0      	nop			; (mov r8, r8)
 8003638:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800363a:	bc08      	pop	{r3}
 800363c:	469e      	mov	lr, r3
 800363e:	4770      	bx	lr

08003640 <_fini>:
 8003640:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8003642:	46c0      	nop			; (mov r8, r8)
 8003644:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8003646:	bc08      	pop	{r3}
 8003648:	469e      	mov	lr, r3
 800364a:	4770      	bx	lr
