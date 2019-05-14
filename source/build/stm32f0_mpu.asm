
build/stm32f0_mpu.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             0000a3b0  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000190  0800a470  0800a470  0001a470  2**3  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000004  0800a600  0800a600  0001a600  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  0800a604  0800a604  0001a604  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000078  20000000  0800a608  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000278  20000078  0800a680  00020078  2**3  ALLOC
  7 ._user_heap_stack 00000600  200002f0  0800a680  000202f0  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020078  2**0  CONTENTS, READONLY
  9 .debug_info       00007b61  00000000  00000000  000200a0  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     00001557  00000000  00000000  00027c01  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        000019a2  00000000  00000000  00029158  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    000004e8  00000000  00000000  0002aafa  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     00000488  00000000  00000000  0002afe2  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       00001d6f  00000000  00000000  0002b46a  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        0000172c  00000000  00000000  0002d1d9  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          0000007f  00000000  00000000  0002e905  2**0  CONTENTS, READONLY
 17 .debug_frame      00001580  00000000  00000000  0002e984  2**2  CONTENTS, READONLY, DEBUGGING

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
 80000dc:	20000078 	.word	0x20000078
 80000e0:	00000000 	.word	0x00000000
 80000e4:	0800a458 	.word	0x0800a458

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
 8000100:	2000007c 	.word	0x2000007c
 8000104:	0800a458 	.word	0x0800a458

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

08000220 <__aeabi_cdrcmple>:
 8000220:	4684      	mov	ip, r0
 8000222:	1c10      	adds	r0, r2, #0
 8000224:	4662      	mov	r2, ip
 8000226:	468c      	mov	ip, r1
 8000228:	1c19      	adds	r1, r3, #0
 800022a:	4663      	mov	r3, ip
 800022c:	e000      	b.n	8000230 <__aeabi_cdcmpeq>
 800022e:	46c0      	nop			; (mov r8, r8)

08000230 <__aeabi_cdcmpeq>:
 8000230:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8000232:	f001 fba1 	bl	8001978 <__ledf2>
 8000236:	2800      	cmp	r0, #0
 8000238:	d401      	bmi.n	800023e <__aeabi_cdcmpeq+0xe>
 800023a:	2100      	movs	r1, #0
 800023c:	42c8      	cmn	r0, r1
 800023e:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

08000240 <__aeabi_dcmpeq>:
 8000240:	b510      	push	{r4, lr}
 8000242:	f001 faf9 	bl	8001838 <__eqdf2>
 8000246:	4240      	negs	r0, r0
 8000248:	3001      	adds	r0, #1
 800024a:	bd10      	pop	{r4, pc}

0800024c <__aeabi_dcmplt>:
 800024c:	b510      	push	{r4, lr}
 800024e:	f001 fb93 	bl	8001978 <__ledf2>
 8000252:	2800      	cmp	r0, #0
 8000254:	db01      	blt.n	800025a <__aeabi_dcmplt+0xe>
 8000256:	2000      	movs	r0, #0
 8000258:	bd10      	pop	{r4, pc}
 800025a:	2001      	movs	r0, #1
 800025c:	bd10      	pop	{r4, pc}
 800025e:	46c0      	nop			; (mov r8, r8)

08000260 <__aeabi_dcmple>:
 8000260:	b510      	push	{r4, lr}
 8000262:	f001 fb89 	bl	8001978 <__ledf2>
 8000266:	2800      	cmp	r0, #0
 8000268:	dd01      	ble.n	800026e <__aeabi_dcmple+0xe>
 800026a:	2000      	movs	r0, #0
 800026c:	bd10      	pop	{r4, pc}
 800026e:	2001      	movs	r0, #1
 8000270:	bd10      	pop	{r4, pc}
 8000272:	46c0      	nop			; (mov r8, r8)

08000274 <__aeabi_dcmpgt>:
 8000274:	b510      	push	{r4, lr}
 8000276:	f001 fb1b 	bl	80018b0 <__gedf2>
 800027a:	2800      	cmp	r0, #0
 800027c:	dc01      	bgt.n	8000282 <__aeabi_dcmpgt+0xe>
 800027e:	2000      	movs	r0, #0
 8000280:	bd10      	pop	{r4, pc}
 8000282:	2001      	movs	r0, #1
 8000284:	bd10      	pop	{r4, pc}
 8000286:	46c0      	nop			; (mov r8, r8)

08000288 <__aeabi_dcmpge>:
 8000288:	b510      	push	{r4, lr}
 800028a:	f001 fb11 	bl	80018b0 <__gedf2>
 800028e:	2800      	cmp	r0, #0
 8000290:	da01      	bge.n	8000296 <__aeabi_dcmpge+0xe>
 8000292:	2000      	movs	r0, #0
 8000294:	bd10      	pop	{r4, pc}
 8000296:	2001      	movs	r0, #1
 8000298:	bd10      	pop	{r4, pc}
 800029a:	46c0      	nop			; (mov r8, r8)

0800029c <__aeabi_fadd>:
 800029c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800029e:	4647      	mov	r7, r8
 80002a0:	46ce      	mov	lr, r9
 80002a2:	0243      	lsls	r3, r0, #9
 80002a4:	0a5b      	lsrs	r3, r3, #9
 80002a6:	0044      	lsls	r4, r0, #1
 80002a8:	0fc2      	lsrs	r2, r0, #31
 80002aa:	469c      	mov	ip, r3
 80002ac:	0048      	lsls	r0, r1, #1
 80002ae:	00dd      	lsls	r5, r3, #3
 80002b0:	024b      	lsls	r3, r1, #9
 80002b2:	0e24      	lsrs	r4, r4, #24
 80002b4:	0a5b      	lsrs	r3, r3, #9
 80002b6:	0e00      	lsrs	r0, r0, #24
 80002b8:	b580      	push	{r7, lr}
 80002ba:	4698      	mov	r8, r3
 80002bc:	0026      	movs	r6, r4
 80002be:	4691      	mov	r9, r2
 80002c0:	0fc9      	lsrs	r1, r1, #31
 80002c2:	00db      	lsls	r3, r3, #3
 80002c4:	1a27      	subs	r7, r4, r0
 80002c6:	428a      	cmp	r2, r1
 80002c8:	d029      	beq.n	800031e <__aeabi_fadd+0x82>
 80002ca:	2f00      	cmp	r7, #0
 80002cc:	dd15      	ble.n	80002fa <__aeabi_fadd+0x5e>
 80002ce:	2800      	cmp	r0, #0
 80002d0:	d14a      	bne.n	8000368 <__aeabi_fadd+0xcc>
 80002d2:	2b00      	cmp	r3, #0
 80002d4:	d000      	beq.n	80002d8 <__aeabi_fadd+0x3c>
 80002d6:	e095      	b.n	8000404 <__aeabi_fadd+0x168>
 80002d8:	08ed      	lsrs	r5, r5, #3
 80002da:	2cff      	cmp	r4, #255	; 0xff
 80002dc:	d100      	bne.n	80002e0 <__aeabi_fadd+0x44>
 80002de:	e088      	b.n	80003f2 <__aeabi_fadd+0x156>
 80002e0:	026b      	lsls	r3, r5, #9
 80002e2:	0a5b      	lsrs	r3, r3, #9
 80002e4:	b2e6      	uxtb	r6, r4
 80002e6:	025b      	lsls	r3, r3, #9
 80002e8:	05f6      	lsls	r6, r6, #23
 80002ea:	0a58      	lsrs	r0, r3, #9
 80002ec:	4330      	orrs	r0, r6
 80002ee:	07d2      	lsls	r2, r2, #31
 80002f0:	4310      	orrs	r0, r2
 80002f2:	bc0c      	pop	{r2, r3}
 80002f4:	4690      	mov	r8, r2
 80002f6:	4699      	mov	r9, r3
 80002f8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80002fa:	2f00      	cmp	r7, #0
 80002fc:	d000      	beq.n	8000300 <__aeabi_fadd+0x64>
 80002fe:	e087      	b.n	8000410 <__aeabi_fadd+0x174>
 8000300:	1c60      	adds	r0, r4, #1
 8000302:	b2c0      	uxtb	r0, r0
 8000304:	2801      	cmp	r0, #1
 8000306:	dc00      	bgt.n	800030a <__aeabi_fadd+0x6e>
 8000308:	e0b6      	b.n	8000478 <__aeabi_fadd+0x1dc>
 800030a:	1aee      	subs	r6, r5, r3
 800030c:	0172      	lsls	r2, r6, #5
 800030e:	d500      	bpl.n	8000312 <__aeabi_fadd+0x76>
 8000310:	e0c5      	b.n	800049e <__aeabi_fadd+0x202>
 8000312:	2e00      	cmp	r6, #0
 8000314:	d13d      	bne.n	8000392 <__aeabi_fadd+0xf6>
 8000316:	2200      	movs	r2, #0
 8000318:	2600      	movs	r6, #0
 800031a:	2300      	movs	r3, #0
 800031c:	e7e3      	b.n	80002e6 <__aeabi_fadd+0x4a>
 800031e:	2f00      	cmp	r7, #0
 8000320:	dc00      	bgt.n	8000324 <__aeabi_fadd+0x88>
 8000322:	e096      	b.n	8000452 <__aeabi_fadd+0x1b6>
 8000324:	2800      	cmp	r0, #0
 8000326:	d05d      	beq.n	80003e4 <__aeabi_fadd+0x148>
 8000328:	2cff      	cmp	r4, #255	; 0xff
 800032a:	d060      	beq.n	80003ee <__aeabi_fadd+0x152>
 800032c:	2280      	movs	r2, #128	; 0x80
 800032e:	04d2      	lsls	r2, r2, #19
 8000330:	4313      	orrs	r3, r2
 8000332:	2f1b      	cmp	r7, #27
 8000334:	dd00      	ble.n	8000338 <__aeabi_fadd+0x9c>
 8000336:	e0ec      	b.n	8000512 <__aeabi_fadd+0x276>
 8000338:	2220      	movs	r2, #32
 800033a:	1bd2      	subs	r2, r2, r7
 800033c:	0018      	movs	r0, r3
 800033e:	4093      	lsls	r3, r2
 8000340:	40f8      	lsrs	r0, r7
 8000342:	1e5a      	subs	r2, r3, #1
 8000344:	4193      	sbcs	r3, r2
 8000346:	4303      	orrs	r3, r0
 8000348:	18ed      	adds	r5, r5, r3
 800034a:	016b      	lsls	r3, r5, #5
 800034c:	d57b      	bpl.n	8000446 <__aeabi_fadd+0x1aa>
 800034e:	3401      	adds	r4, #1
 8000350:	2cff      	cmp	r4, #255	; 0xff
 8000352:	d100      	bne.n	8000356 <__aeabi_fadd+0xba>
 8000354:	e0b7      	b.n	80004c6 <__aeabi_fadd+0x22a>
 8000356:	2201      	movs	r2, #1
 8000358:	2607      	movs	r6, #7
 800035a:	402a      	ands	r2, r5
 800035c:	086b      	lsrs	r3, r5, #1
 800035e:	4d9a      	ldr	r5, [pc, #616]	; (80005c8 <__aeabi_fadd+0x32c>)
 8000360:	401d      	ands	r5, r3
 8000362:	4315      	orrs	r5, r2
 8000364:	402e      	ands	r6, r5
 8000366:	e029      	b.n	80003bc <__aeabi_fadd+0x120>
 8000368:	2cff      	cmp	r4, #255	; 0xff
 800036a:	d0b5      	beq.n	80002d8 <__aeabi_fadd+0x3c>
 800036c:	2280      	movs	r2, #128	; 0x80
 800036e:	04d2      	lsls	r2, r2, #19
 8000370:	4313      	orrs	r3, r2
 8000372:	2f1b      	cmp	r7, #27
 8000374:	dd00      	ble.n	8000378 <__aeabi_fadd+0xdc>
 8000376:	e0b2      	b.n	80004de <__aeabi_fadd+0x242>
 8000378:	2220      	movs	r2, #32
 800037a:	1bd2      	subs	r2, r2, r7
 800037c:	0019      	movs	r1, r3
 800037e:	4093      	lsls	r3, r2
 8000380:	40f9      	lsrs	r1, r7
 8000382:	1e5a      	subs	r2, r3, #1
 8000384:	4193      	sbcs	r3, r2
 8000386:	430b      	orrs	r3, r1
 8000388:	1aed      	subs	r5, r5, r3
 800038a:	016b      	lsls	r3, r5, #5
 800038c:	d55b      	bpl.n	8000446 <__aeabi_fadd+0x1aa>
 800038e:	01ad      	lsls	r5, r5, #6
 8000390:	09ae      	lsrs	r6, r5, #6
 8000392:	0030      	movs	r0, r6
 8000394:	f002 f99e 	bl	80026d4 <__clzsi2>
 8000398:	3805      	subs	r0, #5
 800039a:	4086      	lsls	r6, r0
 800039c:	4284      	cmp	r4, r0
 800039e:	dc65      	bgt.n	800046c <__aeabi_fadd+0x1d0>
 80003a0:	1b04      	subs	r4, r0, r4
 80003a2:	0033      	movs	r3, r6
 80003a4:	2020      	movs	r0, #32
 80003a6:	3401      	adds	r4, #1
 80003a8:	40e3      	lsrs	r3, r4
 80003aa:	1b04      	subs	r4, r0, r4
 80003ac:	40a6      	lsls	r6, r4
 80003ae:	1e75      	subs	r5, r6, #1
 80003b0:	41ae      	sbcs	r6, r5
 80003b2:	4333      	orrs	r3, r6
 80003b4:	2607      	movs	r6, #7
 80003b6:	001d      	movs	r5, r3
 80003b8:	2400      	movs	r4, #0
 80003ba:	401e      	ands	r6, r3
 80003bc:	2201      	movs	r2, #1
 80003be:	464b      	mov	r3, r9
 80003c0:	401a      	ands	r2, r3
 80003c2:	2e00      	cmp	r6, #0
 80003c4:	d004      	beq.n	80003d0 <__aeabi_fadd+0x134>
 80003c6:	230f      	movs	r3, #15
 80003c8:	402b      	ands	r3, r5
 80003ca:	2b04      	cmp	r3, #4
 80003cc:	d000      	beq.n	80003d0 <__aeabi_fadd+0x134>
 80003ce:	3504      	adds	r5, #4
 80003d0:	016b      	lsls	r3, r5, #5
 80003d2:	d400      	bmi.n	80003d6 <__aeabi_fadd+0x13a>
 80003d4:	e780      	b.n	80002d8 <__aeabi_fadd+0x3c>
 80003d6:	3401      	adds	r4, #1
 80003d8:	b2e6      	uxtb	r6, r4
 80003da:	2cff      	cmp	r4, #255	; 0xff
 80003dc:	d12f      	bne.n	800043e <__aeabi_fadd+0x1a2>
 80003de:	26ff      	movs	r6, #255	; 0xff
 80003e0:	2300      	movs	r3, #0
 80003e2:	e780      	b.n	80002e6 <__aeabi_fadd+0x4a>
 80003e4:	2b00      	cmp	r3, #0
 80003e6:	d152      	bne.n	800048e <__aeabi_fadd+0x1f2>
 80003e8:	2cff      	cmp	r4, #255	; 0xff
 80003ea:	d000      	beq.n	80003ee <__aeabi_fadd+0x152>
 80003ec:	e774      	b.n	80002d8 <__aeabi_fadd+0x3c>
 80003ee:	000a      	movs	r2, r1
 80003f0:	08ed      	lsrs	r5, r5, #3
 80003f2:	2d00      	cmp	r5, #0
 80003f4:	d0f3      	beq.n	80003de <__aeabi_fadd+0x142>
 80003f6:	2380      	movs	r3, #128	; 0x80
 80003f8:	03db      	lsls	r3, r3, #15
 80003fa:	432b      	orrs	r3, r5
 80003fc:	025b      	lsls	r3, r3, #9
 80003fe:	0a5b      	lsrs	r3, r3, #9
 8000400:	26ff      	movs	r6, #255	; 0xff
 8000402:	e770      	b.n	80002e6 <__aeabi_fadd+0x4a>
 8000404:	3f01      	subs	r7, #1
 8000406:	2f00      	cmp	r7, #0
 8000408:	d0be      	beq.n	8000388 <__aeabi_fadd+0xec>
 800040a:	2cff      	cmp	r4, #255	; 0xff
 800040c:	d1b1      	bne.n	8000372 <__aeabi_fadd+0xd6>
 800040e:	e763      	b.n	80002d8 <__aeabi_fadd+0x3c>
 8000410:	2c00      	cmp	r4, #0
 8000412:	d047      	beq.n	80004a4 <__aeabi_fadd+0x208>
 8000414:	28ff      	cmp	r0, #255	; 0xff
 8000416:	d069      	beq.n	80004ec <__aeabi_fadd+0x250>
 8000418:	2480      	movs	r4, #128	; 0x80
 800041a:	04e4      	lsls	r4, r4, #19
 800041c:	427a      	negs	r2, r7
 800041e:	4325      	orrs	r5, r4
 8000420:	2a1b      	cmp	r2, #27
 8000422:	dd00      	ble.n	8000426 <__aeabi_fadd+0x18a>
 8000424:	e0c5      	b.n	80005b2 <__aeabi_fadd+0x316>
 8000426:	002c      	movs	r4, r5
 8000428:	2620      	movs	r6, #32
 800042a:	40d4      	lsrs	r4, r2
 800042c:	1ab2      	subs	r2, r6, r2
 800042e:	4095      	lsls	r5, r2
 8000430:	1e6a      	subs	r2, r5, #1
 8000432:	4195      	sbcs	r5, r2
 8000434:	4325      	orrs	r5, r4
 8000436:	1b5d      	subs	r5, r3, r5
 8000438:	0004      	movs	r4, r0
 800043a:	4689      	mov	r9, r1
 800043c:	e7a5      	b.n	800038a <__aeabi_fadd+0xee>
 800043e:	01ab      	lsls	r3, r5, #6
 8000440:	0a5b      	lsrs	r3, r3, #9
 8000442:	e750      	b.n	80002e6 <__aeabi_fadd+0x4a>
 8000444:	2400      	movs	r4, #0
 8000446:	2201      	movs	r2, #1
 8000448:	464b      	mov	r3, r9
 800044a:	401a      	ands	r2, r3
 800044c:	076b      	lsls	r3, r5, #29
 800044e:	d1ba      	bne.n	80003c6 <__aeabi_fadd+0x12a>
 8000450:	e742      	b.n	80002d8 <__aeabi_fadd+0x3c>
 8000452:	2f00      	cmp	r7, #0
 8000454:	d13b      	bne.n	80004ce <__aeabi_fadd+0x232>
 8000456:	3401      	adds	r4, #1
 8000458:	b2e0      	uxtb	r0, r4
 800045a:	2801      	cmp	r0, #1
 800045c:	dd4a      	ble.n	80004f4 <__aeabi_fadd+0x258>
 800045e:	2cff      	cmp	r4, #255	; 0xff
 8000460:	d0bd      	beq.n	80003de <__aeabi_fadd+0x142>
 8000462:	2607      	movs	r6, #7
 8000464:	18ed      	adds	r5, r5, r3
 8000466:	086d      	lsrs	r5, r5, #1
 8000468:	402e      	ands	r6, r5
 800046a:	e7a7      	b.n	80003bc <__aeabi_fadd+0x120>
 800046c:	2307      	movs	r3, #7
 800046e:	4d57      	ldr	r5, [pc, #348]	; (80005cc <__aeabi_fadd+0x330>)
 8000470:	1a24      	subs	r4, r4, r0
 8000472:	4035      	ands	r5, r6
 8000474:	401e      	ands	r6, r3
 8000476:	e7a1      	b.n	80003bc <__aeabi_fadd+0x120>
 8000478:	2c00      	cmp	r4, #0
 800047a:	d11b      	bne.n	80004b4 <__aeabi_fadd+0x218>
 800047c:	2d00      	cmp	r5, #0
 800047e:	d16e      	bne.n	800055e <__aeabi_fadd+0x2c2>
 8000480:	2b00      	cmp	r3, #0
 8000482:	d100      	bne.n	8000486 <__aeabi_fadd+0x1ea>
 8000484:	e09a      	b.n	80005bc <__aeabi_fadd+0x320>
 8000486:	000a      	movs	r2, r1
 8000488:	001d      	movs	r5, r3
 800048a:	003c      	movs	r4, r7
 800048c:	e724      	b.n	80002d8 <__aeabi_fadd+0x3c>
 800048e:	3f01      	subs	r7, #1
 8000490:	2f00      	cmp	r7, #0
 8000492:	d100      	bne.n	8000496 <__aeabi_fadd+0x1fa>
 8000494:	e758      	b.n	8000348 <__aeabi_fadd+0xac>
 8000496:	2cff      	cmp	r4, #255	; 0xff
 8000498:	d000      	beq.n	800049c <__aeabi_fadd+0x200>
 800049a:	e74a      	b.n	8000332 <__aeabi_fadd+0x96>
 800049c:	e7a7      	b.n	80003ee <__aeabi_fadd+0x152>
 800049e:	1b5e      	subs	r6, r3, r5
 80004a0:	4689      	mov	r9, r1
 80004a2:	e776      	b.n	8000392 <__aeabi_fadd+0xf6>
 80004a4:	2d00      	cmp	r5, #0
 80004a6:	d11c      	bne.n	80004e2 <__aeabi_fadd+0x246>
 80004a8:	000a      	movs	r2, r1
 80004aa:	28ff      	cmp	r0, #255	; 0xff
 80004ac:	d01f      	beq.n	80004ee <__aeabi_fadd+0x252>
 80004ae:	0004      	movs	r4, r0
 80004b0:	001d      	movs	r5, r3
 80004b2:	e711      	b.n	80002d8 <__aeabi_fadd+0x3c>
 80004b4:	2d00      	cmp	r5, #0
 80004b6:	d15d      	bne.n	8000574 <__aeabi_fadd+0x2d8>
 80004b8:	2b00      	cmp	r3, #0
 80004ba:	d117      	bne.n	80004ec <__aeabi_fadd+0x250>
 80004bc:	2380      	movs	r3, #128	; 0x80
 80004be:	2200      	movs	r2, #0
 80004c0:	03db      	lsls	r3, r3, #15
 80004c2:	26ff      	movs	r6, #255	; 0xff
 80004c4:	e70f      	b.n	80002e6 <__aeabi_fadd+0x4a>
 80004c6:	000a      	movs	r2, r1
 80004c8:	26ff      	movs	r6, #255	; 0xff
 80004ca:	2300      	movs	r3, #0
 80004cc:	e70b      	b.n	80002e6 <__aeabi_fadd+0x4a>
 80004ce:	2c00      	cmp	r4, #0
 80004d0:	d121      	bne.n	8000516 <__aeabi_fadd+0x27a>
 80004d2:	2d00      	cmp	r5, #0
 80004d4:	d166      	bne.n	80005a4 <__aeabi_fadd+0x308>
 80004d6:	28ff      	cmp	r0, #255	; 0xff
 80004d8:	d1e9      	bne.n	80004ae <__aeabi_fadd+0x212>
 80004da:	001d      	movs	r5, r3
 80004dc:	e787      	b.n	80003ee <__aeabi_fadd+0x152>
 80004de:	2301      	movs	r3, #1
 80004e0:	e752      	b.n	8000388 <__aeabi_fadd+0xec>
 80004e2:	1c7a      	adds	r2, r7, #1
 80004e4:	d0a7      	beq.n	8000436 <__aeabi_fadd+0x19a>
 80004e6:	43fa      	mvns	r2, r7
 80004e8:	28ff      	cmp	r0, #255	; 0xff
 80004ea:	d199      	bne.n	8000420 <__aeabi_fadd+0x184>
 80004ec:	000a      	movs	r2, r1
 80004ee:	001d      	movs	r5, r3
 80004f0:	24ff      	movs	r4, #255	; 0xff
 80004f2:	e6f1      	b.n	80002d8 <__aeabi_fadd+0x3c>
 80004f4:	2e00      	cmp	r6, #0
 80004f6:	d121      	bne.n	800053c <__aeabi_fadd+0x2a0>
 80004f8:	2d00      	cmp	r5, #0
 80004fa:	d04f      	beq.n	800059c <__aeabi_fadd+0x300>
 80004fc:	2b00      	cmp	r3, #0
 80004fe:	d04c      	beq.n	800059a <__aeabi_fadd+0x2fe>
 8000500:	18ed      	adds	r5, r5, r3
 8000502:	016b      	lsls	r3, r5, #5
 8000504:	d59e      	bpl.n	8000444 <__aeabi_fadd+0x1a8>
 8000506:	4b31      	ldr	r3, [pc, #196]	; (80005cc <__aeabi_fadd+0x330>)
 8000508:	3607      	adds	r6, #7
 800050a:	402e      	ands	r6, r5
 800050c:	2401      	movs	r4, #1
 800050e:	401d      	ands	r5, r3
 8000510:	e754      	b.n	80003bc <__aeabi_fadd+0x120>
 8000512:	2301      	movs	r3, #1
 8000514:	e718      	b.n	8000348 <__aeabi_fadd+0xac>
 8000516:	28ff      	cmp	r0, #255	; 0xff
 8000518:	d0df      	beq.n	80004da <__aeabi_fadd+0x23e>
 800051a:	2480      	movs	r4, #128	; 0x80
 800051c:	04e4      	lsls	r4, r4, #19
 800051e:	427f      	negs	r7, r7
 8000520:	4325      	orrs	r5, r4
 8000522:	2f1b      	cmp	r7, #27
 8000524:	dc4d      	bgt.n	80005c2 <__aeabi_fadd+0x326>
 8000526:	2620      	movs	r6, #32
 8000528:	1bf6      	subs	r6, r6, r7
 800052a:	002c      	movs	r4, r5
 800052c:	40b5      	lsls	r5, r6
 800052e:	40fc      	lsrs	r4, r7
 8000530:	1e6a      	subs	r2, r5, #1
 8000532:	4195      	sbcs	r5, r2
 8000534:	4325      	orrs	r5, r4
 8000536:	18ed      	adds	r5, r5, r3
 8000538:	0004      	movs	r4, r0
 800053a:	e706      	b.n	800034a <__aeabi_fadd+0xae>
 800053c:	2d00      	cmp	r5, #0
 800053e:	d0cc      	beq.n	80004da <__aeabi_fadd+0x23e>
 8000540:	2b00      	cmp	r3, #0
 8000542:	d100      	bne.n	8000546 <__aeabi_fadd+0x2aa>
 8000544:	e753      	b.n	80003ee <__aeabi_fadd+0x152>
 8000546:	2180      	movs	r1, #128	; 0x80
 8000548:	4660      	mov	r0, ip
 800054a:	03c9      	lsls	r1, r1, #15
 800054c:	4208      	tst	r0, r1
 800054e:	d003      	beq.n	8000558 <__aeabi_fadd+0x2bc>
 8000550:	4640      	mov	r0, r8
 8000552:	4208      	tst	r0, r1
 8000554:	d100      	bne.n	8000558 <__aeabi_fadd+0x2bc>
 8000556:	001d      	movs	r5, r3
 8000558:	2101      	movs	r1, #1
 800055a:	4011      	ands	r1, r2
 800055c:	e747      	b.n	80003ee <__aeabi_fadd+0x152>
 800055e:	2b00      	cmp	r3, #0
 8000560:	d100      	bne.n	8000564 <__aeabi_fadd+0x2c8>
 8000562:	e6b9      	b.n	80002d8 <__aeabi_fadd+0x3c>
 8000564:	1aea      	subs	r2, r5, r3
 8000566:	0150      	lsls	r0, r2, #5
 8000568:	d525      	bpl.n	80005b6 <__aeabi_fadd+0x31a>
 800056a:	2607      	movs	r6, #7
 800056c:	1b5d      	subs	r5, r3, r5
 800056e:	402e      	ands	r6, r5
 8000570:	4689      	mov	r9, r1
 8000572:	e723      	b.n	80003bc <__aeabi_fadd+0x120>
 8000574:	24ff      	movs	r4, #255	; 0xff
 8000576:	2b00      	cmp	r3, #0
 8000578:	d100      	bne.n	800057c <__aeabi_fadd+0x2e0>
 800057a:	e6ad      	b.n	80002d8 <__aeabi_fadd+0x3c>
 800057c:	2280      	movs	r2, #128	; 0x80
 800057e:	4660      	mov	r0, ip
 8000580:	03d2      	lsls	r2, r2, #15
 8000582:	4210      	tst	r0, r2
 8000584:	d004      	beq.n	8000590 <__aeabi_fadd+0x2f4>
 8000586:	4640      	mov	r0, r8
 8000588:	4210      	tst	r0, r2
 800058a:	d101      	bne.n	8000590 <__aeabi_fadd+0x2f4>
 800058c:	001d      	movs	r5, r3
 800058e:	4689      	mov	r9, r1
 8000590:	2201      	movs	r2, #1
 8000592:	464b      	mov	r3, r9
 8000594:	24ff      	movs	r4, #255	; 0xff
 8000596:	401a      	ands	r2, r3
 8000598:	e69e      	b.n	80002d8 <__aeabi_fadd+0x3c>
 800059a:	002b      	movs	r3, r5
 800059c:	08dd      	lsrs	r5, r3, #3
 800059e:	000a      	movs	r2, r1
 80005a0:	2400      	movs	r4, #0
 80005a2:	e69d      	b.n	80002e0 <__aeabi_fadd+0x44>
 80005a4:	1c7a      	adds	r2, r7, #1
 80005a6:	d0c6      	beq.n	8000536 <__aeabi_fadd+0x29a>
 80005a8:	43ff      	mvns	r7, r7
 80005aa:	28ff      	cmp	r0, #255	; 0xff
 80005ac:	d1b9      	bne.n	8000522 <__aeabi_fadd+0x286>
 80005ae:	001d      	movs	r5, r3
 80005b0:	e71d      	b.n	80003ee <__aeabi_fadd+0x152>
 80005b2:	2501      	movs	r5, #1
 80005b4:	e73f      	b.n	8000436 <__aeabi_fadd+0x19a>
 80005b6:	1e15      	subs	r5, r2, #0
 80005b8:	d000      	beq.n	80005bc <__aeabi_fadd+0x320>
 80005ba:	e744      	b.n	8000446 <__aeabi_fadd+0x1aa>
 80005bc:	2200      	movs	r2, #0
 80005be:	2300      	movs	r3, #0
 80005c0:	e691      	b.n	80002e6 <__aeabi_fadd+0x4a>
 80005c2:	2501      	movs	r5, #1
 80005c4:	e7b7      	b.n	8000536 <__aeabi_fadd+0x29a>
 80005c6:	46c0      	nop			; (mov r8, r8)
 80005c8:	7dffffff 	.word	0x7dffffff
 80005cc:	fbffffff 	.word	0xfbffffff

080005d0 <__aeabi_fdiv>:
 80005d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80005d2:	4657      	mov	r7, sl
 80005d4:	464e      	mov	r6, r9
 80005d6:	4645      	mov	r5, r8
 80005d8:	46de      	mov	lr, fp
 80005da:	0244      	lsls	r4, r0, #9
 80005dc:	b5e0      	push	{r5, r6, r7, lr}
 80005de:	0046      	lsls	r6, r0, #1
 80005e0:	4688      	mov	r8, r1
 80005e2:	0a64      	lsrs	r4, r4, #9
 80005e4:	0e36      	lsrs	r6, r6, #24
 80005e6:	0fc7      	lsrs	r7, r0, #31
 80005e8:	2e00      	cmp	r6, #0
 80005ea:	d063      	beq.n	80006b4 <__aeabi_fdiv+0xe4>
 80005ec:	2eff      	cmp	r6, #255	; 0xff
 80005ee:	d024      	beq.n	800063a <__aeabi_fdiv+0x6a>
 80005f0:	2380      	movs	r3, #128	; 0x80
 80005f2:	00e4      	lsls	r4, r4, #3
 80005f4:	04db      	lsls	r3, r3, #19
 80005f6:	431c      	orrs	r4, r3
 80005f8:	2300      	movs	r3, #0
 80005fa:	4699      	mov	r9, r3
 80005fc:	469b      	mov	fp, r3
 80005fe:	3e7f      	subs	r6, #127	; 0x7f
 8000600:	4643      	mov	r3, r8
 8000602:	4642      	mov	r2, r8
 8000604:	025d      	lsls	r5, r3, #9
 8000606:	0fd2      	lsrs	r2, r2, #31
 8000608:	005b      	lsls	r3, r3, #1
 800060a:	0a6d      	lsrs	r5, r5, #9
 800060c:	0e1b      	lsrs	r3, r3, #24
 800060e:	4690      	mov	r8, r2
 8000610:	4692      	mov	sl, r2
 8000612:	d065      	beq.n	80006e0 <__aeabi_fdiv+0x110>
 8000614:	2bff      	cmp	r3, #255	; 0xff
 8000616:	d055      	beq.n	80006c4 <__aeabi_fdiv+0xf4>
 8000618:	2280      	movs	r2, #128	; 0x80
 800061a:	2100      	movs	r1, #0
 800061c:	00ed      	lsls	r5, r5, #3
 800061e:	04d2      	lsls	r2, r2, #19
 8000620:	3b7f      	subs	r3, #127	; 0x7f
 8000622:	4315      	orrs	r5, r2
 8000624:	1af6      	subs	r6, r6, r3
 8000626:	4643      	mov	r3, r8
 8000628:	464a      	mov	r2, r9
 800062a:	407b      	eors	r3, r7
 800062c:	2a0f      	cmp	r2, #15
 800062e:	d900      	bls.n	8000632 <__aeabi_fdiv+0x62>
 8000630:	e08d      	b.n	800074e <__aeabi_fdiv+0x17e>
 8000632:	486d      	ldr	r0, [pc, #436]	; (80007e8 <__aeabi_fdiv+0x218>)
 8000634:	0092      	lsls	r2, r2, #2
 8000636:	5882      	ldr	r2, [r0, r2]
 8000638:	4697      	mov	pc, r2
 800063a:	2c00      	cmp	r4, #0
 800063c:	d154      	bne.n	80006e8 <__aeabi_fdiv+0x118>
 800063e:	2308      	movs	r3, #8
 8000640:	4699      	mov	r9, r3
 8000642:	3b06      	subs	r3, #6
 8000644:	26ff      	movs	r6, #255	; 0xff
 8000646:	469b      	mov	fp, r3
 8000648:	e7da      	b.n	8000600 <__aeabi_fdiv+0x30>
 800064a:	2500      	movs	r5, #0
 800064c:	4653      	mov	r3, sl
 800064e:	2902      	cmp	r1, #2
 8000650:	d01b      	beq.n	800068a <__aeabi_fdiv+0xba>
 8000652:	2903      	cmp	r1, #3
 8000654:	d100      	bne.n	8000658 <__aeabi_fdiv+0x88>
 8000656:	e0bf      	b.n	80007d8 <__aeabi_fdiv+0x208>
 8000658:	2901      	cmp	r1, #1
 800065a:	d028      	beq.n	80006ae <__aeabi_fdiv+0xde>
 800065c:	0030      	movs	r0, r6
 800065e:	307f      	adds	r0, #127	; 0x7f
 8000660:	2800      	cmp	r0, #0
 8000662:	dd20      	ble.n	80006a6 <__aeabi_fdiv+0xd6>
 8000664:	076a      	lsls	r2, r5, #29
 8000666:	d004      	beq.n	8000672 <__aeabi_fdiv+0xa2>
 8000668:	220f      	movs	r2, #15
 800066a:	402a      	ands	r2, r5
 800066c:	2a04      	cmp	r2, #4
 800066e:	d000      	beq.n	8000672 <__aeabi_fdiv+0xa2>
 8000670:	3504      	adds	r5, #4
 8000672:	012a      	lsls	r2, r5, #4
 8000674:	d503      	bpl.n	800067e <__aeabi_fdiv+0xae>
 8000676:	0030      	movs	r0, r6
 8000678:	4a5c      	ldr	r2, [pc, #368]	; (80007ec <__aeabi_fdiv+0x21c>)
 800067a:	3080      	adds	r0, #128	; 0x80
 800067c:	4015      	ands	r5, r2
 800067e:	28fe      	cmp	r0, #254	; 0xfe
 8000680:	dc03      	bgt.n	800068a <__aeabi_fdiv+0xba>
 8000682:	01ac      	lsls	r4, r5, #6
 8000684:	0a64      	lsrs	r4, r4, #9
 8000686:	b2c2      	uxtb	r2, r0
 8000688:	e001      	b.n	800068e <__aeabi_fdiv+0xbe>
 800068a:	22ff      	movs	r2, #255	; 0xff
 800068c:	2400      	movs	r4, #0
 800068e:	0264      	lsls	r4, r4, #9
 8000690:	05d2      	lsls	r2, r2, #23
 8000692:	0a60      	lsrs	r0, r4, #9
 8000694:	07db      	lsls	r3, r3, #31
 8000696:	4310      	orrs	r0, r2
 8000698:	4318      	orrs	r0, r3
 800069a:	bc3c      	pop	{r2, r3, r4, r5}
 800069c:	4690      	mov	r8, r2
 800069e:	4699      	mov	r9, r3
 80006a0:	46a2      	mov	sl, r4
 80006a2:	46ab      	mov	fp, r5
 80006a4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80006a6:	2201      	movs	r2, #1
 80006a8:	1a10      	subs	r0, r2, r0
 80006aa:	281b      	cmp	r0, #27
 80006ac:	dd7c      	ble.n	80007a8 <__aeabi_fdiv+0x1d8>
 80006ae:	2200      	movs	r2, #0
 80006b0:	2400      	movs	r4, #0
 80006b2:	e7ec      	b.n	800068e <__aeabi_fdiv+0xbe>
 80006b4:	2c00      	cmp	r4, #0
 80006b6:	d11d      	bne.n	80006f4 <__aeabi_fdiv+0x124>
 80006b8:	2304      	movs	r3, #4
 80006ba:	4699      	mov	r9, r3
 80006bc:	3b03      	subs	r3, #3
 80006be:	2600      	movs	r6, #0
 80006c0:	469b      	mov	fp, r3
 80006c2:	e79d      	b.n	8000600 <__aeabi_fdiv+0x30>
 80006c4:	3eff      	subs	r6, #255	; 0xff
 80006c6:	2d00      	cmp	r5, #0
 80006c8:	d120      	bne.n	800070c <__aeabi_fdiv+0x13c>
 80006ca:	2102      	movs	r1, #2
 80006cc:	4643      	mov	r3, r8
 80006ce:	464a      	mov	r2, r9
 80006d0:	407b      	eors	r3, r7
 80006d2:	430a      	orrs	r2, r1
 80006d4:	2a0f      	cmp	r2, #15
 80006d6:	d8d8      	bhi.n	800068a <__aeabi_fdiv+0xba>
 80006d8:	4845      	ldr	r0, [pc, #276]	; (80007f0 <__aeabi_fdiv+0x220>)
 80006da:	0092      	lsls	r2, r2, #2
 80006dc:	5882      	ldr	r2, [r0, r2]
 80006de:	4697      	mov	pc, r2
 80006e0:	2d00      	cmp	r5, #0
 80006e2:	d119      	bne.n	8000718 <__aeabi_fdiv+0x148>
 80006e4:	2101      	movs	r1, #1
 80006e6:	e7f1      	b.n	80006cc <__aeabi_fdiv+0xfc>
 80006e8:	230c      	movs	r3, #12
 80006ea:	4699      	mov	r9, r3
 80006ec:	3b09      	subs	r3, #9
 80006ee:	26ff      	movs	r6, #255	; 0xff
 80006f0:	469b      	mov	fp, r3
 80006f2:	e785      	b.n	8000600 <__aeabi_fdiv+0x30>
 80006f4:	0020      	movs	r0, r4
 80006f6:	f001 ffed 	bl	80026d4 <__clzsi2>
 80006fa:	2676      	movs	r6, #118	; 0x76
 80006fc:	1f43      	subs	r3, r0, #5
 80006fe:	409c      	lsls	r4, r3
 8000700:	2300      	movs	r3, #0
 8000702:	4276      	negs	r6, r6
 8000704:	1a36      	subs	r6, r6, r0
 8000706:	4699      	mov	r9, r3
 8000708:	469b      	mov	fp, r3
 800070a:	e779      	b.n	8000600 <__aeabi_fdiv+0x30>
 800070c:	464a      	mov	r2, r9
 800070e:	2303      	movs	r3, #3
 8000710:	431a      	orrs	r2, r3
 8000712:	4691      	mov	r9, r2
 8000714:	2103      	movs	r1, #3
 8000716:	e786      	b.n	8000626 <__aeabi_fdiv+0x56>
 8000718:	0028      	movs	r0, r5
 800071a:	f001 ffdb 	bl	80026d4 <__clzsi2>
 800071e:	1f43      	subs	r3, r0, #5
 8000720:	1836      	adds	r6, r6, r0
 8000722:	409d      	lsls	r5, r3
 8000724:	3676      	adds	r6, #118	; 0x76
 8000726:	2100      	movs	r1, #0
 8000728:	e77d      	b.n	8000626 <__aeabi_fdiv+0x56>
 800072a:	2480      	movs	r4, #128	; 0x80
 800072c:	2300      	movs	r3, #0
 800072e:	03e4      	lsls	r4, r4, #15
 8000730:	22ff      	movs	r2, #255	; 0xff
 8000732:	e7ac      	b.n	800068e <__aeabi_fdiv+0xbe>
 8000734:	2500      	movs	r5, #0
 8000736:	2380      	movs	r3, #128	; 0x80
 8000738:	03db      	lsls	r3, r3, #15
 800073a:	421c      	tst	r4, r3
 800073c:	d028      	beq.n	8000790 <__aeabi_fdiv+0x1c0>
 800073e:	421d      	tst	r5, r3
 8000740:	d126      	bne.n	8000790 <__aeabi_fdiv+0x1c0>
 8000742:	432b      	orrs	r3, r5
 8000744:	025c      	lsls	r4, r3, #9
 8000746:	0a64      	lsrs	r4, r4, #9
 8000748:	4643      	mov	r3, r8
 800074a:	22ff      	movs	r2, #255	; 0xff
 800074c:	e79f      	b.n	800068e <__aeabi_fdiv+0xbe>
 800074e:	0162      	lsls	r2, r4, #5
 8000750:	016c      	lsls	r4, r5, #5
 8000752:	42a2      	cmp	r2, r4
 8000754:	d224      	bcs.n	80007a0 <__aeabi_fdiv+0x1d0>
 8000756:	211b      	movs	r1, #27
 8000758:	2500      	movs	r5, #0
 800075a:	3e01      	subs	r6, #1
 800075c:	2701      	movs	r7, #1
 800075e:	0010      	movs	r0, r2
 8000760:	006d      	lsls	r5, r5, #1
 8000762:	0052      	lsls	r2, r2, #1
 8000764:	2800      	cmp	r0, #0
 8000766:	db01      	blt.n	800076c <__aeabi_fdiv+0x19c>
 8000768:	4294      	cmp	r4, r2
 800076a:	d801      	bhi.n	8000770 <__aeabi_fdiv+0x1a0>
 800076c:	1b12      	subs	r2, r2, r4
 800076e:	433d      	orrs	r5, r7
 8000770:	3901      	subs	r1, #1
 8000772:	2900      	cmp	r1, #0
 8000774:	d1f3      	bne.n	800075e <__aeabi_fdiv+0x18e>
 8000776:	0014      	movs	r4, r2
 8000778:	1e62      	subs	r2, r4, #1
 800077a:	4194      	sbcs	r4, r2
 800077c:	4325      	orrs	r5, r4
 800077e:	e76d      	b.n	800065c <__aeabi_fdiv+0x8c>
 8000780:	46ba      	mov	sl, r7
 8000782:	4659      	mov	r1, fp
 8000784:	0025      	movs	r5, r4
 8000786:	4653      	mov	r3, sl
 8000788:	2902      	cmp	r1, #2
 800078a:	d000      	beq.n	800078e <__aeabi_fdiv+0x1be>
 800078c:	e761      	b.n	8000652 <__aeabi_fdiv+0x82>
 800078e:	e77c      	b.n	800068a <__aeabi_fdiv+0xba>
 8000790:	2380      	movs	r3, #128	; 0x80
 8000792:	03db      	lsls	r3, r3, #15
 8000794:	431c      	orrs	r4, r3
 8000796:	0264      	lsls	r4, r4, #9
 8000798:	0a64      	lsrs	r4, r4, #9
 800079a:	003b      	movs	r3, r7
 800079c:	22ff      	movs	r2, #255	; 0xff
 800079e:	e776      	b.n	800068e <__aeabi_fdiv+0xbe>
 80007a0:	1b12      	subs	r2, r2, r4
 80007a2:	211a      	movs	r1, #26
 80007a4:	2501      	movs	r5, #1
 80007a6:	e7d9      	b.n	800075c <__aeabi_fdiv+0x18c>
 80007a8:	369e      	adds	r6, #158	; 0x9e
 80007aa:	002a      	movs	r2, r5
 80007ac:	40b5      	lsls	r5, r6
 80007ae:	002c      	movs	r4, r5
 80007b0:	40c2      	lsrs	r2, r0
 80007b2:	1e65      	subs	r5, r4, #1
 80007b4:	41ac      	sbcs	r4, r5
 80007b6:	4314      	orrs	r4, r2
 80007b8:	0762      	lsls	r2, r4, #29
 80007ba:	d004      	beq.n	80007c6 <__aeabi_fdiv+0x1f6>
 80007bc:	220f      	movs	r2, #15
 80007be:	4022      	ands	r2, r4
 80007c0:	2a04      	cmp	r2, #4
 80007c2:	d000      	beq.n	80007c6 <__aeabi_fdiv+0x1f6>
 80007c4:	3404      	adds	r4, #4
 80007c6:	0162      	lsls	r2, r4, #5
 80007c8:	d403      	bmi.n	80007d2 <__aeabi_fdiv+0x202>
 80007ca:	01a4      	lsls	r4, r4, #6
 80007cc:	0a64      	lsrs	r4, r4, #9
 80007ce:	2200      	movs	r2, #0
 80007d0:	e75d      	b.n	800068e <__aeabi_fdiv+0xbe>
 80007d2:	2201      	movs	r2, #1
 80007d4:	2400      	movs	r4, #0
 80007d6:	e75a      	b.n	800068e <__aeabi_fdiv+0xbe>
 80007d8:	2480      	movs	r4, #128	; 0x80
 80007da:	03e4      	lsls	r4, r4, #15
 80007dc:	432c      	orrs	r4, r5
 80007de:	0264      	lsls	r4, r4, #9
 80007e0:	0a64      	lsrs	r4, r4, #9
 80007e2:	22ff      	movs	r2, #255	; 0xff
 80007e4:	e753      	b.n	800068e <__aeabi_fdiv+0xbe>
 80007e6:	46c0      	nop			; (mov r8, r8)
 80007e8:	0800a484 	.word	0x0800a484
 80007ec:	f7ffffff 	.word	0xf7ffffff
 80007f0:	0800a4c4 	.word	0x0800a4c4

080007f4 <__aeabi_fsub>:
 80007f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80007f6:	4647      	mov	r7, r8
 80007f8:	46ce      	mov	lr, r9
 80007fa:	0044      	lsls	r4, r0, #1
 80007fc:	0fc2      	lsrs	r2, r0, #31
 80007fe:	b580      	push	{r7, lr}
 8000800:	0247      	lsls	r7, r0, #9
 8000802:	0248      	lsls	r0, r1, #9
 8000804:	0a40      	lsrs	r0, r0, #9
 8000806:	4684      	mov	ip, r0
 8000808:	4666      	mov	r6, ip
 800080a:	0048      	lsls	r0, r1, #1
 800080c:	0a7f      	lsrs	r7, r7, #9
 800080e:	0e24      	lsrs	r4, r4, #24
 8000810:	00f6      	lsls	r6, r6, #3
 8000812:	0025      	movs	r5, r4
 8000814:	4690      	mov	r8, r2
 8000816:	00fb      	lsls	r3, r7, #3
 8000818:	0e00      	lsrs	r0, r0, #24
 800081a:	0fc9      	lsrs	r1, r1, #31
 800081c:	46b1      	mov	r9, r6
 800081e:	28ff      	cmp	r0, #255	; 0xff
 8000820:	d100      	bne.n	8000824 <__aeabi_fsub+0x30>
 8000822:	e085      	b.n	8000930 <__aeabi_fsub+0x13c>
 8000824:	2601      	movs	r6, #1
 8000826:	4071      	eors	r1, r6
 8000828:	1a26      	subs	r6, r4, r0
 800082a:	4291      	cmp	r1, r2
 800082c:	d057      	beq.n	80008de <__aeabi_fsub+0xea>
 800082e:	2e00      	cmp	r6, #0
 8000830:	dd43      	ble.n	80008ba <__aeabi_fsub+0xc6>
 8000832:	2800      	cmp	r0, #0
 8000834:	d000      	beq.n	8000838 <__aeabi_fsub+0x44>
 8000836:	e07f      	b.n	8000938 <__aeabi_fsub+0x144>
 8000838:	4649      	mov	r1, r9
 800083a:	2900      	cmp	r1, #0
 800083c:	d100      	bne.n	8000840 <__aeabi_fsub+0x4c>
 800083e:	e0aa      	b.n	8000996 <__aeabi_fsub+0x1a2>
 8000840:	3e01      	subs	r6, #1
 8000842:	2e00      	cmp	r6, #0
 8000844:	d000      	beq.n	8000848 <__aeabi_fsub+0x54>
 8000846:	e0f7      	b.n	8000a38 <__aeabi_fsub+0x244>
 8000848:	1a5b      	subs	r3, r3, r1
 800084a:	015a      	lsls	r2, r3, #5
 800084c:	d400      	bmi.n	8000850 <__aeabi_fsub+0x5c>
 800084e:	e08b      	b.n	8000968 <__aeabi_fsub+0x174>
 8000850:	019b      	lsls	r3, r3, #6
 8000852:	099c      	lsrs	r4, r3, #6
 8000854:	0020      	movs	r0, r4
 8000856:	f001 ff3d 	bl	80026d4 <__clzsi2>
 800085a:	3805      	subs	r0, #5
 800085c:	4084      	lsls	r4, r0
 800085e:	4285      	cmp	r5, r0
 8000860:	dd00      	ble.n	8000864 <__aeabi_fsub+0x70>
 8000862:	e0d3      	b.n	8000a0c <__aeabi_fsub+0x218>
 8000864:	1b45      	subs	r5, r0, r5
 8000866:	0023      	movs	r3, r4
 8000868:	2020      	movs	r0, #32
 800086a:	3501      	adds	r5, #1
 800086c:	40eb      	lsrs	r3, r5
 800086e:	1b45      	subs	r5, r0, r5
 8000870:	40ac      	lsls	r4, r5
 8000872:	1e62      	subs	r2, r4, #1
 8000874:	4194      	sbcs	r4, r2
 8000876:	4323      	orrs	r3, r4
 8000878:	2407      	movs	r4, #7
 800087a:	2500      	movs	r5, #0
 800087c:	401c      	ands	r4, r3
 800087e:	2201      	movs	r2, #1
 8000880:	4641      	mov	r1, r8
 8000882:	400a      	ands	r2, r1
 8000884:	2c00      	cmp	r4, #0
 8000886:	d004      	beq.n	8000892 <__aeabi_fsub+0x9e>
 8000888:	210f      	movs	r1, #15
 800088a:	4019      	ands	r1, r3
 800088c:	2904      	cmp	r1, #4
 800088e:	d000      	beq.n	8000892 <__aeabi_fsub+0x9e>
 8000890:	3304      	adds	r3, #4
 8000892:	0159      	lsls	r1, r3, #5
 8000894:	d400      	bmi.n	8000898 <__aeabi_fsub+0xa4>
 8000896:	e080      	b.n	800099a <__aeabi_fsub+0x1a6>
 8000898:	3501      	adds	r5, #1
 800089a:	b2ec      	uxtb	r4, r5
 800089c:	2dff      	cmp	r5, #255	; 0xff
 800089e:	d000      	beq.n	80008a2 <__aeabi_fsub+0xae>
 80008a0:	e0a3      	b.n	80009ea <__aeabi_fsub+0x1f6>
 80008a2:	24ff      	movs	r4, #255	; 0xff
 80008a4:	2300      	movs	r3, #0
 80008a6:	025b      	lsls	r3, r3, #9
 80008a8:	05e4      	lsls	r4, r4, #23
 80008aa:	0a58      	lsrs	r0, r3, #9
 80008ac:	07d2      	lsls	r2, r2, #31
 80008ae:	4320      	orrs	r0, r4
 80008b0:	4310      	orrs	r0, r2
 80008b2:	bc0c      	pop	{r2, r3}
 80008b4:	4690      	mov	r8, r2
 80008b6:	4699      	mov	r9, r3
 80008b8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80008ba:	2e00      	cmp	r6, #0
 80008bc:	d174      	bne.n	80009a8 <__aeabi_fsub+0x1b4>
 80008be:	1c60      	adds	r0, r4, #1
 80008c0:	b2c0      	uxtb	r0, r0
 80008c2:	2801      	cmp	r0, #1
 80008c4:	dc00      	bgt.n	80008c8 <__aeabi_fsub+0xd4>
 80008c6:	e0a7      	b.n	8000a18 <__aeabi_fsub+0x224>
 80008c8:	464a      	mov	r2, r9
 80008ca:	1a9c      	subs	r4, r3, r2
 80008cc:	0162      	lsls	r2, r4, #5
 80008ce:	d500      	bpl.n	80008d2 <__aeabi_fsub+0xde>
 80008d0:	e0b6      	b.n	8000a40 <__aeabi_fsub+0x24c>
 80008d2:	2c00      	cmp	r4, #0
 80008d4:	d1be      	bne.n	8000854 <__aeabi_fsub+0x60>
 80008d6:	2200      	movs	r2, #0
 80008d8:	2400      	movs	r4, #0
 80008da:	2300      	movs	r3, #0
 80008dc:	e7e3      	b.n	80008a6 <__aeabi_fsub+0xb2>
 80008de:	2e00      	cmp	r6, #0
 80008e0:	dc00      	bgt.n	80008e4 <__aeabi_fsub+0xf0>
 80008e2:	e085      	b.n	80009f0 <__aeabi_fsub+0x1fc>
 80008e4:	2800      	cmp	r0, #0
 80008e6:	d046      	beq.n	8000976 <__aeabi_fsub+0x182>
 80008e8:	2cff      	cmp	r4, #255	; 0xff
 80008ea:	d049      	beq.n	8000980 <__aeabi_fsub+0x18c>
 80008ec:	2280      	movs	r2, #128	; 0x80
 80008ee:	4648      	mov	r0, r9
 80008f0:	04d2      	lsls	r2, r2, #19
 80008f2:	4310      	orrs	r0, r2
 80008f4:	4681      	mov	r9, r0
 80008f6:	2201      	movs	r2, #1
 80008f8:	2e1b      	cmp	r6, #27
 80008fa:	dc09      	bgt.n	8000910 <__aeabi_fsub+0x11c>
 80008fc:	2020      	movs	r0, #32
 80008fe:	464c      	mov	r4, r9
 8000900:	1b80      	subs	r0, r0, r6
 8000902:	4084      	lsls	r4, r0
 8000904:	464a      	mov	r2, r9
 8000906:	0020      	movs	r0, r4
 8000908:	40f2      	lsrs	r2, r6
 800090a:	1e44      	subs	r4, r0, #1
 800090c:	41a0      	sbcs	r0, r4
 800090e:	4302      	orrs	r2, r0
 8000910:	189b      	adds	r3, r3, r2
 8000912:	015a      	lsls	r2, r3, #5
 8000914:	d528      	bpl.n	8000968 <__aeabi_fsub+0x174>
 8000916:	3501      	adds	r5, #1
 8000918:	2dff      	cmp	r5, #255	; 0xff
 800091a:	d100      	bne.n	800091e <__aeabi_fsub+0x12a>
 800091c:	e0a8      	b.n	8000a70 <__aeabi_fsub+0x27c>
 800091e:	2201      	movs	r2, #1
 8000920:	2407      	movs	r4, #7
 8000922:	4994      	ldr	r1, [pc, #592]	; (8000b74 <__aeabi_fsub+0x380>)
 8000924:	401a      	ands	r2, r3
 8000926:	085b      	lsrs	r3, r3, #1
 8000928:	400b      	ands	r3, r1
 800092a:	4313      	orrs	r3, r2
 800092c:	401c      	ands	r4, r3
 800092e:	e7a6      	b.n	800087e <__aeabi_fsub+0x8a>
 8000930:	2e00      	cmp	r6, #0
 8000932:	d000      	beq.n	8000936 <__aeabi_fsub+0x142>
 8000934:	e778      	b.n	8000828 <__aeabi_fsub+0x34>
 8000936:	e775      	b.n	8000824 <__aeabi_fsub+0x30>
 8000938:	2cff      	cmp	r4, #255	; 0xff
 800093a:	d054      	beq.n	80009e6 <__aeabi_fsub+0x1f2>
 800093c:	2280      	movs	r2, #128	; 0x80
 800093e:	4649      	mov	r1, r9
 8000940:	04d2      	lsls	r2, r2, #19
 8000942:	4311      	orrs	r1, r2
 8000944:	4689      	mov	r9, r1
 8000946:	2201      	movs	r2, #1
 8000948:	2e1b      	cmp	r6, #27
 800094a:	dc09      	bgt.n	8000960 <__aeabi_fsub+0x16c>
 800094c:	2120      	movs	r1, #32
 800094e:	4648      	mov	r0, r9
 8000950:	1b89      	subs	r1, r1, r6
 8000952:	4088      	lsls	r0, r1
 8000954:	464a      	mov	r2, r9
 8000956:	0001      	movs	r1, r0
 8000958:	40f2      	lsrs	r2, r6
 800095a:	1e48      	subs	r0, r1, #1
 800095c:	4181      	sbcs	r1, r0
 800095e:	430a      	orrs	r2, r1
 8000960:	1a9b      	subs	r3, r3, r2
 8000962:	015a      	lsls	r2, r3, #5
 8000964:	d500      	bpl.n	8000968 <__aeabi_fsub+0x174>
 8000966:	e773      	b.n	8000850 <__aeabi_fsub+0x5c>
 8000968:	2201      	movs	r2, #1
 800096a:	4641      	mov	r1, r8
 800096c:	400a      	ands	r2, r1
 800096e:	0759      	lsls	r1, r3, #29
 8000970:	d000      	beq.n	8000974 <__aeabi_fsub+0x180>
 8000972:	e789      	b.n	8000888 <__aeabi_fsub+0x94>
 8000974:	e011      	b.n	800099a <__aeabi_fsub+0x1a6>
 8000976:	4648      	mov	r0, r9
 8000978:	2800      	cmp	r0, #0
 800097a:	d158      	bne.n	8000a2e <__aeabi_fsub+0x23a>
 800097c:	2cff      	cmp	r4, #255	; 0xff
 800097e:	d10c      	bne.n	800099a <__aeabi_fsub+0x1a6>
 8000980:	08db      	lsrs	r3, r3, #3
 8000982:	2b00      	cmp	r3, #0
 8000984:	d100      	bne.n	8000988 <__aeabi_fsub+0x194>
 8000986:	e78c      	b.n	80008a2 <__aeabi_fsub+0xae>
 8000988:	2080      	movs	r0, #128	; 0x80
 800098a:	03c0      	lsls	r0, r0, #15
 800098c:	4303      	orrs	r3, r0
 800098e:	025b      	lsls	r3, r3, #9
 8000990:	0a5b      	lsrs	r3, r3, #9
 8000992:	24ff      	movs	r4, #255	; 0xff
 8000994:	e787      	b.n	80008a6 <__aeabi_fsub+0xb2>
 8000996:	2cff      	cmp	r4, #255	; 0xff
 8000998:	d025      	beq.n	80009e6 <__aeabi_fsub+0x1f2>
 800099a:	08db      	lsrs	r3, r3, #3
 800099c:	2dff      	cmp	r5, #255	; 0xff
 800099e:	d0f0      	beq.n	8000982 <__aeabi_fsub+0x18e>
 80009a0:	025b      	lsls	r3, r3, #9
 80009a2:	0a5b      	lsrs	r3, r3, #9
 80009a4:	b2ec      	uxtb	r4, r5
 80009a6:	e77e      	b.n	80008a6 <__aeabi_fsub+0xb2>
 80009a8:	2c00      	cmp	r4, #0
 80009aa:	d04d      	beq.n	8000a48 <__aeabi_fsub+0x254>
 80009ac:	28ff      	cmp	r0, #255	; 0xff
 80009ae:	d018      	beq.n	80009e2 <__aeabi_fsub+0x1ee>
 80009b0:	2480      	movs	r4, #128	; 0x80
 80009b2:	04e4      	lsls	r4, r4, #19
 80009b4:	4272      	negs	r2, r6
 80009b6:	4323      	orrs	r3, r4
 80009b8:	2a1b      	cmp	r2, #27
 80009ba:	dd00      	ble.n	80009be <__aeabi_fsub+0x1ca>
 80009bc:	e0c4      	b.n	8000b48 <__aeabi_fsub+0x354>
 80009be:	001c      	movs	r4, r3
 80009c0:	2520      	movs	r5, #32
 80009c2:	40d4      	lsrs	r4, r2
 80009c4:	1aaa      	subs	r2, r5, r2
 80009c6:	4093      	lsls	r3, r2
 80009c8:	1e5a      	subs	r2, r3, #1
 80009ca:	4193      	sbcs	r3, r2
 80009cc:	4323      	orrs	r3, r4
 80009ce:	464a      	mov	r2, r9
 80009d0:	0005      	movs	r5, r0
 80009d2:	1ad3      	subs	r3, r2, r3
 80009d4:	4688      	mov	r8, r1
 80009d6:	e738      	b.n	800084a <__aeabi_fsub+0x56>
 80009d8:	1c72      	adds	r2, r6, #1
 80009da:	d0f8      	beq.n	80009ce <__aeabi_fsub+0x1da>
 80009dc:	43f2      	mvns	r2, r6
 80009de:	28ff      	cmp	r0, #255	; 0xff
 80009e0:	d1ea      	bne.n	80009b8 <__aeabi_fsub+0x1c4>
 80009e2:	000a      	movs	r2, r1
 80009e4:	464b      	mov	r3, r9
 80009e6:	25ff      	movs	r5, #255	; 0xff
 80009e8:	e7d7      	b.n	800099a <__aeabi_fsub+0x1a6>
 80009ea:	019b      	lsls	r3, r3, #6
 80009ec:	0a5b      	lsrs	r3, r3, #9
 80009ee:	e75a      	b.n	80008a6 <__aeabi_fsub+0xb2>
 80009f0:	2e00      	cmp	r6, #0
 80009f2:	d141      	bne.n	8000a78 <__aeabi_fsub+0x284>
 80009f4:	1c65      	adds	r5, r4, #1
 80009f6:	b2e9      	uxtb	r1, r5
 80009f8:	2901      	cmp	r1, #1
 80009fa:	dd45      	ble.n	8000a88 <__aeabi_fsub+0x294>
 80009fc:	2dff      	cmp	r5, #255	; 0xff
 80009fe:	d100      	bne.n	8000a02 <__aeabi_fsub+0x20e>
 8000a00:	e74f      	b.n	80008a2 <__aeabi_fsub+0xae>
 8000a02:	2407      	movs	r4, #7
 8000a04:	444b      	add	r3, r9
 8000a06:	085b      	lsrs	r3, r3, #1
 8000a08:	401c      	ands	r4, r3
 8000a0a:	e738      	b.n	800087e <__aeabi_fsub+0x8a>
 8000a0c:	2207      	movs	r2, #7
 8000a0e:	4b5a      	ldr	r3, [pc, #360]	; (8000b78 <__aeabi_fsub+0x384>)
 8000a10:	1a2d      	subs	r5, r5, r0
 8000a12:	4023      	ands	r3, r4
 8000a14:	4014      	ands	r4, r2
 8000a16:	e732      	b.n	800087e <__aeabi_fsub+0x8a>
 8000a18:	2c00      	cmp	r4, #0
 8000a1a:	d11d      	bne.n	8000a58 <__aeabi_fsub+0x264>
 8000a1c:	2b00      	cmp	r3, #0
 8000a1e:	d17a      	bne.n	8000b16 <__aeabi_fsub+0x322>
 8000a20:	464b      	mov	r3, r9
 8000a22:	2b00      	cmp	r3, #0
 8000a24:	d100      	bne.n	8000a28 <__aeabi_fsub+0x234>
 8000a26:	e091      	b.n	8000b4c <__aeabi_fsub+0x358>
 8000a28:	000a      	movs	r2, r1
 8000a2a:	2500      	movs	r5, #0
 8000a2c:	e7b5      	b.n	800099a <__aeabi_fsub+0x1a6>
 8000a2e:	3e01      	subs	r6, #1
 8000a30:	2e00      	cmp	r6, #0
 8000a32:	d119      	bne.n	8000a68 <__aeabi_fsub+0x274>
 8000a34:	444b      	add	r3, r9
 8000a36:	e76c      	b.n	8000912 <__aeabi_fsub+0x11e>
 8000a38:	2cff      	cmp	r4, #255	; 0xff
 8000a3a:	d184      	bne.n	8000946 <__aeabi_fsub+0x152>
 8000a3c:	25ff      	movs	r5, #255	; 0xff
 8000a3e:	e7ac      	b.n	800099a <__aeabi_fsub+0x1a6>
 8000a40:	464a      	mov	r2, r9
 8000a42:	4688      	mov	r8, r1
 8000a44:	1ad4      	subs	r4, r2, r3
 8000a46:	e705      	b.n	8000854 <__aeabi_fsub+0x60>
 8000a48:	2b00      	cmp	r3, #0
 8000a4a:	d1c5      	bne.n	80009d8 <__aeabi_fsub+0x1e4>
 8000a4c:	000a      	movs	r2, r1
 8000a4e:	28ff      	cmp	r0, #255	; 0xff
 8000a50:	d0c8      	beq.n	80009e4 <__aeabi_fsub+0x1f0>
 8000a52:	0005      	movs	r5, r0
 8000a54:	464b      	mov	r3, r9
 8000a56:	e7a0      	b.n	800099a <__aeabi_fsub+0x1a6>
 8000a58:	2b00      	cmp	r3, #0
 8000a5a:	d149      	bne.n	8000af0 <__aeabi_fsub+0x2fc>
 8000a5c:	464b      	mov	r3, r9
 8000a5e:	2b00      	cmp	r3, #0
 8000a60:	d077      	beq.n	8000b52 <__aeabi_fsub+0x35e>
 8000a62:	000a      	movs	r2, r1
 8000a64:	25ff      	movs	r5, #255	; 0xff
 8000a66:	e798      	b.n	800099a <__aeabi_fsub+0x1a6>
 8000a68:	2cff      	cmp	r4, #255	; 0xff
 8000a6a:	d000      	beq.n	8000a6e <__aeabi_fsub+0x27a>
 8000a6c:	e743      	b.n	80008f6 <__aeabi_fsub+0x102>
 8000a6e:	e787      	b.n	8000980 <__aeabi_fsub+0x18c>
 8000a70:	000a      	movs	r2, r1
 8000a72:	24ff      	movs	r4, #255	; 0xff
 8000a74:	2300      	movs	r3, #0
 8000a76:	e716      	b.n	80008a6 <__aeabi_fsub+0xb2>
 8000a78:	2c00      	cmp	r4, #0
 8000a7a:	d115      	bne.n	8000aa8 <__aeabi_fsub+0x2b4>
 8000a7c:	2b00      	cmp	r3, #0
 8000a7e:	d157      	bne.n	8000b30 <__aeabi_fsub+0x33c>
 8000a80:	28ff      	cmp	r0, #255	; 0xff
 8000a82:	d1e6      	bne.n	8000a52 <__aeabi_fsub+0x25e>
 8000a84:	464b      	mov	r3, r9
 8000a86:	e77b      	b.n	8000980 <__aeabi_fsub+0x18c>
 8000a88:	2c00      	cmp	r4, #0
 8000a8a:	d120      	bne.n	8000ace <__aeabi_fsub+0x2da>
 8000a8c:	2b00      	cmp	r3, #0
 8000a8e:	d057      	beq.n	8000b40 <__aeabi_fsub+0x34c>
 8000a90:	4649      	mov	r1, r9
 8000a92:	2900      	cmp	r1, #0
 8000a94:	d053      	beq.n	8000b3e <__aeabi_fsub+0x34a>
 8000a96:	444b      	add	r3, r9
 8000a98:	015a      	lsls	r2, r3, #5
 8000a9a:	d568      	bpl.n	8000b6e <__aeabi_fsub+0x37a>
 8000a9c:	2407      	movs	r4, #7
 8000a9e:	4a36      	ldr	r2, [pc, #216]	; (8000b78 <__aeabi_fsub+0x384>)
 8000aa0:	401c      	ands	r4, r3
 8000aa2:	2501      	movs	r5, #1
 8000aa4:	4013      	ands	r3, r2
 8000aa6:	e6ea      	b.n	800087e <__aeabi_fsub+0x8a>
 8000aa8:	28ff      	cmp	r0, #255	; 0xff
 8000aaa:	d0eb      	beq.n	8000a84 <__aeabi_fsub+0x290>
 8000aac:	2280      	movs	r2, #128	; 0x80
 8000aae:	04d2      	lsls	r2, r2, #19
 8000ab0:	4276      	negs	r6, r6
 8000ab2:	4313      	orrs	r3, r2
 8000ab4:	2e1b      	cmp	r6, #27
 8000ab6:	dc53      	bgt.n	8000b60 <__aeabi_fsub+0x36c>
 8000ab8:	2520      	movs	r5, #32
 8000aba:	1bad      	subs	r5, r5, r6
 8000abc:	001a      	movs	r2, r3
 8000abe:	40ab      	lsls	r3, r5
 8000ac0:	40f2      	lsrs	r2, r6
 8000ac2:	1e5c      	subs	r4, r3, #1
 8000ac4:	41a3      	sbcs	r3, r4
 8000ac6:	4313      	orrs	r3, r2
 8000ac8:	444b      	add	r3, r9
 8000aca:	0005      	movs	r5, r0
 8000acc:	e721      	b.n	8000912 <__aeabi_fsub+0x11e>
 8000ace:	2b00      	cmp	r3, #0
 8000ad0:	d0d8      	beq.n	8000a84 <__aeabi_fsub+0x290>
 8000ad2:	4649      	mov	r1, r9
 8000ad4:	2900      	cmp	r1, #0
 8000ad6:	d100      	bne.n	8000ada <__aeabi_fsub+0x2e6>
 8000ad8:	e752      	b.n	8000980 <__aeabi_fsub+0x18c>
 8000ada:	2180      	movs	r1, #128	; 0x80
 8000adc:	03c9      	lsls	r1, r1, #15
 8000ade:	420f      	tst	r7, r1
 8000ae0:	d100      	bne.n	8000ae4 <__aeabi_fsub+0x2f0>
 8000ae2:	e74d      	b.n	8000980 <__aeabi_fsub+0x18c>
 8000ae4:	4660      	mov	r0, ip
 8000ae6:	4208      	tst	r0, r1
 8000ae8:	d000      	beq.n	8000aec <__aeabi_fsub+0x2f8>
 8000aea:	e749      	b.n	8000980 <__aeabi_fsub+0x18c>
 8000aec:	464b      	mov	r3, r9
 8000aee:	e747      	b.n	8000980 <__aeabi_fsub+0x18c>
 8000af0:	4648      	mov	r0, r9
 8000af2:	25ff      	movs	r5, #255	; 0xff
 8000af4:	2800      	cmp	r0, #0
 8000af6:	d100      	bne.n	8000afa <__aeabi_fsub+0x306>
 8000af8:	e74f      	b.n	800099a <__aeabi_fsub+0x1a6>
 8000afa:	2280      	movs	r2, #128	; 0x80
 8000afc:	03d2      	lsls	r2, r2, #15
 8000afe:	4217      	tst	r7, r2
 8000b00:	d004      	beq.n	8000b0c <__aeabi_fsub+0x318>
 8000b02:	4660      	mov	r0, ip
 8000b04:	4210      	tst	r0, r2
 8000b06:	d101      	bne.n	8000b0c <__aeabi_fsub+0x318>
 8000b08:	464b      	mov	r3, r9
 8000b0a:	4688      	mov	r8, r1
 8000b0c:	2201      	movs	r2, #1
 8000b0e:	4641      	mov	r1, r8
 8000b10:	25ff      	movs	r5, #255	; 0xff
 8000b12:	400a      	ands	r2, r1
 8000b14:	e741      	b.n	800099a <__aeabi_fsub+0x1a6>
 8000b16:	4648      	mov	r0, r9
 8000b18:	2800      	cmp	r0, #0
 8000b1a:	d01f      	beq.n	8000b5c <__aeabi_fsub+0x368>
 8000b1c:	1a1a      	subs	r2, r3, r0
 8000b1e:	0150      	lsls	r0, r2, #5
 8000b20:	d520      	bpl.n	8000b64 <__aeabi_fsub+0x370>
 8000b22:	464a      	mov	r2, r9
 8000b24:	2407      	movs	r4, #7
 8000b26:	1ad3      	subs	r3, r2, r3
 8000b28:	401c      	ands	r4, r3
 8000b2a:	4688      	mov	r8, r1
 8000b2c:	2500      	movs	r5, #0
 8000b2e:	e6a6      	b.n	800087e <__aeabi_fsub+0x8a>
 8000b30:	1c74      	adds	r4, r6, #1
 8000b32:	d0c9      	beq.n	8000ac8 <__aeabi_fsub+0x2d4>
 8000b34:	43f6      	mvns	r6, r6
 8000b36:	28ff      	cmp	r0, #255	; 0xff
 8000b38:	d1bc      	bne.n	8000ab4 <__aeabi_fsub+0x2c0>
 8000b3a:	464b      	mov	r3, r9
 8000b3c:	e720      	b.n	8000980 <__aeabi_fsub+0x18c>
 8000b3e:	4699      	mov	r9, r3
 8000b40:	464b      	mov	r3, r9
 8000b42:	2500      	movs	r5, #0
 8000b44:	08db      	lsrs	r3, r3, #3
 8000b46:	e72b      	b.n	80009a0 <__aeabi_fsub+0x1ac>
 8000b48:	2301      	movs	r3, #1
 8000b4a:	e740      	b.n	80009ce <__aeabi_fsub+0x1da>
 8000b4c:	2200      	movs	r2, #0
 8000b4e:	2300      	movs	r3, #0
 8000b50:	e6a9      	b.n	80008a6 <__aeabi_fsub+0xb2>
 8000b52:	2380      	movs	r3, #128	; 0x80
 8000b54:	2200      	movs	r2, #0
 8000b56:	03db      	lsls	r3, r3, #15
 8000b58:	24ff      	movs	r4, #255	; 0xff
 8000b5a:	e6a4      	b.n	80008a6 <__aeabi_fsub+0xb2>
 8000b5c:	2500      	movs	r5, #0
 8000b5e:	e71c      	b.n	800099a <__aeabi_fsub+0x1a6>
 8000b60:	2301      	movs	r3, #1
 8000b62:	e7b1      	b.n	8000ac8 <__aeabi_fsub+0x2d4>
 8000b64:	2a00      	cmp	r2, #0
 8000b66:	d0f1      	beq.n	8000b4c <__aeabi_fsub+0x358>
 8000b68:	0013      	movs	r3, r2
 8000b6a:	2500      	movs	r5, #0
 8000b6c:	e6fc      	b.n	8000968 <__aeabi_fsub+0x174>
 8000b6e:	2500      	movs	r5, #0
 8000b70:	e6fa      	b.n	8000968 <__aeabi_fsub+0x174>
 8000b72:	46c0      	nop			; (mov r8, r8)
 8000b74:	7dffffff 	.word	0x7dffffff
 8000b78:	fbffffff 	.word	0xfbffffff

08000b7c <__aeabi_ui2f>:
 8000b7c:	b570      	push	{r4, r5, r6, lr}
 8000b7e:	1e04      	subs	r4, r0, #0
 8000b80:	d034      	beq.n	8000bec <__aeabi_ui2f+0x70>
 8000b82:	f001 fda7 	bl	80026d4 <__clzsi2>
 8000b86:	229e      	movs	r2, #158	; 0x9e
 8000b88:	1a12      	subs	r2, r2, r0
 8000b8a:	2a96      	cmp	r2, #150	; 0x96
 8000b8c:	dc07      	bgt.n	8000b9e <__aeabi_ui2f+0x22>
 8000b8e:	b2d2      	uxtb	r2, r2
 8000b90:	2808      	cmp	r0, #8
 8000b92:	dd2e      	ble.n	8000bf2 <__aeabi_ui2f+0x76>
 8000b94:	3808      	subs	r0, #8
 8000b96:	4084      	lsls	r4, r0
 8000b98:	0260      	lsls	r0, r4, #9
 8000b9a:	0a40      	lsrs	r0, r0, #9
 8000b9c:	e021      	b.n	8000be2 <__aeabi_ui2f+0x66>
 8000b9e:	2a99      	cmp	r2, #153	; 0x99
 8000ba0:	dd09      	ble.n	8000bb6 <__aeabi_ui2f+0x3a>
 8000ba2:	0003      	movs	r3, r0
 8000ba4:	0021      	movs	r1, r4
 8000ba6:	331b      	adds	r3, #27
 8000ba8:	4099      	lsls	r1, r3
 8000baa:	1e4b      	subs	r3, r1, #1
 8000bac:	4199      	sbcs	r1, r3
 8000bae:	2305      	movs	r3, #5
 8000bb0:	1a1b      	subs	r3, r3, r0
 8000bb2:	40dc      	lsrs	r4, r3
 8000bb4:	430c      	orrs	r4, r1
 8000bb6:	2805      	cmp	r0, #5
 8000bb8:	dd01      	ble.n	8000bbe <__aeabi_ui2f+0x42>
 8000bba:	1f43      	subs	r3, r0, #5
 8000bbc:	409c      	lsls	r4, r3
 8000bbe:	0023      	movs	r3, r4
 8000bc0:	490d      	ldr	r1, [pc, #52]	; (8000bf8 <__aeabi_ui2f+0x7c>)
 8000bc2:	400b      	ands	r3, r1
 8000bc4:	0765      	lsls	r5, r4, #29
 8000bc6:	d009      	beq.n	8000bdc <__aeabi_ui2f+0x60>
 8000bc8:	250f      	movs	r5, #15
 8000bca:	402c      	ands	r4, r5
 8000bcc:	2c04      	cmp	r4, #4
 8000bce:	d005      	beq.n	8000bdc <__aeabi_ui2f+0x60>
 8000bd0:	3304      	adds	r3, #4
 8000bd2:	015c      	lsls	r4, r3, #5
 8000bd4:	d502      	bpl.n	8000bdc <__aeabi_ui2f+0x60>
 8000bd6:	229f      	movs	r2, #159	; 0x9f
 8000bd8:	400b      	ands	r3, r1
 8000bda:	1a12      	subs	r2, r2, r0
 8000bdc:	019b      	lsls	r3, r3, #6
 8000bde:	0a58      	lsrs	r0, r3, #9
 8000be0:	b2d2      	uxtb	r2, r2
 8000be2:	0240      	lsls	r0, r0, #9
 8000be4:	05d2      	lsls	r2, r2, #23
 8000be6:	0a40      	lsrs	r0, r0, #9
 8000be8:	4310      	orrs	r0, r2
 8000bea:	bd70      	pop	{r4, r5, r6, pc}
 8000bec:	2200      	movs	r2, #0
 8000bee:	2000      	movs	r0, #0
 8000bf0:	e7f7      	b.n	8000be2 <__aeabi_ui2f+0x66>
 8000bf2:	0260      	lsls	r0, r4, #9
 8000bf4:	0a40      	lsrs	r0, r0, #9
 8000bf6:	e7f4      	b.n	8000be2 <__aeabi_ui2f+0x66>
 8000bf8:	fbffffff 	.word	0xfbffffff

08000bfc <__aeabi_dadd>:
 8000bfc:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000bfe:	464f      	mov	r7, r9
 8000c00:	4646      	mov	r6, r8
 8000c02:	46d6      	mov	lr, sl
 8000c04:	000c      	movs	r4, r1
 8000c06:	0309      	lsls	r1, r1, #12
 8000c08:	b5c0      	push	{r6, r7, lr}
 8000c0a:	0a49      	lsrs	r1, r1, #9
 8000c0c:	0f47      	lsrs	r7, r0, #29
 8000c0e:	005e      	lsls	r6, r3, #1
 8000c10:	4339      	orrs	r1, r7
 8000c12:	031f      	lsls	r7, r3, #12
 8000c14:	0fdb      	lsrs	r3, r3, #31
 8000c16:	469c      	mov	ip, r3
 8000c18:	0065      	lsls	r5, r4, #1
 8000c1a:	0a7b      	lsrs	r3, r7, #9
 8000c1c:	0f57      	lsrs	r7, r2, #29
 8000c1e:	431f      	orrs	r7, r3
 8000c20:	0d6d      	lsrs	r5, r5, #21
 8000c22:	0fe4      	lsrs	r4, r4, #31
 8000c24:	0d76      	lsrs	r6, r6, #21
 8000c26:	46a1      	mov	r9, r4
 8000c28:	00c0      	lsls	r0, r0, #3
 8000c2a:	46b8      	mov	r8, r7
 8000c2c:	00d2      	lsls	r2, r2, #3
 8000c2e:	1bab      	subs	r3, r5, r6
 8000c30:	4564      	cmp	r4, ip
 8000c32:	d07b      	beq.n	8000d2c <__aeabi_dadd+0x130>
 8000c34:	2b00      	cmp	r3, #0
 8000c36:	dd5f      	ble.n	8000cf8 <__aeabi_dadd+0xfc>
 8000c38:	2e00      	cmp	r6, #0
 8000c3a:	d000      	beq.n	8000c3e <__aeabi_dadd+0x42>
 8000c3c:	e0a4      	b.n	8000d88 <__aeabi_dadd+0x18c>
 8000c3e:	003e      	movs	r6, r7
 8000c40:	4316      	orrs	r6, r2
 8000c42:	d100      	bne.n	8000c46 <__aeabi_dadd+0x4a>
 8000c44:	e112      	b.n	8000e6c <__aeabi_dadd+0x270>
 8000c46:	1e5e      	subs	r6, r3, #1
 8000c48:	2e00      	cmp	r6, #0
 8000c4a:	d000      	beq.n	8000c4e <__aeabi_dadd+0x52>
 8000c4c:	e19e      	b.n	8000f8c <__aeabi_dadd+0x390>
 8000c4e:	1a87      	subs	r7, r0, r2
 8000c50:	4643      	mov	r3, r8
 8000c52:	42b8      	cmp	r0, r7
 8000c54:	4180      	sbcs	r0, r0
 8000c56:	2501      	movs	r5, #1
 8000c58:	1ac9      	subs	r1, r1, r3
 8000c5a:	4240      	negs	r0, r0
 8000c5c:	1a09      	subs	r1, r1, r0
 8000c5e:	020b      	lsls	r3, r1, #8
 8000c60:	d400      	bmi.n	8000c64 <__aeabi_dadd+0x68>
 8000c62:	e131      	b.n	8000ec8 <__aeabi_dadd+0x2cc>
 8000c64:	0249      	lsls	r1, r1, #9
 8000c66:	0a4e      	lsrs	r6, r1, #9
 8000c68:	2e00      	cmp	r6, #0
 8000c6a:	d100      	bne.n	8000c6e <__aeabi_dadd+0x72>
 8000c6c:	e16e      	b.n	8000f4c <__aeabi_dadd+0x350>
 8000c6e:	0030      	movs	r0, r6
 8000c70:	f001 fd30 	bl	80026d4 <__clzsi2>
 8000c74:	0003      	movs	r3, r0
 8000c76:	3b08      	subs	r3, #8
 8000c78:	2b1f      	cmp	r3, #31
 8000c7a:	dd00      	ble.n	8000c7e <__aeabi_dadd+0x82>
 8000c7c:	e161      	b.n	8000f42 <__aeabi_dadd+0x346>
 8000c7e:	2220      	movs	r2, #32
 8000c80:	0039      	movs	r1, r7
 8000c82:	1ad2      	subs	r2, r2, r3
 8000c84:	409e      	lsls	r6, r3
 8000c86:	40d1      	lsrs	r1, r2
 8000c88:	409f      	lsls	r7, r3
 8000c8a:	430e      	orrs	r6, r1
 8000c8c:	429d      	cmp	r5, r3
 8000c8e:	dd00      	ble.n	8000c92 <__aeabi_dadd+0x96>
 8000c90:	e151      	b.n	8000f36 <__aeabi_dadd+0x33a>
 8000c92:	1b5d      	subs	r5, r3, r5
 8000c94:	1c6b      	adds	r3, r5, #1
 8000c96:	2b1f      	cmp	r3, #31
 8000c98:	dd00      	ble.n	8000c9c <__aeabi_dadd+0xa0>
 8000c9a:	e17c      	b.n	8000f96 <__aeabi_dadd+0x39a>
 8000c9c:	2120      	movs	r1, #32
 8000c9e:	1ac9      	subs	r1, r1, r3
 8000ca0:	003d      	movs	r5, r7
 8000ca2:	0030      	movs	r0, r6
 8000ca4:	408f      	lsls	r7, r1
 8000ca6:	4088      	lsls	r0, r1
 8000ca8:	40dd      	lsrs	r5, r3
 8000caa:	1e79      	subs	r1, r7, #1
 8000cac:	418f      	sbcs	r7, r1
 8000cae:	0031      	movs	r1, r6
 8000cb0:	2207      	movs	r2, #7
 8000cb2:	4328      	orrs	r0, r5
 8000cb4:	40d9      	lsrs	r1, r3
 8000cb6:	2500      	movs	r5, #0
 8000cb8:	4307      	orrs	r7, r0
 8000cba:	403a      	ands	r2, r7
 8000cbc:	2a00      	cmp	r2, #0
 8000cbe:	d009      	beq.n	8000cd4 <__aeabi_dadd+0xd8>
 8000cc0:	230f      	movs	r3, #15
 8000cc2:	403b      	ands	r3, r7
 8000cc4:	2b04      	cmp	r3, #4
 8000cc6:	d005      	beq.n	8000cd4 <__aeabi_dadd+0xd8>
 8000cc8:	1d3b      	adds	r3, r7, #4
 8000cca:	42bb      	cmp	r3, r7
 8000ccc:	41bf      	sbcs	r7, r7
 8000cce:	427f      	negs	r7, r7
 8000cd0:	19c9      	adds	r1, r1, r7
 8000cd2:	001f      	movs	r7, r3
 8000cd4:	020b      	lsls	r3, r1, #8
 8000cd6:	d400      	bmi.n	8000cda <__aeabi_dadd+0xde>
 8000cd8:	e226      	b.n	8001128 <__aeabi_dadd+0x52c>
 8000cda:	1c6a      	adds	r2, r5, #1
 8000cdc:	4bc6      	ldr	r3, [pc, #792]	; (8000ff8 <__aeabi_dadd+0x3fc>)
 8000cde:	0555      	lsls	r5, r2, #21
 8000ce0:	0d6d      	lsrs	r5, r5, #21
 8000ce2:	429a      	cmp	r2, r3
 8000ce4:	d100      	bne.n	8000ce8 <__aeabi_dadd+0xec>
 8000ce6:	e106      	b.n	8000ef6 <__aeabi_dadd+0x2fa>
 8000ce8:	4ac4      	ldr	r2, [pc, #784]	; (8000ffc <__aeabi_dadd+0x400>)
 8000cea:	08ff      	lsrs	r7, r7, #3
 8000cec:	400a      	ands	r2, r1
 8000cee:	0753      	lsls	r3, r2, #29
 8000cf0:	0252      	lsls	r2, r2, #9
 8000cf2:	433b      	orrs	r3, r7
 8000cf4:	0b12      	lsrs	r2, r2, #12
 8000cf6:	e08e      	b.n	8000e16 <__aeabi_dadd+0x21a>
 8000cf8:	2b00      	cmp	r3, #0
 8000cfa:	d000      	beq.n	8000cfe <__aeabi_dadd+0x102>
 8000cfc:	e0b8      	b.n	8000e70 <__aeabi_dadd+0x274>
 8000cfe:	1c6b      	adds	r3, r5, #1
 8000d00:	055b      	lsls	r3, r3, #21
 8000d02:	0d5b      	lsrs	r3, r3, #21
 8000d04:	2b01      	cmp	r3, #1
 8000d06:	dc00      	bgt.n	8000d0a <__aeabi_dadd+0x10e>
 8000d08:	e130      	b.n	8000f6c <__aeabi_dadd+0x370>
 8000d0a:	1a87      	subs	r7, r0, r2
 8000d0c:	4643      	mov	r3, r8
 8000d0e:	42b8      	cmp	r0, r7
 8000d10:	41b6      	sbcs	r6, r6
 8000d12:	1acb      	subs	r3, r1, r3
 8000d14:	4276      	negs	r6, r6
 8000d16:	1b9e      	subs	r6, r3, r6
 8000d18:	0233      	lsls	r3, r6, #8
 8000d1a:	d500      	bpl.n	8000d1e <__aeabi_dadd+0x122>
 8000d1c:	e14c      	b.n	8000fb8 <__aeabi_dadd+0x3bc>
 8000d1e:	003b      	movs	r3, r7
 8000d20:	4333      	orrs	r3, r6
 8000d22:	d1a1      	bne.n	8000c68 <__aeabi_dadd+0x6c>
 8000d24:	2200      	movs	r2, #0
 8000d26:	2400      	movs	r4, #0
 8000d28:	2500      	movs	r5, #0
 8000d2a:	e070      	b.n	8000e0e <__aeabi_dadd+0x212>
 8000d2c:	2b00      	cmp	r3, #0
 8000d2e:	dc00      	bgt.n	8000d32 <__aeabi_dadd+0x136>
 8000d30:	e0e5      	b.n	8000efe <__aeabi_dadd+0x302>
 8000d32:	2e00      	cmp	r6, #0
 8000d34:	d100      	bne.n	8000d38 <__aeabi_dadd+0x13c>
 8000d36:	e083      	b.n	8000e40 <__aeabi_dadd+0x244>
 8000d38:	4eaf      	ldr	r6, [pc, #700]	; (8000ff8 <__aeabi_dadd+0x3fc>)
 8000d3a:	42b5      	cmp	r5, r6
 8000d3c:	d060      	beq.n	8000e00 <__aeabi_dadd+0x204>
 8000d3e:	2680      	movs	r6, #128	; 0x80
 8000d40:	0436      	lsls	r6, r6, #16
 8000d42:	4337      	orrs	r7, r6
 8000d44:	46b8      	mov	r8, r7
 8000d46:	2b38      	cmp	r3, #56	; 0x38
 8000d48:	dc00      	bgt.n	8000d4c <__aeabi_dadd+0x150>
 8000d4a:	e13e      	b.n	8000fca <__aeabi_dadd+0x3ce>
 8000d4c:	4643      	mov	r3, r8
 8000d4e:	4313      	orrs	r3, r2
 8000d50:	001f      	movs	r7, r3
 8000d52:	1e7a      	subs	r2, r7, #1
 8000d54:	4197      	sbcs	r7, r2
 8000d56:	183f      	adds	r7, r7, r0
 8000d58:	4287      	cmp	r7, r0
 8000d5a:	4180      	sbcs	r0, r0
 8000d5c:	4240      	negs	r0, r0
 8000d5e:	1809      	adds	r1, r1, r0
 8000d60:	020b      	lsls	r3, r1, #8
 8000d62:	d400      	bmi.n	8000d66 <__aeabi_dadd+0x16a>
 8000d64:	e0b0      	b.n	8000ec8 <__aeabi_dadd+0x2cc>
 8000d66:	4ba4      	ldr	r3, [pc, #656]	; (8000ff8 <__aeabi_dadd+0x3fc>)
 8000d68:	3501      	adds	r5, #1
 8000d6a:	429d      	cmp	r5, r3
 8000d6c:	d100      	bne.n	8000d70 <__aeabi_dadd+0x174>
 8000d6e:	e0c3      	b.n	8000ef8 <__aeabi_dadd+0x2fc>
 8000d70:	4aa2      	ldr	r2, [pc, #648]	; (8000ffc <__aeabi_dadd+0x400>)
 8000d72:	087b      	lsrs	r3, r7, #1
 8000d74:	400a      	ands	r2, r1
 8000d76:	2101      	movs	r1, #1
 8000d78:	400f      	ands	r7, r1
 8000d7a:	431f      	orrs	r7, r3
 8000d7c:	0851      	lsrs	r1, r2, #1
 8000d7e:	07d3      	lsls	r3, r2, #31
 8000d80:	2207      	movs	r2, #7
 8000d82:	431f      	orrs	r7, r3
 8000d84:	403a      	ands	r2, r7
 8000d86:	e799      	b.n	8000cbc <__aeabi_dadd+0xc0>
 8000d88:	4e9b      	ldr	r6, [pc, #620]	; (8000ff8 <__aeabi_dadd+0x3fc>)
 8000d8a:	42b5      	cmp	r5, r6
 8000d8c:	d038      	beq.n	8000e00 <__aeabi_dadd+0x204>
 8000d8e:	2680      	movs	r6, #128	; 0x80
 8000d90:	0436      	lsls	r6, r6, #16
 8000d92:	4337      	orrs	r7, r6
 8000d94:	46b8      	mov	r8, r7
 8000d96:	2b38      	cmp	r3, #56	; 0x38
 8000d98:	dd00      	ble.n	8000d9c <__aeabi_dadd+0x1a0>
 8000d9a:	e0dc      	b.n	8000f56 <__aeabi_dadd+0x35a>
 8000d9c:	2b1f      	cmp	r3, #31
 8000d9e:	dc00      	bgt.n	8000da2 <__aeabi_dadd+0x1a6>
 8000da0:	e130      	b.n	8001004 <__aeabi_dadd+0x408>
 8000da2:	001e      	movs	r6, r3
 8000da4:	4647      	mov	r7, r8
 8000da6:	3e20      	subs	r6, #32
 8000da8:	40f7      	lsrs	r7, r6
 8000daa:	46bc      	mov	ip, r7
 8000dac:	2b20      	cmp	r3, #32
 8000dae:	d004      	beq.n	8000dba <__aeabi_dadd+0x1be>
 8000db0:	2640      	movs	r6, #64	; 0x40
 8000db2:	1af3      	subs	r3, r6, r3
 8000db4:	4646      	mov	r6, r8
 8000db6:	409e      	lsls	r6, r3
 8000db8:	4332      	orrs	r2, r6
 8000dba:	0017      	movs	r7, r2
 8000dbc:	4663      	mov	r3, ip
 8000dbe:	1e7a      	subs	r2, r7, #1
 8000dc0:	4197      	sbcs	r7, r2
 8000dc2:	431f      	orrs	r7, r3
 8000dc4:	e0cc      	b.n	8000f60 <__aeabi_dadd+0x364>
 8000dc6:	2b00      	cmp	r3, #0
 8000dc8:	d100      	bne.n	8000dcc <__aeabi_dadd+0x1d0>
 8000dca:	e204      	b.n	80011d6 <__aeabi_dadd+0x5da>
 8000dcc:	4643      	mov	r3, r8
 8000dce:	4313      	orrs	r3, r2
 8000dd0:	d100      	bne.n	8000dd4 <__aeabi_dadd+0x1d8>
 8000dd2:	e159      	b.n	8001088 <__aeabi_dadd+0x48c>
 8000dd4:	074b      	lsls	r3, r1, #29
 8000dd6:	08c0      	lsrs	r0, r0, #3
 8000dd8:	4318      	orrs	r0, r3
 8000dda:	2380      	movs	r3, #128	; 0x80
 8000ddc:	08c9      	lsrs	r1, r1, #3
 8000dde:	031b      	lsls	r3, r3, #12
 8000de0:	4219      	tst	r1, r3
 8000de2:	d008      	beq.n	8000df6 <__aeabi_dadd+0x1fa>
 8000de4:	4645      	mov	r5, r8
 8000de6:	08ed      	lsrs	r5, r5, #3
 8000de8:	421d      	tst	r5, r3
 8000dea:	d104      	bne.n	8000df6 <__aeabi_dadd+0x1fa>
 8000dec:	4643      	mov	r3, r8
 8000dee:	08d0      	lsrs	r0, r2, #3
 8000df0:	0759      	lsls	r1, r3, #29
 8000df2:	4308      	orrs	r0, r1
 8000df4:	0029      	movs	r1, r5
 8000df6:	0f42      	lsrs	r2, r0, #29
 8000df8:	00c9      	lsls	r1, r1, #3
 8000dfa:	4d7f      	ldr	r5, [pc, #508]	; (8000ff8 <__aeabi_dadd+0x3fc>)
 8000dfc:	4311      	orrs	r1, r2
 8000dfe:	00c0      	lsls	r0, r0, #3
 8000e00:	074b      	lsls	r3, r1, #29
 8000e02:	08ca      	lsrs	r2, r1, #3
 8000e04:	497c      	ldr	r1, [pc, #496]	; (8000ff8 <__aeabi_dadd+0x3fc>)
 8000e06:	08c0      	lsrs	r0, r0, #3
 8000e08:	4303      	orrs	r3, r0
 8000e0a:	428d      	cmp	r5, r1
 8000e0c:	d068      	beq.n	8000ee0 <__aeabi_dadd+0x2e4>
 8000e0e:	0312      	lsls	r2, r2, #12
 8000e10:	056d      	lsls	r5, r5, #21
 8000e12:	0b12      	lsrs	r2, r2, #12
 8000e14:	0d6d      	lsrs	r5, r5, #21
 8000e16:	2100      	movs	r1, #0
 8000e18:	0312      	lsls	r2, r2, #12
 8000e1a:	0018      	movs	r0, r3
 8000e1c:	0b13      	lsrs	r3, r2, #12
 8000e1e:	0d0a      	lsrs	r2, r1, #20
 8000e20:	0512      	lsls	r2, r2, #20
 8000e22:	431a      	orrs	r2, r3
 8000e24:	4b76      	ldr	r3, [pc, #472]	; (8001000 <__aeabi_dadd+0x404>)
 8000e26:	052d      	lsls	r5, r5, #20
 8000e28:	4013      	ands	r3, r2
 8000e2a:	432b      	orrs	r3, r5
 8000e2c:	005b      	lsls	r3, r3, #1
 8000e2e:	07e4      	lsls	r4, r4, #31
 8000e30:	085b      	lsrs	r3, r3, #1
 8000e32:	4323      	orrs	r3, r4
 8000e34:	0019      	movs	r1, r3
 8000e36:	bc1c      	pop	{r2, r3, r4}
 8000e38:	4690      	mov	r8, r2
 8000e3a:	4699      	mov	r9, r3
 8000e3c:	46a2      	mov	sl, r4
 8000e3e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000e40:	003e      	movs	r6, r7
 8000e42:	4316      	orrs	r6, r2
 8000e44:	d012      	beq.n	8000e6c <__aeabi_dadd+0x270>
 8000e46:	1e5e      	subs	r6, r3, #1
 8000e48:	2e00      	cmp	r6, #0
 8000e4a:	d000      	beq.n	8000e4e <__aeabi_dadd+0x252>
 8000e4c:	e100      	b.n	8001050 <__aeabi_dadd+0x454>
 8000e4e:	1887      	adds	r7, r0, r2
 8000e50:	4287      	cmp	r7, r0
 8000e52:	4180      	sbcs	r0, r0
 8000e54:	4441      	add	r1, r8
 8000e56:	4240      	negs	r0, r0
 8000e58:	1809      	adds	r1, r1, r0
 8000e5a:	2501      	movs	r5, #1
 8000e5c:	020b      	lsls	r3, r1, #8
 8000e5e:	d533      	bpl.n	8000ec8 <__aeabi_dadd+0x2cc>
 8000e60:	2502      	movs	r5, #2
 8000e62:	e785      	b.n	8000d70 <__aeabi_dadd+0x174>
 8000e64:	4664      	mov	r4, ip
 8000e66:	0033      	movs	r3, r6
 8000e68:	4641      	mov	r1, r8
 8000e6a:	0010      	movs	r0, r2
 8000e6c:	001d      	movs	r5, r3
 8000e6e:	e7c7      	b.n	8000e00 <__aeabi_dadd+0x204>
 8000e70:	2d00      	cmp	r5, #0
 8000e72:	d000      	beq.n	8000e76 <__aeabi_dadd+0x27a>
 8000e74:	e0da      	b.n	800102c <__aeabi_dadd+0x430>
 8000e76:	000c      	movs	r4, r1
 8000e78:	4304      	orrs	r4, r0
 8000e7a:	d0f3      	beq.n	8000e64 <__aeabi_dadd+0x268>
 8000e7c:	1c5c      	adds	r4, r3, #1
 8000e7e:	d100      	bne.n	8000e82 <__aeabi_dadd+0x286>
 8000e80:	e19f      	b.n	80011c2 <__aeabi_dadd+0x5c6>
 8000e82:	4c5d      	ldr	r4, [pc, #372]	; (8000ff8 <__aeabi_dadd+0x3fc>)
 8000e84:	42a6      	cmp	r6, r4
 8000e86:	d100      	bne.n	8000e8a <__aeabi_dadd+0x28e>
 8000e88:	e12f      	b.n	80010ea <__aeabi_dadd+0x4ee>
 8000e8a:	43db      	mvns	r3, r3
 8000e8c:	2b38      	cmp	r3, #56	; 0x38
 8000e8e:	dd00      	ble.n	8000e92 <__aeabi_dadd+0x296>
 8000e90:	e166      	b.n	8001160 <__aeabi_dadd+0x564>
 8000e92:	2b1f      	cmp	r3, #31
 8000e94:	dd00      	ble.n	8000e98 <__aeabi_dadd+0x29c>
 8000e96:	e183      	b.n	80011a0 <__aeabi_dadd+0x5a4>
 8000e98:	2420      	movs	r4, #32
 8000e9a:	0005      	movs	r5, r0
 8000e9c:	1ae4      	subs	r4, r4, r3
 8000e9e:	000f      	movs	r7, r1
 8000ea0:	40dd      	lsrs	r5, r3
 8000ea2:	40d9      	lsrs	r1, r3
 8000ea4:	40a0      	lsls	r0, r4
 8000ea6:	4643      	mov	r3, r8
 8000ea8:	40a7      	lsls	r7, r4
 8000eaa:	1a5b      	subs	r3, r3, r1
 8000eac:	1e44      	subs	r4, r0, #1
 8000eae:	41a0      	sbcs	r0, r4
 8000eb0:	4698      	mov	r8, r3
 8000eb2:	432f      	orrs	r7, r5
 8000eb4:	4338      	orrs	r0, r7
 8000eb6:	1a17      	subs	r7, r2, r0
 8000eb8:	42ba      	cmp	r2, r7
 8000eba:	4192      	sbcs	r2, r2
 8000ebc:	4643      	mov	r3, r8
 8000ebe:	4252      	negs	r2, r2
 8000ec0:	1a99      	subs	r1, r3, r2
 8000ec2:	4664      	mov	r4, ip
 8000ec4:	0035      	movs	r5, r6
 8000ec6:	e6ca      	b.n	8000c5e <__aeabi_dadd+0x62>
 8000ec8:	2207      	movs	r2, #7
 8000eca:	403a      	ands	r2, r7
 8000ecc:	2a00      	cmp	r2, #0
 8000ece:	d000      	beq.n	8000ed2 <__aeabi_dadd+0x2d6>
 8000ed0:	e6f6      	b.n	8000cc0 <__aeabi_dadd+0xc4>
 8000ed2:	074b      	lsls	r3, r1, #29
 8000ed4:	08ca      	lsrs	r2, r1, #3
 8000ed6:	4948      	ldr	r1, [pc, #288]	; (8000ff8 <__aeabi_dadd+0x3fc>)
 8000ed8:	08ff      	lsrs	r7, r7, #3
 8000eda:	433b      	orrs	r3, r7
 8000edc:	428d      	cmp	r5, r1
 8000ede:	d196      	bne.n	8000e0e <__aeabi_dadd+0x212>
 8000ee0:	0019      	movs	r1, r3
 8000ee2:	4311      	orrs	r1, r2
 8000ee4:	d100      	bne.n	8000ee8 <__aeabi_dadd+0x2ec>
 8000ee6:	e19e      	b.n	8001226 <__aeabi_dadd+0x62a>
 8000ee8:	2180      	movs	r1, #128	; 0x80
 8000eea:	0309      	lsls	r1, r1, #12
 8000eec:	430a      	orrs	r2, r1
 8000eee:	0312      	lsls	r2, r2, #12
 8000ef0:	0b12      	lsrs	r2, r2, #12
 8000ef2:	4d41      	ldr	r5, [pc, #260]	; (8000ff8 <__aeabi_dadd+0x3fc>)
 8000ef4:	e78f      	b.n	8000e16 <__aeabi_dadd+0x21a>
 8000ef6:	0015      	movs	r5, r2
 8000ef8:	2200      	movs	r2, #0
 8000efa:	2300      	movs	r3, #0
 8000efc:	e78b      	b.n	8000e16 <__aeabi_dadd+0x21a>
 8000efe:	2b00      	cmp	r3, #0
 8000f00:	d000      	beq.n	8000f04 <__aeabi_dadd+0x308>
 8000f02:	e0c7      	b.n	8001094 <__aeabi_dadd+0x498>
 8000f04:	1c6b      	adds	r3, r5, #1
 8000f06:	055f      	lsls	r7, r3, #21
 8000f08:	0d7f      	lsrs	r7, r7, #21
 8000f0a:	2f01      	cmp	r7, #1
 8000f0c:	dc00      	bgt.n	8000f10 <__aeabi_dadd+0x314>
 8000f0e:	e0f1      	b.n	80010f4 <__aeabi_dadd+0x4f8>
 8000f10:	4d39      	ldr	r5, [pc, #228]	; (8000ff8 <__aeabi_dadd+0x3fc>)
 8000f12:	42ab      	cmp	r3, r5
 8000f14:	d100      	bne.n	8000f18 <__aeabi_dadd+0x31c>
 8000f16:	e0b9      	b.n	800108c <__aeabi_dadd+0x490>
 8000f18:	1885      	adds	r5, r0, r2
 8000f1a:	000a      	movs	r2, r1
 8000f1c:	4285      	cmp	r5, r0
 8000f1e:	4189      	sbcs	r1, r1
 8000f20:	4442      	add	r2, r8
 8000f22:	4249      	negs	r1, r1
 8000f24:	1851      	adds	r1, r2, r1
 8000f26:	2207      	movs	r2, #7
 8000f28:	07cf      	lsls	r7, r1, #31
 8000f2a:	086d      	lsrs	r5, r5, #1
 8000f2c:	432f      	orrs	r7, r5
 8000f2e:	0849      	lsrs	r1, r1, #1
 8000f30:	403a      	ands	r2, r7
 8000f32:	001d      	movs	r5, r3
 8000f34:	e6c2      	b.n	8000cbc <__aeabi_dadd+0xc0>
 8000f36:	2207      	movs	r2, #7
 8000f38:	4930      	ldr	r1, [pc, #192]	; (8000ffc <__aeabi_dadd+0x400>)
 8000f3a:	1aed      	subs	r5, r5, r3
 8000f3c:	4031      	ands	r1, r6
 8000f3e:	403a      	ands	r2, r7
 8000f40:	e6bc      	b.n	8000cbc <__aeabi_dadd+0xc0>
 8000f42:	003e      	movs	r6, r7
 8000f44:	3828      	subs	r0, #40	; 0x28
 8000f46:	4086      	lsls	r6, r0
 8000f48:	2700      	movs	r7, #0
 8000f4a:	e69f      	b.n	8000c8c <__aeabi_dadd+0x90>
 8000f4c:	0038      	movs	r0, r7
 8000f4e:	f001 fbc1 	bl	80026d4 <__clzsi2>
 8000f52:	3020      	adds	r0, #32
 8000f54:	e68e      	b.n	8000c74 <__aeabi_dadd+0x78>
 8000f56:	4643      	mov	r3, r8
 8000f58:	4313      	orrs	r3, r2
 8000f5a:	001f      	movs	r7, r3
 8000f5c:	1e7a      	subs	r2, r7, #1
 8000f5e:	4197      	sbcs	r7, r2
 8000f60:	1bc7      	subs	r7, r0, r7
 8000f62:	42b8      	cmp	r0, r7
 8000f64:	4180      	sbcs	r0, r0
 8000f66:	4240      	negs	r0, r0
 8000f68:	1a09      	subs	r1, r1, r0
 8000f6a:	e678      	b.n	8000c5e <__aeabi_dadd+0x62>
 8000f6c:	000e      	movs	r6, r1
 8000f6e:	003b      	movs	r3, r7
 8000f70:	4306      	orrs	r6, r0
 8000f72:	4313      	orrs	r3, r2
 8000f74:	2d00      	cmp	r5, #0
 8000f76:	d161      	bne.n	800103c <__aeabi_dadd+0x440>
 8000f78:	2e00      	cmp	r6, #0
 8000f7a:	d000      	beq.n	8000f7e <__aeabi_dadd+0x382>
 8000f7c:	e0f4      	b.n	8001168 <__aeabi_dadd+0x56c>
 8000f7e:	2b00      	cmp	r3, #0
 8000f80:	d100      	bne.n	8000f84 <__aeabi_dadd+0x388>
 8000f82:	e11b      	b.n	80011bc <__aeabi_dadd+0x5c0>
 8000f84:	4664      	mov	r4, ip
 8000f86:	0039      	movs	r1, r7
 8000f88:	0010      	movs	r0, r2
 8000f8a:	e739      	b.n	8000e00 <__aeabi_dadd+0x204>
 8000f8c:	4f1a      	ldr	r7, [pc, #104]	; (8000ff8 <__aeabi_dadd+0x3fc>)
 8000f8e:	42bb      	cmp	r3, r7
 8000f90:	d07a      	beq.n	8001088 <__aeabi_dadd+0x48c>
 8000f92:	0033      	movs	r3, r6
 8000f94:	e6ff      	b.n	8000d96 <__aeabi_dadd+0x19a>
 8000f96:	0030      	movs	r0, r6
 8000f98:	3d1f      	subs	r5, #31
 8000f9a:	40e8      	lsrs	r0, r5
 8000f9c:	2b20      	cmp	r3, #32
 8000f9e:	d003      	beq.n	8000fa8 <__aeabi_dadd+0x3ac>
 8000fa0:	2140      	movs	r1, #64	; 0x40
 8000fa2:	1acb      	subs	r3, r1, r3
 8000fa4:	409e      	lsls	r6, r3
 8000fa6:	4337      	orrs	r7, r6
 8000fa8:	1e7b      	subs	r3, r7, #1
 8000faa:	419f      	sbcs	r7, r3
 8000fac:	2207      	movs	r2, #7
 8000fae:	4307      	orrs	r7, r0
 8000fb0:	403a      	ands	r2, r7
 8000fb2:	2100      	movs	r1, #0
 8000fb4:	2500      	movs	r5, #0
 8000fb6:	e789      	b.n	8000ecc <__aeabi_dadd+0x2d0>
 8000fb8:	1a17      	subs	r7, r2, r0
 8000fba:	4643      	mov	r3, r8
 8000fbc:	42ba      	cmp	r2, r7
 8000fbe:	41b6      	sbcs	r6, r6
 8000fc0:	1a59      	subs	r1, r3, r1
 8000fc2:	4276      	negs	r6, r6
 8000fc4:	1b8e      	subs	r6, r1, r6
 8000fc6:	4664      	mov	r4, ip
 8000fc8:	e64e      	b.n	8000c68 <__aeabi_dadd+0x6c>
 8000fca:	2b1f      	cmp	r3, #31
 8000fcc:	dd00      	ble.n	8000fd0 <__aeabi_dadd+0x3d4>
 8000fce:	e0ad      	b.n	800112c <__aeabi_dadd+0x530>
 8000fd0:	2620      	movs	r6, #32
 8000fd2:	4647      	mov	r7, r8
 8000fd4:	1af6      	subs	r6, r6, r3
 8000fd6:	40b7      	lsls	r7, r6
 8000fd8:	46b9      	mov	r9, r7
 8000fda:	0017      	movs	r7, r2
 8000fdc:	46b2      	mov	sl, r6
 8000fde:	40df      	lsrs	r7, r3
 8000fe0:	464e      	mov	r6, r9
 8000fe2:	433e      	orrs	r6, r7
 8000fe4:	0037      	movs	r7, r6
 8000fe6:	4656      	mov	r6, sl
 8000fe8:	40b2      	lsls	r2, r6
 8000fea:	1e56      	subs	r6, r2, #1
 8000fec:	41b2      	sbcs	r2, r6
 8000fee:	4317      	orrs	r7, r2
 8000ff0:	4642      	mov	r2, r8
 8000ff2:	40da      	lsrs	r2, r3
 8000ff4:	1889      	adds	r1, r1, r2
 8000ff6:	e6ae      	b.n	8000d56 <__aeabi_dadd+0x15a>
 8000ff8:	000007ff 	.word	0x000007ff
 8000ffc:	ff7fffff 	.word	0xff7fffff
 8001000:	800fffff 	.word	0x800fffff
 8001004:	2620      	movs	r6, #32
 8001006:	4647      	mov	r7, r8
 8001008:	1af6      	subs	r6, r6, r3
 800100a:	40b7      	lsls	r7, r6
 800100c:	46b9      	mov	r9, r7
 800100e:	0017      	movs	r7, r2
 8001010:	46b2      	mov	sl, r6
 8001012:	40df      	lsrs	r7, r3
 8001014:	464e      	mov	r6, r9
 8001016:	433e      	orrs	r6, r7
 8001018:	0037      	movs	r7, r6
 800101a:	4656      	mov	r6, sl
 800101c:	40b2      	lsls	r2, r6
 800101e:	1e56      	subs	r6, r2, #1
 8001020:	41b2      	sbcs	r2, r6
 8001022:	4317      	orrs	r7, r2
 8001024:	4642      	mov	r2, r8
 8001026:	40da      	lsrs	r2, r3
 8001028:	1a89      	subs	r1, r1, r2
 800102a:	e799      	b.n	8000f60 <__aeabi_dadd+0x364>
 800102c:	4c7f      	ldr	r4, [pc, #508]	; (800122c <__aeabi_dadd+0x630>)
 800102e:	42a6      	cmp	r6, r4
 8001030:	d05b      	beq.n	80010ea <__aeabi_dadd+0x4ee>
 8001032:	2480      	movs	r4, #128	; 0x80
 8001034:	0424      	lsls	r4, r4, #16
 8001036:	425b      	negs	r3, r3
 8001038:	4321      	orrs	r1, r4
 800103a:	e727      	b.n	8000e8c <__aeabi_dadd+0x290>
 800103c:	2e00      	cmp	r6, #0
 800103e:	d10c      	bne.n	800105a <__aeabi_dadd+0x45e>
 8001040:	2b00      	cmp	r3, #0
 8001042:	d100      	bne.n	8001046 <__aeabi_dadd+0x44a>
 8001044:	e0cb      	b.n	80011de <__aeabi_dadd+0x5e2>
 8001046:	4664      	mov	r4, ip
 8001048:	0039      	movs	r1, r7
 800104a:	0010      	movs	r0, r2
 800104c:	4d77      	ldr	r5, [pc, #476]	; (800122c <__aeabi_dadd+0x630>)
 800104e:	e6d7      	b.n	8000e00 <__aeabi_dadd+0x204>
 8001050:	4f76      	ldr	r7, [pc, #472]	; (800122c <__aeabi_dadd+0x630>)
 8001052:	42bb      	cmp	r3, r7
 8001054:	d018      	beq.n	8001088 <__aeabi_dadd+0x48c>
 8001056:	0033      	movs	r3, r6
 8001058:	e675      	b.n	8000d46 <__aeabi_dadd+0x14a>
 800105a:	2b00      	cmp	r3, #0
 800105c:	d014      	beq.n	8001088 <__aeabi_dadd+0x48c>
 800105e:	074b      	lsls	r3, r1, #29
 8001060:	08c0      	lsrs	r0, r0, #3
 8001062:	4318      	orrs	r0, r3
 8001064:	2380      	movs	r3, #128	; 0x80
 8001066:	08c9      	lsrs	r1, r1, #3
 8001068:	031b      	lsls	r3, r3, #12
 800106a:	4219      	tst	r1, r3
 800106c:	d007      	beq.n	800107e <__aeabi_dadd+0x482>
 800106e:	08fc      	lsrs	r4, r7, #3
 8001070:	421c      	tst	r4, r3
 8001072:	d104      	bne.n	800107e <__aeabi_dadd+0x482>
 8001074:	0779      	lsls	r1, r7, #29
 8001076:	08d0      	lsrs	r0, r2, #3
 8001078:	4308      	orrs	r0, r1
 800107a:	46e1      	mov	r9, ip
 800107c:	0021      	movs	r1, r4
 800107e:	464c      	mov	r4, r9
 8001080:	0f42      	lsrs	r2, r0, #29
 8001082:	00c9      	lsls	r1, r1, #3
 8001084:	4311      	orrs	r1, r2
 8001086:	00c0      	lsls	r0, r0, #3
 8001088:	4d68      	ldr	r5, [pc, #416]	; (800122c <__aeabi_dadd+0x630>)
 800108a:	e6b9      	b.n	8000e00 <__aeabi_dadd+0x204>
 800108c:	001d      	movs	r5, r3
 800108e:	2200      	movs	r2, #0
 8001090:	2300      	movs	r3, #0
 8001092:	e6c0      	b.n	8000e16 <__aeabi_dadd+0x21a>
 8001094:	2d00      	cmp	r5, #0
 8001096:	d15b      	bne.n	8001150 <__aeabi_dadd+0x554>
 8001098:	000d      	movs	r5, r1
 800109a:	4305      	orrs	r5, r0
 800109c:	d100      	bne.n	80010a0 <__aeabi_dadd+0x4a4>
 800109e:	e6e2      	b.n	8000e66 <__aeabi_dadd+0x26a>
 80010a0:	1c5d      	adds	r5, r3, #1
 80010a2:	d100      	bne.n	80010a6 <__aeabi_dadd+0x4aa>
 80010a4:	e0b0      	b.n	8001208 <__aeabi_dadd+0x60c>
 80010a6:	4d61      	ldr	r5, [pc, #388]	; (800122c <__aeabi_dadd+0x630>)
 80010a8:	42ae      	cmp	r6, r5
 80010aa:	d01f      	beq.n	80010ec <__aeabi_dadd+0x4f0>
 80010ac:	43db      	mvns	r3, r3
 80010ae:	2b38      	cmp	r3, #56	; 0x38
 80010b0:	dc71      	bgt.n	8001196 <__aeabi_dadd+0x59a>
 80010b2:	2b1f      	cmp	r3, #31
 80010b4:	dd00      	ble.n	80010b8 <__aeabi_dadd+0x4bc>
 80010b6:	e096      	b.n	80011e6 <__aeabi_dadd+0x5ea>
 80010b8:	2520      	movs	r5, #32
 80010ba:	000f      	movs	r7, r1
 80010bc:	1aed      	subs	r5, r5, r3
 80010be:	40af      	lsls	r7, r5
 80010c0:	46b9      	mov	r9, r7
 80010c2:	0007      	movs	r7, r0
 80010c4:	46aa      	mov	sl, r5
 80010c6:	40df      	lsrs	r7, r3
 80010c8:	464d      	mov	r5, r9
 80010ca:	433d      	orrs	r5, r7
 80010cc:	002f      	movs	r7, r5
 80010ce:	4655      	mov	r5, sl
 80010d0:	40a8      	lsls	r0, r5
 80010d2:	40d9      	lsrs	r1, r3
 80010d4:	1e45      	subs	r5, r0, #1
 80010d6:	41a8      	sbcs	r0, r5
 80010d8:	4488      	add	r8, r1
 80010da:	4307      	orrs	r7, r0
 80010dc:	18bf      	adds	r7, r7, r2
 80010de:	4297      	cmp	r7, r2
 80010e0:	4192      	sbcs	r2, r2
 80010e2:	4251      	negs	r1, r2
 80010e4:	4441      	add	r1, r8
 80010e6:	0035      	movs	r5, r6
 80010e8:	e63a      	b.n	8000d60 <__aeabi_dadd+0x164>
 80010ea:	4664      	mov	r4, ip
 80010ec:	0035      	movs	r5, r6
 80010ee:	4641      	mov	r1, r8
 80010f0:	0010      	movs	r0, r2
 80010f2:	e685      	b.n	8000e00 <__aeabi_dadd+0x204>
 80010f4:	000b      	movs	r3, r1
 80010f6:	4303      	orrs	r3, r0
 80010f8:	2d00      	cmp	r5, #0
 80010fa:	d000      	beq.n	80010fe <__aeabi_dadd+0x502>
 80010fc:	e663      	b.n	8000dc6 <__aeabi_dadd+0x1ca>
 80010fe:	2b00      	cmp	r3, #0
 8001100:	d0f5      	beq.n	80010ee <__aeabi_dadd+0x4f2>
 8001102:	4643      	mov	r3, r8
 8001104:	4313      	orrs	r3, r2
 8001106:	d100      	bne.n	800110a <__aeabi_dadd+0x50e>
 8001108:	e67a      	b.n	8000e00 <__aeabi_dadd+0x204>
 800110a:	1887      	adds	r7, r0, r2
 800110c:	4287      	cmp	r7, r0
 800110e:	4180      	sbcs	r0, r0
 8001110:	2207      	movs	r2, #7
 8001112:	4441      	add	r1, r8
 8001114:	4240      	negs	r0, r0
 8001116:	1809      	adds	r1, r1, r0
 8001118:	403a      	ands	r2, r7
 800111a:	020b      	lsls	r3, r1, #8
 800111c:	d400      	bmi.n	8001120 <__aeabi_dadd+0x524>
 800111e:	e6d5      	b.n	8000ecc <__aeabi_dadd+0x2d0>
 8001120:	4b43      	ldr	r3, [pc, #268]	; (8001230 <__aeabi_dadd+0x634>)
 8001122:	3501      	adds	r5, #1
 8001124:	4019      	ands	r1, r3
 8001126:	e5c9      	b.n	8000cbc <__aeabi_dadd+0xc0>
 8001128:	0038      	movs	r0, r7
 800112a:	e669      	b.n	8000e00 <__aeabi_dadd+0x204>
 800112c:	001e      	movs	r6, r3
 800112e:	4647      	mov	r7, r8
 8001130:	3e20      	subs	r6, #32
 8001132:	40f7      	lsrs	r7, r6
 8001134:	46bc      	mov	ip, r7
 8001136:	2b20      	cmp	r3, #32
 8001138:	d004      	beq.n	8001144 <__aeabi_dadd+0x548>
 800113a:	2640      	movs	r6, #64	; 0x40
 800113c:	1af3      	subs	r3, r6, r3
 800113e:	4646      	mov	r6, r8
 8001140:	409e      	lsls	r6, r3
 8001142:	4332      	orrs	r2, r6
 8001144:	0017      	movs	r7, r2
 8001146:	4663      	mov	r3, ip
 8001148:	1e7a      	subs	r2, r7, #1
 800114a:	4197      	sbcs	r7, r2
 800114c:	431f      	orrs	r7, r3
 800114e:	e602      	b.n	8000d56 <__aeabi_dadd+0x15a>
 8001150:	4d36      	ldr	r5, [pc, #216]	; (800122c <__aeabi_dadd+0x630>)
 8001152:	42ae      	cmp	r6, r5
 8001154:	d0ca      	beq.n	80010ec <__aeabi_dadd+0x4f0>
 8001156:	2580      	movs	r5, #128	; 0x80
 8001158:	042d      	lsls	r5, r5, #16
 800115a:	425b      	negs	r3, r3
 800115c:	4329      	orrs	r1, r5
 800115e:	e7a6      	b.n	80010ae <__aeabi_dadd+0x4b2>
 8001160:	4308      	orrs	r0, r1
 8001162:	1e41      	subs	r1, r0, #1
 8001164:	4188      	sbcs	r0, r1
 8001166:	e6a6      	b.n	8000eb6 <__aeabi_dadd+0x2ba>
 8001168:	2b00      	cmp	r3, #0
 800116a:	d100      	bne.n	800116e <__aeabi_dadd+0x572>
 800116c:	e648      	b.n	8000e00 <__aeabi_dadd+0x204>
 800116e:	1a87      	subs	r7, r0, r2
 8001170:	4643      	mov	r3, r8
 8001172:	42b8      	cmp	r0, r7
 8001174:	41b6      	sbcs	r6, r6
 8001176:	1acb      	subs	r3, r1, r3
 8001178:	4276      	negs	r6, r6
 800117a:	1b9e      	subs	r6, r3, r6
 800117c:	0233      	lsls	r3, r6, #8
 800117e:	d54b      	bpl.n	8001218 <__aeabi_dadd+0x61c>
 8001180:	1a17      	subs	r7, r2, r0
 8001182:	4643      	mov	r3, r8
 8001184:	42ba      	cmp	r2, r7
 8001186:	4192      	sbcs	r2, r2
 8001188:	1a59      	subs	r1, r3, r1
 800118a:	4252      	negs	r2, r2
 800118c:	1a89      	subs	r1, r1, r2
 800118e:	2207      	movs	r2, #7
 8001190:	4664      	mov	r4, ip
 8001192:	403a      	ands	r2, r7
 8001194:	e592      	b.n	8000cbc <__aeabi_dadd+0xc0>
 8001196:	4301      	orrs	r1, r0
 8001198:	000f      	movs	r7, r1
 800119a:	1e79      	subs	r1, r7, #1
 800119c:	418f      	sbcs	r7, r1
 800119e:	e79d      	b.n	80010dc <__aeabi_dadd+0x4e0>
 80011a0:	001c      	movs	r4, r3
 80011a2:	000f      	movs	r7, r1
 80011a4:	3c20      	subs	r4, #32
 80011a6:	40e7      	lsrs	r7, r4
 80011a8:	2b20      	cmp	r3, #32
 80011aa:	d003      	beq.n	80011b4 <__aeabi_dadd+0x5b8>
 80011ac:	2440      	movs	r4, #64	; 0x40
 80011ae:	1ae3      	subs	r3, r4, r3
 80011b0:	4099      	lsls	r1, r3
 80011b2:	4308      	orrs	r0, r1
 80011b4:	1e41      	subs	r1, r0, #1
 80011b6:	4188      	sbcs	r0, r1
 80011b8:	4338      	orrs	r0, r7
 80011ba:	e67c      	b.n	8000eb6 <__aeabi_dadd+0x2ba>
 80011bc:	2200      	movs	r2, #0
 80011be:	2400      	movs	r4, #0
 80011c0:	e625      	b.n	8000e0e <__aeabi_dadd+0x212>
 80011c2:	1a17      	subs	r7, r2, r0
 80011c4:	4643      	mov	r3, r8
 80011c6:	42ba      	cmp	r2, r7
 80011c8:	4192      	sbcs	r2, r2
 80011ca:	1a59      	subs	r1, r3, r1
 80011cc:	4252      	negs	r2, r2
 80011ce:	1a89      	subs	r1, r1, r2
 80011d0:	4664      	mov	r4, ip
 80011d2:	0035      	movs	r5, r6
 80011d4:	e543      	b.n	8000c5e <__aeabi_dadd+0x62>
 80011d6:	4641      	mov	r1, r8
 80011d8:	0010      	movs	r0, r2
 80011da:	4d14      	ldr	r5, [pc, #80]	; (800122c <__aeabi_dadd+0x630>)
 80011dc:	e610      	b.n	8000e00 <__aeabi_dadd+0x204>
 80011de:	2280      	movs	r2, #128	; 0x80
 80011e0:	2400      	movs	r4, #0
 80011e2:	0312      	lsls	r2, r2, #12
 80011e4:	e680      	b.n	8000ee8 <__aeabi_dadd+0x2ec>
 80011e6:	001d      	movs	r5, r3
 80011e8:	000f      	movs	r7, r1
 80011ea:	3d20      	subs	r5, #32
 80011ec:	40ef      	lsrs	r7, r5
 80011ee:	46bc      	mov	ip, r7
 80011f0:	2b20      	cmp	r3, #32
 80011f2:	d003      	beq.n	80011fc <__aeabi_dadd+0x600>
 80011f4:	2540      	movs	r5, #64	; 0x40
 80011f6:	1aeb      	subs	r3, r5, r3
 80011f8:	4099      	lsls	r1, r3
 80011fa:	4308      	orrs	r0, r1
 80011fc:	0007      	movs	r7, r0
 80011fe:	4663      	mov	r3, ip
 8001200:	1e78      	subs	r0, r7, #1
 8001202:	4187      	sbcs	r7, r0
 8001204:	431f      	orrs	r7, r3
 8001206:	e769      	b.n	80010dc <__aeabi_dadd+0x4e0>
 8001208:	1887      	adds	r7, r0, r2
 800120a:	4297      	cmp	r7, r2
 800120c:	419b      	sbcs	r3, r3
 800120e:	4441      	add	r1, r8
 8001210:	425b      	negs	r3, r3
 8001212:	18c9      	adds	r1, r1, r3
 8001214:	0035      	movs	r5, r6
 8001216:	e5a3      	b.n	8000d60 <__aeabi_dadd+0x164>
 8001218:	003b      	movs	r3, r7
 800121a:	4333      	orrs	r3, r6
 800121c:	d0ce      	beq.n	80011bc <__aeabi_dadd+0x5c0>
 800121e:	2207      	movs	r2, #7
 8001220:	0031      	movs	r1, r6
 8001222:	403a      	ands	r2, r7
 8001224:	e652      	b.n	8000ecc <__aeabi_dadd+0x2d0>
 8001226:	2300      	movs	r3, #0
 8001228:	001a      	movs	r2, r3
 800122a:	e5f4      	b.n	8000e16 <__aeabi_dadd+0x21a>
 800122c:	000007ff 	.word	0x000007ff
 8001230:	ff7fffff 	.word	0xff7fffff

08001234 <__aeabi_ddiv>:
 8001234:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001236:	4657      	mov	r7, sl
 8001238:	46de      	mov	lr, fp
 800123a:	464e      	mov	r6, r9
 800123c:	4645      	mov	r5, r8
 800123e:	b5e0      	push	{r5, r6, r7, lr}
 8001240:	4683      	mov	fp, r0
 8001242:	0007      	movs	r7, r0
 8001244:	030e      	lsls	r6, r1, #12
 8001246:	0048      	lsls	r0, r1, #1
 8001248:	b085      	sub	sp, #20
 800124a:	4692      	mov	sl, r2
 800124c:	001c      	movs	r4, r3
 800124e:	0b36      	lsrs	r6, r6, #12
 8001250:	0d40      	lsrs	r0, r0, #21
 8001252:	0fcd      	lsrs	r5, r1, #31
 8001254:	2800      	cmp	r0, #0
 8001256:	d100      	bne.n	800125a <__aeabi_ddiv+0x26>
 8001258:	e09d      	b.n	8001396 <__aeabi_ddiv+0x162>
 800125a:	4b95      	ldr	r3, [pc, #596]	; (80014b0 <__aeabi_ddiv+0x27c>)
 800125c:	4298      	cmp	r0, r3
 800125e:	d039      	beq.n	80012d4 <__aeabi_ddiv+0xa0>
 8001260:	2380      	movs	r3, #128	; 0x80
 8001262:	00f6      	lsls	r6, r6, #3
 8001264:	041b      	lsls	r3, r3, #16
 8001266:	431e      	orrs	r6, r3
 8001268:	4a92      	ldr	r2, [pc, #584]	; (80014b4 <__aeabi_ddiv+0x280>)
 800126a:	0f7b      	lsrs	r3, r7, #29
 800126c:	4333      	orrs	r3, r6
 800126e:	4699      	mov	r9, r3
 8001270:	4694      	mov	ip, r2
 8001272:	0003      	movs	r3, r0
 8001274:	4463      	add	r3, ip
 8001276:	9300      	str	r3, [sp, #0]
 8001278:	2300      	movs	r3, #0
 800127a:	2600      	movs	r6, #0
 800127c:	00ff      	lsls	r7, r7, #3
 800127e:	9302      	str	r3, [sp, #8]
 8001280:	0323      	lsls	r3, r4, #12
 8001282:	0b1b      	lsrs	r3, r3, #12
 8001284:	4698      	mov	r8, r3
 8001286:	0063      	lsls	r3, r4, #1
 8001288:	0fe4      	lsrs	r4, r4, #31
 800128a:	4652      	mov	r2, sl
 800128c:	0d5b      	lsrs	r3, r3, #21
 800128e:	9401      	str	r4, [sp, #4]
 8001290:	d100      	bne.n	8001294 <__aeabi_ddiv+0x60>
 8001292:	e0b3      	b.n	80013fc <__aeabi_ddiv+0x1c8>
 8001294:	4986      	ldr	r1, [pc, #536]	; (80014b0 <__aeabi_ddiv+0x27c>)
 8001296:	428b      	cmp	r3, r1
 8001298:	d100      	bne.n	800129c <__aeabi_ddiv+0x68>
 800129a:	e09e      	b.n	80013da <__aeabi_ddiv+0x1a6>
 800129c:	4642      	mov	r2, r8
 800129e:	00d1      	lsls	r1, r2, #3
 80012a0:	2280      	movs	r2, #128	; 0x80
 80012a2:	0412      	lsls	r2, r2, #16
 80012a4:	430a      	orrs	r2, r1
 80012a6:	4651      	mov	r1, sl
 80012a8:	0f49      	lsrs	r1, r1, #29
 80012aa:	4311      	orrs	r1, r2
 80012ac:	468b      	mov	fp, r1
 80012ae:	4981      	ldr	r1, [pc, #516]	; (80014b4 <__aeabi_ddiv+0x280>)
 80012b0:	4652      	mov	r2, sl
 80012b2:	468c      	mov	ip, r1
 80012b4:	9900      	ldr	r1, [sp, #0]
 80012b6:	4463      	add	r3, ip
 80012b8:	1acb      	subs	r3, r1, r3
 80012ba:	2100      	movs	r1, #0
 80012bc:	00d2      	lsls	r2, r2, #3
 80012be:	9300      	str	r3, [sp, #0]
 80012c0:	002b      	movs	r3, r5
 80012c2:	4063      	eors	r3, r4
 80012c4:	469a      	mov	sl, r3
 80012c6:	2e0f      	cmp	r6, #15
 80012c8:	d900      	bls.n	80012cc <__aeabi_ddiv+0x98>
 80012ca:	e105      	b.n	80014d8 <__aeabi_ddiv+0x2a4>
 80012cc:	4b7a      	ldr	r3, [pc, #488]	; (80014b8 <__aeabi_ddiv+0x284>)
 80012ce:	00b6      	lsls	r6, r6, #2
 80012d0:	599b      	ldr	r3, [r3, r6]
 80012d2:	469f      	mov	pc, r3
 80012d4:	465b      	mov	r3, fp
 80012d6:	4333      	orrs	r3, r6
 80012d8:	4699      	mov	r9, r3
 80012da:	d000      	beq.n	80012de <__aeabi_ddiv+0xaa>
 80012dc:	e0b8      	b.n	8001450 <__aeabi_ddiv+0x21c>
 80012de:	2302      	movs	r3, #2
 80012e0:	2608      	movs	r6, #8
 80012e2:	2700      	movs	r7, #0
 80012e4:	9000      	str	r0, [sp, #0]
 80012e6:	9302      	str	r3, [sp, #8]
 80012e8:	e7ca      	b.n	8001280 <__aeabi_ddiv+0x4c>
 80012ea:	46cb      	mov	fp, r9
 80012ec:	003a      	movs	r2, r7
 80012ee:	9902      	ldr	r1, [sp, #8]
 80012f0:	9501      	str	r5, [sp, #4]
 80012f2:	9b01      	ldr	r3, [sp, #4]
 80012f4:	469a      	mov	sl, r3
 80012f6:	2902      	cmp	r1, #2
 80012f8:	d027      	beq.n	800134a <__aeabi_ddiv+0x116>
 80012fa:	2903      	cmp	r1, #3
 80012fc:	d100      	bne.n	8001300 <__aeabi_ddiv+0xcc>
 80012fe:	e280      	b.n	8001802 <__aeabi_ddiv+0x5ce>
 8001300:	2901      	cmp	r1, #1
 8001302:	d044      	beq.n	800138e <__aeabi_ddiv+0x15a>
 8001304:	496d      	ldr	r1, [pc, #436]	; (80014bc <__aeabi_ddiv+0x288>)
 8001306:	9b00      	ldr	r3, [sp, #0]
 8001308:	468c      	mov	ip, r1
 800130a:	4463      	add	r3, ip
 800130c:	001c      	movs	r4, r3
 800130e:	2c00      	cmp	r4, #0
 8001310:	dd38      	ble.n	8001384 <__aeabi_ddiv+0x150>
 8001312:	0753      	lsls	r3, r2, #29
 8001314:	d000      	beq.n	8001318 <__aeabi_ddiv+0xe4>
 8001316:	e213      	b.n	8001740 <__aeabi_ddiv+0x50c>
 8001318:	08d2      	lsrs	r2, r2, #3
 800131a:	465b      	mov	r3, fp
 800131c:	01db      	lsls	r3, r3, #7
 800131e:	d509      	bpl.n	8001334 <__aeabi_ddiv+0x100>
 8001320:	4659      	mov	r1, fp
 8001322:	4b67      	ldr	r3, [pc, #412]	; (80014c0 <__aeabi_ddiv+0x28c>)
 8001324:	4019      	ands	r1, r3
 8001326:	468b      	mov	fp, r1
 8001328:	2180      	movs	r1, #128	; 0x80
 800132a:	00c9      	lsls	r1, r1, #3
 800132c:	468c      	mov	ip, r1
 800132e:	9b00      	ldr	r3, [sp, #0]
 8001330:	4463      	add	r3, ip
 8001332:	001c      	movs	r4, r3
 8001334:	4b63      	ldr	r3, [pc, #396]	; (80014c4 <__aeabi_ddiv+0x290>)
 8001336:	429c      	cmp	r4, r3
 8001338:	dc07      	bgt.n	800134a <__aeabi_ddiv+0x116>
 800133a:	465b      	mov	r3, fp
 800133c:	0564      	lsls	r4, r4, #21
 800133e:	075f      	lsls	r7, r3, #29
 8001340:	025b      	lsls	r3, r3, #9
 8001342:	4317      	orrs	r7, r2
 8001344:	0b1b      	lsrs	r3, r3, #12
 8001346:	0d62      	lsrs	r2, r4, #21
 8001348:	e002      	b.n	8001350 <__aeabi_ddiv+0x11c>
 800134a:	2300      	movs	r3, #0
 800134c:	2700      	movs	r7, #0
 800134e:	4a58      	ldr	r2, [pc, #352]	; (80014b0 <__aeabi_ddiv+0x27c>)
 8001350:	2100      	movs	r1, #0
 8001352:	031b      	lsls	r3, r3, #12
 8001354:	0b1c      	lsrs	r4, r3, #12
 8001356:	0d0b      	lsrs	r3, r1, #20
 8001358:	051b      	lsls	r3, r3, #20
 800135a:	4323      	orrs	r3, r4
 800135c:	0514      	lsls	r4, r2, #20
 800135e:	4a5a      	ldr	r2, [pc, #360]	; (80014c8 <__aeabi_ddiv+0x294>)
 8001360:	0038      	movs	r0, r7
 8001362:	4013      	ands	r3, r2
 8001364:	431c      	orrs	r4, r3
 8001366:	4653      	mov	r3, sl
 8001368:	0064      	lsls	r4, r4, #1
 800136a:	07db      	lsls	r3, r3, #31
 800136c:	0864      	lsrs	r4, r4, #1
 800136e:	431c      	orrs	r4, r3
 8001370:	0021      	movs	r1, r4
 8001372:	b005      	add	sp, #20
 8001374:	bc3c      	pop	{r2, r3, r4, r5}
 8001376:	4690      	mov	r8, r2
 8001378:	4699      	mov	r9, r3
 800137a:	46a2      	mov	sl, r4
 800137c:	46ab      	mov	fp, r5
 800137e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001380:	2201      	movs	r2, #1
 8001382:	4252      	negs	r2, r2
 8001384:	2301      	movs	r3, #1
 8001386:	1b1b      	subs	r3, r3, r4
 8001388:	2b38      	cmp	r3, #56	; 0x38
 800138a:	dc00      	bgt.n	800138e <__aeabi_ddiv+0x15a>
 800138c:	e1ad      	b.n	80016ea <__aeabi_ddiv+0x4b6>
 800138e:	2200      	movs	r2, #0
 8001390:	2300      	movs	r3, #0
 8001392:	2700      	movs	r7, #0
 8001394:	e7dc      	b.n	8001350 <__aeabi_ddiv+0x11c>
 8001396:	465b      	mov	r3, fp
 8001398:	4333      	orrs	r3, r6
 800139a:	4699      	mov	r9, r3
 800139c:	d05e      	beq.n	800145c <__aeabi_ddiv+0x228>
 800139e:	2e00      	cmp	r6, #0
 80013a0:	d100      	bne.n	80013a4 <__aeabi_ddiv+0x170>
 80013a2:	e18a      	b.n	80016ba <__aeabi_ddiv+0x486>
 80013a4:	0030      	movs	r0, r6
 80013a6:	f001 f995 	bl	80026d4 <__clzsi2>
 80013aa:	0003      	movs	r3, r0
 80013ac:	3b0b      	subs	r3, #11
 80013ae:	2b1c      	cmp	r3, #28
 80013b0:	dd00      	ble.n	80013b4 <__aeabi_ddiv+0x180>
 80013b2:	e17b      	b.n	80016ac <__aeabi_ddiv+0x478>
 80013b4:	221d      	movs	r2, #29
 80013b6:	1ad3      	subs	r3, r2, r3
 80013b8:	465a      	mov	r2, fp
 80013ba:	0001      	movs	r1, r0
 80013bc:	40da      	lsrs	r2, r3
 80013be:	3908      	subs	r1, #8
 80013c0:	408e      	lsls	r6, r1
 80013c2:	0013      	movs	r3, r2
 80013c4:	465f      	mov	r7, fp
 80013c6:	4333      	orrs	r3, r6
 80013c8:	4699      	mov	r9, r3
 80013ca:	408f      	lsls	r7, r1
 80013cc:	4b3f      	ldr	r3, [pc, #252]	; (80014cc <__aeabi_ddiv+0x298>)
 80013ce:	2600      	movs	r6, #0
 80013d0:	1a1b      	subs	r3, r3, r0
 80013d2:	9300      	str	r3, [sp, #0]
 80013d4:	2300      	movs	r3, #0
 80013d6:	9302      	str	r3, [sp, #8]
 80013d8:	e752      	b.n	8001280 <__aeabi_ddiv+0x4c>
 80013da:	4641      	mov	r1, r8
 80013dc:	4653      	mov	r3, sl
 80013de:	430b      	orrs	r3, r1
 80013e0:	493b      	ldr	r1, [pc, #236]	; (80014d0 <__aeabi_ddiv+0x29c>)
 80013e2:	469b      	mov	fp, r3
 80013e4:	468c      	mov	ip, r1
 80013e6:	9b00      	ldr	r3, [sp, #0]
 80013e8:	4463      	add	r3, ip
 80013ea:	9300      	str	r3, [sp, #0]
 80013ec:	465b      	mov	r3, fp
 80013ee:	2b00      	cmp	r3, #0
 80013f0:	d13b      	bne.n	800146a <__aeabi_ddiv+0x236>
 80013f2:	2302      	movs	r3, #2
 80013f4:	2200      	movs	r2, #0
 80013f6:	431e      	orrs	r6, r3
 80013f8:	2102      	movs	r1, #2
 80013fa:	e761      	b.n	80012c0 <__aeabi_ddiv+0x8c>
 80013fc:	4643      	mov	r3, r8
 80013fe:	4313      	orrs	r3, r2
 8001400:	469b      	mov	fp, r3
 8001402:	d037      	beq.n	8001474 <__aeabi_ddiv+0x240>
 8001404:	4643      	mov	r3, r8
 8001406:	2b00      	cmp	r3, #0
 8001408:	d100      	bne.n	800140c <__aeabi_ddiv+0x1d8>
 800140a:	e162      	b.n	80016d2 <__aeabi_ddiv+0x49e>
 800140c:	4640      	mov	r0, r8
 800140e:	f001 f961 	bl	80026d4 <__clzsi2>
 8001412:	0003      	movs	r3, r0
 8001414:	3b0b      	subs	r3, #11
 8001416:	2b1c      	cmp	r3, #28
 8001418:	dd00      	ble.n	800141c <__aeabi_ddiv+0x1e8>
 800141a:	e153      	b.n	80016c4 <__aeabi_ddiv+0x490>
 800141c:	0002      	movs	r2, r0
 800141e:	4641      	mov	r1, r8
 8001420:	3a08      	subs	r2, #8
 8001422:	4091      	lsls	r1, r2
 8001424:	4688      	mov	r8, r1
 8001426:	211d      	movs	r1, #29
 8001428:	1acb      	subs	r3, r1, r3
 800142a:	4651      	mov	r1, sl
 800142c:	40d9      	lsrs	r1, r3
 800142e:	000b      	movs	r3, r1
 8001430:	4641      	mov	r1, r8
 8001432:	430b      	orrs	r3, r1
 8001434:	469b      	mov	fp, r3
 8001436:	4653      	mov	r3, sl
 8001438:	4093      	lsls	r3, r2
 800143a:	001a      	movs	r2, r3
 800143c:	9b00      	ldr	r3, [sp, #0]
 800143e:	4925      	ldr	r1, [pc, #148]	; (80014d4 <__aeabi_ddiv+0x2a0>)
 8001440:	469c      	mov	ip, r3
 8001442:	4460      	add	r0, ip
 8001444:	0003      	movs	r3, r0
 8001446:	468c      	mov	ip, r1
 8001448:	4463      	add	r3, ip
 800144a:	9300      	str	r3, [sp, #0]
 800144c:	2100      	movs	r1, #0
 800144e:	e737      	b.n	80012c0 <__aeabi_ddiv+0x8c>
 8001450:	2303      	movs	r3, #3
 8001452:	46b1      	mov	r9, r6
 8001454:	9000      	str	r0, [sp, #0]
 8001456:	260c      	movs	r6, #12
 8001458:	9302      	str	r3, [sp, #8]
 800145a:	e711      	b.n	8001280 <__aeabi_ddiv+0x4c>
 800145c:	2300      	movs	r3, #0
 800145e:	9300      	str	r3, [sp, #0]
 8001460:	3301      	adds	r3, #1
 8001462:	2604      	movs	r6, #4
 8001464:	2700      	movs	r7, #0
 8001466:	9302      	str	r3, [sp, #8]
 8001468:	e70a      	b.n	8001280 <__aeabi_ddiv+0x4c>
 800146a:	2303      	movs	r3, #3
 800146c:	46c3      	mov	fp, r8
 800146e:	431e      	orrs	r6, r3
 8001470:	2103      	movs	r1, #3
 8001472:	e725      	b.n	80012c0 <__aeabi_ddiv+0x8c>
 8001474:	3301      	adds	r3, #1
 8001476:	431e      	orrs	r6, r3
 8001478:	2200      	movs	r2, #0
 800147a:	2101      	movs	r1, #1
 800147c:	e720      	b.n	80012c0 <__aeabi_ddiv+0x8c>
 800147e:	2300      	movs	r3, #0
 8001480:	469a      	mov	sl, r3
 8001482:	2380      	movs	r3, #128	; 0x80
 8001484:	2700      	movs	r7, #0
 8001486:	031b      	lsls	r3, r3, #12
 8001488:	4a09      	ldr	r2, [pc, #36]	; (80014b0 <__aeabi_ddiv+0x27c>)
 800148a:	e761      	b.n	8001350 <__aeabi_ddiv+0x11c>
 800148c:	2380      	movs	r3, #128	; 0x80
 800148e:	4649      	mov	r1, r9
 8001490:	031b      	lsls	r3, r3, #12
 8001492:	4219      	tst	r1, r3
 8001494:	d100      	bne.n	8001498 <__aeabi_ddiv+0x264>
 8001496:	e0e2      	b.n	800165e <__aeabi_ddiv+0x42a>
 8001498:	4659      	mov	r1, fp
 800149a:	4219      	tst	r1, r3
 800149c:	d000      	beq.n	80014a0 <__aeabi_ddiv+0x26c>
 800149e:	e0de      	b.n	800165e <__aeabi_ddiv+0x42a>
 80014a0:	430b      	orrs	r3, r1
 80014a2:	031b      	lsls	r3, r3, #12
 80014a4:	0017      	movs	r7, r2
 80014a6:	0b1b      	lsrs	r3, r3, #12
 80014a8:	46a2      	mov	sl, r4
 80014aa:	4a01      	ldr	r2, [pc, #4]	; (80014b0 <__aeabi_ddiv+0x27c>)
 80014ac:	e750      	b.n	8001350 <__aeabi_ddiv+0x11c>
 80014ae:	46c0      	nop			; (mov r8, r8)
 80014b0:	000007ff 	.word	0x000007ff
 80014b4:	fffffc01 	.word	0xfffffc01
 80014b8:	0800a504 	.word	0x0800a504
 80014bc:	000003ff 	.word	0x000003ff
 80014c0:	feffffff 	.word	0xfeffffff
 80014c4:	000007fe 	.word	0x000007fe
 80014c8:	800fffff 	.word	0x800fffff
 80014cc:	fffffc0d 	.word	0xfffffc0d
 80014d0:	fffff801 	.word	0xfffff801
 80014d4:	000003f3 	.word	0x000003f3
 80014d8:	45d9      	cmp	r9, fp
 80014da:	d900      	bls.n	80014de <__aeabi_ddiv+0x2aa>
 80014dc:	e0cb      	b.n	8001676 <__aeabi_ddiv+0x442>
 80014de:	d100      	bne.n	80014e2 <__aeabi_ddiv+0x2ae>
 80014e0:	e0c6      	b.n	8001670 <__aeabi_ddiv+0x43c>
 80014e2:	003c      	movs	r4, r7
 80014e4:	4648      	mov	r0, r9
 80014e6:	2700      	movs	r7, #0
 80014e8:	9b00      	ldr	r3, [sp, #0]
 80014ea:	3b01      	subs	r3, #1
 80014ec:	9300      	str	r3, [sp, #0]
 80014ee:	465b      	mov	r3, fp
 80014f0:	0e16      	lsrs	r6, r2, #24
 80014f2:	021b      	lsls	r3, r3, #8
 80014f4:	431e      	orrs	r6, r3
 80014f6:	0213      	lsls	r3, r2, #8
 80014f8:	4698      	mov	r8, r3
 80014fa:	0433      	lsls	r3, r6, #16
 80014fc:	0c1b      	lsrs	r3, r3, #16
 80014fe:	4699      	mov	r9, r3
 8001500:	0c31      	lsrs	r1, r6, #16
 8001502:	9101      	str	r1, [sp, #4]
 8001504:	f7fe fe86 	bl	8000214 <__aeabi_uidivmod>
 8001508:	464a      	mov	r2, r9
 800150a:	4342      	muls	r2, r0
 800150c:	040b      	lsls	r3, r1, #16
 800150e:	0c21      	lsrs	r1, r4, #16
 8001510:	0005      	movs	r5, r0
 8001512:	4319      	orrs	r1, r3
 8001514:	428a      	cmp	r2, r1
 8001516:	d907      	bls.n	8001528 <__aeabi_ddiv+0x2f4>
 8001518:	1989      	adds	r1, r1, r6
 800151a:	3d01      	subs	r5, #1
 800151c:	428e      	cmp	r6, r1
 800151e:	d803      	bhi.n	8001528 <__aeabi_ddiv+0x2f4>
 8001520:	428a      	cmp	r2, r1
 8001522:	d901      	bls.n	8001528 <__aeabi_ddiv+0x2f4>
 8001524:	1e85      	subs	r5, r0, #2
 8001526:	1989      	adds	r1, r1, r6
 8001528:	1a88      	subs	r0, r1, r2
 800152a:	9901      	ldr	r1, [sp, #4]
 800152c:	f7fe fe72 	bl	8000214 <__aeabi_uidivmod>
 8001530:	0409      	lsls	r1, r1, #16
 8001532:	468c      	mov	ip, r1
 8001534:	464a      	mov	r2, r9
 8001536:	0421      	lsls	r1, r4, #16
 8001538:	4664      	mov	r4, ip
 800153a:	4342      	muls	r2, r0
 800153c:	0c09      	lsrs	r1, r1, #16
 800153e:	0003      	movs	r3, r0
 8001540:	4321      	orrs	r1, r4
 8001542:	428a      	cmp	r2, r1
 8001544:	d904      	bls.n	8001550 <__aeabi_ddiv+0x31c>
 8001546:	1989      	adds	r1, r1, r6
 8001548:	3b01      	subs	r3, #1
 800154a:	428e      	cmp	r6, r1
 800154c:	d800      	bhi.n	8001550 <__aeabi_ddiv+0x31c>
 800154e:	e0f1      	b.n	8001734 <__aeabi_ddiv+0x500>
 8001550:	042d      	lsls	r5, r5, #16
 8001552:	431d      	orrs	r5, r3
 8001554:	46ab      	mov	fp, r5
 8001556:	4643      	mov	r3, r8
 8001558:	1a89      	subs	r1, r1, r2
 800155a:	4642      	mov	r2, r8
 800155c:	0c28      	lsrs	r0, r5, #16
 800155e:	0412      	lsls	r2, r2, #16
 8001560:	0c1d      	lsrs	r5, r3, #16
 8001562:	465b      	mov	r3, fp
 8001564:	0c14      	lsrs	r4, r2, #16
 8001566:	0022      	movs	r2, r4
 8001568:	041b      	lsls	r3, r3, #16
 800156a:	0c1b      	lsrs	r3, r3, #16
 800156c:	435a      	muls	r2, r3
 800156e:	9403      	str	r4, [sp, #12]
 8001570:	436b      	muls	r3, r5
 8001572:	4344      	muls	r4, r0
 8001574:	9502      	str	r5, [sp, #8]
 8001576:	4368      	muls	r0, r5
 8001578:	191b      	adds	r3, r3, r4
 800157a:	0c15      	lsrs	r5, r2, #16
 800157c:	18eb      	adds	r3, r5, r3
 800157e:	429c      	cmp	r4, r3
 8001580:	d903      	bls.n	800158a <__aeabi_ddiv+0x356>
 8001582:	2480      	movs	r4, #128	; 0x80
 8001584:	0264      	lsls	r4, r4, #9
 8001586:	46a4      	mov	ip, r4
 8001588:	4460      	add	r0, ip
 800158a:	0c1c      	lsrs	r4, r3, #16
 800158c:	0415      	lsls	r5, r2, #16
 800158e:	041b      	lsls	r3, r3, #16
 8001590:	0c2d      	lsrs	r5, r5, #16
 8001592:	1820      	adds	r0, r4, r0
 8001594:	195d      	adds	r5, r3, r5
 8001596:	4281      	cmp	r1, r0
 8001598:	d377      	bcc.n	800168a <__aeabi_ddiv+0x456>
 800159a:	d073      	beq.n	8001684 <__aeabi_ddiv+0x450>
 800159c:	1a0c      	subs	r4, r1, r0
 800159e:	4aa2      	ldr	r2, [pc, #648]	; (8001828 <__aeabi_ddiv+0x5f4>)
 80015a0:	1b7d      	subs	r5, r7, r5
 80015a2:	42af      	cmp	r7, r5
 80015a4:	41bf      	sbcs	r7, r7
 80015a6:	4694      	mov	ip, r2
 80015a8:	9b00      	ldr	r3, [sp, #0]
 80015aa:	427f      	negs	r7, r7
 80015ac:	4463      	add	r3, ip
 80015ae:	1be0      	subs	r0, r4, r7
 80015b0:	001c      	movs	r4, r3
 80015b2:	4286      	cmp	r6, r0
 80015b4:	d100      	bne.n	80015b8 <__aeabi_ddiv+0x384>
 80015b6:	e0db      	b.n	8001770 <__aeabi_ddiv+0x53c>
 80015b8:	9901      	ldr	r1, [sp, #4]
 80015ba:	f7fe fe2b 	bl	8000214 <__aeabi_uidivmod>
 80015be:	464a      	mov	r2, r9
 80015c0:	4342      	muls	r2, r0
 80015c2:	040b      	lsls	r3, r1, #16
 80015c4:	0c29      	lsrs	r1, r5, #16
 80015c6:	0007      	movs	r7, r0
 80015c8:	4319      	orrs	r1, r3
 80015ca:	428a      	cmp	r2, r1
 80015cc:	d907      	bls.n	80015de <__aeabi_ddiv+0x3aa>
 80015ce:	1989      	adds	r1, r1, r6
 80015d0:	3f01      	subs	r7, #1
 80015d2:	428e      	cmp	r6, r1
 80015d4:	d803      	bhi.n	80015de <__aeabi_ddiv+0x3aa>
 80015d6:	428a      	cmp	r2, r1
 80015d8:	d901      	bls.n	80015de <__aeabi_ddiv+0x3aa>
 80015da:	1e87      	subs	r7, r0, #2
 80015dc:	1989      	adds	r1, r1, r6
 80015de:	1a88      	subs	r0, r1, r2
 80015e0:	9901      	ldr	r1, [sp, #4]
 80015e2:	f7fe fe17 	bl	8000214 <__aeabi_uidivmod>
 80015e6:	0409      	lsls	r1, r1, #16
 80015e8:	464a      	mov	r2, r9
 80015ea:	4689      	mov	r9, r1
 80015ec:	0429      	lsls	r1, r5, #16
 80015ee:	464d      	mov	r5, r9
 80015f0:	4342      	muls	r2, r0
 80015f2:	0c09      	lsrs	r1, r1, #16
 80015f4:	0003      	movs	r3, r0
 80015f6:	4329      	orrs	r1, r5
 80015f8:	428a      	cmp	r2, r1
 80015fa:	d907      	bls.n	800160c <__aeabi_ddiv+0x3d8>
 80015fc:	1989      	adds	r1, r1, r6
 80015fe:	3b01      	subs	r3, #1
 8001600:	428e      	cmp	r6, r1
 8001602:	d803      	bhi.n	800160c <__aeabi_ddiv+0x3d8>
 8001604:	428a      	cmp	r2, r1
 8001606:	d901      	bls.n	800160c <__aeabi_ddiv+0x3d8>
 8001608:	1e83      	subs	r3, r0, #2
 800160a:	1989      	adds	r1, r1, r6
 800160c:	043f      	lsls	r7, r7, #16
 800160e:	1a89      	subs	r1, r1, r2
 8001610:	003a      	movs	r2, r7
 8001612:	9f03      	ldr	r7, [sp, #12]
 8001614:	431a      	orrs	r2, r3
 8001616:	0038      	movs	r0, r7
 8001618:	0413      	lsls	r3, r2, #16
 800161a:	0c1b      	lsrs	r3, r3, #16
 800161c:	4358      	muls	r0, r3
 800161e:	4681      	mov	r9, r0
 8001620:	9802      	ldr	r0, [sp, #8]
 8001622:	0c15      	lsrs	r5, r2, #16
 8001624:	436f      	muls	r7, r5
 8001626:	4343      	muls	r3, r0
 8001628:	4345      	muls	r5, r0
 800162a:	4648      	mov	r0, r9
 800162c:	0c00      	lsrs	r0, r0, #16
 800162e:	4684      	mov	ip, r0
 8001630:	19db      	adds	r3, r3, r7
 8001632:	4463      	add	r3, ip
 8001634:	429f      	cmp	r7, r3
 8001636:	d903      	bls.n	8001640 <__aeabi_ddiv+0x40c>
 8001638:	2080      	movs	r0, #128	; 0x80
 800163a:	0240      	lsls	r0, r0, #9
 800163c:	4684      	mov	ip, r0
 800163e:	4465      	add	r5, ip
 8001640:	4648      	mov	r0, r9
 8001642:	0c1f      	lsrs	r7, r3, #16
 8001644:	0400      	lsls	r0, r0, #16
 8001646:	041b      	lsls	r3, r3, #16
 8001648:	0c00      	lsrs	r0, r0, #16
 800164a:	197d      	adds	r5, r7, r5
 800164c:	1818      	adds	r0, r3, r0
 800164e:	42a9      	cmp	r1, r5
 8001650:	d200      	bcs.n	8001654 <__aeabi_ddiv+0x420>
 8001652:	e084      	b.n	800175e <__aeabi_ddiv+0x52a>
 8001654:	d100      	bne.n	8001658 <__aeabi_ddiv+0x424>
 8001656:	e07f      	b.n	8001758 <__aeabi_ddiv+0x524>
 8001658:	2301      	movs	r3, #1
 800165a:	431a      	orrs	r2, r3
 800165c:	e657      	b.n	800130e <__aeabi_ddiv+0xda>
 800165e:	2380      	movs	r3, #128	; 0x80
 8001660:	464a      	mov	r2, r9
 8001662:	031b      	lsls	r3, r3, #12
 8001664:	4313      	orrs	r3, r2
 8001666:	031b      	lsls	r3, r3, #12
 8001668:	0b1b      	lsrs	r3, r3, #12
 800166a:	46aa      	mov	sl, r5
 800166c:	4a6f      	ldr	r2, [pc, #444]	; (800182c <__aeabi_ddiv+0x5f8>)
 800166e:	e66f      	b.n	8001350 <__aeabi_ddiv+0x11c>
 8001670:	42ba      	cmp	r2, r7
 8001672:	d900      	bls.n	8001676 <__aeabi_ddiv+0x442>
 8001674:	e735      	b.n	80014e2 <__aeabi_ddiv+0x2ae>
 8001676:	464b      	mov	r3, r9
 8001678:	07dc      	lsls	r4, r3, #31
 800167a:	0858      	lsrs	r0, r3, #1
 800167c:	087b      	lsrs	r3, r7, #1
 800167e:	431c      	orrs	r4, r3
 8001680:	07ff      	lsls	r7, r7, #31
 8001682:	e734      	b.n	80014ee <__aeabi_ddiv+0x2ba>
 8001684:	2400      	movs	r4, #0
 8001686:	42af      	cmp	r7, r5
 8001688:	d289      	bcs.n	800159e <__aeabi_ddiv+0x36a>
 800168a:	4447      	add	r7, r8
 800168c:	4547      	cmp	r7, r8
 800168e:	41a4      	sbcs	r4, r4
 8001690:	465b      	mov	r3, fp
 8001692:	4264      	negs	r4, r4
 8001694:	19a4      	adds	r4, r4, r6
 8001696:	1864      	adds	r4, r4, r1
 8001698:	3b01      	subs	r3, #1
 800169a:	42a6      	cmp	r6, r4
 800169c:	d21e      	bcs.n	80016dc <__aeabi_ddiv+0x4a8>
 800169e:	42a0      	cmp	r0, r4
 80016a0:	d86d      	bhi.n	800177e <__aeabi_ddiv+0x54a>
 80016a2:	d100      	bne.n	80016a6 <__aeabi_ddiv+0x472>
 80016a4:	e0b6      	b.n	8001814 <__aeabi_ddiv+0x5e0>
 80016a6:	1a24      	subs	r4, r4, r0
 80016a8:	469b      	mov	fp, r3
 80016aa:	e778      	b.n	800159e <__aeabi_ddiv+0x36a>
 80016ac:	0003      	movs	r3, r0
 80016ae:	465a      	mov	r2, fp
 80016b0:	3b28      	subs	r3, #40	; 0x28
 80016b2:	409a      	lsls	r2, r3
 80016b4:	2700      	movs	r7, #0
 80016b6:	4691      	mov	r9, r2
 80016b8:	e688      	b.n	80013cc <__aeabi_ddiv+0x198>
 80016ba:	4658      	mov	r0, fp
 80016bc:	f001 f80a 	bl	80026d4 <__clzsi2>
 80016c0:	3020      	adds	r0, #32
 80016c2:	e672      	b.n	80013aa <__aeabi_ddiv+0x176>
 80016c4:	0003      	movs	r3, r0
 80016c6:	4652      	mov	r2, sl
 80016c8:	3b28      	subs	r3, #40	; 0x28
 80016ca:	409a      	lsls	r2, r3
 80016cc:	4693      	mov	fp, r2
 80016ce:	2200      	movs	r2, #0
 80016d0:	e6b4      	b.n	800143c <__aeabi_ddiv+0x208>
 80016d2:	4650      	mov	r0, sl
 80016d4:	f000 fffe 	bl	80026d4 <__clzsi2>
 80016d8:	3020      	adds	r0, #32
 80016da:	e69a      	b.n	8001412 <__aeabi_ddiv+0x1de>
 80016dc:	42a6      	cmp	r6, r4
 80016de:	d1e2      	bne.n	80016a6 <__aeabi_ddiv+0x472>
 80016e0:	45b8      	cmp	r8, r7
 80016e2:	d9dc      	bls.n	800169e <__aeabi_ddiv+0x46a>
 80016e4:	1a34      	subs	r4, r6, r0
 80016e6:	469b      	mov	fp, r3
 80016e8:	e759      	b.n	800159e <__aeabi_ddiv+0x36a>
 80016ea:	2b1f      	cmp	r3, #31
 80016ec:	dc65      	bgt.n	80017ba <__aeabi_ddiv+0x586>
 80016ee:	4c50      	ldr	r4, [pc, #320]	; (8001830 <__aeabi_ddiv+0x5fc>)
 80016f0:	9900      	ldr	r1, [sp, #0]
 80016f2:	46a4      	mov	ip, r4
 80016f4:	465c      	mov	r4, fp
 80016f6:	4461      	add	r1, ip
 80016f8:	0008      	movs	r0, r1
 80016fa:	408c      	lsls	r4, r1
 80016fc:	0011      	movs	r1, r2
 80016fe:	4082      	lsls	r2, r0
 8001700:	40d9      	lsrs	r1, r3
 8001702:	1e50      	subs	r0, r2, #1
 8001704:	4182      	sbcs	r2, r0
 8001706:	430c      	orrs	r4, r1
 8001708:	4314      	orrs	r4, r2
 800170a:	465a      	mov	r2, fp
 800170c:	40da      	lsrs	r2, r3
 800170e:	0013      	movs	r3, r2
 8001710:	0762      	lsls	r2, r4, #29
 8001712:	d009      	beq.n	8001728 <__aeabi_ddiv+0x4f4>
 8001714:	220f      	movs	r2, #15
 8001716:	4022      	ands	r2, r4
 8001718:	2a04      	cmp	r2, #4
 800171a:	d005      	beq.n	8001728 <__aeabi_ddiv+0x4f4>
 800171c:	0022      	movs	r2, r4
 800171e:	1d14      	adds	r4, r2, #4
 8001720:	4294      	cmp	r4, r2
 8001722:	4189      	sbcs	r1, r1
 8001724:	4249      	negs	r1, r1
 8001726:	185b      	adds	r3, r3, r1
 8001728:	021a      	lsls	r2, r3, #8
 800172a:	d562      	bpl.n	80017f2 <__aeabi_ddiv+0x5be>
 800172c:	2201      	movs	r2, #1
 800172e:	2300      	movs	r3, #0
 8001730:	2700      	movs	r7, #0
 8001732:	e60d      	b.n	8001350 <__aeabi_ddiv+0x11c>
 8001734:	428a      	cmp	r2, r1
 8001736:	d800      	bhi.n	800173a <__aeabi_ddiv+0x506>
 8001738:	e70a      	b.n	8001550 <__aeabi_ddiv+0x31c>
 800173a:	1e83      	subs	r3, r0, #2
 800173c:	1989      	adds	r1, r1, r6
 800173e:	e707      	b.n	8001550 <__aeabi_ddiv+0x31c>
 8001740:	230f      	movs	r3, #15
 8001742:	4013      	ands	r3, r2
 8001744:	2b04      	cmp	r3, #4
 8001746:	d100      	bne.n	800174a <__aeabi_ddiv+0x516>
 8001748:	e5e6      	b.n	8001318 <__aeabi_ddiv+0xe4>
 800174a:	1d17      	adds	r7, r2, #4
 800174c:	4297      	cmp	r7, r2
 800174e:	4192      	sbcs	r2, r2
 8001750:	4253      	negs	r3, r2
 8001752:	449b      	add	fp, r3
 8001754:	08fa      	lsrs	r2, r7, #3
 8001756:	e5e0      	b.n	800131a <__aeabi_ddiv+0xe6>
 8001758:	2800      	cmp	r0, #0
 800175a:	d100      	bne.n	800175e <__aeabi_ddiv+0x52a>
 800175c:	e5d7      	b.n	800130e <__aeabi_ddiv+0xda>
 800175e:	1871      	adds	r1, r6, r1
 8001760:	1e53      	subs	r3, r2, #1
 8001762:	42b1      	cmp	r1, r6
 8001764:	d327      	bcc.n	80017b6 <__aeabi_ddiv+0x582>
 8001766:	42a9      	cmp	r1, r5
 8001768:	d315      	bcc.n	8001796 <__aeabi_ddiv+0x562>
 800176a:	d058      	beq.n	800181e <__aeabi_ddiv+0x5ea>
 800176c:	001a      	movs	r2, r3
 800176e:	e773      	b.n	8001658 <__aeabi_ddiv+0x424>
 8001770:	2b00      	cmp	r3, #0
 8001772:	dc00      	bgt.n	8001776 <__aeabi_ddiv+0x542>
 8001774:	e604      	b.n	8001380 <__aeabi_ddiv+0x14c>
 8001776:	2301      	movs	r3, #1
 8001778:	2200      	movs	r2, #0
 800177a:	449b      	add	fp, r3
 800177c:	e5cd      	b.n	800131a <__aeabi_ddiv+0xe6>
 800177e:	2302      	movs	r3, #2
 8001780:	4447      	add	r7, r8
 8001782:	4547      	cmp	r7, r8
 8001784:	4189      	sbcs	r1, r1
 8001786:	425b      	negs	r3, r3
 8001788:	469c      	mov	ip, r3
 800178a:	4249      	negs	r1, r1
 800178c:	1989      	adds	r1, r1, r6
 800178e:	190c      	adds	r4, r1, r4
 8001790:	44e3      	add	fp, ip
 8001792:	1a24      	subs	r4, r4, r0
 8001794:	e703      	b.n	800159e <__aeabi_ddiv+0x36a>
 8001796:	4643      	mov	r3, r8
 8001798:	005f      	lsls	r7, r3, #1
 800179a:	4547      	cmp	r7, r8
 800179c:	419b      	sbcs	r3, r3
 800179e:	46b8      	mov	r8, r7
 80017a0:	425b      	negs	r3, r3
 80017a2:	199e      	adds	r6, r3, r6
 80017a4:	3a02      	subs	r2, #2
 80017a6:	1989      	adds	r1, r1, r6
 80017a8:	42a9      	cmp	r1, r5
 80017aa:	d000      	beq.n	80017ae <__aeabi_ddiv+0x57a>
 80017ac:	e754      	b.n	8001658 <__aeabi_ddiv+0x424>
 80017ae:	4540      	cmp	r0, r8
 80017b0:	d000      	beq.n	80017b4 <__aeabi_ddiv+0x580>
 80017b2:	e751      	b.n	8001658 <__aeabi_ddiv+0x424>
 80017b4:	e5ab      	b.n	800130e <__aeabi_ddiv+0xda>
 80017b6:	001a      	movs	r2, r3
 80017b8:	e7f6      	b.n	80017a8 <__aeabi_ddiv+0x574>
 80017ba:	211f      	movs	r1, #31
 80017bc:	465f      	mov	r7, fp
 80017be:	4249      	negs	r1, r1
 80017c0:	1b0c      	subs	r4, r1, r4
 80017c2:	40e7      	lsrs	r7, r4
 80017c4:	2b20      	cmp	r3, #32
 80017c6:	d007      	beq.n	80017d8 <__aeabi_ddiv+0x5a4>
 80017c8:	491a      	ldr	r1, [pc, #104]	; (8001834 <__aeabi_ddiv+0x600>)
 80017ca:	9b00      	ldr	r3, [sp, #0]
 80017cc:	468c      	mov	ip, r1
 80017ce:	4463      	add	r3, ip
 80017d0:	0018      	movs	r0, r3
 80017d2:	465b      	mov	r3, fp
 80017d4:	4083      	lsls	r3, r0
 80017d6:	431a      	orrs	r2, r3
 80017d8:	1e50      	subs	r0, r2, #1
 80017da:	4182      	sbcs	r2, r0
 80017dc:	433a      	orrs	r2, r7
 80017de:	2707      	movs	r7, #7
 80017e0:	2300      	movs	r3, #0
 80017e2:	4017      	ands	r7, r2
 80017e4:	d009      	beq.n	80017fa <__aeabi_ddiv+0x5c6>
 80017e6:	210f      	movs	r1, #15
 80017e8:	2300      	movs	r3, #0
 80017ea:	4011      	ands	r1, r2
 80017ec:	0014      	movs	r4, r2
 80017ee:	2904      	cmp	r1, #4
 80017f0:	d195      	bne.n	800171e <__aeabi_ddiv+0x4ea>
 80017f2:	0022      	movs	r2, r4
 80017f4:	075f      	lsls	r7, r3, #29
 80017f6:	025b      	lsls	r3, r3, #9
 80017f8:	0b1b      	lsrs	r3, r3, #12
 80017fa:	08d2      	lsrs	r2, r2, #3
 80017fc:	4317      	orrs	r7, r2
 80017fe:	2200      	movs	r2, #0
 8001800:	e5a6      	b.n	8001350 <__aeabi_ddiv+0x11c>
 8001802:	2380      	movs	r3, #128	; 0x80
 8001804:	4659      	mov	r1, fp
 8001806:	031b      	lsls	r3, r3, #12
 8001808:	430b      	orrs	r3, r1
 800180a:	031b      	lsls	r3, r3, #12
 800180c:	0017      	movs	r7, r2
 800180e:	0b1b      	lsrs	r3, r3, #12
 8001810:	4a06      	ldr	r2, [pc, #24]	; (800182c <__aeabi_ddiv+0x5f8>)
 8001812:	e59d      	b.n	8001350 <__aeabi_ddiv+0x11c>
 8001814:	42bd      	cmp	r5, r7
 8001816:	d8b2      	bhi.n	800177e <__aeabi_ddiv+0x54a>
 8001818:	469b      	mov	fp, r3
 800181a:	2400      	movs	r4, #0
 800181c:	e6bf      	b.n	800159e <__aeabi_ddiv+0x36a>
 800181e:	4580      	cmp	r8, r0
 8001820:	d3b9      	bcc.n	8001796 <__aeabi_ddiv+0x562>
 8001822:	001a      	movs	r2, r3
 8001824:	e7c3      	b.n	80017ae <__aeabi_ddiv+0x57a>
 8001826:	46c0      	nop			; (mov r8, r8)
 8001828:	000003ff 	.word	0x000003ff
 800182c:	000007ff 	.word	0x000007ff
 8001830:	0000041e 	.word	0x0000041e
 8001834:	0000043e 	.word	0x0000043e

08001838 <__eqdf2>:
 8001838:	b5f0      	push	{r4, r5, r6, r7, lr}
 800183a:	464f      	mov	r7, r9
 800183c:	4646      	mov	r6, r8
 800183e:	46d6      	mov	lr, sl
 8001840:	4684      	mov	ip, r0
 8001842:	b5c0      	push	{r6, r7, lr}
 8001844:	4680      	mov	r8, r0
 8001846:	4e19      	ldr	r6, [pc, #100]	; (80018ac <__eqdf2+0x74>)
 8001848:	0318      	lsls	r0, r3, #12
 800184a:	030f      	lsls	r7, r1, #12
 800184c:	004d      	lsls	r5, r1, #1
 800184e:	0b00      	lsrs	r0, r0, #12
 8001850:	005c      	lsls	r4, r3, #1
 8001852:	4682      	mov	sl, r0
 8001854:	0b3f      	lsrs	r7, r7, #12
 8001856:	0d6d      	lsrs	r5, r5, #21
 8001858:	0fc9      	lsrs	r1, r1, #31
 800185a:	4691      	mov	r9, r2
 800185c:	0d64      	lsrs	r4, r4, #21
 800185e:	0fdb      	lsrs	r3, r3, #31
 8001860:	2001      	movs	r0, #1
 8001862:	42b5      	cmp	r5, r6
 8001864:	d00a      	beq.n	800187c <__eqdf2+0x44>
 8001866:	42b4      	cmp	r4, r6
 8001868:	d003      	beq.n	8001872 <__eqdf2+0x3a>
 800186a:	42a5      	cmp	r5, r4
 800186c:	d101      	bne.n	8001872 <__eqdf2+0x3a>
 800186e:	4557      	cmp	r7, sl
 8001870:	d00c      	beq.n	800188c <__eqdf2+0x54>
 8001872:	bc1c      	pop	{r2, r3, r4}
 8001874:	4690      	mov	r8, r2
 8001876:	4699      	mov	r9, r3
 8001878:	46a2      	mov	sl, r4
 800187a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800187c:	4666      	mov	r6, ip
 800187e:	433e      	orrs	r6, r7
 8001880:	d1f7      	bne.n	8001872 <__eqdf2+0x3a>
 8001882:	42ac      	cmp	r4, r5
 8001884:	d1f5      	bne.n	8001872 <__eqdf2+0x3a>
 8001886:	4654      	mov	r4, sl
 8001888:	4314      	orrs	r4, r2
 800188a:	d1f2      	bne.n	8001872 <__eqdf2+0x3a>
 800188c:	2001      	movs	r0, #1
 800188e:	45c8      	cmp	r8, r9
 8001890:	d1ef      	bne.n	8001872 <__eqdf2+0x3a>
 8001892:	4299      	cmp	r1, r3
 8001894:	d007      	beq.n	80018a6 <__eqdf2+0x6e>
 8001896:	2d00      	cmp	r5, #0
 8001898:	d1eb      	bne.n	8001872 <__eqdf2+0x3a>
 800189a:	4663      	mov	r3, ip
 800189c:	431f      	orrs	r7, r3
 800189e:	0038      	movs	r0, r7
 80018a0:	1e47      	subs	r7, r0, #1
 80018a2:	41b8      	sbcs	r0, r7
 80018a4:	e7e5      	b.n	8001872 <__eqdf2+0x3a>
 80018a6:	2000      	movs	r0, #0
 80018a8:	e7e3      	b.n	8001872 <__eqdf2+0x3a>
 80018aa:	46c0      	nop			; (mov r8, r8)
 80018ac:	000007ff 	.word	0x000007ff

080018b0 <__gedf2>:
 80018b0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80018b2:	464f      	mov	r7, r9
 80018b4:	4646      	mov	r6, r8
 80018b6:	46d6      	mov	lr, sl
 80018b8:	004d      	lsls	r5, r1, #1
 80018ba:	b5c0      	push	{r6, r7, lr}
 80018bc:	030e      	lsls	r6, r1, #12
 80018be:	0fc9      	lsrs	r1, r1, #31
 80018c0:	468a      	mov	sl, r1
 80018c2:	492c      	ldr	r1, [pc, #176]	; (8001974 <__gedf2+0xc4>)
 80018c4:	031f      	lsls	r7, r3, #12
 80018c6:	005c      	lsls	r4, r3, #1
 80018c8:	4680      	mov	r8, r0
 80018ca:	0b36      	lsrs	r6, r6, #12
 80018cc:	0d6d      	lsrs	r5, r5, #21
 80018ce:	4691      	mov	r9, r2
 80018d0:	0b3f      	lsrs	r7, r7, #12
 80018d2:	0d64      	lsrs	r4, r4, #21
 80018d4:	0fdb      	lsrs	r3, r3, #31
 80018d6:	428d      	cmp	r5, r1
 80018d8:	d01e      	beq.n	8001918 <__gedf2+0x68>
 80018da:	428c      	cmp	r4, r1
 80018dc:	d016      	beq.n	800190c <__gedf2+0x5c>
 80018de:	2d00      	cmp	r5, #0
 80018e0:	d11e      	bne.n	8001920 <__gedf2+0x70>
 80018e2:	4330      	orrs	r0, r6
 80018e4:	4684      	mov	ip, r0
 80018e6:	2c00      	cmp	r4, #0
 80018e8:	d101      	bne.n	80018ee <__gedf2+0x3e>
 80018ea:	433a      	orrs	r2, r7
 80018ec:	d023      	beq.n	8001936 <__gedf2+0x86>
 80018ee:	4662      	mov	r2, ip
 80018f0:	2a00      	cmp	r2, #0
 80018f2:	d01a      	beq.n	800192a <__gedf2+0x7a>
 80018f4:	459a      	cmp	sl, r3
 80018f6:	d029      	beq.n	800194c <__gedf2+0x9c>
 80018f8:	4651      	mov	r1, sl
 80018fa:	2002      	movs	r0, #2
 80018fc:	3901      	subs	r1, #1
 80018fe:	4008      	ands	r0, r1
 8001900:	3801      	subs	r0, #1
 8001902:	bc1c      	pop	{r2, r3, r4}
 8001904:	4690      	mov	r8, r2
 8001906:	4699      	mov	r9, r3
 8001908:	46a2      	mov	sl, r4
 800190a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800190c:	0039      	movs	r1, r7
 800190e:	4311      	orrs	r1, r2
 8001910:	d0e5      	beq.n	80018de <__gedf2+0x2e>
 8001912:	2002      	movs	r0, #2
 8001914:	4240      	negs	r0, r0
 8001916:	e7f4      	b.n	8001902 <__gedf2+0x52>
 8001918:	4330      	orrs	r0, r6
 800191a:	d1fa      	bne.n	8001912 <__gedf2+0x62>
 800191c:	42ac      	cmp	r4, r5
 800191e:	d00f      	beq.n	8001940 <__gedf2+0x90>
 8001920:	2c00      	cmp	r4, #0
 8001922:	d10f      	bne.n	8001944 <__gedf2+0x94>
 8001924:	433a      	orrs	r2, r7
 8001926:	d0e7      	beq.n	80018f8 <__gedf2+0x48>
 8001928:	e00c      	b.n	8001944 <__gedf2+0x94>
 800192a:	2201      	movs	r2, #1
 800192c:	3b01      	subs	r3, #1
 800192e:	4393      	bics	r3, r2
 8001930:	0018      	movs	r0, r3
 8001932:	3001      	adds	r0, #1
 8001934:	e7e5      	b.n	8001902 <__gedf2+0x52>
 8001936:	4663      	mov	r3, ip
 8001938:	2000      	movs	r0, #0
 800193a:	2b00      	cmp	r3, #0
 800193c:	d0e1      	beq.n	8001902 <__gedf2+0x52>
 800193e:	e7db      	b.n	80018f8 <__gedf2+0x48>
 8001940:	433a      	orrs	r2, r7
 8001942:	d1e6      	bne.n	8001912 <__gedf2+0x62>
 8001944:	459a      	cmp	sl, r3
 8001946:	d1d7      	bne.n	80018f8 <__gedf2+0x48>
 8001948:	42a5      	cmp	r5, r4
 800194a:	dcd5      	bgt.n	80018f8 <__gedf2+0x48>
 800194c:	42a5      	cmp	r5, r4
 800194e:	db05      	blt.n	800195c <__gedf2+0xac>
 8001950:	42be      	cmp	r6, r7
 8001952:	d8d1      	bhi.n	80018f8 <__gedf2+0x48>
 8001954:	d008      	beq.n	8001968 <__gedf2+0xb8>
 8001956:	2000      	movs	r0, #0
 8001958:	42be      	cmp	r6, r7
 800195a:	d2d2      	bcs.n	8001902 <__gedf2+0x52>
 800195c:	4650      	mov	r0, sl
 800195e:	2301      	movs	r3, #1
 8001960:	3801      	subs	r0, #1
 8001962:	4398      	bics	r0, r3
 8001964:	3001      	adds	r0, #1
 8001966:	e7cc      	b.n	8001902 <__gedf2+0x52>
 8001968:	45c8      	cmp	r8, r9
 800196a:	d8c5      	bhi.n	80018f8 <__gedf2+0x48>
 800196c:	2000      	movs	r0, #0
 800196e:	45c8      	cmp	r8, r9
 8001970:	d3f4      	bcc.n	800195c <__gedf2+0xac>
 8001972:	e7c6      	b.n	8001902 <__gedf2+0x52>
 8001974:	000007ff 	.word	0x000007ff

08001978 <__ledf2>:
 8001978:	b5f0      	push	{r4, r5, r6, r7, lr}
 800197a:	464f      	mov	r7, r9
 800197c:	4646      	mov	r6, r8
 800197e:	46d6      	mov	lr, sl
 8001980:	004d      	lsls	r5, r1, #1
 8001982:	b5c0      	push	{r6, r7, lr}
 8001984:	030e      	lsls	r6, r1, #12
 8001986:	0fc9      	lsrs	r1, r1, #31
 8001988:	468a      	mov	sl, r1
 800198a:	492e      	ldr	r1, [pc, #184]	; (8001a44 <__ledf2+0xcc>)
 800198c:	031f      	lsls	r7, r3, #12
 800198e:	005c      	lsls	r4, r3, #1
 8001990:	4680      	mov	r8, r0
 8001992:	0b36      	lsrs	r6, r6, #12
 8001994:	0d6d      	lsrs	r5, r5, #21
 8001996:	4691      	mov	r9, r2
 8001998:	0b3f      	lsrs	r7, r7, #12
 800199a:	0d64      	lsrs	r4, r4, #21
 800199c:	0fdb      	lsrs	r3, r3, #31
 800199e:	428d      	cmp	r5, r1
 80019a0:	d018      	beq.n	80019d4 <__ledf2+0x5c>
 80019a2:	428c      	cmp	r4, r1
 80019a4:	d011      	beq.n	80019ca <__ledf2+0x52>
 80019a6:	2d00      	cmp	r5, #0
 80019a8:	d118      	bne.n	80019dc <__ledf2+0x64>
 80019aa:	4330      	orrs	r0, r6
 80019ac:	4684      	mov	ip, r0
 80019ae:	2c00      	cmp	r4, #0
 80019b0:	d11e      	bne.n	80019f0 <__ledf2+0x78>
 80019b2:	433a      	orrs	r2, r7
 80019b4:	d11c      	bne.n	80019f0 <__ledf2+0x78>
 80019b6:	4663      	mov	r3, ip
 80019b8:	2000      	movs	r0, #0
 80019ba:	2b00      	cmp	r3, #0
 80019bc:	d030      	beq.n	8001a20 <__ledf2+0xa8>
 80019be:	4651      	mov	r1, sl
 80019c0:	2002      	movs	r0, #2
 80019c2:	3901      	subs	r1, #1
 80019c4:	4008      	ands	r0, r1
 80019c6:	3801      	subs	r0, #1
 80019c8:	e02a      	b.n	8001a20 <__ledf2+0xa8>
 80019ca:	0039      	movs	r1, r7
 80019cc:	4311      	orrs	r1, r2
 80019ce:	d0ea      	beq.n	80019a6 <__ledf2+0x2e>
 80019d0:	2002      	movs	r0, #2
 80019d2:	e025      	b.n	8001a20 <__ledf2+0xa8>
 80019d4:	4330      	orrs	r0, r6
 80019d6:	d1fb      	bne.n	80019d0 <__ledf2+0x58>
 80019d8:	42ac      	cmp	r4, r5
 80019da:	d026      	beq.n	8001a2a <__ledf2+0xb2>
 80019dc:	2c00      	cmp	r4, #0
 80019de:	d126      	bne.n	8001a2e <__ledf2+0xb6>
 80019e0:	433a      	orrs	r2, r7
 80019e2:	d124      	bne.n	8001a2e <__ledf2+0xb6>
 80019e4:	4651      	mov	r1, sl
 80019e6:	2002      	movs	r0, #2
 80019e8:	3901      	subs	r1, #1
 80019ea:	4008      	ands	r0, r1
 80019ec:	3801      	subs	r0, #1
 80019ee:	e017      	b.n	8001a20 <__ledf2+0xa8>
 80019f0:	4662      	mov	r2, ip
 80019f2:	2a00      	cmp	r2, #0
 80019f4:	d00f      	beq.n	8001a16 <__ledf2+0x9e>
 80019f6:	459a      	cmp	sl, r3
 80019f8:	d1e1      	bne.n	80019be <__ledf2+0x46>
 80019fa:	42a5      	cmp	r5, r4
 80019fc:	db05      	blt.n	8001a0a <__ledf2+0x92>
 80019fe:	42be      	cmp	r6, r7
 8001a00:	d8dd      	bhi.n	80019be <__ledf2+0x46>
 8001a02:	d019      	beq.n	8001a38 <__ledf2+0xc0>
 8001a04:	2000      	movs	r0, #0
 8001a06:	42be      	cmp	r6, r7
 8001a08:	d20a      	bcs.n	8001a20 <__ledf2+0xa8>
 8001a0a:	4650      	mov	r0, sl
 8001a0c:	2301      	movs	r3, #1
 8001a0e:	3801      	subs	r0, #1
 8001a10:	4398      	bics	r0, r3
 8001a12:	3001      	adds	r0, #1
 8001a14:	e004      	b.n	8001a20 <__ledf2+0xa8>
 8001a16:	2201      	movs	r2, #1
 8001a18:	3b01      	subs	r3, #1
 8001a1a:	4393      	bics	r3, r2
 8001a1c:	0018      	movs	r0, r3
 8001a1e:	3001      	adds	r0, #1
 8001a20:	bc1c      	pop	{r2, r3, r4}
 8001a22:	4690      	mov	r8, r2
 8001a24:	4699      	mov	r9, r3
 8001a26:	46a2      	mov	sl, r4
 8001a28:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001a2a:	433a      	orrs	r2, r7
 8001a2c:	d1d0      	bne.n	80019d0 <__ledf2+0x58>
 8001a2e:	459a      	cmp	sl, r3
 8001a30:	d1c5      	bne.n	80019be <__ledf2+0x46>
 8001a32:	42a5      	cmp	r5, r4
 8001a34:	dcc3      	bgt.n	80019be <__ledf2+0x46>
 8001a36:	e7e0      	b.n	80019fa <__ledf2+0x82>
 8001a38:	45c8      	cmp	r8, r9
 8001a3a:	d8c0      	bhi.n	80019be <__ledf2+0x46>
 8001a3c:	2000      	movs	r0, #0
 8001a3e:	45c8      	cmp	r8, r9
 8001a40:	d3e3      	bcc.n	8001a0a <__ledf2+0x92>
 8001a42:	e7ed      	b.n	8001a20 <__ledf2+0xa8>
 8001a44:	000007ff 	.word	0x000007ff

08001a48 <__aeabi_dmul>:
 8001a48:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001a4a:	4657      	mov	r7, sl
 8001a4c:	46de      	mov	lr, fp
 8001a4e:	464e      	mov	r6, r9
 8001a50:	4645      	mov	r5, r8
 8001a52:	b5e0      	push	{r5, r6, r7, lr}
 8001a54:	4683      	mov	fp, r0
 8001a56:	0006      	movs	r6, r0
 8001a58:	030f      	lsls	r7, r1, #12
 8001a5a:	0048      	lsls	r0, r1, #1
 8001a5c:	b087      	sub	sp, #28
 8001a5e:	4692      	mov	sl, r2
 8001a60:	001d      	movs	r5, r3
 8001a62:	0b3f      	lsrs	r7, r7, #12
 8001a64:	0d40      	lsrs	r0, r0, #21
 8001a66:	0fcc      	lsrs	r4, r1, #31
 8001a68:	2800      	cmp	r0, #0
 8001a6a:	d100      	bne.n	8001a6e <__aeabi_dmul+0x26>
 8001a6c:	e06f      	b.n	8001b4e <__aeabi_dmul+0x106>
 8001a6e:	4bde      	ldr	r3, [pc, #888]	; (8001de8 <__aeabi_dmul+0x3a0>)
 8001a70:	4298      	cmp	r0, r3
 8001a72:	d038      	beq.n	8001ae6 <__aeabi_dmul+0x9e>
 8001a74:	2380      	movs	r3, #128	; 0x80
 8001a76:	00ff      	lsls	r7, r7, #3
 8001a78:	041b      	lsls	r3, r3, #16
 8001a7a:	431f      	orrs	r7, r3
 8001a7c:	0f73      	lsrs	r3, r6, #29
 8001a7e:	433b      	orrs	r3, r7
 8001a80:	9301      	str	r3, [sp, #4]
 8001a82:	4bda      	ldr	r3, [pc, #872]	; (8001dec <__aeabi_dmul+0x3a4>)
 8001a84:	2700      	movs	r7, #0
 8001a86:	4699      	mov	r9, r3
 8001a88:	2300      	movs	r3, #0
 8001a8a:	469b      	mov	fp, r3
 8001a8c:	00f6      	lsls	r6, r6, #3
 8001a8e:	4481      	add	r9, r0
 8001a90:	032b      	lsls	r3, r5, #12
 8001a92:	0069      	lsls	r1, r5, #1
 8001a94:	0b1b      	lsrs	r3, r3, #12
 8001a96:	4652      	mov	r2, sl
 8001a98:	4698      	mov	r8, r3
 8001a9a:	0d49      	lsrs	r1, r1, #21
 8001a9c:	0fed      	lsrs	r5, r5, #31
 8001a9e:	2900      	cmp	r1, #0
 8001aa0:	d100      	bne.n	8001aa4 <__aeabi_dmul+0x5c>
 8001aa2:	e085      	b.n	8001bb0 <__aeabi_dmul+0x168>
 8001aa4:	4bd0      	ldr	r3, [pc, #832]	; (8001de8 <__aeabi_dmul+0x3a0>)
 8001aa6:	4299      	cmp	r1, r3
 8001aa8:	d100      	bne.n	8001aac <__aeabi_dmul+0x64>
 8001aaa:	e073      	b.n	8001b94 <__aeabi_dmul+0x14c>
 8001aac:	4643      	mov	r3, r8
 8001aae:	00da      	lsls	r2, r3, #3
 8001ab0:	2380      	movs	r3, #128	; 0x80
 8001ab2:	041b      	lsls	r3, r3, #16
 8001ab4:	4313      	orrs	r3, r2
 8001ab6:	4652      	mov	r2, sl
 8001ab8:	48cc      	ldr	r0, [pc, #816]	; (8001dec <__aeabi_dmul+0x3a4>)
 8001aba:	0f52      	lsrs	r2, r2, #29
 8001abc:	4684      	mov	ip, r0
 8001abe:	4313      	orrs	r3, r2
 8001ac0:	4652      	mov	r2, sl
 8001ac2:	2000      	movs	r0, #0
 8001ac4:	4461      	add	r1, ip
 8001ac6:	00d2      	lsls	r2, r2, #3
 8001ac8:	4489      	add	r9, r1
 8001aca:	0021      	movs	r1, r4
 8001acc:	4069      	eors	r1, r5
 8001ace:	9100      	str	r1, [sp, #0]
 8001ad0:	468c      	mov	ip, r1
 8001ad2:	2101      	movs	r1, #1
 8001ad4:	4449      	add	r1, r9
 8001ad6:	468a      	mov	sl, r1
 8001ad8:	2f0f      	cmp	r7, #15
 8001ada:	d900      	bls.n	8001ade <__aeabi_dmul+0x96>
 8001adc:	e090      	b.n	8001c00 <__aeabi_dmul+0x1b8>
 8001ade:	49c4      	ldr	r1, [pc, #784]	; (8001df0 <__aeabi_dmul+0x3a8>)
 8001ae0:	00bf      	lsls	r7, r7, #2
 8001ae2:	59cf      	ldr	r7, [r1, r7]
 8001ae4:	46bf      	mov	pc, r7
 8001ae6:	465b      	mov	r3, fp
 8001ae8:	433b      	orrs	r3, r7
 8001aea:	9301      	str	r3, [sp, #4]
 8001aec:	d000      	beq.n	8001af0 <__aeabi_dmul+0xa8>
 8001aee:	e16a      	b.n	8001dc6 <__aeabi_dmul+0x37e>
 8001af0:	2302      	movs	r3, #2
 8001af2:	2708      	movs	r7, #8
 8001af4:	2600      	movs	r6, #0
 8001af6:	4681      	mov	r9, r0
 8001af8:	469b      	mov	fp, r3
 8001afa:	e7c9      	b.n	8001a90 <__aeabi_dmul+0x48>
 8001afc:	0032      	movs	r2, r6
 8001afe:	4658      	mov	r0, fp
 8001b00:	9b01      	ldr	r3, [sp, #4]
 8001b02:	4661      	mov	r1, ip
 8001b04:	9100      	str	r1, [sp, #0]
 8001b06:	2802      	cmp	r0, #2
 8001b08:	d100      	bne.n	8001b0c <__aeabi_dmul+0xc4>
 8001b0a:	e075      	b.n	8001bf8 <__aeabi_dmul+0x1b0>
 8001b0c:	2803      	cmp	r0, #3
 8001b0e:	d100      	bne.n	8001b12 <__aeabi_dmul+0xca>
 8001b10:	e1fe      	b.n	8001f10 <__aeabi_dmul+0x4c8>
 8001b12:	2801      	cmp	r0, #1
 8001b14:	d000      	beq.n	8001b18 <__aeabi_dmul+0xd0>
 8001b16:	e12c      	b.n	8001d72 <__aeabi_dmul+0x32a>
 8001b18:	2300      	movs	r3, #0
 8001b1a:	2700      	movs	r7, #0
 8001b1c:	2600      	movs	r6, #0
 8001b1e:	2500      	movs	r5, #0
 8001b20:	033f      	lsls	r7, r7, #12
 8001b22:	0d2a      	lsrs	r2, r5, #20
 8001b24:	0b3f      	lsrs	r7, r7, #12
 8001b26:	48b3      	ldr	r0, [pc, #716]	; (8001df4 <__aeabi_dmul+0x3ac>)
 8001b28:	0512      	lsls	r2, r2, #20
 8001b2a:	433a      	orrs	r2, r7
 8001b2c:	4002      	ands	r2, r0
 8001b2e:	051b      	lsls	r3, r3, #20
 8001b30:	4313      	orrs	r3, r2
 8001b32:	9a00      	ldr	r2, [sp, #0]
 8001b34:	005b      	lsls	r3, r3, #1
 8001b36:	07d1      	lsls	r1, r2, #31
 8001b38:	085b      	lsrs	r3, r3, #1
 8001b3a:	430b      	orrs	r3, r1
 8001b3c:	0030      	movs	r0, r6
 8001b3e:	0019      	movs	r1, r3
 8001b40:	b007      	add	sp, #28
 8001b42:	bc3c      	pop	{r2, r3, r4, r5}
 8001b44:	4690      	mov	r8, r2
 8001b46:	4699      	mov	r9, r3
 8001b48:	46a2      	mov	sl, r4
 8001b4a:	46ab      	mov	fp, r5
 8001b4c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001b4e:	465b      	mov	r3, fp
 8001b50:	433b      	orrs	r3, r7
 8001b52:	9301      	str	r3, [sp, #4]
 8001b54:	d100      	bne.n	8001b58 <__aeabi_dmul+0x110>
 8001b56:	e12f      	b.n	8001db8 <__aeabi_dmul+0x370>
 8001b58:	2f00      	cmp	r7, #0
 8001b5a:	d100      	bne.n	8001b5e <__aeabi_dmul+0x116>
 8001b5c:	e1a5      	b.n	8001eaa <__aeabi_dmul+0x462>
 8001b5e:	0038      	movs	r0, r7
 8001b60:	f000 fdb8 	bl	80026d4 <__clzsi2>
 8001b64:	0003      	movs	r3, r0
 8001b66:	3b0b      	subs	r3, #11
 8001b68:	2b1c      	cmp	r3, #28
 8001b6a:	dd00      	ble.n	8001b6e <__aeabi_dmul+0x126>
 8001b6c:	e196      	b.n	8001e9c <__aeabi_dmul+0x454>
 8001b6e:	221d      	movs	r2, #29
 8001b70:	1ad3      	subs	r3, r2, r3
 8001b72:	465a      	mov	r2, fp
 8001b74:	0001      	movs	r1, r0
 8001b76:	40da      	lsrs	r2, r3
 8001b78:	465e      	mov	r6, fp
 8001b7a:	3908      	subs	r1, #8
 8001b7c:	408f      	lsls	r7, r1
 8001b7e:	0013      	movs	r3, r2
 8001b80:	408e      	lsls	r6, r1
 8001b82:	433b      	orrs	r3, r7
 8001b84:	9301      	str	r3, [sp, #4]
 8001b86:	4b9c      	ldr	r3, [pc, #624]	; (8001df8 <__aeabi_dmul+0x3b0>)
 8001b88:	2700      	movs	r7, #0
 8001b8a:	1a1b      	subs	r3, r3, r0
 8001b8c:	4699      	mov	r9, r3
 8001b8e:	2300      	movs	r3, #0
 8001b90:	469b      	mov	fp, r3
 8001b92:	e77d      	b.n	8001a90 <__aeabi_dmul+0x48>
 8001b94:	4641      	mov	r1, r8
 8001b96:	4653      	mov	r3, sl
 8001b98:	430b      	orrs	r3, r1
 8001b9a:	4993      	ldr	r1, [pc, #588]	; (8001de8 <__aeabi_dmul+0x3a0>)
 8001b9c:	468c      	mov	ip, r1
 8001b9e:	44e1      	add	r9, ip
 8001ba0:	2b00      	cmp	r3, #0
 8001ba2:	d000      	beq.n	8001ba6 <__aeabi_dmul+0x15e>
 8001ba4:	e11a      	b.n	8001ddc <__aeabi_dmul+0x394>
 8001ba6:	2202      	movs	r2, #2
 8001ba8:	2002      	movs	r0, #2
 8001baa:	4317      	orrs	r7, r2
 8001bac:	2200      	movs	r2, #0
 8001bae:	e78c      	b.n	8001aca <__aeabi_dmul+0x82>
 8001bb0:	4313      	orrs	r3, r2
 8001bb2:	d100      	bne.n	8001bb6 <__aeabi_dmul+0x16e>
 8001bb4:	e10d      	b.n	8001dd2 <__aeabi_dmul+0x38a>
 8001bb6:	4643      	mov	r3, r8
 8001bb8:	2b00      	cmp	r3, #0
 8001bba:	d100      	bne.n	8001bbe <__aeabi_dmul+0x176>
 8001bbc:	e181      	b.n	8001ec2 <__aeabi_dmul+0x47a>
 8001bbe:	4640      	mov	r0, r8
 8001bc0:	f000 fd88 	bl	80026d4 <__clzsi2>
 8001bc4:	0002      	movs	r2, r0
 8001bc6:	3a0b      	subs	r2, #11
 8001bc8:	2a1c      	cmp	r2, #28
 8001bca:	dd00      	ble.n	8001bce <__aeabi_dmul+0x186>
 8001bcc:	e172      	b.n	8001eb4 <__aeabi_dmul+0x46c>
 8001bce:	0001      	movs	r1, r0
 8001bd0:	4643      	mov	r3, r8
 8001bd2:	3908      	subs	r1, #8
 8001bd4:	408b      	lsls	r3, r1
 8001bd6:	4698      	mov	r8, r3
 8001bd8:	231d      	movs	r3, #29
 8001bda:	1a9a      	subs	r2, r3, r2
 8001bdc:	4653      	mov	r3, sl
 8001bde:	40d3      	lsrs	r3, r2
 8001be0:	001a      	movs	r2, r3
 8001be2:	4643      	mov	r3, r8
 8001be4:	4313      	orrs	r3, r2
 8001be6:	4652      	mov	r2, sl
 8001be8:	408a      	lsls	r2, r1
 8001bea:	4649      	mov	r1, r9
 8001bec:	1a08      	subs	r0, r1, r0
 8001bee:	4982      	ldr	r1, [pc, #520]	; (8001df8 <__aeabi_dmul+0x3b0>)
 8001bf0:	4689      	mov	r9, r1
 8001bf2:	4481      	add	r9, r0
 8001bf4:	2000      	movs	r0, #0
 8001bf6:	e768      	b.n	8001aca <__aeabi_dmul+0x82>
 8001bf8:	4b7b      	ldr	r3, [pc, #492]	; (8001de8 <__aeabi_dmul+0x3a0>)
 8001bfa:	2700      	movs	r7, #0
 8001bfc:	2600      	movs	r6, #0
 8001bfe:	e78e      	b.n	8001b1e <__aeabi_dmul+0xd6>
 8001c00:	0c14      	lsrs	r4, r2, #16
 8001c02:	0412      	lsls	r2, r2, #16
 8001c04:	0c12      	lsrs	r2, r2, #16
 8001c06:	0011      	movs	r1, r2
 8001c08:	0c37      	lsrs	r7, r6, #16
 8001c0a:	0436      	lsls	r6, r6, #16
 8001c0c:	0c35      	lsrs	r5, r6, #16
 8001c0e:	4379      	muls	r1, r7
 8001c10:	0028      	movs	r0, r5
 8001c12:	468c      	mov	ip, r1
 8001c14:	002e      	movs	r6, r5
 8001c16:	4360      	muls	r0, r4
 8001c18:	4460      	add	r0, ip
 8001c1a:	4683      	mov	fp, r0
 8001c1c:	4356      	muls	r6, r2
 8001c1e:	0021      	movs	r1, r4
 8001c20:	0c30      	lsrs	r0, r6, #16
 8001c22:	4680      	mov	r8, r0
 8001c24:	4658      	mov	r0, fp
 8001c26:	4379      	muls	r1, r7
 8001c28:	4440      	add	r0, r8
 8001c2a:	9102      	str	r1, [sp, #8]
 8001c2c:	4584      	cmp	ip, r0
 8001c2e:	d906      	bls.n	8001c3e <__aeabi_dmul+0x1f6>
 8001c30:	4688      	mov	r8, r1
 8001c32:	2180      	movs	r1, #128	; 0x80
 8001c34:	0249      	lsls	r1, r1, #9
 8001c36:	468c      	mov	ip, r1
 8001c38:	44e0      	add	r8, ip
 8001c3a:	4641      	mov	r1, r8
 8001c3c:	9102      	str	r1, [sp, #8]
 8001c3e:	0436      	lsls	r6, r6, #16
 8001c40:	0c01      	lsrs	r1, r0, #16
 8001c42:	0c36      	lsrs	r6, r6, #16
 8001c44:	0400      	lsls	r0, r0, #16
 8001c46:	468b      	mov	fp, r1
 8001c48:	1981      	adds	r1, r0, r6
 8001c4a:	0c1e      	lsrs	r6, r3, #16
 8001c4c:	041b      	lsls	r3, r3, #16
 8001c4e:	0c1b      	lsrs	r3, r3, #16
 8001c50:	9103      	str	r1, [sp, #12]
 8001c52:	0019      	movs	r1, r3
 8001c54:	4379      	muls	r1, r7
 8001c56:	468c      	mov	ip, r1
 8001c58:	0028      	movs	r0, r5
 8001c5a:	4375      	muls	r5, r6
 8001c5c:	4465      	add	r5, ip
 8001c5e:	46a8      	mov	r8, r5
 8001c60:	4358      	muls	r0, r3
 8001c62:	0c05      	lsrs	r5, r0, #16
 8001c64:	4445      	add	r5, r8
 8001c66:	4377      	muls	r7, r6
 8001c68:	42a9      	cmp	r1, r5
 8001c6a:	d903      	bls.n	8001c74 <__aeabi_dmul+0x22c>
 8001c6c:	2180      	movs	r1, #128	; 0x80
 8001c6e:	0249      	lsls	r1, r1, #9
 8001c70:	468c      	mov	ip, r1
 8001c72:	4467      	add	r7, ip
 8001c74:	0c29      	lsrs	r1, r5, #16
 8001c76:	468c      	mov	ip, r1
 8001c78:	0039      	movs	r1, r7
 8001c7a:	0400      	lsls	r0, r0, #16
 8001c7c:	0c00      	lsrs	r0, r0, #16
 8001c7e:	042d      	lsls	r5, r5, #16
 8001c80:	182d      	adds	r5, r5, r0
 8001c82:	4461      	add	r1, ip
 8001c84:	44ab      	add	fp, r5
 8001c86:	9105      	str	r1, [sp, #20]
 8001c88:	4659      	mov	r1, fp
 8001c8a:	9104      	str	r1, [sp, #16]
 8001c8c:	9901      	ldr	r1, [sp, #4]
 8001c8e:	040f      	lsls	r7, r1, #16
 8001c90:	0c3f      	lsrs	r7, r7, #16
 8001c92:	0c08      	lsrs	r0, r1, #16
 8001c94:	0039      	movs	r1, r7
 8001c96:	4351      	muls	r1, r2
 8001c98:	4342      	muls	r2, r0
 8001c9a:	4690      	mov	r8, r2
 8001c9c:	0002      	movs	r2, r0
 8001c9e:	468c      	mov	ip, r1
 8001ca0:	0c09      	lsrs	r1, r1, #16
 8001ca2:	468b      	mov	fp, r1
 8001ca4:	4362      	muls	r2, r4
 8001ca6:	437c      	muls	r4, r7
 8001ca8:	4444      	add	r4, r8
 8001caa:	445c      	add	r4, fp
 8001cac:	45a0      	cmp	r8, r4
 8001cae:	d903      	bls.n	8001cb8 <__aeabi_dmul+0x270>
 8001cb0:	2180      	movs	r1, #128	; 0x80
 8001cb2:	0249      	lsls	r1, r1, #9
 8001cb4:	4688      	mov	r8, r1
 8001cb6:	4442      	add	r2, r8
 8001cb8:	0c21      	lsrs	r1, r4, #16
 8001cba:	4688      	mov	r8, r1
 8001cbc:	4661      	mov	r1, ip
 8001cbe:	0409      	lsls	r1, r1, #16
 8001cc0:	0c09      	lsrs	r1, r1, #16
 8001cc2:	468c      	mov	ip, r1
 8001cc4:	0039      	movs	r1, r7
 8001cc6:	4359      	muls	r1, r3
 8001cc8:	4343      	muls	r3, r0
 8001cca:	4370      	muls	r0, r6
 8001ccc:	437e      	muls	r6, r7
 8001cce:	0c0f      	lsrs	r7, r1, #16
 8001cd0:	18f6      	adds	r6, r6, r3
 8001cd2:	0424      	lsls	r4, r4, #16
 8001cd4:	19be      	adds	r6, r7, r6
 8001cd6:	4464      	add	r4, ip
 8001cd8:	4442      	add	r2, r8
 8001cda:	468c      	mov	ip, r1
 8001cdc:	42b3      	cmp	r3, r6
 8001cde:	d903      	bls.n	8001ce8 <__aeabi_dmul+0x2a0>
 8001ce0:	2380      	movs	r3, #128	; 0x80
 8001ce2:	025b      	lsls	r3, r3, #9
 8001ce4:	4698      	mov	r8, r3
 8001ce6:	4440      	add	r0, r8
 8001ce8:	9b02      	ldr	r3, [sp, #8]
 8001cea:	4661      	mov	r1, ip
 8001cec:	4698      	mov	r8, r3
 8001cee:	9b04      	ldr	r3, [sp, #16]
 8001cf0:	0437      	lsls	r7, r6, #16
 8001cf2:	4443      	add	r3, r8
 8001cf4:	469b      	mov	fp, r3
 8001cf6:	45ab      	cmp	fp, r5
 8001cf8:	41ad      	sbcs	r5, r5
 8001cfa:	426b      	negs	r3, r5
 8001cfc:	040d      	lsls	r5, r1, #16
 8001cfe:	9905      	ldr	r1, [sp, #20]
 8001d00:	0c2d      	lsrs	r5, r5, #16
 8001d02:	468c      	mov	ip, r1
 8001d04:	197f      	adds	r7, r7, r5
 8001d06:	4467      	add	r7, ip
 8001d08:	18fd      	adds	r5, r7, r3
 8001d0a:	46a8      	mov	r8, r5
 8001d0c:	465d      	mov	r5, fp
 8001d0e:	192d      	adds	r5, r5, r4
 8001d10:	42a5      	cmp	r5, r4
 8001d12:	41a4      	sbcs	r4, r4
 8001d14:	4693      	mov	fp, r2
 8001d16:	4264      	negs	r4, r4
 8001d18:	46a4      	mov	ip, r4
 8001d1a:	44c3      	add	fp, r8
 8001d1c:	44dc      	add	ip, fp
 8001d1e:	428f      	cmp	r7, r1
 8001d20:	41bf      	sbcs	r7, r7
 8001d22:	4598      	cmp	r8, r3
 8001d24:	419b      	sbcs	r3, r3
 8001d26:	4593      	cmp	fp, r2
 8001d28:	4192      	sbcs	r2, r2
 8001d2a:	45a4      	cmp	ip, r4
 8001d2c:	41a4      	sbcs	r4, r4
 8001d2e:	425b      	negs	r3, r3
 8001d30:	427f      	negs	r7, r7
 8001d32:	431f      	orrs	r7, r3
 8001d34:	0c36      	lsrs	r6, r6, #16
 8001d36:	4252      	negs	r2, r2
 8001d38:	4264      	negs	r4, r4
 8001d3a:	19bf      	adds	r7, r7, r6
 8001d3c:	4322      	orrs	r2, r4
 8001d3e:	18bf      	adds	r7, r7, r2
 8001d40:	4662      	mov	r2, ip
 8001d42:	1838      	adds	r0, r7, r0
 8001d44:	0243      	lsls	r3, r0, #9
 8001d46:	0dd2      	lsrs	r2, r2, #23
 8001d48:	9903      	ldr	r1, [sp, #12]
 8001d4a:	4313      	orrs	r3, r2
 8001d4c:	026a      	lsls	r2, r5, #9
 8001d4e:	430a      	orrs	r2, r1
 8001d50:	1e50      	subs	r0, r2, #1
 8001d52:	4182      	sbcs	r2, r0
 8001d54:	4661      	mov	r1, ip
 8001d56:	0ded      	lsrs	r5, r5, #23
 8001d58:	432a      	orrs	r2, r5
 8001d5a:	024e      	lsls	r6, r1, #9
 8001d5c:	4332      	orrs	r2, r6
 8001d5e:	01d9      	lsls	r1, r3, #7
 8001d60:	d400      	bmi.n	8001d64 <__aeabi_dmul+0x31c>
 8001d62:	e0b3      	b.n	8001ecc <__aeabi_dmul+0x484>
 8001d64:	2601      	movs	r6, #1
 8001d66:	0850      	lsrs	r0, r2, #1
 8001d68:	4032      	ands	r2, r6
 8001d6a:	4302      	orrs	r2, r0
 8001d6c:	07de      	lsls	r6, r3, #31
 8001d6e:	4332      	orrs	r2, r6
 8001d70:	085b      	lsrs	r3, r3, #1
 8001d72:	4c22      	ldr	r4, [pc, #136]	; (8001dfc <__aeabi_dmul+0x3b4>)
 8001d74:	4454      	add	r4, sl
 8001d76:	2c00      	cmp	r4, #0
 8001d78:	dd62      	ble.n	8001e40 <__aeabi_dmul+0x3f8>
 8001d7a:	0751      	lsls	r1, r2, #29
 8001d7c:	d009      	beq.n	8001d92 <__aeabi_dmul+0x34a>
 8001d7e:	200f      	movs	r0, #15
 8001d80:	4010      	ands	r0, r2
 8001d82:	2804      	cmp	r0, #4
 8001d84:	d005      	beq.n	8001d92 <__aeabi_dmul+0x34a>
 8001d86:	1d10      	adds	r0, r2, #4
 8001d88:	4290      	cmp	r0, r2
 8001d8a:	4192      	sbcs	r2, r2
 8001d8c:	4252      	negs	r2, r2
 8001d8e:	189b      	adds	r3, r3, r2
 8001d90:	0002      	movs	r2, r0
 8001d92:	01d9      	lsls	r1, r3, #7
 8001d94:	d504      	bpl.n	8001da0 <__aeabi_dmul+0x358>
 8001d96:	2480      	movs	r4, #128	; 0x80
 8001d98:	4819      	ldr	r0, [pc, #100]	; (8001e00 <__aeabi_dmul+0x3b8>)
 8001d9a:	00e4      	lsls	r4, r4, #3
 8001d9c:	4003      	ands	r3, r0
 8001d9e:	4454      	add	r4, sl
 8001da0:	4818      	ldr	r0, [pc, #96]	; (8001e04 <__aeabi_dmul+0x3bc>)
 8001da2:	4284      	cmp	r4, r0
 8001da4:	dd00      	ble.n	8001da8 <__aeabi_dmul+0x360>
 8001da6:	e727      	b.n	8001bf8 <__aeabi_dmul+0x1b0>
 8001da8:	075e      	lsls	r6, r3, #29
 8001daa:	025b      	lsls	r3, r3, #9
 8001dac:	08d2      	lsrs	r2, r2, #3
 8001dae:	0b1f      	lsrs	r7, r3, #12
 8001db0:	0563      	lsls	r3, r4, #21
 8001db2:	4316      	orrs	r6, r2
 8001db4:	0d5b      	lsrs	r3, r3, #21
 8001db6:	e6b2      	b.n	8001b1e <__aeabi_dmul+0xd6>
 8001db8:	2300      	movs	r3, #0
 8001dba:	4699      	mov	r9, r3
 8001dbc:	3301      	adds	r3, #1
 8001dbe:	2704      	movs	r7, #4
 8001dc0:	2600      	movs	r6, #0
 8001dc2:	469b      	mov	fp, r3
 8001dc4:	e664      	b.n	8001a90 <__aeabi_dmul+0x48>
 8001dc6:	2303      	movs	r3, #3
 8001dc8:	9701      	str	r7, [sp, #4]
 8001dca:	4681      	mov	r9, r0
 8001dcc:	270c      	movs	r7, #12
 8001dce:	469b      	mov	fp, r3
 8001dd0:	e65e      	b.n	8001a90 <__aeabi_dmul+0x48>
 8001dd2:	2201      	movs	r2, #1
 8001dd4:	2001      	movs	r0, #1
 8001dd6:	4317      	orrs	r7, r2
 8001dd8:	2200      	movs	r2, #0
 8001dda:	e676      	b.n	8001aca <__aeabi_dmul+0x82>
 8001ddc:	2303      	movs	r3, #3
 8001dde:	2003      	movs	r0, #3
 8001de0:	431f      	orrs	r7, r3
 8001de2:	4643      	mov	r3, r8
 8001de4:	e671      	b.n	8001aca <__aeabi_dmul+0x82>
 8001de6:	46c0      	nop			; (mov r8, r8)
 8001de8:	000007ff 	.word	0x000007ff
 8001dec:	fffffc01 	.word	0xfffffc01
 8001df0:	0800a544 	.word	0x0800a544
 8001df4:	800fffff 	.word	0x800fffff
 8001df8:	fffffc0d 	.word	0xfffffc0d
 8001dfc:	000003ff 	.word	0x000003ff
 8001e00:	feffffff 	.word	0xfeffffff
 8001e04:	000007fe 	.word	0x000007fe
 8001e08:	2300      	movs	r3, #0
 8001e0a:	2780      	movs	r7, #128	; 0x80
 8001e0c:	9300      	str	r3, [sp, #0]
 8001e0e:	033f      	lsls	r7, r7, #12
 8001e10:	2600      	movs	r6, #0
 8001e12:	4b43      	ldr	r3, [pc, #268]	; (8001f20 <__aeabi_dmul+0x4d8>)
 8001e14:	e683      	b.n	8001b1e <__aeabi_dmul+0xd6>
 8001e16:	9b01      	ldr	r3, [sp, #4]
 8001e18:	0032      	movs	r2, r6
 8001e1a:	46a4      	mov	ip, r4
 8001e1c:	4658      	mov	r0, fp
 8001e1e:	e670      	b.n	8001b02 <__aeabi_dmul+0xba>
 8001e20:	46ac      	mov	ip, r5
 8001e22:	e66e      	b.n	8001b02 <__aeabi_dmul+0xba>
 8001e24:	2780      	movs	r7, #128	; 0x80
 8001e26:	9901      	ldr	r1, [sp, #4]
 8001e28:	033f      	lsls	r7, r7, #12
 8001e2a:	4239      	tst	r1, r7
 8001e2c:	d02d      	beq.n	8001e8a <__aeabi_dmul+0x442>
 8001e2e:	423b      	tst	r3, r7
 8001e30:	d12b      	bne.n	8001e8a <__aeabi_dmul+0x442>
 8001e32:	431f      	orrs	r7, r3
 8001e34:	033f      	lsls	r7, r7, #12
 8001e36:	0b3f      	lsrs	r7, r7, #12
 8001e38:	9500      	str	r5, [sp, #0]
 8001e3a:	0016      	movs	r6, r2
 8001e3c:	4b38      	ldr	r3, [pc, #224]	; (8001f20 <__aeabi_dmul+0x4d8>)
 8001e3e:	e66e      	b.n	8001b1e <__aeabi_dmul+0xd6>
 8001e40:	2501      	movs	r5, #1
 8001e42:	1b2d      	subs	r5, r5, r4
 8001e44:	2d38      	cmp	r5, #56	; 0x38
 8001e46:	dd00      	ble.n	8001e4a <__aeabi_dmul+0x402>
 8001e48:	e666      	b.n	8001b18 <__aeabi_dmul+0xd0>
 8001e4a:	2d1f      	cmp	r5, #31
 8001e4c:	dc40      	bgt.n	8001ed0 <__aeabi_dmul+0x488>
 8001e4e:	4835      	ldr	r0, [pc, #212]	; (8001f24 <__aeabi_dmul+0x4dc>)
 8001e50:	001c      	movs	r4, r3
 8001e52:	4450      	add	r0, sl
 8001e54:	0016      	movs	r6, r2
 8001e56:	4082      	lsls	r2, r0
 8001e58:	4084      	lsls	r4, r0
 8001e5a:	40ee      	lsrs	r6, r5
 8001e5c:	1e50      	subs	r0, r2, #1
 8001e5e:	4182      	sbcs	r2, r0
 8001e60:	4334      	orrs	r4, r6
 8001e62:	4314      	orrs	r4, r2
 8001e64:	40eb      	lsrs	r3, r5
 8001e66:	0762      	lsls	r2, r4, #29
 8001e68:	d009      	beq.n	8001e7e <__aeabi_dmul+0x436>
 8001e6a:	220f      	movs	r2, #15
 8001e6c:	4022      	ands	r2, r4
 8001e6e:	2a04      	cmp	r2, #4
 8001e70:	d005      	beq.n	8001e7e <__aeabi_dmul+0x436>
 8001e72:	0022      	movs	r2, r4
 8001e74:	1d14      	adds	r4, r2, #4
 8001e76:	4294      	cmp	r4, r2
 8001e78:	4180      	sbcs	r0, r0
 8001e7a:	4240      	negs	r0, r0
 8001e7c:	181b      	adds	r3, r3, r0
 8001e7e:	021a      	lsls	r2, r3, #8
 8001e80:	d53e      	bpl.n	8001f00 <__aeabi_dmul+0x4b8>
 8001e82:	2301      	movs	r3, #1
 8001e84:	2700      	movs	r7, #0
 8001e86:	2600      	movs	r6, #0
 8001e88:	e649      	b.n	8001b1e <__aeabi_dmul+0xd6>
 8001e8a:	2780      	movs	r7, #128	; 0x80
 8001e8c:	9b01      	ldr	r3, [sp, #4]
 8001e8e:	033f      	lsls	r7, r7, #12
 8001e90:	431f      	orrs	r7, r3
 8001e92:	033f      	lsls	r7, r7, #12
 8001e94:	0b3f      	lsrs	r7, r7, #12
 8001e96:	9400      	str	r4, [sp, #0]
 8001e98:	4b21      	ldr	r3, [pc, #132]	; (8001f20 <__aeabi_dmul+0x4d8>)
 8001e9a:	e640      	b.n	8001b1e <__aeabi_dmul+0xd6>
 8001e9c:	0003      	movs	r3, r0
 8001e9e:	465a      	mov	r2, fp
 8001ea0:	3b28      	subs	r3, #40	; 0x28
 8001ea2:	409a      	lsls	r2, r3
 8001ea4:	2600      	movs	r6, #0
 8001ea6:	9201      	str	r2, [sp, #4]
 8001ea8:	e66d      	b.n	8001b86 <__aeabi_dmul+0x13e>
 8001eaa:	4658      	mov	r0, fp
 8001eac:	f000 fc12 	bl	80026d4 <__clzsi2>
 8001eb0:	3020      	adds	r0, #32
 8001eb2:	e657      	b.n	8001b64 <__aeabi_dmul+0x11c>
 8001eb4:	0003      	movs	r3, r0
 8001eb6:	4652      	mov	r2, sl
 8001eb8:	3b28      	subs	r3, #40	; 0x28
 8001eba:	409a      	lsls	r2, r3
 8001ebc:	0013      	movs	r3, r2
 8001ebe:	2200      	movs	r2, #0
 8001ec0:	e693      	b.n	8001bea <__aeabi_dmul+0x1a2>
 8001ec2:	4650      	mov	r0, sl
 8001ec4:	f000 fc06 	bl	80026d4 <__clzsi2>
 8001ec8:	3020      	adds	r0, #32
 8001eca:	e67b      	b.n	8001bc4 <__aeabi_dmul+0x17c>
 8001ecc:	46ca      	mov	sl, r9
 8001ece:	e750      	b.n	8001d72 <__aeabi_dmul+0x32a>
 8001ed0:	201f      	movs	r0, #31
 8001ed2:	001e      	movs	r6, r3
 8001ed4:	4240      	negs	r0, r0
 8001ed6:	1b04      	subs	r4, r0, r4
 8001ed8:	40e6      	lsrs	r6, r4
 8001eda:	2d20      	cmp	r5, #32
 8001edc:	d003      	beq.n	8001ee6 <__aeabi_dmul+0x49e>
 8001ede:	4c12      	ldr	r4, [pc, #72]	; (8001f28 <__aeabi_dmul+0x4e0>)
 8001ee0:	4454      	add	r4, sl
 8001ee2:	40a3      	lsls	r3, r4
 8001ee4:	431a      	orrs	r2, r3
 8001ee6:	1e50      	subs	r0, r2, #1
 8001ee8:	4182      	sbcs	r2, r0
 8001eea:	4332      	orrs	r2, r6
 8001eec:	2607      	movs	r6, #7
 8001eee:	2700      	movs	r7, #0
 8001ef0:	4016      	ands	r6, r2
 8001ef2:	d009      	beq.n	8001f08 <__aeabi_dmul+0x4c0>
 8001ef4:	200f      	movs	r0, #15
 8001ef6:	2300      	movs	r3, #0
 8001ef8:	4010      	ands	r0, r2
 8001efa:	0014      	movs	r4, r2
 8001efc:	2804      	cmp	r0, #4
 8001efe:	d1b9      	bne.n	8001e74 <__aeabi_dmul+0x42c>
 8001f00:	0022      	movs	r2, r4
 8001f02:	075e      	lsls	r6, r3, #29
 8001f04:	025b      	lsls	r3, r3, #9
 8001f06:	0b1f      	lsrs	r7, r3, #12
 8001f08:	08d2      	lsrs	r2, r2, #3
 8001f0a:	4316      	orrs	r6, r2
 8001f0c:	2300      	movs	r3, #0
 8001f0e:	e606      	b.n	8001b1e <__aeabi_dmul+0xd6>
 8001f10:	2780      	movs	r7, #128	; 0x80
 8001f12:	033f      	lsls	r7, r7, #12
 8001f14:	431f      	orrs	r7, r3
 8001f16:	033f      	lsls	r7, r7, #12
 8001f18:	0b3f      	lsrs	r7, r7, #12
 8001f1a:	0016      	movs	r6, r2
 8001f1c:	4b00      	ldr	r3, [pc, #0]	; (8001f20 <__aeabi_dmul+0x4d8>)
 8001f1e:	e5fe      	b.n	8001b1e <__aeabi_dmul+0xd6>
 8001f20:	000007ff 	.word	0x000007ff
 8001f24:	0000041e 	.word	0x0000041e
 8001f28:	0000043e 	.word	0x0000043e

08001f2c <__aeabi_dsub>:
 8001f2c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001f2e:	4657      	mov	r7, sl
 8001f30:	464e      	mov	r6, r9
 8001f32:	4645      	mov	r5, r8
 8001f34:	46de      	mov	lr, fp
 8001f36:	000c      	movs	r4, r1
 8001f38:	0309      	lsls	r1, r1, #12
 8001f3a:	b5e0      	push	{r5, r6, r7, lr}
 8001f3c:	0a49      	lsrs	r1, r1, #9
 8001f3e:	0f46      	lsrs	r6, r0, #29
 8001f40:	005f      	lsls	r7, r3, #1
 8001f42:	4331      	orrs	r1, r6
 8001f44:	031e      	lsls	r6, r3, #12
 8001f46:	0fdb      	lsrs	r3, r3, #31
 8001f48:	0a76      	lsrs	r6, r6, #9
 8001f4a:	469b      	mov	fp, r3
 8001f4c:	0f53      	lsrs	r3, r2, #29
 8001f4e:	4333      	orrs	r3, r6
 8001f50:	4ec8      	ldr	r6, [pc, #800]	; (8002274 <__aeabi_dsub+0x348>)
 8001f52:	0065      	lsls	r5, r4, #1
 8001f54:	00c0      	lsls	r0, r0, #3
 8001f56:	0fe4      	lsrs	r4, r4, #31
 8001f58:	00d2      	lsls	r2, r2, #3
 8001f5a:	0d6d      	lsrs	r5, r5, #21
 8001f5c:	46a2      	mov	sl, r4
 8001f5e:	4681      	mov	r9, r0
 8001f60:	0d7f      	lsrs	r7, r7, #21
 8001f62:	469c      	mov	ip, r3
 8001f64:	4690      	mov	r8, r2
 8001f66:	42b7      	cmp	r7, r6
 8001f68:	d100      	bne.n	8001f6c <__aeabi_dsub+0x40>
 8001f6a:	e0b9      	b.n	80020e0 <__aeabi_dsub+0x1b4>
 8001f6c:	465b      	mov	r3, fp
 8001f6e:	2601      	movs	r6, #1
 8001f70:	4073      	eors	r3, r6
 8001f72:	469b      	mov	fp, r3
 8001f74:	1bee      	subs	r6, r5, r7
 8001f76:	45a3      	cmp	fp, r4
 8001f78:	d100      	bne.n	8001f7c <__aeabi_dsub+0x50>
 8001f7a:	e083      	b.n	8002084 <__aeabi_dsub+0x158>
 8001f7c:	2e00      	cmp	r6, #0
 8001f7e:	dd63      	ble.n	8002048 <__aeabi_dsub+0x11c>
 8001f80:	2f00      	cmp	r7, #0
 8001f82:	d000      	beq.n	8001f86 <__aeabi_dsub+0x5a>
 8001f84:	e0b1      	b.n	80020ea <__aeabi_dsub+0x1be>
 8001f86:	4663      	mov	r3, ip
 8001f88:	4313      	orrs	r3, r2
 8001f8a:	d100      	bne.n	8001f8e <__aeabi_dsub+0x62>
 8001f8c:	e123      	b.n	80021d6 <__aeabi_dsub+0x2aa>
 8001f8e:	1e73      	subs	r3, r6, #1
 8001f90:	2b00      	cmp	r3, #0
 8001f92:	d000      	beq.n	8001f96 <__aeabi_dsub+0x6a>
 8001f94:	e1ba      	b.n	800230c <__aeabi_dsub+0x3e0>
 8001f96:	1a86      	subs	r6, r0, r2
 8001f98:	4663      	mov	r3, ip
 8001f9a:	42b0      	cmp	r0, r6
 8001f9c:	4180      	sbcs	r0, r0
 8001f9e:	2501      	movs	r5, #1
 8001fa0:	1ac9      	subs	r1, r1, r3
 8001fa2:	4240      	negs	r0, r0
 8001fa4:	1a09      	subs	r1, r1, r0
 8001fa6:	020b      	lsls	r3, r1, #8
 8001fa8:	d400      	bmi.n	8001fac <__aeabi_dsub+0x80>
 8001faa:	e147      	b.n	800223c <__aeabi_dsub+0x310>
 8001fac:	0249      	lsls	r1, r1, #9
 8001fae:	0a4b      	lsrs	r3, r1, #9
 8001fb0:	4698      	mov	r8, r3
 8001fb2:	4643      	mov	r3, r8
 8001fb4:	2b00      	cmp	r3, #0
 8001fb6:	d100      	bne.n	8001fba <__aeabi_dsub+0x8e>
 8001fb8:	e189      	b.n	80022ce <__aeabi_dsub+0x3a2>
 8001fba:	4640      	mov	r0, r8
 8001fbc:	f000 fb8a 	bl	80026d4 <__clzsi2>
 8001fc0:	0003      	movs	r3, r0
 8001fc2:	3b08      	subs	r3, #8
 8001fc4:	2b1f      	cmp	r3, #31
 8001fc6:	dd00      	ble.n	8001fca <__aeabi_dsub+0x9e>
 8001fc8:	e17c      	b.n	80022c4 <__aeabi_dsub+0x398>
 8001fca:	2220      	movs	r2, #32
 8001fcc:	0030      	movs	r0, r6
 8001fce:	1ad2      	subs	r2, r2, r3
 8001fd0:	4641      	mov	r1, r8
 8001fd2:	40d0      	lsrs	r0, r2
 8001fd4:	4099      	lsls	r1, r3
 8001fd6:	0002      	movs	r2, r0
 8001fd8:	409e      	lsls	r6, r3
 8001fda:	430a      	orrs	r2, r1
 8001fdc:	429d      	cmp	r5, r3
 8001fde:	dd00      	ble.n	8001fe2 <__aeabi_dsub+0xb6>
 8001fe0:	e16a      	b.n	80022b8 <__aeabi_dsub+0x38c>
 8001fe2:	1b5d      	subs	r5, r3, r5
 8001fe4:	1c6b      	adds	r3, r5, #1
 8001fe6:	2b1f      	cmp	r3, #31
 8001fe8:	dd00      	ble.n	8001fec <__aeabi_dsub+0xc0>
 8001fea:	e194      	b.n	8002316 <__aeabi_dsub+0x3ea>
 8001fec:	2120      	movs	r1, #32
 8001fee:	0010      	movs	r0, r2
 8001ff0:	0035      	movs	r5, r6
 8001ff2:	1ac9      	subs	r1, r1, r3
 8001ff4:	408e      	lsls	r6, r1
 8001ff6:	40da      	lsrs	r2, r3
 8001ff8:	4088      	lsls	r0, r1
 8001ffa:	40dd      	lsrs	r5, r3
 8001ffc:	1e71      	subs	r1, r6, #1
 8001ffe:	418e      	sbcs	r6, r1
 8002000:	0011      	movs	r1, r2
 8002002:	2207      	movs	r2, #7
 8002004:	4328      	orrs	r0, r5
 8002006:	2500      	movs	r5, #0
 8002008:	4306      	orrs	r6, r0
 800200a:	4032      	ands	r2, r6
 800200c:	2a00      	cmp	r2, #0
 800200e:	d009      	beq.n	8002024 <__aeabi_dsub+0xf8>
 8002010:	230f      	movs	r3, #15
 8002012:	4033      	ands	r3, r6
 8002014:	2b04      	cmp	r3, #4
 8002016:	d005      	beq.n	8002024 <__aeabi_dsub+0xf8>
 8002018:	1d33      	adds	r3, r6, #4
 800201a:	42b3      	cmp	r3, r6
 800201c:	41b6      	sbcs	r6, r6
 800201e:	4276      	negs	r6, r6
 8002020:	1989      	adds	r1, r1, r6
 8002022:	001e      	movs	r6, r3
 8002024:	020b      	lsls	r3, r1, #8
 8002026:	d400      	bmi.n	800202a <__aeabi_dsub+0xfe>
 8002028:	e23d      	b.n	80024a6 <__aeabi_dsub+0x57a>
 800202a:	1c6a      	adds	r2, r5, #1
 800202c:	4b91      	ldr	r3, [pc, #580]	; (8002274 <__aeabi_dsub+0x348>)
 800202e:	0555      	lsls	r5, r2, #21
 8002030:	0d6d      	lsrs	r5, r5, #21
 8002032:	429a      	cmp	r2, r3
 8002034:	d100      	bne.n	8002038 <__aeabi_dsub+0x10c>
 8002036:	e119      	b.n	800226c <__aeabi_dsub+0x340>
 8002038:	4a8f      	ldr	r2, [pc, #572]	; (8002278 <__aeabi_dsub+0x34c>)
 800203a:	08f6      	lsrs	r6, r6, #3
 800203c:	400a      	ands	r2, r1
 800203e:	0757      	lsls	r7, r2, #29
 8002040:	0252      	lsls	r2, r2, #9
 8002042:	4337      	orrs	r7, r6
 8002044:	0b12      	lsrs	r2, r2, #12
 8002046:	e09b      	b.n	8002180 <__aeabi_dsub+0x254>
 8002048:	2e00      	cmp	r6, #0
 800204a:	d000      	beq.n	800204e <__aeabi_dsub+0x122>
 800204c:	e0c5      	b.n	80021da <__aeabi_dsub+0x2ae>
 800204e:	1c6e      	adds	r6, r5, #1
 8002050:	0576      	lsls	r6, r6, #21
 8002052:	0d76      	lsrs	r6, r6, #21
 8002054:	2e01      	cmp	r6, #1
 8002056:	dc00      	bgt.n	800205a <__aeabi_dsub+0x12e>
 8002058:	e148      	b.n	80022ec <__aeabi_dsub+0x3c0>
 800205a:	4667      	mov	r7, ip
 800205c:	1a86      	subs	r6, r0, r2
 800205e:	1bcb      	subs	r3, r1, r7
 8002060:	42b0      	cmp	r0, r6
 8002062:	41bf      	sbcs	r7, r7
 8002064:	427f      	negs	r7, r7
 8002066:	46b8      	mov	r8, r7
 8002068:	001f      	movs	r7, r3
 800206a:	4643      	mov	r3, r8
 800206c:	1aff      	subs	r7, r7, r3
 800206e:	003b      	movs	r3, r7
 8002070:	46b8      	mov	r8, r7
 8002072:	021b      	lsls	r3, r3, #8
 8002074:	d500      	bpl.n	8002078 <__aeabi_dsub+0x14c>
 8002076:	e15f      	b.n	8002338 <__aeabi_dsub+0x40c>
 8002078:	4337      	orrs	r7, r6
 800207a:	d19a      	bne.n	8001fb2 <__aeabi_dsub+0x86>
 800207c:	2200      	movs	r2, #0
 800207e:	2400      	movs	r4, #0
 8002080:	2500      	movs	r5, #0
 8002082:	e079      	b.n	8002178 <__aeabi_dsub+0x24c>
 8002084:	2e00      	cmp	r6, #0
 8002086:	dc00      	bgt.n	800208a <__aeabi_dsub+0x15e>
 8002088:	e0fa      	b.n	8002280 <__aeabi_dsub+0x354>
 800208a:	2f00      	cmp	r7, #0
 800208c:	d100      	bne.n	8002090 <__aeabi_dsub+0x164>
 800208e:	e08d      	b.n	80021ac <__aeabi_dsub+0x280>
 8002090:	4b78      	ldr	r3, [pc, #480]	; (8002274 <__aeabi_dsub+0x348>)
 8002092:	429d      	cmp	r5, r3
 8002094:	d067      	beq.n	8002166 <__aeabi_dsub+0x23a>
 8002096:	2380      	movs	r3, #128	; 0x80
 8002098:	4667      	mov	r7, ip
 800209a:	041b      	lsls	r3, r3, #16
 800209c:	431f      	orrs	r7, r3
 800209e:	46bc      	mov	ip, r7
 80020a0:	2e38      	cmp	r6, #56	; 0x38
 80020a2:	dc00      	bgt.n	80020a6 <__aeabi_dsub+0x17a>
 80020a4:	e152      	b.n	800234c <__aeabi_dsub+0x420>
 80020a6:	4663      	mov	r3, ip
 80020a8:	4313      	orrs	r3, r2
 80020aa:	1e5a      	subs	r2, r3, #1
 80020ac:	4193      	sbcs	r3, r2
 80020ae:	181e      	adds	r6, r3, r0
 80020b0:	4286      	cmp	r6, r0
 80020b2:	4180      	sbcs	r0, r0
 80020b4:	4240      	negs	r0, r0
 80020b6:	1809      	adds	r1, r1, r0
 80020b8:	020b      	lsls	r3, r1, #8
 80020ba:	d400      	bmi.n	80020be <__aeabi_dsub+0x192>
 80020bc:	e0be      	b.n	800223c <__aeabi_dsub+0x310>
 80020be:	4b6d      	ldr	r3, [pc, #436]	; (8002274 <__aeabi_dsub+0x348>)
 80020c0:	3501      	adds	r5, #1
 80020c2:	429d      	cmp	r5, r3
 80020c4:	d100      	bne.n	80020c8 <__aeabi_dsub+0x19c>
 80020c6:	e0d2      	b.n	800226e <__aeabi_dsub+0x342>
 80020c8:	4a6b      	ldr	r2, [pc, #428]	; (8002278 <__aeabi_dsub+0x34c>)
 80020ca:	0873      	lsrs	r3, r6, #1
 80020cc:	400a      	ands	r2, r1
 80020ce:	2101      	movs	r1, #1
 80020d0:	400e      	ands	r6, r1
 80020d2:	431e      	orrs	r6, r3
 80020d4:	0851      	lsrs	r1, r2, #1
 80020d6:	07d3      	lsls	r3, r2, #31
 80020d8:	2207      	movs	r2, #7
 80020da:	431e      	orrs	r6, r3
 80020dc:	4032      	ands	r2, r6
 80020de:	e795      	b.n	800200c <__aeabi_dsub+0xe0>
 80020e0:	001e      	movs	r6, r3
 80020e2:	4316      	orrs	r6, r2
 80020e4:	d000      	beq.n	80020e8 <__aeabi_dsub+0x1bc>
 80020e6:	e745      	b.n	8001f74 <__aeabi_dsub+0x48>
 80020e8:	e740      	b.n	8001f6c <__aeabi_dsub+0x40>
 80020ea:	4b62      	ldr	r3, [pc, #392]	; (8002274 <__aeabi_dsub+0x348>)
 80020ec:	429d      	cmp	r5, r3
 80020ee:	d03a      	beq.n	8002166 <__aeabi_dsub+0x23a>
 80020f0:	2380      	movs	r3, #128	; 0x80
 80020f2:	4667      	mov	r7, ip
 80020f4:	041b      	lsls	r3, r3, #16
 80020f6:	431f      	orrs	r7, r3
 80020f8:	46bc      	mov	ip, r7
 80020fa:	2e38      	cmp	r6, #56	; 0x38
 80020fc:	dd00      	ble.n	8002100 <__aeabi_dsub+0x1d4>
 80020fe:	e0eb      	b.n	80022d8 <__aeabi_dsub+0x3ac>
 8002100:	2e1f      	cmp	r6, #31
 8002102:	dc00      	bgt.n	8002106 <__aeabi_dsub+0x1da>
 8002104:	e13a      	b.n	800237c <__aeabi_dsub+0x450>
 8002106:	0033      	movs	r3, r6
 8002108:	4667      	mov	r7, ip
 800210a:	3b20      	subs	r3, #32
 800210c:	40df      	lsrs	r7, r3
 800210e:	003b      	movs	r3, r7
 8002110:	2e20      	cmp	r6, #32
 8002112:	d005      	beq.n	8002120 <__aeabi_dsub+0x1f4>
 8002114:	2740      	movs	r7, #64	; 0x40
 8002116:	1bbf      	subs	r7, r7, r6
 8002118:	4666      	mov	r6, ip
 800211a:	40be      	lsls	r6, r7
 800211c:	4332      	orrs	r2, r6
 800211e:	4690      	mov	r8, r2
 8002120:	4646      	mov	r6, r8
 8002122:	1e72      	subs	r2, r6, #1
 8002124:	4196      	sbcs	r6, r2
 8002126:	4333      	orrs	r3, r6
 8002128:	e0da      	b.n	80022e0 <__aeabi_dsub+0x3b4>
 800212a:	2b00      	cmp	r3, #0
 800212c:	d100      	bne.n	8002130 <__aeabi_dsub+0x204>
 800212e:	e214      	b.n	800255a <__aeabi_dsub+0x62e>
 8002130:	4663      	mov	r3, ip
 8002132:	4313      	orrs	r3, r2
 8002134:	d100      	bne.n	8002138 <__aeabi_dsub+0x20c>
 8002136:	e168      	b.n	800240a <__aeabi_dsub+0x4de>
 8002138:	2380      	movs	r3, #128	; 0x80
 800213a:	074e      	lsls	r6, r1, #29
 800213c:	08c0      	lsrs	r0, r0, #3
 800213e:	08c9      	lsrs	r1, r1, #3
 8002140:	031b      	lsls	r3, r3, #12
 8002142:	4306      	orrs	r6, r0
 8002144:	4219      	tst	r1, r3
 8002146:	d008      	beq.n	800215a <__aeabi_dsub+0x22e>
 8002148:	4660      	mov	r0, ip
 800214a:	08c0      	lsrs	r0, r0, #3
 800214c:	4218      	tst	r0, r3
 800214e:	d104      	bne.n	800215a <__aeabi_dsub+0x22e>
 8002150:	4663      	mov	r3, ip
 8002152:	0001      	movs	r1, r0
 8002154:	08d2      	lsrs	r2, r2, #3
 8002156:	075e      	lsls	r6, r3, #29
 8002158:	4316      	orrs	r6, r2
 800215a:	00f3      	lsls	r3, r6, #3
 800215c:	4699      	mov	r9, r3
 800215e:	00c9      	lsls	r1, r1, #3
 8002160:	0f72      	lsrs	r2, r6, #29
 8002162:	4d44      	ldr	r5, [pc, #272]	; (8002274 <__aeabi_dsub+0x348>)
 8002164:	4311      	orrs	r1, r2
 8002166:	464b      	mov	r3, r9
 8002168:	08de      	lsrs	r6, r3, #3
 800216a:	4b42      	ldr	r3, [pc, #264]	; (8002274 <__aeabi_dsub+0x348>)
 800216c:	074f      	lsls	r7, r1, #29
 800216e:	4337      	orrs	r7, r6
 8002170:	08ca      	lsrs	r2, r1, #3
 8002172:	429d      	cmp	r5, r3
 8002174:	d100      	bne.n	8002178 <__aeabi_dsub+0x24c>
 8002176:	e06e      	b.n	8002256 <__aeabi_dsub+0x32a>
 8002178:	0312      	lsls	r2, r2, #12
 800217a:	056d      	lsls	r5, r5, #21
 800217c:	0b12      	lsrs	r2, r2, #12
 800217e:	0d6d      	lsrs	r5, r5, #21
 8002180:	2100      	movs	r1, #0
 8002182:	0312      	lsls	r2, r2, #12
 8002184:	0b13      	lsrs	r3, r2, #12
 8002186:	0d0a      	lsrs	r2, r1, #20
 8002188:	0512      	lsls	r2, r2, #20
 800218a:	431a      	orrs	r2, r3
 800218c:	4b3b      	ldr	r3, [pc, #236]	; (800227c <__aeabi_dsub+0x350>)
 800218e:	052d      	lsls	r5, r5, #20
 8002190:	4013      	ands	r3, r2
 8002192:	432b      	orrs	r3, r5
 8002194:	005b      	lsls	r3, r3, #1
 8002196:	07e4      	lsls	r4, r4, #31
 8002198:	085b      	lsrs	r3, r3, #1
 800219a:	4323      	orrs	r3, r4
 800219c:	0038      	movs	r0, r7
 800219e:	0019      	movs	r1, r3
 80021a0:	bc3c      	pop	{r2, r3, r4, r5}
 80021a2:	4690      	mov	r8, r2
 80021a4:	4699      	mov	r9, r3
 80021a6:	46a2      	mov	sl, r4
 80021a8:	46ab      	mov	fp, r5
 80021aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80021ac:	4663      	mov	r3, ip
 80021ae:	4313      	orrs	r3, r2
 80021b0:	d011      	beq.n	80021d6 <__aeabi_dsub+0x2aa>
 80021b2:	1e73      	subs	r3, r6, #1
 80021b4:	2b00      	cmp	r3, #0
 80021b6:	d000      	beq.n	80021ba <__aeabi_dsub+0x28e>
 80021b8:	e107      	b.n	80023ca <__aeabi_dsub+0x49e>
 80021ba:	1886      	adds	r6, r0, r2
 80021bc:	4286      	cmp	r6, r0
 80021be:	4180      	sbcs	r0, r0
 80021c0:	4461      	add	r1, ip
 80021c2:	4240      	negs	r0, r0
 80021c4:	1809      	adds	r1, r1, r0
 80021c6:	2501      	movs	r5, #1
 80021c8:	020b      	lsls	r3, r1, #8
 80021ca:	d537      	bpl.n	800223c <__aeabi_dsub+0x310>
 80021cc:	2502      	movs	r5, #2
 80021ce:	e77b      	b.n	80020c8 <__aeabi_dsub+0x19c>
 80021d0:	003e      	movs	r6, r7
 80021d2:	4661      	mov	r1, ip
 80021d4:	4691      	mov	r9, r2
 80021d6:	0035      	movs	r5, r6
 80021d8:	e7c5      	b.n	8002166 <__aeabi_dsub+0x23a>
 80021da:	465c      	mov	r4, fp
 80021dc:	2d00      	cmp	r5, #0
 80021de:	d000      	beq.n	80021e2 <__aeabi_dsub+0x2b6>
 80021e0:	e0e1      	b.n	80023a6 <__aeabi_dsub+0x47a>
 80021e2:	000b      	movs	r3, r1
 80021e4:	4303      	orrs	r3, r0
 80021e6:	d0f3      	beq.n	80021d0 <__aeabi_dsub+0x2a4>
 80021e8:	1c73      	adds	r3, r6, #1
 80021ea:	d100      	bne.n	80021ee <__aeabi_dsub+0x2c2>
 80021ec:	e1ac      	b.n	8002548 <__aeabi_dsub+0x61c>
 80021ee:	4b21      	ldr	r3, [pc, #132]	; (8002274 <__aeabi_dsub+0x348>)
 80021f0:	429f      	cmp	r7, r3
 80021f2:	d100      	bne.n	80021f6 <__aeabi_dsub+0x2ca>
 80021f4:	e13a      	b.n	800246c <__aeabi_dsub+0x540>
 80021f6:	43f3      	mvns	r3, r6
 80021f8:	2b38      	cmp	r3, #56	; 0x38
 80021fa:	dd00      	ble.n	80021fe <__aeabi_dsub+0x2d2>
 80021fc:	e16f      	b.n	80024de <__aeabi_dsub+0x5b2>
 80021fe:	2b1f      	cmp	r3, #31
 8002200:	dd00      	ble.n	8002204 <__aeabi_dsub+0x2d8>
 8002202:	e18c      	b.n	800251e <__aeabi_dsub+0x5f2>
 8002204:	2520      	movs	r5, #32
 8002206:	000e      	movs	r6, r1
 8002208:	1aed      	subs	r5, r5, r3
 800220a:	40ae      	lsls	r6, r5
 800220c:	46b0      	mov	r8, r6
 800220e:	0006      	movs	r6, r0
 8002210:	46aa      	mov	sl, r5
 8002212:	40de      	lsrs	r6, r3
 8002214:	4645      	mov	r5, r8
 8002216:	4335      	orrs	r5, r6
 8002218:	002e      	movs	r6, r5
 800221a:	4655      	mov	r5, sl
 800221c:	40d9      	lsrs	r1, r3
 800221e:	40a8      	lsls	r0, r5
 8002220:	4663      	mov	r3, ip
 8002222:	1e45      	subs	r5, r0, #1
 8002224:	41a8      	sbcs	r0, r5
 8002226:	1a5b      	subs	r3, r3, r1
 8002228:	469c      	mov	ip, r3
 800222a:	4330      	orrs	r0, r6
 800222c:	1a16      	subs	r6, r2, r0
 800222e:	42b2      	cmp	r2, r6
 8002230:	4192      	sbcs	r2, r2
 8002232:	4663      	mov	r3, ip
 8002234:	4252      	negs	r2, r2
 8002236:	1a99      	subs	r1, r3, r2
 8002238:	003d      	movs	r5, r7
 800223a:	e6b4      	b.n	8001fa6 <__aeabi_dsub+0x7a>
 800223c:	2207      	movs	r2, #7
 800223e:	4032      	ands	r2, r6
 8002240:	2a00      	cmp	r2, #0
 8002242:	d000      	beq.n	8002246 <__aeabi_dsub+0x31a>
 8002244:	e6e4      	b.n	8002010 <__aeabi_dsub+0xe4>
 8002246:	4b0b      	ldr	r3, [pc, #44]	; (8002274 <__aeabi_dsub+0x348>)
 8002248:	08f6      	lsrs	r6, r6, #3
 800224a:	074f      	lsls	r7, r1, #29
 800224c:	4337      	orrs	r7, r6
 800224e:	08ca      	lsrs	r2, r1, #3
 8002250:	429d      	cmp	r5, r3
 8002252:	d000      	beq.n	8002256 <__aeabi_dsub+0x32a>
 8002254:	e790      	b.n	8002178 <__aeabi_dsub+0x24c>
 8002256:	003b      	movs	r3, r7
 8002258:	4313      	orrs	r3, r2
 800225a:	d100      	bne.n	800225e <__aeabi_dsub+0x332>
 800225c:	e1a6      	b.n	80025ac <__aeabi_dsub+0x680>
 800225e:	2380      	movs	r3, #128	; 0x80
 8002260:	031b      	lsls	r3, r3, #12
 8002262:	431a      	orrs	r2, r3
 8002264:	0312      	lsls	r2, r2, #12
 8002266:	0b12      	lsrs	r2, r2, #12
 8002268:	4d02      	ldr	r5, [pc, #8]	; (8002274 <__aeabi_dsub+0x348>)
 800226a:	e789      	b.n	8002180 <__aeabi_dsub+0x254>
 800226c:	0015      	movs	r5, r2
 800226e:	2200      	movs	r2, #0
 8002270:	2700      	movs	r7, #0
 8002272:	e785      	b.n	8002180 <__aeabi_dsub+0x254>
 8002274:	000007ff 	.word	0x000007ff
 8002278:	ff7fffff 	.word	0xff7fffff
 800227c:	800fffff 	.word	0x800fffff
 8002280:	2e00      	cmp	r6, #0
 8002282:	d000      	beq.n	8002286 <__aeabi_dsub+0x35a>
 8002284:	e0c7      	b.n	8002416 <__aeabi_dsub+0x4ea>
 8002286:	1c6b      	adds	r3, r5, #1
 8002288:	055e      	lsls	r6, r3, #21
 800228a:	0d76      	lsrs	r6, r6, #21
 800228c:	2e01      	cmp	r6, #1
 800228e:	dc00      	bgt.n	8002292 <__aeabi_dsub+0x366>
 8002290:	e0f0      	b.n	8002474 <__aeabi_dsub+0x548>
 8002292:	4dc8      	ldr	r5, [pc, #800]	; (80025b4 <__aeabi_dsub+0x688>)
 8002294:	42ab      	cmp	r3, r5
 8002296:	d100      	bne.n	800229a <__aeabi_dsub+0x36e>
 8002298:	e0b9      	b.n	800240e <__aeabi_dsub+0x4e2>
 800229a:	1885      	adds	r5, r0, r2
 800229c:	000a      	movs	r2, r1
 800229e:	4285      	cmp	r5, r0
 80022a0:	4189      	sbcs	r1, r1
 80022a2:	4462      	add	r2, ip
 80022a4:	4249      	negs	r1, r1
 80022a6:	1851      	adds	r1, r2, r1
 80022a8:	2207      	movs	r2, #7
 80022aa:	07ce      	lsls	r6, r1, #31
 80022ac:	086d      	lsrs	r5, r5, #1
 80022ae:	432e      	orrs	r6, r5
 80022b0:	0849      	lsrs	r1, r1, #1
 80022b2:	4032      	ands	r2, r6
 80022b4:	001d      	movs	r5, r3
 80022b6:	e6a9      	b.n	800200c <__aeabi_dsub+0xe0>
 80022b8:	49bf      	ldr	r1, [pc, #764]	; (80025b8 <__aeabi_dsub+0x68c>)
 80022ba:	1aed      	subs	r5, r5, r3
 80022bc:	4011      	ands	r1, r2
 80022be:	2207      	movs	r2, #7
 80022c0:	4032      	ands	r2, r6
 80022c2:	e6a3      	b.n	800200c <__aeabi_dsub+0xe0>
 80022c4:	0032      	movs	r2, r6
 80022c6:	3828      	subs	r0, #40	; 0x28
 80022c8:	4082      	lsls	r2, r0
 80022ca:	2600      	movs	r6, #0
 80022cc:	e686      	b.n	8001fdc <__aeabi_dsub+0xb0>
 80022ce:	0030      	movs	r0, r6
 80022d0:	f000 fa00 	bl	80026d4 <__clzsi2>
 80022d4:	3020      	adds	r0, #32
 80022d6:	e673      	b.n	8001fc0 <__aeabi_dsub+0x94>
 80022d8:	4663      	mov	r3, ip
 80022da:	4313      	orrs	r3, r2
 80022dc:	1e5a      	subs	r2, r3, #1
 80022de:	4193      	sbcs	r3, r2
 80022e0:	1ac6      	subs	r6, r0, r3
 80022e2:	42b0      	cmp	r0, r6
 80022e4:	4180      	sbcs	r0, r0
 80022e6:	4240      	negs	r0, r0
 80022e8:	1a09      	subs	r1, r1, r0
 80022ea:	e65c      	b.n	8001fa6 <__aeabi_dsub+0x7a>
 80022ec:	000e      	movs	r6, r1
 80022ee:	4667      	mov	r7, ip
 80022f0:	4306      	orrs	r6, r0
 80022f2:	4317      	orrs	r7, r2
 80022f4:	2d00      	cmp	r5, #0
 80022f6:	d15e      	bne.n	80023b6 <__aeabi_dsub+0x48a>
 80022f8:	2e00      	cmp	r6, #0
 80022fa:	d000      	beq.n	80022fe <__aeabi_dsub+0x3d2>
 80022fc:	e0f3      	b.n	80024e6 <__aeabi_dsub+0x5ba>
 80022fe:	2f00      	cmp	r7, #0
 8002300:	d100      	bne.n	8002304 <__aeabi_dsub+0x3d8>
 8002302:	e11e      	b.n	8002542 <__aeabi_dsub+0x616>
 8002304:	465c      	mov	r4, fp
 8002306:	4661      	mov	r1, ip
 8002308:	4691      	mov	r9, r2
 800230a:	e72c      	b.n	8002166 <__aeabi_dsub+0x23a>
 800230c:	4fa9      	ldr	r7, [pc, #676]	; (80025b4 <__aeabi_dsub+0x688>)
 800230e:	42be      	cmp	r6, r7
 8002310:	d07b      	beq.n	800240a <__aeabi_dsub+0x4de>
 8002312:	001e      	movs	r6, r3
 8002314:	e6f1      	b.n	80020fa <__aeabi_dsub+0x1ce>
 8002316:	0010      	movs	r0, r2
 8002318:	3d1f      	subs	r5, #31
 800231a:	40e8      	lsrs	r0, r5
 800231c:	2b20      	cmp	r3, #32
 800231e:	d003      	beq.n	8002328 <__aeabi_dsub+0x3fc>
 8002320:	2140      	movs	r1, #64	; 0x40
 8002322:	1acb      	subs	r3, r1, r3
 8002324:	409a      	lsls	r2, r3
 8002326:	4316      	orrs	r6, r2
 8002328:	1e73      	subs	r3, r6, #1
 800232a:	419e      	sbcs	r6, r3
 800232c:	2207      	movs	r2, #7
 800232e:	4306      	orrs	r6, r0
 8002330:	4032      	ands	r2, r6
 8002332:	2100      	movs	r1, #0
 8002334:	2500      	movs	r5, #0
 8002336:	e783      	b.n	8002240 <__aeabi_dsub+0x314>
 8002338:	1a16      	subs	r6, r2, r0
 800233a:	4663      	mov	r3, ip
 800233c:	42b2      	cmp	r2, r6
 800233e:	4180      	sbcs	r0, r0
 8002340:	1a59      	subs	r1, r3, r1
 8002342:	4240      	negs	r0, r0
 8002344:	1a0b      	subs	r3, r1, r0
 8002346:	4698      	mov	r8, r3
 8002348:	465c      	mov	r4, fp
 800234a:	e632      	b.n	8001fb2 <__aeabi_dsub+0x86>
 800234c:	2e1f      	cmp	r6, #31
 800234e:	dd00      	ble.n	8002352 <__aeabi_dsub+0x426>
 8002350:	e0ab      	b.n	80024aa <__aeabi_dsub+0x57e>
 8002352:	2720      	movs	r7, #32
 8002354:	1bbb      	subs	r3, r7, r6
 8002356:	469a      	mov	sl, r3
 8002358:	4663      	mov	r3, ip
 800235a:	4657      	mov	r7, sl
 800235c:	40bb      	lsls	r3, r7
 800235e:	4699      	mov	r9, r3
 8002360:	0013      	movs	r3, r2
 8002362:	464f      	mov	r7, r9
 8002364:	40f3      	lsrs	r3, r6
 8002366:	431f      	orrs	r7, r3
 8002368:	003b      	movs	r3, r7
 800236a:	4657      	mov	r7, sl
 800236c:	40ba      	lsls	r2, r7
 800236e:	1e57      	subs	r7, r2, #1
 8002370:	41ba      	sbcs	r2, r7
 8002372:	4313      	orrs	r3, r2
 8002374:	4662      	mov	r2, ip
 8002376:	40f2      	lsrs	r2, r6
 8002378:	1889      	adds	r1, r1, r2
 800237a:	e698      	b.n	80020ae <__aeabi_dsub+0x182>
 800237c:	2720      	movs	r7, #32
 800237e:	1bbb      	subs	r3, r7, r6
 8002380:	469a      	mov	sl, r3
 8002382:	4663      	mov	r3, ip
 8002384:	4657      	mov	r7, sl
 8002386:	40bb      	lsls	r3, r7
 8002388:	4699      	mov	r9, r3
 800238a:	0013      	movs	r3, r2
 800238c:	464f      	mov	r7, r9
 800238e:	40f3      	lsrs	r3, r6
 8002390:	431f      	orrs	r7, r3
 8002392:	003b      	movs	r3, r7
 8002394:	4657      	mov	r7, sl
 8002396:	40ba      	lsls	r2, r7
 8002398:	1e57      	subs	r7, r2, #1
 800239a:	41ba      	sbcs	r2, r7
 800239c:	4313      	orrs	r3, r2
 800239e:	4662      	mov	r2, ip
 80023a0:	40f2      	lsrs	r2, r6
 80023a2:	1a89      	subs	r1, r1, r2
 80023a4:	e79c      	b.n	80022e0 <__aeabi_dsub+0x3b4>
 80023a6:	4b83      	ldr	r3, [pc, #524]	; (80025b4 <__aeabi_dsub+0x688>)
 80023a8:	429f      	cmp	r7, r3
 80023aa:	d05f      	beq.n	800246c <__aeabi_dsub+0x540>
 80023ac:	2580      	movs	r5, #128	; 0x80
 80023ae:	042d      	lsls	r5, r5, #16
 80023b0:	4273      	negs	r3, r6
 80023b2:	4329      	orrs	r1, r5
 80023b4:	e720      	b.n	80021f8 <__aeabi_dsub+0x2cc>
 80023b6:	2e00      	cmp	r6, #0
 80023b8:	d10c      	bne.n	80023d4 <__aeabi_dsub+0x4a8>
 80023ba:	2f00      	cmp	r7, #0
 80023bc:	d100      	bne.n	80023c0 <__aeabi_dsub+0x494>
 80023be:	e0d0      	b.n	8002562 <__aeabi_dsub+0x636>
 80023c0:	465c      	mov	r4, fp
 80023c2:	4661      	mov	r1, ip
 80023c4:	4691      	mov	r9, r2
 80023c6:	4d7b      	ldr	r5, [pc, #492]	; (80025b4 <__aeabi_dsub+0x688>)
 80023c8:	e6cd      	b.n	8002166 <__aeabi_dsub+0x23a>
 80023ca:	4f7a      	ldr	r7, [pc, #488]	; (80025b4 <__aeabi_dsub+0x688>)
 80023cc:	42be      	cmp	r6, r7
 80023ce:	d01c      	beq.n	800240a <__aeabi_dsub+0x4de>
 80023d0:	001e      	movs	r6, r3
 80023d2:	e665      	b.n	80020a0 <__aeabi_dsub+0x174>
 80023d4:	2f00      	cmp	r7, #0
 80023d6:	d018      	beq.n	800240a <__aeabi_dsub+0x4de>
 80023d8:	08c0      	lsrs	r0, r0, #3
 80023da:	074e      	lsls	r6, r1, #29
 80023dc:	4306      	orrs	r6, r0
 80023de:	2080      	movs	r0, #128	; 0x80
 80023e0:	08c9      	lsrs	r1, r1, #3
 80023e2:	0300      	lsls	r0, r0, #12
 80023e4:	4201      	tst	r1, r0
 80023e6:	d008      	beq.n	80023fa <__aeabi_dsub+0x4ce>
 80023e8:	4663      	mov	r3, ip
 80023ea:	08dc      	lsrs	r4, r3, #3
 80023ec:	4204      	tst	r4, r0
 80023ee:	d104      	bne.n	80023fa <__aeabi_dsub+0x4ce>
 80023f0:	0021      	movs	r1, r4
 80023f2:	46da      	mov	sl, fp
 80023f4:	08d2      	lsrs	r2, r2, #3
 80023f6:	075e      	lsls	r6, r3, #29
 80023f8:	4316      	orrs	r6, r2
 80023fa:	00f3      	lsls	r3, r6, #3
 80023fc:	4699      	mov	r9, r3
 80023fe:	2401      	movs	r4, #1
 8002400:	4653      	mov	r3, sl
 8002402:	00c9      	lsls	r1, r1, #3
 8002404:	0f72      	lsrs	r2, r6, #29
 8002406:	4311      	orrs	r1, r2
 8002408:	401c      	ands	r4, r3
 800240a:	4d6a      	ldr	r5, [pc, #424]	; (80025b4 <__aeabi_dsub+0x688>)
 800240c:	e6ab      	b.n	8002166 <__aeabi_dsub+0x23a>
 800240e:	001d      	movs	r5, r3
 8002410:	2200      	movs	r2, #0
 8002412:	2700      	movs	r7, #0
 8002414:	e6b4      	b.n	8002180 <__aeabi_dsub+0x254>
 8002416:	2d00      	cmp	r5, #0
 8002418:	d159      	bne.n	80024ce <__aeabi_dsub+0x5a2>
 800241a:	000b      	movs	r3, r1
 800241c:	4303      	orrs	r3, r0
 800241e:	d100      	bne.n	8002422 <__aeabi_dsub+0x4f6>
 8002420:	e6d6      	b.n	80021d0 <__aeabi_dsub+0x2a4>
 8002422:	1c73      	adds	r3, r6, #1
 8002424:	d100      	bne.n	8002428 <__aeabi_dsub+0x4fc>
 8002426:	e0b2      	b.n	800258e <__aeabi_dsub+0x662>
 8002428:	4b62      	ldr	r3, [pc, #392]	; (80025b4 <__aeabi_dsub+0x688>)
 800242a:	429f      	cmp	r7, r3
 800242c:	d01e      	beq.n	800246c <__aeabi_dsub+0x540>
 800242e:	43f3      	mvns	r3, r6
 8002430:	2b38      	cmp	r3, #56	; 0x38
 8002432:	dc6f      	bgt.n	8002514 <__aeabi_dsub+0x5e8>
 8002434:	2b1f      	cmp	r3, #31
 8002436:	dd00      	ble.n	800243a <__aeabi_dsub+0x50e>
 8002438:	e097      	b.n	800256a <__aeabi_dsub+0x63e>
 800243a:	2520      	movs	r5, #32
 800243c:	000e      	movs	r6, r1
 800243e:	1aed      	subs	r5, r5, r3
 8002440:	40ae      	lsls	r6, r5
 8002442:	46b0      	mov	r8, r6
 8002444:	0006      	movs	r6, r0
 8002446:	46aa      	mov	sl, r5
 8002448:	40de      	lsrs	r6, r3
 800244a:	4645      	mov	r5, r8
 800244c:	4335      	orrs	r5, r6
 800244e:	002e      	movs	r6, r5
 8002450:	4655      	mov	r5, sl
 8002452:	40a8      	lsls	r0, r5
 8002454:	40d9      	lsrs	r1, r3
 8002456:	1e45      	subs	r5, r0, #1
 8002458:	41a8      	sbcs	r0, r5
 800245a:	448c      	add	ip, r1
 800245c:	4306      	orrs	r6, r0
 800245e:	18b6      	adds	r6, r6, r2
 8002460:	4296      	cmp	r6, r2
 8002462:	4192      	sbcs	r2, r2
 8002464:	4251      	negs	r1, r2
 8002466:	4461      	add	r1, ip
 8002468:	003d      	movs	r5, r7
 800246a:	e625      	b.n	80020b8 <__aeabi_dsub+0x18c>
 800246c:	003d      	movs	r5, r7
 800246e:	4661      	mov	r1, ip
 8002470:	4691      	mov	r9, r2
 8002472:	e678      	b.n	8002166 <__aeabi_dsub+0x23a>
 8002474:	000b      	movs	r3, r1
 8002476:	4303      	orrs	r3, r0
 8002478:	2d00      	cmp	r5, #0
 800247a:	d000      	beq.n	800247e <__aeabi_dsub+0x552>
 800247c:	e655      	b.n	800212a <__aeabi_dsub+0x1fe>
 800247e:	2b00      	cmp	r3, #0
 8002480:	d0f5      	beq.n	800246e <__aeabi_dsub+0x542>
 8002482:	4663      	mov	r3, ip
 8002484:	4313      	orrs	r3, r2
 8002486:	d100      	bne.n	800248a <__aeabi_dsub+0x55e>
 8002488:	e66d      	b.n	8002166 <__aeabi_dsub+0x23a>
 800248a:	1886      	adds	r6, r0, r2
 800248c:	4286      	cmp	r6, r0
 800248e:	4180      	sbcs	r0, r0
 8002490:	4461      	add	r1, ip
 8002492:	4240      	negs	r0, r0
 8002494:	1809      	adds	r1, r1, r0
 8002496:	2200      	movs	r2, #0
 8002498:	020b      	lsls	r3, r1, #8
 800249a:	d400      	bmi.n	800249e <__aeabi_dsub+0x572>
 800249c:	e6d0      	b.n	8002240 <__aeabi_dsub+0x314>
 800249e:	4b46      	ldr	r3, [pc, #280]	; (80025b8 <__aeabi_dsub+0x68c>)
 80024a0:	3501      	adds	r5, #1
 80024a2:	4019      	ands	r1, r3
 80024a4:	e5b2      	b.n	800200c <__aeabi_dsub+0xe0>
 80024a6:	46b1      	mov	r9, r6
 80024a8:	e65d      	b.n	8002166 <__aeabi_dsub+0x23a>
 80024aa:	0033      	movs	r3, r6
 80024ac:	4667      	mov	r7, ip
 80024ae:	3b20      	subs	r3, #32
 80024b0:	40df      	lsrs	r7, r3
 80024b2:	003b      	movs	r3, r7
 80024b4:	2e20      	cmp	r6, #32
 80024b6:	d005      	beq.n	80024c4 <__aeabi_dsub+0x598>
 80024b8:	2740      	movs	r7, #64	; 0x40
 80024ba:	1bbf      	subs	r7, r7, r6
 80024bc:	4666      	mov	r6, ip
 80024be:	40be      	lsls	r6, r7
 80024c0:	4332      	orrs	r2, r6
 80024c2:	4690      	mov	r8, r2
 80024c4:	4646      	mov	r6, r8
 80024c6:	1e72      	subs	r2, r6, #1
 80024c8:	4196      	sbcs	r6, r2
 80024ca:	4333      	orrs	r3, r6
 80024cc:	e5ef      	b.n	80020ae <__aeabi_dsub+0x182>
 80024ce:	4b39      	ldr	r3, [pc, #228]	; (80025b4 <__aeabi_dsub+0x688>)
 80024d0:	429f      	cmp	r7, r3
 80024d2:	d0cb      	beq.n	800246c <__aeabi_dsub+0x540>
 80024d4:	2580      	movs	r5, #128	; 0x80
 80024d6:	042d      	lsls	r5, r5, #16
 80024d8:	4273      	negs	r3, r6
 80024da:	4329      	orrs	r1, r5
 80024dc:	e7a8      	b.n	8002430 <__aeabi_dsub+0x504>
 80024de:	4308      	orrs	r0, r1
 80024e0:	1e41      	subs	r1, r0, #1
 80024e2:	4188      	sbcs	r0, r1
 80024e4:	e6a2      	b.n	800222c <__aeabi_dsub+0x300>
 80024e6:	2f00      	cmp	r7, #0
 80024e8:	d100      	bne.n	80024ec <__aeabi_dsub+0x5c0>
 80024ea:	e63c      	b.n	8002166 <__aeabi_dsub+0x23a>
 80024ec:	4663      	mov	r3, ip
 80024ee:	1a86      	subs	r6, r0, r2
 80024f0:	1acf      	subs	r7, r1, r3
 80024f2:	42b0      	cmp	r0, r6
 80024f4:	419b      	sbcs	r3, r3
 80024f6:	425b      	negs	r3, r3
 80024f8:	1afb      	subs	r3, r7, r3
 80024fa:	4698      	mov	r8, r3
 80024fc:	021b      	lsls	r3, r3, #8
 80024fe:	d54e      	bpl.n	800259e <__aeabi_dsub+0x672>
 8002500:	1a16      	subs	r6, r2, r0
 8002502:	4663      	mov	r3, ip
 8002504:	42b2      	cmp	r2, r6
 8002506:	4192      	sbcs	r2, r2
 8002508:	1a59      	subs	r1, r3, r1
 800250a:	4252      	negs	r2, r2
 800250c:	1a89      	subs	r1, r1, r2
 800250e:	465c      	mov	r4, fp
 8002510:	2200      	movs	r2, #0
 8002512:	e57b      	b.n	800200c <__aeabi_dsub+0xe0>
 8002514:	4301      	orrs	r1, r0
 8002516:	000e      	movs	r6, r1
 8002518:	1e71      	subs	r1, r6, #1
 800251a:	418e      	sbcs	r6, r1
 800251c:	e79f      	b.n	800245e <__aeabi_dsub+0x532>
 800251e:	001d      	movs	r5, r3
 8002520:	000e      	movs	r6, r1
 8002522:	3d20      	subs	r5, #32
 8002524:	40ee      	lsrs	r6, r5
 8002526:	46b0      	mov	r8, r6
 8002528:	2b20      	cmp	r3, #32
 800252a:	d004      	beq.n	8002536 <__aeabi_dsub+0x60a>
 800252c:	2540      	movs	r5, #64	; 0x40
 800252e:	1aeb      	subs	r3, r5, r3
 8002530:	4099      	lsls	r1, r3
 8002532:	4308      	orrs	r0, r1
 8002534:	4681      	mov	r9, r0
 8002536:	4648      	mov	r0, r9
 8002538:	4643      	mov	r3, r8
 800253a:	1e41      	subs	r1, r0, #1
 800253c:	4188      	sbcs	r0, r1
 800253e:	4318      	orrs	r0, r3
 8002540:	e674      	b.n	800222c <__aeabi_dsub+0x300>
 8002542:	2200      	movs	r2, #0
 8002544:	2400      	movs	r4, #0
 8002546:	e617      	b.n	8002178 <__aeabi_dsub+0x24c>
 8002548:	1a16      	subs	r6, r2, r0
 800254a:	4663      	mov	r3, ip
 800254c:	42b2      	cmp	r2, r6
 800254e:	4192      	sbcs	r2, r2
 8002550:	1a59      	subs	r1, r3, r1
 8002552:	4252      	negs	r2, r2
 8002554:	1a89      	subs	r1, r1, r2
 8002556:	003d      	movs	r5, r7
 8002558:	e525      	b.n	8001fa6 <__aeabi_dsub+0x7a>
 800255a:	4661      	mov	r1, ip
 800255c:	4691      	mov	r9, r2
 800255e:	4d15      	ldr	r5, [pc, #84]	; (80025b4 <__aeabi_dsub+0x688>)
 8002560:	e601      	b.n	8002166 <__aeabi_dsub+0x23a>
 8002562:	2280      	movs	r2, #128	; 0x80
 8002564:	2400      	movs	r4, #0
 8002566:	0312      	lsls	r2, r2, #12
 8002568:	e679      	b.n	800225e <__aeabi_dsub+0x332>
 800256a:	001d      	movs	r5, r3
 800256c:	000e      	movs	r6, r1
 800256e:	3d20      	subs	r5, #32
 8002570:	40ee      	lsrs	r6, r5
 8002572:	46b0      	mov	r8, r6
 8002574:	2b20      	cmp	r3, #32
 8002576:	d004      	beq.n	8002582 <__aeabi_dsub+0x656>
 8002578:	2540      	movs	r5, #64	; 0x40
 800257a:	1aeb      	subs	r3, r5, r3
 800257c:	4099      	lsls	r1, r3
 800257e:	4308      	orrs	r0, r1
 8002580:	4681      	mov	r9, r0
 8002582:	464e      	mov	r6, r9
 8002584:	4643      	mov	r3, r8
 8002586:	1e71      	subs	r1, r6, #1
 8002588:	418e      	sbcs	r6, r1
 800258a:	431e      	orrs	r6, r3
 800258c:	e767      	b.n	800245e <__aeabi_dsub+0x532>
 800258e:	1886      	adds	r6, r0, r2
 8002590:	4296      	cmp	r6, r2
 8002592:	419b      	sbcs	r3, r3
 8002594:	4461      	add	r1, ip
 8002596:	425b      	negs	r3, r3
 8002598:	18c9      	adds	r1, r1, r3
 800259a:	003d      	movs	r5, r7
 800259c:	e58c      	b.n	80020b8 <__aeabi_dsub+0x18c>
 800259e:	4647      	mov	r7, r8
 80025a0:	4337      	orrs	r7, r6
 80025a2:	d0ce      	beq.n	8002542 <__aeabi_dsub+0x616>
 80025a4:	2207      	movs	r2, #7
 80025a6:	4641      	mov	r1, r8
 80025a8:	4032      	ands	r2, r6
 80025aa:	e649      	b.n	8002240 <__aeabi_dsub+0x314>
 80025ac:	2700      	movs	r7, #0
 80025ae:	003a      	movs	r2, r7
 80025b0:	e5e6      	b.n	8002180 <__aeabi_dsub+0x254>
 80025b2:	46c0      	nop			; (mov r8, r8)
 80025b4:	000007ff 	.word	0x000007ff
 80025b8:	ff7fffff 	.word	0xff7fffff

080025bc <__aeabi_i2d>:
 80025bc:	b570      	push	{r4, r5, r6, lr}
 80025be:	2800      	cmp	r0, #0
 80025c0:	d02d      	beq.n	800261e <__aeabi_i2d+0x62>
 80025c2:	17c3      	asrs	r3, r0, #31
 80025c4:	18c5      	adds	r5, r0, r3
 80025c6:	405d      	eors	r5, r3
 80025c8:	0fc4      	lsrs	r4, r0, #31
 80025ca:	0028      	movs	r0, r5
 80025cc:	f000 f882 	bl	80026d4 <__clzsi2>
 80025d0:	4b15      	ldr	r3, [pc, #84]	; (8002628 <__aeabi_i2d+0x6c>)
 80025d2:	1a1b      	subs	r3, r3, r0
 80025d4:	055b      	lsls	r3, r3, #21
 80025d6:	0d5b      	lsrs	r3, r3, #21
 80025d8:	280a      	cmp	r0, #10
 80025da:	dd15      	ble.n	8002608 <__aeabi_i2d+0x4c>
 80025dc:	380b      	subs	r0, #11
 80025de:	4085      	lsls	r5, r0
 80025e0:	2200      	movs	r2, #0
 80025e2:	032d      	lsls	r5, r5, #12
 80025e4:	0b2d      	lsrs	r5, r5, #12
 80025e6:	2100      	movs	r1, #0
 80025e8:	0010      	movs	r0, r2
 80025ea:	032d      	lsls	r5, r5, #12
 80025ec:	0d0a      	lsrs	r2, r1, #20
 80025ee:	0b2d      	lsrs	r5, r5, #12
 80025f0:	0512      	lsls	r2, r2, #20
 80025f2:	432a      	orrs	r2, r5
 80025f4:	4d0d      	ldr	r5, [pc, #52]	; (800262c <__aeabi_i2d+0x70>)
 80025f6:	051b      	lsls	r3, r3, #20
 80025f8:	402a      	ands	r2, r5
 80025fa:	4313      	orrs	r3, r2
 80025fc:	005b      	lsls	r3, r3, #1
 80025fe:	07e4      	lsls	r4, r4, #31
 8002600:	085b      	lsrs	r3, r3, #1
 8002602:	4323      	orrs	r3, r4
 8002604:	0019      	movs	r1, r3
 8002606:	bd70      	pop	{r4, r5, r6, pc}
 8002608:	0002      	movs	r2, r0
 800260a:	0029      	movs	r1, r5
 800260c:	3215      	adds	r2, #21
 800260e:	4091      	lsls	r1, r2
 8002610:	000a      	movs	r2, r1
 8002612:	210b      	movs	r1, #11
 8002614:	1a08      	subs	r0, r1, r0
 8002616:	40c5      	lsrs	r5, r0
 8002618:	032d      	lsls	r5, r5, #12
 800261a:	0b2d      	lsrs	r5, r5, #12
 800261c:	e7e3      	b.n	80025e6 <__aeabi_i2d+0x2a>
 800261e:	2400      	movs	r4, #0
 8002620:	2300      	movs	r3, #0
 8002622:	2500      	movs	r5, #0
 8002624:	2200      	movs	r2, #0
 8002626:	e7de      	b.n	80025e6 <__aeabi_i2d+0x2a>
 8002628:	0000041e 	.word	0x0000041e
 800262c:	800fffff 	.word	0x800fffff

08002630 <__aeabi_f2d>:
 8002630:	0041      	lsls	r1, r0, #1
 8002632:	0e09      	lsrs	r1, r1, #24
 8002634:	1c4b      	adds	r3, r1, #1
 8002636:	b570      	push	{r4, r5, r6, lr}
 8002638:	b2db      	uxtb	r3, r3
 800263a:	0246      	lsls	r6, r0, #9
 800263c:	0a75      	lsrs	r5, r6, #9
 800263e:	0fc4      	lsrs	r4, r0, #31
 8002640:	2b01      	cmp	r3, #1
 8002642:	dd14      	ble.n	800266e <__aeabi_f2d+0x3e>
 8002644:	23e0      	movs	r3, #224	; 0xe0
 8002646:	009b      	lsls	r3, r3, #2
 8002648:	076d      	lsls	r5, r5, #29
 800264a:	0b36      	lsrs	r6, r6, #12
 800264c:	18cb      	adds	r3, r1, r3
 800264e:	2100      	movs	r1, #0
 8002650:	0d0a      	lsrs	r2, r1, #20
 8002652:	0028      	movs	r0, r5
 8002654:	0512      	lsls	r2, r2, #20
 8002656:	4d1c      	ldr	r5, [pc, #112]	; (80026c8 <__aeabi_f2d+0x98>)
 8002658:	4332      	orrs	r2, r6
 800265a:	055b      	lsls	r3, r3, #21
 800265c:	402a      	ands	r2, r5
 800265e:	085b      	lsrs	r3, r3, #1
 8002660:	4313      	orrs	r3, r2
 8002662:	005b      	lsls	r3, r3, #1
 8002664:	07e4      	lsls	r4, r4, #31
 8002666:	085b      	lsrs	r3, r3, #1
 8002668:	4323      	orrs	r3, r4
 800266a:	0019      	movs	r1, r3
 800266c:	bd70      	pop	{r4, r5, r6, pc}
 800266e:	2900      	cmp	r1, #0
 8002670:	d114      	bne.n	800269c <__aeabi_f2d+0x6c>
 8002672:	2d00      	cmp	r5, #0
 8002674:	d01e      	beq.n	80026b4 <__aeabi_f2d+0x84>
 8002676:	0028      	movs	r0, r5
 8002678:	f000 f82c 	bl	80026d4 <__clzsi2>
 800267c:	280a      	cmp	r0, #10
 800267e:	dc1c      	bgt.n	80026ba <__aeabi_f2d+0x8a>
 8002680:	230b      	movs	r3, #11
 8002682:	002a      	movs	r2, r5
 8002684:	1a1b      	subs	r3, r3, r0
 8002686:	40da      	lsrs	r2, r3
 8002688:	0003      	movs	r3, r0
 800268a:	3315      	adds	r3, #21
 800268c:	409d      	lsls	r5, r3
 800268e:	4b0f      	ldr	r3, [pc, #60]	; (80026cc <__aeabi_f2d+0x9c>)
 8002690:	0312      	lsls	r2, r2, #12
 8002692:	1a1b      	subs	r3, r3, r0
 8002694:	055b      	lsls	r3, r3, #21
 8002696:	0b16      	lsrs	r6, r2, #12
 8002698:	0d5b      	lsrs	r3, r3, #21
 800269a:	e7d8      	b.n	800264e <__aeabi_f2d+0x1e>
 800269c:	2d00      	cmp	r5, #0
 800269e:	d006      	beq.n	80026ae <__aeabi_f2d+0x7e>
 80026a0:	0b32      	lsrs	r2, r6, #12
 80026a2:	2680      	movs	r6, #128	; 0x80
 80026a4:	0336      	lsls	r6, r6, #12
 80026a6:	076d      	lsls	r5, r5, #29
 80026a8:	4316      	orrs	r6, r2
 80026aa:	4b09      	ldr	r3, [pc, #36]	; (80026d0 <__aeabi_f2d+0xa0>)
 80026ac:	e7cf      	b.n	800264e <__aeabi_f2d+0x1e>
 80026ae:	4b08      	ldr	r3, [pc, #32]	; (80026d0 <__aeabi_f2d+0xa0>)
 80026b0:	2600      	movs	r6, #0
 80026b2:	e7cc      	b.n	800264e <__aeabi_f2d+0x1e>
 80026b4:	2300      	movs	r3, #0
 80026b6:	2600      	movs	r6, #0
 80026b8:	e7c9      	b.n	800264e <__aeabi_f2d+0x1e>
 80026ba:	0003      	movs	r3, r0
 80026bc:	002a      	movs	r2, r5
 80026be:	3b0b      	subs	r3, #11
 80026c0:	409a      	lsls	r2, r3
 80026c2:	2500      	movs	r5, #0
 80026c4:	e7e3      	b.n	800268e <__aeabi_f2d+0x5e>
 80026c6:	46c0      	nop			; (mov r8, r8)
 80026c8:	800fffff 	.word	0x800fffff
 80026cc:	00000389 	.word	0x00000389
 80026d0:	000007ff 	.word	0x000007ff

080026d4 <__clzsi2>:
 80026d4:	211c      	movs	r1, #28
 80026d6:	2301      	movs	r3, #1
 80026d8:	041b      	lsls	r3, r3, #16
 80026da:	4298      	cmp	r0, r3
 80026dc:	d301      	bcc.n	80026e2 <__clzsi2+0xe>
 80026de:	0c00      	lsrs	r0, r0, #16
 80026e0:	3910      	subs	r1, #16
 80026e2:	0a1b      	lsrs	r3, r3, #8
 80026e4:	4298      	cmp	r0, r3
 80026e6:	d301      	bcc.n	80026ec <__clzsi2+0x18>
 80026e8:	0a00      	lsrs	r0, r0, #8
 80026ea:	3908      	subs	r1, #8
 80026ec:	091b      	lsrs	r3, r3, #4
 80026ee:	4298      	cmp	r0, r3
 80026f0:	d301      	bcc.n	80026f6 <__clzsi2+0x22>
 80026f2:	0900      	lsrs	r0, r0, #4
 80026f4:	3904      	subs	r1, #4
 80026f6:	a202      	add	r2, pc, #8	; (adr r2, 8002700 <__clzsi2+0x2c>)
 80026f8:	5c10      	ldrb	r0, [r2, r0]
 80026fa:	1840      	adds	r0, r0, r1
 80026fc:	4770      	bx	lr
 80026fe:	46c0      	nop			; (mov r8, r8)
 8002700:	02020304 	.word	0x02020304
 8002704:	01010101 	.word	0x01010101
	...

08002710 <__aeabi_dcmpun>:
 8002710:	b570      	push	{r4, r5, r6, lr}
 8002712:	4e0c      	ldr	r6, [pc, #48]	; (8002744 <__aeabi_dcmpun+0x34>)
 8002714:	030d      	lsls	r5, r1, #12
 8002716:	031c      	lsls	r4, r3, #12
 8002718:	0049      	lsls	r1, r1, #1
 800271a:	005b      	lsls	r3, r3, #1
 800271c:	0b2d      	lsrs	r5, r5, #12
 800271e:	0d49      	lsrs	r1, r1, #21
 8002720:	0b24      	lsrs	r4, r4, #12
 8002722:	0d5b      	lsrs	r3, r3, #21
 8002724:	42b1      	cmp	r1, r6
 8002726:	d008      	beq.n	800273a <__aeabi_dcmpun+0x2a>
 8002728:	4906      	ldr	r1, [pc, #24]	; (8002744 <__aeabi_dcmpun+0x34>)
 800272a:	2000      	movs	r0, #0
 800272c:	428b      	cmp	r3, r1
 800272e:	d103      	bne.n	8002738 <__aeabi_dcmpun+0x28>
 8002730:	4314      	orrs	r4, r2
 8002732:	0020      	movs	r0, r4
 8002734:	1e44      	subs	r4, r0, #1
 8002736:	41a0      	sbcs	r0, r4
 8002738:	bd70      	pop	{r4, r5, r6, pc}
 800273a:	4305      	orrs	r5, r0
 800273c:	2001      	movs	r0, #1
 800273e:	2d00      	cmp	r5, #0
 8002740:	d1fa      	bne.n	8002738 <__aeabi_dcmpun+0x28>
 8002742:	e7f1      	b.n	8002728 <__aeabi_dcmpun+0x18>
 8002744:	000007ff 	.word	0x000007ff

08002748 <Reset_Handler>:
 8002748:	480d      	ldr	r0, [pc, #52]	; (8002780 <LoopForever+0x2>)
 800274a:	4685      	mov	sp, r0
 800274c:	480d      	ldr	r0, [pc, #52]	; (8002784 <LoopForever+0x6>)
 800274e:	490e      	ldr	r1, [pc, #56]	; (8002788 <LoopForever+0xa>)
 8002750:	4a0e      	ldr	r2, [pc, #56]	; (800278c <LoopForever+0xe>)
 8002752:	2300      	movs	r3, #0
 8002754:	e002      	b.n	800275c <LoopCopyDataInit>

08002756 <CopyDataInit>:
 8002756:	58d4      	ldr	r4, [r2, r3]
 8002758:	50c4      	str	r4, [r0, r3]
 800275a:	3304      	adds	r3, #4

0800275c <LoopCopyDataInit>:
 800275c:	18c4      	adds	r4, r0, r3
 800275e:	428c      	cmp	r4, r1
 8002760:	d3f9      	bcc.n	8002756 <CopyDataInit>
 8002762:	4a0b      	ldr	r2, [pc, #44]	; (8002790 <LoopForever+0x12>)
 8002764:	4c0b      	ldr	r4, [pc, #44]	; (8002794 <LoopForever+0x16>)
 8002766:	2300      	movs	r3, #0
 8002768:	e001      	b.n	800276e <LoopFillZerobss>

0800276a <FillZerobss>:
 800276a:	6013      	str	r3, [r2, #0]
 800276c:	3204      	adds	r2, #4

0800276e <LoopFillZerobss>:
 800276e:	42a2      	cmp	r2, r4
 8002770:	d3fb      	bcc.n	800276a <FillZerobss>
 8002772:	f006 fc71 	bl	8009058 <SystemInit>
 8002776:	f006 fcc5 	bl	8009104 <__libc_init_array>
 800277a:	f001 fca3 	bl	80040c4 <main>

0800277e <LoopForever>:
 800277e:	e7fe      	b.n	800277e <LoopForever>
 8002780:	20002000 	.word	0x20002000
 8002784:	20000000 	.word	0x20000000
 8002788:	20000078 	.word	0x20000078
 800278c:	0800a608 	.word	0x0800a608
 8002790:	20000078 	.word	0x20000078
 8002794:	200002f0 	.word	0x200002f0

08002798 <ADC1_COMP_IRQHandler>:
 8002798:	e7fe      	b.n	8002798 <ADC1_COMP_IRQHandler>

0800279a <LL_USART_IsActiveFlag_TC>:
 800279a:	b580      	push	{r7, lr}
 800279c:	b082      	sub	sp, #8
 800279e:	af00      	add	r7, sp, #0
 80027a0:	6078      	str	r0, [r7, #4]
 80027a2:	687b      	ldr	r3, [r7, #4]
 80027a4:	69db      	ldr	r3, [r3, #28]
 80027a6:	2240      	movs	r2, #64	; 0x40
 80027a8:	4013      	ands	r3, r2
 80027aa:	3b40      	subs	r3, #64	; 0x40
 80027ac:	425a      	negs	r2, r3
 80027ae:	4153      	adcs	r3, r2
 80027b0:	b2db      	uxtb	r3, r3
 80027b2:	0018      	movs	r0, r3
 80027b4:	46bd      	mov	sp, r7
 80027b6:	b002      	add	sp, #8
 80027b8:	bd80      	pop	{r7, pc}

080027ba <LL_USART_IsActiveFlag_TXE>:
 80027ba:	b580      	push	{r7, lr}
 80027bc:	b082      	sub	sp, #8
 80027be:	af00      	add	r7, sp, #0
 80027c0:	6078      	str	r0, [r7, #4]
 80027c2:	687b      	ldr	r3, [r7, #4]
 80027c4:	69db      	ldr	r3, [r3, #28]
 80027c6:	2280      	movs	r2, #128	; 0x80
 80027c8:	4013      	ands	r3, r2
 80027ca:	3b80      	subs	r3, #128	; 0x80
 80027cc:	425a      	negs	r2, r3
 80027ce:	4153      	adcs	r3, r2
 80027d0:	b2db      	uxtb	r3, r3
 80027d2:	0018      	movs	r0, r3
 80027d4:	46bd      	mov	sp, r7
 80027d6:	b002      	add	sp, #8
 80027d8:	bd80      	pop	{r7, pc}

080027da <LL_USART_ClearFlag_TC>:
 80027da:	b580      	push	{r7, lr}
 80027dc:	b082      	sub	sp, #8
 80027de:	af00      	add	r7, sp, #0
 80027e0:	6078      	str	r0, [r7, #4]
 80027e2:	687b      	ldr	r3, [r7, #4]
 80027e4:	2240      	movs	r2, #64	; 0x40
 80027e6:	621a      	str	r2, [r3, #32]
 80027e8:	46c0      	nop			; (mov r8, r8)
 80027ea:	46bd      	mov	sp, r7
 80027ec:	b002      	add	sp, #8
 80027ee:	bd80      	pop	{r7, pc}

080027f0 <LL_USART_TransmitData8>:
 80027f0:	b580      	push	{r7, lr}
 80027f2:	b082      	sub	sp, #8
 80027f4:	af00      	add	r7, sp, #0
 80027f6:	6078      	str	r0, [r7, #4]
 80027f8:	000a      	movs	r2, r1
 80027fa:	1cfb      	adds	r3, r7, #3
 80027fc:	701a      	strb	r2, [r3, #0]
 80027fe:	1cfb      	adds	r3, r7, #3
 8002800:	781b      	ldrb	r3, [r3, #0]
 8002802:	b29a      	uxth	r2, r3
 8002804:	687b      	ldr	r3, [r7, #4]
 8002806:	851a      	strh	r2, [r3, #40]	; 0x28
 8002808:	46c0      	nop			; (mov r8, r8)
 800280a:	46bd      	mov	sp, r7
 800280c:	b002      	add	sp, #8
 800280e:	bd80      	pop	{r7, pc}

08002810 <crc32>:
 8002810:	b580      	push	{r7, lr}
 8002812:	4f40      	ldr	r7, [pc, #256]	; (8002914 <crc32+0x104>)
 8002814:	44bd      	add	sp, r7
 8002816:	af00      	add	r7, sp, #0
 8002818:	6078      	str	r0, [r7, #4]
 800281a:	6039      	str	r1, [r7, #0]
 800281c:	2300      	movs	r3, #0
 800281e:	4a3e      	ldr	r2, [pc, #248]	; (8002918 <crc32+0x108>)
 8002820:	18ba      	adds	r2, r7, r2
 8002822:	6013      	str	r3, [r2, #0]
 8002824:	4b3d      	ldr	r3, [pc, #244]	; (800291c <crc32+0x10c>)
 8002826:	18fb      	adds	r3, r7, r3
 8002828:	2200      	movs	r2, #0
 800282a:	801a      	strh	r2, [r3, #0]
 800282c:	e03f      	b.n	80028ae <crc32+0x9e>
 800282e:	4b3b      	ldr	r3, [pc, #236]	; (800291c <crc32+0x10c>)
 8002830:	18fb      	adds	r3, r7, r3
 8002832:	881b      	ldrh	r3, [r3, #0]
 8002834:	4a38      	ldr	r2, [pc, #224]	; (8002918 <crc32+0x108>)
 8002836:	18ba      	adds	r2, r7, r2
 8002838:	6013      	str	r3, [r2, #0]
 800283a:	2381      	movs	r3, #129	; 0x81
 800283c:	00db      	lsls	r3, r3, #3
 800283e:	18fb      	adds	r3, r7, r3
 8002840:	2200      	movs	r2, #0
 8002842:	801a      	strh	r2, [r3, #0]
 8002844:	e01a      	b.n	800287c <crc32+0x6c>
 8002846:	4b34      	ldr	r3, [pc, #208]	; (8002918 <crc32+0x108>)
 8002848:	18fb      	adds	r3, r7, r3
 800284a:	681b      	ldr	r3, [r3, #0]
 800284c:	2201      	movs	r2, #1
 800284e:	4013      	ands	r3, r2
 8002850:	d006      	beq.n	8002860 <crc32+0x50>
 8002852:	4b31      	ldr	r3, [pc, #196]	; (8002918 <crc32+0x108>)
 8002854:	18fb      	adds	r3, r7, r3
 8002856:	681b      	ldr	r3, [r3, #0]
 8002858:	085b      	lsrs	r3, r3, #1
 800285a:	4a31      	ldr	r2, [pc, #196]	; (8002920 <crc32+0x110>)
 800285c:	4053      	eors	r3, r2
 800285e:	e003      	b.n	8002868 <crc32+0x58>
 8002860:	4b2d      	ldr	r3, [pc, #180]	; (8002918 <crc32+0x108>)
 8002862:	18fb      	adds	r3, r7, r3
 8002864:	681b      	ldr	r3, [r3, #0]
 8002866:	085b      	lsrs	r3, r3, #1
 8002868:	4a2b      	ldr	r2, [pc, #172]	; (8002918 <crc32+0x108>)
 800286a:	18ba      	adds	r2, r7, r2
 800286c:	6013      	str	r3, [r2, #0]
 800286e:	2181      	movs	r1, #129	; 0x81
 8002870:	00c9      	lsls	r1, r1, #3
 8002872:	187b      	adds	r3, r7, r1
 8002874:	881a      	ldrh	r2, [r3, #0]
 8002876:	187b      	adds	r3, r7, r1
 8002878:	3201      	adds	r2, #1
 800287a:	801a      	strh	r2, [r3, #0]
 800287c:	2381      	movs	r3, #129	; 0x81
 800287e:	00db      	lsls	r3, r3, #3
 8002880:	18fb      	adds	r3, r7, r3
 8002882:	881b      	ldrh	r3, [r3, #0]
 8002884:	2b07      	cmp	r3, #7
 8002886:	d9de      	bls.n	8002846 <crc32+0x36>
 8002888:	4824      	ldr	r0, [pc, #144]	; (800291c <crc32+0x10c>)
 800288a:	183b      	adds	r3, r7, r0
 800288c:	881a      	ldrh	r2, [r3, #0]
 800288e:	4b25      	ldr	r3, [pc, #148]	; (8002924 <crc32+0x114>)
 8002890:	2182      	movs	r1, #130	; 0x82
 8002892:	00c9      	lsls	r1, r1, #3
 8002894:	468c      	mov	ip, r1
 8002896:	44bc      	add	ip, r7
 8002898:	4463      	add	r3, ip
 800289a:	0092      	lsls	r2, r2, #2
 800289c:	491e      	ldr	r1, [pc, #120]	; (8002918 <crc32+0x108>)
 800289e:	1879      	adds	r1, r7, r1
 80028a0:	6809      	ldr	r1, [r1, #0]
 80028a2:	50d1      	str	r1, [r2, r3]
 80028a4:	183b      	adds	r3, r7, r0
 80028a6:	881a      	ldrh	r2, [r3, #0]
 80028a8:	183b      	adds	r3, r7, r0
 80028aa:	3201      	adds	r2, #1
 80028ac:	801a      	strh	r2, [r3, #0]
 80028ae:	4b1b      	ldr	r3, [pc, #108]	; (800291c <crc32+0x10c>)
 80028b0:	18fb      	adds	r3, r7, r3
 80028b2:	881b      	ldrh	r3, [r3, #0]
 80028b4:	2bff      	cmp	r3, #255	; 0xff
 80028b6:	d9ba      	bls.n	800282e <crc32+0x1e>
 80028b8:	2301      	movs	r3, #1
 80028ba:	425b      	negs	r3, r3
 80028bc:	4a16      	ldr	r2, [pc, #88]	; (8002918 <crc32+0x108>)
 80028be:	18ba      	adds	r2, r7, r2
 80028c0:	6013      	str	r3, [r2, #0]
 80028c2:	e018      	b.n	80028f6 <crc32+0xe6>
 80028c4:	687b      	ldr	r3, [r7, #4]
 80028c6:	1c5a      	adds	r2, r3, #1
 80028c8:	607a      	str	r2, [r7, #4]
 80028ca:	781b      	ldrb	r3, [r3, #0]
 80028cc:	001a      	movs	r2, r3
 80028ce:	4912      	ldr	r1, [pc, #72]	; (8002918 <crc32+0x108>)
 80028d0:	187b      	adds	r3, r7, r1
 80028d2:	681b      	ldr	r3, [r3, #0]
 80028d4:	4053      	eors	r3, r2
 80028d6:	22ff      	movs	r2, #255	; 0xff
 80028d8:	401a      	ands	r2, r3
 80028da:	4b12      	ldr	r3, [pc, #72]	; (8002924 <crc32+0x114>)
 80028dc:	2082      	movs	r0, #130	; 0x82
 80028de:	00c0      	lsls	r0, r0, #3
 80028e0:	4684      	mov	ip, r0
 80028e2:	44bc      	add	ip, r7
 80028e4:	4463      	add	r3, ip
 80028e6:	0092      	lsls	r2, r2, #2
 80028e8:	58d2      	ldr	r2, [r2, r3]
 80028ea:	187b      	adds	r3, r7, r1
 80028ec:	681b      	ldr	r3, [r3, #0]
 80028ee:	0a1b      	lsrs	r3, r3, #8
 80028f0:	4053      	eors	r3, r2
 80028f2:	187a      	adds	r2, r7, r1
 80028f4:	6013      	str	r3, [r2, #0]
 80028f6:	683b      	ldr	r3, [r7, #0]
 80028f8:	1e5a      	subs	r2, r3, #1
 80028fa:	603a      	str	r2, [r7, #0]
 80028fc:	2b00      	cmp	r3, #0
 80028fe:	d1e1      	bne.n	80028c4 <crc32+0xb4>
 8002900:	4b05      	ldr	r3, [pc, #20]	; (8002918 <crc32+0x108>)
 8002902:	18fb      	adds	r3, r7, r3
 8002904:	681b      	ldr	r3, [r3, #0]
 8002906:	43db      	mvns	r3, r3
 8002908:	0018      	movs	r0, r3
 800290a:	46bd      	mov	sp, r7
 800290c:	2382      	movs	r3, #130	; 0x82
 800290e:	00db      	lsls	r3, r3, #3
 8002910:	449d      	add	sp, r3
 8002912:	bd80      	pop	{r7, pc}
 8002914:	fffffbf0 	.word	0xfffffbf0
 8002918:	0000040c 	.word	0x0000040c
 800291c:	0000040a 	.word	0x0000040a
 8002920:	edb88320 	.word	0xedb88320
 8002924:	fffffbf8 	.word	0xfffffbf8

08002928 <stateMsg_fill>:
 8002928:	b5f0      	push	{r4, r5, r6, r7, lr}
 800292a:	b085      	sub	sp, #20
 800292c:	af00      	add	r7, sp, #0
 800292e:	6078      	str	r0, [r7, #4]
 8002930:	687b      	ldr	r3, [r7, #4]
 8002932:	22ff      	movs	r2, #255	; 0xff
 8002934:	701a      	strb	r2, [r3, #0]
 8002936:	687b      	ldr	r3, [r7, #4]
 8002938:	22fe      	movs	r2, #254	; 0xfe
 800293a:	705a      	strb	r2, [r3, #1]
 800293c:	4bc5      	ldr	r3, [pc, #788]	; (8002c54 <stateMsg_fill+0x32c>)
 800293e:	681b      	ldr	r3, [r3, #0]
 8002940:	001a      	movs	r2, r3
 8002942:	687b      	ldr	r3, [r7, #4]
 8002944:	3302      	adds	r3, #2
 8002946:	21ff      	movs	r1, #255	; 0xff
 8002948:	4011      	ands	r1, r2
 800294a:	000c      	movs	r4, r1
 800294c:	7819      	ldrb	r1, [r3, #0]
 800294e:	2000      	movs	r0, #0
 8002950:	4001      	ands	r1, r0
 8002952:	1c08      	adds	r0, r1, #0
 8002954:	1c21      	adds	r1, r4, #0
 8002956:	4301      	orrs	r1, r0
 8002958:	7019      	strb	r1, [r3, #0]
 800295a:	0a11      	lsrs	r1, r2, #8
 800295c:	20ff      	movs	r0, #255	; 0xff
 800295e:	4001      	ands	r1, r0
 8002960:	000c      	movs	r4, r1
 8002962:	7859      	ldrb	r1, [r3, #1]
 8002964:	2000      	movs	r0, #0
 8002966:	4001      	ands	r1, r0
 8002968:	1c08      	adds	r0, r1, #0
 800296a:	1c21      	adds	r1, r4, #0
 800296c:	4301      	orrs	r1, r0
 800296e:	7059      	strb	r1, [r3, #1]
 8002970:	0c11      	lsrs	r1, r2, #16
 8002972:	20ff      	movs	r0, #255	; 0xff
 8002974:	4001      	ands	r1, r0
 8002976:	000c      	movs	r4, r1
 8002978:	7899      	ldrb	r1, [r3, #2]
 800297a:	2000      	movs	r0, #0
 800297c:	4001      	ands	r1, r0
 800297e:	1c08      	adds	r0, r1, #0
 8002980:	1c21      	adds	r1, r4, #0
 8002982:	4301      	orrs	r1, r0
 8002984:	7099      	strb	r1, [r3, #2]
 8002986:	0e10      	lsrs	r0, r2, #24
 8002988:	78da      	ldrb	r2, [r3, #3]
 800298a:	2100      	movs	r1, #0
 800298c:	400a      	ands	r2, r1
 800298e:	1c11      	adds	r1, r2, #0
 8002990:	1c02      	adds	r2, r0, #0
 8002992:	430a      	orrs	r2, r1
 8002994:	70da      	strb	r2, [r3, #3]
 8002996:	4bb0      	ldr	r3, [pc, #704]	; (8002c58 <stateMsg_fill+0x330>)
 8002998:	681a      	ldr	r2, [r3, #0]
 800299a:	687b      	ldr	r3, [r7, #4]
 800299c:	3306      	adds	r3, #6
 800299e:	21ff      	movs	r1, #255	; 0xff
 80029a0:	4011      	ands	r1, r2
 80029a2:	000c      	movs	r4, r1
 80029a4:	7819      	ldrb	r1, [r3, #0]
 80029a6:	2000      	movs	r0, #0
 80029a8:	4001      	ands	r1, r0
 80029aa:	1c08      	adds	r0, r1, #0
 80029ac:	1c21      	adds	r1, r4, #0
 80029ae:	4301      	orrs	r1, r0
 80029b0:	7019      	strb	r1, [r3, #0]
 80029b2:	0a11      	lsrs	r1, r2, #8
 80029b4:	20ff      	movs	r0, #255	; 0xff
 80029b6:	4001      	ands	r1, r0
 80029b8:	000c      	movs	r4, r1
 80029ba:	7859      	ldrb	r1, [r3, #1]
 80029bc:	2000      	movs	r0, #0
 80029be:	4001      	ands	r1, r0
 80029c0:	1c08      	adds	r0, r1, #0
 80029c2:	1c21      	adds	r1, r4, #0
 80029c4:	4301      	orrs	r1, r0
 80029c6:	7059      	strb	r1, [r3, #1]
 80029c8:	0c11      	lsrs	r1, r2, #16
 80029ca:	20ff      	movs	r0, #255	; 0xff
 80029cc:	4001      	ands	r1, r0
 80029ce:	000c      	movs	r4, r1
 80029d0:	7899      	ldrb	r1, [r3, #2]
 80029d2:	2000      	movs	r0, #0
 80029d4:	4001      	ands	r1, r0
 80029d6:	1c08      	adds	r0, r1, #0
 80029d8:	1c21      	adds	r1, r4, #0
 80029da:	4301      	orrs	r1, r0
 80029dc:	7099      	strb	r1, [r3, #2]
 80029de:	0e10      	lsrs	r0, r2, #24
 80029e0:	78da      	ldrb	r2, [r3, #3]
 80029e2:	2100      	movs	r1, #0
 80029e4:	400a      	ands	r2, r1
 80029e6:	1c11      	adds	r1, r2, #0
 80029e8:	1c02      	adds	r2, r0, #0
 80029ea:	430a      	orrs	r2, r1
 80029ec:	70da      	strb	r2, [r3, #3]
 80029ee:	230f      	movs	r3, #15
 80029f0:	18fb      	adds	r3, r7, r3
 80029f2:	2200      	movs	r2, #0
 80029f4:	701a      	strb	r2, [r3, #0]
 80029f6:	e121      	b.n	8002c3c <stateMsg_fill+0x314>
 80029f8:	260f      	movs	r6, #15
 80029fa:	19bb      	adds	r3, r7, r6
 80029fc:	781b      	ldrb	r3, [r3, #0]
 80029fe:	19ba      	adds	r2, r7, r6
 8002a00:	7814      	ldrb	r4, [r2, #0]
 8002a02:	4a96      	ldr	r2, [pc, #600]	; (8002c5c <stateMsg_fill+0x334>)
 8002a04:	00db      	lsls	r3, r3, #3
 8002a06:	18d3      	adds	r3, r2, r3
 8002a08:	6819      	ldr	r1, [r3, #0]
 8002a0a:	685a      	ldr	r2, [r3, #4]
 8002a0c:	6878      	ldr	r0, [r7, #4]
 8002a0e:	1c63      	adds	r3, r4, #1
 8002a10:	00db      	lsls	r3, r3, #3
 8002a12:	18c3      	adds	r3, r0, r3
 8002a14:	3302      	adds	r3, #2
 8002a16:	20ff      	movs	r0, #255	; 0xff
 8002a18:	4008      	ands	r0, r1
 8002a1a:	0005      	movs	r5, r0
 8002a1c:	7818      	ldrb	r0, [r3, #0]
 8002a1e:	2400      	movs	r4, #0
 8002a20:	4020      	ands	r0, r4
 8002a22:	1c04      	adds	r4, r0, #0
 8002a24:	1c28      	adds	r0, r5, #0
 8002a26:	4320      	orrs	r0, r4
 8002a28:	7018      	strb	r0, [r3, #0]
 8002a2a:	0a08      	lsrs	r0, r1, #8
 8002a2c:	24ff      	movs	r4, #255	; 0xff
 8002a2e:	4020      	ands	r0, r4
 8002a30:	0005      	movs	r5, r0
 8002a32:	7858      	ldrb	r0, [r3, #1]
 8002a34:	2400      	movs	r4, #0
 8002a36:	4020      	ands	r0, r4
 8002a38:	1c04      	adds	r4, r0, #0
 8002a3a:	1c28      	adds	r0, r5, #0
 8002a3c:	4320      	orrs	r0, r4
 8002a3e:	7058      	strb	r0, [r3, #1]
 8002a40:	0c08      	lsrs	r0, r1, #16
 8002a42:	24ff      	movs	r4, #255	; 0xff
 8002a44:	4020      	ands	r0, r4
 8002a46:	0005      	movs	r5, r0
 8002a48:	7898      	ldrb	r0, [r3, #2]
 8002a4a:	2400      	movs	r4, #0
 8002a4c:	4020      	ands	r0, r4
 8002a4e:	1c04      	adds	r4, r0, #0
 8002a50:	1c28      	adds	r0, r5, #0
 8002a52:	4320      	orrs	r0, r4
 8002a54:	7098      	strb	r0, [r3, #2]
 8002a56:	0e0d      	lsrs	r5, r1, #24
 8002a58:	78d8      	ldrb	r0, [r3, #3]
 8002a5a:	2400      	movs	r4, #0
 8002a5c:	4020      	ands	r0, r4
 8002a5e:	1c04      	adds	r4, r0, #0
 8002a60:	1c28      	adds	r0, r5, #0
 8002a62:	4320      	orrs	r0, r4
 8002a64:	70d8      	strb	r0, [r3, #3]
 8002a66:	20ff      	movs	r0, #255	; 0xff
 8002a68:	4010      	ands	r0, r2
 8002a6a:	0005      	movs	r5, r0
 8002a6c:	7918      	ldrb	r0, [r3, #4]
 8002a6e:	2400      	movs	r4, #0
 8002a70:	4020      	ands	r0, r4
 8002a72:	1c04      	adds	r4, r0, #0
 8002a74:	1c28      	adds	r0, r5, #0
 8002a76:	4320      	orrs	r0, r4
 8002a78:	7118      	strb	r0, [r3, #4]
 8002a7a:	0a10      	lsrs	r0, r2, #8
 8002a7c:	24ff      	movs	r4, #255	; 0xff
 8002a7e:	4020      	ands	r0, r4
 8002a80:	0005      	movs	r5, r0
 8002a82:	7958      	ldrb	r0, [r3, #5]
 8002a84:	2400      	movs	r4, #0
 8002a86:	4020      	ands	r0, r4
 8002a88:	1c04      	adds	r4, r0, #0
 8002a8a:	1c28      	adds	r0, r5, #0
 8002a8c:	4320      	orrs	r0, r4
 8002a8e:	7158      	strb	r0, [r3, #5]
 8002a90:	0c10      	lsrs	r0, r2, #16
 8002a92:	24ff      	movs	r4, #255	; 0xff
 8002a94:	4020      	ands	r0, r4
 8002a96:	0005      	movs	r5, r0
 8002a98:	7998      	ldrb	r0, [r3, #6]
 8002a9a:	2400      	movs	r4, #0
 8002a9c:	4020      	ands	r0, r4
 8002a9e:	1c04      	adds	r4, r0, #0
 8002aa0:	1c28      	adds	r0, r5, #0
 8002aa2:	4320      	orrs	r0, r4
 8002aa4:	7198      	strb	r0, [r3, #6]
 8002aa6:	0e10      	lsrs	r0, r2, #24
 8002aa8:	79da      	ldrb	r2, [r3, #7]
 8002aaa:	2100      	movs	r1, #0
 8002aac:	400a      	ands	r2, r1
 8002aae:	1c11      	adds	r1, r2, #0
 8002ab0:	1c02      	adds	r2, r0, #0
 8002ab2:	430a      	orrs	r2, r1
 8002ab4:	71da      	strb	r2, [r3, #7]
 8002ab6:	19bb      	adds	r3, r7, r6
 8002ab8:	781b      	ldrb	r3, [r3, #0]
 8002aba:	19ba      	adds	r2, r7, r6
 8002abc:	7814      	ldrb	r4, [r2, #0]
 8002abe:	4a68      	ldr	r2, [pc, #416]	; (8002c60 <stateMsg_fill+0x338>)
 8002ac0:	3303      	adds	r3, #3
 8002ac2:	00db      	lsls	r3, r3, #3
 8002ac4:	18d3      	adds	r3, r2, r3
 8002ac6:	6819      	ldr	r1, [r3, #0]
 8002ac8:	685a      	ldr	r2, [r3, #4]
 8002aca:	6878      	ldr	r0, [r7, #4]
 8002acc:	1d23      	adds	r3, r4, #4
 8002ace:	00db      	lsls	r3, r3, #3
 8002ad0:	18c3      	adds	r3, r0, r3
 8002ad2:	3302      	adds	r3, #2
 8002ad4:	20ff      	movs	r0, #255	; 0xff
 8002ad6:	4008      	ands	r0, r1
 8002ad8:	0005      	movs	r5, r0
 8002ada:	7818      	ldrb	r0, [r3, #0]
 8002adc:	2400      	movs	r4, #0
 8002ade:	4020      	ands	r0, r4
 8002ae0:	1c04      	adds	r4, r0, #0
 8002ae2:	1c28      	adds	r0, r5, #0
 8002ae4:	4320      	orrs	r0, r4
 8002ae6:	7018      	strb	r0, [r3, #0]
 8002ae8:	0a08      	lsrs	r0, r1, #8
 8002aea:	24ff      	movs	r4, #255	; 0xff
 8002aec:	4020      	ands	r0, r4
 8002aee:	0005      	movs	r5, r0
 8002af0:	7858      	ldrb	r0, [r3, #1]
 8002af2:	2400      	movs	r4, #0
 8002af4:	4020      	ands	r0, r4
 8002af6:	1c04      	adds	r4, r0, #0
 8002af8:	1c28      	adds	r0, r5, #0
 8002afa:	4320      	orrs	r0, r4
 8002afc:	7058      	strb	r0, [r3, #1]
 8002afe:	0c08      	lsrs	r0, r1, #16
 8002b00:	24ff      	movs	r4, #255	; 0xff
 8002b02:	4020      	ands	r0, r4
 8002b04:	0005      	movs	r5, r0
 8002b06:	7898      	ldrb	r0, [r3, #2]
 8002b08:	2400      	movs	r4, #0
 8002b0a:	4020      	ands	r0, r4
 8002b0c:	1c04      	adds	r4, r0, #0
 8002b0e:	1c28      	adds	r0, r5, #0
 8002b10:	4320      	orrs	r0, r4
 8002b12:	7098      	strb	r0, [r3, #2]
 8002b14:	0e0d      	lsrs	r5, r1, #24
 8002b16:	78d8      	ldrb	r0, [r3, #3]
 8002b18:	2400      	movs	r4, #0
 8002b1a:	4020      	ands	r0, r4
 8002b1c:	1c04      	adds	r4, r0, #0
 8002b1e:	1c28      	adds	r0, r5, #0
 8002b20:	4320      	orrs	r0, r4
 8002b22:	70d8      	strb	r0, [r3, #3]
 8002b24:	20ff      	movs	r0, #255	; 0xff
 8002b26:	4010      	ands	r0, r2
 8002b28:	0005      	movs	r5, r0
 8002b2a:	7918      	ldrb	r0, [r3, #4]
 8002b2c:	2400      	movs	r4, #0
 8002b2e:	4020      	ands	r0, r4
 8002b30:	1c04      	adds	r4, r0, #0
 8002b32:	1c28      	adds	r0, r5, #0
 8002b34:	4320      	orrs	r0, r4
 8002b36:	7118      	strb	r0, [r3, #4]
 8002b38:	0a10      	lsrs	r0, r2, #8
 8002b3a:	24ff      	movs	r4, #255	; 0xff
 8002b3c:	4020      	ands	r0, r4
 8002b3e:	0005      	movs	r5, r0
 8002b40:	7958      	ldrb	r0, [r3, #5]
 8002b42:	2400      	movs	r4, #0
 8002b44:	4020      	ands	r0, r4
 8002b46:	1c04      	adds	r4, r0, #0
 8002b48:	1c28      	adds	r0, r5, #0
 8002b4a:	4320      	orrs	r0, r4
 8002b4c:	7158      	strb	r0, [r3, #5]
 8002b4e:	0c10      	lsrs	r0, r2, #16
 8002b50:	24ff      	movs	r4, #255	; 0xff
 8002b52:	4020      	ands	r0, r4
 8002b54:	0005      	movs	r5, r0
 8002b56:	7998      	ldrb	r0, [r3, #6]
 8002b58:	2400      	movs	r4, #0
 8002b5a:	4020      	ands	r0, r4
 8002b5c:	1c04      	adds	r4, r0, #0
 8002b5e:	1c28      	adds	r0, r5, #0
 8002b60:	4320      	orrs	r0, r4
 8002b62:	7198      	strb	r0, [r3, #6]
 8002b64:	0e10      	lsrs	r0, r2, #24
 8002b66:	79da      	ldrb	r2, [r3, #7]
 8002b68:	2100      	movs	r1, #0
 8002b6a:	400a      	ands	r2, r1
 8002b6c:	1c11      	adds	r1, r2, #0
 8002b6e:	1c02      	adds	r2, r0, #0
 8002b70:	430a      	orrs	r2, r1
 8002b72:	71da      	strb	r2, [r3, #7]
 8002b74:	19bb      	adds	r3, r7, r6
 8002b76:	781b      	ldrb	r3, [r3, #0]
 8002b78:	19ba      	adds	r2, r7, r6
 8002b7a:	7814      	ldrb	r4, [r2, #0]
 8002b7c:	4a37      	ldr	r2, [pc, #220]	; (8002c5c <stateMsg_fill+0x334>)
 8002b7e:	3306      	adds	r3, #6
 8002b80:	00db      	lsls	r3, r3, #3
 8002b82:	18d3      	adds	r3, r2, r3
 8002b84:	6819      	ldr	r1, [r3, #0]
 8002b86:	685a      	ldr	r2, [r3, #4]
 8002b88:	6878      	ldr	r0, [r7, #4]
 8002b8a:	1de3      	adds	r3, r4, #7
 8002b8c:	00db      	lsls	r3, r3, #3
 8002b8e:	18c3      	adds	r3, r0, r3
 8002b90:	3302      	adds	r3, #2
 8002b92:	20ff      	movs	r0, #255	; 0xff
 8002b94:	4008      	ands	r0, r1
 8002b96:	0005      	movs	r5, r0
 8002b98:	7818      	ldrb	r0, [r3, #0]
 8002b9a:	2400      	movs	r4, #0
 8002b9c:	4020      	ands	r0, r4
 8002b9e:	1c04      	adds	r4, r0, #0
 8002ba0:	1c28      	adds	r0, r5, #0
 8002ba2:	4320      	orrs	r0, r4
 8002ba4:	7018      	strb	r0, [r3, #0]
 8002ba6:	0a08      	lsrs	r0, r1, #8
 8002ba8:	24ff      	movs	r4, #255	; 0xff
 8002baa:	4020      	ands	r0, r4
 8002bac:	0005      	movs	r5, r0
 8002bae:	7858      	ldrb	r0, [r3, #1]
 8002bb0:	2400      	movs	r4, #0
 8002bb2:	4020      	ands	r0, r4
 8002bb4:	1c04      	adds	r4, r0, #0
 8002bb6:	1c28      	adds	r0, r5, #0
 8002bb8:	4320      	orrs	r0, r4
 8002bba:	7058      	strb	r0, [r3, #1]
 8002bbc:	0c08      	lsrs	r0, r1, #16
 8002bbe:	24ff      	movs	r4, #255	; 0xff
 8002bc0:	4020      	ands	r0, r4
 8002bc2:	0005      	movs	r5, r0
 8002bc4:	7898      	ldrb	r0, [r3, #2]
 8002bc6:	2400      	movs	r4, #0
 8002bc8:	4020      	ands	r0, r4
 8002bca:	1c04      	adds	r4, r0, #0
 8002bcc:	1c28      	adds	r0, r5, #0
 8002bce:	4320      	orrs	r0, r4
 8002bd0:	7098      	strb	r0, [r3, #2]
 8002bd2:	0e0d      	lsrs	r5, r1, #24
 8002bd4:	78d8      	ldrb	r0, [r3, #3]
 8002bd6:	2400      	movs	r4, #0
 8002bd8:	4020      	ands	r0, r4
 8002bda:	1c04      	adds	r4, r0, #0
 8002bdc:	1c28      	adds	r0, r5, #0
 8002bde:	4320      	orrs	r0, r4
 8002be0:	70d8      	strb	r0, [r3, #3]
 8002be2:	20ff      	movs	r0, #255	; 0xff
 8002be4:	4010      	ands	r0, r2
 8002be6:	0005      	movs	r5, r0
 8002be8:	7918      	ldrb	r0, [r3, #4]
 8002bea:	2400      	movs	r4, #0
 8002bec:	4020      	ands	r0, r4
 8002bee:	1c04      	adds	r4, r0, #0
 8002bf0:	1c28      	adds	r0, r5, #0
 8002bf2:	4320      	orrs	r0, r4
 8002bf4:	7118      	strb	r0, [r3, #4]
 8002bf6:	0a10      	lsrs	r0, r2, #8
 8002bf8:	24ff      	movs	r4, #255	; 0xff
 8002bfa:	4020      	ands	r0, r4
 8002bfc:	0005      	movs	r5, r0
 8002bfe:	7958      	ldrb	r0, [r3, #5]
 8002c00:	2400      	movs	r4, #0
 8002c02:	4020      	ands	r0, r4
 8002c04:	1c04      	adds	r4, r0, #0
 8002c06:	1c28      	adds	r0, r5, #0
 8002c08:	4320      	orrs	r0, r4
 8002c0a:	7158      	strb	r0, [r3, #5]
 8002c0c:	0c10      	lsrs	r0, r2, #16
 8002c0e:	24ff      	movs	r4, #255	; 0xff
 8002c10:	4020      	ands	r0, r4
 8002c12:	0005      	movs	r5, r0
 8002c14:	7998      	ldrb	r0, [r3, #6]
 8002c16:	2400      	movs	r4, #0
 8002c18:	4020      	ands	r0, r4
 8002c1a:	1c04      	adds	r4, r0, #0
 8002c1c:	1c28      	adds	r0, r5, #0
 8002c1e:	4320      	orrs	r0, r4
 8002c20:	7198      	strb	r0, [r3, #6]
 8002c22:	0e10      	lsrs	r0, r2, #24
 8002c24:	79da      	ldrb	r2, [r3, #7]
 8002c26:	2100      	movs	r1, #0
 8002c28:	400a      	ands	r2, r1
 8002c2a:	1c11      	adds	r1, r2, #0
 8002c2c:	1c02      	adds	r2, r0, #0
 8002c2e:	430a      	orrs	r2, r1
 8002c30:	71da      	strb	r2, [r3, #7]
 8002c32:	19bb      	adds	r3, r7, r6
 8002c34:	781a      	ldrb	r2, [r3, #0]
 8002c36:	19bb      	adds	r3, r7, r6
 8002c38:	3201      	adds	r2, #1
 8002c3a:	701a      	strb	r2, [r3, #0]
 8002c3c:	230f      	movs	r3, #15
 8002c3e:	18fb      	adds	r3, r7, r3
 8002c40:	781b      	ldrb	r3, [r3, #0]
 8002c42:	2b02      	cmp	r3, #2
 8002c44:	d800      	bhi.n	8002c48 <stateMsg_fill+0x320>
 8002c46:	e6d7      	b.n	80029f8 <stateMsg_fill+0xd0>
 8002c48:	230e      	movs	r3, #14
 8002c4a:	18fb      	adds	r3, r7, r3
 8002c4c:	2200      	movs	r2, #0
 8002c4e:	701a      	strb	r2, [r3, #0]
 8002c50:	e06e      	b.n	8002d30 <stateMsg_fill+0x408>
 8002c52:	46c0      	nop			; (mov r8, r8)
 8002c54:	200002c0 	.word	0x200002c0
 8002c58:	20000210 	.word	0x20000210
 8002c5c:	200000e0 	.word	0x200000e0
 8002c60:	20000098 	.word	0x20000098
 8002c64:	260e      	movs	r6, #14
 8002c66:	19bb      	adds	r3, r7, r6
 8002c68:	781b      	ldrb	r3, [r3, #0]
 8002c6a:	19ba      	adds	r2, r7, r6
 8002c6c:	7814      	ldrb	r4, [r2, #0]
 8002c6e:	4a58      	ldr	r2, [pc, #352]	; (8002dd0 <stateMsg_fill+0x4a8>)
 8002c70:	330f      	adds	r3, #15
 8002c72:	00db      	lsls	r3, r3, #3
 8002c74:	18d3      	adds	r3, r2, r3
 8002c76:	6819      	ldr	r1, [r3, #0]
 8002c78:	685a      	ldr	r2, [r3, #4]
 8002c7a:	6878      	ldr	r0, [r7, #4]
 8002c7c:	0023      	movs	r3, r4
 8002c7e:	330a      	adds	r3, #10
 8002c80:	00db      	lsls	r3, r3, #3
 8002c82:	18c3      	adds	r3, r0, r3
 8002c84:	3302      	adds	r3, #2
 8002c86:	20ff      	movs	r0, #255	; 0xff
 8002c88:	4008      	ands	r0, r1
 8002c8a:	0005      	movs	r5, r0
 8002c8c:	7818      	ldrb	r0, [r3, #0]
 8002c8e:	2400      	movs	r4, #0
 8002c90:	4020      	ands	r0, r4
 8002c92:	1c04      	adds	r4, r0, #0
 8002c94:	1c28      	adds	r0, r5, #0
 8002c96:	4320      	orrs	r0, r4
 8002c98:	7018      	strb	r0, [r3, #0]
 8002c9a:	0a08      	lsrs	r0, r1, #8
 8002c9c:	24ff      	movs	r4, #255	; 0xff
 8002c9e:	4020      	ands	r0, r4
 8002ca0:	0005      	movs	r5, r0
 8002ca2:	7858      	ldrb	r0, [r3, #1]
 8002ca4:	2400      	movs	r4, #0
 8002ca6:	4020      	ands	r0, r4
 8002ca8:	1c04      	adds	r4, r0, #0
 8002caa:	1c28      	adds	r0, r5, #0
 8002cac:	4320      	orrs	r0, r4
 8002cae:	7058      	strb	r0, [r3, #1]
 8002cb0:	0c08      	lsrs	r0, r1, #16
 8002cb2:	24ff      	movs	r4, #255	; 0xff
 8002cb4:	4020      	ands	r0, r4
 8002cb6:	0005      	movs	r5, r0
 8002cb8:	7898      	ldrb	r0, [r3, #2]
 8002cba:	2400      	movs	r4, #0
 8002cbc:	4020      	ands	r0, r4
 8002cbe:	1c04      	adds	r4, r0, #0
 8002cc0:	1c28      	adds	r0, r5, #0
 8002cc2:	4320      	orrs	r0, r4
 8002cc4:	7098      	strb	r0, [r3, #2]
 8002cc6:	0e0d      	lsrs	r5, r1, #24
 8002cc8:	78d8      	ldrb	r0, [r3, #3]
 8002cca:	2400      	movs	r4, #0
 8002ccc:	4020      	ands	r0, r4
 8002cce:	1c04      	adds	r4, r0, #0
 8002cd0:	1c28      	adds	r0, r5, #0
 8002cd2:	4320      	orrs	r0, r4
 8002cd4:	70d8      	strb	r0, [r3, #3]
 8002cd6:	20ff      	movs	r0, #255	; 0xff
 8002cd8:	4010      	ands	r0, r2
 8002cda:	0005      	movs	r5, r0
 8002cdc:	7918      	ldrb	r0, [r3, #4]
 8002cde:	2400      	movs	r4, #0
 8002ce0:	4020      	ands	r0, r4
 8002ce2:	1c04      	adds	r4, r0, #0
 8002ce4:	1c28      	adds	r0, r5, #0
 8002ce6:	4320      	orrs	r0, r4
 8002ce8:	7118      	strb	r0, [r3, #4]
 8002cea:	0a10      	lsrs	r0, r2, #8
 8002cec:	24ff      	movs	r4, #255	; 0xff
 8002cee:	4020      	ands	r0, r4
 8002cf0:	0005      	movs	r5, r0
 8002cf2:	7958      	ldrb	r0, [r3, #5]
 8002cf4:	2400      	movs	r4, #0
 8002cf6:	4020      	ands	r0, r4
 8002cf8:	1c04      	adds	r4, r0, #0
 8002cfa:	1c28      	adds	r0, r5, #0
 8002cfc:	4320      	orrs	r0, r4
 8002cfe:	7158      	strb	r0, [r3, #5]
 8002d00:	0c10      	lsrs	r0, r2, #16
 8002d02:	24ff      	movs	r4, #255	; 0xff
 8002d04:	4020      	ands	r0, r4
 8002d06:	0005      	movs	r5, r0
 8002d08:	7998      	ldrb	r0, [r3, #6]
 8002d0a:	2400      	movs	r4, #0
 8002d0c:	4020      	ands	r0, r4
 8002d0e:	1c04      	adds	r4, r0, #0
 8002d10:	1c28      	adds	r0, r5, #0
 8002d12:	4320      	orrs	r0, r4
 8002d14:	7198      	strb	r0, [r3, #6]
 8002d16:	0e10      	lsrs	r0, r2, #24
 8002d18:	79da      	ldrb	r2, [r3, #7]
 8002d1a:	2100      	movs	r1, #0
 8002d1c:	400a      	ands	r2, r1
 8002d1e:	1c11      	adds	r1, r2, #0
 8002d20:	1c02      	adds	r2, r0, #0
 8002d22:	430a      	orrs	r2, r1
 8002d24:	71da      	strb	r2, [r3, #7]
 8002d26:	19bb      	adds	r3, r7, r6
 8002d28:	781a      	ldrb	r2, [r3, #0]
 8002d2a:	19bb      	adds	r3, r7, r6
 8002d2c:	3201      	adds	r2, #1
 8002d2e:	701a      	strb	r2, [r3, #0]
 8002d30:	230e      	movs	r3, #14
 8002d32:	18fb      	adds	r3, r7, r3
 8002d34:	781b      	ldrb	r3, [r3, #0]
 8002d36:	2b03      	cmp	r3, #3
 8002d38:	d994      	bls.n	8002c64 <stateMsg_fill+0x33c>
 8002d3a:	687b      	ldr	r3, [r7, #4]
 8002d3c:	3372      	adds	r3, #114	; 0x72
 8002d3e:	781a      	ldrb	r2, [r3, #0]
 8002d40:	2100      	movs	r1, #0
 8002d42:	400a      	ands	r2, r1
 8002d44:	701a      	strb	r2, [r3, #0]
 8002d46:	785a      	ldrb	r2, [r3, #1]
 8002d48:	2100      	movs	r1, #0
 8002d4a:	400a      	ands	r2, r1
 8002d4c:	705a      	strb	r2, [r3, #1]
 8002d4e:	789a      	ldrb	r2, [r3, #2]
 8002d50:	2100      	movs	r1, #0
 8002d52:	400a      	ands	r2, r1
 8002d54:	709a      	strb	r2, [r3, #2]
 8002d56:	78da      	ldrb	r2, [r3, #3]
 8002d58:	2100      	movs	r1, #0
 8002d5a:	400a      	ands	r2, r1
 8002d5c:	70da      	strb	r2, [r3, #3]
 8002d5e:	687b      	ldr	r3, [r7, #4]
 8002d60:	2176      	movs	r1, #118	; 0x76
 8002d62:	0018      	movs	r0, r3
 8002d64:	f7ff fd54 	bl	8002810 <crc32>
 8002d68:	0002      	movs	r2, r0
 8002d6a:	687b      	ldr	r3, [r7, #4]
 8002d6c:	3372      	adds	r3, #114	; 0x72
 8002d6e:	21ff      	movs	r1, #255	; 0xff
 8002d70:	4011      	ands	r1, r2
 8002d72:	000c      	movs	r4, r1
 8002d74:	7819      	ldrb	r1, [r3, #0]
 8002d76:	2000      	movs	r0, #0
 8002d78:	4001      	ands	r1, r0
 8002d7a:	1c08      	adds	r0, r1, #0
 8002d7c:	1c21      	adds	r1, r4, #0
 8002d7e:	4301      	orrs	r1, r0
 8002d80:	7019      	strb	r1, [r3, #0]
 8002d82:	0a11      	lsrs	r1, r2, #8
 8002d84:	20ff      	movs	r0, #255	; 0xff
 8002d86:	4001      	ands	r1, r0
 8002d88:	000c      	movs	r4, r1
 8002d8a:	7859      	ldrb	r1, [r3, #1]
 8002d8c:	2000      	movs	r0, #0
 8002d8e:	4001      	ands	r1, r0
 8002d90:	1c08      	adds	r0, r1, #0
 8002d92:	1c21      	adds	r1, r4, #0
 8002d94:	4301      	orrs	r1, r0
 8002d96:	7059      	strb	r1, [r3, #1]
 8002d98:	0c11      	lsrs	r1, r2, #16
 8002d9a:	20ff      	movs	r0, #255	; 0xff
 8002d9c:	4001      	ands	r1, r0
 8002d9e:	000c      	movs	r4, r1
 8002da0:	7899      	ldrb	r1, [r3, #2]
 8002da2:	2000      	movs	r0, #0
 8002da4:	4001      	ands	r1, r0
 8002da6:	1c08      	adds	r0, r1, #0
 8002da8:	1c21      	adds	r1, r4, #0
 8002daa:	4301      	orrs	r1, r0
 8002dac:	7099      	strb	r1, [r3, #2]
 8002dae:	0e10      	lsrs	r0, r2, #24
 8002db0:	78da      	ldrb	r2, [r3, #3]
 8002db2:	2100      	movs	r1, #0
 8002db4:	400a      	ands	r2, r1
 8002db6:	1c11      	adds	r1, r2, #0
 8002db8:	1c02      	adds	r2, r0, #0
 8002dba:	430a      	orrs	r2, r1
 8002dbc:	70da      	strb	r2, [r3, #3]
 8002dbe:	4b05      	ldr	r3, [pc, #20]	; (8002dd4 <stateMsg_fill+0x4ac>)
 8002dc0:	681b      	ldr	r3, [r3, #0]
 8002dc2:	1c5a      	adds	r2, r3, #1
 8002dc4:	4b03      	ldr	r3, [pc, #12]	; (8002dd4 <stateMsg_fill+0x4ac>)
 8002dc6:	601a      	str	r2, [r3, #0]
 8002dc8:	46c0      	nop			; (mov r8, r8)
 8002dca:	46bd      	mov	sp, r7
 8002dcc:	b005      	add	sp, #20
 8002dce:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002dd0:	200000e0 	.word	0x200000e0
 8002dd4:	200002c0 	.word	0x200002c0

08002dd8 <stateMsg_send>:
 8002dd8:	b580      	push	{r7, lr}
 8002dda:	b086      	sub	sp, #24
 8002ddc:	af00      	add	r7, sp, #0
 8002dde:	6078      	str	r0, [r7, #4]
 8002de0:	2300      	movs	r3, #0
 8002de2:	617b      	str	r3, [r7, #20]
 8002de4:	687b      	ldr	r3, [r7, #4]
 8002de6:	60fb      	str	r3, [r7, #12]
 8002de8:	2313      	movs	r3, #19
 8002dea:	18fb      	adds	r3, r7, r3
 8002dec:	2276      	movs	r2, #118	; 0x76
 8002dee:	701a      	strb	r2, [r3, #0]
 8002df0:	4b15      	ldr	r3, [pc, #84]	; (8002e48 <stateMsg_send+0x70>)
 8002df2:	0018      	movs	r0, r3
 8002df4:	f7ff fcf1 	bl	80027da <LL_USART_ClearFlag_TC>
 8002df8:	e012      	b.n	8002e20 <stateMsg_send+0x48>
 8002dfa:	46c0      	nop			; (mov r8, r8)
 8002dfc:	4b12      	ldr	r3, [pc, #72]	; (8002e48 <stateMsg_send+0x70>)
 8002dfe:	0018      	movs	r0, r3
 8002e00:	f7ff fcdb 	bl	80027ba <LL_USART_IsActiveFlag_TXE>
 8002e04:	1e03      	subs	r3, r0, #0
 8002e06:	d0f9      	beq.n	8002dfc <stateMsg_send+0x24>
 8002e08:	697b      	ldr	r3, [r7, #20]
 8002e0a:	1c5a      	adds	r2, r3, #1
 8002e0c:	617a      	str	r2, [r7, #20]
 8002e0e:	001a      	movs	r2, r3
 8002e10:	68fb      	ldr	r3, [r7, #12]
 8002e12:	189b      	adds	r3, r3, r2
 8002e14:	781b      	ldrb	r3, [r3, #0]
 8002e16:	4a0c      	ldr	r2, [pc, #48]	; (8002e48 <stateMsg_send+0x70>)
 8002e18:	0019      	movs	r1, r3
 8002e1a:	0010      	movs	r0, r2
 8002e1c:	f7ff fce8 	bl	80027f0 <LL_USART_TransmitData8>
 8002e20:	2213      	movs	r2, #19
 8002e22:	18bb      	adds	r3, r7, r2
 8002e24:	781b      	ldrb	r3, [r3, #0]
 8002e26:	18ba      	adds	r2, r7, r2
 8002e28:	1e59      	subs	r1, r3, #1
 8002e2a:	7011      	strb	r1, [r2, #0]
 8002e2c:	2b00      	cmp	r3, #0
 8002e2e:	d1e4      	bne.n	8002dfa <stateMsg_send+0x22>
 8002e30:	46c0      	nop			; (mov r8, r8)
 8002e32:	4b05      	ldr	r3, [pc, #20]	; (8002e48 <stateMsg_send+0x70>)
 8002e34:	0018      	movs	r0, r3
 8002e36:	f7ff fcb0 	bl	800279a <LL_USART_IsActiveFlag_TC>
 8002e3a:	1e03      	subs	r3, r0, #0
 8002e3c:	d0f9      	beq.n	8002e32 <stateMsg_send+0x5a>
 8002e3e:	46c0      	nop			; (mov r8, r8)
 8002e40:	46bd      	mov	sp, r7
 8002e42:	b006      	add	sp, #24
 8002e44:	bd80      	pop	{r7, pc}
 8002e46:	46c0      	nop			; (mov r8, r8)
 8002e48:	40013800 	.word	0x40013800

08002e4c <NVIC_SetPriority>:
 8002e4c:	b590      	push	{r4, r7, lr}
 8002e4e:	b083      	sub	sp, #12
 8002e50:	af00      	add	r7, sp, #0
 8002e52:	0002      	movs	r2, r0
 8002e54:	6039      	str	r1, [r7, #0]
 8002e56:	1dfb      	adds	r3, r7, #7
 8002e58:	701a      	strb	r2, [r3, #0]
 8002e5a:	1dfb      	adds	r3, r7, #7
 8002e5c:	781b      	ldrb	r3, [r3, #0]
 8002e5e:	2b7f      	cmp	r3, #127	; 0x7f
 8002e60:	d932      	bls.n	8002ec8 <NVIC_SetPriority+0x7c>
 8002e62:	4a2f      	ldr	r2, [pc, #188]	; (8002f20 <NVIC_SetPriority+0xd4>)
 8002e64:	1dfb      	adds	r3, r7, #7
 8002e66:	781b      	ldrb	r3, [r3, #0]
 8002e68:	0019      	movs	r1, r3
 8002e6a:	230f      	movs	r3, #15
 8002e6c:	400b      	ands	r3, r1
 8002e6e:	3b08      	subs	r3, #8
 8002e70:	089b      	lsrs	r3, r3, #2
 8002e72:	3306      	adds	r3, #6
 8002e74:	009b      	lsls	r3, r3, #2
 8002e76:	18d3      	adds	r3, r2, r3
 8002e78:	3304      	adds	r3, #4
 8002e7a:	681b      	ldr	r3, [r3, #0]
 8002e7c:	1dfa      	adds	r2, r7, #7
 8002e7e:	7812      	ldrb	r2, [r2, #0]
 8002e80:	0011      	movs	r1, r2
 8002e82:	2203      	movs	r2, #3
 8002e84:	400a      	ands	r2, r1
 8002e86:	00d2      	lsls	r2, r2, #3
 8002e88:	21ff      	movs	r1, #255	; 0xff
 8002e8a:	4091      	lsls	r1, r2
 8002e8c:	000a      	movs	r2, r1
 8002e8e:	43d2      	mvns	r2, r2
 8002e90:	401a      	ands	r2, r3
 8002e92:	0011      	movs	r1, r2
 8002e94:	683b      	ldr	r3, [r7, #0]
 8002e96:	019b      	lsls	r3, r3, #6
 8002e98:	22ff      	movs	r2, #255	; 0xff
 8002e9a:	401a      	ands	r2, r3
 8002e9c:	1dfb      	adds	r3, r7, #7
 8002e9e:	781b      	ldrb	r3, [r3, #0]
 8002ea0:	0018      	movs	r0, r3
 8002ea2:	2303      	movs	r3, #3
 8002ea4:	4003      	ands	r3, r0
 8002ea6:	00db      	lsls	r3, r3, #3
 8002ea8:	409a      	lsls	r2, r3
 8002eaa:	481d      	ldr	r0, [pc, #116]	; (8002f20 <NVIC_SetPriority+0xd4>)
 8002eac:	1dfb      	adds	r3, r7, #7
 8002eae:	781b      	ldrb	r3, [r3, #0]
 8002eb0:	001c      	movs	r4, r3
 8002eb2:	230f      	movs	r3, #15
 8002eb4:	4023      	ands	r3, r4
 8002eb6:	3b08      	subs	r3, #8
 8002eb8:	089b      	lsrs	r3, r3, #2
 8002eba:	430a      	orrs	r2, r1
 8002ebc:	3306      	adds	r3, #6
 8002ebe:	009b      	lsls	r3, r3, #2
 8002ec0:	18c3      	adds	r3, r0, r3
 8002ec2:	3304      	adds	r3, #4
 8002ec4:	601a      	str	r2, [r3, #0]
 8002ec6:	e027      	b.n	8002f18 <NVIC_SetPriority+0xcc>
 8002ec8:	4a16      	ldr	r2, [pc, #88]	; (8002f24 <NVIC_SetPriority+0xd8>)
 8002eca:	1dfb      	adds	r3, r7, #7
 8002ecc:	781b      	ldrb	r3, [r3, #0]
 8002ece:	b25b      	sxtb	r3, r3
 8002ed0:	089b      	lsrs	r3, r3, #2
 8002ed2:	33c0      	adds	r3, #192	; 0xc0
 8002ed4:	009b      	lsls	r3, r3, #2
 8002ed6:	589b      	ldr	r3, [r3, r2]
 8002ed8:	1dfa      	adds	r2, r7, #7
 8002eda:	7812      	ldrb	r2, [r2, #0]
 8002edc:	0011      	movs	r1, r2
 8002ede:	2203      	movs	r2, #3
 8002ee0:	400a      	ands	r2, r1
 8002ee2:	00d2      	lsls	r2, r2, #3
 8002ee4:	21ff      	movs	r1, #255	; 0xff
 8002ee6:	4091      	lsls	r1, r2
 8002ee8:	000a      	movs	r2, r1
 8002eea:	43d2      	mvns	r2, r2
 8002eec:	401a      	ands	r2, r3
 8002eee:	0011      	movs	r1, r2
 8002ef0:	683b      	ldr	r3, [r7, #0]
 8002ef2:	019b      	lsls	r3, r3, #6
 8002ef4:	22ff      	movs	r2, #255	; 0xff
 8002ef6:	401a      	ands	r2, r3
 8002ef8:	1dfb      	adds	r3, r7, #7
 8002efa:	781b      	ldrb	r3, [r3, #0]
 8002efc:	0018      	movs	r0, r3
 8002efe:	2303      	movs	r3, #3
 8002f00:	4003      	ands	r3, r0
 8002f02:	00db      	lsls	r3, r3, #3
 8002f04:	409a      	lsls	r2, r3
 8002f06:	4807      	ldr	r0, [pc, #28]	; (8002f24 <NVIC_SetPriority+0xd8>)
 8002f08:	1dfb      	adds	r3, r7, #7
 8002f0a:	781b      	ldrb	r3, [r3, #0]
 8002f0c:	b25b      	sxtb	r3, r3
 8002f0e:	089b      	lsrs	r3, r3, #2
 8002f10:	430a      	orrs	r2, r1
 8002f12:	33c0      	adds	r3, #192	; 0xc0
 8002f14:	009b      	lsls	r3, r3, #2
 8002f16:	501a      	str	r2, [r3, r0]
 8002f18:	46c0      	nop			; (mov r8, r8)
 8002f1a:	46bd      	mov	sp, r7
 8002f1c:	b003      	add	sp, #12
 8002f1e:	bd90      	pop	{r4, r7, pc}
 8002f20:	e000ed00 	.word	0xe000ed00
 8002f24:	e000e100 	.word	0xe000e100

08002f28 <LL_InitTick>:
 8002f28:	b580      	push	{r7, lr}
 8002f2a:	b082      	sub	sp, #8
 8002f2c:	af00      	add	r7, sp, #0
 8002f2e:	6078      	str	r0, [r7, #4]
 8002f30:	6039      	str	r1, [r7, #0]
 8002f32:	6839      	ldr	r1, [r7, #0]
 8002f34:	6878      	ldr	r0, [r7, #4]
 8002f36:	f7fd f8e7 	bl	8000108 <__udivsi3>
 8002f3a:	0003      	movs	r3, r0
 8002f3c:	001a      	movs	r2, r3
 8002f3e:	4b06      	ldr	r3, [pc, #24]	; (8002f58 <LL_InitTick+0x30>)
 8002f40:	3a01      	subs	r2, #1
 8002f42:	605a      	str	r2, [r3, #4]
 8002f44:	4b04      	ldr	r3, [pc, #16]	; (8002f58 <LL_InitTick+0x30>)
 8002f46:	2200      	movs	r2, #0
 8002f48:	609a      	str	r2, [r3, #8]
 8002f4a:	4b03      	ldr	r3, [pc, #12]	; (8002f58 <LL_InitTick+0x30>)
 8002f4c:	2205      	movs	r2, #5
 8002f4e:	601a      	str	r2, [r3, #0]
 8002f50:	46c0      	nop			; (mov r8, r8)
 8002f52:	46bd      	mov	sp, r7
 8002f54:	b002      	add	sp, #8
 8002f56:	bd80      	pop	{r7, pc}
 8002f58:	e000e010 	.word	0xe000e010

08002f5c <LL_SYSTICK_EnableIT>:
 8002f5c:	b580      	push	{r7, lr}
 8002f5e:	af00      	add	r7, sp, #0
 8002f60:	4b04      	ldr	r3, [pc, #16]	; (8002f74 <LL_SYSTICK_EnableIT+0x18>)
 8002f62:	681a      	ldr	r2, [r3, #0]
 8002f64:	4b03      	ldr	r3, [pc, #12]	; (8002f74 <LL_SYSTICK_EnableIT+0x18>)
 8002f66:	2102      	movs	r1, #2
 8002f68:	430a      	orrs	r2, r1
 8002f6a:	601a      	str	r2, [r3, #0]
 8002f6c:	46c0      	nop			; (mov r8, r8)
 8002f6e:	46bd      	mov	sp, r7
 8002f70:	bd80      	pop	{r7, pc}
 8002f72:	46c0      	nop			; (mov r8, r8)
 8002f74:	e000e010 	.word	0xe000e010

08002f78 <SysTick_Handler>:
 8002f78:	b580      	push	{r7, lr}
 8002f7a:	af00      	add	r7, sp, #0
 8002f7c:	4b0c      	ldr	r3, [pc, #48]	; (8002fb0 <SysTick_Handler+0x38>)
 8002f7e:	681b      	ldr	r3, [r3, #0]
 8002f80:	1c5a      	adds	r2, r3, #1
 8002f82:	23fa      	movs	r3, #250	; 0xfa
 8002f84:	009b      	lsls	r3, r3, #2
 8002f86:	0019      	movs	r1, r3
 8002f88:	0010      	movs	r0, r2
 8002f8a:	f7fd f943 	bl	8000214 <__aeabi_uidivmod>
 8002f8e:	000b      	movs	r3, r1
 8002f90:	001a      	movs	r2, r3
 8002f92:	4b07      	ldr	r3, [pc, #28]	; (8002fb0 <SysTick_Handler+0x38>)
 8002f94:	601a      	str	r2, [r3, #0]
 8002f96:	4b06      	ldr	r3, [pc, #24]	; (8002fb0 <SysTick_Handler+0x38>)
 8002f98:	681b      	ldr	r3, [r3, #0]
 8002f9a:	2b00      	cmp	r3, #0
 8002f9c:	d104      	bne.n	8002fa8 <SysTick_Handler+0x30>
 8002f9e:	4b05      	ldr	r3, [pc, #20]	; (8002fb4 <SysTick_Handler+0x3c>)
 8002fa0:	681b      	ldr	r3, [r3, #0]
 8002fa2:	1c5a      	adds	r2, r3, #1
 8002fa4:	4b03      	ldr	r3, [pc, #12]	; (8002fb4 <SysTick_Handler+0x3c>)
 8002fa6:	601a      	str	r2, [r3, #0]
 8002fa8:	46c0      	nop			; (mov r8, r8)
 8002faa:	46bd      	mov	sp, r7
 8002fac:	bd80      	pop	{r7, pc}
 8002fae:	46c0      	nop			; (mov r8, r8)
 8002fb0:	200002c8 	.word	0x200002c8
 8002fb4:	200002c4 	.word	0x200002c4

08002fb8 <systick_config>:
 8002fb8:	b580      	push	{r7, lr}
 8002fba:	af00      	add	r7, sp, #0
 8002fbc:	23fa      	movs	r3, #250	; 0xfa
 8002fbe:	009b      	lsls	r3, r3, #2
 8002fc0:	4a07      	ldr	r2, [pc, #28]	; (8002fe0 <systick_config+0x28>)
 8002fc2:	0019      	movs	r1, r3
 8002fc4:	0010      	movs	r0, r2
 8002fc6:	f7ff ffaf 	bl	8002f28 <LL_InitTick>
 8002fca:	f7ff ffc7 	bl	8002f5c <LL_SYSTICK_EnableIT>
 8002fce:	2301      	movs	r3, #1
 8002fd0:	425b      	negs	r3, r3
 8002fd2:	2100      	movs	r1, #0
 8002fd4:	0018      	movs	r0, r3
 8002fd6:	f7ff ff39 	bl	8002e4c <NVIC_SetPriority>
 8002fda:	46c0      	nop			; (mov r8, r8)
 8002fdc:	46bd      	mov	sp, r7
 8002fde:	bd80      	pop	{r7, pc}
 8002fe0:	02dc6c00 	.word	0x02dc6c00

08002fe4 <getTime_s>:
 8002fe4:	b5b0      	push	{r4, r5, r7, lr}
 8002fe6:	b082      	sub	sp, #8
 8002fe8:	af00      	add	r7, sp, #0
 8002fea:	4b11      	ldr	r3, [pc, #68]	; (8003030 <getTime_s+0x4c>)
 8002fec:	681b      	ldr	r3, [r3, #0]
 8002fee:	607b      	str	r3, [r7, #4]
 8002ff0:	4b10      	ldr	r3, [pc, #64]	; (8003034 <getTime_s+0x50>)
 8002ff2:	681b      	ldr	r3, [r3, #0]
 8002ff4:	603b      	str	r3, [r7, #0]
 8002ff6:	6838      	ldr	r0, [r7, #0]
 8002ff8:	f7fd fdc0 	bl	8000b7c <__aeabi_ui2f>
 8002ffc:	1c04      	adds	r4, r0, #0
 8002ffe:	6878      	ldr	r0, [r7, #4]
 8003000:	f7fd fdbc 	bl	8000b7c <__aeabi_ui2f>
 8003004:	1c05      	adds	r5, r0, #0
 8003006:	23fa      	movs	r3, #250	; 0xfa
 8003008:	009b      	lsls	r3, r3, #2
 800300a:	0018      	movs	r0, r3
 800300c:	f7fd fdb6 	bl	8000b7c <__aeabi_ui2f>
 8003010:	1c03      	adds	r3, r0, #0
 8003012:	1c19      	adds	r1, r3, #0
 8003014:	1c28      	adds	r0, r5, #0
 8003016:	f7fd fadb 	bl	80005d0 <__aeabi_fdiv>
 800301a:	1c03      	adds	r3, r0, #0
 800301c:	1c19      	adds	r1, r3, #0
 800301e:	1c20      	adds	r0, r4, #0
 8003020:	f7fd f93c 	bl	800029c <__aeabi_fadd>
 8003024:	1c03      	adds	r3, r0, #0
 8003026:	1c18      	adds	r0, r3, #0
 8003028:	46bd      	mov	sp, r7
 800302a:	b002      	add	sp, #8
 800302c:	bdb0      	pop	{r4, r5, r7, pc}
 800302e:	46c0      	nop			; (mov r8, r8)
 8003030:	200002c8 	.word	0x200002c8
 8003034:	200002c4 	.word	0x200002c4

08003038 <get_gyro_staticShift>:
 8003038:	b5f0      	push	{r4, r5, r6, r7, lr}
 800303a:	b091      	sub	sp, #68	; 0x44
 800303c:	af00      	add	r7, sp, #0
 800303e:	6078      	str	r0, [r7, #4]
 8003040:	233f      	movs	r3, #63	; 0x3f
 8003042:	18fb      	adds	r3, r7, r3
 8003044:	2200      	movs	r2, #0
 8003046:	701a      	strb	r2, [r3, #0]
 8003048:	232e      	movs	r3, #46	; 0x2e
 800304a:	18fb      	adds	r3, r7, r3
 800304c:	22c8      	movs	r2, #200	; 0xc8
 800304e:	801a      	strh	r2, [r3, #0]
 8003050:	2300      	movs	r3, #0
 8003052:	63bb      	str	r3, [r7, #56]	; 0x38
 8003054:	e05e      	b.n	8003114 <get_gyro_staticShift+0xdc>
 8003056:	2128      	movs	r1, #40	; 0x28
 8003058:	187b      	adds	r3, r7, r1
 800305a:	2200      	movs	r2, #0
 800305c:	801a      	strh	r2, [r3, #0]
 800305e:	187b      	adds	r3, r7, r1
 8003060:	2200      	movs	r2, #0
 8003062:	805a      	strh	r2, [r3, #2]
 8003064:	187b      	adds	r3, r7, r1
 8003066:	2200      	movs	r2, #0
 8003068:	809a      	strh	r2, [r3, #4]
 800306a:	2020      	movs	r0, #32
 800306c:	183b      	adds	r3, r7, r0
 800306e:	2200      	movs	r2, #0
 8003070:	801a      	strh	r2, [r3, #0]
 8003072:	183b      	adds	r3, r7, r0
 8003074:	2200      	movs	r2, #0
 8003076:	805a      	strh	r2, [r3, #2]
 8003078:	183b      	adds	r3, r7, r0
 800307a:	2200      	movs	r2, #0
 800307c:	809a      	strh	r2, [r3, #4]
 800307e:	2508      	movs	r5, #8
 8003080:	197a      	adds	r2, r7, r5
 8003082:	2300      	movs	r3, #0
 8003084:	2400      	movs	r4, #0
 8003086:	6013      	str	r3, [r2, #0]
 8003088:	6054      	str	r4, [r2, #4]
 800308a:	197a      	adds	r2, r7, r5
 800308c:	2300      	movs	r3, #0
 800308e:	2400      	movs	r4, #0
 8003090:	6093      	str	r3, [r2, #8]
 8003092:	60d4      	str	r4, [r2, #12]
 8003094:	197a      	adds	r2, r7, r5
 8003096:	2300      	movs	r3, #0
 8003098:	2400      	movs	r4, #0
 800309a:	6113      	str	r3, [r2, #16]
 800309c:	6154      	str	r4, [r2, #20]
 800309e:	183a      	adds	r2, r7, r0
 80030a0:	187b      	adds	r3, r7, r1
 80030a2:	0011      	movs	r1, r2
 80030a4:	0018      	movs	r0, r3
 80030a6:	f002 f802 	bl	80050ae <mpu9255_readIMU>
 80030aa:	0002      	movs	r2, r0
 80030ac:	213f      	movs	r1, #63	; 0x3f
 80030ae:	187b      	adds	r3, r7, r1
 80030b0:	701a      	strb	r2, [r3, #0]
 80030b2:	187b      	adds	r3, r7, r1
 80030b4:	781b      	ldrb	r3, [r3, #0]
 80030b6:	2b00      	cmp	r3, #0
 80030b8:	d156      	bne.n	8003168 <get_gyro_staticShift+0x130>
 80030ba:	2308      	movs	r3, #8
 80030bc:	18fa      	adds	r2, r7, r3
 80030be:	2320      	movs	r3, #32
 80030c0:	18fb      	adds	r3, r7, r3
 80030c2:	0011      	movs	r1, r2
 80030c4:	0018      	movs	r0, r3
 80030c6:	f002 f92f 	bl	8005328 <mpu9255_recalcGyro>
 80030ca:	2300      	movs	r3, #0
 80030cc:	637b      	str	r3, [r7, #52]	; 0x34
 80030ce:	e01b      	b.n	8003108 <get_gyro_staticShift+0xd0>
 80030d0:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80030d2:	00db      	lsls	r3, r3, #3
 80030d4:	687a      	ldr	r2, [r7, #4]
 80030d6:	18d3      	adds	r3, r2, r3
 80030d8:	6818      	ldr	r0, [r3, #0]
 80030da:	6859      	ldr	r1, [r3, #4]
 80030dc:	2308      	movs	r3, #8
 80030de:	18fa      	adds	r2, r7, r3
 80030e0:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80030e2:	00db      	lsls	r3, r3, #3
 80030e4:	18d3      	adds	r3, r2, r3
 80030e6:	685c      	ldr	r4, [r3, #4]
 80030e8:	681b      	ldr	r3, [r3, #0]
 80030ea:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80030ec:	00d2      	lsls	r2, r2, #3
 80030ee:	687d      	ldr	r5, [r7, #4]
 80030f0:	18ad      	adds	r5, r5, r2
 80030f2:	001a      	movs	r2, r3
 80030f4:	0023      	movs	r3, r4
 80030f6:	f7fd fd81 	bl	8000bfc <__aeabi_dadd>
 80030fa:	0003      	movs	r3, r0
 80030fc:	000c      	movs	r4, r1
 80030fe:	602b      	str	r3, [r5, #0]
 8003100:	606c      	str	r4, [r5, #4]
 8003102:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8003104:	3301      	adds	r3, #1
 8003106:	637b      	str	r3, [r7, #52]	; 0x34
 8003108:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800310a:	2b02      	cmp	r3, #2
 800310c:	dde0      	ble.n	80030d0 <get_gyro_staticShift+0x98>
 800310e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8003110:	3301      	adds	r3, #1
 8003112:	63bb      	str	r3, [r7, #56]	; 0x38
 8003114:	232e      	movs	r3, #46	; 0x2e
 8003116:	18fb      	adds	r3, r7, r3
 8003118:	881b      	ldrh	r3, [r3, #0]
 800311a:	6bba      	ldr	r2, [r7, #56]	; 0x38
 800311c:	429a      	cmp	r2, r3
 800311e:	db9a      	blt.n	8003056 <get_gyro_staticShift+0x1e>
 8003120:	2300      	movs	r3, #0
 8003122:	633b      	str	r3, [r7, #48]	; 0x30
 8003124:	e01c      	b.n	8003160 <get_gyro_staticShift+0x128>
 8003126:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8003128:	00db      	lsls	r3, r3, #3
 800312a:	687a      	ldr	r2, [r7, #4]
 800312c:	18d3      	adds	r3, r2, r3
 800312e:	681c      	ldr	r4, [r3, #0]
 8003130:	685d      	ldr	r5, [r3, #4]
 8003132:	232e      	movs	r3, #46	; 0x2e
 8003134:	18fb      	adds	r3, r7, r3
 8003136:	881b      	ldrh	r3, [r3, #0]
 8003138:	0018      	movs	r0, r3
 800313a:	f7ff fa3f 	bl	80025bc <__aeabi_i2d>
 800313e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8003140:	00db      	lsls	r3, r3, #3
 8003142:	687a      	ldr	r2, [r7, #4]
 8003144:	18d6      	adds	r6, r2, r3
 8003146:	0002      	movs	r2, r0
 8003148:	000b      	movs	r3, r1
 800314a:	0020      	movs	r0, r4
 800314c:	0029      	movs	r1, r5
 800314e:	f7fe f871 	bl	8001234 <__aeabi_ddiv>
 8003152:	0003      	movs	r3, r0
 8003154:	000c      	movs	r4, r1
 8003156:	6033      	str	r3, [r6, #0]
 8003158:	6074      	str	r4, [r6, #4]
 800315a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800315c:	3301      	adds	r3, #1
 800315e:	633b      	str	r3, [r7, #48]	; 0x30
 8003160:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8003162:	2b02      	cmp	r3, #2
 8003164:	dddf      	ble.n	8003126 <get_gyro_staticShift+0xee>
 8003166:	e000      	b.n	800316a <get_gyro_staticShift+0x132>
 8003168:	46c0      	nop			; (mov r8, r8)
 800316a:	233f      	movs	r3, #63	; 0x3f
 800316c:	18fb      	adds	r3, r7, r3
 800316e:	781b      	ldrb	r3, [r3, #0]
 8003170:	0018      	movs	r0, r3
 8003172:	46bd      	mov	sp, r7
 8003174:	b011      	add	sp, #68	; 0x44
 8003176:	bdf0      	pop	{r4, r5, r6, r7, pc}

08003178 <get_accel_staticShift>:
 8003178:	b5f0      	push	{r4, r5, r6, r7, lr}
 800317a:	b0db      	sub	sp, #364	; 0x16c
 800317c:	af14      	add	r7, sp, #80	; 0x50
 800317e:	6478      	str	r0, [r7, #68]	; 0x44
 8003180:	6439      	str	r1, [r7, #64]	; 0x40
 8003182:	23d7      	movs	r3, #215	; 0xd7
 8003184:	2240      	movs	r2, #64	; 0x40
 8003186:	4694      	mov	ip, r2
 8003188:	44bc      	add	ip, r7
 800318a:	4463      	add	r3, ip
 800318c:	2200      	movs	r2, #0
 800318e:	701a      	strb	r2, [r3, #0]
 8003190:	23be      	movs	r3, #190	; 0xbe
 8003192:	2240      	movs	r2, #64	; 0x40
 8003194:	4694      	mov	ip, r2
 8003196:	44bc      	add	ip, r7
 8003198:	4463      	add	r3, ip
 800319a:	2264      	movs	r2, #100	; 0x64
 800319c:	801a      	strh	r2, [r3, #0]
 800319e:	2300      	movs	r3, #0
 80031a0:	22b8      	movs	r2, #184	; 0xb8
 80031a2:	2140      	movs	r1, #64	; 0x40
 80031a4:	468c      	mov	ip, r1
 80031a6:	44bc      	add	ip, r7
 80031a8:	4462      	add	r2, ip
 80031aa:	6013      	str	r3, [r2, #0]
 80031ac:	f7ff ff1a 	bl	8002fe4 <getTime_s>
 80031b0:	1c03      	adds	r3, r0, #0
 80031b2:	22d0      	movs	r2, #208	; 0xd0
 80031b4:	2140      	movs	r1, #64	; 0x40
 80031b6:	468c      	mov	ip, r1
 80031b8:	44bc      	add	ip, r7
 80031ba:	4462      	add	r2, ip
 80031bc:	6013      	str	r3, [r2, #0]
 80031be:	2300      	movs	r3, #0
 80031c0:	22cc      	movs	r2, #204	; 0xcc
 80031c2:	2140      	movs	r1, #64	; 0x40
 80031c4:	468c      	mov	ip, r1
 80031c6:	44bc      	add	ip, r7
 80031c8:	4462      	add	r2, ip
 80031ca:	6013      	str	r3, [r2, #0]
 80031cc:	e209      	b.n	80035e2 <get_accel_staticShift+0x46a>
 80031ce:	21b0      	movs	r1, #176	; 0xb0
 80031d0:	2640      	movs	r6, #64	; 0x40
 80031d2:	19bb      	adds	r3, r7, r6
 80031d4:	185b      	adds	r3, r3, r1
 80031d6:	2200      	movs	r2, #0
 80031d8:	801a      	strh	r2, [r3, #0]
 80031da:	19bb      	adds	r3, r7, r6
 80031dc:	185b      	adds	r3, r3, r1
 80031de:	2200      	movs	r2, #0
 80031e0:	805a      	strh	r2, [r3, #2]
 80031e2:	19bb      	adds	r3, r7, r6
 80031e4:	185b      	adds	r3, r3, r1
 80031e6:	2200      	movs	r2, #0
 80031e8:	809a      	strh	r2, [r3, #4]
 80031ea:	20a8      	movs	r0, #168	; 0xa8
 80031ec:	19bb      	adds	r3, r7, r6
 80031ee:	181b      	adds	r3, r3, r0
 80031f0:	2200      	movs	r2, #0
 80031f2:	801a      	strh	r2, [r3, #0]
 80031f4:	19bb      	adds	r3, r7, r6
 80031f6:	181b      	adds	r3, r3, r0
 80031f8:	2200      	movs	r2, #0
 80031fa:	805a      	strh	r2, [r3, #2]
 80031fc:	19bb      	adds	r3, r7, r6
 80031fe:	181b      	adds	r3, r3, r0
 8003200:	2200      	movs	r2, #0
 8003202:	809a      	strh	r2, [r3, #4]
 8003204:	24a0      	movs	r4, #160	; 0xa0
 8003206:	19bb      	adds	r3, r7, r6
 8003208:	191b      	adds	r3, r3, r4
 800320a:	2200      	movs	r2, #0
 800320c:	801a      	strh	r2, [r3, #0]
 800320e:	19bb      	adds	r3, r7, r6
 8003210:	191b      	adds	r3, r3, r4
 8003212:	2200      	movs	r2, #0
 8003214:	805a      	strh	r2, [r3, #2]
 8003216:	19bb      	adds	r3, r7, r6
 8003218:	191b      	adds	r3, r3, r4
 800321a:	2200      	movs	r2, #0
 800321c:	809a      	strh	r2, [r3, #4]
 800321e:	2588      	movs	r5, #136	; 0x88
 8003220:	19bb      	adds	r3, r7, r6
 8003222:	195a      	adds	r2, r3, r5
 8003224:	2300      	movs	r3, #0
 8003226:	2400      	movs	r4, #0
 8003228:	6013      	str	r3, [r2, #0]
 800322a:	6054      	str	r4, [r2, #4]
 800322c:	19bb      	adds	r3, r7, r6
 800322e:	195a      	adds	r2, r3, r5
 8003230:	2300      	movs	r3, #0
 8003232:	2400      	movs	r4, #0
 8003234:	6093      	str	r3, [r2, #8]
 8003236:	60d4      	str	r4, [r2, #12]
 8003238:	19bb      	adds	r3, r7, r6
 800323a:	195a      	adds	r2, r3, r5
 800323c:	2300      	movs	r3, #0
 800323e:	2400      	movs	r4, #0
 8003240:	6113      	str	r3, [r2, #16]
 8003242:	6154      	str	r4, [r2, #20]
 8003244:	2570      	movs	r5, #112	; 0x70
 8003246:	19bb      	adds	r3, r7, r6
 8003248:	195a      	adds	r2, r3, r5
 800324a:	2300      	movs	r3, #0
 800324c:	2400      	movs	r4, #0
 800324e:	6013      	str	r3, [r2, #0]
 8003250:	6054      	str	r4, [r2, #4]
 8003252:	19bb      	adds	r3, r7, r6
 8003254:	195a      	adds	r2, r3, r5
 8003256:	2300      	movs	r3, #0
 8003258:	2400      	movs	r4, #0
 800325a:	6093      	str	r3, [r2, #8]
 800325c:	60d4      	str	r4, [r2, #12]
 800325e:	19bb      	adds	r3, r7, r6
 8003260:	195a      	adds	r2, r3, r5
 8003262:	2300      	movs	r3, #0
 8003264:	2400      	movs	r4, #0
 8003266:	6113      	str	r3, [r2, #16]
 8003268:	6154      	str	r4, [r2, #20]
 800326a:	2558      	movs	r5, #88	; 0x58
 800326c:	19bb      	adds	r3, r7, r6
 800326e:	195a      	adds	r2, r3, r5
 8003270:	2300      	movs	r3, #0
 8003272:	2400      	movs	r4, #0
 8003274:	6013      	str	r3, [r2, #0]
 8003276:	6054      	str	r4, [r2, #4]
 8003278:	19bb      	adds	r3, r7, r6
 800327a:	195a      	adds	r2, r3, r5
 800327c:	2300      	movs	r3, #0
 800327e:	2400      	movs	r4, #0
 8003280:	6093      	str	r3, [r2, #8]
 8003282:	60d4      	str	r4, [r2, #12]
 8003284:	19bb      	adds	r3, r7, r6
 8003286:	195a      	adds	r2, r3, r5
 8003288:	2300      	movs	r3, #0
 800328a:	2400      	movs	r4, #0
 800328c:	6113      	str	r3, [r2, #16]
 800328e:	6154      	str	r4, [r2, #20]
 8003290:	2540      	movs	r5, #64	; 0x40
 8003292:	19bb      	adds	r3, r7, r6
 8003294:	195a      	adds	r2, r3, r5
 8003296:	2300      	movs	r3, #0
 8003298:	2400      	movs	r4, #0
 800329a:	6013      	str	r3, [r2, #0]
 800329c:	6054      	str	r4, [r2, #4]
 800329e:	19bb      	adds	r3, r7, r6
 80032a0:	195a      	adds	r2, r3, r5
 80032a2:	2300      	movs	r3, #0
 80032a4:	2400      	movs	r4, #0
 80032a6:	6093      	str	r3, [r2, #8]
 80032a8:	60d4      	str	r4, [r2, #12]
 80032aa:	19bb      	adds	r3, r7, r6
 80032ac:	195a      	adds	r2, r3, r5
 80032ae:	2300      	movs	r3, #0
 80032b0:	2400      	movs	r4, #0
 80032b2:	6113      	str	r3, [r2, #16]
 80032b4:	6154      	str	r4, [r2, #20]
 80032b6:	2528      	movs	r5, #40	; 0x28
 80032b8:	19bb      	adds	r3, r7, r6
 80032ba:	195a      	adds	r2, r3, r5
 80032bc:	2300      	movs	r3, #0
 80032be:	2400      	movs	r4, #0
 80032c0:	6013      	str	r3, [r2, #0]
 80032c2:	6054      	str	r4, [r2, #4]
 80032c4:	19bb      	adds	r3, r7, r6
 80032c6:	195a      	adds	r2, r3, r5
 80032c8:	2300      	movs	r3, #0
 80032ca:	2400      	movs	r4, #0
 80032cc:	6093      	str	r3, [r2, #8]
 80032ce:	60d4      	str	r4, [r2, #12]
 80032d0:	0034      	movs	r4, r6
 80032d2:	0026      	movs	r6, r4
 80032d4:	193b      	adds	r3, r7, r4
 80032d6:	195a      	adds	r2, r3, r5
 80032d8:	2300      	movs	r3, #0
 80032da:	2400      	movs	r4, #0
 80032dc:	6113      	str	r3, [r2, #16]
 80032de:	6154      	str	r4, [r2, #20]
 80032e0:	0034      	movs	r4, r6
 80032e2:	193b      	adds	r3, r7, r4
 80032e4:	181a      	adds	r2, r3, r0
 80032e6:	193b      	adds	r3, r7, r4
 80032e8:	185b      	adds	r3, r3, r1
 80032ea:	0011      	movs	r1, r2
 80032ec:	0018      	movs	r0, r3
 80032ee:	f001 fede 	bl	80050ae <mpu9255_readIMU>
 80032f2:	0002      	movs	r2, r0
 80032f4:	21d7      	movs	r1, #215	; 0xd7
 80032f6:	0020      	movs	r0, r4
 80032f8:	183b      	adds	r3, r7, r0
 80032fa:	185b      	adds	r3, r3, r1
 80032fc:	701a      	strb	r2, [r3, #0]
 80032fe:	183b      	adds	r3, r7, r0
 8003300:	185b      	adds	r3, r3, r1
 8003302:	781b      	ldrb	r3, [r3, #0]
 8003304:	2b00      	cmp	r3, #0
 8003306:	d000      	beq.n	800330a <get_accel_staticShift+0x192>
 8003308:	e1b8      	b.n	800367c <get_accel_staticShift+0x504>
 800330a:	23a0      	movs	r3, #160	; 0xa0
 800330c:	2240      	movs	r2, #64	; 0x40
 800330e:	4694      	mov	ip, r2
 8003310:	44bc      	add	ip, r7
 8003312:	4463      	add	r3, ip
 8003314:	0018      	movs	r0, r3
 8003316:	f001 ff20 	bl	800515a <mpu9255_readCompass>
 800331a:	0002      	movs	r2, r0
 800331c:	21d7      	movs	r1, #215	; 0xd7
 800331e:	2040      	movs	r0, #64	; 0x40
 8003320:	183b      	adds	r3, r7, r0
 8003322:	185b      	adds	r3, r3, r1
 8003324:	701a      	strb	r2, [r3, #0]
 8003326:	183b      	adds	r3, r7, r0
 8003328:	185b      	adds	r3, r3, r1
 800332a:	781b      	ldrb	r3, [r3, #0]
 800332c:	2b00      	cmp	r3, #0
 800332e:	d000      	beq.n	8003332 <get_accel_staticShift+0x1ba>
 8003330:	e1a6      	b.n	8003680 <get_accel_staticShift+0x508>
 8003332:	2358      	movs	r3, #88	; 0x58
 8003334:	2440      	movs	r4, #64	; 0x40
 8003336:	193a      	adds	r2, r7, r4
 8003338:	18d2      	adds	r2, r2, r3
 800333a:	23a8      	movs	r3, #168	; 0xa8
 800333c:	2140      	movs	r1, #64	; 0x40
 800333e:	468c      	mov	ip, r1
 8003340:	44bc      	add	ip, r7
 8003342:	4463      	add	r3, ip
 8003344:	0011      	movs	r1, r2
 8003346:	0018      	movs	r0, r3
 8003348:	f001 ffee 	bl	8005328 <mpu9255_recalcGyro>
 800334c:	2388      	movs	r3, #136	; 0x88
 800334e:	193a      	adds	r2, r7, r4
 8003350:	18d2      	adds	r2, r2, r3
 8003352:	23b0      	movs	r3, #176	; 0xb0
 8003354:	2140      	movs	r1, #64	; 0x40
 8003356:	468c      	mov	ip, r1
 8003358:	44bc      	add	ip, r7
 800335a:	4463      	add	r3, ip
 800335c:	0011      	movs	r1, r2
 800335e:	0018      	movs	r0, r3
 8003360:	f001 ff4e 	bl	8005200 <mpu9255_recalcAccel>
 8003364:	2340      	movs	r3, #64	; 0x40
 8003366:	193a      	adds	r2, r7, r4
 8003368:	18d2      	adds	r2, r2, r3
 800336a:	23a0      	movs	r3, #160	; 0xa0
 800336c:	2140      	movs	r1, #64	; 0x40
 800336e:	468c      	mov	ip, r1
 8003370:	44bc      	add	ip, r7
 8003372:	4463      	add	r3, ip
 8003374:	0011      	movs	r1, r2
 8003376:	0018      	movs	r0, r3
 8003378:	f002 f830 	bl	80053dc <mpu9255_recalcCompass>
 800337c:	f7ff fe32 	bl	8002fe4 <getTime_s>
 8003380:	1c03      	adds	r3, r0, #0
 8003382:	22b8      	movs	r2, #184	; 0xb8
 8003384:	2140      	movs	r1, #64	; 0x40
 8003386:	468c      	mov	ip, r1
 8003388:	44bc      	add	ip, r7
 800338a:	4462      	add	r2, ip
 800338c:	6013      	str	r3, [r2, #0]
 800338e:	2300      	movs	r3, #0
 8003390:	22c8      	movs	r2, #200	; 0xc8
 8003392:	2140      	movs	r1, #64	; 0x40
 8003394:	468c      	mov	ip, r1
 8003396:	44bc      	add	ip, r7
 8003398:	4462      	add	r2, ip
 800339a:	6013      	str	r3, [r2, #0]
 800339c:	e02a      	b.n	80033f4 <get_accel_staticShift+0x27c>
 800339e:	2658      	movs	r6, #88	; 0x58
 80033a0:	2440      	movs	r4, #64	; 0x40
 80033a2:	193b      	adds	r3, r7, r4
 80033a4:	199a      	adds	r2, r3, r6
 80033a6:	25c8      	movs	r5, #200	; 0xc8
 80033a8:	193b      	adds	r3, r7, r4
 80033aa:	195b      	adds	r3, r3, r5
 80033ac:	681b      	ldr	r3, [r3, #0]
 80033ae:	00db      	lsls	r3, r3, #3
 80033b0:	18d3      	adds	r3, r2, r3
 80033b2:	6818      	ldr	r0, [r3, #0]
 80033b4:	6859      	ldr	r1, [r3, #4]
 80033b6:	193b      	adds	r3, r7, r4
 80033b8:	195b      	adds	r3, r3, r5
 80033ba:	681b      	ldr	r3, [r3, #0]
 80033bc:	00db      	lsls	r3, r3, #3
 80033be:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 80033c0:	18d3      	adds	r3, r2, r3
 80033c2:	685c      	ldr	r4, [r3, #4]
 80033c4:	681b      	ldr	r3, [r3, #0]
 80033c6:	001a      	movs	r2, r3
 80033c8:	0023      	movs	r3, r4
 80033ca:	f7fe fdaf 	bl	8001f2c <__aeabi_dsub>
 80033ce:	0003      	movs	r3, r0
 80033d0:	000c      	movs	r4, r1
 80033d2:	2040      	movs	r0, #64	; 0x40
 80033d4:	183a      	adds	r2, r7, r0
 80033d6:	1991      	adds	r1, r2, r6
 80033d8:	183a      	adds	r2, r7, r0
 80033da:	1952      	adds	r2, r2, r5
 80033dc:	6812      	ldr	r2, [r2, #0]
 80033de:	00d2      	lsls	r2, r2, #3
 80033e0:	188a      	adds	r2, r1, r2
 80033e2:	6013      	str	r3, [r2, #0]
 80033e4:	6054      	str	r4, [r2, #4]
 80033e6:	183b      	adds	r3, r7, r0
 80033e8:	195b      	adds	r3, r3, r5
 80033ea:	681b      	ldr	r3, [r3, #0]
 80033ec:	3301      	adds	r3, #1
 80033ee:	183a      	adds	r2, r7, r0
 80033f0:	1952      	adds	r2, r2, r5
 80033f2:	6013      	str	r3, [r2, #0]
 80033f4:	23c8      	movs	r3, #200	; 0xc8
 80033f6:	2240      	movs	r2, #64	; 0x40
 80033f8:	4694      	mov	ip, r2
 80033fa:	44bc      	add	ip, r7
 80033fc:	4463      	add	r3, ip
 80033fe:	681b      	ldr	r3, [r3, #0]
 8003400:	2b02      	cmp	r3, #2
 8003402:	ddcc      	ble.n	800339e <get_accel_staticShift+0x226>
 8003404:	2308      	movs	r3, #8
 8003406:	2240      	movs	r2, #64	; 0x40
 8003408:	4694      	mov	ip, r2
 800340a:	44bc      	add	ip, r7
 800340c:	4463      	add	r3, ip
 800340e:	0018      	movs	r0, r3
 8003410:	2320      	movs	r3, #32
 8003412:	001a      	movs	r2, r3
 8003414:	2100      	movs	r1, #0
 8003416:	f005 fea2 	bl	800915e <memset>
 800341a:	2058      	movs	r0, #88	; 0x58
 800341c:	2440      	movs	r4, #64	; 0x40
 800341e:	0021      	movs	r1, r4
 8003420:	193b      	adds	r3, r7, r4
 8003422:	181b      	adds	r3, r3, r0
 8003424:	685c      	ldr	r4, [r3, #4]
 8003426:	681b      	ldr	r3, [r3, #0]
 8003428:	63bb      	str	r3, [r7, #56]	; 0x38
 800342a:	63fc      	str	r4, [r7, #60]	; 0x3c
 800342c:	000c      	movs	r4, r1
 800342e:	187b      	adds	r3, r7, r1
 8003430:	181b      	adds	r3, r3, r0
 8003432:	6899      	ldr	r1, [r3, #8]
 8003434:	68da      	ldr	r2, [r3, #12]
 8003436:	6339      	str	r1, [r7, #48]	; 0x30
 8003438:	637a      	str	r2, [r7, #52]	; 0x34
 800343a:	0022      	movs	r2, r4
 800343c:	0014      	movs	r4, r2
 800343e:	18bb      	adds	r3, r7, r2
 8003440:	181b      	adds	r3, r3, r0
 8003442:	6918      	ldr	r0, [r3, #16]
 8003444:	6959      	ldr	r1, [r3, #20]
 8003446:	62b8      	str	r0, [r7, #40]	; 0x28
 8003448:	62f9      	str	r1, [r7, #44]	; 0x2c
 800344a:	2688      	movs	r6, #136	; 0x88
 800344c:	0032      	movs	r2, r6
 800344e:	0021      	movs	r1, r4
 8003450:	187b      	adds	r3, r7, r1
 8003452:	199b      	adds	r3, r3, r6
 8003454:	681d      	ldr	r5, [r3, #0]
 8003456:	685e      	ldr	r6, [r3, #4]
 8003458:	623d      	str	r5, [r7, #32]
 800345a:	627e      	str	r6, [r7, #36]	; 0x24
 800345c:	0016      	movs	r6, r2
 800345e:	000a      	movs	r2, r1
 8003460:	18bb      	adds	r3, r7, r2
 8003462:	199b      	adds	r3, r3, r6
 8003464:	68dc      	ldr	r4, [r3, #12]
 8003466:	689b      	ldr	r3, [r3, #8]
 8003468:	61bb      	str	r3, [r7, #24]
 800346a:	61fc      	str	r4, [r7, #28]
 800346c:	0011      	movs	r1, r2
 800346e:	18bb      	adds	r3, r7, r2
 8003470:	199b      	adds	r3, r3, r6
 8003472:	691a      	ldr	r2, [r3, #16]
 8003474:	695b      	ldr	r3, [r3, #20]
 8003476:	613a      	str	r2, [r7, #16]
 8003478:	617b      	str	r3, [r7, #20]
 800347a:	2040      	movs	r0, #64	; 0x40
 800347c:	0004      	movs	r4, r0
 800347e:	000a      	movs	r2, r1
 8003480:	18bb      	adds	r3, r7, r2
 8003482:	181b      	adds	r3, r3, r0
 8003484:	6818      	ldr	r0, [r3, #0]
 8003486:	6859      	ldr	r1, [r3, #4]
 8003488:	60b8      	str	r0, [r7, #8]
 800348a:	60f9      	str	r1, [r7, #12]
 800348c:	0020      	movs	r0, r4
 800348e:	0014      	movs	r4, r2
 8003490:	193b      	adds	r3, r7, r4
 8003492:	181b      	adds	r3, r3, r0
 8003494:	6899      	ldr	r1, [r3, #8]
 8003496:	68da      	ldr	r2, [r3, #12]
 8003498:	6039      	str	r1, [r7, #0]
 800349a:	607a      	str	r2, [r7, #4]
 800349c:	193b      	adds	r3, r7, r4
 800349e:	181b      	adds	r3, r3, r0
 80034a0:	691d      	ldr	r5, [r3, #16]
 80034a2:	695e      	ldr	r6, [r3, #20]
 80034a4:	20d0      	movs	r0, #208	; 0xd0
 80034a6:	2340      	movs	r3, #64	; 0x40
 80034a8:	469c      	mov	ip, r3
 80034aa:	44bc      	add	ip, r7
 80034ac:	4460      	add	r0, ip
 80034ae:	6801      	ldr	r1, [r0, #0]
 80034b0:	20b8      	movs	r0, #184	; 0xb8
 80034b2:	2340      	movs	r3, #64	; 0x40
 80034b4:	469c      	mov	ip, r3
 80034b6:	44bc      	add	ip, r7
 80034b8:	4460      	add	r0, ip
 80034ba:	6800      	ldr	r0, [r0, #0]
 80034bc:	f7fd f99a 	bl	80007f4 <__aeabi_fsub>
 80034c0:	1c03      	adds	r3, r0, #0
 80034c2:	1c18      	adds	r0, r3, #0
 80034c4:	f7ff f8b4 	bl	8002630 <__aeabi_f2d>
 80034c8:	000a      	movs	r2, r1
 80034ca:	0001      	movs	r1, r0
 80034cc:	2308      	movs	r3, #8
 80034ce:	1938      	adds	r0, r7, r4
 80034d0:	18c0      	adds	r0, r0, r3
 80034d2:	2300      	movs	r3, #0
 80034d4:	4c70      	ldr	r4, [pc, #448]	; (8003698 <get_accel_staticShift+0x520>)
 80034d6:	9312      	str	r3, [sp, #72]	; 0x48
 80034d8:	9413      	str	r4, [sp, #76]	; 0x4c
 80034da:	9110      	str	r1, [sp, #64]	; 0x40
 80034dc:	9211      	str	r2, [sp, #68]	; 0x44
 80034de:	950e      	str	r5, [sp, #56]	; 0x38
 80034e0:	960f      	str	r6, [sp, #60]	; 0x3c
 80034e2:	6839      	ldr	r1, [r7, #0]
 80034e4:	687a      	ldr	r2, [r7, #4]
 80034e6:	910c      	str	r1, [sp, #48]	; 0x30
 80034e8:	920d      	str	r2, [sp, #52]	; 0x34
 80034ea:	68bc      	ldr	r4, [r7, #8]
 80034ec:	68fd      	ldr	r5, [r7, #12]
 80034ee:	940a      	str	r4, [sp, #40]	; 0x28
 80034f0:	950b      	str	r5, [sp, #44]	; 0x2c
 80034f2:	693a      	ldr	r2, [r7, #16]
 80034f4:	697b      	ldr	r3, [r7, #20]
 80034f6:	9208      	str	r2, [sp, #32]
 80034f8:	9309      	str	r3, [sp, #36]	; 0x24
 80034fa:	69bb      	ldr	r3, [r7, #24]
 80034fc:	69fc      	ldr	r4, [r7, #28]
 80034fe:	9306      	str	r3, [sp, #24]
 8003500:	9407      	str	r4, [sp, #28]
 8003502:	6a3d      	ldr	r5, [r7, #32]
 8003504:	6a7e      	ldr	r6, [r7, #36]	; 0x24
 8003506:	9504      	str	r5, [sp, #16]
 8003508:	9605      	str	r6, [sp, #20]
 800350a:	6abc      	ldr	r4, [r7, #40]	; 0x28
 800350c:	6afd      	ldr	r5, [r7, #44]	; 0x2c
 800350e:	9402      	str	r4, [sp, #8]
 8003510:	9503      	str	r5, [sp, #12]
 8003512:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8003514:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8003516:	9100      	str	r1, [sp, #0]
 8003518:	9201      	str	r2, [sp, #4]
 800351a:	6bba      	ldr	r2, [r7, #56]	; 0x38
 800351c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800351e:	f002 f96b 	bl	80057f8 <MadgwickAHRSupdate>
 8003522:	2270      	movs	r2, #112	; 0x70
 8003524:	2340      	movs	r3, #64	; 0x40
 8003526:	469c      	mov	ip, r3
 8003528:	44bc      	add	ip, r7
 800352a:	4462      	add	r2, ip
 800352c:	2308      	movs	r3, #8
 800352e:	2440      	movs	r4, #64	; 0x40
 8003530:	1939      	adds	r1, r7, r4
 8003532:	18c9      	adds	r1, r1, r3
 8003534:	2688      	movs	r6, #136	; 0x88
 8003536:	193b      	adds	r3, r7, r4
 8003538:	199b      	adds	r3, r3, r6
 800353a:	0018      	movs	r0, r3
 800353c:	f005 fd28 	bl	8008f90 <vect_rotate>
 8003540:	2300      	movs	r3, #0
 8003542:	22c4      	movs	r2, #196	; 0xc4
 8003544:	2140      	movs	r1, #64	; 0x40
 8003546:	468c      	mov	ip, r1
 8003548:	44bc      	add	ip, r7
 800354a:	4462      	add	r2, ip
 800354c:	6013      	str	r3, [r2, #0]
 800354e:	e029      	b.n	80035a4 <get_accel_staticShift+0x42c>
 8003550:	26c4      	movs	r6, #196	; 0xc4
 8003552:	2540      	movs	r5, #64	; 0x40
 8003554:	197b      	adds	r3, r7, r5
 8003556:	199b      	adds	r3, r3, r6
 8003558:	681b      	ldr	r3, [r3, #0]
 800355a:	00db      	lsls	r3, r3, #3
 800355c:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 800355e:	18d3      	adds	r3, r2, r3
 8003560:	6818      	ldr	r0, [r3, #0]
 8003562:	6859      	ldr	r1, [r3, #4]
 8003564:	2370      	movs	r3, #112	; 0x70
 8003566:	197a      	adds	r2, r7, r5
 8003568:	18d2      	adds	r2, r2, r3
 800356a:	197b      	adds	r3, r7, r5
 800356c:	199b      	adds	r3, r3, r6
 800356e:	681b      	ldr	r3, [r3, #0]
 8003570:	00db      	lsls	r3, r3, #3
 8003572:	18d3      	adds	r3, r2, r3
 8003574:	685c      	ldr	r4, [r3, #4]
 8003576:	681b      	ldr	r3, [r3, #0]
 8003578:	197a      	adds	r2, r7, r5
 800357a:	1992      	adds	r2, r2, r6
 800357c:	6812      	ldr	r2, [r2, #0]
 800357e:	00d2      	lsls	r2, r2, #3
 8003580:	6c3d      	ldr	r5, [r7, #64]	; 0x40
 8003582:	18ad      	adds	r5, r5, r2
 8003584:	001a      	movs	r2, r3
 8003586:	0023      	movs	r3, r4
 8003588:	f7fd fb38 	bl	8000bfc <__aeabi_dadd>
 800358c:	0003      	movs	r3, r0
 800358e:	000c      	movs	r4, r1
 8003590:	602b      	str	r3, [r5, #0]
 8003592:	606c      	str	r4, [r5, #4]
 8003594:	2540      	movs	r5, #64	; 0x40
 8003596:	197b      	adds	r3, r7, r5
 8003598:	199b      	adds	r3, r3, r6
 800359a:	681b      	ldr	r3, [r3, #0]
 800359c:	3301      	adds	r3, #1
 800359e:	197a      	adds	r2, r7, r5
 80035a0:	1992      	adds	r2, r2, r6
 80035a2:	6013      	str	r3, [r2, #0]
 80035a4:	23c4      	movs	r3, #196	; 0xc4
 80035a6:	2240      	movs	r2, #64	; 0x40
 80035a8:	4694      	mov	ip, r2
 80035aa:	44bc      	add	ip, r7
 80035ac:	4463      	add	r3, ip
 80035ae:	681b      	ldr	r3, [r3, #0]
 80035b0:	2b02      	cmp	r3, #2
 80035b2:	ddcd      	ble.n	8003550 <get_accel_staticShift+0x3d8>
 80035b4:	23b8      	movs	r3, #184	; 0xb8
 80035b6:	2240      	movs	r2, #64	; 0x40
 80035b8:	4694      	mov	ip, r2
 80035ba:	44bc      	add	ip, r7
 80035bc:	4463      	add	r3, ip
 80035be:	681b      	ldr	r3, [r3, #0]
 80035c0:	22d0      	movs	r2, #208	; 0xd0
 80035c2:	2140      	movs	r1, #64	; 0x40
 80035c4:	468c      	mov	ip, r1
 80035c6:	44bc      	add	ip, r7
 80035c8:	4462      	add	r2, ip
 80035ca:	6013      	str	r3, [r2, #0]
 80035cc:	22cc      	movs	r2, #204	; 0xcc
 80035ce:	2340      	movs	r3, #64	; 0x40
 80035d0:	18fb      	adds	r3, r7, r3
 80035d2:	189b      	adds	r3, r3, r2
 80035d4:	681b      	ldr	r3, [r3, #0]
 80035d6:	3301      	adds	r3, #1
 80035d8:	2140      	movs	r1, #64	; 0x40
 80035da:	468c      	mov	ip, r1
 80035dc:	44bc      	add	ip, r7
 80035de:	4462      	add	r2, ip
 80035e0:	6013      	str	r3, [r2, #0]
 80035e2:	23be      	movs	r3, #190	; 0xbe
 80035e4:	2240      	movs	r2, #64	; 0x40
 80035e6:	4694      	mov	ip, r2
 80035e8:	44bc      	add	ip, r7
 80035ea:	4463      	add	r3, ip
 80035ec:	881b      	ldrh	r3, [r3, #0]
 80035ee:	22cc      	movs	r2, #204	; 0xcc
 80035f0:	2140      	movs	r1, #64	; 0x40
 80035f2:	468c      	mov	ip, r1
 80035f4:	44bc      	add	ip, r7
 80035f6:	4462      	add	r2, ip
 80035f8:	6812      	ldr	r2, [r2, #0]
 80035fa:	429a      	cmp	r2, r3
 80035fc:	da00      	bge.n	8003600 <get_accel_staticShift+0x488>
 80035fe:	e5e6      	b.n	80031ce <get_accel_staticShift+0x56>
 8003600:	2300      	movs	r3, #0
 8003602:	22c0      	movs	r2, #192	; 0xc0
 8003604:	2140      	movs	r1, #64	; 0x40
 8003606:	468c      	mov	ip, r1
 8003608:	44bc      	add	ip, r7
 800360a:	4462      	add	r2, ip
 800360c:	6013      	str	r3, [r2, #0]
 800360e:	e02c      	b.n	800366a <get_accel_staticShift+0x4f2>
 8003610:	26c0      	movs	r6, #192	; 0xc0
 8003612:	2240      	movs	r2, #64	; 0x40
 8003614:	18bb      	adds	r3, r7, r2
 8003616:	199b      	adds	r3, r3, r6
 8003618:	681b      	ldr	r3, [r3, #0]
 800361a:	00db      	lsls	r3, r3, #3
 800361c:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 800361e:	18d3      	adds	r3, r2, r3
 8003620:	681c      	ldr	r4, [r3, #0]
 8003622:	685d      	ldr	r5, [r3, #4]
 8003624:	23be      	movs	r3, #190	; 0xbe
 8003626:	2140      	movs	r1, #64	; 0x40
 8003628:	468c      	mov	ip, r1
 800362a:	44bc      	add	ip, r7
 800362c:	4463      	add	r3, ip
 800362e:	881b      	ldrh	r3, [r3, #0]
 8003630:	0018      	movs	r0, r3
 8003632:	f7fe ffc3 	bl	80025bc <__aeabi_i2d>
 8003636:	2240      	movs	r2, #64	; 0x40
 8003638:	18bb      	adds	r3, r7, r2
 800363a:	199b      	adds	r3, r3, r6
 800363c:	681b      	ldr	r3, [r3, #0]
 800363e:	00db      	lsls	r3, r3, #3
 8003640:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8003642:	18d6      	adds	r6, r2, r3
 8003644:	0002      	movs	r2, r0
 8003646:	000b      	movs	r3, r1
 8003648:	0020      	movs	r0, r4
 800364a:	0029      	movs	r1, r5
 800364c:	f7fd fdf2 	bl	8001234 <__aeabi_ddiv>
 8003650:	0003      	movs	r3, r0
 8003652:	000c      	movs	r4, r1
 8003654:	6033      	str	r3, [r6, #0]
 8003656:	6074      	str	r4, [r6, #4]
 8003658:	26c0      	movs	r6, #192	; 0xc0
 800365a:	2240      	movs	r2, #64	; 0x40
 800365c:	18bb      	adds	r3, r7, r2
 800365e:	199b      	adds	r3, r3, r6
 8003660:	681b      	ldr	r3, [r3, #0]
 8003662:	3301      	adds	r3, #1
 8003664:	18ba      	adds	r2, r7, r2
 8003666:	1992      	adds	r2, r2, r6
 8003668:	6013      	str	r3, [r2, #0]
 800366a:	23c0      	movs	r3, #192	; 0xc0
 800366c:	2240      	movs	r2, #64	; 0x40
 800366e:	4694      	mov	ip, r2
 8003670:	44bc      	add	ip, r7
 8003672:	4463      	add	r3, ip
 8003674:	681b      	ldr	r3, [r3, #0]
 8003676:	2b02      	cmp	r3, #2
 8003678:	ddca      	ble.n	8003610 <get_accel_staticShift+0x498>
 800367a:	e002      	b.n	8003682 <get_accel_staticShift+0x50a>
 800367c:	46c0      	nop			; (mov r8, r8)
 800367e:	e000      	b.n	8003682 <get_accel_staticShift+0x50a>
 8003680:	46c0      	nop			; (mov r8, r8)
 8003682:	23d7      	movs	r3, #215	; 0xd7
 8003684:	2240      	movs	r2, #64	; 0x40
 8003686:	4694      	mov	ip, r2
 8003688:	44bc      	add	ip, r7
 800368a:	4463      	add	r3, ip
 800368c:	781b      	ldrb	r3, [r3, #0]
 800368e:	0018      	movs	r0, r3
 8003690:	46bd      	mov	sp, r7
 8003692:	b047      	add	sp, #284	; 0x11c
 8003694:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003696:	46c0      	nop			; (mov r8, r8)
 8003698:	40340000 	.word	0x40340000

0800369c <IMU_updateDataAll>:
 800369c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800369e:	b0ed      	sub	sp, #436	; 0x1b4
 80036a0:	af0e      	add	r7, sp, #56	; 0x38
 80036a2:	2300      	movs	r3, #0
 80036a4:	25a6      	movs	r5, #166	; 0xa6
 80036a6:	006d      	lsls	r5, r5, #1
 80036a8:	2628      	movs	r6, #40	; 0x28
 80036aa:	19ba      	adds	r2, r7, r6
 80036ac:	1952      	adds	r2, r2, r5
 80036ae:	6013      	str	r3, [r2, #0]
 80036b0:	2190      	movs	r1, #144	; 0x90
 80036b2:	0049      	lsls	r1, r1, #1
 80036b4:	19bb      	adds	r3, r7, r6
 80036b6:	185b      	adds	r3, r3, r1
 80036b8:	2200      	movs	r2, #0
 80036ba:	801a      	strh	r2, [r3, #0]
 80036bc:	19bb      	adds	r3, r7, r6
 80036be:	185b      	adds	r3, r3, r1
 80036c0:	2200      	movs	r2, #0
 80036c2:	805a      	strh	r2, [r3, #2]
 80036c4:	19bb      	adds	r3, r7, r6
 80036c6:	185b      	adds	r3, r3, r1
 80036c8:	2200      	movs	r2, #0
 80036ca:	809a      	strh	r2, [r3, #4]
 80036cc:	208c      	movs	r0, #140	; 0x8c
 80036ce:	0040      	lsls	r0, r0, #1
 80036d0:	19bb      	adds	r3, r7, r6
 80036d2:	181b      	adds	r3, r3, r0
 80036d4:	2200      	movs	r2, #0
 80036d6:	801a      	strh	r2, [r3, #0]
 80036d8:	19bb      	adds	r3, r7, r6
 80036da:	181b      	adds	r3, r3, r0
 80036dc:	2200      	movs	r2, #0
 80036de:	805a      	strh	r2, [r3, #2]
 80036e0:	19bb      	adds	r3, r7, r6
 80036e2:	181b      	adds	r3, r3, r0
 80036e4:	2200      	movs	r2, #0
 80036e6:	809a      	strh	r2, [r3, #4]
 80036e8:	2488      	movs	r4, #136	; 0x88
 80036ea:	0064      	lsls	r4, r4, #1
 80036ec:	19bb      	adds	r3, r7, r6
 80036ee:	191b      	adds	r3, r3, r4
 80036f0:	2200      	movs	r2, #0
 80036f2:	801a      	strh	r2, [r3, #0]
 80036f4:	19bb      	adds	r3, r7, r6
 80036f6:	191b      	adds	r3, r3, r4
 80036f8:	2200      	movs	r2, #0
 80036fa:	805a      	strh	r2, [r3, #2]
 80036fc:	19bb      	adds	r3, r7, r6
 80036fe:	191b      	adds	r3, r3, r4
 8003700:	2200      	movs	r2, #0
 8003702:	809a      	strh	r2, [r3, #4]
 8003704:	26f8      	movs	r6, #248	; 0xf8
 8003706:	2428      	movs	r4, #40	; 0x28
 8003708:	193b      	adds	r3, r7, r4
 800370a:	199a      	adds	r2, r3, r6
 800370c:	2300      	movs	r3, #0
 800370e:	2400      	movs	r4, #0
 8003710:	6013      	str	r3, [r2, #0]
 8003712:	6054      	str	r4, [r2, #4]
 8003714:	2428      	movs	r4, #40	; 0x28
 8003716:	193b      	adds	r3, r7, r4
 8003718:	199a      	adds	r2, r3, r6
 800371a:	2300      	movs	r3, #0
 800371c:	2400      	movs	r4, #0
 800371e:	6093      	str	r3, [r2, #8]
 8003720:	60d4      	str	r4, [r2, #12]
 8003722:	2428      	movs	r4, #40	; 0x28
 8003724:	193b      	adds	r3, r7, r4
 8003726:	199a      	adds	r2, r3, r6
 8003728:	2300      	movs	r3, #0
 800372a:	2400      	movs	r4, #0
 800372c:	6113      	str	r3, [r2, #16]
 800372e:	6154      	str	r4, [r2, #20]
 8003730:	26e0      	movs	r6, #224	; 0xe0
 8003732:	2428      	movs	r4, #40	; 0x28
 8003734:	193b      	adds	r3, r7, r4
 8003736:	199a      	adds	r2, r3, r6
 8003738:	2300      	movs	r3, #0
 800373a:	2400      	movs	r4, #0
 800373c:	6013      	str	r3, [r2, #0]
 800373e:	6054      	str	r4, [r2, #4]
 8003740:	2428      	movs	r4, #40	; 0x28
 8003742:	193b      	adds	r3, r7, r4
 8003744:	199a      	adds	r2, r3, r6
 8003746:	2300      	movs	r3, #0
 8003748:	2400      	movs	r4, #0
 800374a:	6093      	str	r3, [r2, #8]
 800374c:	60d4      	str	r4, [r2, #12]
 800374e:	2428      	movs	r4, #40	; 0x28
 8003750:	193b      	adds	r3, r7, r4
 8003752:	199a      	adds	r2, r3, r6
 8003754:	2300      	movs	r3, #0
 8003756:	2400      	movs	r4, #0
 8003758:	6113      	str	r3, [r2, #16]
 800375a:	6154      	str	r4, [r2, #20]
 800375c:	26c8      	movs	r6, #200	; 0xc8
 800375e:	2428      	movs	r4, #40	; 0x28
 8003760:	193b      	adds	r3, r7, r4
 8003762:	199a      	adds	r2, r3, r6
 8003764:	2300      	movs	r3, #0
 8003766:	2400      	movs	r4, #0
 8003768:	6013      	str	r3, [r2, #0]
 800376a:	6054      	str	r4, [r2, #4]
 800376c:	2428      	movs	r4, #40	; 0x28
 800376e:	193b      	adds	r3, r7, r4
 8003770:	199a      	adds	r2, r3, r6
 8003772:	2300      	movs	r3, #0
 8003774:	2400      	movs	r4, #0
 8003776:	6093      	str	r3, [r2, #8]
 8003778:	60d4      	str	r4, [r2, #12]
 800377a:	2428      	movs	r4, #40	; 0x28
 800377c:	193b      	adds	r3, r7, r4
 800377e:	199a      	adds	r2, r3, r6
 8003780:	2300      	movs	r3, #0
 8003782:	2400      	movs	r4, #0
 8003784:	6113      	str	r3, [r2, #16]
 8003786:	6154      	str	r4, [r2, #20]
 8003788:	2428      	movs	r4, #40	; 0x28
 800378a:	193b      	adds	r3, r7, r4
 800378c:	181a      	adds	r2, r3, r0
 800378e:	193b      	adds	r3, r7, r4
 8003790:	185b      	adds	r3, r3, r1
 8003792:	0011      	movs	r1, r2
 8003794:	0018      	movs	r0, r3
 8003796:	f001 fc8a 	bl	80050ae <mpu9255_readIMU>
 800379a:	0003      	movs	r3, r0
 800379c:	193a      	adds	r2, r7, r4
 800379e:	1952      	adds	r2, r2, r5
 80037a0:	6013      	str	r3, [r2, #0]
 80037a2:	193b      	adds	r3, r7, r4
 80037a4:	195b      	adds	r3, r3, r5
 80037a6:	681b      	ldr	r3, [r3, #0]
 80037a8:	2b00      	cmp	r3, #0
 80037aa:	d001      	beq.n	80037b0 <IMU_updateDataAll+0x114>
 80037ac:	f000 fc02 	bl	8003fb4 <IMU_updateDataAll+0x918>
 80037b0:	2388      	movs	r3, #136	; 0x88
 80037b2:	005b      	lsls	r3, r3, #1
 80037b4:	2228      	movs	r2, #40	; 0x28
 80037b6:	4694      	mov	ip, r2
 80037b8:	44bc      	add	ip, r7
 80037ba:	4463      	add	r3, ip
 80037bc:	0018      	movs	r0, r3
 80037be:	f001 fccc 	bl	800515a <mpu9255_readCompass>
 80037c2:	0003      	movs	r3, r0
 80037c4:	22a6      	movs	r2, #166	; 0xa6
 80037c6:	0052      	lsls	r2, r2, #1
 80037c8:	2028      	movs	r0, #40	; 0x28
 80037ca:	1839      	adds	r1, r7, r0
 80037cc:	1889      	adds	r1, r1, r2
 80037ce:	600b      	str	r3, [r1, #0]
 80037d0:	183b      	adds	r3, r7, r0
 80037d2:	189b      	adds	r3, r3, r2
 80037d4:	681b      	ldr	r3, [r3, #0]
 80037d6:	2b00      	cmp	r3, #0
 80037d8:	d001      	beq.n	80037de <IMU_updateDataAll+0x142>
 80037da:	f000 fbed 	bl	8003fb8 <IMU_updateDataAll+0x91c>
 80037de:	23f8      	movs	r3, #248	; 0xf8
 80037e0:	2428      	movs	r4, #40	; 0x28
 80037e2:	193a      	adds	r2, r7, r4
 80037e4:	18d2      	adds	r2, r2, r3
 80037e6:	2390      	movs	r3, #144	; 0x90
 80037e8:	005b      	lsls	r3, r3, #1
 80037ea:	2128      	movs	r1, #40	; 0x28
 80037ec:	468c      	mov	ip, r1
 80037ee:	44bc      	add	ip, r7
 80037f0:	4463      	add	r3, ip
 80037f2:	0011      	movs	r1, r2
 80037f4:	0018      	movs	r0, r3
 80037f6:	f001 fd03 	bl	8005200 <mpu9255_recalcAccel>
 80037fa:	23e0      	movs	r3, #224	; 0xe0
 80037fc:	193a      	adds	r2, r7, r4
 80037fe:	18d2      	adds	r2, r2, r3
 8003800:	238c      	movs	r3, #140	; 0x8c
 8003802:	005b      	lsls	r3, r3, #1
 8003804:	2128      	movs	r1, #40	; 0x28
 8003806:	468c      	mov	ip, r1
 8003808:	44bc      	add	ip, r7
 800380a:	4463      	add	r3, ip
 800380c:	0011      	movs	r1, r2
 800380e:	0018      	movs	r0, r3
 8003810:	f001 fd8a 	bl	8005328 <mpu9255_recalcGyro>
 8003814:	23c8      	movs	r3, #200	; 0xc8
 8003816:	193a      	adds	r2, r7, r4
 8003818:	18d2      	adds	r2, r2, r3
 800381a:	2388      	movs	r3, #136	; 0x88
 800381c:	005b      	lsls	r3, r3, #1
 800381e:	2128      	movs	r1, #40	; 0x28
 8003820:	468c      	mov	ip, r1
 8003822:	44bc      	add	ip, r7
 8003824:	4463      	add	r3, ip
 8003826:	0011      	movs	r1, r2
 8003828:	0018      	movs	r0, r3
 800382a:	f001 fdd7 	bl	80053dc <mpu9255_recalcCompass>
 800382e:	f7ff fbd9 	bl	8002fe4 <getTime_s>
 8003832:	1c03      	adds	r3, r0, #0
 8003834:	229a      	movs	r2, #154	; 0x9a
 8003836:	0052      	lsls	r2, r2, #1
 8003838:	1939      	adds	r1, r7, r4
 800383a:	1889      	adds	r1, r1, r2
 800383c:	600b      	str	r3, [r1, #0]
 800383e:	4bab      	ldr	r3, [pc, #684]	; (8003aec <IMU_updateDataAll+0x450>)
 8003840:	2128      	movs	r1, #40	; 0x28
 8003842:	468c      	mov	ip, r1
 8003844:	44bc      	add	ip, r7
 8003846:	4462      	add	r2, ip
 8003848:	6812      	ldr	r2, [r2, #0]
 800384a:	601a      	str	r2, [r3, #0]
 800384c:	2300      	movs	r3, #0
 800384e:	22a4      	movs	r2, #164	; 0xa4
 8003850:	0052      	lsls	r2, r2, #1
 8003852:	2128      	movs	r1, #40	; 0x28
 8003854:	468c      	mov	ip, r1
 8003856:	44bc      	add	ip, r7
 8003858:	4462      	add	r2, ip
 800385a:	6013      	str	r3, [r2, #0]
 800385c:	e064      	b.n	8003928 <IMU_updateDataAll+0x28c>
 800385e:	23f8      	movs	r3, #248	; 0xf8
 8003860:	2028      	movs	r0, #40	; 0x28
 8003862:	183a      	adds	r2, r7, r0
 8003864:	18d2      	adds	r2, r2, r3
 8003866:	25a4      	movs	r5, #164	; 0xa4
 8003868:	006d      	lsls	r5, r5, #1
 800386a:	183b      	adds	r3, r7, r0
 800386c:	195b      	adds	r3, r3, r5
 800386e:	681b      	ldr	r3, [r3, #0]
 8003870:	00db      	lsls	r3, r3, #3
 8003872:	18d3      	adds	r3, r2, r3
 8003874:	685c      	ldr	r4, [r3, #4]
 8003876:	681b      	ldr	r3, [r3, #0]
 8003878:	499d      	ldr	r1, [pc, #628]	; (8003af0 <IMU_updateDataAll+0x454>)
 800387a:	183a      	adds	r2, r7, r0
 800387c:	1952      	adds	r2, r2, r5
 800387e:	6812      	ldr	r2, [r2, #0]
 8003880:	00d2      	lsls	r2, r2, #3
 8003882:	188a      	adds	r2, r1, r2
 8003884:	6013      	str	r3, [r2, #0]
 8003886:	6054      	str	r4, [r2, #4]
 8003888:	26e0      	movs	r6, #224	; 0xe0
 800388a:	183b      	adds	r3, r7, r0
 800388c:	199a      	adds	r2, r3, r6
 800388e:	0004      	movs	r4, r0
 8003890:	183b      	adds	r3, r7, r0
 8003892:	195b      	adds	r3, r3, r5
 8003894:	681b      	ldr	r3, [r3, #0]
 8003896:	00db      	lsls	r3, r3, #3
 8003898:	18d3      	adds	r3, r2, r3
 800389a:	6818      	ldr	r0, [r3, #0]
 800389c:	6859      	ldr	r1, [r3, #4]
 800389e:	4a93      	ldr	r2, [pc, #588]	; (8003aec <IMU_updateDataAll+0x450>)
 80038a0:	193b      	adds	r3, r7, r4
 80038a2:	195b      	adds	r3, r3, r5
 80038a4:	681b      	ldr	r3, [r3, #0]
 80038a6:	3301      	adds	r3, #1
 80038a8:	00db      	lsls	r3, r3, #3
 80038aa:	18d3      	adds	r3, r2, r3
 80038ac:	685c      	ldr	r4, [r3, #4]
 80038ae:	681b      	ldr	r3, [r3, #0]
 80038b0:	001a      	movs	r2, r3
 80038b2:	0023      	movs	r3, r4
 80038b4:	f7fe fb3a 	bl	8001f2c <__aeabi_dsub>
 80038b8:	0003      	movs	r3, r0
 80038ba:	000c      	movs	r4, r1
 80038bc:	2028      	movs	r0, #40	; 0x28
 80038be:	183a      	adds	r2, r7, r0
 80038c0:	1991      	adds	r1, r2, r6
 80038c2:	183a      	adds	r2, r7, r0
 80038c4:	1952      	adds	r2, r2, r5
 80038c6:	6812      	ldr	r2, [r2, #0]
 80038c8:	00d2      	lsls	r2, r2, #3
 80038ca:	188a      	adds	r2, r1, r2
 80038cc:	6013      	str	r3, [r2, #0]
 80038ce:	6054      	str	r4, [r2, #4]
 80038d0:	183b      	adds	r3, r7, r0
 80038d2:	199a      	adds	r2, r3, r6
 80038d4:	183b      	adds	r3, r7, r0
 80038d6:	195b      	adds	r3, r3, r5
 80038d8:	681b      	ldr	r3, [r3, #0]
 80038da:	00db      	lsls	r3, r3, #3
 80038dc:	18d3      	adds	r3, r2, r3
 80038de:	685c      	ldr	r4, [r3, #4]
 80038e0:	681b      	ldr	r3, [r3, #0]
 80038e2:	4983      	ldr	r1, [pc, #524]	; (8003af0 <IMU_updateDataAll+0x454>)
 80038e4:	183a      	adds	r2, r7, r0
 80038e6:	1952      	adds	r2, r2, r5
 80038e8:	6812      	ldr	r2, [r2, #0]
 80038ea:	3203      	adds	r2, #3
 80038ec:	00d2      	lsls	r2, r2, #3
 80038ee:	188a      	adds	r2, r1, r2
 80038f0:	6013      	str	r3, [r2, #0]
 80038f2:	6054      	str	r4, [r2, #4]
 80038f4:	23c8      	movs	r3, #200	; 0xc8
 80038f6:	183a      	adds	r2, r7, r0
 80038f8:	18d2      	adds	r2, r2, r3
 80038fa:	183b      	adds	r3, r7, r0
 80038fc:	195b      	adds	r3, r3, r5
 80038fe:	681b      	ldr	r3, [r3, #0]
 8003900:	00db      	lsls	r3, r3, #3
 8003902:	18d3      	adds	r3, r2, r3
 8003904:	685c      	ldr	r4, [r3, #4]
 8003906:	681b      	ldr	r3, [r3, #0]
 8003908:	4979      	ldr	r1, [pc, #484]	; (8003af0 <IMU_updateDataAll+0x454>)
 800390a:	183a      	adds	r2, r7, r0
 800390c:	1952      	adds	r2, r2, r5
 800390e:	6812      	ldr	r2, [r2, #0]
 8003910:	3206      	adds	r2, #6
 8003912:	00d2      	lsls	r2, r2, #3
 8003914:	188a      	adds	r2, r1, r2
 8003916:	6013      	str	r3, [r2, #0]
 8003918:	6054      	str	r4, [r2, #4]
 800391a:	183b      	adds	r3, r7, r0
 800391c:	195b      	adds	r3, r3, r5
 800391e:	681b      	ldr	r3, [r3, #0]
 8003920:	3301      	adds	r3, #1
 8003922:	183a      	adds	r2, r7, r0
 8003924:	1952      	adds	r2, r2, r5
 8003926:	6013      	str	r3, [r2, #0]
 8003928:	23a4      	movs	r3, #164	; 0xa4
 800392a:	005b      	lsls	r3, r3, #1
 800392c:	2228      	movs	r2, #40	; 0x28
 800392e:	4694      	mov	ip, r2
 8003930:	44bc      	add	ip, r7
 8003932:	4463      	add	r3, ip
 8003934:	681b      	ldr	r3, [r3, #0]
 8003936:	2b02      	cmp	r3, #2
 8003938:	dd91      	ble.n	800385e <IMU_updateDataAll+0x1c2>
 800393a:	21a8      	movs	r1, #168	; 0xa8
 800393c:	2428      	movs	r4, #40	; 0x28
 800393e:	193b      	adds	r3, r7, r4
 8003940:	185b      	adds	r3, r3, r1
 8003942:	0018      	movs	r0, r3
 8003944:	2320      	movs	r3, #32
 8003946:	001a      	movs	r2, r3
 8003948:	2100      	movs	r1, #0
 800394a:	f005 fc08 	bl	800915e <memset>
 800394e:	4b69      	ldr	r3, [pc, #420]	; (8003af4 <IMU_updateDataAll+0x458>)
 8003950:	681b      	ldr	r3, [r3, #0]
 8003952:	1c19      	adds	r1, r3, #0
 8003954:	239a      	movs	r3, #154	; 0x9a
 8003956:	005b      	lsls	r3, r3, #1
 8003958:	2228      	movs	r2, #40	; 0x28
 800395a:	4694      	mov	ip, r2
 800395c:	44bc      	add	ip, r7
 800395e:	4463      	add	r3, ip
 8003960:	6818      	ldr	r0, [r3, #0]
 8003962:	f7fc ff47 	bl	80007f4 <__aeabi_fsub>
 8003966:	1c03      	adds	r3, r0, #0
 8003968:	2298      	movs	r2, #152	; 0x98
 800396a:	0052      	lsls	r2, r2, #1
 800396c:	0021      	movs	r1, r4
 800396e:	1878      	adds	r0, r7, r1
 8003970:	1880      	adds	r0, r0, r2
 8003972:	6003      	str	r3, [r0, #0]
 8003974:	2300      	movs	r3, #0
 8003976:	4c60      	ldr	r4, [pc, #384]	; (8003af8 <IMU_updateDataAll+0x45c>)
 8003978:	2094      	movs	r0, #148	; 0x94
 800397a:	0040      	lsls	r0, r0, #1
 800397c:	2228      	movs	r2, #40	; 0x28
 800397e:	4694      	mov	ip, r2
 8003980:	44bc      	add	ip, r7
 8003982:	4460      	add	r0, ip
 8003984:	6003      	str	r3, [r0, #0]
 8003986:	6044      	str	r4, [r0, #4]
 8003988:	20e0      	movs	r0, #224	; 0xe0
 800398a:	000c      	movs	r4, r1
 800398c:	0021      	movs	r1, r4
 800398e:	193b      	adds	r3, r7, r4
 8003990:	181b      	adds	r3, r3, r0
 8003992:	685c      	ldr	r4, [r3, #4]
 8003994:	681b      	ldr	r3, [r3, #0]
 8003996:	623b      	str	r3, [r7, #32]
 8003998:	627c      	str	r4, [r7, #36]	; 0x24
 800399a:	000c      	movs	r4, r1
 800399c:	193b      	adds	r3, r7, r4
 800399e:	181b      	adds	r3, r3, r0
 80039a0:	689d      	ldr	r5, [r3, #8]
 80039a2:	68de      	ldr	r6, [r3, #12]
 80039a4:	193b      	adds	r3, r7, r4
 80039a6:	181b      	adds	r3, r3, r0
 80039a8:	6919      	ldr	r1, [r3, #16]
 80039aa:	695a      	ldr	r2, [r3, #20]
 80039ac:	61b9      	str	r1, [r7, #24]
 80039ae:	61fa      	str	r2, [r7, #28]
 80039b0:	20f8      	movs	r0, #248	; 0xf8
 80039b2:	0002      	movs	r2, r0
 80039b4:	193b      	adds	r3, r7, r4
 80039b6:	181b      	adds	r3, r3, r0
 80039b8:	6818      	ldr	r0, [r3, #0]
 80039ba:	6859      	ldr	r1, [r3, #4]
 80039bc:	6138      	str	r0, [r7, #16]
 80039be:	6179      	str	r1, [r7, #20]
 80039c0:	0010      	movs	r0, r2
 80039c2:	0021      	movs	r1, r4
 80039c4:	187b      	adds	r3, r7, r1
 80039c6:	189b      	adds	r3, r3, r2
 80039c8:	689a      	ldr	r2, [r3, #8]
 80039ca:	68db      	ldr	r3, [r3, #12]
 80039cc:	60ba      	str	r2, [r7, #8]
 80039ce:	60fb      	str	r3, [r7, #12]
 80039d0:	187b      	adds	r3, r7, r1
 80039d2:	181b      	adds	r3, r3, r0
 80039d4:	6918      	ldr	r0, [r3, #16]
 80039d6:	6959      	ldr	r1, [r3, #20]
 80039d8:	6038      	str	r0, [r7, #0]
 80039da:	6079      	str	r1, [r7, #4]
 80039dc:	2498      	movs	r4, #152	; 0x98
 80039de:	0064      	lsls	r4, r4, #1
 80039e0:	2328      	movs	r3, #40	; 0x28
 80039e2:	469c      	mov	ip, r3
 80039e4:	44bc      	add	ip, r7
 80039e6:	4464      	add	r4, ip
 80039e8:	6820      	ldr	r0, [r4, #0]
 80039ea:	f7fe fe21 	bl	8002630 <__aeabi_f2d>
 80039ee:	000a      	movs	r2, r1
 80039f0:	0001      	movs	r1, r0
 80039f2:	24a8      	movs	r4, #168	; 0xa8
 80039f4:	2028      	movs	r0, #40	; 0x28
 80039f6:	183b      	adds	r3, r7, r0
 80039f8:	1918      	adds	r0, r3, r4
 80039fa:	2300      	movs	r3, #0
 80039fc:	4c3e      	ldr	r4, [pc, #248]	; (8003af8 <IMU_updateDataAll+0x45c>)
 80039fe:	930c      	str	r3, [sp, #48]	; 0x30
 8003a00:	940d      	str	r4, [sp, #52]	; 0x34
 8003a02:	910a      	str	r1, [sp, #40]	; 0x28
 8003a04:	920b      	str	r2, [sp, #44]	; 0x2c
 8003a06:	683b      	ldr	r3, [r7, #0]
 8003a08:	687c      	ldr	r4, [r7, #4]
 8003a0a:	9308      	str	r3, [sp, #32]
 8003a0c:	9409      	str	r4, [sp, #36]	; 0x24
 8003a0e:	68ba      	ldr	r2, [r7, #8]
 8003a10:	68fb      	ldr	r3, [r7, #12]
 8003a12:	9206      	str	r2, [sp, #24]
 8003a14:	9307      	str	r3, [sp, #28]
 8003a16:	693b      	ldr	r3, [r7, #16]
 8003a18:	697c      	ldr	r4, [r7, #20]
 8003a1a:	9304      	str	r3, [sp, #16]
 8003a1c:	9405      	str	r4, [sp, #20]
 8003a1e:	69b9      	ldr	r1, [r7, #24]
 8003a20:	69fa      	ldr	r2, [r7, #28]
 8003a22:	9102      	str	r1, [sp, #8]
 8003a24:	9203      	str	r2, [sp, #12]
 8003a26:	9500      	str	r5, [sp, #0]
 8003a28:	9601      	str	r6, [sp, #4]
 8003a2a:	6a3a      	ldr	r2, [r7, #32]
 8003a2c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8003a2e:	f004 f959 	bl	8007ce4 <MadgwickAHRSupdateIMU>
 8003a32:	21a8      	movs	r1, #168	; 0xa8
 8003a34:	2028      	movs	r0, #40	; 0x28
 8003a36:	183b      	adds	r3, r7, r0
 8003a38:	185b      	adds	r3, r3, r1
 8003a3a:	685c      	ldr	r4, [r3, #4]
 8003a3c:	681b      	ldr	r3, [r3, #0]
 8003a3e:	4a2f      	ldr	r2, [pc, #188]	; (8003afc <IMU_updateDataAll+0x460>)
 8003a40:	6793      	str	r3, [r2, #120]	; 0x78
 8003a42:	67d4      	str	r4, [r2, #124]	; 0x7c
 8003a44:	183b      	adds	r3, r7, r0
 8003a46:	185b      	adds	r3, r3, r1
 8003a48:	68dc      	ldr	r4, [r3, #12]
 8003a4a:	689b      	ldr	r3, [r3, #8]
 8003a4c:	4a2b      	ldr	r2, [pc, #172]	; (8003afc <IMU_updateDataAll+0x460>)
 8003a4e:	3280      	adds	r2, #128	; 0x80
 8003a50:	6013      	str	r3, [r2, #0]
 8003a52:	6054      	str	r4, [r2, #4]
 8003a54:	183b      	adds	r3, r7, r0
 8003a56:	185b      	adds	r3, r3, r1
 8003a58:	695c      	ldr	r4, [r3, #20]
 8003a5a:	691b      	ldr	r3, [r3, #16]
 8003a5c:	4a27      	ldr	r2, [pc, #156]	; (8003afc <IMU_updateDataAll+0x460>)
 8003a5e:	3288      	adds	r2, #136	; 0x88
 8003a60:	6013      	str	r3, [r2, #0]
 8003a62:	6054      	str	r4, [r2, #4]
 8003a64:	183b      	adds	r3, r7, r0
 8003a66:	185b      	adds	r3, r3, r1
 8003a68:	69dc      	ldr	r4, [r3, #28]
 8003a6a:	699b      	ldr	r3, [r3, #24]
 8003a6c:	4a23      	ldr	r2, [pc, #140]	; (8003afc <IMU_updateDataAll+0x460>)
 8003a6e:	3290      	adds	r2, #144	; 0x90
 8003a70:	6013      	str	r3, [r2, #0]
 8003a72:	6054      	str	r4, [r2, #4]
 8003a74:	2590      	movs	r5, #144	; 0x90
 8003a76:	183b      	adds	r3, r7, r0
 8003a78:	195a      	adds	r2, r3, r5
 8003a7a:	2300      	movs	r3, #0
 8003a7c:	2400      	movs	r4, #0
 8003a7e:	6013      	str	r3, [r2, #0]
 8003a80:	6054      	str	r4, [r2, #4]
 8003a82:	183b      	adds	r3, r7, r0
 8003a84:	195a      	adds	r2, r3, r5
 8003a86:	2300      	movs	r3, #0
 8003a88:	2400      	movs	r4, #0
 8003a8a:	6093      	str	r3, [r2, #8]
 8003a8c:	60d4      	str	r4, [r2, #12]
 8003a8e:	183b      	adds	r3, r7, r0
 8003a90:	195a      	adds	r2, r3, r5
 8003a92:	2300      	movs	r3, #0
 8003a94:	2400      	movs	r4, #0
 8003a96:	6113      	str	r3, [r2, #16]
 8003a98:	6154      	str	r4, [r2, #20]
 8003a9a:	2678      	movs	r6, #120	; 0x78
 8003a9c:	183b      	adds	r3, r7, r0
 8003a9e:	199a      	adds	r2, r3, r6
 8003aa0:	2300      	movs	r3, #0
 8003aa2:	2400      	movs	r4, #0
 8003aa4:	6013      	str	r3, [r2, #0]
 8003aa6:	6054      	str	r4, [r2, #4]
 8003aa8:	183b      	adds	r3, r7, r0
 8003aaa:	199a      	adds	r2, r3, r6
 8003aac:	2300      	movs	r3, #0
 8003aae:	2400      	movs	r4, #0
 8003ab0:	6093      	str	r3, [r2, #8]
 8003ab2:	60d4      	str	r4, [r2, #12]
 8003ab4:	183b      	adds	r3, r7, r0
 8003ab6:	199a      	adds	r2, r3, r6
 8003ab8:	2300      	movs	r3, #0
 8003aba:	2400      	movs	r4, #0
 8003abc:	6113      	str	r3, [r2, #16]
 8003abe:	6154      	str	r4, [r2, #20]
 8003ac0:	0003      	movs	r3, r0
 8003ac2:	18fa      	adds	r2, r7, r3
 8003ac4:	1952      	adds	r2, r2, r5
 8003ac6:	2028      	movs	r0, #40	; 0x28
 8003ac8:	4684      	mov	ip, r0
 8003aca:	44bc      	add	ip, r7
 8003acc:	4461      	add	r1, ip
 8003ace:	20f8      	movs	r0, #248	; 0xf8
 8003ad0:	18fb      	adds	r3, r7, r3
 8003ad2:	181b      	adds	r3, r3, r0
 8003ad4:	0018      	movs	r0, r3
 8003ad6:	f005 fa5b 	bl	8008f90 <vect_rotate>
 8003ada:	2300      	movs	r3, #0
 8003adc:	22a2      	movs	r2, #162	; 0xa2
 8003ade:	0052      	lsls	r2, r2, #1
 8003ae0:	2128      	movs	r1, #40	; 0x28
 8003ae2:	468c      	mov	ip, r1
 8003ae4:	44bc      	add	ip, r7
 8003ae6:	4462      	add	r2, ip
 8003ae8:	6013      	str	r3, [r2, #0]
 8003aea:	e036      	b.n	8003b5a <IMU_updateDataAll+0x4be>
 8003aec:	20000210 	.word	0x20000210
 8003af0:	20000098 	.word	0x20000098
 8003af4:	20000268 	.word	0x20000268
 8003af8:	3ff00000 	.word	0x3ff00000
 8003afc:	200000e0 	.word	0x200000e0
 8003b00:	2690      	movs	r6, #144	; 0x90
 8003b02:	2428      	movs	r4, #40	; 0x28
 8003b04:	193b      	adds	r3, r7, r4
 8003b06:	199a      	adds	r2, r3, r6
 8003b08:	25a2      	movs	r5, #162	; 0xa2
 8003b0a:	006d      	lsls	r5, r5, #1
 8003b0c:	193b      	adds	r3, r7, r4
 8003b0e:	195b      	adds	r3, r3, r5
 8003b10:	681b      	ldr	r3, [r3, #0]
 8003b12:	00db      	lsls	r3, r3, #3
 8003b14:	18d3      	adds	r3, r2, r3
 8003b16:	6818      	ldr	r0, [r3, #0]
 8003b18:	6859      	ldr	r1, [r3, #4]
 8003b1a:	4aef      	ldr	r2, [pc, #956]	; (8003ed8 <IMU_updateDataAll+0x83c>)
 8003b1c:	193b      	adds	r3, r7, r4
 8003b1e:	195b      	adds	r3, r3, r5
 8003b20:	681b      	ldr	r3, [r3, #0]
 8003b22:	3304      	adds	r3, #4
 8003b24:	00db      	lsls	r3, r3, #3
 8003b26:	18d3      	adds	r3, r2, r3
 8003b28:	685c      	ldr	r4, [r3, #4]
 8003b2a:	681b      	ldr	r3, [r3, #0]
 8003b2c:	001a      	movs	r2, r3
 8003b2e:	0023      	movs	r3, r4
 8003b30:	f7fe f9fc 	bl	8001f2c <__aeabi_dsub>
 8003b34:	0003      	movs	r3, r0
 8003b36:	000c      	movs	r4, r1
 8003b38:	2028      	movs	r0, #40	; 0x28
 8003b3a:	183a      	adds	r2, r7, r0
 8003b3c:	1991      	adds	r1, r2, r6
 8003b3e:	183a      	adds	r2, r7, r0
 8003b40:	1952      	adds	r2, r2, r5
 8003b42:	6812      	ldr	r2, [r2, #0]
 8003b44:	00d2      	lsls	r2, r2, #3
 8003b46:	188a      	adds	r2, r1, r2
 8003b48:	6013      	str	r3, [r2, #0]
 8003b4a:	6054      	str	r4, [r2, #4]
 8003b4c:	183b      	adds	r3, r7, r0
 8003b4e:	195b      	adds	r3, r3, r5
 8003b50:	681b      	ldr	r3, [r3, #0]
 8003b52:	3301      	adds	r3, #1
 8003b54:	183a      	adds	r2, r7, r0
 8003b56:	1952      	adds	r2, r2, r5
 8003b58:	6013      	str	r3, [r2, #0]
 8003b5a:	23a2      	movs	r3, #162	; 0xa2
 8003b5c:	005b      	lsls	r3, r3, #1
 8003b5e:	2228      	movs	r2, #40	; 0x28
 8003b60:	4694      	mov	ip, r2
 8003b62:	44bc      	add	ip, r7
 8003b64:	4463      	add	r3, ip
 8003b66:	681b      	ldr	r3, [r3, #0]
 8003b68:	2b02      	cmp	r3, #2
 8003b6a:	ddc9      	ble.n	8003b00 <IMU_updateDataAll+0x464>
 8003b6c:	2190      	movs	r1, #144	; 0x90
 8003b6e:	2028      	movs	r0, #40	; 0x28
 8003b70:	183b      	adds	r3, r7, r0
 8003b72:	185b      	adds	r3, r3, r1
 8003b74:	685c      	ldr	r4, [r3, #4]
 8003b76:	681b      	ldr	r3, [r3, #0]
 8003b78:	4ad8      	ldr	r2, [pc, #864]	; (8003edc <IMU_updateDataAll+0x840>)
 8003b7a:	6013      	str	r3, [r2, #0]
 8003b7c:	6054      	str	r4, [r2, #4]
 8003b7e:	183b      	adds	r3, r7, r0
 8003b80:	185b      	adds	r3, r3, r1
 8003b82:	68dc      	ldr	r4, [r3, #12]
 8003b84:	689b      	ldr	r3, [r3, #8]
 8003b86:	4ad5      	ldr	r2, [pc, #852]	; (8003edc <IMU_updateDataAll+0x840>)
 8003b88:	6093      	str	r3, [r2, #8]
 8003b8a:	60d4      	str	r4, [r2, #12]
 8003b8c:	183b      	adds	r3, r7, r0
 8003b8e:	185b      	adds	r3, r3, r1
 8003b90:	695c      	ldr	r4, [r3, #20]
 8003b92:	691b      	ldr	r3, [r3, #16]
 8003b94:	4ad1      	ldr	r2, [pc, #836]	; (8003edc <IMU_updateDataAll+0x840>)
 8003b96:	6113      	str	r3, [r2, #16]
 8003b98:	6154      	str	r4, [r2, #20]
 8003b9a:	21c8      	movs	r1, #200	; 0xc8
 8003b9c:	183b      	adds	r3, r7, r0
 8003b9e:	185b      	adds	r3, r3, r1
 8003ba0:	685c      	ldr	r4, [r3, #4]
 8003ba2:	681b      	ldr	r3, [r3, #0]
 8003ba4:	4acd      	ldr	r2, [pc, #820]	; (8003edc <IMU_updateDataAll+0x840>)
 8003ba6:	6313      	str	r3, [r2, #48]	; 0x30
 8003ba8:	6354      	str	r4, [r2, #52]	; 0x34
 8003baa:	183b      	adds	r3, r7, r0
 8003bac:	185b      	adds	r3, r3, r1
 8003bae:	68dc      	ldr	r4, [r3, #12]
 8003bb0:	689b      	ldr	r3, [r3, #8]
 8003bb2:	4aca      	ldr	r2, [pc, #808]	; (8003edc <IMU_updateDataAll+0x840>)
 8003bb4:	6393      	str	r3, [r2, #56]	; 0x38
 8003bb6:	63d4      	str	r4, [r2, #60]	; 0x3c
 8003bb8:	183b      	adds	r3, r7, r0
 8003bba:	185b      	adds	r3, r3, r1
 8003bbc:	695c      	ldr	r4, [r3, #20]
 8003bbe:	691b      	ldr	r3, [r3, #16]
 8003bc0:	4ac6      	ldr	r2, [pc, #792]	; (8003edc <IMU_updateDataAll+0x840>)
 8003bc2:	6413      	str	r3, [r2, #64]	; 0x40
 8003bc4:	6454      	str	r4, [r2, #68]	; 0x44
 8003bc6:	2160      	movs	r1, #96	; 0x60
 8003bc8:	183b      	adds	r3, r7, r0
 8003bca:	185a      	adds	r2, r3, r1
 8003bcc:	2300      	movs	r3, #0
 8003bce:	2400      	movs	r4, #0
 8003bd0:	6013      	str	r3, [r2, #0]
 8003bd2:	6054      	str	r4, [r2, #4]
 8003bd4:	183b      	adds	r3, r7, r0
 8003bd6:	185a      	adds	r2, r3, r1
 8003bd8:	2300      	movs	r3, #0
 8003bda:	2400      	movs	r4, #0
 8003bdc:	6093      	str	r3, [r2, #8]
 8003bde:	60d4      	str	r4, [r2, #12]
 8003be0:	183b      	adds	r3, r7, r0
 8003be2:	185a      	adds	r2, r3, r1
 8003be4:	2300      	movs	r3, #0
 8003be6:	2400      	movs	r4, #0
 8003be8:	6113      	str	r3, [r2, #16]
 8003bea:	6154      	str	r4, [r2, #20]
 8003bec:	4bbc      	ldr	r3, [pc, #752]	; (8003ee0 <IMU_updateDataAll+0x844>)
 8003bee:	21a8      	movs	r1, #168	; 0xa8
 8003bf0:	0049      	lsls	r1, r1, #1
 8003bf2:	183a      	adds	r2, r7, r0
 8003bf4:	1852      	adds	r2, r2, r1
 8003bf6:	18d2      	adds	r2, r2, r3
 8003bf8:	2300      	movs	r3, #0
 8003bfa:	2400      	movs	r4, #0
 8003bfc:	6013      	str	r3, [r2, #0]
 8003bfe:	6054      	str	r4, [r2, #4]
 8003c00:	4bb7      	ldr	r3, [pc, #732]	; (8003ee0 <IMU_updateDataAll+0x844>)
 8003c02:	183a      	adds	r2, r7, r0
 8003c04:	1852      	adds	r2, r2, r1
 8003c06:	18d2      	adds	r2, r2, r3
 8003c08:	2300      	movs	r3, #0
 8003c0a:	2400      	movs	r4, #0
 8003c0c:	6093      	str	r3, [r2, #8]
 8003c0e:	60d4      	str	r4, [r2, #12]
 8003c10:	4bb3      	ldr	r3, [pc, #716]	; (8003ee0 <IMU_updateDataAll+0x844>)
 8003c12:	183a      	adds	r2, r7, r0
 8003c14:	1852      	adds	r2, r2, r1
 8003c16:	18d2      	adds	r2, r2, r3
 8003c18:	2300      	movs	r3, #0
 8003c1a:	2400      	movs	r4, #0
 8003c1c:	6113      	str	r3, [r2, #16]
 8003c1e:	6154      	str	r4, [r2, #20]
 8003c20:	4bb0      	ldr	r3, [pc, #704]	; (8003ee4 <IMU_updateDataAll+0x848>)
 8003c22:	183a      	adds	r2, r7, r0
 8003c24:	1852      	adds	r2, r2, r1
 8003c26:	18d2      	adds	r2, r2, r3
 8003c28:	2300      	movs	r3, #0
 8003c2a:	2400      	movs	r4, #0
 8003c2c:	6013      	str	r3, [r2, #0]
 8003c2e:	6054      	str	r4, [r2, #4]
 8003c30:	4bac      	ldr	r3, [pc, #688]	; (8003ee4 <IMU_updateDataAll+0x848>)
 8003c32:	183a      	adds	r2, r7, r0
 8003c34:	1852      	adds	r2, r2, r1
 8003c36:	18d2      	adds	r2, r2, r3
 8003c38:	2300      	movs	r3, #0
 8003c3a:	2400      	movs	r4, #0
 8003c3c:	6093      	str	r3, [r2, #8]
 8003c3e:	60d4      	str	r4, [r2, #12]
 8003c40:	4ba8      	ldr	r3, [pc, #672]	; (8003ee4 <IMU_updateDataAll+0x848>)
 8003c42:	183a      	adds	r2, r7, r0
 8003c44:	1852      	adds	r2, r2, r1
 8003c46:	18d2      	adds	r2, r2, r3
 8003c48:	2300      	movs	r3, #0
 8003c4a:	2400      	movs	r4, #0
 8003c4c:	6113      	str	r3, [r2, #16]
 8003c4e:	6154      	str	r4, [r2, #20]
 8003c50:	4ba5      	ldr	r3, [pc, #660]	; (8003ee8 <IMU_updateDataAll+0x84c>)
 8003c52:	183a      	adds	r2, r7, r0
 8003c54:	1852      	adds	r2, r2, r1
 8003c56:	18d2      	adds	r2, r2, r3
 8003c58:	2300      	movs	r3, #0
 8003c5a:	2400      	movs	r4, #0
 8003c5c:	6013      	str	r3, [r2, #0]
 8003c5e:	6054      	str	r4, [r2, #4]
 8003c60:	4ba1      	ldr	r3, [pc, #644]	; (8003ee8 <IMU_updateDataAll+0x84c>)
 8003c62:	183a      	adds	r2, r7, r0
 8003c64:	1852      	adds	r2, r2, r1
 8003c66:	18d2      	adds	r2, r2, r3
 8003c68:	2300      	movs	r3, #0
 8003c6a:	2400      	movs	r4, #0
 8003c6c:	6093      	str	r3, [r2, #8]
 8003c6e:	60d4      	str	r4, [r2, #12]
 8003c70:	4b9d      	ldr	r3, [pc, #628]	; (8003ee8 <IMU_updateDataAll+0x84c>)
 8003c72:	183a      	adds	r2, r7, r0
 8003c74:	1852      	adds	r2, r2, r1
 8003c76:	18d2      	adds	r2, r2, r3
 8003c78:	2300      	movs	r3, #0
 8003c7a:	2400      	movs	r4, #0
 8003c7c:	6113      	str	r3, [r2, #16]
 8003c7e:	6154      	str	r4, [r2, #20]
 8003c80:	4b9a      	ldr	r3, [pc, #616]	; (8003eec <IMU_updateDataAll+0x850>)
 8003c82:	183a      	adds	r2, r7, r0
 8003c84:	1852      	adds	r2, r2, r1
 8003c86:	18d2      	adds	r2, r2, r3
 8003c88:	2300      	movs	r3, #0
 8003c8a:	2400      	movs	r4, #0
 8003c8c:	6013      	str	r3, [r2, #0]
 8003c8e:	6054      	str	r4, [r2, #4]
 8003c90:	4b96      	ldr	r3, [pc, #600]	; (8003eec <IMU_updateDataAll+0x850>)
 8003c92:	183a      	adds	r2, r7, r0
 8003c94:	1852      	adds	r2, r2, r1
 8003c96:	18d2      	adds	r2, r2, r3
 8003c98:	2300      	movs	r3, #0
 8003c9a:	2400      	movs	r4, #0
 8003c9c:	6093      	str	r3, [r2, #8]
 8003c9e:	60d4      	str	r4, [r2, #12]
 8003ca0:	4b92      	ldr	r3, [pc, #584]	; (8003eec <IMU_updateDataAll+0x850>)
 8003ca2:	183a      	adds	r2, r7, r0
 8003ca4:	1852      	adds	r2, r2, r1
 8003ca6:	18d2      	adds	r2, r2, r3
 8003ca8:	2300      	movs	r3, #0
 8003caa:	2400      	movs	r4, #0
 8003cac:	6113      	str	r3, [r2, #16]
 8003cae:	6154      	str	r4, [r2, #20]
 8003cb0:	2300      	movs	r3, #0
 8003cb2:	22a0      	movs	r2, #160	; 0xa0
 8003cb4:	0052      	lsls	r2, r2, #1
 8003cb6:	2128      	movs	r1, #40	; 0x28
 8003cb8:	468c      	mov	ip, r1
 8003cba:	44bc      	add	ip, r7
 8003cbc:	4462      	add	r2, ip
 8003cbe:	6013      	str	r3, [r2, #0]
 8003cc0:	e04d      	b.n	8003d5e <IMU_updateDataAll+0x6c2>
 8003cc2:	4a8b      	ldr	r2, [pc, #556]	; (8003ef0 <IMU_updateDataAll+0x854>)
 8003cc4:	20a0      	movs	r0, #160	; 0xa0
 8003cc6:	0040      	lsls	r0, r0, #1
 8003cc8:	2128      	movs	r1, #40	; 0x28
 8003cca:	187b      	adds	r3, r7, r1
 8003ccc:	181b      	adds	r3, r3, r0
 8003cce:	681b      	ldr	r3, [r3, #0]
 8003cd0:	00db      	lsls	r3, r3, #3
 8003cd2:	18d3      	adds	r3, r2, r3
 8003cd4:	685c      	ldr	r4, [r3, #4]
 8003cd6:	681b      	ldr	r3, [r3, #0]
 8003cd8:	4a82      	ldr	r2, [pc, #520]	; (8003ee4 <IMU_updateDataAll+0x848>)
 8003cda:	25a8      	movs	r5, #168	; 0xa8
 8003cdc:	006d      	lsls	r5, r5, #1
 8003cde:	000e      	movs	r6, r1
 8003ce0:	1879      	adds	r1, r7, r1
 8003ce2:	1949      	adds	r1, r1, r5
 8003ce4:	1889      	adds	r1, r1, r2
 8003ce6:	19ba      	adds	r2, r7, r6
 8003ce8:	1812      	adds	r2, r2, r0
 8003cea:	6812      	ldr	r2, [r2, #0]
 8003cec:	00d2      	lsls	r2, r2, #3
 8003cee:	188a      	adds	r2, r1, r2
 8003cf0:	6013      	str	r3, [r2, #0]
 8003cf2:	6054      	str	r4, [r2, #4]
 8003cf4:	4a79      	ldr	r2, [pc, #484]	; (8003edc <IMU_updateDataAll+0x840>)
 8003cf6:	0031      	movs	r1, r6
 8003cf8:	187b      	adds	r3, r7, r1
 8003cfa:	181b      	adds	r3, r3, r0
 8003cfc:	681b      	ldr	r3, [r3, #0]
 8003cfe:	3309      	adds	r3, #9
 8003d00:	00db      	lsls	r3, r3, #3
 8003d02:	18d3      	adds	r3, r2, r3
 8003d04:	685c      	ldr	r4, [r3, #4]
 8003d06:	681b      	ldr	r3, [r3, #0]
 8003d08:	4a77      	ldr	r2, [pc, #476]	; (8003ee8 <IMU_updateDataAll+0x84c>)
 8003d0a:	000e      	movs	r6, r1
 8003d0c:	1879      	adds	r1, r7, r1
 8003d0e:	1949      	adds	r1, r1, r5
 8003d10:	1889      	adds	r1, r1, r2
 8003d12:	19ba      	adds	r2, r7, r6
 8003d14:	1812      	adds	r2, r2, r0
 8003d16:	6812      	ldr	r2, [r2, #0]
 8003d18:	00d2      	lsls	r2, r2, #3
 8003d1a:	188a      	adds	r2, r1, r2
 8003d1c:	6013      	str	r3, [r2, #0]
 8003d1e:	6054      	str	r4, [r2, #4]
 8003d20:	4a73      	ldr	r2, [pc, #460]	; (8003ef0 <IMU_updateDataAll+0x854>)
 8003d22:	0031      	movs	r1, r6
 8003d24:	187b      	adds	r3, r7, r1
 8003d26:	181b      	adds	r3, r3, r0
 8003d28:	681b      	ldr	r3, [r3, #0]
 8003d2a:	3309      	adds	r3, #9
 8003d2c:	00db      	lsls	r3, r3, #3
 8003d2e:	18d3      	adds	r3, r2, r3
 8003d30:	685c      	ldr	r4, [r3, #4]
 8003d32:	681b      	ldr	r3, [r3, #0]
 8003d34:	4a6d      	ldr	r2, [pc, #436]	; (8003eec <IMU_updateDataAll+0x850>)
 8003d36:	000e      	movs	r6, r1
 8003d38:	1879      	adds	r1, r7, r1
 8003d3a:	1949      	adds	r1, r1, r5
 8003d3c:	1889      	adds	r1, r1, r2
 8003d3e:	0035      	movs	r5, r6
 8003d40:	197a      	adds	r2, r7, r5
 8003d42:	1812      	adds	r2, r2, r0
 8003d44:	6812      	ldr	r2, [r2, #0]
 8003d46:	00d2      	lsls	r2, r2, #3
 8003d48:	188a      	adds	r2, r1, r2
 8003d4a:	6013      	str	r3, [r2, #0]
 8003d4c:	6054      	str	r4, [r2, #4]
 8003d4e:	0029      	movs	r1, r5
 8003d50:	187b      	adds	r3, r7, r1
 8003d52:	181b      	adds	r3, r3, r0
 8003d54:	681b      	ldr	r3, [r3, #0]
 8003d56:	3301      	adds	r3, #1
 8003d58:	187a      	adds	r2, r7, r1
 8003d5a:	1812      	adds	r2, r2, r0
 8003d5c:	6013      	str	r3, [r2, #0]
 8003d5e:	23a0      	movs	r3, #160	; 0xa0
 8003d60:	005b      	lsls	r3, r3, #1
 8003d62:	2228      	movs	r2, #40	; 0x28
 8003d64:	4694      	mov	ip, r2
 8003d66:	44bc      	add	ip, r7
 8003d68:	4463      	add	r3, ip
 8003d6a:	681b      	ldr	r3, [r3, #0]
 8003d6c:	2b02      	cmp	r3, #2
 8003d6e:	dda8      	ble.n	8003cc2 <IMU_updateDataAll+0x626>
 8003d70:	2300      	movs	r3, #0
 8003d72:	229e      	movs	r2, #158	; 0x9e
 8003d74:	0052      	lsls	r2, r2, #1
 8003d76:	2128      	movs	r1, #40	; 0x28
 8003d78:	468c      	mov	ip, r1
 8003d7a:	44bc      	add	ip, r7
 8003d7c:	4462      	add	r2, ip
 8003d7e:	6013      	str	r3, [r2, #0]
 8003d80:	e096      	b.n	8003eb0 <IMU_updateDataAll+0x814>
 8003d82:	2390      	movs	r3, #144	; 0x90
 8003d84:	2528      	movs	r5, #40	; 0x28
 8003d86:	197a      	adds	r2, r7, r5
 8003d88:	18d2      	adds	r2, r2, r3
 8003d8a:	269e      	movs	r6, #158	; 0x9e
 8003d8c:	0076      	lsls	r6, r6, #1
 8003d8e:	197b      	adds	r3, r7, r5
 8003d90:	199b      	adds	r3, r3, r6
 8003d92:	681b      	ldr	r3, [r3, #0]
 8003d94:	00db      	lsls	r3, r3, #3
 8003d96:	18d3      	adds	r3, r2, r3
 8003d98:	6818      	ldr	r0, [r3, #0]
 8003d9a:	6859      	ldr	r1, [r3, #4]
 8003d9c:	4b51      	ldr	r3, [pc, #324]	; (8003ee4 <IMU_updateDataAll+0x848>)
 8003d9e:	24a8      	movs	r4, #168	; 0xa8
 8003da0:	0064      	lsls	r4, r4, #1
 8003da2:	197a      	adds	r2, r7, r5
 8003da4:	1912      	adds	r2, r2, r4
 8003da6:	18d2      	adds	r2, r2, r3
 8003da8:	197b      	adds	r3, r7, r5
 8003daa:	199b      	adds	r3, r3, r6
 8003dac:	681b      	ldr	r3, [r3, #0]
 8003dae:	00db      	lsls	r3, r3, #3
 8003db0:	18d3      	adds	r3, r2, r3
 8003db2:	685c      	ldr	r4, [r3, #4]
 8003db4:	681b      	ldr	r3, [r3, #0]
 8003db6:	001a      	movs	r2, r3
 8003db8:	0023      	movs	r3, r4
 8003dba:	f7fc ff1f 	bl	8000bfc <__aeabi_dadd>
 8003dbe:	0003      	movs	r3, r0
 8003dc0:	000c      	movs	r4, r1
 8003dc2:	0025      	movs	r5, r4
 8003dc4:	001c      	movs	r4, r3
 8003dc6:	2398      	movs	r3, #152	; 0x98
 8003dc8:	005b      	lsls	r3, r3, #1
 8003dca:	2228      	movs	r2, #40	; 0x28
 8003dcc:	18b9      	adds	r1, r7, r2
 8003dce:	18ca      	adds	r2, r1, r3
 8003dd0:	6810      	ldr	r0, [r2, #0]
 8003dd2:	f7fe fc2d 	bl	8002630 <__aeabi_f2d>
 8003dd6:	0002      	movs	r2, r0
 8003dd8:	000b      	movs	r3, r1
 8003dda:	0020      	movs	r0, r4
 8003ddc:	0029      	movs	r1, r5
 8003dde:	f7fd fe33 	bl	8001a48 <__aeabi_dmul>
 8003de2:	0003      	movs	r3, r0
 8003de4:	000c      	movs	r4, r1
 8003de6:	0018      	movs	r0, r3
 8003de8:	0021      	movs	r1, r4
 8003dea:	2200      	movs	r2, #0
 8003dec:	2380      	movs	r3, #128	; 0x80
 8003dee:	05db      	lsls	r3, r3, #23
 8003df0:	f7fd fa20 	bl	8001234 <__aeabi_ddiv>
 8003df4:	0003      	movs	r3, r0
 8003df6:	000c      	movs	r4, r1
 8003df8:	2260      	movs	r2, #96	; 0x60
 8003dfa:	2528      	movs	r5, #40	; 0x28
 8003dfc:	1979      	adds	r1, r7, r5
 8003dfe:	1889      	adds	r1, r1, r2
 8003e00:	197a      	adds	r2, r7, r5
 8003e02:	1992      	adds	r2, r2, r6
 8003e04:	6812      	ldr	r2, [r2, #0]
 8003e06:	00d2      	lsls	r2, r2, #3
 8003e08:	188a      	adds	r2, r1, r2
 8003e0a:	6013      	str	r3, [r2, #0]
 8003e0c:	6054      	str	r4, [r2, #4]
 8003e0e:	4b36      	ldr	r3, [pc, #216]	; (8003ee8 <IMU_updateDataAll+0x84c>)
 8003e10:	24a8      	movs	r4, #168	; 0xa8
 8003e12:	0064      	lsls	r4, r4, #1
 8003e14:	197a      	adds	r2, r7, r5
 8003e16:	1912      	adds	r2, r2, r4
 8003e18:	18d2      	adds	r2, r2, r3
 8003e1a:	197b      	adds	r3, r7, r5
 8003e1c:	1999      	adds	r1, r3, r6
 8003e1e:	680b      	ldr	r3, [r1, #0]
 8003e20:	00db      	lsls	r3, r3, #3
 8003e22:	18d3      	adds	r3, r2, r3
 8003e24:	6818      	ldr	r0, [r3, #0]
 8003e26:	6859      	ldr	r1, [r3, #4]
 8003e28:	4b30      	ldr	r3, [pc, #192]	; (8003eec <IMU_updateDataAll+0x850>)
 8003e2a:	197a      	adds	r2, r7, r5
 8003e2c:	1912      	adds	r2, r2, r4
 8003e2e:	18d2      	adds	r2, r2, r3
 8003e30:	197b      	adds	r3, r7, r5
 8003e32:	199d      	adds	r5, r3, r6
 8003e34:	682b      	ldr	r3, [r5, #0]
 8003e36:	00db      	lsls	r3, r3, #3
 8003e38:	18d3      	adds	r3, r2, r3
 8003e3a:	685c      	ldr	r4, [r3, #4]
 8003e3c:	681b      	ldr	r3, [r3, #0]
 8003e3e:	001a      	movs	r2, r3
 8003e40:	0023      	movs	r3, r4
 8003e42:	f7fc fedb 	bl	8000bfc <__aeabi_dadd>
 8003e46:	0003      	movs	r3, r0
 8003e48:	000c      	movs	r4, r1
 8003e4a:	0025      	movs	r5, r4
 8003e4c:	001c      	movs	r4, r3
 8003e4e:	2398      	movs	r3, #152	; 0x98
 8003e50:	005b      	lsls	r3, r3, #1
 8003e52:	2228      	movs	r2, #40	; 0x28
 8003e54:	4694      	mov	ip, r2
 8003e56:	44bc      	add	ip, r7
 8003e58:	4463      	add	r3, ip
 8003e5a:	6818      	ldr	r0, [r3, #0]
 8003e5c:	f7fe fbe8 	bl	8002630 <__aeabi_f2d>
 8003e60:	0002      	movs	r2, r0
 8003e62:	000b      	movs	r3, r1
 8003e64:	0020      	movs	r0, r4
 8003e66:	0029      	movs	r1, r5
 8003e68:	f7fd fdee 	bl	8001a48 <__aeabi_dmul>
 8003e6c:	0003      	movs	r3, r0
 8003e6e:	000c      	movs	r4, r1
 8003e70:	0018      	movs	r0, r3
 8003e72:	0021      	movs	r1, r4
 8003e74:	2200      	movs	r2, #0
 8003e76:	2380      	movs	r3, #128	; 0x80
 8003e78:	05db      	lsls	r3, r3, #23
 8003e7a:	f7fd f9db 	bl	8001234 <__aeabi_ddiv>
 8003e7e:	0003      	movs	r3, r0
 8003e80:	000c      	movs	r4, r1
 8003e82:	4a17      	ldr	r2, [pc, #92]	; (8003ee0 <IMU_updateDataAll+0x844>)
 8003e84:	21a8      	movs	r1, #168	; 0xa8
 8003e86:	0049      	lsls	r1, r1, #1
 8003e88:	2028      	movs	r0, #40	; 0x28
 8003e8a:	4684      	mov	ip, r0
 8003e8c:	44bc      	add	ip, r7
 8003e8e:	4461      	add	r1, ip
 8003e90:	1889      	adds	r1, r1, r2
 8003e92:	2528      	movs	r5, #40	; 0x28
 8003e94:	197a      	adds	r2, r7, r5
 8003e96:	1992      	adds	r2, r2, r6
 8003e98:	6812      	ldr	r2, [r2, #0]
 8003e9a:	00d2      	lsls	r2, r2, #3
 8003e9c:	188a      	adds	r2, r1, r2
 8003e9e:	6013      	str	r3, [r2, #0]
 8003ea0:	6054      	str	r4, [r2, #4]
 8003ea2:	197b      	adds	r3, r7, r5
 8003ea4:	199b      	adds	r3, r3, r6
 8003ea6:	681b      	ldr	r3, [r3, #0]
 8003ea8:	3301      	adds	r3, #1
 8003eaa:	197a      	adds	r2, r7, r5
 8003eac:	1992      	adds	r2, r2, r6
 8003eae:	6013      	str	r3, [r2, #0]
 8003eb0:	239e      	movs	r3, #158	; 0x9e
 8003eb2:	005b      	lsls	r3, r3, #1
 8003eb4:	2228      	movs	r2, #40	; 0x28
 8003eb6:	4694      	mov	ip, r2
 8003eb8:	44bc      	add	ip, r7
 8003eba:	4463      	add	r3, ip
 8003ebc:	681b      	ldr	r3, [r3, #0]
 8003ebe:	2b02      	cmp	r3, #2
 8003ec0:	dc00      	bgt.n	8003ec4 <IMU_updateDataAll+0x828>
 8003ec2:	e75e      	b.n	8003d82 <IMU_updateDataAll+0x6e6>
 8003ec4:	2300      	movs	r3, #0
 8003ec6:	229c      	movs	r2, #156	; 0x9c
 8003ec8:	0052      	lsls	r2, r2, #1
 8003eca:	2128      	movs	r1, #40	; 0x28
 8003ecc:	468c      	mov	ip, r1
 8003ece:	44bc      	add	ip, r7
 8003ed0:	4462      	add	r2, ip
 8003ed2:	6013      	str	r3, [r2, #0]
 8003ed4:	e064      	b.n	8003fa0 <IMU_updateDataAll+0x904>
 8003ed6:	46c0      	nop			; (mov r8, r8)
 8003ed8:	20000210 	.word	0x20000210
 8003edc:	200000e0 	.word	0x200000e0
 8003ee0:	fffffef8 	.word	0xfffffef8
 8003ee4:	fffffee0 	.word	0xfffffee0
 8003ee8:	fffffec8 	.word	0xfffffec8
 8003eec:	fffffeb0 	.word	0xfffffeb0
 8003ef0:	20000178 	.word	0x20000178
 8003ef4:	4a36      	ldr	r2, [pc, #216]	; (8003fd0 <IMU_updateDataAll+0x934>)
 8003ef6:	249c      	movs	r4, #156	; 0x9c
 8003ef8:	0064      	lsls	r4, r4, #1
 8003efa:	2628      	movs	r6, #40	; 0x28
 8003efc:	19bb      	adds	r3, r7, r6
 8003efe:	191b      	adds	r3, r3, r4
 8003f00:	681b      	ldr	r3, [r3, #0]
 8003f02:	3309      	adds	r3, #9
 8003f04:	00db      	lsls	r3, r3, #3
 8003f06:	18d3      	adds	r3, r2, r3
 8003f08:	6818      	ldr	r0, [r3, #0]
 8003f0a:	6859      	ldr	r1, [r3, #4]
 8003f0c:	2360      	movs	r3, #96	; 0x60
 8003f0e:	19ba      	adds	r2, r7, r6
 8003f10:	18d2      	adds	r2, r2, r3
 8003f12:	0025      	movs	r5, r4
 8003f14:	19bb      	adds	r3, r7, r6
 8003f16:	191b      	adds	r3, r3, r4
 8003f18:	681b      	ldr	r3, [r3, #0]
 8003f1a:	00db      	lsls	r3, r3, #3
 8003f1c:	18d3      	adds	r3, r2, r3
 8003f1e:	685c      	ldr	r4, [r3, #4]
 8003f20:	681b      	ldr	r3, [r3, #0]
 8003f22:	001a      	movs	r2, r3
 8003f24:	0023      	movs	r3, r4
 8003f26:	f7fc fe69 	bl	8000bfc <__aeabi_dadd>
 8003f2a:	0003      	movs	r3, r0
 8003f2c:	000c      	movs	r4, r1
 8003f2e:	4928      	ldr	r1, [pc, #160]	; (8003fd0 <IMU_updateDataAll+0x934>)
 8003f30:	19ba      	adds	r2, r7, r6
 8003f32:	1952      	adds	r2, r2, r5
 8003f34:	6812      	ldr	r2, [r2, #0]
 8003f36:	3209      	adds	r2, #9
 8003f38:	00d2      	lsls	r2, r2, #3
 8003f3a:	188a      	adds	r2, r1, r2
 8003f3c:	6013      	str	r3, [r2, #0]
 8003f3e:	6054      	str	r4, [r2, #4]
 8003f40:	4a23      	ldr	r2, [pc, #140]	; (8003fd0 <IMU_updateDataAll+0x934>)
 8003f42:	002c      	movs	r4, r5
 8003f44:	19bb      	adds	r3, r7, r6
 8003f46:	195b      	adds	r3, r3, r5
 8003f48:	681b      	ldr	r3, [r3, #0]
 8003f4a:	330c      	adds	r3, #12
 8003f4c:	00db      	lsls	r3, r3, #3
 8003f4e:	18d3      	adds	r3, r2, r3
 8003f50:	6818      	ldr	r0, [r3, #0]
 8003f52:	6859      	ldr	r1, [r3, #4]
 8003f54:	4b1f      	ldr	r3, [pc, #124]	; (8003fd4 <IMU_updateDataAll+0x938>)
 8003f56:	22a8      	movs	r2, #168	; 0xa8
 8003f58:	0052      	lsls	r2, r2, #1
 8003f5a:	2528      	movs	r5, #40	; 0x28
 8003f5c:	46ac      	mov	ip, r5
 8003f5e:	44bc      	add	ip, r7
 8003f60:	4462      	add	r2, ip
 8003f62:	18d2      	adds	r2, r2, r3
 8003f64:	0025      	movs	r5, r4
 8003f66:	19bb      	adds	r3, r7, r6
 8003f68:	191b      	adds	r3, r3, r4
 8003f6a:	681b      	ldr	r3, [r3, #0]
 8003f6c:	00db      	lsls	r3, r3, #3
 8003f6e:	18d3      	adds	r3, r2, r3
 8003f70:	685c      	ldr	r4, [r3, #4]
 8003f72:	681b      	ldr	r3, [r3, #0]
 8003f74:	001a      	movs	r2, r3
 8003f76:	0023      	movs	r3, r4
 8003f78:	f7fc fe40 	bl	8000bfc <__aeabi_dadd>
 8003f7c:	0003      	movs	r3, r0
 8003f7e:	000c      	movs	r4, r1
 8003f80:	4913      	ldr	r1, [pc, #76]	; (8003fd0 <IMU_updateDataAll+0x934>)
 8003f82:	19ba      	adds	r2, r7, r6
 8003f84:	1952      	adds	r2, r2, r5
 8003f86:	6812      	ldr	r2, [r2, #0]
 8003f88:	320c      	adds	r2, #12
 8003f8a:	00d2      	lsls	r2, r2, #3
 8003f8c:	188a      	adds	r2, r1, r2
 8003f8e:	6013      	str	r3, [r2, #0]
 8003f90:	6054      	str	r4, [r2, #4]
 8003f92:	19bb      	adds	r3, r7, r6
 8003f94:	195b      	adds	r3, r3, r5
 8003f96:	681b      	ldr	r3, [r3, #0]
 8003f98:	3301      	adds	r3, #1
 8003f9a:	19ba      	adds	r2, r7, r6
 8003f9c:	1952      	adds	r2, r2, r5
 8003f9e:	6013      	str	r3, [r2, #0]
 8003fa0:	239c      	movs	r3, #156	; 0x9c
 8003fa2:	005b      	lsls	r3, r3, #1
 8003fa4:	2228      	movs	r2, #40	; 0x28
 8003fa6:	4694      	mov	ip, r2
 8003fa8:	44bc      	add	ip, r7
 8003faa:	4463      	add	r3, ip
 8003fac:	681b      	ldr	r3, [r3, #0]
 8003fae:	2b02      	cmp	r3, #2
 8003fb0:	dda0      	ble.n	8003ef4 <IMU_updateDataAll+0x858>
 8003fb2:	e002      	b.n	8003fba <IMU_updateDataAll+0x91e>
 8003fb4:	46c0      	nop			; (mov r8, r8)
 8003fb6:	e000      	b.n	8003fba <IMU_updateDataAll+0x91e>
 8003fb8:	46c0      	nop			; (mov r8, r8)
 8003fba:	23a6      	movs	r3, #166	; 0xa6
 8003fbc:	005b      	lsls	r3, r3, #1
 8003fbe:	2228      	movs	r2, #40	; 0x28
 8003fc0:	4694      	mov	ip, r2
 8003fc2:	44bc      	add	ip, r7
 8003fc4:	4463      	add	r3, ip
 8003fc6:	681b      	ldr	r3, [r3, #0]
 8003fc8:	0018      	movs	r0, r3
 8003fca:	46bd      	mov	sp, r7
 8003fcc:	b05f      	add	sp, #380	; 0x17c
 8003fce:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003fd0:	200000e0 	.word	0x200000e0
 8003fd4:	fffffef8 	.word	0xfffffef8

08003fd8 <get_staticShifts>:
 8003fd8:	b590      	push	{r4, r7, lr}
 8003fda:	b08f      	sub	sp, #60	; 0x3c
 8003fdc:	af00      	add	r7, sp, #0
 8003fde:	2118      	movs	r1, #24
 8003fe0:	187a      	adds	r2, r7, r1
 8003fe2:	2300      	movs	r3, #0
 8003fe4:	2400      	movs	r4, #0
 8003fe6:	6013      	str	r3, [r2, #0]
 8003fe8:	6054      	str	r4, [r2, #4]
 8003fea:	187a      	adds	r2, r7, r1
 8003fec:	2300      	movs	r3, #0
 8003fee:	2400      	movs	r4, #0
 8003ff0:	6093      	str	r3, [r2, #8]
 8003ff2:	60d4      	str	r4, [r2, #12]
 8003ff4:	187a      	adds	r2, r7, r1
 8003ff6:	2300      	movs	r3, #0
 8003ff8:	2400      	movs	r4, #0
 8003ffa:	6113      	str	r3, [r2, #16]
 8003ffc:	6154      	str	r4, [r2, #20]
 8003ffe:	003a      	movs	r2, r7
 8004000:	2300      	movs	r3, #0
 8004002:	2400      	movs	r4, #0
 8004004:	6013      	str	r3, [r2, #0]
 8004006:	6054      	str	r4, [r2, #4]
 8004008:	003a      	movs	r2, r7
 800400a:	2300      	movs	r3, #0
 800400c:	2400      	movs	r4, #0
 800400e:	6093      	str	r3, [r2, #8]
 8004010:	60d4      	str	r4, [r2, #12]
 8004012:	003a      	movs	r2, r7
 8004014:	2300      	movs	r3, #0
 8004016:	2400      	movs	r4, #0
 8004018:	6113      	str	r3, [r2, #16]
 800401a:	6154      	str	r4, [r2, #20]
 800401c:	000c      	movs	r4, r1
 800401e:	187b      	adds	r3, r7, r1
 8004020:	0018      	movs	r0, r3
 8004022:	f7ff f809 	bl	8003038 <get_gyro_staticShift>
 8004026:	003a      	movs	r2, r7
 8004028:	0021      	movs	r1, r4
 800402a:	187b      	adds	r3, r7, r1
 800402c:	0011      	movs	r1, r2
 800402e:	0018      	movs	r0, r3
 8004030:	f7ff f8a2 	bl	8003178 <get_accel_staticShift>
 8004034:	2300      	movs	r3, #0
 8004036:	637b      	str	r3, [r7, #52]	; 0x34
 8004038:	e01d      	b.n	8004076 <get_staticShifts+0x9e>
 800403a:	2318      	movs	r3, #24
 800403c:	18fa      	adds	r2, r7, r3
 800403e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8004040:	00db      	lsls	r3, r3, #3
 8004042:	18d3      	adds	r3, r2, r3
 8004044:	685c      	ldr	r4, [r3, #4]
 8004046:	681b      	ldr	r3, [r3, #0]
 8004048:	490e      	ldr	r1, [pc, #56]	; (8004084 <get_staticShifts+0xac>)
 800404a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 800404c:	3201      	adds	r2, #1
 800404e:	00d2      	lsls	r2, r2, #3
 8004050:	188a      	adds	r2, r1, r2
 8004052:	6013      	str	r3, [r2, #0]
 8004054:	6054      	str	r4, [r2, #4]
 8004056:	003a      	movs	r2, r7
 8004058:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800405a:	00db      	lsls	r3, r3, #3
 800405c:	18d3      	adds	r3, r2, r3
 800405e:	685c      	ldr	r4, [r3, #4]
 8004060:	681b      	ldr	r3, [r3, #0]
 8004062:	4908      	ldr	r1, [pc, #32]	; (8004084 <get_staticShifts+0xac>)
 8004064:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8004066:	3204      	adds	r2, #4
 8004068:	00d2      	lsls	r2, r2, #3
 800406a:	188a      	adds	r2, r1, r2
 800406c:	6013      	str	r3, [r2, #0]
 800406e:	6054      	str	r4, [r2, #4]
 8004070:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8004072:	3301      	adds	r3, #1
 8004074:	637b      	str	r3, [r7, #52]	; 0x34
 8004076:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8004078:	2b02      	cmp	r3, #2
 800407a:	ddde      	ble.n	800403a <get_staticShifts+0x62>
 800407c:	46c0      	nop			; (mov r8, r8)
 800407e:	46bd      	mov	sp, r7
 8004080:	b00f      	add	sp, #60	; 0x3c
 8004082:	bd90      	pop	{r4, r7, pc}
 8004084:	20000210 	.word	0x20000210

08004088 <_IMUtask_updateData>:
 8004088:	b580      	push	{r7, lr}
 800408a:	af00      	add	r7, sp, #0
 800408c:	4a09      	ldr	r2, [pc, #36]	; (80040b4 <_IMUtask_updateData+0x2c>)
 800408e:	4b0a      	ldr	r3, [pc, #40]	; (80040b8 <_IMUtask_updateData+0x30>)
 8004090:	0010      	movs	r0, r2
 8004092:	0019      	movs	r1, r3
 8004094:	2398      	movs	r3, #152	; 0x98
 8004096:	001a      	movs	r2, r3
 8004098:	f005 f858 	bl	800914c <memcpy>
 800409c:	4a07      	ldr	r2, [pc, #28]	; (80040bc <_IMUtask_updateData+0x34>)
 800409e:	4b08      	ldr	r3, [pc, #32]	; (80040c0 <_IMUtask_updateData+0x38>)
 80040a0:	0010      	movs	r0, r2
 80040a2:	0019      	movs	r1, r3
 80040a4:	2358      	movs	r3, #88	; 0x58
 80040a6:	001a      	movs	r2, r3
 80040a8:	f005 f850 	bl	800914c <memcpy>
 80040ac:	46c0      	nop			; (mov r8, r8)
 80040ae:	46bd      	mov	sp, r7
 80040b0:	bd80      	pop	{r7, pc}
 80040b2:	46c0      	nop			; (mov r8, r8)
 80040b4:	20000178 	.word	0x20000178
 80040b8:	200000e0 	.word	0x200000e0
 80040bc:	20000268 	.word	0x20000268
 80040c0:	20000210 	.word	0x20000210

080040c4 <main>:
 80040c4:	b580      	push	{r7, lr}
 80040c6:	b0a0      	sub	sp, #128	; 0x80
 80040c8:	af00      	add	r7, sp, #0
 80040ca:	2300      	movs	r3, #0
 80040cc:	67fb      	str	r3, [r7, #124]	; 0x7c
 80040ce:	f000 fba7 	bl	8004820 <rcc_config>
 80040d2:	f000 fbd9 	bl	8004888 <gpio_config>
 80040d6:	f000 fbeb 	bl	80048b0 <exti_config>
 80040da:	f000 fbef 	bl	80048bc <usart_config>
 80040de:	f000 fc65 	bl	80049ac <i2c_config>
 80040e2:	f000 fd5f 	bl	8004ba4 <printf_config>
 80040e6:	f7fe ff67 	bl	8002fb8 <systick_config>
 80040ea:	4b21      	ldr	r3, [pc, #132]	; (8004170 <main+0xac>)
 80040ec:	2248      	movs	r2, #72	; 0x48
 80040ee:	2100      	movs	r1, #0
 80040f0:	0018      	movs	r0, r3
 80040f2:	f005 f834 	bl	800915e <memset>
 80040f6:	4b1f      	ldr	r3, [pc, #124]	; (8004174 <main+0xb0>)
 80040f8:	2298      	movs	r2, #152	; 0x98
 80040fa:	2100      	movs	r1, #0
 80040fc:	0018      	movs	r0, r3
 80040fe:	f005 f82e 	bl	800915e <memset>
 8004102:	4b1d      	ldr	r3, [pc, #116]	; (8004178 <main+0xb4>)
 8004104:	2298      	movs	r2, #152	; 0x98
 8004106:	2100      	movs	r1, #0
 8004108:	0018      	movs	r0, r3
 800410a:	f005 f828 	bl	800915e <memset>
 800410e:	4b1b      	ldr	r3, [pc, #108]	; (800417c <main+0xb8>)
 8004110:	2258      	movs	r2, #88	; 0x58
 8004112:	2100      	movs	r1, #0
 8004114:	0018      	movs	r0, r3
 8004116:	f005 f822 	bl	800915e <memset>
 800411a:	4b19      	ldr	r3, [pc, #100]	; (8004180 <main+0xbc>)
 800411c:	2258      	movs	r2, #88	; 0x58
 800411e:	2100      	movs	r1, #0
 8004120:	0018      	movs	r0, r3
 8004122:	f005 f81c 	bl	800915e <memset>
 8004126:	1d3b      	adds	r3, r7, #4
 8004128:	0018      	movs	r0, r3
 800412a:	2376      	movs	r3, #118	; 0x76
 800412c:	001a      	movs	r2, r3
 800412e:	2100      	movs	r1, #0
 8004130:	f005 f815 	bl	800915e <memset>
 8004134:	f000 fedc 	bl	8004ef0 <mpu9255_init>
 8004138:	0003      	movs	r3, r0
 800413a:	67fb      	str	r3, [r7, #124]	; 0x7c
 800413c:	6ffa      	ldr	r2, [r7, #124]	; 0x7c
 800413e:	4b11      	ldr	r3, [pc, #68]	; (8004184 <main+0xc0>)
 8004140:	0011      	movs	r1, r2
 8004142:	0018      	movs	r0, r3
 8004144:	f001 fb44 	bl	80057d0 <xprintf>
 8004148:	f7ff ff46 	bl	8003fd8 <get_staticShifts>
 800414c:	f7ff faa6 	bl	800369c <IMU_updateDataAll>
 8004150:	f7ff ff9a 	bl	8004088 <_IMUtask_updateData>
 8004154:	f7ff faa2 	bl	800369c <IMU_updateDataAll>
 8004158:	f7ff ff96 	bl	8004088 <_IMUtask_updateData>
 800415c:	1d3b      	adds	r3, r7, #4
 800415e:	0018      	movs	r0, r3
 8004160:	f7fe fbe2 	bl	8002928 <stateMsg_fill>
 8004164:	1d3b      	adds	r3, r7, #4
 8004166:	0018      	movs	r0, r3
 8004168:	f7fe fe36 	bl	8002dd8 <stateMsg_send>
 800416c:	e7f2      	b.n	8004154 <main+0x90>
 800416e:	46c0      	nop			; (mov r8, r8)
 8004170:	20000098 	.word	0x20000098
 8004174:	200000e0 	.word	0x200000e0
 8004178:	20000178 	.word	0x20000178
 800417c:	20000210 	.word	0x20000210
 8004180:	20000268 	.word	0x20000268
 8004184:	0800a470 	.word	0x0800a470

08004188 <LL_RCC_HSI_Enable>:
 8004188:	b580      	push	{r7, lr}
 800418a:	af00      	add	r7, sp, #0
 800418c:	4b04      	ldr	r3, [pc, #16]	; (80041a0 <LL_RCC_HSI_Enable+0x18>)
 800418e:	681a      	ldr	r2, [r3, #0]
 8004190:	4b03      	ldr	r3, [pc, #12]	; (80041a0 <LL_RCC_HSI_Enable+0x18>)
 8004192:	2101      	movs	r1, #1
 8004194:	430a      	orrs	r2, r1
 8004196:	601a      	str	r2, [r3, #0]
 8004198:	46c0      	nop			; (mov r8, r8)
 800419a:	46bd      	mov	sp, r7
 800419c:	bd80      	pop	{r7, pc}
 800419e:	46c0      	nop			; (mov r8, r8)
 80041a0:	40021000 	.word	0x40021000

080041a4 <LL_RCC_HSI_IsReady>:
 80041a4:	b580      	push	{r7, lr}
 80041a6:	af00      	add	r7, sp, #0
 80041a8:	4b05      	ldr	r3, [pc, #20]	; (80041c0 <LL_RCC_HSI_IsReady+0x1c>)
 80041aa:	681b      	ldr	r3, [r3, #0]
 80041ac:	2202      	movs	r2, #2
 80041ae:	4013      	ands	r3, r2
 80041b0:	3b02      	subs	r3, #2
 80041b2:	425a      	negs	r2, r3
 80041b4:	4153      	adcs	r3, r2
 80041b6:	b2db      	uxtb	r3, r3
 80041b8:	0018      	movs	r0, r3
 80041ba:	46bd      	mov	sp, r7
 80041bc:	bd80      	pop	{r7, pc}
 80041be:	46c0      	nop			; (mov r8, r8)
 80041c0:	40021000 	.word	0x40021000

080041c4 <LL_RCC_SetSysClkSource>:
 80041c4:	b580      	push	{r7, lr}
 80041c6:	b082      	sub	sp, #8
 80041c8:	af00      	add	r7, sp, #0
 80041ca:	6078      	str	r0, [r7, #4]
 80041cc:	4b06      	ldr	r3, [pc, #24]	; (80041e8 <LL_RCC_SetSysClkSource+0x24>)
 80041ce:	685b      	ldr	r3, [r3, #4]
 80041d0:	2203      	movs	r2, #3
 80041d2:	4393      	bics	r3, r2
 80041d4:	0019      	movs	r1, r3
 80041d6:	4b04      	ldr	r3, [pc, #16]	; (80041e8 <LL_RCC_SetSysClkSource+0x24>)
 80041d8:	687a      	ldr	r2, [r7, #4]
 80041da:	430a      	orrs	r2, r1
 80041dc:	605a      	str	r2, [r3, #4]
 80041de:	46c0      	nop			; (mov r8, r8)
 80041e0:	46bd      	mov	sp, r7
 80041e2:	b002      	add	sp, #8
 80041e4:	bd80      	pop	{r7, pc}
 80041e6:	46c0      	nop			; (mov r8, r8)
 80041e8:	40021000 	.word	0x40021000

080041ec <LL_RCC_GetSysClkSource>:
 80041ec:	b580      	push	{r7, lr}
 80041ee:	af00      	add	r7, sp, #0
 80041f0:	4b03      	ldr	r3, [pc, #12]	; (8004200 <LL_RCC_GetSysClkSource+0x14>)
 80041f2:	685b      	ldr	r3, [r3, #4]
 80041f4:	220c      	movs	r2, #12
 80041f6:	4013      	ands	r3, r2
 80041f8:	0018      	movs	r0, r3
 80041fa:	46bd      	mov	sp, r7
 80041fc:	bd80      	pop	{r7, pc}
 80041fe:	46c0      	nop			; (mov r8, r8)
 8004200:	40021000 	.word	0x40021000

08004204 <LL_RCC_SetAHBPrescaler>:
 8004204:	b580      	push	{r7, lr}
 8004206:	b082      	sub	sp, #8
 8004208:	af00      	add	r7, sp, #0
 800420a:	6078      	str	r0, [r7, #4]
 800420c:	4b06      	ldr	r3, [pc, #24]	; (8004228 <LL_RCC_SetAHBPrescaler+0x24>)
 800420e:	685b      	ldr	r3, [r3, #4]
 8004210:	22f0      	movs	r2, #240	; 0xf0
 8004212:	4393      	bics	r3, r2
 8004214:	0019      	movs	r1, r3
 8004216:	4b04      	ldr	r3, [pc, #16]	; (8004228 <LL_RCC_SetAHBPrescaler+0x24>)
 8004218:	687a      	ldr	r2, [r7, #4]
 800421a:	430a      	orrs	r2, r1
 800421c:	605a      	str	r2, [r3, #4]
 800421e:	46c0      	nop			; (mov r8, r8)
 8004220:	46bd      	mov	sp, r7
 8004222:	b002      	add	sp, #8
 8004224:	bd80      	pop	{r7, pc}
 8004226:	46c0      	nop			; (mov r8, r8)
 8004228:	40021000 	.word	0x40021000

0800422c <LL_RCC_SetAPB1Prescaler>:
 800422c:	b580      	push	{r7, lr}
 800422e:	b082      	sub	sp, #8
 8004230:	af00      	add	r7, sp, #0
 8004232:	6078      	str	r0, [r7, #4]
 8004234:	4b06      	ldr	r3, [pc, #24]	; (8004250 <LL_RCC_SetAPB1Prescaler+0x24>)
 8004236:	685b      	ldr	r3, [r3, #4]
 8004238:	4a06      	ldr	r2, [pc, #24]	; (8004254 <LL_RCC_SetAPB1Prescaler+0x28>)
 800423a:	4013      	ands	r3, r2
 800423c:	0019      	movs	r1, r3
 800423e:	4b04      	ldr	r3, [pc, #16]	; (8004250 <LL_RCC_SetAPB1Prescaler+0x24>)
 8004240:	687a      	ldr	r2, [r7, #4]
 8004242:	430a      	orrs	r2, r1
 8004244:	605a      	str	r2, [r3, #4]
 8004246:	46c0      	nop			; (mov r8, r8)
 8004248:	46bd      	mov	sp, r7
 800424a:	b002      	add	sp, #8
 800424c:	bd80      	pop	{r7, pc}
 800424e:	46c0      	nop			; (mov r8, r8)
 8004250:	40021000 	.word	0x40021000
 8004254:	fffff8ff 	.word	0xfffff8ff

08004258 <LL_RCC_SetUSARTClockSource>:
 8004258:	b580      	push	{r7, lr}
 800425a:	b082      	sub	sp, #8
 800425c:	af00      	add	r7, sp, #0
 800425e:	6078      	str	r0, [r7, #4]
 8004260:	4b09      	ldr	r3, [pc, #36]	; (8004288 <LL_RCC_SetUSARTClockSource+0x30>)
 8004262:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8004264:	687a      	ldr	r2, [r7, #4]
 8004266:	0e12      	lsrs	r2, r2, #24
 8004268:	2103      	movs	r1, #3
 800426a:	4091      	lsls	r1, r2
 800426c:	000a      	movs	r2, r1
 800426e:	43d2      	mvns	r2, r2
 8004270:	401a      	ands	r2, r3
 8004272:	0011      	movs	r1, r2
 8004274:	687b      	ldr	r3, [r7, #4]
 8004276:	021b      	lsls	r3, r3, #8
 8004278:	0a1a      	lsrs	r2, r3, #8
 800427a:	4b03      	ldr	r3, [pc, #12]	; (8004288 <LL_RCC_SetUSARTClockSource+0x30>)
 800427c:	430a      	orrs	r2, r1
 800427e:	631a      	str	r2, [r3, #48]	; 0x30
 8004280:	46c0      	nop			; (mov r8, r8)
 8004282:	46bd      	mov	sp, r7
 8004284:	b002      	add	sp, #8
 8004286:	bd80      	pop	{r7, pc}
 8004288:	40021000 	.word	0x40021000

0800428c <LL_RCC_SetI2CClockSource>:
 800428c:	b580      	push	{r7, lr}
 800428e:	b082      	sub	sp, #8
 8004290:	af00      	add	r7, sp, #0
 8004292:	6078      	str	r0, [r7, #4]
 8004294:	4b06      	ldr	r3, [pc, #24]	; (80042b0 <LL_RCC_SetI2CClockSource+0x24>)
 8004296:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8004298:	2210      	movs	r2, #16
 800429a:	4393      	bics	r3, r2
 800429c:	0019      	movs	r1, r3
 800429e:	4b04      	ldr	r3, [pc, #16]	; (80042b0 <LL_RCC_SetI2CClockSource+0x24>)
 80042a0:	687a      	ldr	r2, [r7, #4]
 80042a2:	430a      	orrs	r2, r1
 80042a4:	631a      	str	r2, [r3, #48]	; 0x30
 80042a6:	46c0      	nop			; (mov r8, r8)
 80042a8:	46bd      	mov	sp, r7
 80042aa:	b002      	add	sp, #8
 80042ac:	bd80      	pop	{r7, pc}
 80042ae:	46c0      	nop			; (mov r8, r8)
 80042b0:	40021000 	.word	0x40021000

080042b4 <LL_RCC_PLL_Enable>:
 80042b4:	b580      	push	{r7, lr}
 80042b6:	af00      	add	r7, sp, #0
 80042b8:	4b04      	ldr	r3, [pc, #16]	; (80042cc <LL_RCC_PLL_Enable+0x18>)
 80042ba:	681a      	ldr	r2, [r3, #0]
 80042bc:	4b03      	ldr	r3, [pc, #12]	; (80042cc <LL_RCC_PLL_Enable+0x18>)
 80042be:	2180      	movs	r1, #128	; 0x80
 80042c0:	0449      	lsls	r1, r1, #17
 80042c2:	430a      	orrs	r2, r1
 80042c4:	601a      	str	r2, [r3, #0]
 80042c6:	46c0      	nop			; (mov r8, r8)
 80042c8:	46bd      	mov	sp, r7
 80042ca:	bd80      	pop	{r7, pc}
 80042cc:	40021000 	.word	0x40021000

080042d0 <LL_RCC_PLL_IsReady>:
 80042d0:	b580      	push	{r7, lr}
 80042d2:	af00      	add	r7, sp, #0
 80042d4:	4b07      	ldr	r3, [pc, #28]	; (80042f4 <LL_RCC_PLL_IsReady+0x24>)
 80042d6:	681a      	ldr	r2, [r3, #0]
 80042d8:	2380      	movs	r3, #128	; 0x80
 80042da:	049b      	lsls	r3, r3, #18
 80042dc:	4013      	ands	r3, r2
 80042de:	22fe      	movs	r2, #254	; 0xfe
 80042e0:	0612      	lsls	r2, r2, #24
 80042e2:	4694      	mov	ip, r2
 80042e4:	4463      	add	r3, ip
 80042e6:	425a      	negs	r2, r3
 80042e8:	4153      	adcs	r3, r2
 80042ea:	b2db      	uxtb	r3, r3
 80042ec:	0018      	movs	r0, r3
 80042ee:	46bd      	mov	sp, r7
 80042f0:	bd80      	pop	{r7, pc}
 80042f2:	46c0      	nop			; (mov r8, r8)
 80042f4:	40021000 	.word	0x40021000

080042f8 <LL_RCC_PLL_ConfigDomain_SYS>:
 80042f8:	b580      	push	{r7, lr}
 80042fa:	b082      	sub	sp, #8
 80042fc:	af00      	add	r7, sp, #0
 80042fe:	6078      	str	r0, [r7, #4]
 8004300:	6039      	str	r1, [r7, #0]
 8004302:	4b0e      	ldr	r3, [pc, #56]	; (800433c <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8004304:	685b      	ldr	r3, [r3, #4]
 8004306:	4a0e      	ldr	r2, [pc, #56]	; (8004340 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8004308:	4013      	ands	r3, r2
 800430a:	0019      	movs	r1, r3
 800430c:	687a      	ldr	r2, [r7, #4]
 800430e:	2380      	movs	r3, #128	; 0x80
 8004310:	025b      	lsls	r3, r3, #9
 8004312:	401a      	ands	r2, r3
 8004314:	683b      	ldr	r3, [r7, #0]
 8004316:	431a      	orrs	r2, r3
 8004318:	4b08      	ldr	r3, [pc, #32]	; (800433c <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800431a:	430a      	orrs	r2, r1
 800431c:	605a      	str	r2, [r3, #4]
 800431e:	4b07      	ldr	r3, [pc, #28]	; (800433c <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8004320:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8004322:	220f      	movs	r2, #15
 8004324:	4393      	bics	r3, r2
 8004326:	0019      	movs	r1, r3
 8004328:	687b      	ldr	r3, [r7, #4]
 800432a:	220f      	movs	r2, #15
 800432c:	401a      	ands	r2, r3
 800432e:	4b03      	ldr	r3, [pc, #12]	; (800433c <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8004330:	430a      	orrs	r2, r1
 8004332:	62da      	str	r2, [r3, #44]	; 0x2c
 8004334:	46c0      	nop			; (mov r8, r8)
 8004336:	46bd      	mov	sp, r7
 8004338:	b002      	add	sp, #8
 800433a:	bd80      	pop	{r7, pc}
 800433c:	40021000 	.word	0x40021000
 8004340:	ffc2ffff 	.word	0xffc2ffff

08004344 <LL_FLASH_SetLatency>:
 8004344:	b580      	push	{r7, lr}
 8004346:	b082      	sub	sp, #8
 8004348:	af00      	add	r7, sp, #0
 800434a:	6078      	str	r0, [r7, #4]
 800434c:	4b06      	ldr	r3, [pc, #24]	; (8004368 <LL_FLASH_SetLatency+0x24>)
 800434e:	681b      	ldr	r3, [r3, #0]
 8004350:	2201      	movs	r2, #1
 8004352:	4393      	bics	r3, r2
 8004354:	0019      	movs	r1, r3
 8004356:	4b04      	ldr	r3, [pc, #16]	; (8004368 <LL_FLASH_SetLatency+0x24>)
 8004358:	687a      	ldr	r2, [r7, #4]
 800435a:	430a      	orrs	r2, r1
 800435c:	601a      	str	r2, [r3, #0]
 800435e:	46c0      	nop			; (mov r8, r8)
 8004360:	46bd      	mov	sp, r7
 8004362:	b002      	add	sp, #8
 8004364:	bd80      	pop	{r7, pc}
 8004366:	46c0      	nop			; (mov r8, r8)
 8004368:	40022000 	.word	0x40022000

0800436c <LL_AHB1_GRP1_EnableClock>:
 800436c:	b580      	push	{r7, lr}
 800436e:	b084      	sub	sp, #16
 8004370:	af00      	add	r7, sp, #0
 8004372:	6078      	str	r0, [r7, #4]
 8004374:	4b07      	ldr	r3, [pc, #28]	; (8004394 <LL_AHB1_GRP1_EnableClock+0x28>)
 8004376:	6959      	ldr	r1, [r3, #20]
 8004378:	4b06      	ldr	r3, [pc, #24]	; (8004394 <LL_AHB1_GRP1_EnableClock+0x28>)
 800437a:	687a      	ldr	r2, [r7, #4]
 800437c:	430a      	orrs	r2, r1
 800437e:	615a      	str	r2, [r3, #20]
 8004380:	4b04      	ldr	r3, [pc, #16]	; (8004394 <LL_AHB1_GRP1_EnableClock+0x28>)
 8004382:	695b      	ldr	r3, [r3, #20]
 8004384:	687a      	ldr	r2, [r7, #4]
 8004386:	4013      	ands	r3, r2
 8004388:	60fb      	str	r3, [r7, #12]
 800438a:	68fb      	ldr	r3, [r7, #12]
 800438c:	46c0      	nop			; (mov r8, r8)
 800438e:	46bd      	mov	sp, r7
 8004390:	b004      	add	sp, #16
 8004392:	bd80      	pop	{r7, pc}
 8004394:	40021000 	.word	0x40021000

08004398 <LL_APB1_GRP1_EnableClock>:
 8004398:	b580      	push	{r7, lr}
 800439a:	b084      	sub	sp, #16
 800439c:	af00      	add	r7, sp, #0
 800439e:	6078      	str	r0, [r7, #4]
 80043a0:	4b07      	ldr	r3, [pc, #28]	; (80043c0 <LL_APB1_GRP1_EnableClock+0x28>)
 80043a2:	69d9      	ldr	r1, [r3, #28]
 80043a4:	4b06      	ldr	r3, [pc, #24]	; (80043c0 <LL_APB1_GRP1_EnableClock+0x28>)
 80043a6:	687a      	ldr	r2, [r7, #4]
 80043a8:	430a      	orrs	r2, r1
 80043aa:	61da      	str	r2, [r3, #28]
 80043ac:	4b04      	ldr	r3, [pc, #16]	; (80043c0 <LL_APB1_GRP1_EnableClock+0x28>)
 80043ae:	69db      	ldr	r3, [r3, #28]
 80043b0:	687a      	ldr	r2, [r7, #4]
 80043b2:	4013      	ands	r3, r2
 80043b4:	60fb      	str	r3, [r7, #12]
 80043b6:	68fb      	ldr	r3, [r7, #12]
 80043b8:	46c0      	nop			; (mov r8, r8)
 80043ba:	46bd      	mov	sp, r7
 80043bc:	b004      	add	sp, #16
 80043be:	bd80      	pop	{r7, pc}
 80043c0:	40021000 	.word	0x40021000

080043c4 <LL_APB1_GRP2_EnableClock>:
 80043c4:	b580      	push	{r7, lr}
 80043c6:	b084      	sub	sp, #16
 80043c8:	af00      	add	r7, sp, #0
 80043ca:	6078      	str	r0, [r7, #4]
 80043cc:	4b07      	ldr	r3, [pc, #28]	; (80043ec <LL_APB1_GRP2_EnableClock+0x28>)
 80043ce:	6999      	ldr	r1, [r3, #24]
 80043d0:	4b06      	ldr	r3, [pc, #24]	; (80043ec <LL_APB1_GRP2_EnableClock+0x28>)
 80043d2:	687a      	ldr	r2, [r7, #4]
 80043d4:	430a      	orrs	r2, r1
 80043d6:	619a      	str	r2, [r3, #24]
 80043d8:	4b04      	ldr	r3, [pc, #16]	; (80043ec <LL_APB1_GRP2_EnableClock+0x28>)
 80043da:	699b      	ldr	r3, [r3, #24]
 80043dc:	687a      	ldr	r2, [r7, #4]
 80043de:	4013      	ands	r3, r2
 80043e0:	60fb      	str	r3, [r7, #12]
 80043e2:	68fb      	ldr	r3, [r7, #12]
 80043e4:	46c0      	nop			; (mov r8, r8)
 80043e6:	46bd      	mov	sp, r7
 80043e8:	b004      	add	sp, #16
 80043ea:	bd80      	pop	{r7, pc}
 80043ec:	40021000 	.word	0x40021000

080043f0 <LL_GPIO_SetPinMode>:
 80043f0:	b580      	push	{r7, lr}
 80043f2:	b084      	sub	sp, #16
 80043f4:	af00      	add	r7, sp, #0
 80043f6:	60f8      	str	r0, [r7, #12]
 80043f8:	60b9      	str	r1, [r7, #8]
 80043fa:	607a      	str	r2, [r7, #4]
 80043fc:	68fb      	ldr	r3, [r7, #12]
 80043fe:	6819      	ldr	r1, [r3, #0]
 8004400:	68bb      	ldr	r3, [r7, #8]
 8004402:	68ba      	ldr	r2, [r7, #8]
 8004404:	435a      	muls	r2, r3
 8004406:	0013      	movs	r3, r2
 8004408:	005b      	lsls	r3, r3, #1
 800440a:	189b      	adds	r3, r3, r2
 800440c:	43db      	mvns	r3, r3
 800440e:	400b      	ands	r3, r1
 8004410:	001a      	movs	r2, r3
 8004412:	68bb      	ldr	r3, [r7, #8]
 8004414:	68b9      	ldr	r1, [r7, #8]
 8004416:	434b      	muls	r3, r1
 8004418:	6879      	ldr	r1, [r7, #4]
 800441a:	434b      	muls	r3, r1
 800441c:	431a      	orrs	r2, r3
 800441e:	68fb      	ldr	r3, [r7, #12]
 8004420:	601a      	str	r2, [r3, #0]
 8004422:	46c0      	nop			; (mov r8, r8)
 8004424:	46bd      	mov	sp, r7
 8004426:	b004      	add	sp, #16
 8004428:	bd80      	pop	{r7, pc}

0800442a <LL_GPIO_SetPinOutputType>:
 800442a:	b580      	push	{r7, lr}
 800442c:	b084      	sub	sp, #16
 800442e:	af00      	add	r7, sp, #0
 8004430:	60f8      	str	r0, [r7, #12]
 8004432:	60b9      	str	r1, [r7, #8]
 8004434:	607a      	str	r2, [r7, #4]
 8004436:	68fb      	ldr	r3, [r7, #12]
 8004438:	685b      	ldr	r3, [r3, #4]
 800443a:	68ba      	ldr	r2, [r7, #8]
 800443c:	43d2      	mvns	r2, r2
 800443e:	401a      	ands	r2, r3
 8004440:	68bb      	ldr	r3, [r7, #8]
 8004442:	6879      	ldr	r1, [r7, #4]
 8004444:	434b      	muls	r3, r1
 8004446:	431a      	orrs	r2, r3
 8004448:	68fb      	ldr	r3, [r7, #12]
 800444a:	605a      	str	r2, [r3, #4]
 800444c:	46c0      	nop			; (mov r8, r8)
 800444e:	46bd      	mov	sp, r7
 8004450:	b004      	add	sp, #16
 8004452:	bd80      	pop	{r7, pc}

08004454 <LL_GPIO_SetPinSpeed>:
 8004454:	b580      	push	{r7, lr}
 8004456:	b084      	sub	sp, #16
 8004458:	af00      	add	r7, sp, #0
 800445a:	60f8      	str	r0, [r7, #12]
 800445c:	60b9      	str	r1, [r7, #8]
 800445e:	607a      	str	r2, [r7, #4]
 8004460:	68fb      	ldr	r3, [r7, #12]
 8004462:	6899      	ldr	r1, [r3, #8]
 8004464:	68bb      	ldr	r3, [r7, #8]
 8004466:	68ba      	ldr	r2, [r7, #8]
 8004468:	435a      	muls	r2, r3
 800446a:	0013      	movs	r3, r2
 800446c:	005b      	lsls	r3, r3, #1
 800446e:	189b      	adds	r3, r3, r2
 8004470:	43db      	mvns	r3, r3
 8004472:	400b      	ands	r3, r1
 8004474:	001a      	movs	r2, r3
 8004476:	68bb      	ldr	r3, [r7, #8]
 8004478:	68b9      	ldr	r1, [r7, #8]
 800447a:	434b      	muls	r3, r1
 800447c:	6879      	ldr	r1, [r7, #4]
 800447e:	434b      	muls	r3, r1
 8004480:	431a      	orrs	r2, r3
 8004482:	68fb      	ldr	r3, [r7, #12]
 8004484:	609a      	str	r2, [r3, #8]
 8004486:	46c0      	nop			; (mov r8, r8)
 8004488:	46bd      	mov	sp, r7
 800448a:	b004      	add	sp, #16
 800448c:	bd80      	pop	{r7, pc}

0800448e <LL_GPIO_SetPinPull>:
 800448e:	b580      	push	{r7, lr}
 8004490:	b084      	sub	sp, #16
 8004492:	af00      	add	r7, sp, #0
 8004494:	60f8      	str	r0, [r7, #12]
 8004496:	60b9      	str	r1, [r7, #8]
 8004498:	607a      	str	r2, [r7, #4]
 800449a:	68fb      	ldr	r3, [r7, #12]
 800449c:	68d9      	ldr	r1, [r3, #12]
 800449e:	68bb      	ldr	r3, [r7, #8]
 80044a0:	68ba      	ldr	r2, [r7, #8]
 80044a2:	435a      	muls	r2, r3
 80044a4:	0013      	movs	r3, r2
 80044a6:	005b      	lsls	r3, r3, #1
 80044a8:	189b      	adds	r3, r3, r2
 80044aa:	43db      	mvns	r3, r3
 80044ac:	400b      	ands	r3, r1
 80044ae:	001a      	movs	r2, r3
 80044b0:	68bb      	ldr	r3, [r7, #8]
 80044b2:	68b9      	ldr	r1, [r7, #8]
 80044b4:	434b      	muls	r3, r1
 80044b6:	6879      	ldr	r1, [r7, #4]
 80044b8:	434b      	muls	r3, r1
 80044ba:	431a      	orrs	r2, r3
 80044bc:	68fb      	ldr	r3, [r7, #12]
 80044be:	60da      	str	r2, [r3, #12]
 80044c0:	46c0      	nop			; (mov r8, r8)
 80044c2:	46bd      	mov	sp, r7
 80044c4:	b004      	add	sp, #16
 80044c6:	bd80      	pop	{r7, pc}

080044c8 <LL_GPIO_SetAFPin_0_7>:
 80044c8:	b580      	push	{r7, lr}
 80044ca:	b084      	sub	sp, #16
 80044cc:	af00      	add	r7, sp, #0
 80044ce:	60f8      	str	r0, [r7, #12]
 80044d0:	60b9      	str	r1, [r7, #8]
 80044d2:	607a      	str	r2, [r7, #4]
 80044d4:	68fb      	ldr	r3, [r7, #12]
 80044d6:	6a19      	ldr	r1, [r3, #32]
 80044d8:	68bb      	ldr	r3, [r7, #8]
 80044da:	68ba      	ldr	r2, [r7, #8]
 80044dc:	4353      	muls	r3, r2
 80044de:	68ba      	ldr	r2, [r7, #8]
 80044e0:	4353      	muls	r3, r2
 80044e2:	68ba      	ldr	r2, [r7, #8]
 80044e4:	435a      	muls	r2, r3
 80044e6:	0013      	movs	r3, r2
 80044e8:	011b      	lsls	r3, r3, #4
 80044ea:	1a9b      	subs	r3, r3, r2
 80044ec:	43db      	mvns	r3, r3
 80044ee:	400b      	ands	r3, r1
 80044f0:	001a      	movs	r2, r3
 80044f2:	68bb      	ldr	r3, [r7, #8]
 80044f4:	68b9      	ldr	r1, [r7, #8]
 80044f6:	434b      	muls	r3, r1
 80044f8:	68b9      	ldr	r1, [r7, #8]
 80044fa:	434b      	muls	r3, r1
 80044fc:	68b9      	ldr	r1, [r7, #8]
 80044fe:	434b      	muls	r3, r1
 8004500:	6879      	ldr	r1, [r7, #4]
 8004502:	434b      	muls	r3, r1
 8004504:	431a      	orrs	r2, r3
 8004506:	68fb      	ldr	r3, [r7, #12]
 8004508:	621a      	str	r2, [r3, #32]
 800450a:	46c0      	nop			; (mov r8, r8)
 800450c:	46bd      	mov	sp, r7
 800450e:	b004      	add	sp, #16
 8004510:	bd80      	pop	{r7, pc}

08004512 <LL_GPIO_SetAFPin_8_15>:
 8004512:	b580      	push	{r7, lr}
 8004514:	b084      	sub	sp, #16
 8004516:	af00      	add	r7, sp, #0
 8004518:	60f8      	str	r0, [r7, #12]
 800451a:	60b9      	str	r1, [r7, #8]
 800451c:	607a      	str	r2, [r7, #4]
 800451e:	68fb      	ldr	r3, [r7, #12]
 8004520:	6a59      	ldr	r1, [r3, #36]	; 0x24
 8004522:	68bb      	ldr	r3, [r7, #8]
 8004524:	0a1b      	lsrs	r3, r3, #8
 8004526:	68ba      	ldr	r2, [r7, #8]
 8004528:	0a12      	lsrs	r2, r2, #8
 800452a:	4353      	muls	r3, r2
 800452c:	68ba      	ldr	r2, [r7, #8]
 800452e:	0a12      	lsrs	r2, r2, #8
 8004530:	4353      	muls	r3, r2
 8004532:	68ba      	ldr	r2, [r7, #8]
 8004534:	0a12      	lsrs	r2, r2, #8
 8004536:	435a      	muls	r2, r3
 8004538:	0013      	movs	r3, r2
 800453a:	011b      	lsls	r3, r3, #4
 800453c:	1a9b      	subs	r3, r3, r2
 800453e:	43db      	mvns	r3, r3
 8004540:	400b      	ands	r3, r1
 8004542:	001a      	movs	r2, r3
 8004544:	68bb      	ldr	r3, [r7, #8]
 8004546:	0a1b      	lsrs	r3, r3, #8
 8004548:	68b9      	ldr	r1, [r7, #8]
 800454a:	0a09      	lsrs	r1, r1, #8
 800454c:	434b      	muls	r3, r1
 800454e:	68b9      	ldr	r1, [r7, #8]
 8004550:	0a09      	lsrs	r1, r1, #8
 8004552:	434b      	muls	r3, r1
 8004554:	68b9      	ldr	r1, [r7, #8]
 8004556:	0a09      	lsrs	r1, r1, #8
 8004558:	434b      	muls	r3, r1
 800455a:	6879      	ldr	r1, [r7, #4]
 800455c:	434b      	muls	r3, r1
 800455e:	431a      	orrs	r2, r3
 8004560:	68fb      	ldr	r3, [r7, #12]
 8004562:	625a      	str	r2, [r3, #36]	; 0x24
 8004564:	46c0      	nop			; (mov r8, r8)
 8004566:	46bd      	mov	sp, r7
 8004568:	b004      	add	sp, #16
 800456a:	bd80      	pop	{r7, pc}

0800456c <LL_USART_Enable>:
 800456c:	b580      	push	{r7, lr}
 800456e:	b082      	sub	sp, #8
 8004570:	af00      	add	r7, sp, #0
 8004572:	6078      	str	r0, [r7, #4]
 8004574:	687b      	ldr	r3, [r7, #4]
 8004576:	681b      	ldr	r3, [r3, #0]
 8004578:	2201      	movs	r2, #1
 800457a:	431a      	orrs	r2, r3
 800457c:	687b      	ldr	r3, [r7, #4]
 800457e:	601a      	str	r2, [r3, #0]
 8004580:	46c0      	nop			; (mov r8, r8)
 8004582:	46bd      	mov	sp, r7
 8004584:	b002      	add	sp, #8
 8004586:	bd80      	pop	{r7, pc}

08004588 <LL_USART_SetTransferDirection>:
 8004588:	b580      	push	{r7, lr}
 800458a:	b082      	sub	sp, #8
 800458c:	af00      	add	r7, sp, #0
 800458e:	6078      	str	r0, [r7, #4]
 8004590:	6039      	str	r1, [r7, #0]
 8004592:	687b      	ldr	r3, [r7, #4]
 8004594:	681b      	ldr	r3, [r3, #0]
 8004596:	220c      	movs	r2, #12
 8004598:	4393      	bics	r3, r2
 800459a:	001a      	movs	r2, r3
 800459c:	683b      	ldr	r3, [r7, #0]
 800459e:	431a      	orrs	r2, r3
 80045a0:	687b      	ldr	r3, [r7, #4]
 80045a2:	601a      	str	r2, [r3, #0]
 80045a4:	46c0      	nop			; (mov r8, r8)
 80045a6:	46bd      	mov	sp, r7
 80045a8:	b002      	add	sp, #8
 80045aa:	bd80      	pop	{r7, pc}

080045ac <LL_USART_SetParity>:
 80045ac:	b580      	push	{r7, lr}
 80045ae:	b082      	sub	sp, #8
 80045b0:	af00      	add	r7, sp, #0
 80045b2:	6078      	str	r0, [r7, #4]
 80045b4:	6039      	str	r1, [r7, #0]
 80045b6:	687b      	ldr	r3, [r7, #4]
 80045b8:	681b      	ldr	r3, [r3, #0]
 80045ba:	4a05      	ldr	r2, [pc, #20]	; (80045d0 <LL_USART_SetParity+0x24>)
 80045bc:	401a      	ands	r2, r3
 80045be:	683b      	ldr	r3, [r7, #0]
 80045c0:	431a      	orrs	r2, r3
 80045c2:	687b      	ldr	r3, [r7, #4]
 80045c4:	601a      	str	r2, [r3, #0]
 80045c6:	46c0      	nop			; (mov r8, r8)
 80045c8:	46bd      	mov	sp, r7
 80045ca:	b002      	add	sp, #8
 80045cc:	bd80      	pop	{r7, pc}
 80045ce:	46c0      	nop			; (mov r8, r8)
 80045d0:	fffff9ff 	.word	0xfffff9ff

080045d4 <LL_USART_SetDataWidth>:
 80045d4:	b580      	push	{r7, lr}
 80045d6:	b082      	sub	sp, #8
 80045d8:	af00      	add	r7, sp, #0
 80045da:	6078      	str	r0, [r7, #4]
 80045dc:	6039      	str	r1, [r7, #0]
 80045de:	687b      	ldr	r3, [r7, #4]
 80045e0:	681b      	ldr	r3, [r3, #0]
 80045e2:	4a05      	ldr	r2, [pc, #20]	; (80045f8 <LL_USART_SetDataWidth+0x24>)
 80045e4:	401a      	ands	r2, r3
 80045e6:	683b      	ldr	r3, [r7, #0]
 80045e8:	431a      	orrs	r2, r3
 80045ea:	687b      	ldr	r3, [r7, #4]
 80045ec:	601a      	str	r2, [r3, #0]
 80045ee:	46c0      	nop			; (mov r8, r8)
 80045f0:	46bd      	mov	sp, r7
 80045f2:	b002      	add	sp, #8
 80045f4:	bd80      	pop	{r7, pc}
 80045f6:	46c0      	nop			; (mov r8, r8)
 80045f8:	ffffefff 	.word	0xffffefff

080045fc <LL_USART_SetStopBitsLength>:
 80045fc:	b580      	push	{r7, lr}
 80045fe:	b082      	sub	sp, #8
 8004600:	af00      	add	r7, sp, #0
 8004602:	6078      	str	r0, [r7, #4]
 8004604:	6039      	str	r1, [r7, #0]
 8004606:	687b      	ldr	r3, [r7, #4]
 8004608:	685b      	ldr	r3, [r3, #4]
 800460a:	4a05      	ldr	r2, [pc, #20]	; (8004620 <LL_USART_SetStopBitsLength+0x24>)
 800460c:	401a      	ands	r2, r3
 800460e:	683b      	ldr	r3, [r7, #0]
 8004610:	431a      	orrs	r2, r3
 8004612:	687b      	ldr	r3, [r7, #4]
 8004614:	605a      	str	r2, [r3, #4]
 8004616:	46c0      	nop			; (mov r8, r8)
 8004618:	46bd      	mov	sp, r7
 800461a:	b002      	add	sp, #8
 800461c:	bd80      	pop	{r7, pc}
 800461e:	46c0      	nop			; (mov r8, r8)
 8004620:	ffffcfff 	.word	0xffffcfff

08004624 <LL_USART_SetTransferBitOrder>:
 8004624:	b580      	push	{r7, lr}
 8004626:	b082      	sub	sp, #8
 8004628:	af00      	add	r7, sp, #0
 800462a:	6078      	str	r0, [r7, #4]
 800462c:	6039      	str	r1, [r7, #0]
 800462e:	687b      	ldr	r3, [r7, #4]
 8004630:	685b      	ldr	r3, [r3, #4]
 8004632:	4a05      	ldr	r2, [pc, #20]	; (8004648 <LL_USART_SetTransferBitOrder+0x24>)
 8004634:	401a      	ands	r2, r3
 8004636:	683b      	ldr	r3, [r7, #0]
 8004638:	431a      	orrs	r2, r3
 800463a:	687b      	ldr	r3, [r7, #4]
 800463c:	605a      	str	r2, [r3, #4]
 800463e:	46c0      	nop			; (mov r8, r8)
 8004640:	46bd      	mov	sp, r7
 8004642:	b002      	add	sp, #8
 8004644:	bd80      	pop	{r7, pc}
 8004646:	46c0      	nop			; (mov r8, r8)
 8004648:	fff7ffff 	.word	0xfff7ffff

0800464c <LL_USART_SetBaudRate>:
 800464c:	b5b0      	push	{r4, r5, r7, lr}
 800464e:	b084      	sub	sp, #16
 8004650:	af00      	add	r7, sp, #0
 8004652:	60f8      	str	r0, [r7, #12]
 8004654:	60b9      	str	r1, [r7, #8]
 8004656:	607a      	str	r2, [r7, #4]
 8004658:	603b      	str	r3, [r7, #0]
 800465a:	2500      	movs	r5, #0
 800465c:	2400      	movs	r4, #0
 800465e:	687a      	ldr	r2, [r7, #4]
 8004660:	2380      	movs	r3, #128	; 0x80
 8004662:	021b      	lsls	r3, r3, #8
 8004664:	429a      	cmp	r2, r3
 8004666:	d117      	bne.n	8004698 <LL_USART_SetBaudRate+0x4c>
 8004668:	68bb      	ldr	r3, [r7, #8]
 800466a:	005a      	lsls	r2, r3, #1
 800466c:	683b      	ldr	r3, [r7, #0]
 800466e:	085b      	lsrs	r3, r3, #1
 8004670:	18d3      	adds	r3, r2, r3
 8004672:	6839      	ldr	r1, [r7, #0]
 8004674:	0018      	movs	r0, r3
 8004676:	f7fb fd47 	bl	8000108 <__udivsi3>
 800467a:	0003      	movs	r3, r0
 800467c:	b29b      	uxth	r3, r3
 800467e:	001d      	movs	r5, r3
 8004680:	4b0e      	ldr	r3, [pc, #56]	; (80046bc <LL_USART_SetBaudRate+0x70>)
 8004682:	402b      	ands	r3, r5
 8004684:	001c      	movs	r4, r3
 8004686:	086b      	lsrs	r3, r5, #1
 8004688:	b29b      	uxth	r3, r3
 800468a:	001a      	movs	r2, r3
 800468c:	2307      	movs	r3, #7
 800468e:	4013      	ands	r3, r2
 8004690:	431c      	orrs	r4, r3
 8004692:	68fb      	ldr	r3, [r7, #12]
 8004694:	60dc      	str	r4, [r3, #12]
 8004696:	e00c      	b.n	80046b2 <LL_USART_SetBaudRate+0x66>
 8004698:	683b      	ldr	r3, [r7, #0]
 800469a:	085a      	lsrs	r2, r3, #1
 800469c:	68bb      	ldr	r3, [r7, #8]
 800469e:	18d3      	adds	r3, r2, r3
 80046a0:	6839      	ldr	r1, [r7, #0]
 80046a2:	0018      	movs	r0, r3
 80046a4:	f7fb fd30 	bl	8000108 <__udivsi3>
 80046a8:	0003      	movs	r3, r0
 80046aa:	b29b      	uxth	r3, r3
 80046ac:	001a      	movs	r2, r3
 80046ae:	68fb      	ldr	r3, [r7, #12]
 80046b0:	60da      	str	r2, [r3, #12]
 80046b2:	46c0      	nop			; (mov r8, r8)
 80046b4:	46bd      	mov	sp, r7
 80046b6:	b004      	add	sp, #16
 80046b8:	bdb0      	pop	{r4, r5, r7, pc}
 80046ba:	46c0      	nop			; (mov r8, r8)
 80046bc:	0000fff0 	.word	0x0000fff0

080046c0 <LL_USART_IsActiveFlag_TEACK>:
 80046c0:	b580      	push	{r7, lr}
 80046c2:	b082      	sub	sp, #8
 80046c4:	af00      	add	r7, sp, #0
 80046c6:	6078      	str	r0, [r7, #4]
 80046c8:	687b      	ldr	r3, [r7, #4]
 80046ca:	69da      	ldr	r2, [r3, #28]
 80046cc:	2380      	movs	r3, #128	; 0x80
 80046ce:	039b      	lsls	r3, r3, #14
 80046d0:	4013      	ands	r3, r2
 80046d2:	4a05      	ldr	r2, [pc, #20]	; (80046e8 <LL_USART_IsActiveFlag_TEACK+0x28>)
 80046d4:	4694      	mov	ip, r2
 80046d6:	4463      	add	r3, ip
 80046d8:	425a      	negs	r2, r3
 80046da:	4153      	adcs	r3, r2
 80046dc:	b2db      	uxtb	r3, r3
 80046de:	0018      	movs	r0, r3
 80046e0:	46bd      	mov	sp, r7
 80046e2:	b002      	add	sp, #8
 80046e4:	bd80      	pop	{r7, pc}
 80046e6:	46c0      	nop			; (mov r8, r8)
 80046e8:	ffe00000 	.word	0xffe00000

080046ec <LL_USART_IsActiveFlag_REACK>:
 80046ec:	b580      	push	{r7, lr}
 80046ee:	b082      	sub	sp, #8
 80046f0:	af00      	add	r7, sp, #0
 80046f2:	6078      	str	r0, [r7, #4]
 80046f4:	687b      	ldr	r3, [r7, #4]
 80046f6:	69da      	ldr	r2, [r3, #28]
 80046f8:	2380      	movs	r3, #128	; 0x80
 80046fa:	03db      	lsls	r3, r3, #15
 80046fc:	4013      	ands	r3, r2
 80046fe:	4a05      	ldr	r2, [pc, #20]	; (8004714 <LL_USART_IsActiveFlag_REACK+0x28>)
 8004700:	4694      	mov	ip, r2
 8004702:	4463      	add	r3, ip
 8004704:	425a      	negs	r2, r3
 8004706:	4153      	adcs	r3, r2
 8004708:	b2db      	uxtb	r3, r3
 800470a:	0018      	movs	r0, r3
 800470c:	46bd      	mov	sp, r7
 800470e:	b002      	add	sp, #8
 8004710:	bd80      	pop	{r7, pc}
 8004712:	46c0      	nop			; (mov r8, r8)
 8004714:	ffc00000 	.word	0xffc00000

08004718 <LL_I2C_Enable>:
 8004718:	b580      	push	{r7, lr}
 800471a:	b082      	sub	sp, #8
 800471c:	af00      	add	r7, sp, #0
 800471e:	6078      	str	r0, [r7, #4]
 8004720:	687b      	ldr	r3, [r7, #4]
 8004722:	681b      	ldr	r3, [r3, #0]
 8004724:	2201      	movs	r2, #1
 8004726:	431a      	orrs	r2, r3
 8004728:	687b      	ldr	r3, [r7, #4]
 800472a:	601a      	str	r2, [r3, #0]
 800472c:	46c0      	nop			; (mov r8, r8)
 800472e:	46bd      	mov	sp, r7
 8004730:	b002      	add	sp, #8
 8004732:	bd80      	pop	{r7, pc}

08004734 <LL_I2C_Disable>:
 8004734:	b580      	push	{r7, lr}
 8004736:	b082      	sub	sp, #8
 8004738:	af00      	add	r7, sp, #0
 800473a:	6078      	str	r0, [r7, #4]
 800473c:	687b      	ldr	r3, [r7, #4]
 800473e:	681b      	ldr	r3, [r3, #0]
 8004740:	2201      	movs	r2, #1
 8004742:	4393      	bics	r3, r2
 8004744:	001a      	movs	r2, r3
 8004746:	687b      	ldr	r3, [r7, #4]
 8004748:	601a      	str	r2, [r3, #0]
 800474a:	46c0      	nop			; (mov r8, r8)
 800474c:	46bd      	mov	sp, r7
 800474e:	b002      	add	sp, #8
 8004750:	bd80      	pop	{r7, pc}
	...

08004754 <LL_I2C_SetDigitalFilter>:
 8004754:	b580      	push	{r7, lr}
 8004756:	b082      	sub	sp, #8
 8004758:	af00      	add	r7, sp, #0
 800475a:	6078      	str	r0, [r7, #4]
 800475c:	6039      	str	r1, [r7, #0]
 800475e:	687b      	ldr	r3, [r7, #4]
 8004760:	681b      	ldr	r3, [r3, #0]
 8004762:	4a05      	ldr	r2, [pc, #20]	; (8004778 <LL_I2C_SetDigitalFilter+0x24>)
 8004764:	401a      	ands	r2, r3
 8004766:	683b      	ldr	r3, [r7, #0]
 8004768:	021b      	lsls	r3, r3, #8
 800476a:	431a      	orrs	r2, r3
 800476c:	687b      	ldr	r3, [r7, #4]
 800476e:	601a      	str	r2, [r3, #0]
 8004770:	46c0      	nop			; (mov r8, r8)
 8004772:	46bd      	mov	sp, r7
 8004774:	b002      	add	sp, #8
 8004776:	bd80      	pop	{r7, pc}
 8004778:	fffff0ff 	.word	0xfffff0ff

0800477c <LL_I2C_DisableAnalogFilter>:
 800477c:	b580      	push	{r7, lr}
 800477e:	b082      	sub	sp, #8
 8004780:	af00      	add	r7, sp, #0
 8004782:	6078      	str	r0, [r7, #4]
 8004784:	687b      	ldr	r3, [r7, #4]
 8004786:	681b      	ldr	r3, [r3, #0]
 8004788:	2280      	movs	r2, #128	; 0x80
 800478a:	0152      	lsls	r2, r2, #5
 800478c:	431a      	orrs	r2, r3
 800478e:	687b      	ldr	r3, [r7, #4]
 8004790:	601a      	str	r2, [r3, #0]
 8004792:	46c0      	nop			; (mov r8, r8)
 8004794:	46bd      	mov	sp, r7
 8004796:	b002      	add	sp, #8
 8004798:	bd80      	pop	{r7, pc}

0800479a <LL_I2C_DisableClockStretching>:
 800479a:	b580      	push	{r7, lr}
 800479c:	b082      	sub	sp, #8
 800479e:	af00      	add	r7, sp, #0
 80047a0:	6078      	str	r0, [r7, #4]
 80047a2:	687b      	ldr	r3, [r7, #4]
 80047a4:	681b      	ldr	r3, [r3, #0]
 80047a6:	2280      	movs	r2, #128	; 0x80
 80047a8:	0292      	lsls	r2, r2, #10
 80047aa:	431a      	orrs	r2, r3
 80047ac:	687b      	ldr	r3, [r7, #4]
 80047ae:	601a      	str	r2, [r3, #0]
 80047b0:	46c0      	nop			; (mov r8, r8)
 80047b2:	46bd      	mov	sp, r7
 80047b4:	b002      	add	sp, #8
 80047b6:	bd80      	pop	{r7, pc}

080047b8 <LL_I2C_SetMasterAddressingMode>:
 80047b8:	b580      	push	{r7, lr}
 80047ba:	b082      	sub	sp, #8
 80047bc:	af00      	add	r7, sp, #0
 80047be:	6078      	str	r0, [r7, #4]
 80047c0:	6039      	str	r1, [r7, #0]
 80047c2:	687b      	ldr	r3, [r7, #4]
 80047c4:	685b      	ldr	r3, [r3, #4]
 80047c6:	4a05      	ldr	r2, [pc, #20]	; (80047dc <LL_I2C_SetMasterAddressingMode+0x24>)
 80047c8:	401a      	ands	r2, r3
 80047ca:	683b      	ldr	r3, [r7, #0]
 80047cc:	431a      	orrs	r2, r3
 80047ce:	687b      	ldr	r3, [r7, #4]
 80047d0:	605a      	str	r2, [r3, #4]
 80047d2:	46c0      	nop			; (mov r8, r8)
 80047d4:	46bd      	mov	sp, r7
 80047d6:	b002      	add	sp, #8
 80047d8:	bd80      	pop	{r7, pc}
 80047da:	46c0      	nop			; (mov r8, r8)
 80047dc:	fffff7ff 	.word	0xfffff7ff

080047e0 <LL_I2C_SetTiming>:
 80047e0:	b580      	push	{r7, lr}
 80047e2:	b082      	sub	sp, #8
 80047e4:	af00      	add	r7, sp, #0
 80047e6:	6078      	str	r0, [r7, #4]
 80047e8:	6039      	str	r1, [r7, #0]
 80047ea:	687b      	ldr	r3, [r7, #4]
 80047ec:	683a      	ldr	r2, [r7, #0]
 80047ee:	611a      	str	r2, [r3, #16]
 80047f0:	46c0      	nop			; (mov r8, r8)
 80047f2:	46bd      	mov	sp, r7
 80047f4:	b002      	add	sp, #8
 80047f6:	bd80      	pop	{r7, pc}

080047f8 <LL_I2C_SetMode>:
 80047f8:	b580      	push	{r7, lr}
 80047fa:	b082      	sub	sp, #8
 80047fc:	af00      	add	r7, sp, #0
 80047fe:	6078      	str	r0, [r7, #4]
 8004800:	6039      	str	r1, [r7, #0]
 8004802:	687b      	ldr	r3, [r7, #4]
 8004804:	681b      	ldr	r3, [r3, #0]
 8004806:	4a05      	ldr	r2, [pc, #20]	; (800481c <LL_I2C_SetMode+0x24>)
 8004808:	401a      	ands	r2, r3
 800480a:	683b      	ldr	r3, [r7, #0]
 800480c:	431a      	orrs	r2, r3
 800480e:	687b      	ldr	r3, [r7, #4]
 8004810:	601a      	str	r2, [r3, #0]
 8004812:	46c0      	nop			; (mov r8, r8)
 8004814:	46bd      	mov	sp, r7
 8004816:	b002      	add	sp, #8
 8004818:	bd80      	pop	{r7, pc}
 800481a:	46c0      	nop			; (mov r8, r8)
 800481c:	ffcfffff 	.word	0xffcfffff

08004820 <rcc_config>:
 8004820:	b580      	push	{r7, lr}
 8004822:	af00      	add	r7, sp, #0
 8004824:	2001      	movs	r0, #1
 8004826:	f7ff fd8d 	bl	8004344 <LL_FLASH_SetLatency>
 800482a:	f7ff fcad 	bl	8004188 <LL_RCC_HSI_Enable>
 800482e:	46c0      	nop			; (mov r8, r8)
 8004830:	f7ff fcb8 	bl	80041a4 <LL_RCC_HSI_IsReady>
 8004834:	0003      	movs	r3, r0
 8004836:	2b01      	cmp	r3, #1
 8004838:	d1fa      	bne.n	8004830 <rcc_config+0x10>
 800483a:	23a0      	movs	r3, #160	; 0xa0
 800483c:	039b      	lsls	r3, r3, #14
 800483e:	0019      	movs	r1, r3
 8004840:	2000      	movs	r0, #0
 8004842:	f7ff fd59 	bl	80042f8 <LL_RCC_PLL_ConfigDomain_SYS>
 8004846:	f7ff fd35 	bl	80042b4 <LL_RCC_PLL_Enable>
 800484a:	46c0      	nop			; (mov r8, r8)
 800484c:	f7ff fd40 	bl	80042d0 <LL_RCC_PLL_IsReady>
 8004850:	0003      	movs	r3, r0
 8004852:	2b01      	cmp	r3, #1
 8004854:	d1fa      	bne.n	800484c <rcc_config+0x2c>
 8004856:	2000      	movs	r0, #0
 8004858:	f7ff fcd4 	bl	8004204 <LL_RCC_SetAHBPrescaler>
 800485c:	2002      	movs	r0, #2
 800485e:	f7ff fcb1 	bl	80041c4 <LL_RCC_SetSysClkSource>
 8004862:	46c0      	nop			; (mov r8, r8)
 8004864:	f7ff fcc2 	bl	80041ec <LL_RCC_GetSysClkSource>
 8004868:	0003      	movs	r3, r0
 800486a:	2b08      	cmp	r3, #8
 800486c:	d1fa      	bne.n	8004864 <rcc_config+0x44>
 800486e:	2000      	movs	r0, #0
 8004870:	f7ff fcdc 	bl	800422c <LL_RCC_SetAPB1Prescaler>
 8004874:	4b02      	ldr	r3, [pc, #8]	; (8004880 <rcc_config+0x60>)
 8004876:	4a03      	ldr	r2, [pc, #12]	; (8004884 <rcc_config+0x64>)
 8004878:	601a      	str	r2, [r3, #0]
 800487a:	46c0      	nop			; (mov r8, r8)
 800487c:	46bd      	mov	sp, r7
 800487e:	bd80      	pop	{r7, pc}
 8004880:	2000000c 	.word	0x2000000c
 8004884:	02dc6c00 	.word	0x02dc6c00

08004888 <gpio_config>:
 8004888:	b580      	push	{r7, lr}
 800488a:	af00      	add	r7, sp, #0
 800488c:	2380      	movs	r3, #128	; 0x80
 800488e:	031b      	lsls	r3, r3, #12
 8004890:	0018      	movs	r0, r3
 8004892:	f7ff fd6b 	bl	800436c <LL_AHB1_GRP1_EnableClock>
 8004896:	2380      	movs	r3, #128	; 0x80
 8004898:	005b      	lsls	r3, r3, #1
 800489a:	4804      	ldr	r0, [pc, #16]	; (80048ac <gpio_config+0x24>)
 800489c:	2201      	movs	r2, #1
 800489e:	0019      	movs	r1, r3
 80048a0:	f7ff fda6 	bl	80043f0 <LL_GPIO_SetPinMode>
 80048a4:	46c0      	nop			; (mov r8, r8)
 80048a6:	46bd      	mov	sp, r7
 80048a8:	bd80      	pop	{r7, pc}
 80048aa:	46c0      	nop			; (mov r8, r8)
 80048ac:	48000800 	.word	0x48000800

080048b0 <exti_config>:
 80048b0:	b580      	push	{r7, lr}
 80048b2:	af00      	add	r7, sp, #0
 80048b4:	46c0      	nop			; (mov r8, r8)
 80048b6:	46bd      	mov	sp, r7
 80048b8:	bd80      	pop	{r7, pc}
	...

080048bc <usart_config>:
 80048bc:	b580      	push	{r7, lr}
 80048be:	af00      	add	r7, sp, #0
 80048c0:	2380      	movs	r3, #128	; 0x80
 80048c2:	029b      	lsls	r3, r3, #10
 80048c4:	0018      	movs	r0, r3
 80048c6:	f7ff fd51 	bl	800436c <LL_AHB1_GRP1_EnableClock>
 80048ca:	2380      	movs	r3, #128	; 0x80
 80048cc:	0099      	lsls	r1, r3, #2
 80048ce:	2390      	movs	r3, #144	; 0x90
 80048d0:	05db      	lsls	r3, r3, #23
 80048d2:	2202      	movs	r2, #2
 80048d4:	0018      	movs	r0, r3
 80048d6:	f7ff fd8b 	bl	80043f0 <LL_GPIO_SetPinMode>
 80048da:	2380      	movs	r3, #128	; 0x80
 80048dc:	0099      	lsls	r1, r3, #2
 80048de:	2390      	movs	r3, #144	; 0x90
 80048e0:	05db      	lsls	r3, r3, #23
 80048e2:	2201      	movs	r2, #1
 80048e4:	0018      	movs	r0, r3
 80048e6:	f7ff fe14 	bl	8004512 <LL_GPIO_SetAFPin_8_15>
 80048ea:	2380      	movs	r3, #128	; 0x80
 80048ec:	0099      	lsls	r1, r3, #2
 80048ee:	2390      	movs	r3, #144	; 0x90
 80048f0:	05db      	lsls	r3, r3, #23
 80048f2:	2203      	movs	r2, #3
 80048f4:	0018      	movs	r0, r3
 80048f6:	f7ff fdad 	bl	8004454 <LL_GPIO_SetPinSpeed>
 80048fa:	2380      	movs	r3, #128	; 0x80
 80048fc:	00d9      	lsls	r1, r3, #3
 80048fe:	2390      	movs	r3, #144	; 0x90
 8004900:	05db      	lsls	r3, r3, #23
 8004902:	2202      	movs	r2, #2
 8004904:	0018      	movs	r0, r3
 8004906:	f7ff fd73 	bl	80043f0 <LL_GPIO_SetPinMode>
 800490a:	2380      	movs	r3, #128	; 0x80
 800490c:	00d9      	lsls	r1, r3, #3
 800490e:	2390      	movs	r3, #144	; 0x90
 8004910:	05db      	lsls	r3, r3, #23
 8004912:	2201      	movs	r2, #1
 8004914:	0018      	movs	r0, r3
 8004916:	f7ff fdfc 	bl	8004512 <LL_GPIO_SetAFPin_8_15>
 800491a:	2380      	movs	r3, #128	; 0x80
 800491c:	00d9      	lsls	r1, r3, #3
 800491e:	2390      	movs	r3, #144	; 0x90
 8004920:	05db      	lsls	r3, r3, #23
 8004922:	2203      	movs	r2, #3
 8004924:	0018      	movs	r0, r3
 8004926:	f7ff fd95 	bl	8004454 <LL_GPIO_SetPinSpeed>
 800492a:	2380      	movs	r3, #128	; 0x80
 800492c:	01db      	lsls	r3, r3, #7
 800492e:	0018      	movs	r0, r3
 8004930:	f7ff fd48 	bl	80043c4 <LL_APB1_GRP2_EnableClock>
 8004934:	2000      	movs	r0, #0
 8004936:	f7ff fc8f 	bl	8004258 <LL_RCC_SetUSARTClockSource>
 800493a:	4b1a      	ldr	r3, [pc, #104]	; (80049a4 <usart_config+0xe8>)
 800493c:	210c      	movs	r1, #12
 800493e:	0018      	movs	r0, r3
 8004940:	f7ff fe22 	bl	8004588 <LL_USART_SetTransferDirection>
 8004944:	4b17      	ldr	r3, [pc, #92]	; (80049a4 <usart_config+0xe8>)
 8004946:	2100      	movs	r1, #0
 8004948:	0018      	movs	r0, r3
 800494a:	f7ff fe2f 	bl	80045ac <LL_USART_SetParity>
 800494e:	4b15      	ldr	r3, [pc, #84]	; (80049a4 <usart_config+0xe8>)
 8004950:	2100      	movs	r1, #0
 8004952:	0018      	movs	r0, r3
 8004954:	f7ff fe3e 	bl	80045d4 <LL_USART_SetDataWidth>
 8004958:	4b12      	ldr	r3, [pc, #72]	; (80049a4 <usart_config+0xe8>)
 800495a:	2100      	movs	r1, #0
 800495c:	0018      	movs	r0, r3
 800495e:	f7ff fe4d 	bl	80045fc <LL_USART_SetStopBitsLength>
 8004962:	4b10      	ldr	r3, [pc, #64]	; (80049a4 <usart_config+0xe8>)
 8004964:	2100      	movs	r1, #0
 8004966:	0018      	movs	r0, r3
 8004968:	f7ff fe5c 	bl	8004624 <LL_USART_SetTransferBitOrder>
 800496c:	4b0e      	ldr	r3, [pc, #56]	; (80049a8 <usart_config+0xec>)
 800496e:	6819      	ldr	r1, [r3, #0]
 8004970:	23e1      	movs	r3, #225	; 0xe1
 8004972:	025b      	lsls	r3, r3, #9
 8004974:	480b      	ldr	r0, [pc, #44]	; (80049a4 <usart_config+0xe8>)
 8004976:	2200      	movs	r2, #0
 8004978:	f7ff fe68 	bl	800464c <LL_USART_SetBaudRate>
 800497c:	4b09      	ldr	r3, [pc, #36]	; (80049a4 <usart_config+0xe8>)
 800497e:	0018      	movs	r0, r3
 8004980:	f7ff fdf4 	bl	800456c <LL_USART_Enable>
 8004984:	46c0      	nop			; (mov r8, r8)
 8004986:	4b07      	ldr	r3, [pc, #28]	; (80049a4 <usart_config+0xe8>)
 8004988:	0018      	movs	r0, r3
 800498a:	f7ff fe99 	bl	80046c0 <LL_USART_IsActiveFlag_TEACK>
 800498e:	1e03      	subs	r3, r0, #0
 8004990:	d0f9      	beq.n	8004986 <usart_config+0xca>
 8004992:	4b04      	ldr	r3, [pc, #16]	; (80049a4 <usart_config+0xe8>)
 8004994:	0018      	movs	r0, r3
 8004996:	f7ff fea9 	bl	80046ec <LL_USART_IsActiveFlag_REACK>
 800499a:	1e03      	subs	r3, r0, #0
 800499c:	d0f3      	beq.n	8004986 <usart_config+0xca>
 800499e:	46c0      	nop			; (mov r8, r8)
 80049a0:	46bd      	mov	sp, r7
 80049a2:	bd80      	pop	{r7, pc}
 80049a4:	40013800 	.word	0x40013800
 80049a8:	2000000c 	.word	0x2000000c

080049ac <i2c_config>:
 80049ac:	b580      	push	{r7, lr}
 80049ae:	af00      	add	r7, sp, #0
 80049b0:	2380      	movs	r3, #128	; 0x80
 80049b2:	02db      	lsls	r3, r3, #11
 80049b4:	0018      	movs	r0, r3
 80049b6:	f7ff fcd9 	bl	800436c <LL_AHB1_GRP1_EnableClock>
 80049ba:	4b36      	ldr	r3, [pc, #216]	; (8004a94 <i2c_config+0xe8>)
 80049bc:	2202      	movs	r2, #2
 80049be:	2140      	movs	r1, #64	; 0x40
 80049c0:	0018      	movs	r0, r3
 80049c2:	f7ff fd15 	bl	80043f0 <LL_GPIO_SetPinMode>
 80049c6:	4b33      	ldr	r3, [pc, #204]	; (8004a94 <i2c_config+0xe8>)
 80049c8:	2201      	movs	r2, #1
 80049ca:	2140      	movs	r1, #64	; 0x40
 80049cc:	0018      	movs	r0, r3
 80049ce:	f7ff fd2c 	bl	800442a <LL_GPIO_SetPinOutputType>
 80049d2:	4b30      	ldr	r3, [pc, #192]	; (8004a94 <i2c_config+0xe8>)
 80049d4:	2201      	movs	r2, #1
 80049d6:	2140      	movs	r1, #64	; 0x40
 80049d8:	0018      	movs	r0, r3
 80049da:	f7ff fd58 	bl	800448e <LL_GPIO_SetPinPull>
 80049de:	4b2d      	ldr	r3, [pc, #180]	; (8004a94 <i2c_config+0xe8>)
 80049e0:	2201      	movs	r2, #1
 80049e2:	2140      	movs	r1, #64	; 0x40
 80049e4:	0018      	movs	r0, r3
 80049e6:	f7ff fd6f 	bl	80044c8 <LL_GPIO_SetAFPin_0_7>
 80049ea:	4b2a      	ldr	r3, [pc, #168]	; (8004a94 <i2c_config+0xe8>)
 80049ec:	2203      	movs	r2, #3
 80049ee:	2140      	movs	r1, #64	; 0x40
 80049f0:	0018      	movs	r0, r3
 80049f2:	f7ff fd2f 	bl	8004454 <LL_GPIO_SetPinSpeed>
 80049f6:	4b27      	ldr	r3, [pc, #156]	; (8004a94 <i2c_config+0xe8>)
 80049f8:	2202      	movs	r2, #2
 80049fa:	2180      	movs	r1, #128	; 0x80
 80049fc:	0018      	movs	r0, r3
 80049fe:	f7ff fcf7 	bl	80043f0 <LL_GPIO_SetPinMode>
 8004a02:	4b24      	ldr	r3, [pc, #144]	; (8004a94 <i2c_config+0xe8>)
 8004a04:	2201      	movs	r2, #1
 8004a06:	2180      	movs	r1, #128	; 0x80
 8004a08:	0018      	movs	r0, r3
 8004a0a:	f7ff fd0e 	bl	800442a <LL_GPIO_SetPinOutputType>
 8004a0e:	4b21      	ldr	r3, [pc, #132]	; (8004a94 <i2c_config+0xe8>)
 8004a10:	2201      	movs	r2, #1
 8004a12:	2180      	movs	r1, #128	; 0x80
 8004a14:	0018      	movs	r0, r3
 8004a16:	f7ff fd3a 	bl	800448e <LL_GPIO_SetPinPull>
 8004a1a:	4b1e      	ldr	r3, [pc, #120]	; (8004a94 <i2c_config+0xe8>)
 8004a1c:	2201      	movs	r2, #1
 8004a1e:	2180      	movs	r1, #128	; 0x80
 8004a20:	0018      	movs	r0, r3
 8004a22:	f7ff fd51 	bl	80044c8 <LL_GPIO_SetAFPin_0_7>
 8004a26:	4b1b      	ldr	r3, [pc, #108]	; (8004a94 <i2c_config+0xe8>)
 8004a28:	2203      	movs	r2, #3
 8004a2a:	2180      	movs	r1, #128	; 0x80
 8004a2c:	0018      	movs	r0, r3
 8004a2e:	f7ff fd11 	bl	8004454 <LL_GPIO_SetPinSpeed>
 8004a32:	2010      	movs	r0, #16
 8004a34:	f7ff fc2a 	bl	800428c <LL_RCC_SetI2CClockSource>
 8004a38:	4b17      	ldr	r3, [pc, #92]	; (8004a98 <i2c_config+0xec>)
 8004a3a:	0018      	movs	r0, r3
 8004a3c:	f7ff fe7a 	bl	8004734 <LL_I2C_Disable>
 8004a40:	2380      	movs	r3, #128	; 0x80
 8004a42:	039b      	lsls	r3, r3, #14
 8004a44:	0018      	movs	r0, r3
 8004a46:	f7ff fca7 	bl	8004398 <LL_APB1_GRP1_EnableClock>
 8004a4a:	4b13      	ldr	r3, [pc, #76]	; (8004a98 <i2c_config+0xec>)
 8004a4c:	0018      	movs	r0, r3
 8004a4e:	f7ff fe95 	bl	800477c <LL_I2C_DisableAnalogFilter>
 8004a52:	4b11      	ldr	r3, [pc, #68]	; (8004a98 <i2c_config+0xec>)
 8004a54:	2101      	movs	r1, #1
 8004a56:	0018      	movs	r0, r3
 8004a58:	f7ff fe7c 	bl	8004754 <LL_I2C_SetDigitalFilter>
 8004a5c:	4a0f      	ldr	r2, [pc, #60]	; (8004a9c <i2c_config+0xf0>)
 8004a5e:	4b0e      	ldr	r3, [pc, #56]	; (8004a98 <i2c_config+0xec>)
 8004a60:	0011      	movs	r1, r2
 8004a62:	0018      	movs	r0, r3
 8004a64:	f7ff febc 	bl	80047e0 <LL_I2C_SetTiming>
 8004a68:	4b0b      	ldr	r3, [pc, #44]	; (8004a98 <i2c_config+0xec>)
 8004a6a:	0018      	movs	r0, r3
 8004a6c:	f7ff fe95 	bl	800479a <LL_I2C_DisableClockStretching>
 8004a70:	4b09      	ldr	r3, [pc, #36]	; (8004a98 <i2c_config+0xec>)
 8004a72:	2100      	movs	r1, #0
 8004a74:	0018      	movs	r0, r3
 8004a76:	f7ff fe9f 	bl	80047b8 <LL_I2C_SetMasterAddressingMode>
 8004a7a:	4b07      	ldr	r3, [pc, #28]	; (8004a98 <i2c_config+0xec>)
 8004a7c:	2100      	movs	r1, #0
 8004a7e:	0018      	movs	r0, r3
 8004a80:	f7ff feba 	bl	80047f8 <LL_I2C_SetMode>
 8004a84:	4b04      	ldr	r3, [pc, #16]	; (8004a98 <i2c_config+0xec>)
 8004a86:	0018      	movs	r0, r3
 8004a88:	f7ff fe46 	bl	8004718 <LL_I2C_Enable>
 8004a8c:	46c0      	nop			; (mov r8, r8)
 8004a8e:	46bd      	mov	sp, r7
 8004a90:	bd80      	pop	{r7, pc}
 8004a92:	46c0      	nop			; (mov r8, r8)
 8004a94:	48000400 	.word	0x48000400
 8004a98:	40005400 	.word	0x40005400
 8004a9c:	2000090e 	.word	0x2000090e

08004aa0 <LL_USART_IsActiveFlag_RXNE>:
 8004aa0:	b580      	push	{r7, lr}
 8004aa2:	b082      	sub	sp, #8
 8004aa4:	af00      	add	r7, sp, #0
 8004aa6:	6078      	str	r0, [r7, #4]
 8004aa8:	687b      	ldr	r3, [r7, #4]
 8004aaa:	69db      	ldr	r3, [r3, #28]
 8004aac:	2220      	movs	r2, #32
 8004aae:	4013      	ands	r3, r2
 8004ab0:	3b20      	subs	r3, #32
 8004ab2:	425a      	negs	r2, r3
 8004ab4:	4153      	adcs	r3, r2
 8004ab6:	b2db      	uxtb	r3, r3
 8004ab8:	0018      	movs	r0, r3
 8004aba:	46bd      	mov	sp, r7
 8004abc:	b002      	add	sp, #8
 8004abe:	bd80      	pop	{r7, pc}

08004ac0 <LL_USART_IsActiveFlag_TC>:
 8004ac0:	b580      	push	{r7, lr}
 8004ac2:	b082      	sub	sp, #8
 8004ac4:	af00      	add	r7, sp, #0
 8004ac6:	6078      	str	r0, [r7, #4]
 8004ac8:	687b      	ldr	r3, [r7, #4]
 8004aca:	69db      	ldr	r3, [r3, #28]
 8004acc:	2240      	movs	r2, #64	; 0x40
 8004ace:	4013      	ands	r3, r2
 8004ad0:	3b40      	subs	r3, #64	; 0x40
 8004ad2:	425a      	negs	r2, r3
 8004ad4:	4153      	adcs	r3, r2
 8004ad6:	b2db      	uxtb	r3, r3
 8004ad8:	0018      	movs	r0, r3
 8004ada:	46bd      	mov	sp, r7
 8004adc:	b002      	add	sp, #8
 8004ade:	bd80      	pop	{r7, pc}

08004ae0 <LL_USART_IsActiveFlag_TXE>:
 8004ae0:	b580      	push	{r7, lr}
 8004ae2:	b082      	sub	sp, #8
 8004ae4:	af00      	add	r7, sp, #0
 8004ae6:	6078      	str	r0, [r7, #4]
 8004ae8:	687b      	ldr	r3, [r7, #4]
 8004aea:	69db      	ldr	r3, [r3, #28]
 8004aec:	2280      	movs	r2, #128	; 0x80
 8004aee:	4013      	ands	r3, r2
 8004af0:	3b80      	subs	r3, #128	; 0x80
 8004af2:	425a      	negs	r2, r3
 8004af4:	4153      	adcs	r3, r2
 8004af6:	b2db      	uxtb	r3, r3
 8004af8:	0018      	movs	r0, r3
 8004afa:	46bd      	mov	sp, r7
 8004afc:	b002      	add	sp, #8
 8004afe:	bd80      	pop	{r7, pc}

08004b00 <LL_USART_ReceiveData8>:
 8004b00:	b580      	push	{r7, lr}
 8004b02:	b082      	sub	sp, #8
 8004b04:	af00      	add	r7, sp, #0
 8004b06:	6078      	str	r0, [r7, #4]
 8004b08:	687b      	ldr	r3, [r7, #4]
 8004b0a:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
 8004b0c:	b29b      	uxth	r3, r3
 8004b0e:	b2db      	uxtb	r3, r3
 8004b10:	0018      	movs	r0, r3
 8004b12:	46bd      	mov	sp, r7
 8004b14:	b002      	add	sp, #8
 8004b16:	bd80      	pop	{r7, pc}

08004b18 <LL_USART_TransmitData8>:
 8004b18:	b580      	push	{r7, lr}
 8004b1a:	b082      	sub	sp, #8
 8004b1c:	af00      	add	r7, sp, #0
 8004b1e:	6078      	str	r0, [r7, #4]
 8004b20:	000a      	movs	r2, r1
 8004b22:	1cfb      	adds	r3, r7, #3
 8004b24:	701a      	strb	r2, [r3, #0]
 8004b26:	1cfb      	adds	r3, r7, #3
 8004b28:	781b      	ldrb	r3, [r3, #0]
 8004b2a:	b29a      	uxth	r2, r3
 8004b2c:	687b      	ldr	r3, [r7, #4]
 8004b2e:	851a      	strh	r2, [r3, #40]	; 0x28
 8004b30:	46c0      	nop			; (mov r8, r8)
 8004b32:	46bd      	mov	sp, r7
 8004b34:	b002      	add	sp, #8
 8004b36:	bd80      	pop	{r7, pc}

08004b38 <usart_getc>:
 8004b38:	b580      	push	{r7, lr}
 8004b3a:	af00      	add	r7, sp, #0
 8004b3c:	46c0      	nop			; (mov r8, r8)
 8004b3e:	4b07      	ldr	r3, [pc, #28]	; (8004b5c <usart_getc+0x24>)
 8004b40:	0018      	movs	r0, r3
 8004b42:	f7ff ffad 	bl	8004aa0 <LL_USART_IsActiveFlag_RXNE>
 8004b46:	1e03      	subs	r3, r0, #0
 8004b48:	d0f9      	beq.n	8004b3e <usart_getc+0x6>
 8004b4a:	4b04      	ldr	r3, [pc, #16]	; (8004b5c <usart_getc+0x24>)
 8004b4c:	0018      	movs	r0, r3
 8004b4e:	f7ff ffd7 	bl	8004b00 <LL_USART_ReceiveData8>
 8004b52:	0003      	movs	r3, r0
 8004b54:	0018      	movs	r0, r3
 8004b56:	46bd      	mov	sp, r7
 8004b58:	bd80      	pop	{r7, pc}
 8004b5a:	46c0      	nop			; (mov r8, r8)
 8004b5c:	40013800 	.word	0x40013800

08004b60 <usart_putc>:
 8004b60:	b580      	push	{r7, lr}
 8004b62:	b082      	sub	sp, #8
 8004b64:	af00      	add	r7, sp, #0
 8004b66:	0002      	movs	r2, r0
 8004b68:	1dfb      	adds	r3, r7, #7
 8004b6a:	701a      	strb	r2, [r3, #0]
 8004b6c:	46c0      	nop			; (mov r8, r8)
 8004b6e:	4b0c      	ldr	r3, [pc, #48]	; (8004ba0 <usart_putc+0x40>)
 8004b70:	0018      	movs	r0, r3
 8004b72:	f7ff ffb5 	bl	8004ae0 <LL_USART_IsActiveFlag_TXE>
 8004b76:	1e03      	subs	r3, r0, #0
 8004b78:	d0f9      	beq.n	8004b6e <usart_putc+0xe>
 8004b7a:	1dfb      	adds	r3, r7, #7
 8004b7c:	781b      	ldrb	r3, [r3, #0]
 8004b7e:	4a08      	ldr	r2, [pc, #32]	; (8004ba0 <usart_putc+0x40>)
 8004b80:	0019      	movs	r1, r3
 8004b82:	0010      	movs	r0, r2
 8004b84:	f7ff ffc8 	bl	8004b18 <LL_USART_TransmitData8>
 8004b88:	46c0      	nop			; (mov r8, r8)
 8004b8a:	4b05      	ldr	r3, [pc, #20]	; (8004ba0 <usart_putc+0x40>)
 8004b8c:	0018      	movs	r0, r3
 8004b8e:	f7ff ff97 	bl	8004ac0 <LL_USART_IsActiveFlag_TC>
 8004b92:	1e03      	subs	r3, r0, #0
 8004b94:	d0f9      	beq.n	8004b8a <usart_putc+0x2a>
 8004b96:	46c0      	nop			; (mov r8, r8)
 8004b98:	46bd      	mov	sp, r7
 8004b9a:	b002      	add	sp, #8
 8004b9c:	bd80      	pop	{r7, pc}
 8004b9e:	46c0      	nop			; (mov r8, r8)
 8004ba0:	40013800 	.word	0x40013800

08004ba4 <printf_config>:
 8004ba4:	b580      	push	{r7, lr}
 8004ba6:	af00      	add	r7, sp, #0
 8004ba8:	4b04      	ldr	r3, [pc, #16]	; (8004bbc <printf_config+0x18>)
 8004baa:	4a05      	ldr	r2, [pc, #20]	; (8004bc0 <printf_config+0x1c>)
 8004bac:	601a      	str	r2, [r3, #0]
 8004bae:	4b05      	ldr	r3, [pc, #20]	; (8004bc4 <printf_config+0x20>)
 8004bb0:	4a05      	ldr	r2, [pc, #20]	; (8004bc8 <printf_config+0x24>)
 8004bb2:	601a      	str	r2, [r3, #0]
 8004bb4:	46c0      	nop			; (mov r8, r8)
 8004bb6:	46bd      	mov	sp, r7
 8004bb8:	bd80      	pop	{r7, pc}
 8004bba:	46c0      	nop			; (mov r8, r8)
 8004bbc:	200002ec 	.word	0x200002ec
 8004bc0:	08004b61 	.word	0x08004b61
 8004bc4:	200002e8 	.word	0x200002e8
 8004bc8:	08004b39 	.word	0x08004b39

08004bcc <LL_I2C_IsActiveFlag_TXIS>:
 8004bcc:	b580      	push	{r7, lr}
 8004bce:	b082      	sub	sp, #8
 8004bd0:	af00      	add	r7, sp, #0
 8004bd2:	6078      	str	r0, [r7, #4]
 8004bd4:	687b      	ldr	r3, [r7, #4]
 8004bd6:	699b      	ldr	r3, [r3, #24]
 8004bd8:	2202      	movs	r2, #2
 8004bda:	4013      	ands	r3, r2
 8004bdc:	3b02      	subs	r3, #2
 8004bde:	425a      	negs	r2, r3
 8004be0:	4153      	adcs	r3, r2
 8004be2:	b2db      	uxtb	r3, r3
 8004be4:	0018      	movs	r0, r3
 8004be6:	46bd      	mov	sp, r7
 8004be8:	b002      	add	sp, #8
 8004bea:	bd80      	pop	{r7, pc}

08004bec <LL_I2C_IsActiveFlag_RXNE>:
 8004bec:	b580      	push	{r7, lr}
 8004bee:	b082      	sub	sp, #8
 8004bf0:	af00      	add	r7, sp, #0
 8004bf2:	6078      	str	r0, [r7, #4]
 8004bf4:	687b      	ldr	r3, [r7, #4]
 8004bf6:	699b      	ldr	r3, [r3, #24]
 8004bf8:	2204      	movs	r2, #4
 8004bfa:	4013      	ands	r3, r2
 8004bfc:	3b04      	subs	r3, #4
 8004bfe:	425a      	negs	r2, r3
 8004c00:	4153      	adcs	r3, r2
 8004c02:	b2db      	uxtb	r3, r3
 8004c04:	0018      	movs	r0, r3
 8004c06:	46bd      	mov	sp, r7
 8004c08:	b002      	add	sp, #8
 8004c0a:	bd80      	pop	{r7, pc}

08004c0c <LL_I2C_IsActiveFlag_TC>:
 8004c0c:	b580      	push	{r7, lr}
 8004c0e:	b082      	sub	sp, #8
 8004c10:	af00      	add	r7, sp, #0
 8004c12:	6078      	str	r0, [r7, #4]
 8004c14:	687b      	ldr	r3, [r7, #4]
 8004c16:	699b      	ldr	r3, [r3, #24]
 8004c18:	2240      	movs	r2, #64	; 0x40
 8004c1a:	4013      	ands	r3, r2
 8004c1c:	3b40      	subs	r3, #64	; 0x40
 8004c1e:	425a      	negs	r2, r3
 8004c20:	4153      	adcs	r3, r2
 8004c22:	b2db      	uxtb	r3, r3
 8004c24:	0018      	movs	r0, r3
 8004c26:	46bd      	mov	sp, r7
 8004c28:	b002      	add	sp, #8
 8004c2a:	bd80      	pop	{r7, pc}

08004c2c <LL_I2C_HandleTransfer>:
 8004c2c:	b580      	push	{r7, lr}
 8004c2e:	b084      	sub	sp, #16
 8004c30:	af00      	add	r7, sp, #0
 8004c32:	60f8      	str	r0, [r7, #12]
 8004c34:	60b9      	str	r1, [r7, #8]
 8004c36:	607a      	str	r2, [r7, #4]
 8004c38:	603b      	str	r3, [r7, #0]
 8004c3a:	68fb      	ldr	r3, [r7, #12]
 8004c3c:	685b      	ldr	r3, [r3, #4]
 8004c3e:	4a09      	ldr	r2, [pc, #36]	; (8004c64 <LL_I2C_HandleTransfer+0x38>)
 8004c40:	401a      	ands	r2, r3
 8004c42:	68b9      	ldr	r1, [r7, #8]
 8004c44:	687b      	ldr	r3, [r7, #4]
 8004c46:	4319      	orrs	r1, r3
 8004c48:	683b      	ldr	r3, [r7, #0]
 8004c4a:	041b      	lsls	r3, r3, #16
 8004c4c:	4319      	orrs	r1, r3
 8004c4e:	69bb      	ldr	r3, [r7, #24]
 8004c50:	4319      	orrs	r1, r3
 8004c52:	69fb      	ldr	r3, [r7, #28]
 8004c54:	430b      	orrs	r3, r1
 8004c56:	431a      	orrs	r2, r3
 8004c58:	68fb      	ldr	r3, [r7, #12]
 8004c5a:	605a      	str	r2, [r3, #4]
 8004c5c:	46c0      	nop			; (mov r8, r8)
 8004c5e:	46bd      	mov	sp, r7
 8004c60:	b004      	add	sp, #16
 8004c62:	bd80      	pop	{r7, pc}
 8004c64:	fc008000 	.word	0xfc008000

08004c68 <LL_I2C_ReceiveData8>:
 8004c68:	b580      	push	{r7, lr}
 8004c6a:	b082      	sub	sp, #8
 8004c6c:	af00      	add	r7, sp, #0
 8004c6e:	6078      	str	r0, [r7, #4]
 8004c70:	687b      	ldr	r3, [r7, #4]
 8004c72:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8004c74:	b2db      	uxtb	r3, r3
 8004c76:	0018      	movs	r0, r3
 8004c78:	46bd      	mov	sp, r7
 8004c7a:	b002      	add	sp, #8
 8004c7c:	bd80      	pop	{r7, pc}

08004c7e <LL_I2C_TransmitData8>:
 8004c7e:	b580      	push	{r7, lr}
 8004c80:	b082      	sub	sp, #8
 8004c82:	af00      	add	r7, sp, #0
 8004c84:	6078      	str	r0, [r7, #4]
 8004c86:	000a      	movs	r2, r1
 8004c88:	1cfb      	adds	r3, r7, #3
 8004c8a:	701a      	strb	r2, [r3, #0]
 8004c8c:	1cfb      	adds	r3, r7, #3
 8004c8e:	781a      	ldrb	r2, [r3, #0]
 8004c90:	687b      	ldr	r3, [r7, #4]
 8004c92:	629a      	str	r2, [r3, #40]	; 0x28
 8004c94:	46c0      	nop			; (mov r8, r8)
 8004c96:	46bd      	mov	sp, r7
 8004c98:	b002      	add	sp, #8
 8004c9a:	bd80      	pop	{r7, pc}

08004c9c <mpu9255_WriteMulti>:
 8004c9c:	b590      	push	{r4, r7, lr}
 8004c9e:	b087      	sub	sp, #28
 8004ca0:	af02      	add	r7, sp, #8
 8004ca2:	0004      	movs	r4, r0
 8004ca4:	0008      	movs	r0, r1
 8004ca6:	603a      	str	r2, [r7, #0]
 8004ca8:	0019      	movs	r1, r3
 8004caa:	1dfb      	adds	r3, r7, #7
 8004cac:	1c22      	adds	r2, r4, #0
 8004cae:	701a      	strb	r2, [r3, #0]
 8004cb0:	1dbb      	adds	r3, r7, #6
 8004cb2:	1c02      	adds	r2, r0, #0
 8004cb4:	701a      	strb	r2, [r3, #0]
 8004cb6:	1d7b      	adds	r3, r7, #5
 8004cb8:	1c0a      	adds	r2, r1, #0
 8004cba:	701a      	strb	r2, [r3, #0]
 8004cbc:	23fa      	movs	r3, #250	; 0xfa
 8004cbe:	009b      	lsls	r3, r3, #2
 8004cc0:	60fb      	str	r3, [r7, #12]
 8004cc2:	1dfb      	adds	r3, r7, #7
 8004cc4:	7819      	ldrb	r1, [r3, #0]
 8004cc6:	1d7b      	adds	r3, r7, #5
 8004cc8:	781b      	ldrb	r3, [r3, #0]
 8004cca:	3301      	adds	r3, #1
 8004ccc:	001a      	movs	r2, r3
 8004cce:	4833      	ldr	r0, [pc, #204]	; (8004d9c <mpu9255_WriteMulti+0x100>)
 8004cd0:	2380      	movs	r3, #128	; 0x80
 8004cd2:	019b      	lsls	r3, r3, #6
 8004cd4:	9301      	str	r3, [sp, #4]
 8004cd6:	2380      	movs	r3, #128	; 0x80
 8004cd8:	049b      	lsls	r3, r3, #18
 8004cda:	9300      	str	r3, [sp, #0]
 8004cdc:	0013      	movs	r3, r2
 8004cde:	2200      	movs	r2, #0
 8004ce0:	f7ff ffa4 	bl	8004c2c <LL_I2C_HandleTransfer>
 8004ce4:	46c0      	nop			; (mov r8, r8)
 8004ce6:	4b2d      	ldr	r3, [pc, #180]	; (8004d9c <mpu9255_WriteMulti+0x100>)
 8004ce8:	0018      	movs	r0, r3
 8004cea:	f7ff ff6f 	bl	8004bcc <LL_I2C_IsActiveFlag_TXIS>
 8004cee:	1e03      	subs	r3, r0, #0
 8004cf0:	d104      	bne.n	8004cfc <mpu9255_WriteMulti+0x60>
 8004cf2:	68fb      	ldr	r3, [r7, #12]
 8004cf4:	1e5a      	subs	r2, r3, #1
 8004cf6:	60fa      	str	r2, [r7, #12]
 8004cf8:	2b00      	cmp	r3, #0
 8004cfa:	dcf4      	bgt.n	8004ce6 <mpu9255_WriteMulti+0x4a>
 8004cfc:	68fb      	ldr	r3, [r7, #12]
 8004cfe:	2b00      	cmp	r3, #0
 8004d00:	dc01      	bgt.n	8004d06 <mpu9255_WriteMulti+0x6a>
 8004d02:	2303      	movs	r3, #3
 8004d04:	e045      	b.n	8004d92 <mpu9255_WriteMulti+0xf6>
 8004d06:	1dbb      	adds	r3, r7, #6
 8004d08:	781b      	ldrb	r3, [r3, #0]
 8004d0a:	4a24      	ldr	r2, [pc, #144]	; (8004d9c <mpu9255_WriteMulti+0x100>)
 8004d0c:	0019      	movs	r1, r3
 8004d0e:	0010      	movs	r0, r2
 8004d10:	f7ff ffb5 	bl	8004c7e <LL_I2C_TransmitData8>
 8004d14:	230b      	movs	r3, #11
 8004d16:	18fb      	adds	r3, r7, r3
 8004d18:	2200      	movs	r2, #0
 8004d1a:	701a      	strb	r2, [r3, #0]
 8004d1c:	e020      	b.n	8004d60 <mpu9255_WriteMulti+0xc4>
 8004d1e:	46c0      	nop			; (mov r8, r8)
 8004d20:	4b1e      	ldr	r3, [pc, #120]	; (8004d9c <mpu9255_WriteMulti+0x100>)
 8004d22:	0018      	movs	r0, r3
 8004d24:	f7ff ff52 	bl	8004bcc <LL_I2C_IsActiveFlag_TXIS>
 8004d28:	1e03      	subs	r3, r0, #0
 8004d2a:	d104      	bne.n	8004d36 <mpu9255_WriteMulti+0x9a>
 8004d2c:	68fb      	ldr	r3, [r7, #12]
 8004d2e:	1e5a      	subs	r2, r3, #1
 8004d30:	60fa      	str	r2, [r7, #12]
 8004d32:	2b00      	cmp	r3, #0
 8004d34:	dcf4      	bgt.n	8004d20 <mpu9255_WriteMulti+0x84>
 8004d36:	68fb      	ldr	r3, [r7, #12]
 8004d38:	2b00      	cmp	r3, #0
 8004d3a:	dc01      	bgt.n	8004d40 <mpu9255_WriteMulti+0xa4>
 8004d3c:	2303      	movs	r3, #3
 8004d3e:	e028      	b.n	8004d92 <mpu9255_WriteMulti+0xf6>
 8004d40:	240b      	movs	r4, #11
 8004d42:	193b      	adds	r3, r7, r4
 8004d44:	781b      	ldrb	r3, [r3, #0]
 8004d46:	683a      	ldr	r2, [r7, #0]
 8004d48:	18d3      	adds	r3, r2, r3
 8004d4a:	781b      	ldrb	r3, [r3, #0]
 8004d4c:	4a13      	ldr	r2, [pc, #76]	; (8004d9c <mpu9255_WriteMulti+0x100>)
 8004d4e:	0019      	movs	r1, r3
 8004d50:	0010      	movs	r0, r2
 8004d52:	f7ff ff94 	bl	8004c7e <LL_I2C_TransmitData8>
 8004d56:	193b      	adds	r3, r7, r4
 8004d58:	781a      	ldrb	r2, [r3, #0]
 8004d5a:	193b      	adds	r3, r7, r4
 8004d5c:	3201      	adds	r2, #1
 8004d5e:	701a      	strb	r2, [r3, #0]
 8004d60:	230b      	movs	r3, #11
 8004d62:	18fa      	adds	r2, r7, r3
 8004d64:	1d7b      	adds	r3, r7, #5
 8004d66:	7812      	ldrb	r2, [r2, #0]
 8004d68:	781b      	ldrb	r3, [r3, #0]
 8004d6a:	429a      	cmp	r2, r3
 8004d6c:	d3d7      	bcc.n	8004d1e <mpu9255_WriteMulti+0x82>
 8004d6e:	46c0      	nop			; (mov r8, r8)
 8004d70:	4b0a      	ldr	r3, [pc, #40]	; (8004d9c <mpu9255_WriteMulti+0x100>)
 8004d72:	0018      	movs	r0, r3
 8004d74:	f7ff ff4a 	bl	8004c0c <LL_I2C_IsActiveFlag_TC>
 8004d78:	1e03      	subs	r3, r0, #0
 8004d7a:	d004      	beq.n	8004d86 <mpu9255_WriteMulti+0xea>
 8004d7c:	68fb      	ldr	r3, [r7, #12]
 8004d7e:	1e5a      	subs	r2, r3, #1
 8004d80:	60fa      	str	r2, [r7, #12]
 8004d82:	2b00      	cmp	r3, #0
 8004d84:	dcf4      	bgt.n	8004d70 <mpu9255_WriteMulti+0xd4>
 8004d86:	68fb      	ldr	r3, [r7, #12]
 8004d88:	2b00      	cmp	r3, #0
 8004d8a:	dc01      	bgt.n	8004d90 <mpu9255_WriteMulti+0xf4>
 8004d8c:	2303      	movs	r3, #3
 8004d8e:	e000      	b.n	8004d92 <mpu9255_WriteMulti+0xf6>
 8004d90:	2300      	movs	r3, #0
 8004d92:	0018      	movs	r0, r3
 8004d94:	46bd      	mov	sp, r7
 8004d96:	b005      	add	sp, #20
 8004d98:	bd90      	pop	{r4, r7, pc}
 8004d9a:	46c0      	nop			; (mov r8, r8)
 8004d9c:	40005400 	.word	0x40005400

08004da0 <mpu9255_ReadMulti>:
 8004da0:	b5b0      	push	{r4, r5, r7, lr}
 8004da2:	b086      	sub	sp, #24
 8004da4:	af02      	add	r7, sp, #8
 8004da6:	0004      	movs	r4, r0
 8004da8:	0008      	movs	r0, r1
 8004daa:	603a      	str	r2, [r7, #0]
 8004dac:	0019      	movs	r1, r3
 8004dae:	1dfb      	adds	r3, r7, #7
 8004db0:	1c22      	adds	r2, r4, #0
 8004db2:	701a      	strb	r2, [r3, #0]
 8004db4:	1dbb      	adds	r3, r7, #6
 8004db6:	1c02      	adds	r2, r0, #0
 8004db8:	701a      	strb	r2, [r3, #0]
 8004dba:	1d7b      	adds	r3, r7, #5
 8004dbc:	1c0a      	adds	r2, r1, #0
 8004dbe:	701a      	strb	r2, [r3, #0]
 8004dc0:	23fa      	movs	r3, #250	; 0xfa
 8004dc2:	009b      	lsls	r3, r3, #2
 8004dc4:	60fb      	str	r3, [r7, #12]
 8004dc6:	1dbb      	adds	r3, r7, #6
 8004dc8:	7819      	ldrb	r1, [r3, #0]
 8004dca:	1dfb      	adds	r3, r7, #7
 8004dcc:	7818      	ldrb	r0, [r3, #0]
 8004dce:	2300      	movs	r3, #0
 8004dd0:	2200      	movs	r2, #0
 8004dd2:	f7ff ff63 	bl	8004c9c <mpu9255_WriteMulti>
 8004dd6:	0003      	movs	r3, r0
 8004dd8:	2b03      	cmp	r3, #3
 8004dda:	d101      	bne.n	8004de0 <mpu9255_ReadMulti+0x40>
 8004ddc:	2303      	movs	r3, #3
 8004dde:	e04d      	b.n	8004e7c <mpu9255_ReadMulti+0xdc>
 8004de0:	1dfb      	adds	r3, r7, #7
 8004de2:	7819      	ldrb	r1, [r3, #0]
 8004de4:	1d7b      	adds	r3, r7, #5
 8004de6:	781a      	ldrb	r2, [r3, #0]
 8004de8:	4826      	ldr	r0, [pc, #152]	; (8004e84 <mpu9255_ReadMulti+0xe4>)
 8004dea:	2390      	movs	r3, #144	; 0x90
 8004dec:	019b      	lsls	r3, r3, #6
 8004dee:	9301      	str	r3, [sp, #4]
 8004df0:	2380      	movs	r3, #128	; 0x80
 8004df2:	049b      	lsls	r3, r3, #18
 8004df4:	9300      	str	r3, [sp, #0]
 8004df6:	0013      	movs	r3, r2
 8004df8:	2200      	movs	r2, #0
 8004dfa:	f7ff ff17 	bl	8004c2c <LL_I2C_HandleTransfer>
 8004dfe:	230b      	movs	r3, #11
 8004e00:	18fb      	adds	r3, r7, r3
 8004e02:	2200      	movs	r2, #0
 8004e04:	701a      	strb	r2, [r3, #0]
 8004e06:	e020      	b.n	8004e4a <mpu9255_ReadMulti+0xaa>
 8004e08:	46c0      	nop			; (mov r8, r8)
 8004e0a:	4b1e      	ldr	r3, [pc, #120]	; (8004e84 <mpu9255_ReadMulti+0xe4>)
 8004e0c:	0018      	movs	r0, r3
 8004e0e:	f7ff feed 	bl	8004bec <LL_I2C_IsActiveFlag_RXNE>
 8004e12:	1e03      	subs	r3, r0, #0
 8004e14:	d104      	bne.n	8004e20 <mpu9255_ReadMulti+0x80>
 8004e16:	68fb      	ldr	r3, [r7, #12]
 8004e18:	1e5a      	subs	r2, r3, #1
 8004e1a:	60fa      	str	r2, [r7, #12]
 8004e1c:	2b00      	cmp	r3, #0
 8004e1e:	dcf4      	bgt.n	8004e0a <mpu9255_ReadMulti+0x6a>
 8004e20:	68fb      	ldr	r3, [r7, #12]
 8004e22:	2b00      	cmp	r3, #0
 8004e24:	dc01      	bgt.n	8004e2a <mpu9255_ReadMulti+0x8a>
 8004e26:	2303      	movs	r3, #3
 8004e28:	e028      	b.n	8004e7c <mpu9255_ReadMulti+0xdc>
 8004e2a:	250b      	movs	r5, #11
 8004e2c:	197b      	adds	r3, r7, r5
 8004e2e:	781b      	ldrb	r3, [r3, #0]
 8004e30:	683a      	ldr	r2, [r7, #0]
 8004e32:	18d4      	adds	r4, r2, r3
 8004e34:	4b13      	ldr	r3, [pc, #76]	; (8004e84 <mpu9255_ReadMulti+0xe4>)
 8004e36:	0018      	movs	r0, r3
 8004e38:	f7ff ff16 	bl	8004c68 <LL_I2C_ReceiveData8>
 8004e3c:	0003      	movs	r3, r0
 8004e3e:	7023      	strb	r3, [r4, #0]
 8004e40:	197b      	adds	r3, r7, r5
 8004e42:	781a      	ldrb	r2, [r3, #0]
 8004e44:	197b      	adds	r3, r7, r5
 8004e46:	3201      	adds	r2, #1
 8004e48:	701a      	strb	r2, [r3, #0]
 8004e4a:	230b      	movs	r3, #11
 8004e4c:	18fa      	adds	r2, r7, r3
 8004e4e:	1d7b      	adds	r3, r7, #5
 8004e50:	7812      	ldrb	r2, [r2, #0]
 8004e52:	781b      	ldrb	r3, [r3, #0]
 8004e54:	429a      	cmp	r2, r3
 8004e56:	d3d7      	bcc.n	8004e08 <mpu9255_ReadMulti+0x68>
 8004e58:	46c0      	nop			; (mov r8, r8)
 8004e5a:	4b0a      	ldr	r3, [pc, #40]	; (8004e84 <mpu9255_ReadMulti+0xe4>)
 8004e5c:	0018      	movs	r0, r3
 8004e5e:	f7ff fed5 	bl	8004c0c <LL_I2C_IsActiveFlag_TC>
 8004e62:	1e03      	subs	r3, r0, #0
 8004e64:	d004      	beq.n	8004e70 <mpu9255_ReadMulti+0xd0>
 8004e66:	68fb      	ldr	r3, [r7, #12]
 8004e68:	1e5a      	subs	r2, r3, #1
 8004e6a:	60fa      	str	r2, [r7, #12]
 8004e6c:	2b00      	cmp	r3, #0
 8004e6e:	dcf4      	bgt.n	8004e5a <mpu9255_ReadMulti+0xba>
 8004e70:	68fb      	ldr	r3, [r7, #12]
 8004e72:	2b00      	cmp	r3, #0
 8004e74:	dc01      	bgt.n	8004e7a <mpu9255_ReadMulti+0xda>
 8004e76:	2303      	movs	r3, #3
 8004e78:	e000      	b.n	8004e7c <mpu9255_ReadMulti+0xdc>
 8004e7a:	2300      	movs	r3, #0
 8004e7c:	0018      	movs	r0, r3
 8004e7e:	46bd      	mov	sp, r7
 8004e80:	b004      	add	sp, #16
 8004e82:	bdb0      	pop	{r4, r5, r7, pc}
 8004e84:	40005400 	.word	0x40005400

08004e88 <mpu9255_WriteByte>:
 8004e88:	b590      	push	{r4, r7, lr}
 8004e8a:	b083      	sub	sp, #12
 8004e8c:	af00      	add	r7, sp, #0
 8004e8e:	0004      	movs	r4, r0
 8004e90:	0008      	movs	r0, r1
 8004e92:	0011      	movs	r1, r2
 8004e94:	1dfb      	adds	r3, r7, #7
 8004e96:	1c22      	adds	r2, r4, #0
 8004e98:	701a      	strb	r2, [r3, #0]
 8004e9a:	1dbb      	adds	r3, r7, #6
 8004e9c:	1c02      	adds	r2, r0, #0
 8004e9e:	701a      	strb	r2, [r3, #0]
 8004ea0:	1d7b      	adds	r3, r7, #5
 8004ea2:	1c0a      	adds	r2, r1, #0
 8004ea4:	701a      	strb	r2, [r3, #0]
 8004ea6:	1d7a      	adds	r2, r7, #5
 8004ea8:	1dbb      	adds	r3, r7, #6
 8004eaa:	7819      	ldrb	r1, [r3, #0]
 8004eac:	1dfb      	adds	r3, r7, #7
 8004eae:	7818      	ldrb	r0, [r3, #0]
 8004eb0:	2301      	movs	r3, #1
 8004eb2:	f7ff fef3 	bl	8004c9c <mpu9255_WriteMulti>
 8004eb6:	0003      	movs	r3, r0
 8004eb8:	0018      	movs	r0, r3
 8004eba:	46bd      	mov	sp, r7
 8004ebc:	b003      	add	sp, #12
 8004ebe:	bd90      	pop	{r4, r7, pc}

08004ec0 <mpu9255_ReadByte>:
 8004ec0:	b580      	push	{r7, lr}
 8004ec2:	b082      	sub	sp, #8
 8004ec4:	af00      	add	r7, sp, #0
 8004ec6:	603a      	str	r2, [r7, #0]
 8004ec8:	1dfb      	adds	r3, r7, #7
 8004eca:	1c02      	adds	r2, r0, #0
 8004ecc:	701a      	strb	r2, [r3, #0]
 8004ece:	1dbb      	adds	r3, r7, #6
 8004ed0:	1c0a      	adds	r2, r1, #0
 8004ed2:	701a      	strb	r2, [r3, #0]
 8004ed4:	683a      	ldr	r2, [r7, #0]
 8004ed6:	1dbb      	adds	r3, r7, #6
 8004ed8:	7819      	ldrb	r1, [r3, #0]
 8004eda:	1dfb      	adds	r3, r7, #7
 8004edc:	7818      	ldrb	r0, [r3, #0]
 8004ede:	2301      	movs	r3, #1
 8004ee0:	f7ff ff5e 	bl	8004da0 <mpu9255_ReadMulti>
 8004ee4:	0003      	movs	r3, r0
 8004ee6:	0018      	movs	r0, r3
 8004ee8:	46bd      	mov	sp, r7
 8004eea:	b002      	add	sp, #8
 8004eec:	bd80      	pop	{r7, pc}
	...

08004ef0 <mpu9255_init>:
 8004ef0:	b580      	push	{r7, lr}
 8004ef2:	b084      	sub	sp, #16
 8004ef4:	af00      	add	r7, sp, #0
 8004ef6:	2300      	movs	r3, #0
 8004ef8:	60fb      	str	r3, [r7, #12]
 8004efa:	2280      	movs	r2, #128	; 0x80
 8004efc:	216b      	movs	r1, #107	; 0x6b
 8004efe:	20d0      	movs	r0, #208	; 0xd0
 8004f00:	f7ff ffc2 	bl	8004e88 <mpu9255_WriteByte>
 8004f04:	0003      	movs	r3, r0
 8004f06:	60fb      	str	r3, [r7, #12]
 8004f08:	68fb      	ldr	r3, [r7, #12]
 8004f0a:	2b00      	cmp	r3, #0
 8004f0c:	d000      	beq.n	8004f10 <mpu9255_init+0x20>
 8004f0e:	e090      	b.n	8005032 <mpu9255_init+0x142>
 8004f10:	2300      	movs	r3, #0
 8004f12:	60bb      	str	r3, [r7, #8]
 8004f14:	2300      	movs	r3, #0
 8004f16:	607b      	str	r3, [r7, #4]
 8004f18:	e005      	b.n	8004f26 <mpu9255_init+0x36>
 8004f1a:	68bb      	ldr	r3, [r7, #8]
 8004f1c:	3301      	adds	r3, #1
 8004f1e:	60bb      	str	r3, [r7, #8]
 8004f20:	687b      	ldr	r3, [r7, #4]
 8004f22:	3301      	adds	r3, #1
 8004f24:	607b      	str	r3, [r7, #4]
 8004f26:	687b      	ldr	r3, [r7, #4]
 8004f28:	4a51      	ldr	r2, [pc, #324]	; (8005070 <mpu9255_init+0x180>)
 8004f2a:	4293      	cmp	r3, r2
 8004f2c:	ddf5      	ble.n	8004f1a <mpu9255_init+0x2a>
 8004f2e:	2201      	movs	r2, #1
 8004f30:	2119      	movs	r1, #25
 8004f32:	20d0      	movs	r0, #208	; 0xd0
 8004f34:	f7ff ffa8 	bl	8004e88 <mpu9255_WriteByte>
 8004f38:	0003      	movs	r3, r0
 8004f3a:	60fb      	str	r3, [r7, #12]
 8004f3c:	68fb      	ldr	r3, [r7, #12]
 8004f3e:	2b00      	cmp	r3, #0
 8004f40:	d000      	beq.n	8004f44 <mpu9255_init+0x54>
 8004f42:	e078      	b.n	8005036 <mpu9255_init+0x146>
 8004f44:	2205      	movs	r2, #5
 8004f46:	211a      	movs	r1, #26
 8004f48:	20d0      	movs	r0, #208	; 0xd0
 8004f4a:	f7ff ff9d 	bl	8004e88 <mpu9255_WriteByte>
 8004f4e:	0003      	movs	r3, r0
 8004f50:	60fb      	str	r3, [r7, #12]
 8004f52:	68fb      	ldr	r3, [r7, #12]
 8004f54:	2b00      	cmp	r3, #0
 8004f56:	d000      	beq.n	8004f5a <mpu9255_init+0x6a>
 8004f58:	e06f      	b.n	800503a <mpu9255_init+0x14a>
 8004f5a:	2208      	movs	r2, #8
 8004f5c:	211c      	movs	r1, #28
 8004f5e:	20d0      	movs	r0, #208	; 0xd0
 8004f60:	f7ff ff92 	bl	8004e88 <mpu9255_WriteByte>
 8004f64:	0003      	movs	r3, r0
 8004f66:	60fb      	str	r3, [r7, #12]
 8004f68:	68fb      	ldr	r3, [r7, #12]
 8004f6a:	2b00      	cmp	r3, #0
 8004f6c:	d167      	bne.n	800503e <mpu9255_init+0x14e>
 8004f6e:	2204      	movs	r2, #4
 8004f70:	211d      	movs	r1, #29
 8004f72:	20d0      	movs	r0, #208	; 0xd0
 8004f74:	f7ff ff88 	bl	8004e88 <mpu9255_WriteByte>
 8004f78:	0003      	movs	r3, r0
 8004f7a:	60fb      	str	r3, [r7, #12]
 8004f7c:	68fb      	ldr	r3, [r7, #12]
 8004f7e:	2b00      	cmp	r3, #0
 8004f80:	d15f      	bne.n	8005042 <mpu9255_init+0x152>
 8004f82:	2200      	movs	r2, #0
 8004f84:	2123      	movs	r1, #35	; 0x23
 8004f86:	20d0      	movs	r0, #208	; 0xd0
 8004f88:	f7ff ff7e 	bl	8004e88 <mpu9255_WriteByte>
 8004f8c:	0003      	movs	r3, r0
 8004f8e:	60fb      	str	r3, [r7, #12]
 8004f90:	68fb      	ldr	r3, [r7, #12]
 8004f92:	2b00      	cmp	r3, #0
 8004f94:	d157      	bne.n	8005046 <mpu9255_init+0x156>
 8004f96:	2200      	movs	r2, #0
 8004f98:	2138      	movs	r1, #56	; 0x38
 8004f9a:	20d0      	movs	r0, #208	; 0xd0
 8004f9c:	f7ff ff74 	bl	8004e88 <mpu9255_WriteByte>
 8004fa0:	0003      	movs	r3, r0
 8004fa2:	60fb      	str	r3, [r7, #12]
 8004fa4:	68fb      	ldr	r3, [r7, #12]
 8004fa6:	2b00      	cmp	r3, #0
 8004fa8:	d14f      	bne.n	800504a <mpu9255_init+0x15a>
 8004faa:	2200      	movs	r2, #0
 8004fac:	216a      	movs	r1, #106	; 0x6a
 8004fae:	20d0      	movs	r0, #208	; 0xd0
 8004fb0:	f7ff ff6a 	bl	8004e88 <mpu9255_WriteByte>
 8004fb4:	0003      	movs	r3, r0
 8004fb6:	60fb      	str	r3, [r7, #12]
 8004fb8:	68fb      	ldr	r3, [r7, #12]
 8004fba:	2b00      	cmp	r3, #0
 8004fbc:	d147      	bne.n	800504e <mpu9255_init+0x15e>
 8004fbe:	2201      	movs	r2, #1
 8004fc0:	216b      	movs	r1, #107	; 0x6b
 8004fc2:	20d0      	movs	r0, #208	; 0xd0
 8004fc4:	f7ff ff60 	bl	8004e88 <mpu9255_WriteByte>
 8004fc8:	0003      	movs	r3, r0
 8004fca:	60fb      	str	r3, [r7, #12]
 8004fcc:	68fb      	ldr	r3, [r7, #12]
 8004fce:	2b00      	cmp	r3, #0
 8004fd0:	d13f      	bne.n	8005052 <mpu9255_init+0x162>
 8004fd2:	2200      	movs	r2, #0
 8004fd4:	216c      	movs	r1, #108	; 0x6c
 8004fd6:	20d0      	movs	r0, #208	; 0xd0
 8004fd8:	f7ff ff56 	bl	8004e88 <mpu9255_WriteByte>
 8004fdc:	0003      	movs	r3, r0
 8004fde:	60fb      	str	r3, [r7, #12]
 8004fe0:	68fb      	ldr	r3, [r7, #12]
 8004fe2:	2b00      	cmp	r3, #0
 8004fe4:	d137      	bne.n	8005056 <mpu9255_init+0x166>
 8004fe6:	2200      	movs	r2, #0
 8004fe8:	211b      	movs	r1, #27
 8004fea:	20d0      	movs	r0, #208	; 0xd0
 8004fec:	f7ff ff4c 	bl	8004e88 <mpu9255_WriteByte>
 8004ff0:	0003      	movs	r3, r0
 8004ff2:	60fb      	str	r3, [r7, #12]
 8004ff4:	68fb      	ldr	r3, [r7, #12]
 8004ff6:	2b00      	cmp	r3, #0
 8004ff8:	d12f      	bne.n	800505a <mpu9255_init+0x16a>
 8004ffa:	2202      	movs	r2, #2
 8004ffc:	2137      	movs	r1, #55	; 0x37
 8004ffe:	20d0      	movs	r0, #208	; 0xd0
 8005000:	f7ff ff42 	bl	8004e88 <mpu9255_WriteByte>
 8005004:	0003      	movs	r3, r0
 8005006:	60fb      	str	r3, [r7, #12]
 8005008:	68fb      	ldr	r3, [r7, #12]
 800500a:	2b00      	cmp	r3, #0
 800500c:	d127      	bne.n	800505e <mpu9255_init+0x16e>
 800500e:	2216      	movs	r2, #22
 8005010:	210a      	movs	r1, #10
 8005012:	2018      	movs	r0, #24
 8005014:	f7ff ff38 	bl	8004e88 <mpu9255_WriteByte>
 8005018:	0003      	movs	r3, r0
 800501a:	60fb      	str	r3, [r7, #12]
 800501c:	68fb      	ldr	r3, [r7, #12]
 800501e:	2b00      	cmp	r3, #0
 8005020:	d11f      	bne.n	8005062 <mpu9255_init+0x172>
 8005022:	2200      	movs	r2, #0
 8005024:	2137      	movs	r1, #55	; 0x37
 8005026:	20d0      	movs	r0, #208	; 0xd0
 8005028:	f7ff ff2e 	bl	8004e88 <mpu9255_WriteByte>
 800502c:	0003      	movs	r3, r0
 800502e:	60fb      	str	r3, [r7, #12]
 8005030:	e018      	b.n	8005064 <mpu9255_init+0x174>
 8005032:	46c0      	nop			; (mov r8, r8)
 8005034:	e016      	b.n	8005064 <mpu9255_init+0x174>
 8005036:	46c0      	nop			; (mov r8, r8)
 8005038:	e014      	b.n	8005064 <mpu9255_init+0x174>
 800503a:	46c0      	nop			; (mov r8, r8)
 800503c:	e012      	b.n	8005064 <mpu9255_init+0x174>
 800503e:	46c0      	nop			; (mov r8, r8)
 8005040:	e010      	b.n	8005064 <mpu9255_init+0x174>
 8005042:	46c0      	nop			; (mov r8, r8)
 8005044:	e00e      	b.n	8005064 <mpu9255_init+0x174>
 8005046:	46c0      	nop			; (mov r8, r8)
 8005048:	e00c      	b.n	8005064 <mpu9255_init+0x174>
 800504a:	46c0      	nop			; (mov r8, r8)
 800504c:	e00a      	b.n	8005064 <mpu9255_init+0x174>
 800504e:	46c0      	nop			; (mov r8, r8)
 8005050:	e008      	b.n	8005064 <mpu9255_init+0x174>
 8005052:	46c0      	nop			; (mov r8, r8)
 8005054:	e006      	b.n	8005064 <mpu9255_init+0x174>
 8005056:	46c0      	nop			; (mov r8, r8)
 8005058:	e004      	b.n	8005064 <mpu9255_init+0x174>
 800505a:	46c0      	nop			; (mov r8, r8)
 800505c:	e002      	b.n	8005064 <mpu9255_init+0x174>
 800505e:	46c0      	nop			; (mov r8, r8)
 8005060:	e000      	b.n	8005064 <mpu9255_init+0x174>
 8005062:	46c0      	nop			; (mov r8, r8)
 8005064:	68fb      	ldr	r3, [r7, #12]
 8005066:	0018      	movs	r0, r3
 8005068:	46bd      	mov	sp, r7
 800506a:	b004      	add	sp, #16
 800506c:	bd80      	pop	{r7, pc}
 800506e:	46c0      	nop			; (mov r8, r8)
 8005070:	000f423f 	.word	0x000f423f

08005074 <_swapBytesI16>:
 8005074:	b580      	push	{r7, lr}
 8005076:	b084      	sub	sp, #16
 8005078:	af00      	add	r7, sp, #0
 800507a:	0002      	movs	r2, r0
 800507c:	1dbb      	adds	r3, r7, #6
 800507e:	801a      	strh	r2, [r3, #0]
 8005080:	1dbb      	adds	r3, r7, #6
 8005082:	60fb      	str	r3, [r7, #12]
 8005084:	210b      	movs	r1, #11
 8005086:	187b      	adds	r3, r7, r1
 8005088:	68fa      	ldr	r2, [r7, #12]
 800508a:	7812      	ldrb	r2, [r2, #0]
 800508c:	701a      	strb	r2, [r3, #0]
 800508e:	68fb      	ldr	r3, [r7, #12]
 8005090:	785a      	ldrb	r2, [r3, #1]
 8005092:	68fb      	ldr	r3, [r7, #12]
 8005094:	701a      	strb	r2, [r3, #0]
 8005096:	68fb      	ldr	r3, [r7, #12]
 8005098:	3301      	adds	r3, #1
 800509a:	187a      	adds	r2, r7, r1
 800509c:	7812      	ldrb	r2, [r2, #0]
 800509e:	701a      	strb	r2, [r3, #0]
 80050a0:	1dbb      	adds	r3, r7, #6
 80050a2:	2200      	movs	r2, #0
 80050a4:	5e9b      	ldrsh	r3, [r3, r2]
 80050a6:	0018      	movs	r0, r3
 80050a8:	46bd      	mov	sp, r7
 80050aa:	b004      	add	sp, #16
 80050ac:	bd80      	pop	{r7, pc}

080050ae <mpu9255_readIMU>:
 80050ae:	b590      	push	{r4, r7, lr}
 80050b0:	b087      	sub	sp, #28
 80050b2:	af00      	add	r7, sp, #0
 80050b4:	6078      	str	r0, [r7, #4]
 80050b6:	6039      	str	r1, [r7, #0]
 80050b8:	2300      	movs	r3, #0
 80050ba:	617b      	str	r3, [r7, #20]
 80050bc:	687a      	ldr	r2, [r7, #4]
 80050be:	2306      	movs	r3, #6
 80050c0:	213b      	movs	r1, #59	; 0x3b
 80050c2:	20d0      	movs	r0, #208	; 0xd0
 80050c4:	f7ff fe6c 	bl	8004da0 <mpu9255_ReadMulti>
 80050c8:	0003      	movs	r3, r0
 80050ca:	617b      	str	r3, [r7, #20]
 80050cc:	697b      	ldr	r3, [r7, #20]
 80050ce:	2b00      	cmp	r3, #0
 80050d0:	d13b      	bne.n	800514a <mpu9255_readIMU+0x9c>
 80050d2:	683a      	ldr	r2, [r7, #0]
 80050d4:	2306      	movs	r3, #6
 80050d6:	2143      	movs	r1, #67	; 0x43
 80050d8:	20d0      	movs	r0, #208	; 0xd0
 80050da:	f7ff fe61 	bl	8004da0 <mpu9255_ReadMulti>
 80050de:	0003      	movs	r3, r0
 80050e0:	617b      	str	r3, [r7, #20]
 80050e2:	697b      	ldr	r3, [r7, #20]
 80050e4:	2b00      	cmp	r3, #0
 80050e6:	d132      	bne.n	800514e <mpu9255_readIMU+0xa0>
 80050e8:	2300      	movs	r3, #0
 80050ea:	613b      	str	r3, [r7, #16]
 80050ec:	e011      	b.n	8005112 <mpu9255_readIMU+0x64>
 80050ee:	693b      	ldr	r3, [r7, #16]
 80050f0:	005b      	lsls	r3, r3, #1
 80050f2:	687a      	ldr	r2, [r7, #4]
 80050f4:	18d3      	adds	r3, r2, r3
 80050f6:	2100      	movs	r1, #0
 80050f8:	5e59      	ldrsh	r1, [r3, r1]
 80050fa:	693b      	ldr	r3, [r7, #16]
 80050fc:	005b      	lsls	r3, r3, #1
 80050fe:	687a      	ldr	r2, [r7, #4]
 8005100:	18d4      	adds	r4, r2, r3
 8005102:	0008      	movs	r0, r1
 8005104:	f7ff ffb6 	bl	8005074 <_swapBytesI16>
 8005108:	0003      	movs	r3, r0
 800510a:	8023      	strh	r3, [r4, #0]
 800510c:	693b      	ldr	r3, [r7, #16]
 800510e:	3301      	adds	r3, #1
 8005110:	613b      	str	r3, [r7, #16]
 8005112:	693b      	ldr	r3, [r7, #16]
 8005114:	2b02      	cmp	r3, #2
 8005116:	ddea      	ble.n	80050ee <mpu9255_readIMU+0x40>
 8005118:	2300      	movs	r3, #0
 800511a:	60fb      	str	r3, [r7, #12]
 800511c:	e011      	b.n	8005142 <mpu9255_readIMU+0x94>
 800511e:	68fb      	ldr	r3, [r7, #12]
 8005120:	005b      	lsls	r3, r3, #1
 8005122:	683a      	ldr	r2, [r7, #0]
 8005124:	18d3      	adds	r3, r2, r3
 8005126:	2100      	movs	r1, #0
 8005128:	5e59      	ldrsh	r1, [r3, r1]
 800512a:	68fb      	ldr	r3, [r7, #12]
 800512c:	005b      	lsls	r3, r3, #1
 800512e:	683a      	ldr	r2, [r7, #0]
 8005130:	18d4      	adds	r4, r2, r3
 8005132:	0008      	movs	r0, r1
 8005134:	f7ff ff9e 	bl	8005074 <_swapBytesI16>
 8005138:	0003      	movs	r3, r0
 800513a:	8023      	strh	r3, [r4, #0]
 800513c:	68fb      	ldr	r3, [r7, #12]
 800513e:	3301      	adds	r3, #1
 8005140:	60fb      	str	r3, [r7, #12]
 8005142:	68fb      	ldr	r3, [r7, #12]
 8005144:	2b02      	cmp	r3, #2
 8005146:	ddea      	ble.n	800511e <mpu9255_readIMU+0x70>
 8005148:	e002      	b.n	8005150 <mpu9255_readIMU+0xa2>
 800514a:	46c0      	nop			; (mov r8, r8)
 800514c:	e000      	b.n	8005150 <mpu9255_readIMU+0xa2>
 800514e:	46c0      	nop			; (mov r8, r8)
 8005150:	697b      	ldr	r3, [r7, #20]
 8005152:	0018      	movs	r0, r3
 8005154:	46bd      	mov	sp, r7
 8005156:	b007      	add	sp, #28
 8005158:	bd90      	pop	{r4, r7, pc}

0800515a <mpu9255_readCompass>:
 800515a:	b590      	push	{r4, r7, lr}
 800515c:	b085      	sub	sp, #20
 800515e:	af00      	add	r7, sp, #0
 8005160:	6078      	str	r0, [r7, #4]
 8005162:	2300      	movs	r3, #0
 8005164:	60fb      	str	r3, [r7, #12]
 8005166:	2202      	movs	r2, #2
 8005168:	2137      	movs	r1, #55	; 0x37
 800516a:	20d0      	movs	r0, #208	; 0xd0
 800516c:	f7ff fe8c 	bl	8004e88 <mpu9255_WriteByte>
 8005170:	0003      	movs	r3, r0
 8005172:	60fb      	str	r3, [r7, #12]
 8005174:	68fb      	ldr	r3, [r7, #12]
 8005176:	2b00      	cmp	r3, #0
 8005178:	d12b      	bne.n	80051d2 <mpu9255_readCompass+0x78>
 800517a:	240b      	movs	r4, #11
 800517c:	193b      	adds	r3, r7, r4
 800517e:	001a      	movs	r2, r3
 8005180:	2102      	movs	r1, #2
 8005182:	2018      	movs	r0, #24
 8005184:	f7ff fe9c 	bl	8004ec0 <mpu9255_ReadByte>
 8005188:	193b      	adds	r3, r7, r4
 800518a:	001a      	movs	r2, r3
 800518c:	2102      	movs	r1, #2
 800518e:	2018      	movs	r0, #24
 8005190:	f7ff fe96 	bl	8004ec0 <mpu9255_ReadByte>
 8005194:	0003      	movs	r3, r0
 8005196:	60fb      	str	r3, [r7, #12]
 8005198:	68fb      	ldr	r3, [r7, #12]
 800519a:	2b00      	cmp	r3, #0
 800519c:	d11b      	bne.n	80051d6 <mpu9255_readCompass+0x7c>
 800519e:	230b      	movs	r3, #11
 80051a0:	18fb      	adds	r3, r7, r3
 80051a2:	781b      	ldrb	r3, [r3, #0]
 80051a4:	2b00      	cmp	r3, #0
 80051a6:	d018      	beq.n	80051da <mpu9255_readCompass+0x80>
 80051a8:	687a      	ldr	r2, [r7, #4]
 80051aa:	2306      	movs	r3, #6
 80051ac:	2103      	movs	r1, #3
 80051ae:	2018      	movs	r0, #24
 80051b0:	f7ff fdf6 	bl	8004da0 <mpu9255_ReadMulti>
 80051b4:	0003      	movs	r3, r0
 80051b6:	60fb      	str	r3, [r7, #12]
 80051b8:	68fb      	ldr	r3, [r7, #12]
 80051ba:	2b00      	cmp	r3, #0
 80051bc:	d10f      	bne.n	80051de <mpu9255_readCompass+0x84>
 80051be:	230b      	movs	r3, #11
 80051c0:	18fb      	adds	r3, r7, r3
 80051c2:	001a      	movs	r2, r3
 80051c4:	2109      	movs	r1, #9
 80051c6:	2018      	movs	r0, #24
 80051c8:	f7ff fe7a 	bl	8004ec0 <mpu9255_ReadByte>
 80051cc:	0003      	movs	r3, r0
 80051ce:	60fb      	str	r3, [r7, #12]
 80051d0:	e006      	b.n	80051e0 <mpu9255_readCompass+0x86>
 80051d2:	46c0      	nop			; (mov r8, r8)
 80051d4:	e004      	b.n	80051e0 <mpu9255_readCompass+0x86>
 80051d6:	46c0      	nop			; (mov r8, r8)
 80051d8:	e002      	b.n	80051e0 <mpu9255_readCompass+0x86>
 80051da:	46c0      	nop			; (mov r8, r8)
 80051dc:	e000      	b.n	80051e0 <mpu9255_readCompass+0x86>
 80051de:	46c0      	nop			; (mov r8, r8)
 80051e0:	2200      	movs	r2, #0
 80051e2:	2137      	movs	r1, #55	; 0x37
 80051e4:	20d0      	movs	r0, #208	; 0xd0
 80051e6:	f7ff fe4f 	bl	8004e88 <mpu9255_WriteByte>
 80051ea:	0003      	movs	r3, r0
 80051ec:	60fb      	str	r3, [r7, #12]
 80051ee:	68fb      	ldr	r3, [r7, #12]
 80051f0:	2b00      	cmp	r3, #0
 80051f2:	d000      	beq.n	80051f6 <mpu9255_readCompass+0x9c>
 80051f4:	e7f4      	b.n	80051e0 <mpu9255_readCompass+0x86>
 80051f6:	68fb      	ldr	r3, [r7, #12]
 80051f8:	0018      	movs	r0, r3
 80051fa:	46bd      	mov	sp, r7
 80051fc:	b005      	add	sp, #20
 80051fe:	bd90      	pop	{r4, r7, pc}

08005200 <mpu9255_recalcAccel>:
 8005200:	b5b0      	push	{r4, r5, r7, lr}
 8005202:	b08a      	sub	sp, #40	; 0x28
 8005204:	af00      	add	r7, sp, #0
 8005206:	6078      	str	r0, [r7, #4]
 8005208:	6039      	str	r1, [r7, #0]
 800520a:	2508      	movs	r5, #8
 800520c:	197a      	adds	r2, r7, r5
 800520e:	2300      	movs	r3, #0
 8005210:	2400      	movs	r4, #0
 8005212:	6013      	str	r3, [r2, #0]
 8005214:	6054      	str	r4, [r2, #4]
 8005216:	197a      	adds	r2, r7, r5
 8005218:	2300      	movs	r3, #0
 800521a:	2400      	movs	r4, #0
 800521c:	6093      	str	r3, [r2, #8]
 800521e:	60d4      	str	r4, [r2, #12]
 8005220:	197a      	adds	r2, r7, r5
 8005222:	2300      	movs	r3, #0
 8005224:	2400      	movs	r4, #0
 8005226:	6113      	str	r3, [r2, #16]
 8005228:	6154      	str	r4, [r2, #20]
 800522a:	687b      	ldr	r3, [r7, #4]
 800522c:	2200      	movs	r2, #0
 800522e:	5e9b      	ldrsh	r3, [r3, r2]
 8005230:	0018      	movs	r0, r3
 8005232:	f7fd f9c3 	bl	80025bc <__aeabi_i2d>
 8005236:	4a39      	ldr	r2, [pc, #228]	; (800531c <mpu9255_recalcAccel+0x11c>)
 8005238:	4b39      	ldr	r3, [pc, #228]	; (8005320 <mpu9255_recalcAccel+0x120>)
 800523a:	f7fc fc05 	bl	8001a48 <__aeabi_dmul>
 800523e:	0003      	movs	r3, r0
 8005240:	000c      	movs	r4, r1
 8005242:	0018      	movs	r0, r3
 8005244:	0021      	movs	r1, r4
 8005246:	2200      	movs	r2, #0
 8005248:	4b36      	ldr	r3, [pc, #216]	; (8005324 <mpu9255_recalcAccel+0x124>)
 800524a:	f7fb fff3 	bl	8001234 <__aeabi_ddiv>
 800524e:	0003      	movs	r3, r0
 8005250:	000c      	movs	r4, r1
 8005252:	0018      	movs	r0, r3
 8005254:	0021      	movs	r1, r4
 8005256:	0002      	movs	r2, r0
 8005258:	000b      	movs	r3, r1
 800525a:	f7fb fccf 	bl	8000bfc <__aeabi_dadd>
 800525e:	0003      	movs	r3, r0
 8005260:	000c      	movs	r4, r1
 8005262:	197a      	adds	r2, r7, r5
 8005264:	6013      	str	r3, [r2, #0]
 8005266:	6054      	str	r4, [r2, #4]
 8005268:	687b      	ldr	r3, [r7, #4]
 800526a:	3302      	adds	r3, #2
 800526c:	2200      	movs	r2, #0
 800526e:	5e9b      	ldrsh	r3, [r3, r2]
 8005270:	0018      	movs	r0, r3
 8005272:	f7fd f9a3 	bl	80025bc <__aeabi_i2d>
 8005276:	4a29      	ldr	r2, [pc, #164]	; (800531c <mpu9255_recalcAccel+0x11c>)
 8005278:	4b29      	ldr	r3, [pc, #164]	; (8005320 <mpu9255_recalcAccel+0x120>)
 800527a:	f7fc fbe5 	bl	8001a48 <__aeabi_dmul>
 800527e:	0003      	movs	r3, r0
 8005280:	000c      	movs	r4, r1
 8005282:	0018      	movs	r0, r3
 8005284:	0021      	movs	r1, r4
 8005286:	2200      	movs	r2, #0
 8005288:	4b26      	ldr	r3, [pc, #152]	; (8005324 <mpu9255_recalcAccel+0x124>)
 800528a:	f7fb ffd3 	bl	8001234 <__aeabi_ddiv>
 800528e:	0003      	movs	r3, r0
 8005290:	000c      	movs	r4, r1
 8005292:	0018      	movs	r0, r3
 8005294:	0021      	movs	r1, r4
 8005296:	0002      	movs	r2, r0
 8005298:	000b      	movs	r3, r1
 800529a:	f7fb fcaf 	bl	8000bfc <__aeabi_dadd>
 800529e:	0003      	movs	r3, r0
 80052a0:	000c      	movs	r4, r1
 80052a2:	197a      	adds	r2, r7, r5
 80052a4:	6093      	str	r3, [r2, #8]
 80052a6:	60d4      	str	r4, [r2, #12]
 80052a8:	687b      	ldr	r3, [r7, #4]
 80052aa:	3304      	adds	r3, #4
 80052ac:	2200      	movs	r2, #0
 80052ae:	5e9b      	ldrsh	r3, [r3, r2]
 80052b0:	0018      	movs	r0, r3
 80052b2:	f7fd f983 	bl	80025bc <__aeabi_i2d>
 80052b6:	4a19      	ldr	r2, [pc, #100]	; (800531c <mpu9255_recalcAccel+0x11c>)
 80052b8:	4b19      	ldr	r3, [pc, #100]	; (8005320 <mpu9255_recalcAccel+0x120>)
 80052ba:	f7fc fbc5 	bl	8001a48 <__aeabi_dmul>
 80052be:	0003      	movs	r3, r0
 80052c0:	000c      	movs	r4, r1
 80052c2:	0018      	movs	r0, r3
 80052c4:	0021      	movs	r1, r4
 80052c6:	2200      	movs	r2, #0
 80052c8:	4b16      	ldr	r3, [pc, #88]	; (8005324 <mpu9255_recalcAccel+0x124>)
 80052ca:	f7fb ffb3 	bl	8001234 <__aeabi_ddiv>
 80052ce:	0003      	movs	r3, r0
 80052d0:	000c      	movs	r4, r1
 80052d2:	0018      	movs	r0, r3
 80052d4:	0021      	movs	r1, r4
 80052d6:	0002      	movs	r2, r0
 80052d8:	000b      	movs	r3, r1
 80052da:	f7fb fc8f 	bl	8000bfc <__aeabi_dadd>
 80052de:	0003      	movs	r3, r0
 80052e0:	000c      	movs	r4, r1
 80052e2:	197a      	adds	r2, r7, r5
 80052e4:	6113      	str	r3, [r2, #16]
 80052e6:	6154      	str	r4, [r2, #20]
 80052e8:	2300      	movs	r3, #0
 80052ea:	627b      	str	r3, [r7, #36]	; 0x24
 80052ec:	e00f      	b.n	800530e <mpu9255_recalcAccel+0x10e>
 80052ee:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80052f0:	00db      	lsls	r3, r3, #3
 80052f2:	683a      	ldr	r2, [r7, #0]
 80052f4:	18d2      	adds	r2, r2, r3
 80052f6:	2308      	movs	r3, #8
 80052f8:	18f9      	adds	r1, r7, r3
 80052fa:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80052fc:	00db      	lsls	r3, r3, #3
 80052fe:	18cb      	adds	r3, r1, r3
 8005300:	685c      	ldr	r4, [r3, #4]
 8005302:	681b      	ldr	r3, [r3, #0]
 8005304:	6013      	str	r3, [r2, #0]
 8005306:	6054      	str	r4, [r2, #4]
 8005308:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800530a:	3301      	adds	r3, #1
 800530c:	627b      	str	r3, [r7, #36]	; 0x24
 800530e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8005310:	2b02      	cmp	r3, #2
 8005312:	ddec      	ble.n	80052ee <mpu9255_recalcAccel+0xee>
 8005314:	46c0      	nop			; (mov r8, r8)
 8005316:	46bd      	mov	sp, r7
 8005318:	b00a      	add	sp, #40	; 0x28
 800531a:	bdb0      	pop	{r4, r5, r7, pc}
 800531c:	374bc6a8 	.word	0x374bc6a8
 8005320:	4023a189 	.word	0x4023a189
 8005324:	40d00000 	.word	0x40d00000

08005328 <mpu9255_recalcGyro>:
 8005328:	b5b0      	push	{r4, r5, r7, lr}
 800532a:	b082      	sub	sp, #8
 800532c:	af00      	add	r7, sp, #0
 800532e:	6078      	str	r0, [r7, #4]
 8005330:	6039      	str	r1, [r7, #0]
 8005332:	687b      	ldr	r3, [r7, #4]
 8005334:	2200      	movs	r2, #0
 8005336:	5e9b      	ldrsh	r3, [r3, r2]
 8005338:	0018      	movs	r0, r3
 800533a:	f7fd f93f 	bl	80025bc <__aeabi_i2d>
 800533e:	4a24      	ldr	r2, [pc, #144]	; (80053d0 <mpu9255_recalcGyro+0xa8>)
 8005340:	4b24      	ldr	r3, [pc, #144]	; (80053d4 <mpu9255_recalcGyro+0xac>)
 8005342:	f7fc fb81 	bl	8001a48 <__aeabi_dmul>
 8005346:	0003      	movs	r3, r0
 8005348:	000c      	movs	r4, r1
 800534a:	0018      	movs	r0, r3
 800534c:	0021      	movs	r1, r4
 800534e:	2200      	movs	r2, #0
 8005350:	4b21      	ldr	r3, [pc, #132]	; (80053d8 <mpu9255_recalcGyro+0xb0>)
 8005352:	f7fb ff6f 	bl	8001234 <__aeabi_ddiv>
 8005356:	0003      	movs	r3, r0
 8005358:	000c      	movs	r4, r1
 800535a:	683a      	ldr	r2, [r7, #0]
 800535c:	6013      	str	r3, [r2, #0]
 800535e:	6054      	str	r4, [r2, #4]
 8005360:	687b      	ldr	r3, [r7, #4]
 8005362:	3302      	adds	r3, #2
 8005364:	2200      	movs	r2, #0
 8005366:	5e9b      	ldrsh	r3, [r3, r2]
 8005368:	0018      	movs	r0, r3
 800536a:	f7fd f927 	bl	80025bc <__aeabi_i2d>
 800536e:	4a18      	ldr	r2, [pc, #96]	; (80053d0 <mpu9255_recalcGyro+0xa8>)
 8005370:	4b18      	ldr	r3, [pc, #96]	; (80053d4 <mpu9255_recalcGyro+0xac>)
 8005372:	f7fc fb69 	bl	8001a48 <__aeabi_dmul>
 8005376:	0003      	movs	r3, r0
 8005378:	000c      	movs	r4, r1
 800537a:	0018      	movs	r0, r3
 800537c:	0021      	movs	r1, r4
 800537e:	683b      	ldr	r3, [r7, #0]
 8005380:	3308      	adds	r3, #8
 8005382:	001d      	movs	r5, r3
 8005384:	2200      	movs	r2, #0
 8005386:	4b14      	ldr	r3, [pc, #80]	; (80053d8 <mpu9255_recalcGyro+0xb0>)
 8005388:	f7fb ff54 	bl	8001234 <__aeabi_ddiv>
 800538c:	0003      	movs	r3, r0
 800538e:	000c      	movs	r4, r1
 8005390:	602b      	str	r3, [r5, #0]
 8005392:	606c      	str	r4, [r5, #4]
 8005394:	687b      	ldr	r3, [r7, #4]
 8005396:	3304      	adds	r3, #4
 8005398:	2200      	movs	r2, #0
 800539a:	5e9b      	ldrsh	r3, [r3, r2]
 800539c:	0018      	movs	r0, r3
 800539e:	f7fd f90d 	bl	80025bc <__aeabi_i2d>
 80053a2:	4a0b      	ldr	r2, [pc, #44]	; (80053d0 <mpu9255_recalcGyro+0xa8>)
 80053a4:	4b0b      	ldr	r3, [pc, #44]	; (80053d4 <mpu9255_recalcGyro+0xac>)
 80053a6:	f7fc fb4f 	bl	8001a48 <__aeabi_dmul>
 80053aa:	0003      	movs	r3, r0
 80053ac:	000c      	movs	r4, r1
 80053ae:	0018      	movs	r0, r3
 80053b0:	0021      	movs	r1, r4
 80053b2:	683b      	ldr	r3, [r7, #0]
 80053b4:	3310      	adds	r3, #16
 80053b6:	001d      	movs	r5, r3
 80053b8:	2200      	movs	r2, #0
 80053ba:	4b07      	ldr	r3, [pc, #28]	; (80053d8 <mpu9255_recalcGyro+0xb0>)
 80053bc:	f7fb ff3a 	bl	8001234 <__aeabi_ddiv>
 80053c0:	0003      	movs	r3, r0
 80053c2:	000c      	movs	r4, r1
 80053c4:	602b      	str	r3, [r5, #0]
 80053c6:	606c      	str	r4, [r5, #4]
 80053c8:	46c0      	nop			; (mov r8, r8)
 80053ca:	46bd      	mov	sp, r7
 80053cc:	b002      	add	sp, #8
 80053ce:	bdb0      	pop	{r4, r5, r7, pc}
 80053d0:	54442d18 	.word	0x54442d18
 80053d4:	400921fb 	.word	0x400921fb
 80053d8:	40d70700 	.word	0x40d70700

080053dc <mpu9255_recalcCompass>:
 80053dc:	b5b0      	push	{r4, r5, r7, lr}
 80053de:	b082      	sub	sp, #8
 80053e0:	af00      	add	r7, sp, #0
 80053e2:	6078      	str	r0, [r7, #4]
 80053e4:	6039      	str	r1, [r7, #0]
 80053e6:	687b      	ldr	r3, [r7, #4]
 80053e8:	2200      	movs	r2, #0
 80053ea:	5e9b      	ldrsh	r3, [r3, r2]
 80053ec:	0018      	movs	r0, r3
 80053ee:	f7fd f8e5 	bl	80025bc <__aeabi_i2d>
 80053f2:	0003      	movs	r3, r0
 80053f4:	000c      	movs	r4, r1
 80053f6:	683a      	ldr	r2, [r7, #0]
 80053f8:	6013      	str	r3, [r2, #0]
 80053fa:	6054      	str	r4, [r2, #4]
 80053fc:	687b      	ldr	r3, [r7, #4]
 80053fe:	3302      	adds	r3, #2
 8005400:	2200      	movs	r2, #0
 8005402:	5e9a      	ldrsh	r2, [r3, r2]
 8005404:	683b      	ldr	r3, [r7, #0]
 8005406:	3308      	adds	r3, #8
 8005408:	001d      	movs	r5, r3
 800540a:	0010      	movs	r0, r2
 800540c:	f7fd f8d6 	bl	80025bc <__aeabi_i2d>
 8005410:	0003      	movs	r3, r0
 8005412:	000c      	movs	r4, r1
 8005414:	602b      	str	r3, [r5, #0]
 8005416:	606c      	str	r4, [r5, #4]
 8005418:	687b      	ldr	r3, [r7, #4]
 800541a:	3304      	adds	r3, #4
 800541c:	2200      	movs	r2, #0
 800541e:	5e9a      	ldrsh	r2, [r3, r2]
 8005420:	683b      	ldr	r3, [r7, #0]
 8005422:	3310      	adds	r3, #16
 8005424:	001d      	movs	r5, r3
 8005426:	0010      	movs	r0, r2
 8005428:	f7fd f8c8 	bl	80025bc <__aeabi_i2d>
 800542c:	0003      	movs	r3, r0
 800542e:	000c      	movs	r4, r1
 8005430:	602b      	str	r3, [r5, #0]
 8005432:	606c      	str	r4, [r5, #4]
 8005434:	46c0      	nop			; (mov r8, r8)
 8005436:	46bd      	mov	sp, r7
 8005438:	b002      	add	sp, #8
 800543a:	bdb0      	pop	{r4, r5, r7, pc}

0800543c <xputc>:
 800543c:	b580      	push	{r7, lr}
 800543e:	b082      	sub	sp, #8
 8005440:	af00      	add	r7, sp, #0
 8005442:	0002      	movs	r2, r0
 8005444:	1dfb      	adds	r3, r7, #7
 8005446:	701a      	strb	r2, [r3, #0]
 8005448:	1dfb      	adds	r3, r7, #7
 800544a:	781b      	ldrb	r3, [r3, #0]
 800544c:	2b0a      	cmp	r3, #10
 800544e:	d102      	bne.n	8005456 <xputc+0x1a>
 8005450:	200d      	movs	r0, #13
 8005452:	f7ff fff3 	bl	800543c <xputc>
 8005456:	4b0d      	ldr	r3, [pc, #52]	; (800548c <xputc+0x50>)
 8005458:	681b      	ldr	r3, [r3, #0]
 800545a:	2b00      	cmp	r3, #0
 800545c:	d008      	beq.n	8005470 <xputc+0x34>
 800545e:	4b0b      	ldr	r3, [pc, #44]	; (800548c <xputc+0x50>)
 8005460:	681b      	ldr	r3, [r3, #0]
 8005462:	1c59      	adds	r1, r3, #1
 8005464:	4a09      	ldr	r2, [pc, #36]	; (800548c <xputc+0x50>)
 8005466:	6011      	str	r1, [r2, #0]
 8005468:	1dfa      	adds	r2, r7, #7
 800546a:	7812      	ldrb	r2, [r2, #0]
 800546c:	701a      	strb	r2, [r3, #0]
 800546e:	e009      	b.n	8005484 <xputc+0x48>
 8005470:	4b07      	ldr	r3, [pc, #28]	; (8005490 <xputc+0x54>)
 8005472:	681b      	ldr	r3, [r3, #0]
 8005474:	2b00      	cmp	r3, #0
 8005476:	d005      	beq.n	8005484 <xputc+0x48>
 8005478:	4b05      	ldr	r3, [pc, #20]	; (8005490 <xputc+0x54>)
 800547a:	681b      	ldr	r3, [r3, #0]
 800547c:	1dfa      	adds	r2, r7, #7
 800547e:	7812      	ldrb	r2, [r2, #0]
 8005480:	0010      	movs	r0, r2
 8005482:	4798      	blx	r3
 8005484:	46bd      	mov	sp, r7
 8005486:	b002      	add	sp, #8
 8005488:	bd80      	pop	{r7, pc}
 800548a:	46c0      	nop			; (mov r8, r8)
 800548c:	200002cc 	.word	0x200002cc
 8005490:	200002ec 	.word	0x200002ec

08005494 <xputs>:
 8005494:	b580      	push	{r7, lr}
 8005496:	b082      	sub	sp, #8
 8005498:	af00      	add	r7, sp, #0
 800549a:	6078      	str	r0, [r7, #4]
 800549c:	e006      	b.n	80054ac <xputs+0x18>
 800549e:	687b      	ldr	r3, [r7, #4]
 80054a0:	1c5a      	adds	r2, r3, #1
 80054a2:	607a      	str	r2, [r7, #4]
 80054a4:	781b      	ldrb	r3, [r3, #0]
 80054a6:	0018      	movs	r0, r3
 80054a8:	f7ff ffc8 	bl	800543c <xputc>
 80054ac:	687b      	ldr	r3, [r7, #4]
 80054ae:	781b      	ldrb	r3, [r3, #0]
 80054b0:	2b00      	cmp	r3, #0
 80054b2:	d1f4      	bne.n	800549e <xputs+0xa>
 80054b4:	46c0      	nop			; (mov r8, r8)
 80054b6:	46bd      	mov	sp, r7
 80054b8:	b002      	add	sp, #8
 80054ba:	bd80      	pop	{r7, pc}

080054bc <xvprintf>:
 80054bc:	b590      	push	{r4, r7, lr}
 80054be:	b093      	sub	sp, #76	; 0x4c
 80054c0:	af00      	add	r7, sp, #0
 80054c2:	6078      	str	r0, [r7, #4]
 80054c4:	6039      	str	r1, [r7, #0]
 80054c6:	687b      	ldr	r3, [r7, #4]
 80054c8:	1c5a      	adds	r2, r3, #1
 80054ca:	607a      	str	r2, [r7, #4]
 80054cc:	2133      	movs	r1, #51	; 0x33
 80054ce:	187a      	adds	r2, r7, r1
 80054d0:	781b      	ldrb	r3, [r3, #0]
 80054d2:	7013      	strb	r3, [r2, #0]
 80054d4:	187b      	adds	r3, r7, r1
 80054d6:	781b      	ldrb	r3, [r3, #0]
 80054d8:	2b00      	cmp	r3, #0
 80054da:	d100      	bne.n	80054de <xvprintf+0x22>
 80054dc:	e16f      	b.n	80057be <xvprintf+0x302>
 80054de:	2333      	movs	r3, #51	; 0x33
 80054e0:	18fb      	adds	r3, r7, r3
 80054e2:	781b      	ldrb	r3, [r3, #0]
 80054e4:	2b25      	cmp	r3, #37	; 0x25
 80054e6:	d006      	beq.n	80054f6 <xvprintf+0x3a>
 80054e8:	2333      	movs	r3, #51	; 0x33
 80054ea:	18fb      	adds	r3, r7, r3
 80054ec:	781b      	ldrb	r3, [r3, #0]
 80054ee:	0018      	movs	r0, r3
 80054f0:	f7ff ffa4 	bl	800543c <xputc>
 80054f4:	e162      	b.n	80057bc <xvprintf+0x300>
 80054f6:	2300      	movs	r3, #0
 80054f8:	637b      	str	r3, [r7, #52]	; 0x34
 80054fa:	687b      	ldr	r3, [r7, #4]
 80054fc:	1c5a      	adds	r2, r3, #1
 80054fe:	607a      	str	r2, [r7, #4]
 8005500:	2133      	movs	r1, #51	; 0x33
 8005502:	187a      	adds	r2, r7, r1
 8005504:	781b      	ldrb	r3, [r3, #0]
 8005506:	7013      	strb	r3, [r2, #0]
 8005508:	187b      	adds	r3, r7, r1
 800550a:	781b      	ldrb	r3, [r3, #0]
 800550c:	2b30      	cmp	r3, #48	; 0x30
 800550e:	d109      	bne.n	8005524 <xvprintf+0x68>
 8005510:	2301      	movs	r3, #1
 8005512:	637b      	str	r3, [r7, #52]	; 0x34
 8005514:	687b      	ldr	r3, [r7, #4]
 8005516:	1c5a      	adds	r2, r3, #1
 8005518:	607a      	str	r2, [r7, #4]
 800551a:	2233      	movs	r2, #51	; 0x33
 800551c:	18ba      	adds	r2, r7, r2
 800551e:	781b      	ldrb	r3, [r3, #0]
 8005520:	7013      	strb	r3, [r2, #0]
 8005522:	e00d      	b.n	8005540 <xvprintf+0x84>
 8005524:	2333      	movs	r3, #51	; 0x33
 8005526:	18fb      	adds	r3, r7, r3
 8005528:	781b      	ldrb	r3, [r3, #0]
 800552a:	2b2d      	cmp	r3, #45	; 0x2d
 800552c:	d108      	bne.n	8005540 <xvprintf+0x84>
 800552e:	2302      	movs	r3, #2
 8005530:	637b      	str	r3, [r7, #52]	; 0x34
 8005532:	687b      	ldr	r3, [r7, #4]
 8005534:	1c5a      	adds	r2, r3, #1
 8005536:	607a      	str	r2, [r7, #4]
 8005538:	2233      	movs	r2, #51	; 0x33
 800553a:	18ba      	adds	r2, r7, r2
 800553c:	781b      	ldrb	r3, [r3, #0]
 800553e:	7013      	strb	r3, [r2, #0]
 8005540:	2300      	movs	r3, #0
 8005542:	63bb      	str	r3, [r7, #56]	; 0x38
 8005544:	e011      	b.n	800556a <xvprintf+0xae>
 8005546:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8005548:	0013      	movs	r3, r2
 800554a:	009b      	lsls	r3, r3, #2
 800554c:	189b      	adds	r3, r3, r2
 800554e:	005b      	lsls	r3, r3, #1
 8005550:	001a      	movs	r2, r3
 8005552:	2133      	movs	r1, #51	; 0x33
 8005554:	187b      	adds	r3, r7, r1
 8005556:	781b      	ldrb	r3, [r3, #0]
 8005558:	18d3      	adds	r3, r2, r3
 800555a:	3b30      	subs	r3, #48	; 0x30
 800555c:	63bb      	str	r3, [r7, #56]	; 0x38
 800555e:	687b      	ldr	r3, [r7, #4]
 8005560:	1c5a      	adds	r2, r3, #1
 8005562:	607a      	str	r2, [r7, #4]
 8005564:	187a      	adds	r2, r7, r1
 8005566:	781b      	ldrb	r3, [r3, #0]
 8005568:	7013      	strb	r3, [r2, #0]
 800556a:	2333      	movs	r3, #51	; 0x33
 800556c:	18fb      	adds	r3, r7, r3
 800556e:	781b      	ldrb	r3, [r3, #0]
 8005570:	2b2f      	cmp	r3, #47	; 0x2f
 8005572:	d904      	bls.n	800557e <xvprintf+0xc2>
 8005574:	2333      	movs	r3, #51	; 0x33
 8005576:	18fb      	adds	r3, r7, r3
 8005578:	781b      	ldrb	r3, [r3, #0]
 800557a:	2b39      	cmp	r3, #57	; 0x39
 800557c:	d9e3      	bls.n	8005546 <xvprintf+0x8a>
 800557e:	2333      	movs	r3, #51	; 0x33
 8005580:	18fb      	adds	r3, r7, r3
 8005582:	781b      	ldrb	r3, [r3, #0]
 8005584:	2b6c      	cmp	r3, #108	; 0x6c
 8005586:	d004      	beq.n	8005592 <xvprintf+0xd6>
 8005588:	2333      	movs	r3, #51	; 0x33
 800558a:	18fb      	adds	r3, r7, r3
 800558c:	781b      	ldrb	r3, [r3, #0]
 800558e:	2b4c      	cmp	r3, #76	; 0x4c
 8005590:	d10a      	bne.n	80055a8 <xvprintf+0xec>
 8005592:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8005594:	2204      	movs	r2, #4
 8005596:	4313      	orrs	r3, r2
 8005598:	637b      	str	r3, [r7, #52]	; 0x34
 800559a:	687b      	ldr	r3, [r7, #4]
 800559c:	1c5a      	adds	r2, r3, #1
 800559e:	607a      	str	r2, [r7, #4]
 80055a0:	2233      	movs	r2, #51	; 0x33
 80055a2:	18ba      	adds	r2, r7, r2
 80055a4:	781b      	ldrb	r3, [r3, #0]
 80055a6:	7013      	strb	r3, [r2, #0]
 80055a8:	2333      	movs	r3, #51	; 0x33
 80055aa:	18fb      	adds	r3, r7, r3
 80055ac:	781b      	ldrb	r3, [r3, #0]
 80055ae:	2b00      	cmp	r3, #0
 80055b0:	d100      	bne.n	80055b4 <xvprintf+0xf8>
 80055b2:	e106      	b.n	80057c2 <xvprintf+0x306>
 80055b4:	2132      	movs	r1, #50	; 0x32
 80055b6:	187b      	adds	r3, r7, r1
 80055b8:	2233      	movs	r2, #51	; 0x33
 80055ba:	18ba      	adds	r2, r7, r2
 80055bc:	7812      	ldrb	r2, [r2, #0]
 80055be:	701a      	strb	r2, [r3, #0]
 80055c0:	187b      	adds	r3, r7, r1
 80055c2:	781b      	ldrb	r3, [r3, #0]
 80055c4:	2b60      	cmp	r3, #96	; 0x60
 80055c6:	d905      	bls.n	80055d4 <xvprintf+0x118>
 80055c8:	2232      	movs	r2, #50	; 0x32
 80055ca:	18bb      	adds	r3, r7, r2
 80055cc:	18ba      	adds	r2, r7, r2
 80055ce:	7812      	ldrb	r2, [r2, #0]
 80055d0:	3a20      	subs	r2, #32
 80055d2:	701a      	strb	r2, [r3, #0]
 80055d4:	2332      	movs	r3, #50	; 0x32
 80055d6:	18fb      	adds	r3, r7, r3
 80055d8:	781b      	ldrb	r3, [r3, #0]
 80055da:	3b42      	subs	r3, #66	; 0x42
 80055dc:	2b16      	cmp	r3, #22
 80055de:	d847      	bhi.n	8005670 <xvprintf+0x1b4>
 80055e0:	009a      	lsls	r2, r3, #2
 80055e2:	4b7a      	ldr	r3, [pc, #488]	; (80057cc <xvprintf+0x310>)
 80055e4:	18d3      	adds	r3, r2, r3
 80055e6:	681b      	ldr	r3, [r3, #0]
 80055e8:	469f      	mov	pc, r3
 80055ea:	683b      	ldr	r3, [r7, #0]
 80055ec:	1d1a      	adds	r2, r3, #4
 80055ee:	603a      	str	r2, [r7, #0]
 80055f0:	681b      	ldr	r3, [r3, #0]
 80055f2:	627b      	str	r3, [r7, #36]	; 0x24
 80055f4:	2300      	movs	r3, #0
 80055f6:	63fb      	str	r3, [r7, #60]	; 0x3c
 80055f8:	e002      	b.n	8005600 <xvprintf+0x144>
 80055fa:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80055fc:	3301      	adds	r3, #1
 80055fe:	63fb      	str	r3, [r7, #60]	; 0x3c
 8005600:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8005602:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8005604:	18d3      	adds	r3, r2, r3
 8005606:	781b      	ldrb	r3, [r3, #0]
 8005608:	2b00      	cmp	r3, #0
 800560a:	d1f6      	bne.n	80055fa <xvprintf+0x13e>
 800560c:	e002      	b.n	8005614 <xvprintf+0x158>
 800560e:	2020      	movs	r0, #32
 8005610:	f7ff ff14 	bl	800543c <xputc>
 8005614:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8005616:	2202      	movs	r2, #2
 8005618:	4013      	ands	r3, r2
 800561a:	d105      	bne.n	8005628 <xvprintf+0x16c>
 800561c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800561e:	1c5a      	adds	r2, r3, #1
 8005620:	63fa      	str	r2, [r7, #60]	; 0x3c
 8005622:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8005624:	429a      	cmp	r2, r3
 8005626:	d8f2      	bhi.n	800560e <xvprintf+0x152>
 8005628:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800562a:	0018      	movs	r0, r3
 800562c:	f7ff ff32 	bl	8005494 <xputs>
 8005630:	e002      	b.n	8005638 <xvprintf+0x17c>
 8005632:	2020      	movs	r0, #32
 8005634:	f7ff ff02 	bl	800543c <xputc>
 8005638:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800563a:	1c5a      	adds	r2, r3, #1
 800563c:	63fa      	str	r2, [r7, #60]	; 0x3c
 800563e:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8005640:	429a      	cmp	r2, r3
 8005642:	d8f6      	bhi.n	8005632 <xvprintf+0x176>
 8005644:	e0ba      	b.n	80057bc <xvprintf+0x300>
 8005646:	683b      	ldr	r3, [r7, #0]
 8005648:	1d1a      	adds	r2, r3, #4
 800564a:	603a      	str	r2, [r7, #0]
 800564c:	681b      	ldr	r3, [r3, #0]
 800564e:	b2db      	uxtb	r3, r3
 8005650:	0018      	movs	r0, r3
 8005652:	f7ff fef3 	bl	800543c <xputc>
 8005656:	e0b1      	b.n	80057bc <xvprintf+0x300>
 8005658:	2302      	movs	r3, #2
 800565a:	647b      	str	r3, [r7, #68]	; 0x44
 800565c:	e00f      	b.n	800567e <xvprintf+0x1c2>
 800565e:	2308      	movs	r3, #8
 8005660:	647b      	str	r3, [r7, #68]	; 0x44
 8005662:	e00c      	b.n	800567e <xvprintf+0x1c2>
 8005664:	230a      	movs	r3, #10
 8005666:	647b      	str	r3, [r7, #68]	; 0x44
 8005668:	e009      	b.n	800567e <xvprintf+0x1c2>
 800566a:	2310      	movs	r3, #16
 800566c:	647b      	str	r3, [r7, #68]	; 0x44
 800566e:	e006      	b.n	800567e <xvprintf+0x1c2>
 8005670:	2333      	movs	r3, #51	; 0x33
 8005672:	18fb      	adds	r3, r7, r3
 8005674:	781b      	ldrb	r3, [r3, #0]
 8005676:	0018      	movs	r0, r3
 8005678:	f7ff fee0 	bl	800543c <xputc>
 800567c:	e09e      	b.n	80057bc <xvprintf+0x300>
 800567e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8005680:	2204      	movs	r2, #4
 8005682:	4013      	ands	r3, r2
 8005684:	d005      	beq.n	8005692 <xvprintf+0x1d6>
 8005686:	683b      	ldr	r3, [r7, #0]
 8005688:	1d1a      	adds	r2, r3, #4
 800568a:	603a      	str	r2, [r7, #0]
 800568c:	681b      	ldr	r3, [r3, #0]
 800568e:	62fb      	str	r3, [r7, #44]	; 0x2c
 8005690:	e00e      	b.n	80056b0 <xvprintf+0x1f4>
 8005692:	2332      	movs	r3, #50	; 0x32
 8005694:	18fb      	adds	r3, r7, r3
 8005696:	781b      	ldrb	r3, [r3, #0]
 8005698:	2b44      	cmp	r3, #68	; 0x44
 800569a:	d104      	bne.n	80056a6 <xvprintf+0x1ea>
 800569c:	683b      	ldr	r3, [r7, #0]
 800569e:	1d1a      	adds	r2, r3, #4
 80056a0:	603a      	str	r2, [r7, #0]
 80056a2:	681b      	ldr	r3, [r3, #0]
 80056a4:	e003      	b.n	80056ae <xvprintf+0x1f2>
 80056a6:	683b      	ldr	r3, [r7, #0]
 80056a8:	1d1a      	adds	r2, r3, #4
 80056aa:	603a      	str	r2, [r7, #0]
 80056ac:	681b      	ldr	r3, [r3, #0]
 80056ae:	62fb      	str	r3, [r7, #44]	; 0x2c
 80056b0:	2332      	movs	r3, #50	; 0x32
 80056b2:	18fb      	adds	r3, r7, r3
 80056b4:	781b      	ldrb	r3, [r3, #0]
 80056b6:	2b44      	cmp	r3, #68	; 0x44
 80056b8:	d109      	bne.n	80056ce <xvprintf+0x212>
 80056ba:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80056bc:	2b00      	cmp	r3, #0
 80056be:	da06      	bge.n	80056ce <xvprintf+0x212>
 80056c0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80056c2:	425b      	negs	r3, r3
 80056c4:	62fb      	str	r3, [r7, #44]	; 0x2c
 80056c6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80056c8:	2210      	movs	r2, #16
 80056ca:	4313      	orrs	r3, r2
 80056cc:	637b      	str	r3, [r7, #52]	; 0x34
 80056ce:	2300      	movs	r3, #0
 80056d0:	643b      	str	r3, [r7, #64]	; 0x40
 80056d2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80056d4:	62bb      	str	r3, [r7, #40]	; 0x28
 80056d6:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80056d8:	6c79      	ldr	r1, [r7, #68]	; 0x44
 80056da:	0018      	movs	r0, r3
 80056dc:	f7fa fd9a 	bl	8000214 <__aeabi_uidivmod>
 80056e0:	000b      	movs	r3, r1
 80056e2:	001a      	movs	r2, r3
 80056e4:	2432      	movs	r4, #50	; 0x32
 80056e6:	193b      	adds	r3, r7, r4
 80056e8:	701a      	strb	r2, [r3, #0]
 80056ea:	6c79      	ldr	r1, [r7, #68]	; 0x44
 80056ec:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 80056ee:	f7fa fd0b 	bl	8000108 <__udivsi3>
 80056f2:	0003      	movs	r3, r0
 80056f4:	62bb      	str	r3, [r7, #40]	; 0x28
 80056f6:	193b      	adds	r3, r7, r4
 80056f8:	781b      	ldrb	r3, [r3, #0]
 80056fa:	2b09      	cmp	r3, #9
 80056fc:	d90d      	bls.n	800571a <xvprintf+0x25e>
 80056fe:	2333      	movs	r3, #51	; 0x33
 8005700:	18fb      	adds	r3, r7, r3
 8005702:	781b      	ldrb	r3, [r3, #0]
 8005704:	2b78      	cmp	r3, #120	; 0x78
 8005706:	d101      	bne.n	800570c <xvprintf+0x250>
 8005708:	2327      	movs	r3, #39	; 0x27
 800570a:	e000      	b.n	800570e <xvprintf+0x252>
 800570c:	2307      	movs	r3, #7
 800570e:	2132      	movs	r1, #50	; 0x32
 8005710:	187a      	adds	r2, r7, r1
 8005712:	1879      	adds	r1, r7, r1
 8005714:	7809      	ldrb	r1, [r1, #0]
 8005716:	185b      	adds	r3, r3, r1
 8005718:	7013      	strb	r3, [r2, #0]
 800571a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800571c:	1c5a      	adds	r2, r3, #1
 800571e:	643a      	str	r2, [r7, #64]	; 0x40
 8005720:	2232      	movs	r2, #50	; 0x32
 8005722:	18ba      	adds	r2, r7, r2
 8005724:	7812      	ldrb	r2, [r2, #0]
 8005726:	3230      	adds	r2, #48	; 0x30
 8005728:	b2d1      	uxtb	r1, r2
 800572a:	220c      	movs	r2, #12
 800572c:	18ba      	adds	r2, r7, r2
 800572e:	54d1      	strb	r1, [r2, r3]
 8005730:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8005732:	2b00      	cmp	r3, #0
 8005734:	d002      	beq.n	800573c <xvprintf+0x280>
 8005736:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8005738:	2b17      	cmp	r3, #23
 800573a:	d9cc      	bls.n	80056d6 <xvprintf+0x21a>
 800573c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800573e:	2210      	movs	r2, #16
 8005740:	4013      	ands	r3, r2
 8005742:	d006      	beq.n	8005752 <xvprintf+0x296>
 8005744:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8005746:	1c5a      	adds	r2, r3, #1
 8005748:	643a      	str	r2, [r7, #64]	; 0x40
 800574a:	220c      	movs	r2, #12
 800574c:	18ba      	adds	r2, r7, r2
 800574e:	212d      	movs	r1, #45	; 0x2d
 8005750:	54d1      	strb	r1, [r2, r3]
 8005752:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8005754:	63fb      	str	r3, [r7, #60]	; 0x3c
 8005756:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8005758:	2201      	movs	r2, #1
 800575a:	4013      	ands	r3, r2
 800575c:	d001      	beq.n	8005762 <xvprintf+0x2a6>
 800575e:	2230      	movs	r2, #48	; 0x30
 8005760:	e000      	b.n	8005764 <xvprintf+0x2a8>
 8005762:	2220      	movs	r2, #32
 8005764:	2332      	movs	r3, #50	; 0x32
 8005766:	18fb      	adds	r3, r7, r3
 8005768:	701a      	strb	r2, [r3, #0]
 800576a:	e005      	b.n	8005778 <xvprintf+0x2bc>
 800576c:	2332      	movs	r3, #50	; 0x32
 800576e:	18fb      	adds	r3, r7, r3
 8005770:	781b      	ldrb	r3, [r3, #0]
 8005772:	0018      	movs	r0, r3
 8005774:	f7ff fe62 	bl	800543c <xputc>
 8005778:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800577a:	2202      	movs	r2, #2
 800577c:	4013      	ands	r3, r2
 800577e:	d105      	bne.n	800578c <xvprintf+0x2d0>
 8005780:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8005782:	1c5a      	adds	r2, r3, #1
 8005784:	63fa      	str	r2, [r7, #60]	; 0x3c
 8005786:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8005788:	429a      	cmp	r2, r3
 800578a:	d8ef      	bhi.n	800576c <xvprintf+0x2b0>
 800578c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800578e:	3b01      	subs	r3, #1
 8005790:	643b      	str	r3, [r7, #64]	; 0x40
 8005792:	230c      	movs	r3, #12
 8005794:	18fa      	adds	r2, r7, r3
 8005796:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8005798:	18d3      	adds	r3, r2, r3
 800579a:	781b      	ldrb	r3, [r3, #0]
 800579c:	0018      	movs	r0, r3
 800579e:	f7ff fe4d 	bl	800543c <xputc>
 80057a2:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80057a4:	2b00      	cmp	r3, #0
 80057a6:	d1f1      	bne.n	800578c <xvprintf+0x2d0>
 80057a8:	e002      	b.n	80057b0 <xvprintf+0x2f4>
 80057aa:	2020      	movs	r0, #32
 80057ac:	f7ff fe46 	bl	800543c <xputc>
 80057b0:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80057b2:	1c5a      	adds	r2, r3, #1
 80057b4:	63fa      	str	r2, [r7, #60]	; 0x3c
 80057b6:	6bba      	ldr	r2, [r7, #56]	; 0x38
 80057b8:	429a      	cmp	r2, r3
 80057ba:	d8f6      	bhi.n	80057aa <xvprintf+0x2ee>
 80057bc:	e683      	b.n	80054c6 <xvprintf+0xa>
 80057be:	46c0      	nop			; (mov r8, r8)
 80057c0:	e000      	b.n	80057c4 <xvprintf+0x308>
 80057c2:	46c0      	nop			; (mov r8, r8)
 80057c4:	46c0      	nop			; (mov r8, r8)
 80057c6:	46bd      	mov	sp, r7
 80057c8:	b013      	add	sp, #76	; 0x4c
 80057ca:	bd90      	pop	{r4, r7, pc}
 80057cc:	0800a584 	.word	0x0800a584

080057d0 <xprintf>:
 80057d0:	b40f      	push	{r0, r1, r2, r3}
 80057d2:	b580      	push	{r7, lr}
 80057d4:	b082      	sub	sp, #8
 80057d6:	af00      	add	r7, sp, #0
 80057d8:	2314      	movs	r3, #20
 80057da:	18fb      	adds	r3, r7, r3
 80057dc:	607b      	str	r3, [r7, #4]
 80057de:	687a      	ldr	r2, [r7, #4]
 80057e0:	693b      	ldr	r3, [r7, #16]
 80057e2:	0011      	movs	r1, r2
 80057e4:	0018      	movs	r0, r3
 80057e6:	f7ff fe69 	bl	80054bc <xvprintf>
 80057ea:	46c0      	nop			; (mov r8, r8)
 80057ec:	46bd      	mov	sp, r7
 80057ee:	b002      	add	sp, #8
 80057f0:	bc80      	pop	{r7}
 80057f2:	bc08      	pop	{r3}
 80057f4:	b004      	add	sp, #16
 80057f6:	4718      	bx	r3

080057f8 <MadgwickAHRSupdate>:
 80057f8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80057fa:	b0ef      	sub	sp, #444	; 0x1bc
 80057fc:	af0e      	add	r7, sp, #56	; 0x38
 80057fe:	64f8      	str	r0, [r7, #76]	; 0x4c
 8005800:	643a      	str	r2, [r7, #64]	; 0x40
 8005802:	647b      	str	r3, [r7, #68]	; 0x44
 8005804:	2200      	movs	r2, #0
 8005806:	2300      	movs	r3, #0
 8005808:	21c0      	movs	r1, #192	; 0xc0
 800580a:	0049      	lsls	r1, r1, #1
 800580c:	2040      	movs	r0, #64	; 0x40
 800580e:	4684      	mov	ip, r0
 8005810:	44bc      	add	ip, r7
 8005812:	4461      	add	r1, ip
 8005814:	6808      	ldr	r0, [r1, #0]
 8005816:	6849      	ldr	r1, [r1, #4]
 8005818:	f7fa fd12 	bl	8000240 <__aeabi_dcmpeq>
 800581c:	1e03      	subs	r3, r0, #0
 800581e:	d06a      	beq.n	80058f6 <MadgwickAHRSupdate+0xfe>
 8005820:	2200      	movs	r2, #0
 8005822:	2300      	movs	r3, #0
 8005824:	21c4      	movs	r1, #196	; 0xc4
 8005826:	0049      	lsls	r1, r1, #1
 8005828:	2040      	movs	r0, #64	; 0x40
 800582a:	4684      	mov	ip, r0
 800582c:	44bc      	add	ip, r7
 800582e:	4461      	add	r1, ip
 8005830:	6808      	ldr	r0, [r1, #0]
 8005832:	6849      	ldr	r1, [r1, #4]
 8005834:	f7fa fd04 	bl	8000240 <__aeabi_dcmpeq>
 8005838:	1e03      	subs	r3, r0, #0
 800583a:	d05c      	beq.n	80058f6 <MadgwickAHRSupdate+0xfe>
 800583c:	2200      	movs	r2, #0
 800583e:	2300      	movs	r3, #0
 8005840:	21c8      	movs	r1, #200	; 0xc8
 8005842:	0049      	lsls	r1, r1, #1
 8005844:	2040      	movs	r0, #64	; 0x40
 8005846:	4684      	mov	ip, r0
 8005848:	44bc      	add	ip, r7
 800584a:	4461      	add	r1, ip
 800584c:	6808      	ldr	r0, [r1, #0]
 800584e:	6849      	ldr	r1, [r1, #4]
 8005850:	f7fa fcf6 	bl	8000240 <__aeabi_dcmpeq>
 8005854:	1e03      	subs	r3, r0, #0
 8005856:	d04e      	beq.n	80058f6 <MadgwickAHRSupdate+0xfe>
 8005858:	6c39      	ldr	r1, [r7, #64]	; 0x40
 800585a:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 800585c:	6cf8      	ldr	r0, [r7, #76]	; 0x4c
 800585e:	23d0      	movs	r3, #208	; 0xd0
 8005860:	005b      	lsls	r3, r3, #1
 8005862:	2440      	movs	r4, #64	; 0x40
 8005864:	46a4      	mov	ip, r4
 8005866:	44bc      	add	ip, r7
 8005868:	4463      	add	r3, ip
 800586a:	685c      	ldr	r4, [r3, #4]
 800586c:	681b      	ldr	r3, [r3, #0]
 800586e:	930c      	str	r3, [sp, #48]	; 0x30
 8005870:	940d      	str	r4, [sp, #52]	; 0x34
 8005872:	23cc      	movs	r3, #204	; 0xcc
 8005874:	005b      	lsls	r3, r3, #1
 8005876:	2440      	movs	r4, #64	; 0x40
 8005878:	46a4      	mov	ip, r4
 800587a:	44bc      	add	ip, r7
 800587c:	4463      	add	r3, ip
 800587e:	685c      	ldr	r4, [r3, #4]
 8005880:	681b      	ldr	r3, [r3, #0]
 8005882:	930a      	str	r3, [sp, #40]	; 0x28
 8005884:	940b      	str	r4, [sp, #44]	; 0x2c
 8005886:	23bc      	movs	r3, #188	; 0xbc
 8005888:	005b      	lsls	r3, r3, #1
 800588a:	2440      	movs	r4, #64	; 0x40
 800588c:	46a4      	mov	ip, r4
 800588e:	44bc      	add	ip, r7
 8005890:	4463      	add	r3, ip
 8005892:	685c      	ldr	r4, [r3, #4]
 8005894:	681b      	ldr	r3, [r3, #0]
 8005896:	9308      	str	r3, [sp, #32]
 8005898:	9409      	str	r4, [sp, #36]	; 0x24
 800589a:	23b8      	movs	r3, #184	; 0xb8
 800589c:	005b      	lsls	r3, r3, #1
 800589e:	2440      	movs	r4, #64	; 0x40
 80058a0:	46a4      	mov	ip, r4
 80058a2:	44bc      	add	ip, r7
 80058a4:	4463      	add	r3, ip
 80058a6:	685c      	ldr	r4, [r3, #4]
 80058a8:	681b      	ldr	r3, [r3, #0]
 80058aa:	9306      	str	r3, [sp, #24]
 80058ac:	9407      	str	r4, [sp, #28]
 80058ae:	23b4      	movs	r3, #180	; 0xb4
 80058b0:	005b      	lsls	r3, r3, #1
 80058b2:	2440      	movs	r4, #64	; 0x40
 80058b4:	46a4      	mov	ip, r4
 80058b6:	44bc      	add	ip, r7
 80058b8:	4463      	add	r3, ip
 80058ba:	685c      	ldr	r4, [r3, #4]
 80058bc:	681b      	ldr	r3, [r3, #0]
 80058be:	9304      	str	r3, [sp, #16]
 80058c0:	9405      	str	r4, [sp, #20]
 80058c2:	23b0      	movs	r3, #176	; 0xb0
 80058c4:	005b      	lsls	r3, r3, #1
 80058c6:	2440      	movs	r4, #64	; 0x40
 80058c8:	46a4      	mov	ip, r4
 80058ca:	44bc      	add	ip, r7
 80058cc:	4463      	add	r3, ip
 80058ce:	685c      	ldr	r4, [r3, #4]
 80058d0:	681b      	ldr	r3, [r3, #0]
 80058d2:	9302      	str	r3, [sp, #8]
 80058d4:	9403      	str	r4, [sp, #12]
 80058d6:	23ac      	movs	r3, #172	; 0xac
 80058d8:	005b      	lsls	r3, r3, #1
 80058da:	2440      	movs	r4, #64	; 0x40
 80058dc:	46a4      	mov	ip, r4
 80058de:	44bc      	add	ip, r7
 80058e0:	4463      	add	r3, ip
 80058e2:	685c      	ldr	r4, [r3, #4]
 80058e4:	681b      	ldr	r3, [r3, #0]
 80058e6:	9300      	str	r3, [sp, #0]
 80058e8:	9401      	str	r4, [sp, #4]
 80058ea:	0013      	movs	r3, r2
 80058ec:	000a      	movs	r2, r1
 80058ee:	f002 f9f9 	bl	8007ce4 <MadgwickAHRSupdateIMU>
 80058f2:	f002 f9e9 	bl	8007cc8 <MadgwickAHRSupdate+0x24d0>
 80058f6:	23cc      	movs	r3, #204	; 0xcc
 80058f8:	005b      	lsls	r3, r3, #1
 80058fa:	2240      	movs	r2, #64	; 0x40
 80058fc:	4694      	mov	ip, r2
 80058fe:	44bc      	add	ip, r7
 8005900:	4463      	add	r3, ip
 8005902:	681a      	ldr	r2, [r3, #0]
 8005904:	685b      	ldr	r3, [r3, #4]
 8005906:	2000      	movs	r0, #0
 8005908:	49b3      	ldr	r1, [pc, #716]	; (8005bd8 <MadgwickAHRSupdate+0x3e0>)
 800590a:	f7fb fc93 	bl	8001234 <__aeabi_ddiv>
 800590e:	0003      	movs	r3, r0
 8005910:	000c      	movs	r4, r1
 8005912:	228c      	movs	r2, #140	; 0x8c
 8005914:	0052      	lsls	r2, r2, #1
 8005916:	2140      	movs	r1, #64	; 0x40
 8005918:	468c      	mov	ip, r1
 800591a:	44bc      	add	ip, r7
 800591c:	4462      	add	r2, ip
 800591e:	6013      	str	r3, [r2, #0]
 8005920:	6054      	str	r4, [r2, #4]
 8005922:	4bae      	ldr	r3, [pc, #696]	; (8005bdc <MadgwickAHRSupdate+0x3e4>)
 8005924:	685c      	ldr	r4, [r3, #4]
 8005926:	681b      	ldr	r3, [r3, #0]
 8005928:	001a      	movs	r2, r3
 800592a:	0015      	movs	r5, r2
 800592c:	2280      	movs	r2, #128	; 0x80
 800592e:	0612      	lsls	r2, r2, #24
 8005930:	4062      	eors	r2, r4
 8005932:	0016      	movs	r6, r2
 8005934:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8005936:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8005938:	0028      	movs	r0, r5
 800593a:	0031      	movs	r1, r6
 800593c:	f7fc f884 	bl	8001a48 <__aeabi_dmul>
 8005940:	0003      	movs	r3, r0
 8005942:	000c      	movs	r4, r1
 8005944:	001d      	movs	r5, r3
 8005946:	0026      	movs	r6, r4
 8005948:	4ba5      	ldr	r3, [pc, #660]	; (8005be0 <MadgwickAHRSupdate+0x3e8>)
 800594a:	6818      	ldr	r0, [r3, #0]
 800594c:	6859      	ldr	r1, [r3, #4]
 800594e:	23ac      	movs	r3, #172	; 0xac
 8005950:	005b      	lsls	r3, r3, #1
 8005952:	2240      	movs	r2, #64	; 0x40
 8005954:	18bc      	adds	r4, r7, r2
 8005956:	18e2      	adds	r2, r4, r3
 8005958:	6853      	ldr	r3, [r2, #4]
 800595a:	6812      	ldr	r2, [r2, #0]
 800595c:	f7fc f874 	bl	8001a48 <__aeabi_dmul>
 8005960:	0003      	movs	r3, r0
 8005962:	000c      	movs	r4, r1
 8005964:	001a      	movs	r2, r3
 8005966:	0023      	movs	r3, r4
 8005968:	0028      	movs	r0, r5
 800596a:	0031      	movs	r1, r6
 800596c:	f7fc fade 	bl	8001f2c <__aeabi_dsub>
 8005970:	0003      	movs	r3, r0
 8005972:	000c      	movs	r4, r1
 8005974:	001d      	movs	r5, r3
 8005976:	0026      	movs	r6, r4
 8005978:	4b9a      	ldr	r3, [pc, #616]	; (8005be4 <MadgwickAHRSupdate+0x3ec>)
 800597a:	6818      	ldr	r0, [r3, #0]
 800597c:	6859      	ldr	r1, [r3, #4]
 800597e:	22b0      	movs	r2, #176	; 0xb0
 8005980:	0052      	lsls	r2, r2, #1
 8005982:	2340      	movs	r3, #64	; 0x40
 8005984:	18fc      	adds	r4, r7, r3
 8005986:	18a4      	adds	r4, r4, r2
 8005988:	6822      	ldr	r2, [r4, #0]
 800598a:	6863      	ldr	r3, [r4, #4]
 800598c:	f7fc f85c 	bl	8001a48 <__aeabi_dmul>
 8005990:	0003      	movs	r3, r0
 8005992:	000c      	movs	r4, r1
 8005994:	001a      	movs	r2, r3
 8005996:	0023      	movs	r3, r4
 8005998:	0028      	movs	r0, r5
 800599a:	0031      	movs	r1, r6
 800599c:	f7fc fac6 	bl	8001f2c <__aeabi_dsub>
 80059a0:	0003      	movs	r3, r0
 80059a2:	000c      	movs	r4, r1
 80059a4:	0018      	movs	r0, r3
 80059a6:	0021      	movs	r1, r4
 80059a8:	2200      	movs	r2, #0
 80059aa:	4b8f      	ldr	r3, [pc, #572]	; (8005be8 <MadgwickAHRSupdate+0x3f0>)
 80059ac:	f7fc f84c 	bl	8001a48 <__aeabi_dmul>
 80059b0:	0003      	movs	r3, r0
 80059b2:	000c      	movs	r4, r1
 80059b4:	219c      	movs	r1, #156	; 0x9c
 80059b6:	0049      	lsls	r1, r1, #1
 80059b8:	2040      	movs	r0, #64	; 0x40
 80059ba:	4684      	mov	ip, r0
 80059bc:	44bc      	add	ip, r7
 80059be:	4461      	add	r1, ip
 80059c0:	600b      	str	r3, [r1, #0]
 80059c2:	604c      	str	r4, [r1, #4]
 80059c4:	4b89      	ldr	r3, [pc, #548]	; (8005bec <MadgwickAHRSupdate+0x3f4>)
 80059c6:	6818      	ldr	r0, [r3, #0]
 80059c8:	6859      	ldr	r1, [r3, #4]
 80059ca:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 80059cc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80059ce:	f7fc f83b 	bl	8001a48 <__aeabi_dmul>
 80059d2:	0003      	movs	r3, r0
 80059d4:	000c      	movs	r4, r1
 80059d6:	001d      	movs	r5, r3
 80059d8:	0026      	movs	r6, r4
 80059da:	4b81      	ldr	r3, [pc, #516]	; (8005be0 <MadgwickAHRSupdate+0x3e8>)
 80059dc:	6818      	ldr	r0, [r3, #0]
 80059de:	6859      	ldr	r1, [r3, #4]
 80059e0:	22b0      	movs	r2, #176	; 0xb0
 80059e2:	0052      	lsls	r2, r2, #1
 80059e4:	2340      	movs	r3, #64	; 0x40
 80059e6:	18fc      	adds	r4, r7, r3
 80059e8:	18a4      	adds	r4, r4, r2
 80059ea:	6822      	ldr	r2, [r4, #0]
 80059ec:	6863      	ldr	r3, [r4, #4]
 80059ee:	f7fc f82b 	bl	8001a48 <__aeabi_dmul>
 80059f2:	0003      	movs	r3, r0
 80059f4:	000c      	movs	r4, r1
 80059f6:	001a      	movs	r2, r3
 80059f8:	0023      	movs	r3, r4
 80059fa:	0028      	movs	r0, r5
 80059fc:	0031      	movs	r1, r6
 80059fe:	f7fb f8fd 	bl	8000bfc <__aeabi_dadd>
 8005a02:	0003      	movs	r3, r0
 8005a04:	000c      	movs	r4, r1
 8005a06:	001d      	movs	r5, r3
 8005a08:	0026      	movs	r6, r4
 8005a0a:	4b76      	ldr	r3, [pc, #472]	; (8005be4 <MadgwickAHRSupdate+0x3ec>)
 8005a0c:	6818      	ldr	r0, [r3, #0]
 8005a0e:	6859      	ldr	r1, [r3, #4]
 8005a10:	23ac      	movs	r3, #172	; 0xac
 8005a12:	005b      	lsls	r3, r3, #1
 8005a14:	2240      	movs	r2, #64	; 0x40
 8005a16:	18bc      	adds	r4, r7, r2
 8005a18:	18e4      	adds	r4, r4, r3
 8005a1a:	6822      	ldr	r2, [r4, #0]
 8005a1c:	6863      	ldr	r3, [r4, #4]
 8005a1e:	f7fc f813 	bl	8001a48 <__aeabi_dmul>
 8005a22:	0003      	movs	r3, r0
 8005a24:	000c      	movs	r4, r1
 8005a26:	001a      	movs	r2, r3
 8005a28:	0023      	movs	r3, r4
 8005a2a:	0028      	movs	r0, r5
 8005a2c:	0031      	movs	r1, r6
 8005a2e:	f7fc fa7d 	bl	8001f2c <__aeabi_dsub>
 8005a32:	0003      	movs	r3, r0
 8005a34:	000c      	movs	r4, r1
 8005a36:	0018      	movs	r0, r3
 8005a38:	0021      	movs	r1, r4
 8005a3a:	2200      	movs	r2, #0
 8005a3c:	4b6a      	ldr	r3, [pc, #424]	; (8005be8 <MadgwickAHRSupdate+0x3f0>)
 8005a3e:	f7fc f803 	bl	8001a48 <__aeabi_dmul>
 8005a42:	0003      	movs	r3, r0
 8005a44:	000c      	movs	r4, r1
 8005a46:	2198      	movs	r1, #152	; 0x98
 8005a48:	0049      	lsls	r1, r1, #1
 8005a4a:	2040      	movs	r0, #64	; 0x40
 8005a4c:	4684      	mov	ip, r0
 8005a4e:	44bc      	add	ip, r7
 8005a50:	4461      	add	r1, ip
 8005a52:	600b      	str	r3, [r1, #0]
 8005a54:	604c      	str	r4, [r1, #4]
 8005a56:	4b65      	ldr	r3, [pc, #404]	; (8005bec <MadgwickAHRSupdate+0x3f4>)
 8005a58:	6818      	ldr	r0, [r3, #0]
 8005a5a:	6859      	ldr	r1, [r3, #4]
 8005a5c:	23ac      	movs	r3, #172	; 0xac
 8005a5e:	005b      	lsls	r3, r3, #1
 8005a60:	2240      	movs	r2, #64	; 0x40
 8005a62:	18bc      	adds	r4, r7, r2
 8005a64:	18e4      	adds	r4, r4, r3
 8005a66:	6822      	ldr	r2, [r4, #0]
 8005a68:	6863      	ldr	r3, [r4, #4]
 8005a6a:	f7fb ffed 	bl	8001a48 <__aeabi_dmul>
 8005a6e:	0003      	movs	r3, r0
 8005a70:	000c      	movs	r4, r1
 8005a72:	001d      	movs	r5, r3
 8005a74:	0026      	movs	r6, r4
 8005a76:	4b59      	ldr	r3, [pc, #356]	; (8005bdc <MadgwickAHRSupdate+0x3e4>)
 8005a78:	6818      	ldr	r0, [r3, #0]
 8005a7a:	6859      	ldr	r1, [r3, #4]
 8005a7c:	22b0      	movs	r2, #176	; 0xb0
 8005a7e:	0052      	lsls	r2, r2, #1
 8005a80:	2340      	movs	r3, #64	; 0x40
 8005a82:	18fb      	adds	r3, r7, r3
 8005a84:	189c      	adds	r4, r3, r2
 8005a86:	6822      	ldr	r2, [r4, #0]
 8005a88:	6863      	ldr	r3, [r4, #4]
 8005a8a:	f7fb ffdd 	bl	8001a48 <__aeabi_dmul>
 8005a8e:	0003      	movs	r3, r0
 8005a90:	000c      	movs	r4, r1
 8005a92:	001a      	movs	r2, r3
 8005a94:	0023      	movs	r3, r4
 8005a96:	0028      	movs	r0, r5
 8005a98:	0031      	movs	r1, r6
 8005a9a:	f7fc fa47 	bl	8001f2c <__aeabi_dsub>
 8005a9e:	0003      	movs	r3, r0
 8005aa0:	000c      	movs	r4, r1
 8005aa2:	001d      	movs	r5, r3
 8005aa4:	0026      	movs	r6, r4
 8005aa6:	4b4f      	ldr	r3, [pc, #316]	; (8005be4 <MadgwickAHRSupdate+0x3ec>)
 8005aa8:	6818      	ldr	r0, [r3, #0]
 8005aaa:	6859      	ldr	r1, [r3, #4]
 8005aac:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8005aae:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8005ab0:	f7fb ffca 	bl	8001a48 <__aeabi_dmul>
 8005ab4:	0003      	movs	r3, r0
 8005ab6:	000c      	movs	r4, r1
 8005ab8:	001a      	movs	r2, r3
 8005aba:	0023      	movs	r3, r4
 8005abc:	0028      	movs	r0, r5
 8005abe:	0031      	movs	r1, r6
 8005ac0:	f7fb f89c 	bl	8000bfc <__aeabi_dadd>
 8005ac4:	0003      	movs	r3, r0
 8005ac6:	000c      	movs	r4, r1
 8005ac8:	0018      	movs	r0, r3
 8005aca:	0021      	movs	r1, r4
 8005acc:	2200      	movs	r2, #0
 8005ace:	4b46      	ldr	r3, [pc, #280]	; (8005be8 <MadgwickAHRSupdate+0x3f0>)
 8005ad0:	f7fb ffba 	bl	8001a48 <__aeabi_dmul>
 8005ad4:	0003      	movs	r3, r0
 8005ad6:	000c      	movs	r4, r1
 8005ad8:	2194      	movs	r1, #148	; 0x94
 8005ada:	0049      	lsls	r1, r1, #1
 8005adc:	2240      	movs	r2, #64	; 0x40
 8005ade:	4694      	mov	ip, r2
 8005ae0:	44bc      	add	ip, r7
 8005ae2:	4461      	add	r1, ip
 8005ae4:	600b      	str	r3, [r1, #0]
 8005ae6:	604c      	str	r4, [r1, #4]
 8005ae8:	4b40      	ldr	r3, [pc, #256]	; (8005bec <MadgwickAHRSupdate+0x3f4>)
 8005aea:	6818      	ldr	r0, [r3, #0]
 8005aec:	6859      	ldr	r1, [r3, #4]
 8005aee:	22b0      	movs	r2, #176	; 0xb0
 8005af0:	0052      	lsls	r2, r2, #1
 8005af2:	2340      	movs	r3, #64	; 0x40
 8005af4:	469c      	mov	ip, r3
 8005af6:	44bc      	add	ip, r7
 8005af8:	4462      	add	r2, ip
 8005afa:	6853      	ldr	r3, [r2, #4]
 8005afc:	6812      	ldr	r2, [r2, #0]
 8005afe:	f7fb ffa3 	bl	8001a48 <__aeabi_dmul>
 8005b02:	0003      	movs	r3, r0
 8005b04:	000c      	movs	r4, r1
 8005b06:	001d      	movs	r5, r3
 8005b08:	0026      	movs	r6, r4
 8005b0a:	4b34      	ldr	r3, [pc, #208]	; (8005bdc <MadgwickAHRSupdate+0x3e4>)
 8005b0c:	6818      	ldr	r0, [r3, #0]
 8005b0e:	6859      	ldr	r1, [r3, #4]
 8005b10:	23ac      	movs	r3, #172	; 0xac
 8005b12:	005b      	lsls	r3, r3, #1
 8005b14:	2240      	movs	r2, #64	; 0x40
 8005b16:	4694      	mov	ip, r2
 8005b18:	44bc      	add	ip, r7
 8005b1a:	4463      	add	r3, ip
 8005b1c:	681a      	ldr	r2, [r3, #0]
 8005b1e:	685b      	ldr	r3, [r3, #4]
 8005b20:	f7fb ff92 	bl	8001a48 <__aeabi_dmul>
 8005b24:	0003      	movs	r3, r0
 8005b26:	000c      	movs	r4, r1
 8005b28:	001a      	movs	r2, r3
 8005b2a:	0023      	movs	r3, r4
 8005b2c:	0028      	movs	r0, r5
 8005b2e:	0031      	movs	r1, r6
 8005b30:	f7fb f864 	bl	8000bfc <__aeabi_dadd>
 8005b34:	0003      	movs	r3, r0
 8005b36:	000c      	movs	r4, r1
 8005b38:	001d      	movs	r5, r3
 8005b3a:	0026      	movs	r6, r4
 8005b3c:	4b28      	ldr	r3, [pc, #160]	; (8005be0 <MadgwickAHRSupdate+0x3e8>)
 8005b3e:	6818      	ldr	r0, [r3, #0]
 8005b40:	6859      	ldr	r1, [r3, #4]
 8005b42:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8005b44:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8005b46:	f7fb ff7f 	bl	8001a48 <__aeabi_dmul>
 8005b4a:	0003      	movs	r3, r0
 8005b4c:	000c      	movs	r4, r1
 8005b4e:	001a      	movs	r2, r3
 8005b50:	0023      	movs	r3, r4
 8005b52:	0028      	movs	r0, r5
 8005b54:	0031      	movs	r1, r6
 8005b56:	f7fc f9e9 	bl	8001f2c <__aeabi_dsub>
 8005b5a:	0003      	movs	r3, r0
 8005b5c:	000c      	movs	r4, r1
 8005b5e:	0018      	movs	r0, r3
 8005b60:	0021      	movs	r1, r4
 8005b62:	2200      	movs	r2, #0
 8005b64:	4b20      	ldr	r3, [pc, #128]	; (8005be8 <MadgwickAHRSupdate+0x3f0>)
 8005b66:	f7fb ff6f 	bl	8001a48 <__aeabi_dmul>
 8005b6a:	0003      	movs	r3, r0
 8005b6c:	000c      	movs	r4, r1
 8005b6e:	2290      	movs	r2, #144	; 0x90
 8005b70:	0052      	lsls	r2, r2, #1
 8005b72:	2140      	movs	r1, #64	; 0x40
 8005b74:	468c      	mov	ip, r1
 8005b76:	44bc      	add	ip, r7
 8005b78:	4462      	add	r2, ip
 8005b7a:	6013      	str	r3, [r2, #0]
 8005b7c:	6054      	str	r4, [r2, #4]
 8005b7e:	2200      	movs	r2, #0
 8005b80:	2300      	movs	r3, #0
 8005b82:	21b4      	movs	r1, #180	; 0xb4
 8005b84:	0049      	lsls	r1, r1, #1
 8005b86:	2040      	movs	r0, #64	; 0x40
 8005b88:	4684      	mov	ip, r0
 8005b8a:	44bc      	add	ip, r7
 8005b8c:	4461      	add	r1, ip
 8005b8e:	6808      	ldr	r0, [r1, #0]
 8005b90:	6849      	ldr	r1, [r1, #4]
 8005b92:	f7fa fb55 	bl	8000240 <__aeabi_dcmpeq>
 8005b96:	1e03      	subs	r3, r0, #0
 8005b98:	d02a      	beq.n	8005bf0 <MadgwickAHRSupdate+0x3f8>
 8005b9a:	2200      	movs	r2, #0
 8005b9c:	2300      	movs	r3, #0
 8005b9e:	21b8      	movs	r1, #184	; 0xb8
 8005ba0:	0049      	lsls	r1, r1, #1
 8005ba2:	2040      	movs	r0, #64	; 0x40
 8005ba4:	4684      	mov	ip, r0
 8005ba6:	44bc      	add	ip, r7
 8005ba8:	4461      	add	r1, ip
 8005baa:	6808      	ldr	r0, [r1, #0]
 8005bac:	6849      	ldr	r1, [r1, #4]
 8005bae:	f7fa fb47 	bl	8000240 <__aeabi_dcmpeq>
 8005bb2:	1e03      	subs	r3, r0, #0
 8005bb4:	d01c      	beq.n	8005bf0 <MadgwickAHRSupdate+0x3f8>
 8005bb6:	2200      	movs	r2, #0
 8005bb8:	2300      	movs	r3, #0
 8005bba:	21bc      	movs	r1, #188	; 0xbc
 8005bbc:	0049      	lsls	r1, r1, #1
 8005bbe:	2040      	movs	r0, #64	; 0x40
 8005bc0:	4684      	mov	ip, r0
 8005bc2:	44bc      	add	ip, r7
 8005bc4:	4461      	add	r1, ip
 8005bc6:	6808      	ldr	r0, [r1, #0]
 8005bc8:	6849      	ldr	r1, [r1, #4]
 8005bca:	f7fa fb39 	bl	8000240 <__aeabi_dcmpeq>
 8005bce:	1e03      	subs	r3, r0, #0
 8005bd0:	d001      	beq.n	8005bd6 <MadgwickAHRSupdate+0x3de>
 8005bd2:	f001 ff2d 	bl	8007a30 <MadgwickAHRSupdate+0x2238>
 8005bd6:	e00b      	b.n	8005bf0 <MadgwickAHRSupdate+0x3f8>
 8005bd8:	3ff00000 	.word	0x3ff00000
 8005bdc:	200002d0 	.word	0x200002d0
 8005be0:	200002d8 	.word	0x200002d8
 8005be4:	200002e0 	.word	0x200002e0
 8005be8:	3fe00000 	.word	0x3fe00000
 8005bec:	20000000 	.word	0x20000000
 8005bf0:	25b4      	movs	r5, #180	; 0xb4
 8005bf2:	006d      	lsls	r5, r5, #1
 8005bf4:	2040      	movs	r0, #64	; 0x40
 8005bf6:	183b      	adds	r3, r7, r0
 8005bf8:	195b      	adds	r3, r3, r5
 8005bfa:	681a      	ldr	r2, [r3, #0]
 8005bfc:	685b      	ldr	r3, [r3, #4]
 8005bfe:	183c      	adds	r4, r7, r0
 8005c00:	1961      	adds	r1, r4, r5
 8005c02:	6808      	ldr	r0, [r1, #0]
 8005c04:	6849      	ldr	r1, [r1, #4]
 8005c06:	f7fb ff1f 	bl	8001a48 <__aeabi_dmul>
 8005c0a:	0003      	movs	r3, r0
 8005c0c:	000c      	movs	r4, r1
 8005c0e:	001d      	movs	r5, r3
 8005c10:	0026      	movs	r6, r4
 8005c12:	21b8      	movs	r1, #184	; 0xb8
 8005c14:	0049      	lsls	r1, r1, #1
 8005c16:	2040      	movs	r0, #64	; 0x40
 8005c18:	183b      	adds	r3, r7, r0
 8005c1a:	185b      	adds	r3, r3, r1
 8005c1c:	681a      	ldr	r2, [r3, #0]
 8005c1e:	685b      	ldr	r3, [r3, #4]
 8005c20:	183c      	adds	r4, r7, r0
 8005c22:	1860      	adds	r0, r4, r1
 8005c24:	6841      	ldr	r1, [r0, #4]
 8005c26:	6800      	ldr	r0, [r0, #0]
 8005c28:	f7fb ff0e 	bl	8001a48 <__aeabi_dmul>
 8005c2c:	0003      	movs	r3, r0
 8005c2e:	000c      	movs	r4, r1
 8005c30:	001a      	movs	r2, r3
 8005c32:	0023      	movs	r3, r4
 8005c34:	0028      	movs	r0, r5
 8005c36:	0031      	movs	r1, r6
 8005c38:	f7fa ffe0 	bl	8000bfc <__aeabi_dadd>
 8005c3c:	0003      	movs	r3, r0
 8005c3e:	000c      	movs	r4, r1
 8005c40:	001d      	movs	r5, r3
 8005c42:	0026      	movs	r6, r4
 8005c44:	20bc      	movs	r0, #188	; 0xbc
 8005c46:	0040      	lsls	r0, r0, #1
 8005c48:	2140      	movs	r1, #64	; 0x40
 8005c4a:	187b      	adds	r3, r7, r1
 8005c4c:	181b      	adds	r3, r3, r0
 8005c4e:	681a      	ldr	r2, [r3, #0]
 8005c50:	685b      	ldr	r3, [r3, #4]
 8005c52:	187c      	adds	r4, r7, r1
 8005c54:	1824      	adds	r4, r4, r0
 8005c56:	6820      	ldr	r0, [r4, #0]
 8005c58:	6861      	ldr	r1, [r4, #4]
 8005c5a:	f7fb fef5 	bl	8001a48 <__aeabi_dmul>
 8005c5e:	0003      	movs	r3, r0
 8005c60:	000c      	movs	r4, r1
 8005c62:	001a      	movs	r2, r3
 8005c64:	0023      	movs	r3, r4
 8005c66:	0028      	movs	r0, r5
 8005c68:	0031      	movs	r1, r6
 8005c6a:	f7fa ffc7 	bl	8000bfc <__aeabi_dadd>
 8005c6e:	0003      	movs	r3, r0
 8005c70:	000c      	movs	r4, r1
 8005c72:	0018      	movs	r0, r3
 8005c74:	0021      	movs	r1, r4
 8005c76:	f002 fe35 	bl	80088e4 <invSqrt>
 8005c7a:	0003      	movs	r3, r0
 8005c7c:	000c      	movs	r4, r1
 8005c7e:	2688      	movs	r6, #136	; 0x88
 8005c80:	0076      	lsls	r6, r6, #1
 8005c82:	2140      	movs	r1, #64	; 0x40
 8005c84:	187a      	adds	r2, r7, r1
 8005c86:	1992      	adds	r2, r2, r6
 8005c88:	6013      	str	r3, [r2, #0]
 8005c8a:	6054      	str	r4, [r2, #4]
 8005c8c:	187b      	adds	r3, r7, r1
 8005c8e:	199b      	adds	r3, r3, r6
 8005c90:	681a      	ldr	r2, [r3, #0]
 8005c92:	685b      	ldr	r3, [r3, #4]
 8005c94:	25b4      	movs	r5, #180	; 0xb4
 8005c96:	006d      	lsls	r5, r5, #1
 8005c98:	187c      	adds	r4, r7, r1
 8005c9a:	1964      	adds	r4, r4, r5
 8005c9c:	6820      	ldr	r0, [r4, #0]
 8005c9e:	6861      	ldr	r1, [r4, #4]
 8005ca0:	f7fb fed2 	bl	8001a48 <__aeabi_dmul>
 8005ca4:	0003      	movs	r3, r0
 8005ca6:	000c      	movs	r4, r1
 8005ca8:	2140      	movs	r1, #64	; 0x40
 8005caa:	187a      	adds	r2, r7, r1
 8005cac:	1952      	adds	r2, r2, r5
 8005cae:	6013      	str	r3, [r2, #0]
 8005cb0:	6054      	str	r4, [r2, #4]
 8005cb2:	187b      	adds	r3, r7, r1
 8005cb4:	199b      	adds	r3, r3, r6
 8005cb6:	681a      	ldr	r2, [r3, #0]
 8005cb8:	685b      	ldr	r3, [r3, #4]
 8005cba:	21b8      	movs	r1, #184	; 0xb8
 8005cbc:	0049      	lsls	r1, r1, #1
 8005cbe:	000d      	movs	r5, r1
 8005cc0:	2040      	movs	r0, #64	; 0x40
 8005cc2:	4684      	mov	ip, r0
 8005cc4:	44bc      	add	ip, r7
 8005cc6:	4461      	add	r1, ip
 8005cc8:	6808      	ldr	r0, [r1, #0]
 8005cca:	6849      	ldr	r1, [r1, #4]
 8005ccc:	f7fb febc 	bl	8001a48 <__aeabi_dmul>
 8005cd0:	0003      	movs	r3, r0
 8005cd2:	000c      	movs	r4, r1
 8005cd4:	002a      	movs	r2, r5
 8005cd6:	2140      	movs	r1, #64	; 0x40
 8005cd8:	0008      	movs	r0, r1
 8005cda:	1879      	adds	r1, r7, r1
 8005cdc:	1889      	adds	r1, r1, r2
 8005cde:	600b      	str	r3, [r1, #0]
 8005ce0:	604c      	str	r4, [r1, #4]
 8005ce2:	0001      	movs	r1, r0
 8005ce4:	187b      	adds	r3, r7, r1
 8005ce6:	199b      	adds	r3, r3, r6
 8005ce8:	681a      	ldr	r2, [r3, #0]
 8005cea:	685b      	ldr	r3, [r3, #4]
 8005cec:	20bc      	movs	r0, #188	; 0xbc
 8005cee:	0040      	lsls	r0, r0, #1
 8005cf0:	0005      	movs	r5, r0
 8005cf2:	000e      	movs	r6, r1
 8005cf4:	1879      	adds	r1, r7, r1
 8005cf6:	1809      	adds	r1, r1, r0
 8005cf8:	6808      	ldr	r0, [r1, #0]
 8005cfa:	6849      	ldr	r1, [r1, #4]
 8005cfc:	f7fb fea4 	bl	8001a48 <__aeabi_dmul>
 8005d00:	0003      	movs	r3, r0
 8005d02:	000c      	movs	r4, r1
 8005d04:	0029      	movs	r1, r5
 8005d06:	19ba      	adds	r2, r7, r6
 8005d08:	1850      	adds	r0, r2, r1
 8005d0a:	6003      	str	r3, [r0, #0]
 8005d0c:	6044      	str	r4, [r0, #4]
 8005d0e:	25c0      	movs	r5, #192	; 0xc0
 8005d10:	006d      	lsls	r5, r5, #1
 8005d12:	0030      	movs	r0, r6
 8005d14:	183b      	adds	r3, r7, r0
 8005d16:	195b      	adds	r3, r3, r5
 8005d18:	681a      	ldr	r2, [r3, #0]
 8005d1a:	685b      	ldr	r3, [r3, #4]
 8005d1c:	1838      	adds	r0, r7, r0
 8005d1e:	1940      	adds	r0, r0, r5
 8005d20:	6841      	ldr	r1, [r0, #4]
 8005d22:	6800      	ldr	r0, [r0, #0]
 8005d24:	f7fb fe90 	bl	8001a48 <__aeabi_dmul>
 8005d28:	0003      	movs	r3, r0
 8005d2a:	000c      	movs	r4, r1
 8005d2c:	001d      	movs	r5, r3
 8005d2e:	0026      	movs	r6, r4
 8005d30:	21c4      	movs	r1, #196	; 0xc4
 8005d32:	0049      	lsls	r1, r1, #1
 8005d34:	2040      	movs	r0, #64	; 0x40
 8005d36:	183b      	adds	r3, r7, r0
 8005d38:	185b      	adds	r3, r3, r1
 8005d3a:	681a      	ldr	r2, [r3, #0]
 8005d3c:	685b      	ldr	r3, [r3, #4]
 8005d3e:	183c      	adds	r4, r7, r0
 8005d40:	1860      	adds	r0, r4, r1
 8005d42:	6841      	ldr	r1, [r0, #4]
 8005d44:	6800      	ldr	r0, [r0, #0]
 8005d46:	f7fb fe7f 	bl	8001a48 <__aeabi_dmul>
 8005d4a:	0003      	movs	r3, r0
 8005d4c:	000c      	movs	r4, r1
 8005d4e:	001a      	movs	r2, r3
 8005d50:	0023      	movs	r3, r4
 8005d52:	0028      	movs	r0, r5
 8005d54:	0031      	movs	r1, r6
 8005d56:	f7fa ff51 	bl	8000bfc <__aeabi_dadd>
 8005d5a:	0003      	movs	r3, r0
 8005d5c:	000c      	movs	r4, r1
 8005d5e:	001d      	movs	r5, r3
 8005d60:	0026      	movs	r6, r4
 8005d62:	20c8      	movs	r0, #200	; 0xc8
 8005d64:	0040      	lsls	r0, r0, #1
 8005d66:	2140      	movs	r1, #64	; 0x40
 8005d68:	187b      	adds	r3, r7, r1
 8005d6a:	181b      	adds	r3, r3, r0
 8005d6c:	681a      	ldr	r2, [r3, #0]
 8005d6e:	685b      	ldr	r3, [r3, #4]
 8005d70:	187c      	adds	r4, r7, r1
 8005d72:	1824      	adds	r4, r4, r0
 8005d74:	6820      	ldr	r0, [r4, #0]
 8005d76:	6861      	ldr	r1, [r4, #4]
 8005d78:	f7fb fe66 	bl	8001a48 <__aeabi_dmul>
 8005d7c:	0003      	movs	r3, r0
 8005d7e:	000c      	movs	r4, r1
 8005d80:	001a      	movs	r2, r3
 8005d82:	0023      	movs	r3, r4
 8005d84:	0028      	movs	r0, r5
 8005d86:	0031      	movs	r1, r6
 8005d88:	f7fa ff38 	bl	8000bfc <__aeabi_dadd>
 8005d8c:	0003      	movs	r3, r0
 8005d8e:	000c      	movs	r4, r1
 8005d90:	0018      	movs	r0, r3
 8005d92:	0021      	movs	r1, r4
 8005d94:	f002 fda6 	bl	80088e4 <invSqrt>
 8005d98:	0003      	movs	r3, r0
 8005d9a:	000c      	movs	r4, r1
 8005d9c:	2688      	movs	r6, #136	; 0x88
 8005d9e:	0076      	lsls	r6, r6, #1
 8005da0:	2140      	movs	r1, #64	; 0x40
 8005da2:	187a      	adds	r2, r7, r1
 8005da4:	1992      	adds	r2, r2, r6
 8005da6:	6013      	str	r3, [r2, #0]
 8005da8:	6054      	str	r4, [r2, #4]
 8005daa:	187b      	adds	r3, r7, r1
 8005dac:	199b      	adds	r3, r3, r6
 8005dae:	681a      	ldr	r2, [r3, #0]
 8005db0:	685b      	ldr	r3, [r3, #4]
 8005db2:	25c0      	movs	r5, #192	; 0xc0
 8005db4:	006d      	lsls	r5, r5, #1
 8005db6:	187c      	adds	r4, r7, r1
 8005db8:	1964      	adds	r4, r4, r5
 8005dba:	6820      	ldr	r0, [r4, #0]
 8005dbc:	6861      	ldr	r1, [r4, #4]
 8005dbe:	f7fb fe43 	bl	8001a48 <__aeabi_dmul>
 8005dc2:	0003      	movs	r3, r0
 8005dc4:	000c      	movs	r4, r1
 8005dc6:	002a      	movs	r2, r5
 8005dc8:	2540      	movs	r5, #64	; 0x40
 8005dca:	46ac      	mov	ip, r5
 8005dcc:	44bc      	add	ip, r7
 8005dce:	4462      	add	r2, ip
 8005dd0:	6013      	str	r3, [r2, #0]
 8005dd2:	6054      	str	r4, [r2, #4]
 8005dd4:	0033      	movs	r3, r6
 8005dd6:	001e      	movs	r6, r3
 8005dd8:	2240      	movs	r2, #64	; 0x40
 8005dda:	4694      	mov	ip, r2
 8005ddc:	44bc      	add	ip, r7
 8005dde:	4463      	add	r3, ip
 8005de0:	681a      	ldr	r2, [r3, #0]
 8005de2:	685b      	ldr	r3, [r3, #4]
 8005de4:	21c4      	movs	r1, #196	; 0xc4
 8005de6:	0049      	lsls	r1, r1, #1
 8005de8:	000d      	movs	r5, r1
 8005dea:	2040      	movs	r0, #64	; 0x40
 8005dec:	183c      	adds	r4, r7, r0
 8005dee:	1864      	adds	r4, r4, r1
 8005df0:	6820      	ldr	r0, [r4, #0]
 8005df2:	6861      	ldr	r1, [r4, #4]
 8005df4:	f7fb fe28 	bl	8001a48 <__aeabi_dmul>
 8005df8:	0003      	movs	r3, r0
 8005dfa:	000c      	movs	r4, r1
 8005dfc:	2140      	movs	r1, #64	; 0x40
 8005dfe:	187a      	adds	r2, r7, r1
 8005e00:	1951      	adds	r1, r2, r5
 8005e02:	600b      	str	r3, [r1, #0]
 8005e04:	604c      	str	r4, [r1, #4]
 8005e06:	0033      	movs	r3, r6
 8005e08:	2240      	movs	r2, #64	; 0x40
 8005e0a:	4694      	mov	ip, r2
 8005e0c:	44bc      	add	ip, r7
 8005e0e:	4463      	add	r3, ip
 8005e10:	681a      	ldr	r2, [r3, #0]
 8005e12:	685b      	ldr	r3, [r3, #4]
 8005e14:	20c8      	movs	r0, #200	; 0xc8
 8005e16:	0040      	lsls	r0, r0, #1
 8005e18:	0006      	movs	r6, r0
 8005e1a:	2440      	movs	r4, #64	; 0x40
 8005e1c:	46a4      	mov	ip, r4
 8005e1e:	44bc      	add	ip, r7
 8005e20:	4460      	add	r0, ip
 8005e22:	6841      	ldr	r1, [r0, #4]
 8005e24:	6800      	ldr	r0, [r0, #0]
 8005e26:	f7fb fe0f 	bl	8001a48 <__aeabi_dmul>
 8005e2a:	0003      	movs	r3, r0
 8005e2c:	000c      	movs	r4, r1
 8005e2e:	2140      	movs	r1, #64	; 0x40
 8005e30:	187a      	adds	r2, r7, r1
 8005e32:	1990      	adds	r0, r2, r6
 8005e34:	6003      	str	r3, [r0, #0]
 8005e36:	6044      	str	r4, [r0, #4]
 8005e38:	4be8      	ldr	r3, [pc, #928]	; (80061dc <MadgwickAHRSupdate+0x9e4>)
 8005e3a:	6818      	ldr	r0, [r3, #0]
 8005e3c:	6859      	ldr	r1, [r3, #4]
 8005e3e:	0002      	movs	r2, r0
 8005e40:	000b      	movs	r3, r1
 8005e42:	f7fa fedb 	bl	8000bfc <__aeabi_dadd>
 8005e46:	0003      	movs	r3, r0
 8005e48:	000c      	movs	r4, r1
 8005e4a:	001a      	movs	r2, r3
 8005e4c:	0023      	movs	r3, r4
 8005e4e:	21c0      	movs	r1, #192	; 0xc0
 8005e50:	0049      	lsls	r1, r1, #1
 8005e52:	2040      	movs	r0, #64	; 0x40
 8005e54:	1838      	adds	r0, r7, r0
 8005e56:	1840      	adds	r0, r0, r1
 8005e58:	6841      	ldr	r1, [r0, #4]
 8005e5a:	6800      	ldr	r0, [r0, #0]
 8005e5c:	f7fb fdf4 	bl	8001a48 <__aeabi_dmul>
 8005e60:	0003      	movs	r3, r0
 8005e62:	000c      	movs	r4, r1
 8005e64:	2084      	movs	r0, #132	; 0x84
 8005e66:	0040      	lsls	r0, r0, #1
 8005e68:	2140      	movs	r1, #64	; 0x40
 8005e6a:	187a      	adds	r2, r7, r1
 8005e6c:	1811      	adds	r1, r2, r0
 8005e6e:	600b      	str	r3, [r1, #0]
 8005e70:	604c      	str	r4, [r1, #4]
 8005e72:	4bda      	ldr	r3, [pc, #872]	; (80061dc <MadgwickAHRSupdate+0x9e4>)
 8005e74:	6818      	ldr	r0, [r3, #0]
 8005e76:	6859      	ldr	r1, [r3, #4]
 8005e78:	0002      	movs	r2, r0
 8005e7a:	000b      	movs	r3, r1
 8005e7c:	f7fa febe 	bl	8000bfc <__aeabi_dadd>
 8005e80:	0003      	movs	r3, r0
 8005e82:	000c      	movs	r4, r1
 8005e84:	001a      	movs	r2, r3
 8005e86:	0023      	movs	r3, r4
 8005e88:	2140      	movs	r1, #64	; 0x40
 8005e8a:	1879      	adds	r1, r7, r1
 8005e8c:	1949      	adds	r1, r1, r5
 8005e8e:	6808      	ldr	r0, [r1, #0]
 8005e90:	6849      	ldr	r1, [r1, #4]
 8005e92:	f7fb fdd9 	bl	8001a48 <__aeabi_dmul>
 8005e96:	0003      	movs	r3, r0
 8005e98:	000c      	movs	r4, r1
 8005e9a:	22a0      	movs	r2, #160	; 0xa0
 8005e9c:	0052      	lsls	r2, r2, #1
 8005e9e:	18b9      	adds	r1, r7, r2
 8005ea0:	600b      	str	r3, [r1, #0]
 8005ea2:	604c      	str	r4, [r1, #4]
 8005ea4:	4bcd      	ldr	r3, [pc, #820]	; (80061dc <MadgwickAHRSupdate+0x9e4>)
 8005ea6:	6818      	ldr	r0, [r3, #0]
 8005ea8:	6859      	ldr	r1, [r3, #4]
 8005eaa:	0002      	movs	r2, r0
 8005eac:	000b      	movs	r3, r1
 8005eae:	f7fa fea5 	bl	8000bfc <__aeabi_dadd>
 8005eb2:	0003      	movs	r3, r0
 8005eb4:	000c      	movs	r4, r1
 8005eb6:	001a      	movs	r2, r3
 8005eb8:	0023      	movs	r3, r4
 8005eba:	2540      	movs	r5, #64	; 0x40
 8005ebc:	1979      	adds	r1, r7, r5
 8005ebe:	1989      	adds	r1, r1, r6
 8005ec0:	6808      	ldr	r0, [r1, #0]
 8005ec2:	6849      	ldr	r1, [r1, #4]
 8005ec4:	f7fb fdc0 	bl	8001a48 <__aeabi_dmul>
 8005ec8:	0003      	movs	r3, r0
 8005eca:	000c      	movs	r4, r1
 8005ecc:	21f8      	movs	r1, #248	; 0xf8
 8005ece:	002e      	movs	r6, r5
 8005ed0:	1978      	adds	r0, r7, r5
 8005ed2:	1840      	adds	r0, r0, r1
 8005ed4:	6003      	str	r3, [r0, #0]
 8005ed6:	6044      	str	r4, [r0, #4]
 8005ed8:	4bc1      	ldr	r3, [pc, #772]	; (80061e0 <MadgwickAHRSupdate+0x9e8>)
 8005eda:	6818      	ldr	r0, [r3, #0]
 8005edc:	6859      	ldr	r1, [r3, #4]
 8005ede:	0002      	movs	r2, r0
 8005ee0:	000b      	movs	r3, r1
 8005ee2:	f7fa fe8b 	bl	8000bfc <__aeabi_dadd>
 8005ee6:	0003      	movs	r3, r0
 8005ee8:	000c      	movs	r4, r1
 8005eea:	001a      	movs	r2, r3
 8005eec:	0023      	movs	r3, r4
 8005eee:	21c0      	movs	r1, #192	; 0xc0
 8005ef0:	0049      	lsls	r1, r1, #1
 8005ef2:	000d      	movs	r5, r1
 8005ef4:	19b8      	adds	r0, r7, r6
 8005ef6:	1840      	adds	r0, r0, r1
 8005ef8:	6841      	ldr	r1, [r0, #4]
 8005efa:	6800      	ldr	r0, [r0, #0]
 8005efc:	f7fb fda4 	bl	8001a48 <__aeabi_dmul>
 8005f00:	0003      	movs	r3, r0
 8005f02:	000c      	movs	r4, r1
 8005f04:	20f0      	movs	r0, #240	; 0xf0
 8005f06:	19b9      	adds	r1, r7, r6
 8005f08:	180a      	adds	r2, r1, r0
 8005f0a:	6013      	str	r3, [r2, #0]
 8005f0c:	6054      	str	r4, [r2, #4]
 8005f0e:	4bb3      	ldr	r3, [pc, #716]	; (80061dc <MadgwickAHRSupdate+0x9e4>)
 8005f10:	6818      	ldr	r0, [r3, #0]
 8005f12:	6859      	ldr	r1, [r3, #4]
 8005f14:	0002      	movs	r2, r0
 8005f16:	000b      	movs	r3, r1
 8005f18:	f7fa fe70 	bl	8000bfc <__aeabi_dadd>
 8005f1c:	0003      	movs	r3, r0
 8005f1e:	000c      	movs	r4, r1
 8005f20:	22e8      	movs	r2, #232	; 0xe8
 8005f22:	19b9      	adds	r1, r7, r6
 8005f24:	1889      	adds	r1, r1, r2
 8005f26:	600b      	str	r3, [r1, #0]
 8005f28:	604c      	str	r4, [r1, #4]
 8005f2a:	4bad      	ldr	r3, [pc, #692]	; (80061e0 <MadgwickAHRSupdate+0x9e8>)
 8005f2c:	6818      	ldr	r0, [r3, #0]
 8005f2e:	6859      	ldr	r1, [r3, #4]
 8005f30:	0002      	movs	r2, r0
 8005f32:	000b      	movs	r3, r1
 8005f34:	f7fa fe62 	bl	8000bfc <__aeabi_dadd>
 8005f38:	0003      	movs	r3, r0
 8005f3a:	000c      	movs	r4, r1
 8005f3c:	20e0      	movs	r0, #224	; 0xe0
 8005f3e:	19b9      	adds	r1, r7, r6
 8005f40:	1809      	adds	r1, r1, r0
 8005f42:	600b      	str	r3, [r1, #0]
 8005f44:	604c      	str	r4, [r1, #4]
 8005f46:	4ba7      	ldr	r3, [pc, #668]	; (80061e4 <MadgwickAHRSupdate+0x9ec>)
 8005f48:	6818      	ldr	r0, [r3, #0]
 8005f4a:	6859      	ldr	r1, [r3, #4]
 8005f4c:	0002      	movs	r2, r0
 8005f4e:	000b      	movs	r3, r1
 8005f50:	f7fa fe54 	bl	8000bfc <__aeabi_dadd>
 8005f54:	0003      	movs	r3, r0
 8005f56:	000c      	movs	r4, r1
 8005f58:	21d8      	movs	r1, #216	; 0xd8
 8005f5a:	19b8      	adds	r0, r7, r6
 8005f5c:	1842      	adds	r2, r0, r1
 8005f5e:	6013      	str	r3, [r2, #0]
 8005f60:	6054      	str	r4, [r2, #4]
 8005f62:	4ba1      	ldr	r3, [pc, #644]	; (80061e8 <MadgwickAHRSupdate+0x9f0>)
 8005f64:	6818      	ldr	r0, [r3, #0]
 8005f66:	6859      	ldr	r1, [r3, #4]
 8005f68:	0002      	movs	r2, r0
 8005f6a:	000b      	movs	r3, r1
 8005f6c:	f7fa fe46 	bl	8000bfc <__aeabi_dadd>
 8005f70:	0003      	movs	r3, r0
 8005f72:	000c      	movs	r4, r1
 8005f74:	22d0      	movs	r2, #208	; 0xd0
 8005f76:	19b9      	adds	r1, r7, r6
 8005f78:	1889      	adds	r1, r1, r2
 8005f7a:	600b      	str	r3, [r1, #0]
 8005f7c:	604c      	str	r4, [r1, #4]
 8005f7e:	4b97      	ldr	r3, [pc, #604]	; (80061dc <MadgwickAHRSupdate+0x9e4>)
 8005f80:	6818      	ldr	r0, [r3, #0]
 8005f82:	6859      	ldr	r1, [r3, #4]
 8005f84:	0002      	movs	r2, r0
 8005f86:	000b      	movs	r3, r1
 8005f88:	f7fa fe38 	bl	8000bfc <__aeabi_dadd>
 8005f8c:	0003      	movs	r3, r0
 8005f8e:	000c      	movs	r4, r1
 8005f90:	0018      	movs	r0, r3
 8005f92:	0021      	movs	r1, r4
 8005f94:	4b93      	ldr	r3, [pc, #588]	; (80061e4 <MadgwickAHRSupdate+0x9ec>)
 8005f96:	685c      	ldr	r4, [r3, #4]
 8005f98:	681b      	ldr	r3, [r3, #0]
 8005f9a:	001a      	movs	r2, r3
 8005f9c:	0023      	movs	r3, r4
 8005f9e:	f7fb fd53 	bl	8001a48 <__aeabi_dmul>
 8005fa2:	0003      	movs	r3, r0
 8005fa4:	000c      	movs	r4, r1
 8005fa6:	21c8      	movs	r1, #200	; 0xc8
 8005fa8:	2040      	movs	r0, #64	; 0x40
 8005faa:	4684      	mov	ip, r0
 8005fac:	44bc      	add	ip, r7
 8005fae:	4461      	add	r1, ip
 8005fb0:	600b      	str	r3, [r1, #0]
 8005fb2:	604c      	str	r4, [r1, #4]
 8005fb4:	4b8b      	ldr	r3, [pc, #556]	; (80061e4 <MadgwickAHRSupdate+0x9ec>)
 8005fb6:	6818      	ldr	r0, [r3, #0]
 8005fb8:	6859      	ldr	r1, [r3, #4]
 8005fba:	0002      	movs	r2, r0
 8005fbc:	000b      	movs	r3, r1
 8005fbe:	f7fa fe1d 	bl	8000bfc <__aeabi_dadd>
 8005fc2:	0003      	movs	r3, r0
 8005fc4:	000c      	movs	r4, r1
 8005fc6:	0018      	movs	r0, r3
 8005fc8:	0021      	movs	r1, r4
 8005fca:	4b87      	ldr	r3, [pc, #540]	; (80061e8 <MadgwickAHRSupdate+0x9f0>)
 8005fcc:	685c      	ldr	r4, [r3, #4]
 8005fce:	681b      	ldr	r3, [r3, #0]
 8005fd0:	001a      	movs	r2, r3
 8005fd2:	0023      	movs	r3, r4
 8005fd4:	f7fb fd38 	bl	8001a48 <__aeabi_dmul>
 8005fd8:	0003      	movs	r3, r0
 8005fda:	000c      	movs	r4, r1
 8005fdc:	21c0      	movs	r1, #192	; 0xc0
 8005fde:	2040      	movs	r0, #64	; 0x40
 8005fe0:	4684      	mov	ip, r0
 8005fe2:	44bc      	add	ip, r7
 8005fe4:	4461      	add	r1, ip
 8005fe6:	600b      	str	r3, [r1, #0]
 8005fe8:	604c      	str	r4, [r1, #4]
 8005fea:	4b7c      	ldr	r3, [pc, #496]	; (80061dc <MadgwickAHRSupdate+0x9e4>)
 8005fec:	6818      	ldr	r0, [r3, #0]
 8005fee:	6859      	ldr	r1, [r3, #4]
 8005ff0:	4b7a      	ldr	r3, [pc, #488]	; (80061dc <MadgwickAHRSupdate+0x9e4>)
 8005ff2:	685c      	ldr	r4, [r3, #4]
 8005ff4:	681b      	ldr	r3, [r3, #0]
 8005ff6:	001a      	movs	r2, r3
 8005ff8:	0023      	movs	r3, r4
 8005ffa:	f7fb fd25 	bl	8001a48 <__aeabi_dmul>
 8005ffe:	0003      	movs	r3, r0
 8006000:	000c      	movs	r4, r1
 8006002:	22b8      	movs	r2, #184	; 0xb8
 8006004:	0016      	movs	r6, r2
 8006006:	2140      	movs	r1, #64	; 0x40
 8006008:	1878      	adds	r0, r7, r1
 800600a:	1881      	adds	r1, r0, r2
 800600c:	600b      	str	r3, [r1, #0]
 800600e:	604c      	str	r4, [r1, #4]
 8006010:	4b72      	ldr	r3, [pc, #456]	; (80061dc <MadgwickAHRSupdate+0x9e4>)
 8006012:	6818      	ldr	r0, [r3, #0]
 8006014:	6859      	ldr	r1, [r3, #4]
 8006016:	4b72      	ldr	r3, [pc, #456]	; (80061e0 <MadgwickAHRSupdate+0x9e8>)
 8006018:	685c      	ldr	r4, [r3, #4]
 800601a:	681b      	ldr	r3, [r3, #0]
 800601c:	001a      	movs	r2, r3
 800601e:	0023      	movs	r3, r4
 8006020:	f7fb fd12 	bl	8001a48 <__aeabi_dmul>
 8006024:	0003      	movs	r3, r0
 8006026:	000c      	movs	r4, r1
 8006028:	21b0      	movs	r1, #176	; 0xb0
 800602a:	2240      	movs	r2, #64	; 0x40
 800602c:	18b8      	adds	r0, r7, r2
 800602e:	1842      	adds	r2, r0, r1
 8006030:	6013      	str	r3, [r2, #0]
 8006032:	6054      	str	r4, [r2, #4]
 8006034:	4b69      	ldr	r3, [pc, #420]	; (80061dc <MadgwickAHRSupdate+0x9e4>)
 8006036:	6818      	ldr	r0, [r3, #0]
 8006038:	6859      	ldr	r1, [r3, #4]
 800603a:	4b6a      	ldr	r3, [pc, #424]	; (80061e4 <MadgwickAHRSupdate+0x9ec>)
 800603c:	685c      	ldr	r4, [r3, #4]
 800603e:	681b      	ldr	r3, [r3, #0]
 8006040:	001a      	movs	r2, r3
 8006042:	0023      	movs	r3, r4
 8006044:	f7fb fd00 	bl	8001a48 <__aeabi_dmul>
 8006048:	0003      	movs	r3, r0
 800604a:	000c      	movs	r4, r1
 800604c:	21a8      	movs	r1, #168	; 0xa8
 800604e:	2240      	movs	r2, #64	; 0x40
 8006050:	18b8      	adds	r0, r7, r2
 8006052:	1842      	adds	r2, r0, r1
 8006054:	6013      	str	r3, [r2, #0]
 8006056:	6054      	str	r4, [r2, #4]
 8006058:	4b60      	ldr	r3, [pc, #384]	; (80061dc <MadgwickAHRSupdate+0x9e4>)
 800605a:	6818      	ldr	r0, [r3, #0]
 800605c:	6859      	ldr	r1, [r3, #4]
 800605e:	4b62      	ldr	r3, [pc, #392]	; (80061e8 <MadgwickAHRSupdate+0x9f0>)
 8006060:	685c      	ldr	r4, [r3, #4]
 8006062:	681b      	ldr	r3, [r3, #0]
 8006064:	001a      	movs	r2, r3
 8006066:	0023      	movs	r3, r4
 8006068:	f7fb fcee 	bl	8001a48 <__aeabi_dmul>
 800606c:	0003      	movs	r3, r0
 800606e:	000c      	movs	r4, r1
 8006070:	22a0      	movs	r2, #160	; 0xa0
 8006072:	2140      	movs	r1, #64	; 0x40
 8006074:	1878      	adds	r0, r7, r1
 8006076:	1880      	adds	r0, r0, r2
 8006078:	6003      	str	r3, [r0, #0]
 800607a:	6044      	str	r4, [r0, #4]
 800607c:	4b58      	ldr	r3, [pc, #352]	; (80061e0 <MadgwickAHRSupdate+0x9e8>)
 800607e:	6818      	ldr	r0, [r3, #0]
 8006080:	6859      	ldr	r1, [r3, #4]
 8006082:	4b57      	ldr	r3, [pc, #348]	; (80061e0 <MadgwickAHRSupdate+0x9e8>)
 8006084:	685c      	ldr	r4, [r3, #4]
 8006086:	681b      	ldr	r3, [r3, #0]
 8006088:	001a      	movs	r2, r3
 800608a:	0023      	movs	r3, r4
 800608c:	f7fb fcdc 	bl	8001a48 <__aeabi_dmul>
 8006090:	0003      	movs	r3, r0
 8006092:	000c      	movs	r4, r1
 8006094:	2098      	movs	r0, #152	; 0x98
 8006096:	2240      	movs	r2, #64	; 0x40
 8006098:	18b9      	adds	r1, r7, r2
 800609a:	1809      	adds	r1, r1, r0
 800609c:	600b      	str	r3, [r1, #0]
 800609e:	604c      	str	r4, [r1, #4]
 80060a0:	4b4f      	ldr	r3, [pc, #316]	; (80061e0 <MadgwickAHRSupdate+0x9e8>)
 80060a2:	6818      	ldr	r0, [r3, #0]
 80060a4:	6859      	ldr	r1, [r3, #4]
 80060a6:	4b4f      	ldr	r3, [pc, #316]	; (80061e4 <MadgwickAHRSupdate+0x9ec>)
 80060a8:	685c      	ldr	r4, [r3, #4]
 80060aa:	681b      	ldr	r3, [r3, #0]
 80060ac:	001a      	movs	r2, r3
 80060ae:	0023      	movs	r3, r4
 80060b0:	f7fb fcca 	bl	8001a48 <__aeabi_dmul>
 80060b4:	0003      	movs	r3, r0
 80060b6:	000c      	movs	r4, r1
 80060b8:	2090      	movs	r0, #144	; 0x90
 80060ba:	2240      	movs	r2, #64	; 0x40
 80060bc:	18b9      	adds	r1, r7, r2
 80060be:	1809      	adds	r1, r1, r0
 80060c0:	600b      	str	r3, [r1, #0]
 80060c2:	604c      	str	r4, [r1, #4]
 80060c4:	4b46      	ldr	r3, [pc, #280]	; (80061e0 <MadgwickAHRSupdate+0x9e8>)
 80060c6:	6818      	ldr	r0, [r3, #0]
 80060c8:	6859      	ldr	r1, [r3, #4]
 80060ca:	4b47      	ldr	r3, [pc, #284]	; (80061e8 <MadgwickAHRSupdate+0x9f0>)
 80060cc:	685c      	ldr	r4, [r3, #4]
 80060ce:	681b      	ldr	r3, [r3, #0]
 80060d0:	001a      	movs	r2, r3
 80060d2:	0023      	movs	r3, r4
 80060d4:	f7fb fcb8 	bl	8001a48 <__aeabi_dmul>
 80060d8:	0003      	movs	r3, r0
 80060da:	000c      	movs	r4, r1
 80060dc:	2088      	movs	r0, #136	; 0x88
 80060de:	2240      	movs	r2, #64	; 0x40
 80060e0:	18b9      	adds	r1, r7, r2
 80060e2:	1809      	adds	r1, r1, r0
 80060e4:	600b      	str	r3, [r1, #0]
 80060e6:	604c      	str	r4, [r1, #4]
 80060e8:	4b3e      	ldr	r3, [pc, #248]	; (80061e4 <MadgwickAHRSupdate+0x9ec>)
 80060ea:	6818      	ldr	r0, [r3, #0]
 80060ec:	6859      	ldr	r1, [r3, #4]
 80060ee:	4b3d      	ldr	r3, [pc, #244]	; (80061e4 <MadgwickAHRSupdate+0x9ec>)
 80060f0:	685c      	ldr	r4, [r3, #4]
 80060f2:	681b      	ldr	r3, [r3, #0]
 80060f4:	001a      	movs	r2, r3
 80060f6:	0023      	movs	r3, r4
 80060f8:	f7fb fca6 	bl	8001a48 <__aeabi_dmul>
 80060fc:	0003      	movs	r3, r0
 80060fe:	000c      	movs	r4, r1
 8006100:	2180      	movs	r1, #128	; 0x80
 8006102:	2040      	movs	r0, #64	; 0x40
 8006104:	183a      	adds	r2, r7, r0
 8006106:	1852      	adds	r2, r2, r1
 8006108:	6013      	str	r3, [r2, #0]
 800610a:	6054      	str	r4, [r2, #4]
 800610c:	4b35      	ldr	r3, [pc, #212]	; (80061e4 <MadgwickAHRSupdate+0x9ec>)
 800610e:	6818      	ldr	r0, [r3, #0]
 8006110:	6859      	ldr	r1, [r3, #4]
 8006112:	4b35      	ldr	r3, [pc, #212]	; (80061e8 <MadgwickAHRSupdate+0x9f0>)
 8006114:	685c      	ldr	r4, [r3, #4]
 8006116:	681b      	ldr	r3, [r3, #0]
 8006118:	001a      	movs	r2, r3
 800611a:	0023      	movs	r3, r4
 800611c:	f7fb fc94 	bl	8001a48 <__aeabi_dmul>
 8006120:	0003      	movs	r3, r0
 8006122:	000c      	movs	r4, r1
 8006124:	21b8      	movs	r1, #184	; 0xb8
 8006126:	187a      	adds	r2, r7, r1
 8006128:	6013      	str	r3, [r2, #0]
 800612a:	6054      	str	r4, [r2, #4]
 800612c:	4b2e      	ldr	r3, [pc, #184]	; (80061e8 <MadgwickAHRSupdate+0x9f0>)
 800612e:	6818      	ldr	r0, [r3, #0]
 8006130:	6859      	ldr	r1, [r3, #4]
 8006132:	4b2d      	ldr	r3, [pc, #180]	; (80061e8 <MadgwickAHRSupdate+0x9f0>)
 8006134:	685c      	ldr	r4, [r3, #4]
 8006136:	681b      	ldr	r3, [r3, #0]
 8006138:	001a      	movs	r2, r3
 800613a:	0023      	movs	r3, r4
 800613c:	f7fb fc84 	bl	8001a48 <__aeabi_dmul>
 8006140:	0003      	movs	r3, r0
 8006142:	000c      	movs	r4, r1
 8006144:	22b0      	movs	r2, #176	; 0xb0
 8006146:	18ba      	adds	r2, r7, r2
 8006148:	6013      	str	r3, [r2, #0]
 800614a:	6054      	str	r4, [r2, #4]
 800614c:	0033      	movs	r3, r6
 800614e:	2040      	movs	r0, #64	; 0x40
 8006150:	183e      	adds	r6, r7, r0
 8006152:	18f4      	adds	r4, r6, r3
 8006154:	6822      	ldr	r2, [r4, #0]
 8006156:	6863      	ldr	r3, [r4, #4]
 8006158:	0029      	movs	r1, r5
 800615a:	183d      	adds	r5, r7, r0
 800615c:	186c      	adds	r4, r5, r1
 800615e:	6820      	ldr	r0, [r4, #0]
 8006160:	6861      	ldr	r1, [r4, #4]
 8006162:	f7fb fc71 	bl	8001a48 <__aeabi_dmul>
 8006166:	0003      	movs	r3, r0
 8006168:	000c      	movs	r4, r1
 800616a:	001d      	movs	r5, r3
 800616c:	0026      	movs	r6, r4
 800616e:	4b1e      	ldr	r3, [pc, #120]	; (80061e8 <MadgwickAHRSupdate+0x9f0>)
 8006170:	6818      	ldr	r0, [r3, #0]
 8006172:	6859      	ldr	r1, [r3, #4]
 8006174:	23a0      	movs	r3, #160	; 0xa0
 8006176:	005b      	lsls	r3, r3, #1
 8006178:	18fc      	adds	r4, r7, r3
 800617a:	6822      	ldr	r2, [r4, #0]
 800617c:	6863      	ldr	r3, [r4, #4]
 800617e:	f7fb fc63 	bl	8001a48 <__aeabi_dmul>
 8006182:	0003      	movs	r3, r0
 8006184:	000c      	movs	r4, r1
 8006186:	001a      	movs	r2, r3
 8006188:	0023      	movs	r3, r4
 800618a:	0028      	movs	r0, r5
 800618c:	0031      	movs	r1, r6
 800618e:	f7fb fecd 	bl	8001f2c <__aeabi_dsub>
 8006192:	0003      	movs	r3, r0
 8006194:	000c      	movs	r4, r1
 8006196:	001d      	movs	r5, r3
 8006198:	0026      	movs	r6, r4
 800619a:	4b12      	ldr	r3, [pc, #72]	; (80061e4 <MadgwickAHRSupdate+0x9ec>)
 800619c:	6818      	ldr	r0, [r3, #0]
 800619e:	6859      	ldr	r1, [r3, #4]
 80061a0:	23f8      	movs	r3, #248	; 0xf8
 80061a2:	2240      	movs	r2, #64	; 0x40
 80061a4:	18ba      	adds	r2, r7, r2
 80061a6:	18d4      	adds	r4, r2, r3
 80061a8:	6822      	ldr	r2, [r4, #0]
 80061aa:	6863      	ldr	r3, [r4, #4]
 80061ac:	f7fb fc4c 	bl	8001a48 <__aeabi_dmul>
 80061b0:	0003      	movs	r3, r0
 80061b2:	000c      	movs	r4, r1
 80061b4:	001a      	movs	r2, r3
 80061b6:	0023      	movs	r3, r4
 80061b8:	0028      	movs	r0, r5
 80061ba:	0031      	movs	r1, r6
 80061bc:	f7fa fd1e 	bl	8000bfc <__aeabi_dadd>
 80061c0:	0003      	movs	r3, r0
 80061c2:	000c      	movs	r4, r1
 80061c4:	001d      	movs	r5, r3
 80061c6:	0026      	movs	r6, r4
 80061c8:	2298      	movs	r2, #152	; 0x98
 80061ca:	2040      	movs	r0, #64	; 0x40
 80061cc:	183b      	adds	r3, r7, r0
 80061ce:	189c      	adds	r4, r3, r2
 80061d0:	6822      	ldr	r2, [r4, #0]
 80061d2:	6863      	ldr	r3, [r4, #4]
 80061d4:	21c0      	movs	r1, #192	; 0xc0
 80061d6:	0049      	lsls	r1, r1, #1
 80061d8:	1838      	adds	r0, r7, r0
 80061da:	e007      	b.n	80061ec <MadgwickAHRSupdate+0x9f4>
 80061dc:	20000000 	.word	0x20000000
 80061e0:	200002d0 	.word	0x200002d0
 80061e4:	200002d8 	.word	0x200002d8
 80061e8:	200002e0 	.word	0x200002e0
 80061ec:	1844      	adds	r4, r0, r1
 80061ee:	6820      	ldr	r0, [r4, #0]
 80061f0:	6861      	ldr	r1, [r4, #4]
 80061f2:	f7fb fc29 	bl	8001a48 <__aeabi_dmul>
 80061f6:	0003      	movs	r3, r0
 80061f8:	000c      	movs	r4, r1
 80061fa:	001a      	movs	r2, r3
 80061fc:	0023      	movs	r3, r4
 80061fe:	0028      	movs	r0, r5
 8006200:	0031      	movs	r1, r6
 8006202:	f7fa fcfb 	bl	8000bfc <__aeabi_dadd>
 8006206:	0003      	movs	r3, r0
 8006208:	000c      	movs	r4, r1
 800620a:	001d      	movs	r5, r3
 800620c:	0026      	movs	r6, r4
 800620e:	23c4      	movs	r3, #196	; 0xc4
 8006210:	005b      	lsls	r3, r3, #1
 8006212:	2140      	movs	r1, #64	; 0x40
 8006214:	1878      	adds	r0, r7, r1
 8006216:	18c4      	adds	r4, r0, r3
 8006218:	6822      	ldr	r2, [r4, #0]
 800621a:	6863      	ldr	r3, [r4, #4]
 800621c:	20e0      	movs	r0, #224	; 0xe0
 800621e:	187c      	adds	r4, r7, r1
 8006220:	1824      	adds	r4, r4, r0
 8006222:	6820      	ldr	r0, [r4, #0]
 8006224:	6861      	ldr	r1, [r4, #4]
 8006226:	f7fb fc0f 	bl	8001a48 <__aeabi_dmul>
 800622a:	0003      	movs	r3, r0
 800622c:	000c      	movs	r4, r1
 800622e:	0018      	movs	r0, r3
 8006230:	0021      	movs	r1, r4
 8006232:	4bec      	ldr	r3, [pc, #944]	; (80065e4 <MadgwickAHRSupdate+0xdec>)
 8006234:	685c      	ldr	r4, [r3, #4]
 8006236:	681b      	ldr	r3, [r3, #0]
 8006238:	001a      	movs	r2, r3
 800623a:	0023      	movs	r3, r4
 800623c:	f7fb fc04 	bl	8001a48 <__aeabi_dmul>
 8006240:	0003      	movs	r3, r0
 8006242:	000c      	movs	r4, r1
 8006244:	001a      	movs	r2, r3
 8006246:	0023      	movs	r3, r4
 8006248:	0028      	movs	r0, r5
 800624a:	0031      	movs	r1, r6
 800624c:	f7fa fcd6 	bl	8000bfc <__aeabi_dadd>
 8006250:	0003      	movs	r3, r0
 8006252:	000c      	movs	r4, r1
 8006254:	001d      	movs	r5, r3
 8006256:	0026      	movs	r6, r4
 8006258:	22c8      	movs	r2, #200	; 0xc8
 800625a:	0052      	lsls	r2, r2, #1
 800625c:	2140      	movs	r1, #64	; 0x40
 800625e:	1878      	adds	r0, r7, r1
 8006260:	1884      	adds	r4, r0, r2
 8006262:	6822      	ldr	r2, [r4, #0]
 8006264:	6863      	ldr	r3, [r4, #4]
 8006266:	20e0      	movs	r0, #224	; 0xe0
 8006268:	187c      	adds	r4, r7, r1
 800626a:	1824      	adds	r4, r4, r0
 800626c:	6820      	ldr	r0, [r4, #0]
 800626e:	6861      	ldr	r1, [r4, #4]
 8006270:	f7fb fbea 	bl	8001a48 <__aeabi_dmul>
 8006274:	0003      	movs	r3, r0
 8006276:	000c      	movs	r4, r1
 8006278:	0018      	movs	r0, r3
 800627a:	0021      	movs	r1, r4
 800627c:	4bda      	ldr	r3, [pc, #872]	; (80065e8 <MadgwickAHRSupdate+0xdf0>)
 800627e:	685c      	ldr	r4, [r3, #4]
 8006280:	681b      	ldr	r3, [r3, #0]
 8006282:	001a      	movs	r2, r3
 8006284:	0023      	movs	r3, r4
 8006286:	f7fb fbdf 	bl	8001a48 <__aeabi_dmul>
 800628a:	0003      	movs	r3, r0
 800628c:	000c      	movs	r4, r1
 800628e:	001a      	movs	r2, r3
 8006290:	0023      	movs	r3, r4
 8006292:	0028      	movs	r0, r5
 8006294:	0031      	movs	r1, r6
 8006296:	f7fa fcb1 	bl	8000bfc <__aeabi_dadd>
 800629a:	0003      	movs	r3, r0
 800629c:	000c      	movs	r4, r1
 800629e:	001d      	movs	r5, r3
 80062a0:	0026      	movs	r6, r4
 80062a2:	2080      	movs	r0, #128	; 0x80
 80062a4:	2140      	movs	r1, #64	; 0x40
 80062a6:	187a      	adds	r2, r7, r1
 80062a8:	1814      	adds	r4, r2, r0
 80062aa:	6822      	ldr	r2, [r4, #0]
 80062ac:	6863      	ldr	r3, [r4, #4]
 80062ae:	21c0      	movs	r1, #192	; 0xc0
 80062b0:	0049      	lsls	r1, r1, #1
 80062b2:	2040      	movs	r0, #64	; 0x40
 80062b4:	183c      	adds	r4, r7, r0
 80062b6:	1864      	adds	r4, r4, r1
 80062b8:	6820      	ldr	r0, [r4, #0]
 80062ba:	6861      	ldr	r1, [r4, #4]
 80062bc:	f7fb fbc4 	bl	8001a48 <__aeabi_dmul>
 80062c0:	0003      	movs	r3, r0
 80062c2:	000c      	movs	r4, r1
 80062c4:	001a      	movs	r2, r3
 80062c6:	0023      	movs	r3, r4
 80062c8:	0028      	movs	r0, r5
 80062ca:	0031      	movs	r1, r6
 80062cc:	f7fb fe2e 	bl	8001f2c <__aeabi_dsub>
 80062d0:	0003      	movs	r3, r0
 80062d2:	000c      	movs	r4, r1
 80062d4:	001d      	movs	r5, r3
 80062d6:	0026      	movs	r6, r4
 80062d8:	24b0      	movs	r4, #176	; 0xb0
 80062da:	193a      	adds	r2, r7, r4
 80062dc:	6853      	ldr	r3, [r2, #4]
 80062de:	6812      	ldr	r2, [r2, #0]
 80062e0:	21c0      	movs	r1, #192	; 0xc0
 80062e2:	0049      	lsls	r1, r1, #1
 80062e4:	2040      	movs	r0, #64	; 0x40
 80062e6:	1838      	adds	r0, r7, r0
 80062e8:	1844      	adds	r4, r0, r1
 80062ea:	6820      	ldr	r0, [r4, #0]
 80062ec:	6861      	ldr	r1, [r4, #4]
 80062ee:	f7fb fbab 	bl	8001a48 <__aeabi_dmul>
 80062f2:	0003      	movs	r3, r0
 80062f4:	000c      	movs	r4, r1
 80062f6:	001a      	movs	r2, r3
 80062f8:	0023      	movs	r3, r4
 80062fa:	0028      	movs	r0, r5
 80062fc:	0031      	movs	r1, r6
 80062fe:	f7fb fe15 	bl	8001f2c <__aeabi_dsub>
 8006302:	0003      	movs	r3, r0
 8006304:	000c      	movs	r4, r1
 8006306:	25a8      	movs	r5, #168	; 0xa8
 8006308:	197a      	adds	r2, r7, r5
 800630a:	6013      	str	r3, [r2, #0]
 800630c:	6054      	str	r4, [r2, #4]
 800630e:	4bb6      	ldr	r3, [pc, #728]	; (80065e8 <MadgwickAHRSupdate+0xdf0>)
 8006310:	6818      	ldr	r0, [r3, #0]
 8006312:	6859      	ldr	r1, [r3, #4]
 8006314:	2484      	movs	r4, #132	; 0x84
 8006316:	0064      	lsls	r4, r4, #1
 8006318:	2240      	movs	r2, #64	; 0x40
 800631a:	4694      	mov	ip, r2
 800631c:	44bc      	add	ip, r7
 800631e:	4464      	add	r4, ip
 8006320:	6822      	ldr	r2, [r4, #0]
 8006322:	6863      	ldr	r3, [r4, #4]
 8006324:	f7fb fb90 	bl	8001a48 <__aeabi_dmul>
 8006328:	0003      	movs	r3, r0
 800632a:	000c      	movs	r4, r1
 800632c:	001d      	movs	r5, r3
 800632e:	0026      	movs	r6, r4
 8006330:	23b8      	movs	r3, #184	; 0xb8
 8006332:	2040      	movs	r0, #64	; 0x40
 8006334:	183a      	adds	r2, r7, r0
 8006336:	18d4      	adds	r4, r2, r3
 8006338:	6822      	ldr	r2, [r4, #0]
 800633a:	6863      	ldr	r3, [r4, #4]
 800633c:	21c4      	movs	r1, #196	; 0xc4
 800633e:	0049      	lsls	r1, r1, #1
 8006340:	1838      	adds	r0, r7, r0
 8006342:	1844      	adds	r4, r0, r1
 8006344:	6820      	ldr	r0, [r4, #0]
 8006346:	6861      	ldr	r1, [r4, #4]
 8006348:	f7fb fb7e 	bl	8001a48 <__aeabi_dmul>
 800634c:	0003      	movs	r3, r0
 800634e:	000c      	movs	r4, r1
 8006350:	001a      	movs	r2, r3
 8006352:	0023      	movs	r3, r4
 8006354:	0028      	movs	r0, r5
 8006356:	0031      	movs	r1, r6
 8006358:	f7fa fc50 	bl	8000bfc <__aeabi_dadd>
 800635c:	0003      	movs	r3, r0
 800635e:	000c      	movs	r4, r1
 8006360:	001d      	movs	r5, r3
 8006362:	0026      	movs	r6, r4
 8006364:	4ba1      	ldr	r3, [pc, #644]	; (80065ec <MadgwickAHRSupdate+0xdf4>)
 8006366:	6818      	ldr	r0, [r3, #0]
 8006368:	6859      	ldr	r1, [r3, #4]
 800636a:	23f8      	movs	r3, #248	; 0xf8
 800636c:	2240      	movs	r2, #64	; 0x40
 800636e:	18ba      	adds	r2, r7, r2
 8006370:	18d4      	adds	r4, r2, r3
 8006372:	6822      	ldr	r2, [r4, #0]
 8006374:	6863      	ldr	r3, [r4, #4]
 8006376:	f7fb fb67 	bl	8001a48 <__aeabi_dmul>
 800637a:	0003      	movs	r3, r0
 800637c:	000c      	movs	r4, r1
 800637e:	001a      	movs	r2, r3
 8006380:	0023      	movs	r3, r4
 8006382:	0028      	movs	r0, r5
 8006384:	0031      	movs	r1, r6
 8006386:	f7fb fdd1 	bl	8001f2c <__aeabi_dsub>
 800638a:	0003      	movs	r3, r0
 800638c:	000c      	movs	r4, r1
 800638e:	001d      	movs	r5, r3
 8006390:	0026      	movs	r6, r4
 8006392:	4b94      	ldr	r3, [pc, #592]	; (80065e4 <MadgwickAHRSupdate+0xdec>)
 8006394:	6818      	ldr	r0, [r3, #0]
 8006396:	6859      	ldr	r1, [r3, #4]
 8006398:	24f0      	movs	r4, #240	; 0xf0
 800639a:	2240      	movs	r2, #64	; 0x40
 800639c:	4694      	mov	ip, r2
 800639e:	44bc      	add	ip, r7
 80063a0:	4464      	add	r4, ip
 80063a2:	6822      	ldr	r2, [r4, #0]
 80063a4:	6863      	ldr	r3, [r4, #4]
 80063a6:	f7fb fb4f 	bl	8001a48 <__aeabi_dmul>
 80063aa:	0003      	movs	r3, r0
 80063ac:	000c      	movs	r4, r1
 80063ae:	001a      	movs	r2, r3
 80063b0:	0023      	movs	r3, r4
 80063b2:	0028      	movs	r0, r5
 80063b4:	0031      	movs	r1, r6
 80063b6:	f7fa fc21 	bl	8000bfc <__aeabi_dadd>
 80063ba:	0003      	movs	r3, r0
 80063bc:	000c      	movs	r4, r1
 80063be:	001d      	movs	r5, r3
 80063c0:	0026      	movs	r6, r4
 80063c2:	2298      	movs	r2, #152	; 0x98
 80063c4:	2040      	movs	r0, #64	; 0x40
 80063c6:	183b      	adds	r3, r7, r0
 80063c8:	189c      	adds	r4, r3, r2
 80063ca:	6822      	ldr	r2, [r4, #0]
 80063cc:	6863      	ldr	r3, [r4, #4]
 80063ce:	21c4      	movs	r1, #196	; 0xc4
 80063d0:	0049      	lsls	r1, r1, #1
 80063d2:	1838      	adds	r0, r7, r0
 80063d4:	1844      	adds	r4, r0, r1
 80063d6:	6820      	ldr	r0, [r4, #0]
 80063d8:	6861      	ldr	r1, [r4, #4]
 80063da:	f7fb fb35 	bl	8001a48 <__aeabi_dmul>
 80063de:	0003      	movs	r3, r0
 80063e0:	000c      	movs	r4, r1
 80063e2:	001a      	movs	r2, r3
 80063e4:	0023      	movs	r3, r4
 80063e6:	0028      	movs	r0, r5
 80063e8:	0031      	movs	r1, r6
 80063ea:	f7fb fd9f 	bl	8001f2c <__aeabi_dsub>
 80063ee:	0003      	movs	r3, r0
 80063f0:	000c      	movs	r4, r1
 80063f2:	001d      	movs	r5, r3
 80063f4:	0026      	movs	r6, r4
 80063f6:	2080      	movs	r0, #128	; 0x80
 80063f8:	2140      	movs	r1, #64	; 0x40
 80063fa:	187a      	adds	r2, r7, r1
 80063fc:	1814      	adds	r4, r2, r0
 80063fe:	6822      	ldr	r2, [r4, #0]
 8006400:	6863      	ldr	r3, [r4, #4]
 8006402:	21c4      	movs	r1, #196	; 0xc4
 8006404:	0049      	lsls	r1, r1, #1
 8006406:	2040      	movs	r0, #64	; 0x40
 8006408:	1838      	adds	r0, r7, r0
 800640a:	1844      	adds	r4, r0, r1
 800640c:	6820      	ldr	r0, [r4, #0]
 800640e:	6861      	ldr	r1, [r4, #4]
 8006410:	f7fb fb1a 	bl	8001a48 <__aeabi_dmul>
 8006414:	0003      	movs	r3, r0
 8006416:	000c      	movs	r4, r1
 8006418:	001a      	movs	r2, r3
 800641a:	0023      	movs	r3, r4
 800641c:	0028      	movs	r0, r5
 800641e:	0031      	movs	r1, r6
 8006420:	f7fa fbec 	bl	8000bfc <__aeabi_dadd>
 8006424:	0003      	movs	r3, r0
 8006426:	000c      	movs	r4, r1
 8006428:	001d      	movs	r5, r3
 800642a:	0026      	movs	r6, r4
 800642c:	22c8      	movs	r2, #200	; 0xc8
 800642e:	0052      	lsls	r2, r2, #1
 8006430:	2140      	movs	r1, #64	; 0x40
 8006432:	1878      	adds	r0, r7, r1
 8006434:	1884      	adds	r4, r0, r2
 8006436:	6822      	ldr	r2, [r4, #0]
 8006438:	6863      	ldr	r3, [r4, #4]
 800643a:	24d8      	movs	r4, #216	; 0xd8
 800643c:	2040      	movs	r0, #64	; 0x40
 800643e:	4684      	mov	ip, r0
 8006440:	44bc      	add	ip, r7
 8006442:	4464      	add	r4, ip
 8006444:	6820      	ldr	r0, [r4, #0]
 8006446:	6861      	ldr	r1, [r4, #4]
 8006448:	f7fb fafe 	bl	8001a48 <__aeabi_dmul>
 800644c:	0003      	movs	r3, r0
 800644e:	000c      	movs	r4, r1
 8006450:	0018      	movs	r0, r3
 8006452:	0021      	movs	r1, r4
 8006454:	4b64      	ldr	r3, [pc, #400]	; (80065e8 <MadgwickAHRSupdate+0xdf0>)
 8006456:	685c      	ldr	r4, [r3, #4]
 8006458:	681b      	ldr	r3, [r3, #0]
 800645a:	001a      	movs	r2, r3
 800645c:	0023      	movs	r3, r4
 800645e:	f7fb faf3 	bl	8001a48 <__aeabi_dmul>
 8006462:	0003      	movs	r3, r0
 8006464:	000c      	movs	r4, r1
 8006466:	001a      	movs	r2, r3
 8006468:	0023      	movs	r3, r4
 800646a:	0028      	movs	r0, r5
 800646c:	0031      	movs	r1, r6
 800646e:	f7fa fbc5 	bl	8000bfc <__aeabi_dadd>
 8006472:	0003      	movs	r3, r0
 8006474:	000c      	movs	r4, r1
 8006476:	001d      	movs	r5, r3
 8006478:	0026      	movs	r6, r4
 800647a:	24b0      	movs	r4, #176	; 0xb0
 800647c:	193a      	adds	r2, r7, r4
 800647e:	6853      	ldr	r3, [r2, #4]
 8006480:	6812      	ldr	r2, [r2, #0]
 8006482:	21c4      	movs	r1, #196	; 0xc4
 8006484:	0049      	lsls	r1, r1, #1
 8006486:	2040      	movs	r0, #64	; 0x40
 8006488:	1838      	adds	r0, r7, r0
 800648a:	1844      	adds	r4, r0, r1
 800648c:	6820      	ldr	r0, [r4, #0]
 800648e:	6861      	ldr	r1, [r4, #4]
 8006490:	f7fb fada 	bl	8001a48 <__aeabi_dmul>
 8006494:	0003      	movs	r3, r0
 8006496:	000c      	movs	r4, r1
 8006498:	001a      	movs	r2, r3
 800649a:	0023      	movs	r3, r4
 800649c:	0028      	movs	r0, r5
 800649e:	0031      	movs	r1, r6
 80064a0:	f7fb fd44 	bl	8001f2c <__aeabi_dsub>
 80064a4:	0003      	movs	r3, r0
 80064a6:	000c      	movs	r4, r1
 80064a8:	22a0      	movs	r2, #160	; 0xa0
 80064aa:	18be      	adds	r6, r7, r2
 80064ac:	6033      	str	r3, [r6, #0]
 80064ae:	6074      	str	r4, [r6, #4]
 80064b0:	25a8      	movs	r5, #168	; 0xa8
 80064b2:	197e      	adds	r6, r7, r5
 80064b4:	6832      	ldr	r2, [r6, #0]
 80064b6:	6873      	ldr	r3, [r6, #4]
 80064b8:	197d      	adds	r5, r7, r5
 80064ba:	6828      	ldr	r0, [r5, #0]
 80064bc:	6869      	ldr	r1, [r5, #4]
 80064be:	f7fb fac3 	bl	8001a48 <__aeabi_dmul>
 80064c2:	0003      	movs	r3, r0
 80064c4:	000c      	movs	r4, r1
 80064c6:	001d      	movs	r5, r3
 80064c8:	0026      	movs	r6, r4
 80064ca:	22a0      	movs	r2, #160	; 0xa0
 80064cc:	0010      	movs	r0, r2
 80064ce:	18ba      	adds	r2, r7, r2
 80064d0:	6853      	ldr	r3, [r2, #4]
 80064d2:	6812      	ldr	r2, [r2, #0]
 80064d4:	1838      	adds	r0, r7, r0
 80064d6:	6841      	ldr	r1, [r0, #4]
 80064d8:	6800      	ldr	r0, [r0, #0]
 80064da:	f7fb fab5 	bl	8001a48 <__aeabi_dmul>
 80064de:	0003      	movs	r3, r0
 80064e0:	000c      	movs	r4, r1
 80064e2:	001a      	movs	r2, r3
 80064e4:	0023      	movs	r3, r4
 80064e6:	0028      	movs	r0, r5
 80064e8:	0031      	movs	r1, r6
 80064ea:	f7fa fb87 	bl	8000bfc <__aeabi_dadd>
 80064ee:	0003      	movs	r3, r0
 80064f0:	000c      	movs	r4, r1
 80064f2:	0018      	movs	r0, r3
 80064f4:	0021      	movs	r1, r4
 80064f6:	f002 fff5 	bl	80094e4 <sqrt>
 80064fa:	0003      	movs	r3, r0
 80064fc:	000c      	movs	r4, r1
 80064fe:	2298      	movs	r2, #152	; 0x98
 8006500:	18bd      	adds	r5, r7, r2
 8006502:	602b      	str	r3, [r5, #0]
 8006504:	606c      	str	r4, [r5, #4]
 8006506:	2484      	movs	r4, #132	; 0x84
 8006508:	0064      	lsls	r4, r4, #1
 800650a:	2540      	movs	r5, #64	; 0x40
 800650c:	46ac      	mov	ip, r5
 800650e:	44bc      	add	ip, r7
 8006510:	4464      	add	r4, ip
 8006512:	6823      	ldr	r3, [r4, #0]
 8006514:	63bb      	str	r3, [r7, #56]	; 0x38
 8006516:	2486      	movs	r4, #134	; 0x86
 8006518:	0064      	lsls	r4, r4, #1
 800651a:	2540      	movs	r5, #64	; 0x40
 800651c:	46ac      	mov	ip, r5
 800651e:	44bc      	add	ip, r7
 8006520:	4464      	add	r4, ip
 8006522:	6822      	ldr	r2, [r4, #0]
 8006524:	2380      	movs	r3, #128	; 0x80
 8006526:	061b      	lsls	r3, r3, #24
 8006528:	001c      	movs	r4, r3
 800652a:	4054      	eors	r4, r2
 800652c:	63fc      	str	r4, [r7, #60]	; 0x3c
 800652e:	4b2d      	ldr	r3, [pc, #180]	; (80065e4 <MadgwickAHRSupdate+0xdec>)
 8006530:	685c      	ldr	r4, [r3, #4]
 8006532:	681b      	ldr	r3, [r3, #0]
 8006534:	001a      	movs	r2, r3
 8006536:	0023      	movs	r3, r4
 8006538:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 800653a:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 800653c:	f7fb fa84 	bl	8001a48 <__aeabi_dmul>
 8006540:	0003      	movs	r3, r0
 8006542:	000c      	movs	r4, r1
 8006544:	001d      	movs	r5, r3
 8006546:	0026      	movs	r6, r4
 8006548:	4b28      	ldr	r3, [pc, #160]	; (80065ec <MadgwickAHRSupdate+0xdf4>)
 800654a:	6818      	ldr	r0, [r3, #0]
 800654c:	6859      	ldr	r1, [r3, #4]
 800654e:	23a0      	movs	r3, #160	; 0xa0
 8006550:	005b      	lsls	r3, r3, #1
 8006552:	18fc      	adds	r4, r7, r3
 8006554:	6822      	ldr	r2, [r4, #0]
 8006556:	6863      	ldr	r3, [r4, #4]
 8006558:	f7fb fa76 	bl	8001a48 <__aeabi_dmul>
 800655c:	0003      	movs	r3, r0
 800655e:	000c      	movs	r4, r1
 8006560:	001a      	movs	r2, r3
 8006562:	0023      	movs	r3, r4
 8006564:	0028      	movs	r0, r5
 8006566:	0031      	movs	r1, r6
 8006568:	f7fa fb48 	bl	8000bfc <__aeabi_dadd>
 800656c:	0003      	movs	r3, r0
 800656e:	000c      	movs	r4, r1
 8006570:	001d      	movs	r5, r3
 8006572:	0026      	movs	r6, r4
 8006574:	23b8      	movs	r3, #184	; 0xb8
 8006576:	2240      	movs	r2, #64	; 0x40
 8006578:	4694      	mov	ip, r2
 800657a:	44bc      	add	ip, r7
 800657c:	4463      	add	r3, ip
 800657e:	681a      	ldr	r2, [r3, #0]
 8006580:	685b      	ldr	r3, [r3, #4]
 8006582:	20c8      	movs	r0, #200	; 0xc8
 8006584:	0040      	lsls	r0, r0, #1
 8006586:	2140      	movs	r1, #64	; 0x40
 8006588:	187c      	adds	r4, r7, r1
 800658a:	1824      	adds	r4, r4, r0
 800658c:	6820      	ldr	r0, [r4, #0]
 800658e:	6861      	ldr	r1, [r4, #4]
 8006590:	f7fb fa5a 	bl	8001a48 <__aeabi_dmul>
 8006594:	0003      	movs	r3, r0
 8006596:	000c      	movs	r4, r1
 8006598:	001a      	movs	r2, r3
 800659a:	0023      	movs	r3, r4
 800659c:	0028      	movs	r0, r5
 800659e:	0031      	movs	r1, r6
 80065a0:	f7fa fb2c 	bl	8000bfc <__aeabi_dadd>
 80065a4:	0003      	movs	r3, r0
 80065a6:	000c      	movs	r4, r1
 80065a8:	001d      	movs	r5, r3
 80065aa:	0026      	movs	r6, r4
 80065ac:	4b0e      	ldr	r3, [pc, #56]	; (80065e8 <MadgwickAHRSupdate+0xdf0>)
 80065ae:	6818      	ldr	r0, [r3, #0]
 80065b0:	6859      	ldr	r1, [r3, #4]
 80065b2:	23f0      	movs	r3, #240	; 0xf0
 80065b4:	2240      	movs	r2, #64	; 0x40
 80065b6:	4694      	mov	ip, r2
 80065b8:	44bc      	add	ip, r7
 80065ba:	4463      	add	r3, ip
 80065bc:	681a      	ldr	r2, [r3, #0]
 80065be:	685b      	ldr	r3, [r3, #4]
 80065c0:	f7fb fa42 	bl	8001a48 <__aeabi_dmul>
 80065c4:	0003      	movs	r3, r0
 80065c6:	000c      	movs	r4, r1
 80065c8:	001a      	movs	r2, r3
 80065ca:	0023      	movs	r3, r4
 80065cc:	0028      	movs	r0, r5
 80065ce:	0031      	movs	r1, r6
 80065d0:	f7fa fb14 	bl	8000bfc <__aeabi_dadd>
 80065d4:	0003      	movs	r3, r0
 80065d6:	000c      	movs	r4, r1
 80065d8:	001d      	movs	r5, r3
 80065da:	0026      	movs	r6, r4
 80065dc:	2298      	movs	r2, #152	; 0x98
 80065de:	2140      	movs	r1, #64	; 0x40
 80065e0:	e006      	b.n	80065f0 <MadgwickAHRSupdate+0xdf8>
 80065e2:	46c0      	nop			; (mov r8, r8)
 80065e4:	200002d8 	.word	0x200002d8
 80065e8:	200002e0 	.word	0x200002e0
 80065ec:	200002d0 	.word	0x200002d0
 80065f0:	1878      	adds	r0, r7, r1
 80065f2:	1883      	adds	r3, r0, r2
 80065f4:	681a      	ldr	r2, [r3, #0]
 80065f6:	685b      	ldr	r3, [r3, #4]
 80065f8:	20c8      	movs	r0, #200	; 0xc8
 80065fa:	0040      	lsls	r0, r0, #1
 80065fc:	187c      	adds	r4, r7, r1
 80065fe:	1824      	adds	r4, r4, r0
 8006600:	6820      	ldr	r0, [r4, #0]
 8006602:	6861      	ldr	r1, [r4, #4]
 8006604:	f7fb fa20 	bl	8001a48 <__aeabi_dmul>
 8006608:	0003      	movs	r3, r0
 800660a:	000c      	movs	r4, r1
 800660c:	001a      	movs	r2, r3
 800660e:	0023      	movs	r3, r4
 8006610:	0028      	movs	r0, r5
 8006612:	0031      	movs	r1, r6
 8006614:	f7fb fc8a 	bl	8001f2c <__aeabi_dsub>
 8006618:	0003      	movs	r3, r0
 800661a:	000c      	movs	r4, r1
 800661c:	001d      	movs	r5, r3
 800661e:	0026      	movs	r6, r4
 8006620:	21c4      	movs	r1, #196	; 0xc4
 8006622:	0049      	lsls	r1, r1, #1
 8006624:	2340      	movs	r3, #64	; 0x40
 8006626:	18f8      	adds	r0, r7, r3
 8006628:	1843      	adds	r3, r0, r1
 800662a:	681a      	ldr	r2, [r3, #0]
 800662c:	685b      	ldr	r3, [r3, #4]
 800662e:	24d8      	movs	r4, #216	; 0xd8
 8006630:	2040      	movs	r0, #64	; 0x40
 8006632:	4684      	mov	ip, r0
 8006634:	44bc      	add	ip, r7
 8006636:	4464      	add	r4, ip
 8006638:	6820      	ldr	r0, [r4, #0]
 800663a:	6861      	ldr	r1, [r4, #4]
 800663c:	f7fb fa04 	bl	8001a48 <__aeabi_dmul>
 8006640:	0003      	movs	r3, r0
 8006642:	000c      	movs	r4, r1
 8006644:	0018      	movs	r0, r3
 8006646:	0021      	movs	r1, r4
 8006648:	4beb      	ldr	r3, [pc, #940]	; (80069f8 <MadgwickAHRSupdate+0x1200>)
 800664a:	685c      	ldr	r4, [r3, #4]
 800664c:	681b      	ldr	r3, [r3, #0]
 800664e:	001a      	movs	r2, r3
 8006650:	0023      	movs	r3, r4
 8006652:	f7fb f9f9 	bl	8001a48 <__aeabi_dmul>
 8006656:	0003      	movs	r3, r0
 8006658:	000c      	movs	r4, r1
 800665a:	001a      	movs	r2, r3
 800665c:	0023      	movs	r3, r4
 800665e:	0028      	movs	r0, r5
 8006660:	0031      	movs	r1, r6
 8006662:	f7fa facb 	bl	8000bfc <__aeabi_dadd>
 8006666:	0003      	movs	r3, r0
 8006668:	000c      	movs	r4, r1
 800666a:	001d      	movs	r5, r3
 800666c:	0026      	movs	r6, r4
 800666e:	2380      	movs	r3, #128	; 0x80
 8006670:	2040      	movs	r0, #64	; 0x40
 8006672:	4684      	mov	ip, r0
 8006674:	44bc      	add	ip, r7
 8006676:	4463      	add	r3, ip
 8006678:	681a      	ldr	r2, [r3, #0]
 800667a:	685b      	ldr	r3, [r3, #4]
 800667c:	20c8      	movs	r0, #200	; 0xc8
 800667e:	0040      	lsls	r0, r0, #1
 8006680:	2140      	movs	r1, #64	; 0x40
 8006682:	187c      	adds	r4, r7, r1
 8006684:	1824      	adds	r4, r4, r0
 8006686:	6820      	ldr	r0, [r4, #0]
 8006688:	6861      	ldr	r1, [r4, #4]
 800668a:	f7fb f9dd 	bl	8001a48 <__aeabi_dmul>
 800668e:	0003      	movs	r3, r0
 8006690:	000c      	movs	r4, r1
 8006692:	001a      	movs	r2, r3
 8006694:	0023      	movs	r3, r4
 8006696:	0028      	movs	r0, r5
 8006698:	0031      	movs	r1, r6
 800669a:	f7fb fc47 	bl	8001f2c <__aeabi_dsub>
 800669e:	0003      	movs	r3, r0
 80066a0:	000c      	movs	r4, r1
 80066a2:	001d      	movs	r5, r3
 80066a4:	0026      	movs	r6, r4
 80066a6:	24b0      	movs	r4, #176	; 0xb0
 80066a8:	1938      	adds	r0, r7, r4
 80066aa:	6802      	ldr	r2, [r0, #0]
 80066ac:	6843      	ldr	r3, [r0, #4]
 80066ae:	20c8      	movs	r0, #200	; 0xc8
 80066b0:	0040      	lsls	r0, r0, #1
 80066b2:	2140      	movs	r1, #64	; 0x40
 80066b4:	187c      	adds	r4, r7, r1
 80066b6:	1824      	adds	r4, r4, r0
 80066b8:	6820      	ldr	r0, [r4, #0]
 80066ba:	6861      	ldr	r1, [r4, #4]
 80066bc:	f7fb f9c4 	bl	8001a48 <__aeabi_dmul>
 80066c0:	0003      	movs	r3, r0
 80066c2:	000c      	movs	r4, r1
 80066c4:	001a      	movs	r2, r3
 80066c6:	0023      	movs	r3, r4
 80066c8:	0028      	movs	r0, r5
 80066ca:	0031      	movs	r1, r6
 80066cc:	f7fa fa96 	bl	8000bfc <__aeabi_dadd>
 80066d0:	0003      	movs	r3, r0
 80066d2:	000c      	movs	r4, r1
 80066d4:	2590      	movs	r5, #144	; 0x90
 80066d6:	1978      	adds	r0, r7, r5
 80066d8:	6003      	str	r3, [r0, #0]
 80066da:	6044      	str	r4, [r0, #4]
 80066dc:	2398      	movs	r3, #152	; 0x98
 80066de:	18fb      	adds	r3, r7, r3
 80066e0:	6818      	ldr	r0, [r3, #0]
 80066e2:	6859      	ldr	r1, [r3, #4]
 80066e4:	0002      	movs	r2, r0
 80066e6:	000b      	movs	r3, r1
 80066e8:	f7fa fa88 	bl	8000bfc <__aeabi_dadd>
 80066ec:	0003      	movs	r3, r0
 80066ee:	000c      	movs	r4, r1
 80066f0:	2688      	movs	r6, #136	; 0x88
 80066f2:	19ba      	adds	r2, r7, r6
 80066f4:	6013      	str	r3, [r2, #0]
 80066f6:	6054      	str	r4, [r2, #4]
 80066f8:	197b      	adds	r3, r7, r5
 80066fa:	6818      	ldr	r0, [r3, #0]
 80066fc:	6859      	ldr	r1, [r3, #4]
 80066fe:	0002      	movs	r2, r0
 8006700:	000b      	movs	r3, r1
 8006702:	f7fa fa7b 	bl	8000bfc <__aeabi_dadd>
 8006706:	0003      	movs	r3, r0
 8006708:	000c      	movs	r4, r1
 800670a:	2580      	movs	r5, #128	; 0x80
 800670c:	197a      	adds	r2, r7, r5
 800670e:	6013      	str	r3, [r2, #0]
 8006710:	6054      	str	r4, [r2, #4]
 8006712:	0033      	movs	r3, r6
 8006714:	18fa      	adds	r2, r7, r3
 8006716:	6810      	ldr	r0, [r2, #0]
 8006718:	6851      	ldr	r1, [r2, #4]
 800671a:	0002      	movs	r2, r0
 800671c:	000b      	movs	r3, r1
 800671e:	f7fa fa6d 	bl	8000bfc <__aeabi_dadd>
 8006722:	0003      	movs	r3, r0
 8006724:	000c      	movs	r4, r1
 8006726:	67bb      	str	r3, [r7, #120]	; 0x78
 8006728:	67fc      	str	r4, [r7, #124]	; 0x7c
 800672a:	002a      	movs	r2, r5
 800672c:	18b8      	adds	r0, r7, r2
 800672e:	6841      	ldr	r1, [r0, #4]
 8006730:	6800      	ldr	r0, [r0, #0]
 8006732:	0002      	movs	r2, r0
 8006734:	000b      	movs	r3, r1
 8006736:	f7fa fa61 	bl	8000bfc <__aeabi_dadd>
 800673a:	0003      	movs	r3, r0
 800673c:	000c      	movs	r4, r1
 800673e:	673b      	str	r3, [r7, #112]	; 0x70
 8006740:	677c      	str	r4, [r7, #116]	; 0x74
 8006742:	24d8      	movs	r4, #216	; 0xd8
 8006744:	2140      	movs	r1, #64	; 0x40
 8006746:	1878      	adds	r0, r7, r1
 8006748:	1903      	adds	r3, r0, r4
 800674a:	681b      	ldr	r3, [r3, #0]
 800674c:	633b      	str	r3, [r7, #48]	; 0x30
 800674e:	23dc      	movs	r3, #220	; 0xdc
 8006750:	2040      	movs	r0, #64	; 0x40
 8006752:	4684      	mov	ip, r0
 8006754:	44bc      	add	ip, r7
 8006756:	4463      	add	r3, ip
 8006758:	681a      	ldr	r2, [r3, #0]
 800675a:	2380      	movs	r3, #128	; 0x80
 800675c:	061b      	lsls	r3, r3, #24
 800675e:	4053      	eors	r3, r2
 8006760:	637b      	str	r3, [r7, #52]	; 0x34
 8006762:	23a8      	movs	r3, #168	; 0xa8
 8006764:	2040      	movs	r0, #64	; 0x40
 8006766:	4684      	mov	ip, r0
 8006768:	44bc      	add	ip, r7
 800676a:	4463      	add	r3, ip
 800676c:	681a      	ldr	r2, [r3, #0]
 800676e:	685b      	ldr	r3, [r3, #4]
 8006770:	2488      	movs	r4, #136	; 0x88
 8006772:	000d      	movs	r5, r1
 8006774:	1878      	adds	r0, r7, r1
 8006776:	1906      	adds	r6, r0, r4
 8006778:	6830      	ldr	r0, [r6, #0]
 800677a:	6871      	ldr	r1, [r6, #4]
 800677c:	f7fb fbd6 	bl	8001f2c <__aeabi_dsub>
 8006780:	0003      	movs	r3, r0
 8006782:	000c      	movs	r4, r1
 8006784:	0018      	movs	r0, r3
 8006786:	0021      	movs	r1, r4
 8006788:	0002      	movs	r2, r0
 800678a:	000b      	movs	r3, r1
 800678c:	f7fa fa36 	bl	8000bfc <__aeabi_dadd>
 8006790:	0003      	movs	r3, r0
 8006792:	000c      	movs	r4, r1
 8006794:	0018      	movs	r0, r3
 8006796:	0021      	movs	r1, r4
 8006798:	26b4      	movs	r6, #180	; 0xb4
 800679a:	0076      	lsls	r6, r6, #1
 800679c:	197d      	adds	r5, r7, r5
 800679e:	19ab      	adds	r3, r5, r6
 80067a0:	681a      	ldr	r2, [r3, #0]
 80067a2:	685b      	ldr	r3, [r3, #4]
 80067a4:	f7fb fbc2 	bl	8001f2c <__aeabi_dsub>
 80067a8:	0003      	movs	r3, r0
 80067aa:	000c      	movs	r4, r1
 80067ac:	001a      	movs	r2, r3
 80067ae:	0023      	movs	r3, r4
 80067b0:	6b38      	ldr	r0, [r7, #48]	; 0x30
 80067b2:	6b79      	ldr	r1, [r7, #52]	; 0x34
 80067b4:	f7fb f948 	bl	8001a48 <__aeabi_dmul>
 80067b8:	0003      	movs	r3, r0
 80067ba:	000c      	movs	r4, r1
 80067bc:	001d      	movs	r5, r3
 80067be:	0026      	movs	r6, r4
 80067c0:	21b8      	movs	r1, #184	; 0xb8
 80067c2:	1878      	adds	r0, r7, r1
 80067c4:	6802      	ldr	r2, [r0, #0]
 80067c6:	6843      	ldr	r3, [r0, #4]
 80067c8:	24b0      	movs	r4, #176	; 0xb0
 80067ca:	2040      	movs	r0, #64	; 0x40
 80067cc:	4684      	mov	ip, r0
 80067ce:	44bc      	add	ip, r7
 80067d0:	4464      	add	r4, ip
 80067d2:	6820      	ldr	r0, [r4, #0]
 80067d4:	6861      	ldr	r1, [r4, #4]
 80067d6:	f7fa fa11 	bl	8000bfc <__aeabi_dadd>
 80067da:	0003      	movs	r3, r0
 80067dc:	000c      	movs	r4, r1
 80067de:	0018      	movs	r0, r3
 80067e0:	0021      	movs	r1, r4
 80067e2:	0002      	movs	r2, r0
 80067e4:	000b      	movs	r3, r1
 80067e6:	f7fa fa09 	bl	8000bfc <__aeabi_dadd>
 80067ea:	0003      	movs	r3, r0
 80067ec:	000c      	movs	r4, r1
 80067ee:	0018      	movs	r0, r3
 80067f0:	0021      	movs	r1, r4
 80067f2:	23b8      	movs	r3, #184	; 0xb8
 80067f4:	005b      	lsls	r3, r3, #1
 80067f6:	2240      	movs	r2, #64	; 0x40
 80067f8:	4694      	mov	ip, r2
 80067fa:	44bc      	add	ip, r7
 80067fc:	4463      	add	r3, ip
 80067fe:	681a      	ldr	r2, [r3, #0]
 8006800:	685b      	ldr	r3, [r3, #4]
 8006802:	f7fb fb93 	bl	8001f2c <__aeabi_dsub>
 8006806:	0003      	movs	r3, r0
 8006808:	000c      	movs	r4, r1
 800680a:	0018      	movs	r0, r3
 800680c:	0021      	movs	r1, r4
 800680e:	23e0      	movs	r3, #224	; 0xe0
 8006810:	2240      	movs	r2, #64	; 0x40
 8006812:	4694      	mov	ip, r2
 8006814:	44bc      	add	ip, r7
 8006816:	4463      	add	r3, ip
 8006818:	681a      	ldr	r2, [r3, #0]
 800681a:	685b      	ldr	r3, [r3, #4]
 800681c:	f7fb f914 	bl	8001a48 <__aeabi_dmul>
 8006820:	0003      	movs	r3, r0
 8006822:	000c      	movs	r4, r1
 8006824:	001a      	movs	r2, r3
 8006826:	0023      	movs	r3, r4
 8006828:	0028      	movs	r0, r5
 800682a:	0031      	movs	r1, r6
 800682c:	f7fa f9e6 	bl	8000bfc <__aeabi_dadd>
 8006830:	0003      	movs	r3, r0
 8006832:	000c      	movs	r4, r1
 8006834:	63bb      	str	r3, [r7, #56]	; 0x38
 8006836:	63fc      	str	r4, [r7, #60]	; 0x3c
 8006838:	2280      	movs	r2, #128	; 0x80
 800683a:	18b8      	adds	r0, r7, r2
 800683c:	6803      	ldr	r3, [r0, #0]
 800683e:	62bb      	str	r3, [r7, #40]	; 0x28
 8006840:	2084      	movs	r0, #132	; 0x84
 8006842:	1838      	adds	r0, r7, r0
 8006844:	6802      	ldr	r2, [r0, #0]
 8006846:	2380      	movs	r3, #128	; 0x80
 8006848:	061b      	lsls	r3, r3, #24
 800684a:	4053      	eors	r3, r2
 800684c:	62fb      	str	r3, [r7, #44]	; 0x2c
 800684e:	4b6b      	ldr	r3, [pc, #428]	; (80069fc <MadgwickAHRSupdate+0x1204>)
 8006850:	685c      	ldr	r4, [r3, #4]
 8006852:	681b      	ldr	r3, [r3, #0]
 8006854:	001a      	movs	r2, r3
 8006856:	0023      	movs	r3, r4
 8006858:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 800685a:	6af9      	ldr	r1, [r7, #44]	; 0x2c
 800685c:	f7fb f8f4 	bl	8001a48 <__aeabi_dmul>
 8006860:	0003      	movs	r3, r0
 8006862:	000c      	movs	r4, r1
 8006864:	633b      	str	r3, [r7, #48]	; 0x30
 8006866:	637c      	str	r4, [r7, #52]	; 0x34
 8006868:	2680      	movs	r6, #128	; 0x80
 800686a:	2040      	movs	r0, #64	; 0x40
 800686c:	4684      	mov	ip, r0
 800686e:	44bc      	add	ip, r7
 8006870:	4466      	add	r6, ip
 8006872:	6832      	ldr	r2, [r6, #0]
 8006874:	6873      	ldr	r3, [r6, #4]
 8006876:	2000      	movs	r0, #0
 8006878:	4961      	ldr	r1, [pc, #388]	; (8006a00 <MadgwickAHRSupdate+0x1208>)
 800687a:	f7fb fb57 	bl	8001f2c <__aeabi_dsub>
 800687e:	0003      	movs	r3, r0
 8006880:	000c      	movs	r4, r1
 8006882:	0018      	movs	r0, r3
 8006884:	0021      	movs	r1, r4
 8006886:	24b0      	movs	r4, #176	; 0xb0
 8006888:	193e      	adds	r6, r7, r4
 800688a:	6832      	ldr	r2, [r6, #0]
 800688c:	6873      	ldr	r3, [r6, #4]
 800688e:	f7fb fb4d 	bl	8001f2c <__aeabi_dsub>
 8006892:	0003      	movs	r3, r0
 8006894:	000c      	movs	r4, r1
 8006896:	0018      	movs	r0, r3
 8006898:	0021      	movs	r1, r4
 800689a:	2388      	movs	r3, #136	; 0x88
 800689c:	18fe      	adds	r6, r7, r3
 800689e:	6832      	ldr	r2, [r6, #0]
 80068a0:	6873      	ldr	r3, [r6, #4]
 80068a2:	f7fb f8d1 	bl	8001a48 <__aeabi_dmul>
 80068a6:	0003      	movs	r3, r0
 80068a8:	000c      	movs	r4, r1
 80068aa:	001d      	movs	r5, r3
 80068ac:	0026      	movs	r6, r4
 80068ae:	22a8      	movs	r2, #168	; 0xa8
 80068b0:	2140      	movs	r1, #64	; 0x40
 80068b2:	1878      	adds	r0, r7, r1
 80068b4:	1883      	adds	r3, r0, r2
 80068b6:	681a      	ldr	r2, [r3, #0]
 80068b8:	685b      	ldr	r3, [r3, #4]
 80068ba:	2488      	movs	r4, #136	; 0x88
 80068bc:	1878      	adds	r0, r7, r1
 80068be:	1901      	adds	r1, r0, r4
 80068c0:	6808      	ldr	r0, [r1, #0]
 80068c2:	6849      	ldr	r1, [r1, #4]
 80068c4:	f7fb fb32 	bl	8001f2c <__aeabi_dsub>
 80068c8:	0003      	movs	r3, r0
 80068ca:	000c      	movs	r4, r1
 80068cc:	0018      	movs	r0, r3
 80068ce:	0021      	movs	r1, r4
 80068d0:	2280      	movs	r2, #128	; 0x80
 80068d2:	18bb      	adds	r3, r7, r2
 80068d4:	681a      	ldr	r2, [r3, #0]
 80068d6:	685b      	ldr	r3, [r3, #4]
 80068d8:	f7fb f8b6 	bl	8001a48 <__aeabi_dmul>
 80068dc:	0003      	movs	r3, r0
 80068de:	000c      	movs	r4, r1
 80068e0:	001a      	movs	r2, r3
 80068e2:	0023      	movs	r3, r4
 80068e4:	0028      	movs	r0, r5
 80068e6:	0031      	movs	r1, r6
 80068e8:	f7fa f988 	bl	8000bfc <__aeabi_dadd>
 80068ec:	0003      	movs	r3, r0
 80068ee:	000c      	movs	r4, r1
 80068f0:	0018      	movs	r0, r3
 80068f2:	0021      	movs	r1, r4
 80068f4:	25c0      	movs	r5, #192	; 0xc0
 80068f6:	006d      	lsls	r5, r5, #1
 80068f8:	2340      	movs	r3, #64	; 0x40
 80068fa:	18fe      	adds	r6, r7, r3
 80068fc:	1976      	adds	r6, r6, r5
 80068fe:	6832      	ldr	r2, [r6, #0]
 8006900:	6873      	ldr	r3, [r6, #4]
 8006902:	f7fb fb13 	bl	8001f2c <__aeabi_dsub>
 8006906:	0003      	movs	r3, r0
 8006908:	000c      	movs	r4, r1
 800690a:	001a      	movs	r2, r3
 800690c:	0023      	movs	r3, r4
 800690e:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8006910:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8006912:	f7fb f899 	bl	8001a48 <__aeabi_dmul>
 8006916:	0003      	movs	r3, r0
 8006918:	000c      	movs	r4, r1
 800691a:	001a      	movs	r2, r3
 800691c:	0023      	movs	r3, r4
 800691e:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 8006920:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8006922:	f7fa f96b 	bl	8000bfc <__aeabi_dadd>
 8006926:	0003      	movs	r3, r0
 8006928:	000c      	movs	r4, r1
 800692a:	63bb      	str	r3, [r7, #56]	; 0x38
 800692c:	63fc      	str	r4, [r7, #60]	; 0x3c
 800692e:	2388      	movs	r3, #136	; 0x88
 8006930:	18f8      	adds	r0, r7, r3
 8006932:	6803      	ldr	r3, [r0, #0]
 8006934:	623b      	str	r3, [r7, #32]
 8006936:	208c      	movs	r0, #140	; 0x8c
 8006938:	1838      	adds	r0, r7, r0
 800693a:	6802      	ldr	r2, [r0, #0]
 800693c:	2380      	movs	r3, #128	; 0x80
 800693e:	061b      	lsls	r3, r3, #24
 8006940:	4053      	eors	r3, r2
 8006942:	627b      	str	r3, [r7, #36]	; 0x24
 8006944:	4b2c      	ldr	r3, [pc, #176]	; (80069f8 <MadgwickAHRSupdate+0x1200>)
 8006946:	685c      	ldr	r4, [r3, #4]
 8006948:	681b      	ldr	r3, [r3, #0]
 800694a:	001a      	movs	r2, r3
 800694c:	0023      	movs	r3, r4
 800694e:	6a38      	ldr	r0, [r7, #32]
 8006950:	6a79      	ldr	r1, [r7, #36]	; 0x24
 8006952:	f7fb f879 	bl	8001a48 <__aeabi_dmul>
 8006956:	0003      	movs	r3, r0
 8006958:	000c      	movs	r4, r1
 800695a:	001d      	movs	r5, r3
 800695c:	0026      	movs	r6, r4
 800695e:	4b29      	ldr	r3, [pc, #164]	; (8006a04 <MadgwickAHRSupdate+0x120c>)
 8006960:	6818      	ldr	r0, [r3, #0]
 8006962:	6859      	ldr	r1, [r3, #4]
 8006964:	2280      	movs	r2, #128	; 0x80
 8006966:	18bb      	adds	r3, r7, r2
 8006968:	681a      	ldr	r2, [r3, #0]
 800696a:	685b      	ldr	r3, [r3, #4]
 800696c:	f7fb f86c 	bl	8001a48 <__aeabi_dmul>
 8006970:	0003      	movs	r3, r0
 8006972:	000c      	movs	r4, r1
 8006974:	001a      	movs	r2, r3
 8006976:	0023      	movs	r3, r4
 8006978:	0028      	movs	r0, r5
 800697a:	0031      	movs	r1, r6
 800697c:	f7fa f93e 	bl	8000bfc <__aeabi_dadd>
 8006980:	0003      	movs	r3, r0
 8006982:	000c      	movs	r4, r1
 8006984:	633b      	str	r3, [r7, #48]	; 0x30
 8006986:	637c      	str	r4, [r7, #52]	; 0x34
 8006988:	26a0      	movs	r6, #160	; 0xa0
 800698a:	2040      	movs	r0, #64	; 0x40
 800698c:	4684      	mov	ip, r0
 800698e:	44bc      	add	ip, r7
 8006990:	4466      	add	r6, ip
 8006992:	6832      	ldr	r2, [r6, #0]
 8006994:	6873      	ldr	r3, [r6, #4]
 8006996:	2690      	movs	r6, #144	; 0x90
 8006998:	2040      	movs	r0, #64	; 0x40
 800699a:	4684      	mov	ip, r0
 800699c:	44bc      	add	ip, r7
 800699e:	4466      	add	r6, ip
 80069a0:	6830      	ldr	r0, [r6, #0]
 80069a2:	6871      	ldr	r1, [r6, #4]
 80069a4:	f7fb fac2 	bl	8001f2c <__aeabi_dsub>
 80069a8:	0003      	movs	r3, r0
 80069aa:	000c      	movs	r4, r1
 80069ac:	0018      	movs	r0, r3
 80069ae:	0021      	movs	r1, r4
 80069b0:	2388      	movs	r3, #136	; 0x88
 80069b2:	18fe      	adds	r6, r7, r3
 80069b4:	6832      	ldr	r2, [r6, #0]
 80069b6:	6873      	ldr	r3, [r6, #4]
 80069b8:	f7fb f846 	bl	8001a48 <__aeabi_dmul>
 80069bc:	0003      	movs	r3, r0
 80069be:	000c      	movs	r4, r1
 80069c0:	001d      	movs	r5, r3
 80069c2:	0026      	movs	r6, r4
 80069c4:	21b8      	movs	r1, #184	; 0xb8
 80069c6:	1878      	adds	r0, r7, r1
 80069c8:	6802      	ldr	r2, [r0, #0]
 80069ca:	6843      	ldr	r3, [r0, #4]
 80069cc:	24b0      	movs	r4, #176	; 0xb0
 80069ce:	2140      	movs	r1, #64	; 0x40
 80069d0:	1878      	adds	r0, r7, r1
 80069d2:	1901      	adds	r1, r0, r4
 80069d4:	6808      	ldr	r0, [r1, #0]
 80069d6:	6849      	ldr	r1, [r1, #4]
 80069d8:	f7fa f910 	bl	8000bfc <__aeabi_dadd>
 80069dc:	0003      	movs	r3, r0
 80069de:	000c      	movs	r4, r1
 80069e0:	0018      	movs	r0, r3
 80069e2:	0021      	movs	r1, r4
 80069e4:	2280      	movs	r2, #128	; 0x80
 80069e6:	18bb      	adds	r3, r7, r2
 80069e8:	681a      	ldr	r2, [r3, #0]
 80069ea:	685b      	ldr	r3, [r3, #4]
 80069ec:	f7fb f82c 	bl	8001a48 <__aeabi_dmul>
 80069f0:	0003      	movs	r3, r0
 80069f2:	000c      	movs	r4, r1
 80069f4:	e008      	b.n	8006a08 <MadgwickAHRSupdate+0x1210>
 80069f6:	46c0      	nop			; (mov r8, r8)
 80069f8:	200002e0 	.word	0x200002e0
 80069fc:	200002d8 	.word	0x200002d8
 8006a00:	3fe00000 	.word	0x3fe00000
 8006a04:	200002d0 	.word	0x200002d0
 8006a08:	001a      	movs	r2, r3
 8006a0a:	0023      	movs	r3, r4
 8006a0c:	0028      	movs	r0, r5
 8006a0e:	0031      	movs	r1, r6
 8006a10:	f7fa f8f4 	bl	8000bfc <__aeabi_dadd>
 8006a14:	0003      	movs	r3, r0
 8006a16:	000c      	movs	r4, r1
 8006a18:	0018      	movs	r0, r3
 8006a1a:	0021      	movs	r1, r4
 8006a1c:	22c4      	movs	r2, #196	; 0xc4
 8006a1e:	0052      	lsls	r2, r2, #1
 8006a20:	2540      	movs	r5, #64	; 0x40
 8006a22:	197e      	adds	r6, r7, r5
 8006a24:	18b6      	adds	r6, r6, r2
 8006a26:	6832      	ldr	r2, [r6, #0]
 8006a28:	6873      	ldr	r3, [r6, #4]
 8006a2a:	f7fb fa7f 	bl	8001f2c <__aeabi_dsub>
 8006a2e:	0003      	movs	r3, r0
 8006a30:	000c      	movs	r4, r1
 8006a32:	001a      	movs	r2, r3
 8006a34:	0023      	movs	r3, r4
 8006a36:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8006a38:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8006a3a:	f7fb f805 	bl	8001a48 <__aeabi_dmul>
 8006a3e:	0003      	movs	r3, r0
 8006a40:	000c      	movs	r4, r1
 8006a42:	001a      	movs	r2, r3
 8006a44:	0023      	movs	r3, r4
 8006a46:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 8006a48:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8006a4a:	f7fa f8d7 	bl	8000bfc <__aeabi_dadd>
 8006a4e:	0003      	movs	r3, r0
 8006a50:	000c      	movs	r4, r1
 8006a52:	63bb      	str	r3, [r7, #56]	; 0x38
 8006a54:	63fc      	str	r4, [r7, #60]	; 0x3c
 8006a56:	4be9      	ldr	r3, [pc, #932]	; (8006dfc <MadgwickAHRSupdate+0x1604>)
 8006a58:	6818      	ldr	r0, [r3, #0]
 8006a5a:	6859      	ldr	r1, [r3, #4]
 8006a5c:	2388      	movs	r3, #136	; 0x88
 8006a5e:	18fe      	adds	r6, r7, r3
 8006a60:	6832      	ldr	r2, [r6, #0]
 8006a62:	6873      	ldr	r3, [r6, #4]
 8006a64:	f7fa fff0 	bl	8001a48 <__aeabi_dmul>
 8006a68:	0003      	movs	r3, r0
 8006a6a:	000c      	movs	r4, r1
 8006a6c:	633b      	str	r3, [r7, #48]	; 0x30
 8006a6e:	637c      	str	r4, [r7, #52]	; 0x34
 8006a70:	2488      	movs	r4, #136	; 0x88
 8006a72:	197e      	adds	r6, r7, r5
 8006a74:	1936      	adds	r6, r6, r4
 8006a76:	6832      	ldr	r2, [r6, #0]
 8006a78:	6873      	ldr	r3, [r6, #4]
 8006a7a:	24a8      	movs	r4, #168	; 0xa8
 8006a7c:	197e      	adds	r6, r7, r5
 8006a7e:	1931      	adds	r1, r6, r4
 8006a80:	6808      	ldr	r0, [r1, #0]
 8006a82:	6849      	ldr	r1, [r1, #4]
 8006a84:	f7fa f8ba 	bl	8000bfc <__aeabi_dadd>
 8006a88:	0003      	movs	r3, r0
 8006a8a:	000c      	movs	r4, r1
 8006a8c:	0018      	movs	r0, r3
 8006a8e:	0021      	movs	r1, r4
 8006a90:	2388      	movs	r3, #136	; 0x88
 8006a92:	18fe      	adds	r6, r7, r3
 8006a94:	6832      	ldr	r2, [r6, #0]
 8006a96:	6873      	ldr	r3, [r6, #4]
 8006a98:	f7fa ffd6 	bl	8001a48 <__aeabi_dmul>
 8006a9c:	0003      	movs	r3, r0
 8006a9e:	000c      	movs	r4, r1
 8006aa0:	001d      	movs	r5, r3
 8006aa2:	0026      	movs	r6, r4
 8006aa4:	2298      	movs	r2, #152	; 0x98
 8006aa6:	2340      	movs	r3, #64	; 0x40
 8006aa8:	18f8      	adds	r0, r7, r3
 8006aaa:	1881      	adds	r1, r0, r2
 8006aac:	680a      	ldr	r2, [r1, #0]
 8006aae:	684b      	ldr	r3, [r1, #4]
 8006ab0:	2000      	movs	r0, #0
 8006ab2:	49d3      	ldr	r1, [pc, #844]	; (8006e00 <MadgwickAHRSupdate+0x1608>)
 8006ab4:	f7fb fa3a 	bl	8001f2c <__aeabi_dsub>
 8006ab8:	0003      	movs	r3, r0
 8006aba:	000c      	movs	r4, r1
 8006abc:	0018      	movs	r0, r3
 8006abe:	0021      	movs	r1, r4
 8006ac0:	2380      	movs	r3, #128	; 0x80
 8006ac2:	2240      	movs	r2, #64	; 0x40
 8006ac4:	4694      	mov	ip, r2
 8006ac6:	44bc      	add	ip, r7
 8006ac8:	4463      	add	r3, ip
 8006aca:	681a      	ldr	r2, [r3, #0]
 8006acc:	685b      	ldr	r3, [r3, #4]
 8006ace:	f7fb fa2d 	bl	8001f2c <__aeabi_dsub>
 8006ad2:	0003      	movs	r3, r0
 8006ad4:	000c      	movs	r4, r1
 8006ad6:	0018      	movs	r0, r3
 8006ad8:	0021      	movs	r1, r4
 8006ada:	2280      	movs	r2, #128	; 0x80
 8006adc:	18ba      	adds	r2, r7, r2
 8006ade:	6853      	ldr	r3, [r2, #4]
 8006ae0:	6812      	ldr	r2, [r2, #0]
 8006ae2:	f7fa ffb1 	bl	8001a48 <__aeabi_dmul>
 8006ae6:	0003      	movs	r3, r0
 8006ae8:	000c      	movs	r4, r1
 8006aea:	001a      	movs	r2, r3
 8006aec:	0023      	movs	r3, r4
 8006aee:	0028      	movs	r0, r5
 8006af0:	0031      	movs	r1, r6
 8006af2:	f7fa f883 	bl	8000bfc <__aeabi_dadd>
 8006af6:	0003      	movs	r3, r0
 8006af8:	000c      	movs	r4, r1
 8006afa:	0018      	movs	r0, r3
 8006afc:	0021      	movs	r1, r4
 8006afe:	24c8      	movs	r4, #200	; 0xc8
 8006b00:	0064      	lsls	r4, r4, #1
 8006b02:	2540      	movs	r5, #64	; 0x40
 8006b04:	197e      	adds	r6, r7, r5
 8006b06:	1936      	adds	r6, r6, r4
 8006b08:	6832      	ldr	r2, [r6, #0]
 8006b0a:	6873      	ldr	r3, [r6, #4]
 8006b0c:	f7fb fa0e 	bl	8001f2c <__aeabi_dsub>
 8006b10:	0003      	movs	r3, r0
 8006b12:	000c      	movs	r4, r1
 8006b14:	001a      	movs	r2, r3
 8006b16:	0023      	movs	r3, r4
 8006b18:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8006b1a:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8006b1c:	f7fa ff94 	bl	8001a48 <__aeabi_dmul>
 8006b20:	0003      	movs	r3, r0
 8006b22:	000c      	movs	r4, r1
 8006b24:	001a      	movs	r2, r3
 8006b26:	0023      	movs	r3, r4
 8006b28:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 8006b2a:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8006b2c:	f7fa f866 	bl	8000bfc <__aeabi_dadd>
 8006b30:	0003      	movs	r3, r0
 8006b32:	000c      	movs	r4, r1
 8006b34:	66bb      	str	r3, [r7, #104]	; 0x68
 8006b36:	66fc      	str	r4, [r7, #108]	; 0x6c
 8006b38:	22a8      	movs	r2, #168	; 0xa8
 8006b3a:	197e      	adds	r6, r7, r5
 8006b3c:	18b0      	adds	r0, r6, r2
 8006b3e:	6802      	ldr	r2, [r0, #0]
 8006b40:	6843      	ldr	r3, [r0, #4]
 8006b42:	2488      	movs	r4, #136	; 0x88
 8006b44:	197e      	adds	r6, r7, r5
 8006b46:	1930      	adds	r0, r6, r4
 8006b48:	6841      	ldr	r1, [r0, #4]
 8006b4a:	6800      	ldr	r0, [r0, #0]
 8006b4c:	f7fb f9ee 	bl	8001f2c <__aeabi_dsub>
 8006b50:	0003      	movs	r3, r0
 8006b52:	000c      	movs	r4, r1
 8006b54:	0018      	movs	r0, r3
 8006b56:	0021      	movs	r1, r4
 8006b58:	0002      	movs	r2, r0
 8006b5a:	000b      	movs	r3, r1
 8006b5c:	f7fa f84e 	bl	8000bfc <__aeabi_dadd>
 8006b60:	0003      	movs	r3, r0
 8006b62:	000c      	movs	r4, r1
 8006b64:	0018      	movs	r0, r3
 8006b66:	0021      	movs	r1, r4
 8006b68:	26b4      	movs	r6, #180	; 0xb4
 8006b6a:	0076      	lsls	r6, r6, #1
 8006b6c:	197d      	adds	r5, r7, r5
 8006b6e:	19ab      	adds	r3, r5, r6
 8006b70:	681a      	ldr	r2, [r3, #0]
 8006b72:	685b      	ldr	r3, [r3, #4]
 8006b74:	f7fb f9da 	bl	8001f2c <__aeabi_dsub>
 8006b78:	0003      	movs	r3, r0
 8006b7a:	000c      	movs	r4, r1
 8006b7c:	0018      	movs	r0, r3
 8006b7e:	0021      	movs	r1, r4
 8006b80:	23d0      	movs	r3, #208	; 0xd0
 8006b82:	2640      	movs	r6, #64	; 0x40
 8006b84:	46b4      	mov	ip, r6
 8006b86:	44bc      	add	ip, r7
 8006b88:	4463      	add	r3, ip
 8006b8a:	681a      	ldr	r2, [r3, #0]
 8006b8c:	685b      	ldr	r3, [r3, #4]
 8006b8e:	f7fa ff5b 	bl	8001a48 <__aeabi_dmul>
 8006b92:	0003      	movs	r3, r0
 8006b94:	000c      	movs	r4, r1
 8006b96:	001d      	movs	r5, r3
 8006b98:	0026      	movs	r6, r4
 8006b9a:	21b8      	movs	r1, #184	; 0xb8
 8006b9c:	1878      	adds	r0, r7, r1
 8006b9e:	6802      	ldr	r2, [r0, #0]
 8006ba0:	6843      	ldr	r3, [r0, #4]
 8006ba2:	20b0      	movs	r0, #176	; 0xb0
 8006ba4:	2140      	movs	r1, #64	; 0x40
 8006ba6:	1879      	adds	r1, r7, r1
 8006ba8:	1809      	adds	r1, r1, r0
 8006baa:	6808      	ldr	r0, [r1, #0]
 8006bac:	6849      	ldr	r1, [r1, #4]
 8006bae:	f7fa f825 	bl	8000bfc <__aeabi_dadd>
 8006bb2:	0003      	movs	r3, r0
 8006bb4:	000c      	movs	r4, r1
 8006bb6:	0018      	movs	r0, r3
 8006bb8:	0021      	movs	r1, r4
 8006bba:	0002      	movs	r2, r0
 8006bbc:	000b      	movs	r3, r1
 8006bbe:	f7fa f81d 	bl	8000bfc <__aeabi_dadd>
 8006bc2:	0003      	movs	r3, r0
 8006bc4:	000c      	movs	r4, r1
 8006bc6:	0018      	movs	r0, r3
 8006bc8:	0021      	movs	r1, r4
 8006bca:	23b8      	movs	r3, #184	; 0xb8
 8006bcc:	005b      	lsls	r3, r3, #1
 8006bce:	2240      	movs	r2, #64	; 0x40
 8006bd0:	4694      	mov	ip, r2
 8006bd2:	44bc      	add	ip, r7
 8006bd4:	4463      	add	r3, ip
 8006bd6:	681a      	ldr	r2, [r3, #0]
 8006bd8:	685b      	ldr	r3, [r3, #4]
 8006bda:	f7fb f9a7 	bl	8001f2c <__aeabi_dsub>
 8006bde:	0003      	movs	r3, r0
 8006be0:	000c      	movs	r4, r1
 8006be2:	0018      	movs	r0, r3
 8006be4:	0021      	movs	r1, r4
 8006be6:	23e8      	movs	r3, #232	; 0xe8
 8006be8:	2240      	movs	r2, #64	; 0x40
 8006bea:	4694      	mov	ip, r2
 8006bec:	44bc      	add	ip, r7
 8006bee:	4463      	add	r3, ip
 8006bf0:	681a      	ldr	r2, [r3, #0]
 8006bf2:	685b      	ldr	r3, [r3, #4]
 8006bf4:	f7fa ff28 	bl	8001a48 <__aeabi_dmul>
 8006bf8:	0003      	movs	r3, r0
 8006bfa:	000c      	movs	r4, r1
 8006bfc:	001a      	movs	r2, r3
 8006bfe:	0023      	movs	r3, r4
 8006c00:	0028      	movs	r0, r5
 8006c02:	0031      	movs	r1, r6
 8006c04:	f7f9 fffa 	bl	8000bfc <__aeabi_dadd>
 8006c08:	0003      	movs	r3, r0
 8006c0a:	000c      	movs	r4, r1
 8006c0c:	63bb      	str	r3, [r7, #56]	; 0x38
 8006c0e:	63fc      	str	r4, [r7, #60]	; 0x3c
 8006c10:	4b7c      	ldr	r3, [pc, #496]	; (8006e04 <MadgwickAHRSupdate+0x160c>)
 8006c12:	6818      	ldr	r0, [r3, #0]
 8006c14:	6859      	ldr	r1, [r3, #4]
 8006c16:	2200      	movs	r2, #0
 8006c18:	4b7b      	ldr	r3, [pc, #492]	; (8006e08 <MadgwickAHRSupdate+0x1610>)
 8006c1a:	f7fa ff15 	bl	8001a48 <__aeabi_dmul>
 8006c1e:	0003      	movs	r3, r0
 8006c20:	000c      	movs	r4, r1
 8006c22:	001d      	movs	r5, r3
 8006c24:	0026      	movs	r6, r4
 8006c26:	2298      	movs	r2, #152	; 0x98
 8006c28:	2040      	movs	r0, #64	; 0x40
 8006c2a:	183b      	adds	r3, r7, r0
 8006c2c:	1899      	adds	r1, r3, r2
 8006c2e:	680a      	ldr	r2, [r1, #0]
 8006c30:	684b      	ldr	r3, [r1, #4]
 8006c32:	2000      	movs	r0, #0
 8006c34:	4972      	ldr	r1, [pc, #456]	; (8006e00 <MadgwickAHRSupdate+0x1608>)
 8006c36:	f7fb f979 	bl	8001f2c <__aeabi_dsub>
 8006c3a:	0003      	movs	r3, r0
 8006c3c:	000c      	movs	r4, r1
 8006c3e:	0018      	movs	r0, r3
 8006c40:	0021      	movs	r1, r4
 8006c42:	2380      	movs	r3, #128	; 0x80
 8006c44:	2240      	movs	r2, #64	; 0x40
 8006c46:	4694      	mov	ip, r2
 8006c48:	44bc      	add	ip, r7
 8006c4a:	4463      	add	r3, ip
 8006c4c:	681a      	ldr	r2, [r3, #0]
 8006c4e:	685b      	ldr	r3, [r3, #4]
 8006c50:	f7fb f96c 	bl	8001f2c <__aeabi_dsub>
 8006c54:	0003      	movs	r3, r0
 8006c56:	000c      	movs	r4, r1
 8006c58:	0018      	movs	r0, r3
 8006c5a:	0021      	movs	r1, r4
 8006c5c:	0002      	movs	r2, r0
 8006c5e:	000b      	movs	r3, r1
 8006c60:	f7f9 ffcc 	bl	8000bfc <__aeabi_dadd>
 8006c64:	0003      	movs	r3, r0
 8006c66:	000c      	movs	r4, r1
 8006c68:	0018      	movs	r0, r3
 8006c6a:	0021      	movs	r1, r4
 8006c6c:	23bc      	movs	r3, #188	; 0xbc
 8006c6e:	005b      	lsls	r3, r3, #1
 8006c70:	2240      	movs	r2, #64	; 0x40
 8006c72:	4694      	mov	ip, r2
 8006c74:	44bc      	add	ip, r7
 8006c76:	4463      	add	r3, ip
 8006c78:	681a      	ldr	r2, [r3, #0]
 8006c7a:	685b      	ldr	r3, [r3, #4]
 8006c7c:	f7fb f956 	bl	8001f2c <__aeabi_dsub>
 8006c80:	0003      	movs	r3, r0
 8006c82:	000c      	movs	r4, r1
 8006c84:	001a      	movs	r2, r3
 8006c86:	0023      	movs	r3, r4
 8006c88:	0028      	movs	r0, r5
 8006c8a:	0031      	movs	r1, r6
 8006c8c:	f7fa fedc 	bl	8001a48 <__aeabi_dmul>
 8006c90:	0003      	movs	r3, r0
 8006c92:	000c      	movs	r4, r1
 8006c94:	001a      	movs	r2, r3
 8006c96:	0023      	movs	r3, r4
 8006c98:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 8006c9a:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8006c9c:	f7f9 ffae 	bl	8000bfc <__aeabi_dadd>
 8006ca0:	0003      	movs	r3, r0
 8006ca2:	000c      	movs	r4, r1
 8006ca4:	63bb      	str	r3, [r7, #56]	; 0x38
 8006ca6:	63fc      	str	r4, [r7, #60]	; 0x3c
 8006ca8:	4b58      	ldr	r3, [pc, #352]	; (8006e0c <MadgwickAHRSupdate+0x1614>)
 8006caa:	6818      	ldr	r0, [r3, #0]
 8006cac:	6859      	ldr	r1, [r3, #4]
 8006cae:	2280      	movs	r2, #128	; 0x80
 8006cb0:	18be      	adds	r6, r7, r2
 8006cb2:	6832      	ldr	r2, [r6, #0]
 8006cb4:	6873      	ldr	r3, [r6, #4]
 8006cb6:	f7fa fec7 	bl	8001a48 <__aeabi_dmul>
 8006cba:	0003      	movs	r3, r0
 8006cbc:	000c      	movs	r4, r1
 8006cbe:	633b      	str	r3, [r7, #48]	; 0x30
 8006cc0:	637c      	str	r4, [r7, #52]	; 0x34
 8006cc2:	2680      	movs	r6, #128	; 0x80
 8006cc4:	2040      	movs	r0, #64	; 0x40
 8006cc6:	183d      	adds	r5, r7, r0
 8006cc8:	19a9      	adds	r1, r5, r6
 8006cca:	680a      	ldr	r2, [r1, #0]
 8006ccc:	684b      	ldr	r3, [r1, #4]
 8006cce:	2000      	movs	r0, #0
 8006cd0:	494b      	ldr	r1, [pc, #300]	; (8006e00 <MadgwickAHRSupdate+0x1608>)
 8006cd2:	f7fb f92b 	bl	8001f2c <__aeabi_dsub>
 8006cd6:	0003      	movs	r3, r0
 8006cd8:	000c      	movs	r4, r1
 8006cda:	0018      	movs	r0, r3
 8006cdc:	0021      	movs	r1, r4
 8006cde:	24b0      	movs	r4, #176	; 0xb0
 8006ce0:	193d      	adds	r5, r7, r4
 8006ce2:	682a      	ldr	r2, [r5, #0]
 8006ce4:	686b      	ldr	r3, [r5, #4]
 8006ce6:	f7fb f921 	bl	8001f2c <__aeabi_dsub>
 8006cea:	0003      	movs	r3, r0
 8006cec:	000c      	movs	r4, r1
 8006cee:	0018      	movs	r0, r3
 8006cf0:	0021      	movs	r1, r4
 8006cf2:	2388      	movs	r3, #136	; 0x88
 8006cf4:	18fd      	adds	r5, r7, r3
 8006cf6:	682a      	ldr	r2, [r5, #0]
 8006cf8:	686b      	ldr	r3, [r5, #4]
 8006cfa:	f7fa fea5 	bl	8001a48 <__aeabi_dmul>
 8006cfe:	0003      	movs	r3, r0
 8006d00:	000c      	movs	r4, r1
 8006d02:	001d      	movs	r5, r3
 8006d04:	0026      	movs	r6, r4
 8006d06:	22a8      	movs	r2, #168	; 0xa8
 8006d08:	2040      	movs	r0, #64	; 0x40
 8006d0a:	183b      	adds	r3, r7, r0
 8006d0c:	1899      	adds	r1, r3, r2
 8006d0e:	680a      	ldr	r2, [r1, #0]
 8006d10:	684b      	ldr	r3, [r1, #4]
 8006d12:	2488      	movs	r4, #136	; 0x88
 8006d14:	1838      	adds	r0, r7, r0
 8006d16:	1901      	adds	r1, r0, r4
 8006d18:	6808      	ldr	r0, [r1, #0]
 8006d1a:	6849      	ldr	r1, [r1, #4]
 8006d1c:	f7fb f906 	bl	8001f2c <__aeabi_dsub>
 8006d20:	0003      	movs	r3, r0
 8006d22:	000c      	movs	r4, r1
 8006d24:	0018      	movs	r0, r3
 8006d26:	0021      	movs	r1, r4
 8006d28:	2280      	movs	r2, #128	; 0x80
 8006d2a:	18ba      	adds	r2, r7, r2
 8006d2c:	6853      	ldr	r3, [r2, #4]
 8006d2e:	6812      	ldr	r2, [r2, #0]
 8006d30:	f7fa fe8a 	bl	8001a48 <__aeabi_dmul>
 8006d34:	0003      	movs	r3, r0
 8006d36:	000c      	movs	r4, r1
 8006d38:	001a      	movs	r2, r3
 8006d3a:	0023      	movs	r3, r4
 8006d3c:	0028      	movs	r0, r5
 8006d3e:	0031      	movs	r1, r6
 8006d40:	f7f9 ff5c 	bl	8000bfc <__aeabi_dadd>
 8006d44:	0003      	movs	r3, r0
 8006d46:	000c      	movs	r4, r1
 8006d48:	0018      	movs	r0, r3
 8006d4a:	0021      	movs	r1, r4
 8006d4c:	25c0      	movs	r5, #192	; 0xc0
 8006d4e:	006d      	lsls	r5, r5, #1
 8006d50:	2340      	movs	r3, #64	; 0x40
 8006d52:	18fe      	adds	r6, r7, r3
 8006d54:	1976      	adds	r6, r6, r5
 8006d56:	6832      	ldr	r2, [r6, #0]
 8006d58:	6873      	ldr	r3, [r6, #4]
 8006d5a:	f7fb f8e7 	bl	8001f2c <__aeabi_dsub>
 8006d5e:	0003      	movs	r3, r0
 8006d60:	000c      	movs	r4, r1
 8006d62:	001a      	movs	r2, r3
 8006d64:	0023      	movs	r3, r4
 8006d66:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8006d68:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8006d6a:	f7fa fe6d 	bl	8001a48 <__aeabi_dmul>
 8006d6e:	0003      	movs	r3, r0
 8006d70:	000c      	movs	r4, r1
 8006d72:	001a      	movs	r2, r3
 8006d74:	0023      	movs	r3, r4
 8006d76:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 8006d78:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8006d7a:	f7f9 ff3f 	bl	8000bfc <__aeabi_dadd>
 8006d7e:	0003      	movs	r3, r0
 8006d80:	000c      	movs	r4, r1
 8006d82:	63bb      	str	r3, [r7, #56]	; 0x38
 8006d84:	63fc      	str	r4, [r7, #60]	; 0x3c
 8006d86:	4b1d      	ldr	r3, [pc, #116]	; (8006dfc <MadgwickAHRSupdate+0x1604>)
 8006d88:	6818      	ldr	r0, [r3, #0]
 8006d8a:	6859      	ldr	r1, [r3, #4]
 8006d8c:	2388      	movs	r3, #136	; 0x88
 8006d8e:	18fd      	adds	r5, r7, r3
 8006d90:	682a      	ldr	r2, [r5, #0]
 8006d92:	686b      	ldr	r3, [r5, #4]
 8006d94:	f7fa fe58 	bl	8001a48 <__aeabi_dmul>
 8006d98:	0003      	movs	r3, r0
 8006d9a:	000c      	movs	r4, r1
 8006d9c:	001d      	movs	r5, r3
 8006d9e:	0026      	movs	r6, r4
 8006da0:	4b1b      	ldr	r3, [pc, #108]	; (8006e10 <MadgwickAHRSupdate+0x1618>)
 8006da2:	6818      	ldr	r0, [r3, #0]
 8006da4:	6859      	ldr	r1, [r3, #4]
 8006da6:	2280      	movs	r2, #128	; 0x80
 8006da8:	18ba      	adds	r2, r7, r2
 8006daa:	6853      	ldr	r3, [r2, #4]
 8006dac:	6812      	ldr	r2, [r2, #0]
 8006dae:	f7fa fe4b 	bl	8001a48 <__aeabi_dmul>
 8006db2:	0003      	movs	r3, r0
 8006db4:	000c      	movs	r4, r1
 8006db6:	001a      	movs	r2, r3
 8006db8:	0023      	movs	r3, r4
 8006dba:	0028      	movs	r0, r5
 8006dbc:	0031      	movs	r1, r6
 8006dbe:	f7f9 ff1d 	bl	8000bfc <__aeabi_dadd>
 8006dc2:	0003      	movs	r3, r0
 8006dc4:	000c      	movs	r4, r1
 8006dc6:	633b      	str	r3, [r7, #48]	; 0x30
 8006dc8:	637c      	str	r4, [r7, #52]	; 0x34
 8006dca:	21a0      	movs	r1, #160	; 0xa0
 8006dcc:	2540      	movs	r5, #64	; 0x40
 8006dce:	46ac      	mov	ip, r5
 8006dd0:	44bc      	add	ip, r7
 8006dd2:	4461      	add	r1, ip
 8006dd4:	680a      	ldr	r2, [r1, #0]
 8006dd6:	684b      	ldr	r3, [r1, #4]
 8006dd8:	2190      	movs	r1, #144	; 0x90
 8006dda:	2540      	movs	r5, #64	; 0x40
 8006ddc:	46ac      	mov	ip, r5
 8006dde:	44bc      	add	ip, r7
 8006de0:	4461      	add	r1, ip
 8006de2:	6808      	ldr	r0, [r1, #0]
 8006de4:	6849      	ldr	r1, [r1, #4]
 8006de6:	f7fb f8a1 	bl	8001f2c <__aeabi_dsub>
 8006dea:	0003      	movs	r3, r0
 8006dec:	000c      	movs	r4, r1
 8006dee:	0018      	movs	r0, r3
 8006df0:	0021      	movs	r1, r4
 8006df2:	2388      	movs	r3, #136	; 0x88
 8006df4:	18fd      	adds	r5, r7, r3
 8006df6:	682a      	ldr	r2, [r5, #0]
 8006df8:	686b      	ldr	r3, [r5, #4]
 8006dfa:	e00b      	b.n	8006e14 <MadgwickAHRSupdate+0x161c>
 8006dfc:	200002d8 	.word	0x200002d8
 8006e00:	3fe00000 	.word	0x3fe00000
 8006e04:	200002d0 	.word	0x200002d0
 8006e08:	c0100000 	.word	0xc0100000
 8006e0c:	200002e0 	.word	0x200002e0
 8006e10:	20000000 	.word	0x20000000
 8006e14:	f7fa fe18 	bl	8001a48 <__aeabi_dmul>
 8006e18:	0003      	movs	r3, r0
 8006e1a:	000c      	movs	r4, r1
 8006e1c:	001d      	movs	r5, r3
 8006e1e:	0026      	movs	r6, r4
 8006e20:	21b8      	movs	r1, #184	; 0xb8
 8006e22:	1879      	adds	r1, r7, r1
 8006e24:	680a      	ldr	r2, [r1, #0]
 8006e26:	684b      	ldr	r3, [r1, #4]
 8006e28:	20b0      	movs	r0, #176	; 0xb0
 8006e2a:	2140      	movs	r1, #64	; 0x40
 8006e2c:	1879      	adds	r1, r7, r1
 8006e2e:	1809      	adds	r1, r1, r0
 8006e30:	6808      	ldr	r0, [r1, #0]
 8006e32:	6849      	ldr	r1, [r1, #4]
 8006e34:	f7f9 fee2 	bl	8000bfc <__aeabi_dadd>
 8006e38:	0003      	movs	r3, r0
 8006e3a:	000c      	movs	r4, r1
 8006e3c:	0018      	movs	r0, r3
 8006e3e:	0021      	movs	r1, r4
 8006e40:	2280      	movs	r2, #128	; 0x80
 8006e42:	18ba      	adds	r2, r7, r2
 8006e44:	6853      	ldr	r3, [r2, #4]
 8006e46:	6812      	ldr	r2, [r2, #0]
 8006e48:	f7fa fdfe 	bl	8001a48 <__aeabi_dmul>
 8006e4c:	0003      	movs	r3, r0
 8006e4e:	000c      	movs	r4, r1
 8006e50:	001a      	movs	r2, r3
 8006e52:	0023      	movs	r3, r4
 8006e54:	0028      	movs	r0, r5
 8006e56:	0031      	movs	r1, r6
 8006e58:	f7f9 fed0 	bl	8000bfc <__aeabi_dadd>
 8006e5c:	0003      	movs	r3, r0
 8006e5e:	000c      	movs	r4, r1
 8006e60:	0018      	movs	r0, r3
 8006e62:	0021      	movs	r1, r4
 8006e64:	22c4      	movs	r2, #196	; 0xc4
 8006e66:	0052      	lsls	r2, r2, #1
 8006e68:	2340      	movs	r3, #64	; 0x40
 8006e6a:	18fe      	adds	r6, r7, r3
 8006e6c:	18b6      	adds	r6, r6, r2
 8006e6e:	6832      	ldr	r2, [r6, #0]
 8006e70:	6873      	ldr	r3, [r6, #4]
 8006e72:	f7fb f85b 	bl	8001f2c <__aeabi_dsub>
 8006e76:	0003      	movs	r3, r0
 8006e78:	000c      	movs	r4, r1
 8006e7a:	001a      	movs	r2, r3
 8006e7c:	0023      	movs	r3, r4
 8006e7e:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8006e80:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8006e82:	f7fa fde1 	bl	8001a48 <__aeabi_dmul>
 8006e86:	0003      	movs	r3, r0
 8006e88:	000c      	movs	r4, r1
 8006e8a:	001a      	movs	r2, r3
 8006e8c:	0023      	movs	r3, r4
 8006e8e:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 8006e90:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8006e92:	f7f9 feb3 	bl	8000bfc <__aeabi_dadd>
 8006e96:	0003      	movs	r3, r0
 8006e98:	000c      	movs	r4, r1
 8006e9a:	63bb      	str	r3, [r7, #56]	; 0x38
 8006e9c:	63fc      	str	r4, [r7, #60]	; 0x3c
 8006e9e:	4bea      	ldr	r3, [pc, #936]	; (8007248 <MadgwickAHRSupdate+0x1a50>)
 8006ea0:	6818      	ldr	r0, [r3, #0]
 8006ea2:	6859      	ldr	r1, [r3, #4]
 8006ea4:	2388      	movs	r3, #136	; 0x88
 8006ea6:	18fe      	adds	r6, r7, r3
 8006ea8:	6832      	ldr	r2, [r6, #0]
 8006eaa:	6873      	ldr	r3, [r6, #4]
 8006eac:	f7fa fdcc 	bl	8001a48 <__aeabi_dmul>
 8006eb0:	0003      	movs	r3, r0
 8006eb2:	000c      	movs	r4, r1
 8006eb4:	001d      	movs	r5, r3
 8006eb6:	0026      	movs	r6, r4
 8006eb8:	4be4      	ldr	r3, [pc, #912]	; (800724c <MadgwickAHRSupdate+0x1a54>)
 8006eba:	6818      	ldr	r0, [r3, #0]
 8006ebc:	6859      	ldr	r1, [r3, #4]
 8006ebe:	6f3a      	ldr	r2, [r7, #112]	; 0x70
 8006ec0:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 8006ec2:	f7fa fdc1 	bl	8001a48 <__aeabi_dmul>
 8006ec6:	0003      	movs	r3, r0
 8006ec8:	000c      	movs	r4, r1
 8006eca:	001a      	movs	r2, r3
 8006ecc:	0023      	movs	r3, r4
 8006ece:	0028      	movs	r0, r5
 8006ed0:	0031      	movs	r1, r6
 8006ed2:	f7fb f82b 	bl	8001f2c <__aeabi_dsub>
 8006ed6:	0003      	movs	r3, r0
 8006ed8:	000c      	movs	r4, r1
 8006eda:	633b      	str	r3, [r7, #48]	; 0x30
 8006edc:	637c      	str	r4, [r7, #52]	; 0x34
 8006ede:	2488      	movs	r4, #136	; 0x88
 8006ee0:	2040      	movs	r0, #64	; 0x40
 8006ee2:	183d      	adds	r5, r7, r0
 8006ee4:	1929      	adds	r1, r5, r4
 8006ee6:	680a      	ldr	r2, [r1, #0]
 8006ee8:	684b      	ldr	r3, [r1, #4]
 8006eea:	24a8      	movs	r4, #168	; 0xa8
 8006eec:	183e      	adds	r6, r7, r0
 8006eee:	1931      	adds	r1, r6, r4
 8006ef0:	6808      	ldr	r0, [r1, #0]
 8006ef2:	6849      	ldr	r1, [r1, #4]
 8006ef4:	f7f9 fe82 	bl	8000bfc <__aeabi_dadd>
 8006ef8:	0003      	movs	r3, r0
 8006efa:	000c      	movs	r4, r1
 8006efc:	0018      	movs	r0, r3
 8006efe:	0021      	movs	r1, r4
 8006f00:	2388      	movs	r3, #136	; 0x88
 8006f02:	18fe      	adds	r6, r7, r3
 8006f04:	6832      	ldr	r2, [r6, #0]
 8006f06:	6873      	ldr	r3, [r6, #4]
 8006f08:	f7fa fd9e 	bl	8001a48 <__aeabi_dmul>
 8006f0c:	0003      	movs	r3, r0
 8006f0e:	000c      	movs	r4, r1
 8006f10:	001d      	movs	r5, r3
 8006f12:	0026      	movs	r6, r4
 8006f14:	2198      	movs	r1, #152	; 0x98
 8006f16:	2340      	movs	r3, #64	; 0x40
 8006f18:	469c      	mov	ip, r3
 8006f1a:	44bc      	add	ip, r7
 8006f1c:	4461      	add	r1, ip
 8006f1e:	680a      	ldr	r2, [r1, #0]
 8006f20:	684b      	ldr	r3, [r1, #4]
 8006f22:	2000      	movs	r0, #0
 8006f24:	49ca      	ldr	r1, [pc, #808]	; (8007250 <MadgwickAHRSupdate+0x1a58>)
 8006f26:	f7fb f801 	bl	8001f2c <__aeabi_dsub>
 8006f2a:	0003      	movs	r3, r0
 8006f2c:	000c      	movs	r4, r1
 8006f2e:	0018      	movs	r0, r3
 8006f30:	0021      	movs	r1, r4
 8006f32:	2380      	movs	r3, #128	; 0x80
 8006f34:	2240      	movs	r2, #64	; 0x40
 8006f36:	4694      	mov	ip, r2
 8006f38:	44bc      	add	ip, r7
 8006f3a:	4463      	add	r3, ip
 8006f3c:	681a      	ldr	r2, [r3, #0]
 8006f3e:	685b      	ldr	r3, [r3, #4]
 8006f40:	f7fa fff4 	bl	8001f2c <__aeabi_dsub>
 8006f44:	0003      	movs	r3, r0
 8006f46:	000c      	movs	r4, r1
 8006f48:	0018      	movs	r0, r3
 8006f4a:	0021      	movs	r1, r4
 8006f4c:	2280      	movs	r2, #128	; 0x80
 8006f4e:	18bb      	adds	r3, r7, r2
 8006f50:	681a      	ldr	r2, [r3, #0]
 8006f52:	685b      	ldr	r3, [r3, #4]
 8006f54:	f7fa fd78 	bl	8001a48 <__aeabi_dmul>
 8006f58:	0003      	movs	r3, r0
 8006f5a:	000c      	movs	r4, r1
 8006f5c:	001a      	movs	r2, r3
 8006f5e:	0023      	movs	r3, r4
 8006f60:	0028      	movs	r0, r5
 8006f62:	0031      	movs	r1, r6
 8006f64:	f7f9 fe4a 	bl	8000bfc <__aeabi_dadd>
 8006f68:	0003      	movs	r3, r0
 8006f6a:	000c      	movs	r4, r1
 8006f6c:	0018      	movs	r0, r3
 8006f6e:	0021      	movs	r1, r4
 8006f70:	24c8      	movs	r4, #200	; 0xc8
 8006f72:	0064      	lsls	r4, r4, #1
 8006f74:	2540      	movs	r5, #64	; 0x40
 8006f76:	197e      	adds	r6, r7, r5
 8006f78:	1936      	adds	r6, r6, r4
 8006f7a:	6832      	ldr	r2, [r6, #0]
 8006f7c:	6873      	ldr	r3, [r6, #4]
 8006f7e:	f7fa ffd5 	bl	8001f2c <__aeabi_dsub>
 8006f82:	0003      	movs	r3, r0
 8006f84:	000c      	movs	r4, r1
 8006f86:	001a      	movs	r2, r3
 8006f88:	0023      	movs	r3, r4
 8006f8a:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8006f8c:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8006f8e:	f7fa fd5b 	bl	8001a48 <__aeabi_dmul>
 8006f92:	0003      	movs	r3, r0
 8006f94:	000c      	movs	r4, r1
 8006f96:	001a      	movs	r2, r3
 8006f98:	0023      	movs	r3, r4
 8006f9a:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 8006f9c:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8006f9e:	f7f9 fe2d 	bl	8000bfc <__aeabi_dadd>
 8006fa2:	0003      	movs	r3, r0
 8006fa4:	000c      	movs	r4, r1
 8006fa6:	663b      	str	r3, [r7, #96]	; 0x60
 8006fa8:	667c      	str	r4, [r7, #100]	; 0x64
 8006faa:	23e8      	movs	r3, #232	; 0xe8
 8006fac:	0028      	movs	r0, r5
 8006fae:	183d      	adds	r5, r7, r0
 8006fb0:	18e9      	adds	r1, r5, r3
 8006fb2:	680b      	ldr	r3, [r1, #0]
 8006fb4:	61bb      	str	r3, [r7, #24]
 8006fb6:	21ec      	movs	r1, #236	; 0xec
 8006fb8:	2540      	movs	r5, #64	; 0x40
 8006fba:	46ac      	mov	ip, r5
 8006fbc:	44bc      	add	ip, r7
 8006fbe:	4461      	add	r1, ip
 8006fc0:	680b      	ldr	r3, [r1, #0]
 8006fc2:	2280      	movs	r2, #128	; 0x80
 8006fc4:	0612      	lsls	r2, r2, #24
 8006fc6:	0011      	movs	r1, r2
 8006fc8:	4059      	eors	r1, r3
 8006fca:	61f9      	str	r1, [r7, #28]
 8006fcc:	22a8      	movs	r2, #168	; 0xa8
 8006fce:	0005      	movs	r5, r0
 8006fd0:	197e      	adds	r6, r7, r5
 8006fd2:	18b1      	adds	r1, r6, r2
 8006fd4:	680a      	ldr	r2, [r1, #0]
 8006fd6:	684b      	ldr	r3, [r1, #4]
 8006fd8:	2088      	movs	r0, #136	; 0x88
 8006fda:	197e      	adds	r6, r7, r5
 8006fdc:	1831      	adds	r1, r6, r0
 8006fde:	6808      	ldr	r0, [r1, #0]
 8006fe0:	6849      	ldr	r1, [r1, #4]
 8006fe2:	f7fa ffa3 	bl	8001f2c <__aeabi_dsub>
 8006fe6:	0003      	movs	r3, r0
 8006fe8:	000c      	movs	r4, r1
 8006fea:	0018      	movs	r0, r3
 8006fec:	0021      	movs	r1, r4
 8006fee:	0002      	movs	r2, r0
 8006ff0:	000b      	movs	r3, r1
 8006ff2:	f7f9 fe03 	bl	8000bfc <__aeabi_dadd>
 8006ff6:	0003      	movs	r3, r0
 8006ff8:	000c      	movs	r4, r1
 8006ffa:	0018      	movs	r0, r3
 8006ffc:	0021      	movs	r1, r4
 8006ffe:	26b4      	movs	r6, #180	; 0xb4
 8007000:	0076      	lsls	r6, r6, #1
 8007002:	197d      	adds	r5, r7, r5
 8007004:	19ab      	adds	r3, r5, r6
 8007006:	681a      	ldr	r2, [r3, #0]
 8007008:	685b      	ldr	r3, [r3, #4]
 800700a:	f7fa ff8f 	bl	8001f2c <__aeabi_dsub>
 800700e:	0003      	movs	r3, r0
 8007010:	000c      	movs	r4, r1
 8007012:	001a      	movs	r2, r3
 8007014:	0023      	movs	r3, r4
 8007016:	69b8      	ldr	r0, [r7, #24]
 8007018:	69f9      	ldr	r1, [r7, #28]
 800701a:	f7fa fd15 	bl	8001a48 <__aeabi_dmul>
 800701e:	0003      	movs	r3, r0
 8007020:	000c      	movs	r4, r1
 8007022:	001d      	movs	r5, r3
 8007024:	0026      	movs	r6, r4
 8007026:	21b8      	movs	r1, #184	; 0xb8
 8007028:	1879      	adds	r1, r7, r1
 800702a:	680a      	ldr	r2, [r1, #0]
 800702c:	684b      	ldr	r3, [r1, #4]
 800702e:	20b0      	movs	r0, #176	; 0xb0
 8007030:	2140      	movs	r1, #64	; 0x40
 8007032:	1879      	adds	r1, r7, r1
 8007034:	1809      	adds	r1, r1, r0
 8007036:	6808      	ldr	r0, [r1, #0]
 8007038:	6849      	ldr	r1, [r1, #4]
 800703a:	f7f9 fddf 	bl	8000bfc <__aeabi_dadd>
 800703e:	0003      	movs	r3, r0
 8007040:	000c      	movs	r4, r1
 8007042:	0018      	movs	r0, r3
 8007044:	0021      	movs	r1, r4
 8007046:	0002      	movs	r2, r0
 8007048:	000b      	movs	r3, r1
 800704a:	f7f9 fdd7 	bl	8000bfc <__aeabi_dadd>
 800704e:	0003      	movs	r3, r0
 8007050:	000c      	movs	r4, r1
 8007052:	0018      	movs	r0, r3
 8007054:	0021      	movs	r1, r4
 8007056:	23b8      	movs	r3, #184	; 0xb8
 8007058:	005b      	lsls	r3, r3, #1
 800705a:	2240      	movs	r2, #64	; 0x40
 800705c:	18ba      	adds	r2, r7, r2
 800705e:	18d4      	adds	r4, r2, r3
 8007060:	6822      	ldr	r2, [r4, #0]
 8007062:	6863      	ldr	r3, [r4, #4]
 8007064:	f7fa ff62 	bl	8001f2c <__aeabi_dsub>
 8007068:	0003      	movs	r3, r0
 800706a:	000c      	movs	r4, r1
 800706c:	0018      	movs	r0, r3
 800706e:	0021      	movs	r1, r4
 8007070:	23d0      	movs	r3, #208	; 0xd0
 8007072:	2240      	movs	r2, #64	; 0x40
 8007074:	4694      	mov	ip, r2
 8007076:	44bc      	add	ip, r7
 8007078:	4463      	add	r3, ip
 800707a:	681a      	ldr	r2, [r3, #0]
 800707c:	685b      	ldr	r3, [r3, #4]
 800707e:	f7fa fce3 	bl	8001a48 <__aeabi_dmul>
 8007082:	0003      	movs	r3, r0
 8007084:	000c      	movs	r4, r1
 8007086:	001a      	movs	r2, r3
 8007088:	0023      	movs	r3, r4
 800708a:	0028      	movs	r0, r5
 800708c:	0031      	movs	r1, r6
 800708e:	f7f9 fdb5 	bl	8000bfc <__aeabi_dadd>
 8007092:	0003      	movs	r3, r0
 8007094:	000c      	movs	r4, r1
 8007096:	63bb      	str	r3, [r7, #56]	; 0x38
 8007098:	63fc      	str	r4, [r7, #60]	; 0x3c
 800709a:	4b6e      	ldr	r3, [pc, #440]	; (8007254 <MadgwickAHRSupdate+0x1a5c>)
 800709c:	6818      	ldr	r0, [r3, #0]
 800709e:	6859      	ldr	r1, [r3, #4]
 80070a0:	2200      	movs	r2, #0
 80070a2:	4b6d      	ldr	r3, [pc, #436]	; (8007258 <MadgwickAHRSupdate+0x1a60>)
 80070a4:	f7fa fcd0 	bl	8001a48 <__aeabi_dmul>
 80070a8:	0003      	movs	r3, r0
 80070aa:	000c      	movs	r4, r1
 80070ac:	001d      	movs	r5, r3
 80070ae:	0026      	movs	r6, r4
 80070b0:	2198      	movs	r1, #152	; 0x98
 80070b2:	2040      	movs	r0, #64	; 0x40
 80070b4:	4684      	mov	ip, r0
 80070b6:	44bc      	add	ip, r7
 80070b8:	4461      	add	r1, ip
 80070ba:	680a      	ldr	r2, [r1, #0]
 80070bc:	684b      	ldr	r3, [r1, #4]
 80070be:	2000      	movs	r0, #0
 80070c0:	4963      	ldr	r1, [pc, #396]	; (8007250 <MadgwickAHRSupdate+0x1a58>)
 80070c2:	f7fa ff33 	bl	8001f2c <__aeabi_dsub>
 80070c6:	0003      	movs	r3, r0
 80070c8:	000c      	movs	r4, r1
 80070ca:	0018      	movs	r0, r3
 80070cc:	0021      	movs	r1, r4
 80070ce:	2380      	movs	r3, #128	; 0x80
 80070d0:	2240      	movs	r2, #64	; 0x40
 80070d2:	4694      	mov	ip, r2
 80070d4:	44bc      	add	ip, r7
 80070d6:	4463      	add	r3, ip
 80070d8:	681a      	ldr	r2, [r3, #0]
 80070da:	685b      	ldr	r3, [r3, #4]
 80070dc:	f7fa ff26 	bl	8001f2c <__aeabi_dsub>
 80070e0:	0003      	movs	r3, r0
 80070e2:	000c      	movs	r4, r1
 80070e4:	0018      	movs	r0, r3
 80070e6:	0021      	movs	r1, r4
 80070e8:	0002      	movs	r2, r0
 80070ea:	000b      	movs	r3, r1
 80070ec:	f7f9 fd86 	bl	8000bfc <__aeabi_dadd>
 80070f0:	0003      	movs	r3, r0
 80070f2:	000c      	movs	r4, r1
 80070f4:	0018      	movs	r0, r3
 80070f6:	0021      	movs	r1, r4
 80070f8:	24bc      	movs	r4, #188	; 0xbc
 80070fa:	0064      	lsls	r4, r4, #1
 80070fc:	2340      	movs	r3, #64	; 0x40
 80070fe:	18fa      	adds	r2, r7, r3
 8007100:	1913      	adds	r3, r2, r4
 8007102:	681a      	ldr	r2, [r3, #0]
 8007104:	685b      	ldr	r3, [r3, #4]
 8007106:	f7fa ff11 	bl	8001f2c <__aeabi_dsub>
 800710a:	0003      	movs	r3, r0
 800710c:	000c      	movs	r4, r1
 800710e:	001a      	movs	r2, r3
 8007110:	0023      	movs	r3, r4
 8007112:	0028      	movs	r0, r5
 8007114:	0031      	movs	r1, r6
 8007116:	f7fa fc97 	bl	8001a48 <__aeabi_dmul>
 800711a:	0003      	movs	r3, r0
 800711c:	000c      	movs	r4, r1
 800711e:	001a      	movs	r2, r3
 8007120:	0023      	movs	r3, r4
 8007122:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 8007124:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8007126:	f7f9 fd69 	bl	8000bfc <__aeabi_dadd>
 800712a:	0003      	movs	r3, r0
 800712c:	000c      	movs	r4, r1
 800712e:	63bb      	str	r3, [r7, #56]	; 0x38
 8007130:	63fc      	str	r4, [r7, #60]	; 0x3c
 8007132:	6fbb      	ldr	r3, [r7, #120]	; 0x78
 8007134:	613b      	str	r3, [r7, #16]
 8007136:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
 8007138:	2280      	movs	r2, #128	; 0x80
 800713a:	0612      	lsls	r2, r2, #24
 800713c:	0011      	movs	r1, r2
 800713e:	4059      	eors	r1, r3
 8007140:	6179      	str	r1, [r7, #20]
 8007142:	4b44      	ldr	r3, [pc, #272]	; (8007254 <MadgwickAHRSupdate+0x1a5c>)
 8007144:	685c      	ldr	r4, [r3, #4]
 8007146:	681b      	ldr	r3, [r3, #0]
 8007148:	001a      	movs	r2, r3
 800714a:	0023      	movs	r3, r4
 800714c:	6938      	ldr	r0, [r7, #16]
 800714e:	6979      	ldr	r1, [r7, #20]
 8007150:	f7fa fc7a 	bl	8001a48 <__aeabi_dmul>
 8007154:	0003      	movs	r3, r0
 8007156:	000c      	movs	r4, r1
 8007158:	0025      	movs	r5, r4
 800715a:	001c      	movs	r4, r3
 800715c:	4b3f      	ldr	r3, [pc, #252]	; (800725c <MadgwickAHRSupdate+0x1a64>)
 800715e:	6818      	ldr	r0, [r3, #0]
 8007160:	6859      	ldr	r1, [r3, #4]
 8007162:	2280      	movs	r2, #128	; 0x80
 8007164:	18be      	adds	r6, r7, r2
 8007166:	6832      	ldr	r2, [r6, #0]
 8007168:	6873      	ldr	r3, [r6, #4]
 800716a:	f7fa fc6d 	bl	8001a48 <__aeabi_dmul>
 800716e:	0002      	movs	r2, r0
 8007170:	000b      	movs	r3, r1
 8007172:	0020      	movs	r0, r4
 8007174:	0029      	movs	r1, r5
 8007176:	f7fa fed9 	bl	8001f2c <__aeabi_dsub>
 800717a:	0003      	movs	r3, r0
 800717c:	000c      	movs	r4, r1
 800717e:	633b      	str	r3, [r7, #48]	; 0x30
 8007180:	637c      	str	r4, [r7, #52]	; 0x34
 8007182:	2680      	movs	r6, #128	; 0x80
 8007184:	2340      	movs	r3, #64	; 0x40
 8007186:	18fd      	adds	r5, r7, r3
 8007188:	19a9      	adds	r1, r5, r6
 800718a:	680a      	ldr	r2, [r1, #0]
 800718c:	684b      	ldr	r3, [r1, #4]
 800718e:	2000      	movs	r0, #0
 8007190:	492f      	ldr	r1, [pc, #188]	; (8007250 <MadgwickAHRSupdate+0x1a58>)
 8007192:	f7fa fecb 	bl	8001f2c <__aeabi_dsub>
 8007196:	0003      	movs	r3, r0
 8007198:	000c      	movs	r4, r1
 800719a:	0018      	movs	r0, r3
 800719c:	0021      	movs	r1, r4
 800719e:	24b0      	movs	r4, #176	; 0xb0
 80071a0:	193d      	adds	r5, r7, r4
 80071a2:	682a      	ldr	r2, [r5, #0]
 80071a4:	686b      	ldr	r3, [r5, #4]
 80071a6:	f7fa fec1 	bl	8001f2c <__aeabi_dsub>
 80071aa:	0003      	movs	r3, r0
 80071ac:	000c      	movs	r4, r1
 80071ae:	0018      	movs	r0, r3
 80071b0:	0021      	movs	r1, r4
 80071b2:	2388      	movs	r3, #136	; 0x88
 80071b4:	18fd      	adds	r5, r7, r3
 80071b6:	682a      	ldr	r2, [r5, #0]
 80071b8:	686b      	ldr	r3, [r5, #4]
 80071ba:	f7fa fc45 	bl	8001a48 <__aeabi_dmul>
 80071be:	0003      	movs	r3, r0
 80071c0:	000c      	movs	r4, r1
 80071c2:	001d      	movs	r5, r3
 80071c4:	0026      	movs	r6, r4
 80071c6:	22a8      	movs	r2, #168	; 0xa8
 80071c8:	2340      	movs	r3, #64	; 0x40
 80071ca:	18f9      	adds	r1, r7, r3
 80071cc:	1889      	adds	r1, r1, r2
 80071ce:	680a      	ldr	r2, [r1, #0]
 80071d0:	684b      	ldr	r3, [r1, #4]
 80071d2:	2188      	movs	r1, #136	; 0x88
 80071d4:	2040      	movs	r0, #64	; 0x40
 80071d6:	4684      	mov	ip, r0
 80071d8:	44bc      	add	ip, r7
 80071da:	4461      	add	r1, ip
 80071dc:	6808      	ldr	r0, [r1, #0]
 80071de:	6849      	ldr	r1, [r1, #4]
 80071e0:	f7fa fea4 	bl	8001f2c <__aeabi_dsub>
 80071e4:	0003      	movs	r3, r0
 80071e6:	000c      	movs	r4, r1
 80071e8:	0018      	movs	r0, r3
 80071ea:	0021      	movs	r1, r4
 80071ec:	2280      	movs	r2, #128	; 0x80
 80071ee:	18bc      	adds	r4, r7, r2
 80071f0:	6822      	ldr	r2, [r4, #0]
 80071f2:	6863      	ldr	r3, [r4, #4]
 80071f4:	f7fa fc28 	bl	8001a48 <__aeabi_dmul>
 80071f8:	0003      	movs	r3, r0
 80071fa:	000c      	movs	r4, r1
 80071fc:	001a      	movs	r2, r3
 80071fe:	0023      	movs	r3, r4
 8007200:	0028      	movs	r0, r5
 8007202:	0031      	movs	r1, r6
 8007204:	f7f9 fcfa 	bl	8000bfc <__aeabi_dadd>
 8007208:	0003      	movs	r3, r0
 800720a:	000c      	movs	r4, r1
 800720c:	0018      	movs	r0, r3
 800720e:	0021      	movs	r1, r4
 8007210:	25c0      	movs	r5, #192	; 0xc0
 8007212:	006d      	lsls	r5, r5, #1
 8007214:	2640      	movs	r6, #64	; 0x40
 8007216:	19bc      	adds	r4, r7, r6
 8007218:	1962      	adds	r2, r4, r5
 800721a:	6853      	ldr	r3, [r2, #4]
 800721c:	6812      	ldr	r2, [r2, #0]
 800721e:	f7fa fe85 	bl	8001f2c <__aeabi_dsub>
 8007222:	0003      	movs	r3, r0
 8007224:	000c      	movs	r4, r1
 8007226:	001a      	movs	r2, r3
 8007228:	0023      	movs	r3, r4
 800722a:	6b38      	ldr	r0, [r7, #48]	; 0x30
 800722c:	6b79      	ldr	r1, [r7, #52]	; 0x34
 800722e:	f7fa fc0b 	bl	8001a48 <__aeabi_dmul>
 8007232:	0003      	movs	r3, r0
 8007234:	000c      	movs	r4, r1
 8007236:	001a      	movs	r2, r3
 8007238:	0023      	movs	r3, r4
 800723a:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 800723c:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 800723e:	f7f9 fcdd 	bl	8000bfc <__aeabi_dadd>
 8007242:	0003      	movs	r3, r0
 8007244:	000c      	movs	r4, r1
 8007246:	e00b      	b.n	8007260 <MadgwickAHRSupdate+0x1a68>
 8007248:	200002e0 	.word	0x200002e0
 800724c:	200002d0 	.word	0x200002d0
 8007250:	3fe00000 	.word	0x3fe00000
 8007254:	200002d8 	.word	0x200002d8
 8007258:	c0100000 	.word	0xc0100000
 800725c:	20000000 	.word	0x20000000
 8007260:	63bb      	str	r3, [r7, #56]	; 0x38
 8007262:	63fc      	str	r4, [r7, #60]	; 0x3c
 8007264:	4be7      	ldr	r3, [pc, #924]	; (8007604 <MadgwickAHRSupdate+0x1e0c>)
 8007266:	6818      	ldr	r0, [r3, #0]
 8007268:	6859      	ldr	r1, [r3, #4]
 800726a:	2388      	movs	r3, #136	; 0x88
 800726c:	18fd      	adds	r5, r7, r3
 800726e:	682a      	ldr	r2, [r5, #0]
 8007270:	686b      	ldr	r3, [r5, #4]
 8007272:	f7fa fbe9 	bl	8001a48 <__aeabi_dmul>
 8007276:	0003      	movs	r3, r0
 8007278:	000c      	movs	r4, r1
 800727a:	0025      	movs	r5, r4
 800727c:	001c      	movs	r4, r3
 800727e:	4be2      	ldr	r3, [pc, #904]	; (8007608 <MadgwickAHRSupdate+0x1e10>)
 8007280:	6818      	ldr	r0, [r3, #0]
 8007282:	6859      	ldr	r1, [r3, #4]
 8007284:	2280      	movs	r2, #128	; 0x80
 8007286:	18bb      	adds	r3, r7, r2
 8007288:	681a      	ldr	r2, [r3, #0]
 800728a:	685b      	ldr	r3, [r3, #4]
 800728c:	f7fa fbdc 	bl	8001a48 <__aeabi_dmul>
 8007290:	0002      	movs	r2, r0
 8007292:	000b      	movs	r3, r1
 8007294:	0020      	movs	r0, r4
 8007296:	0029      	movs	r1, r5
 8007298:	f7f9 fcb0 	bl	8000bfc <__aeabi_dadd>
 800729c:	0003      	movs	r3, r0
 800729e:	000c      	movs	r4, r1
 80072a0:	633b      	str	r3, [r7, #48]	; 0x30
 80072a2:	637c      	str	r4, [r7, #52]	; 0x34
 80072a4:	21a0      	movs	r1, #160	; 0xa0
 80072a6:	0030      	movs	r0, r6
 80072a8:	183d      	adds	r5, r7, r0
 80072aa:	186a      	adds	r2, r5, r1
 80072ac:	6853      	ldr	r3, [r2, #4]
 80072ae:	6812      	ldr	r2, [r2, #0]
 80072b0:	2190      	movs	r1, #144	; 0x90
 80072b2:	183d      	adds	r5, r7, r0
 80072b4:	186d      	adds	r5, r5, r1
 80072b6:	6828      	ldr	r0, [r5, #0]
 80072b8:	6869      	ldr	r1, [r5, #4]
 80072ba:	f7fa fe37 	bl	8001f2c <__aeabi_dsub>
 80072be:	0003      	movs	r3, r0
 80072c0:	000c      	movs	r4, r1
 80072c2:	0018      	movs	r0, r3
 80072c4:	0021      	movs	r1, r4
 80072c6:	2388      	movs	r3, #136	; 0x88
 80072c8:	18fd      	adds	r5, r7, r3
 80072ca:	682a      	ldr	r2, [r5, #0]
 80072cc:	686b      	ldr	r3, [r5, #4]
 80072ce:	f7fa fbbb 	bl	8001a48 <__aeabi_dmul>
 80072d2:	0003      	movs	r3, r0
 80072d4:	000c      	movs	r4, r1
 80072d6:	001d      	movs	r5, r3
 80072d8:	0026      	movs	r6, r4
 80072da:	21b8      	movs	r1, #184	; 0xb8
 80072dc:	1879      	adds	r1, r7, r1
 80072de:	680a      	ldr	r2, [r1, #0]
 80072e0:	684b      	ldr	r3, [r1, #4]
 80072e2:	20b0      	movs	r0, #176	; 0xb0
 80072e4:	2140      	movs	r1, #64	; 0x40
 80072e6:	1879      	adds	r1, r7, r1
 80072e8:	1809      	adds	r1, r1, r0
 80072ea:	6808      	ldr	r0, [r1, #0]
 80072ec:	6849      	ldr	r1, [r1, #4]
 80072ee:	f7f9 fc85 	bl	8000bfc <__aeabi_dadd>
 80072f2:	0003      	movs	r3, r0
 80072f4:	000c      	movs	r4, r1
 80072f6:	0018      	movs	r0, r3
 80072f8:	0021      	movs	r1, r4
 80072fa:	2280      	movs	r2, #128	; 0x80
 80072fc:	18bb      	adds	r3, r7, r2
 80072fe:	681a      	ldr	r2, [r3, #0]
 8007300:	685b      	ldr	r3, [r3, #4]
 8007302:	f7fa fba1 	bl	8001a48 <__aeabi_dmul>
 8007306:	0003      	movs	r3, r0
 8007308:	000c      	movs	r4, r1
 800730a:	001a      	movs	r2, r3
 800730c:	0023      	movs	r3, r4
 800730e:	0028      	movs	r0, r5
 8007310:	0031      	movs	r1, r6
 8007312:	f7f9 fc73 	bl	8000bfc <__aeabi_dadd>
 8007316:	0003      	movs	r3, r0
 8007318:	000c      	movs	r4, r1
 800731a:	0018      	movs	r0, r3
 800731c:	0021      	movs	r1, r4
 800731e:	22c4      	movs	r2, #196	; 0xc4
 8007320:	0052      	lsls	r2, r2, #1
 8007322:	2540      	movs	r5, #64	; 0x40
 8007324:	46ac      	mov	ip, r5
 8007326:	44bc      	add	ip, r7
 8007328:	4462      	add	r2, ip
 800732a:	6853      	ldr	r3, [r2, #4]
 800732c:	6812      	ldr	r2, [r2, #0]
 800732e:	f7fa fdfd 	bl	8001f2c <__aeabi_dsub>
 8007332:	0003      	movs	r3, r0
 8007334:	000c      	movs	r4, r1
 8007336:	001a      	movs	r2, r3
 8007338:	0023      	movs	r3, r4
 800733a:	6b38      	ldr	r0, [r7, #48]	; 0x30
 800733c:	6b79      	ldr	r1, [r7, #52]	; 0x34
 800733e:	f7fa fb83 	bl	8001a48 <__aeabi_dmul>
 8007342:	0003      	movs	r3, r0
 8007344:	000c      	movs	r4, r1
 8007346:	001a      	movs	r2, r3
 8007348:	0023      	movs	r3, r4
 800734a:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 800734c:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 800734e:	f7f9 fc55 	bl	8000bfc <__aeabi_dadd>
 8007352:	0003      	movs	r3, r0
 8007354:	000c      	movs	r4, r1
 8007356:	63bb      	str	r3, [r7, #56]	; 0x38
 8007358:	63fc      	str	r4, [r7, #60]	; 0x3c
 800735a:	4bac      	ldr	r3, [pc, #688]	; (800760c <MadgwickAHRSupdate+0x1e14>)
 800735c:	6818      	ldr	r0, [r3, #0]
 800735e:	6859      	ldr	r1, [r3, #4]
 8007360:	2388      	movs	r3, #136	; 0x88
 8007362:	001e      	movs	r6, r3
 8007364:	18fb      	adds	r3, r7, r3
 8007366:	681a      	ldr	r2, [r3, #0]
 8007368:	685b      	ldr	r3, [r3, #4]
 800736a:	f7fa fb6d 	bl	8001a48 <__aeabi_dmul>
 800736e:	0003      	movs	r3, r0
 8007370:	000c      	movs	r4, r1
 8007372:	0025      	movs	r5, r4
 8007374:	001c      	movs	r4, r3
 8007376:	4ba6      	ldr	r3, [pc, #664]	; (8007610 <MadgwickAHRSupdate+0x1e18>)
 8007378:	6818      	ldr	r0, [r3, #0]
 800737a:	6859      	ldr	r1, [r3, #4]
 800737c:	6f3a      	ldr	r2, [r7, #112]	; 0x70
 800737e:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 8007380:	f7fa fb62 	bl	8001a48 <__aeabi_dmul>
 8007384:	0002      	movs	r2, r0
 8007386:	000b      	movs	r3, r1
 8007388:	0020      	movs	r0, r4
 800738a:	0029      	movs	r1, r5
 800738c:	f7fa fdce 	bl	8001f2c <__aeabi_dsub>
 8007390:	0003      	movs	r3, r0
 8007392:	000c      	movs	r4, r1
 8007394:	633b      	str	r3, [r7, #48]	; 0x30
 8007396:	637c      	str	r4, [r7, #52]	; 0x34
 8007398:	2188      	movs	r1, #136	; 0x88
 800739a:	2040      	movs	r0, #64	; 0x40
 800739c:	183b      	adds	r3, r7, r0
 800739e:	185a      	adds	r2, r3, r1
 80073a0:	6853      	ldr	r3, [r2, #4]
 80073a2:	6812      	ldr	r2, [r2, #0]
 80073a4:	21a8      	movs	r1, #168	; 0xa8
 80073a6:	183d      	adds	r5, r7, r0
 80073a8:	186c      	adds	r4, r5, r1
 80073aa:	6820      	ldr	r0, [r4, #0]
 80073ac:	6861      	ldr	r1, [r4, #4]
 80073ae:	f7f9 fc25 	bl	8000bfc <__aeabi_dadd>
 80073b2:	0003      	movs	r3, r0
 80073b4:	000c      	movs	r4, r1
 80073b6:	0018      	movs	r0, r3
 80073b8:	0021      	movs	r1, r4
 80073ba:	0033      	movs	r3, r6
 80073bc:	18fe      	adds	r6, r7, r3
 80073be:	6832      	ldr	r2, [r6, #0]
 80073c0:	6873      	ldr	r3, [r6, #4]
 80073c2:	f7fa fb41 	bl	8001a48 <__aeabi_dmul>
 80073c6:	0003      	movs	r3, r0
 80073c8:	000c      	movs	r4, r1
 80073ca:	001d      	movs	r5, r3
 80073cc:	0026      	movs	r6, r4
 80073ce:	2198      	movs	r1, #152	; 0x98
 80073d0:	2040      	movs	r0, #64	; 0x40
 80073d2:	183c      	adds	r4, r7, r0
 80073d4:	1862      	adds	r2, r4, r1
 80073d6:	6853      	ldr	r3, [r2, #4]
 80073d8:	6812      	ldr	r2, [r2, #0]
 80073da:	2000      	movs	r0, #0
 80073dc:	498d      	ldr	r1, [pc, #564]	; (8007614 <MadgwickAHRSupdate+0x1e1c>)
 80073de:	f7fa fda5 	bl	8001f2c <__aeabi_dsub>
 80073e2:	0003      	movs	r3, r0
 80073e4:	000c      	movs	r4, r1
 80073e6:	0018      	movs	r0, r3
 80073e8:	0021      	movs	r1, r4
 80073ea:	2380      	movs	r3, #128	; 0x80
 80073ec:	2240      	movs	r2, #64	; 0x40
 80073ee:	18bc      	adds	r4, r7, r2
 80073f0:	18e2      	adds	r2, r4, r3
 80073f2:	6853      	ldr	r3, [r2, #4]
 80073f4:	6812      	ldr	r2, [r2, #0]
 80073f6:	f7fa fd99 	bl	8001f2c <__aeabi_dsub>
 80073fa:	0003      	movs	r3, r0
 80073fc:	000c      	movs	r4, r1
 80073fe:	0018      	movs	r0, r3
 8007400:	0021      	movs	r1, r4
 8007402:	2280      	movs	r2, #128	; 0x80
 8007404:	18bc      	adds	r4, r7, r2
 8007406:	6822      	ldr	r2, [r4, #0]
 8007408:	6863      	ldr	r3, [r4, #4]
 800740a:	f7fa fb1d 	bl	8001a48 <__aeabi_dmul>
 800740e:	0003      	movs	r3, r0
 8007410:	000c      	movs	r4, r1
 8007412:	001a      	movs	r2, r3
 8007414:	0023      	movs	r3, r4
 8007416:	0028      	movs	r0, r5
 8007418:	0031      	movs	r1, r6
 800741a:	f7f9 fbef 	bl	8000bfc <__aeabi_dadd>
 800741e:	0003      	movs	r3, r0
 8007420:	000c      	movs	r4, r1
 8007422:	0018      	movs	r0, r3
 8007424:	0021      	movs	r1, r4
 8007426:	24c8      	movs	r4, #200	; 0xc8
 8007428:	0064      	lsls	r4, r4, #1
 800742a:	2540      	movs	r5, #64	; 0x40
 800742c:	197e      	adds	r6, r7, r5
 800742e:	1932      	adds	r2, r6, r4
 8007430:	6853      	ldr	r3, [r2, #4]
 8007432:	6812      	ldr	r2, [r2, #0]
 8007434:	f7fa fd7a 	bl	8001f2c <__aeabi_dsub>
 8007438:	0003      	movs	r3, r0
 800743a:	000c      	movs	r4, r1
 800743c:	001a      	movs	r2, r3
 800743e:	0023      	movs	r3, r4
 8007440:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8007442:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8007444:	f7fa fb00 	bl	8001a48 <__aeabi_dmul>
 8007448:	0003      	movs	r3, r0
 800744a:	000c      	movs	r4, r1
 800744c:	001a      	movs	r2, r3
 800744e:	0023      	movs	r3, r4
 8007450:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 8007452:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8007454:	f7f9 fbd2 	bl	8000bfc <__aeabi_dadd>
 8007458:	0003      	movs	r3, r0
 800745a:	000c      	movs	r4, r1
 800745c:	65bb      	str	r3, [r7, #88]	; 0x58
 800745e:	65fc      	str	r4, [r7, #92]	; 0x5c
 8007460:	21a8      	movs	r1, #168	; 0xa8
 8007462:	197e      	adds	r6, r7, r5
 8007464:	1872      	adds	r2, r6, r1
 8007466:	6853      	ldr	r3, [r2, #4]
 8007468:	6812      	ldr	r2, [r2, #0]
 800746a:	2088      	movs	r0, #136	; 0x88
 800746c:	1979      	adds	r1, r7, r5
 800746e:	180c      	adds	r4, r1, r0
 8007470:	6820      	ldr	r0, [r4, #0]
 8007472:	6861      	ldr	r1, [r4, #4]
 8007474:	f7fa fd5a 	bl	8001f2c <__aeabi_dsub>
 8007478:	0003      	movs	r3, r0
 800747a:	000c      	movs	r4, r1
 800747c:	0018      	movs	r0, r3
 800747e:	0021      	movs	r1, r4
 8007480:	0002      	movs	r2, r0
 8007482:	000b      	movs	r3, r1
 8007484:	f7f9 fbba 	bl	8000bfc <__aeabi_dadd>
 8007488:	0003      	movs	r3, r0
 800748a:	000c      	movs	r4, r1
 800748c:	0018      	movs	r0, r3
 800748e:	0021      	movs	r1, r4
 8007490:	26b4      	movs	r6, #180	; 0xb4
 8007492:	0076      	lsls	r6, r6, #1
 8007494:	197c      	adds	r4, r7, r5
 8007496:	19a2      	adds	r2, r4, r6
 8007498:	6853      	ldr	r3, [r2, #4]
 800749a:	6812      	ldr	r2, [r2, #0]
 800749c:	f7fa fd46 	bl	8001f2c <__aeabi_dsub>
 80074a0:	0003      	movs	r3, r0
 80074a2:	000c      	movs	r4, r1
 80074a4:	0018      	movs	r0, r3
 80074a6:	0021      	movs	r1, r4
 80074a8:	26e0      	movs	r6, #224	; 0xe0
 80074aa:	002b      	movs	r3, r5
 80074ac:	18fd      	adds	r5, r7, r3
 80074ae:	19aa      	adds	r2, r5, r6
 80074b0:	6853      	ldr	r3, [r2, #4]
 80074b2:	6812      	ldr	r2, [r2, #0]
 80074b4:	f7fa fac8 	bl	8001a48 <__aeabi_dmul>
 80074b8:	0003      	movs	r3, r0
 80074ba:	000c      	movs	r4, r1
 80074bc:	0025      	movs	r5, r4
 80074be:	001c      	movs	r4, r3
 80074c0:	20b8      	movs	r0, #184	; 0xb8
 80074c2:	1839      	adds	r1, r7, r0
 80074c4:	680a      	ldr	r2, [r1, #0]
 80074c6:	684b      	ldr	r3, [r1, #4]
 80074c8:	20b0      	movs	r0, #176	; 0xb0
 80074ca:	2140      	movs	r1, #64	; 0x40
 80074cc:	1879      	adds	r1, r7, r1
 80074ce:	180e      	adds	r6, r1, r0
 80074d0:	6830      	ldr	r0, [r6, #0]
 80074d2:	6871      	ldr	r1, [r6, #4]
 80074d4:	f7f9 fb92 	bl	8000bfc <__aeabi_dadd>
 80074d8:	0002      	movs	r2, r0
 80074da:	000b      	movs	r3, r1
 80074dc:	0010      	movs	r0, r2
 80074de:	0019      	movs	r1, r3
 80074e0:	0002      	movs	r2, r0
 80074e2:	000b      	movs	r3, r1
 80074e4:	f7f9 fb8a 	bl	8000bfc <__aeabi_dadd>
 80074e8:	0002      	movs	r2, r0
 80074ea:	000b      	movs	r3, r1
 80074ec:	0010      	movs	r0, r2
 80074ee:	0019      	movs	r1, r3
 80074f0:	23b8      	movs	r3, #184	; 0xb8
 80074f2:	005b      	lsls	r3, r3, #1
 80074f4:	2640      	movs	r6, #64	; 0x40
 80074f6:	46b4      	mov	ip, r6
 80074f8:	44bc      	add	ip, r7
 80074fa:	4463      	add	r3, ip
 80074fc:	681a      	ldr	r2, [r3, #0]
 80074fe:	685b      	ldr	r3, [r3, #4]
 8007500:	f7fa fd14 	bl	8001f2c <__aeabi_dsub>
 8007504:	0002      	movs	r2, r0
 8007506:	000b      	movs	r3, r1
 8007508:	0010      	movs	r0, r2
 800750a:	0019      	movs	r1, r3
 800750c:	26d8      	movs	r6, #216	; 0xd8
 800750e:	2340      	movs	r3, #64	; 0x40
 8007510:	18fb      	adds	r3, r7, r3
 8007512:	199b      	adds	r3, r3, r6
 8007514:	681a      	ldr	r2, [r3, #0]
 8007516:	685b      	ldr	r3, [r3, #4]
 8007518:	f7fa fa96 	bl	8001a48 <__aeabi_dmul>
 800751c:	0002      	movs	r2, r0
 800751e:	000b      	movs	r3, r1
 8007520:	0020      	movs	r0, r4
 8007522:	0029      	movs	r1, r5
 8007524:	f7f9 fb6a 	bl	8000bfc <__aeabi_dadd>
 8007528:	0003      	movs	r3, r0
 800752a:	000c      	movs	r4, r1
 800752c:	63bb      	str	r3, [r7, #56]	; 0x38
 800752e:	63fc      	str	r4, [r7, #60]	; 0x3c
 8007530:	6fbb      	ldr	r3, [r7, #120]	; 0x78
 8007532:	60bb      	str	r3, [r7, #8]
 8007534:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
 8007536:	2280      	movs	r2, #128	; 0x80
 8007538:	0612      	lsls	r2, r2, #24
 800753a:	0014      	movs	r4, r2
 800753c:	405c      	eors	r4, r3
 800753e:	60fc      	str	r4, [r7, #12]
 8007540:	4b31      	ldr	r3, [pc, #196]	; (8007608 <MadgwickAHRSupdate+0x1e10>)
 8007542:	685c      	ldr	r4, [r3, #4]
 8007544:	681b      	ldr	r3, [r3, #0]
 8007546:	001a      	movs	r2, r3
 8007548:	0023      	movs	r3, r4
 800754a:	68b8      	ldr	r0, [r7, #8]
 800754c:	68f9      	ldr	r1, [r7, #12]
 800754e:	f7fa fa7b 	bl	8001a48 <__aeabi_dmul>
 8007552:	0003      	movs	r3, r0
 8007554:	000c      	movs	r4, r1
 8007556:	0025      	movs	r5, r4
 8007558:	001c      	movs	r4, r3
 800755a:	4b2a      	ldr	r3, [pc, #168]	; (8007604 <MadgwickAHRSupdate+0x1e0c>)
 800755c:	6818      	ldr	r0, [r3, #0]
 800755e:	6859      	ldr	r1, [r3, #4]
 8007560:	2280      	movs	r2, #128	; 0x80
 8007562:	18be      	adds	r6, r7, r2
 8007564:	6832      	ldr	r2, [r6, #0]
 8007566:	6873      	ldr	r3, [r6, #4]
 8007568:	f7fa fa6e 	bl	8001a48 <__aeabi_dmul>
 800756c:	0002      	movs	r2, r0
 800756e:	000b      	movs	r3, r1
 8007570:	0020      	movs	r0, r4
 8007572:	0029      	movs	r1, r5
 8007574:	f7f9 fb42 	bl	8000bfc <__aeabi_dadd>
 8007578:	0003      	movs	r3, r0
 800757a:	000c      	movs	r4, r1
 800757c:	001d      	movs	r5, r3
 800757e:	0026      	movs	r6, r4
 8007580:	2180      	movs	r1, #128	; 0x80
 8007582:	2340      	movs	r3, #64	; 0x40
 8007584:	18f8      	adds	r0, r7, r3
 8007586:	1844      	adds	r4, r0, r1
 8007588:	6822      	ldr	r2, [r4, #0]
 800758a:	6863      	ldr	r3, [r4, #4]
 800758c:	2000      	movs	r0, #0
 800758e:	4921      	ldr	r1, [pc, #132]	; (8007614 <MadgwickAHRSupdate+0x1e1c>)
 8007590:	f7fa fccc 	bl	8001f2c <__aeabi_dsub>
 8007594:	0003      	movs	r3, r0
 8007596:	000c      	movs	r4, r1
 8007598:	0018      	movs	r0, r3
 800759a:	0021      	movs	r1, r4
 800759c:	24b0      	movs	r4, #176	; 0xb0
 800759e:	193c      	adds	r4, r7, r4
 80075a0:	6822      	ldr	r2, [r4, #0]
 80075a2:	6863      	ldr	r3, [r4, #4]
 80075a4:	f7fa fcc2 	bl	8001f2c <__aeabi_dsub>
 80075a8:	0003      	movs	r3, r0
 80075aa:	000c      	movs	r4, r1
 80075ac:	0018      	movs	r0, r3
 80075ae:	0021      	movs	r1, r4
 80075b0:	2388      	movs	r3, #136	; 0x88
 80075b2:	18fc      	adds	r4, r7, r3
 80075b4:	6822      	ldr	r2, [r4, #0]
 80075b6:	6863      	ldr	r3, [r4, #4]
 80075b8:	f7fa fa46 	bl	8001a48 <__aeabi_dmul>
 80075bc:	0003      	movs	r3, r0
 80075be:	000c      	movs	r4, r1
 80075c0:	633b      	str	r3, [r7, #48]	; 0x30
 80075c2:	637c      	str	r4, [r7, #52]	; 0x34
 80075c4:	21a8      	movs	r1, #168	; 0xa8
 80075c6:	2340      	movs	r3, #64	; 0x40
 80075c8:	18fc      	adds	r4, r7, r3
 80075ca:	1864      	adds	r4, r4, r1
 80075cc:	6822      	ldr	r2, [r4, #0]
 80075ce:	6863      	ldr	r3, [r4, #4]
 80075d0:	2088      	movs	r0, #136	; 0x88
 80075d2:	2140      	movs	r1, #64	; 0x40
 80075d4:	187c      	adds	r4, r7, r1
 80075d6:	1824      	adds	r4, r4, r0
 80075d8:	6820      	ldr	r0, [r4, #0]
 80075da:	6861      	ldr	r1, [r4, #4]
 80075dc:	f7fa fca6 	bl	8001f2c <__aeabi_dsub>
 80075e0:	0003      	movs	r3, r0
 80075e2:	000c      	movs	r4, r1
 80075e4:	0018      	movs	r0, r3
 80075e6:	0021      	movs	r1, r4
 80075e8:	2280      	movs	r2, #128	; 0x80
 80075ea:	18bc      	adds	r4, r7, r2
 80075ec:	6822      	ldr	r2, [r4, #0]
 80075ee:	6863      	ldr	r3, [r4, #4]
 80075f0:	f7fa fa2a 	bl	8001a48 <__aeabi_dmul>
 80075f4:	0003      	movs	r3, r0
 80075f6:	000c      	movs	r4, r1
 80075f8:	001a      	movs	r2, r3
 80075fa:	0023      	movs	r3, r4
 80075fc:	6b38      	ldr	r0, [r7, #48]	; 0x30
 80075fe:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8007600:	e00a      	b.n	8007618 <MadgwickAHRSupdate+0x1e20>
 8007602:	46c0      	nop			; (mov r8, r8)
 8007604:	200002d0 	.word	0x200002d0
 8007608:	200002e0 	.word	0x200002e0
 800760c:	20000000 	.word	0x20000000
 8007610:	200002d8 	.word	0x200002d8
 8007614:	3fe00000 	.word	0x3fe00000
 8007618:	f7f9 faf0 	bl	8000bfc <__aeabi_dadd>
 800761c:	0003      	movs	r3, r0
 800761e:	000c      	movs	r4, r1
 8007620:	0018      	movs	r0, r3
 8007622:	0021      	movs	r1, r4
 8007624:	23c0      	movs	r3, #192	; 0xc0
 8007626:	005b      	lsls	r3, r3, #1
 8007628:	2440      	movs	r4, #64	; 0x40
 800762a:	46a4      	mov	ip, r4
 800762c:	44bc      	add	ip, r7
 800762e:	4463      	add	r3, ip
 8007630:	681a      	ldr	r2, [r3, #0]
 8007632:	685b      	ldr	r3, [r3, #4]
 8007634:	f7fa fc7a 	bl	8001f2c <__aeabi_dsub>
 8007638:	0003      	movs	r3, r0
 800763a:	000c      	movs	r4, r1
 800763c:	001a      	movs	r2, r3
 800763e:	0023      	movs	r3, r4
 8007640:	0028      	movs	r0, r5
 8007642:	0031      	movs	r1, r6
 8007644:	f7fa fa00 	bl	8001a48 <__aeabi_dmul>
 8007648:	0003      	movs	r3, r0
 800764a:	000c      	movs	r4, r1
 800764c:	001a      	movs	r2, r3
 800764e:	0023      	movs	r3, r4
 8007650:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 8007652:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8007654:	f7f9 fad2 	bl	8000bfc <__aeabi_dadd>
 8007658:	0003      	movs	r3, r0
 800765a:	000c      	movs	r4, r1
 800765c:	001d      	movs	r5, r3
 800765e:	0026      	movs	r6, r4
 8007660:	2388      	movs	r3, #136	; 0x88
 8007662:	18fc      	adds	r4, r7, r3
 8007664:	6823      	ldr	r3, [r4, #0]
 8007666:	603b      	str	r3, [r7, #0]
 8007668:	248c      	movs	r4, #140	; 0x8c
 800766a:	193c      	adds	r4, r7, r4
 800766c:	6823      	ldr	r3, [r4, #0]
 800766e:	2280      	movs	r2, #128	; 0x80
 8007670:	0612      	lsls	r2, r2, #24
 8007672:	405a      	eors	r2, r3
 8007674:	607a      	str	r2, [r7, #4]
 8007676:	4be4      	ldr	r3, [pc, #912]	; (8007a08 <MadgwickAHRSupdate+0x2210>)
 8007678:	685c      	ldr	r4, [r3, #4]
 800767a:	681b      	ldr	r3, [r3, #0]
 800767c:	001a      	movs	r2, r3
 800767e:	0023      	movs	r3, r4
 8007680:	6838      	ldr	r0, [r7, #0]
 8007682:	6879      	ldr	r1, [r7, #4]
 8007684:	f7fa f9e0 	bl	8001a48 <__aeabi_dmul>
 8007688:	0003      	movs	r3, r0
 800768a:	000c      	movs	r4, r1
 800768c:	63bb      	str	r3, [r7, #56]	; 0x38
 800768e:	63fc      	str	r4, [r7, #60]	; 0x3c
 8007690:	4bde      	ldr	r3, [pc, #888]	; (8007a0c <MadgwickAHRSupdate+0x2214>)
 8007692:	6818      	ldr	r0, [r3, #0]
 8007694:	6859      	ldr	r1, [r3, #4]
 8007696:	2280      	movs	r2, #128	; 0x80
 8007698:	18bc      	adds	r4, r7, r2
 800769a:	6822      	ldr	r2, [r4, #0]
 800769c:	6863      	ldr	r3, [r4, #4]
 800769e:	f7fa f9d3 	bl	8001a48 <__aeabi_dmul>
 80076a2:	0003      	movs	r3, r0
 80076a4:	000c      	movs	r4, r1
 80076a6:	001a      	movs	r2, r3
 80076a8:	0023      	movs	r3, r4
 80076aa:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 80076ac:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 80076ae:	f7f9 faa5 	bl	8000bfc <__aeabi_dadd>
 80076b2:	0003      	movs	r3, r0
 80076b4:	000c      	movs	r4, r1
 80076b6:	63bb      	str	r3, [r7, #56]	; 0x38
 80076b8:	63fc      	str	r4, [r7, #60]	; 0x3c
 80076ba:	23a0      	movs	r3, #160	; 0xa0
 80076bc:	2440      	movs	r4, #64	; 0x40
 80076be:	46a4      	mov	ip, r4
 80076c0:	44bc      	add	ip, r7
 80076c2:	4463      	add	r3, ip
 80076c4:	681a      	ldr	r2, [r3, #0]
 80076c6:	685b      	ldr	r3, [r3, #4]
 80076c8:	2490      	movs	r4, #144	; 0x90
 80076ca:	2140      	movs	r1, #64	; 0x40
 80076cc:	468c      	mov	ip, r1
 80076ce:	44bc      	add	ip, r7
 80076d0:	4464      	add	r4, ip
 80076d2:	6820      	ldr	r0, [r4, #0]
 80076d4:	6861      	ldr	r1, [r4, #4]
 80076d6:	f7fa fc29 	bl	8001f2c <__aeabi_dsub>
 80076da:	0003      	movs	r3, r0
 80076dc:	000c      	movs	r4, r1
 80076de:	0018      	movs	r0, r3
 80076e0:	0021      	movs	r1, r4
 80076e2:	2388      	movs	r3, #136	; 0x88
 80076e4:	18fc      	adds	r4, r7, r3
 80076e6:	6822      	ldr	r2, [r4, #0]
 80076e8:	6863      	ldr	r3, [r4, #4]
 80076ea:	f7fa f9ad 	bl	8001a48 <__aeabi_dmul>
 80076ee:	0003      	movs	r3, r0
 80076f0:	000c      	movs	r4, r1
 80076f2:	633b      	str	r3, [r7, #48]	; 0x30
 80076f4:	637c      	str	r4, [r7, #52]	; 0x34
 80076f6:	20b8      	movs	r0, #184	; 0xb8
 80076f8:	1838      	adds	r0, r7, r0
 80076fa:	6802      	ldr	r2, [r0, #0]
 80076fc:	6843      	ldr	r3, [r0, #4]
 80076fe:	20b0      	movs	r0, #176	; 0xb0
 8007700:	2140      	movs	r1, #64	; 0x40
 8007702:	187c      	adds	r4, r7, r1
 8007704:	1824      	adds	r4, r4, r0
 8007706:	6820      	ldr	r0, [r4, #0]
 8007708:	6861      	ldr	r1, [r4, #4]
 800770a:	f7f9 fa77 	bl	8000bfc <__aeabi_dadd>
 800770e:	0003      	movs	r3, r0
 8007710:	000c      	movs	r4, r1
 8007712:	0018      	movs	r0, r3
 8007714:	0021      	movs	r1, r4
 8007716:	2280      	movs	r2, #128	; 0x80
 8007718:	18bc      	adds	r4, r7, r2
 800771a:	6822      	ldr	r2, [r4, #0]
 800771c:	6863      	ldr	r3, [r4, #4]
 800771e:	f7fa f993 	bl	8001a48 <__aeabi_dmul>
 8007722:	0003      	movs	r3, r0
 8007724:	000c      	movs	r4, r1
 8007726:	001a      	movs	r2, r3
 8007728:	0023      	movs	r3, r4
 800772a:	6b38      	ldr	r0, [r7, #48]	; 0x30
 800772c:	6b79      	ldr	r1, [r7, #52]	; 0x34
 800772e:	f7f9 fa65 	bl	8000bfc <__aeabi_dadd>
 8007732:	0003      	movs	r3, r0
 8007734:	000c      	movs	r4, r1
 8007736:	0018      	movs	r0, r3
 8007738:	0021      	movs	r1, r4
 800773a:	22c4      	movs	r2, #196	; 0xc4
 800773c:	0052      	lsls	r2, r2, #1
 800773e:	2440      	movs	r4, #64	; 0x40
 8007740:	46a4      	mov	ip, r4
 8007742:	44bc      	add	ip, r7
 8007744:	4462      	add	r2, ip
 8007746:	6853      	ldr	r3, [r2, #4]
 8007748:	6812      	ldr	r2, [r2, #0]
 800774a:	f7fa fbef 	bl	8001f2c <__aeabi_dsub>
 800774e:	0003      	movs	r3, r0
 8007750:	000c      	movs	r4, r1
 8007752:	001a      	movs	r2, r3
 8007754:	0023      	movs	r3, r4
 8007756:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 8007758:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 800775a:	f7fa f975 	bl	8001a48 <__aeabi_dmul>
 800775e:	0003      	movs	r3, r0
 8007760:	000c      	movs	r4, r1
 8007762:	001a      	movs	r2, r3
 8007764:	0023      	movs	r3, r4
 8007766:	0028      	movs	r0, r5
 8007768:	0031      	movs	r1, r6
 800776a:	f7f9 fa47 	bl	8000bfc <__aeabi_dadd>
 800776e:	0003      	movs	r3, r0
 8007770:	000c      	movs	r4, r1
 8007772:	0025      	movs	r5, r4
 8007774:	001c      	movs	r4, r3
 8007776:	4ba6      	ldr	r3, [pc, #664]	; (8007a10 <MadgwickAHRSupdate+0x2218>)
 8007778:	6818      	ldr	r0, [r3, #0]
 800777a:	6859      	ldr	r1, [r3, #4]
 800777c:	2388      	movs	r3, #136	; 0x88
 800777e:	18fb      	adds	r3, r7, r3
 8007780:	681a      	ldr	r2, [r3, #0]
 8007782:	685b      	ldr	r3, [r3, #4]
 8007784:	f7fa f960 	bl	8001a48 <__aeabi_dmul>
 8007788:	0002      	movs	r2, r0
 800778a:	000b      	movs	r3, r1
 800778c:	63ba      	str	r2, [r7, #56]	; 0x38
 800778e:	63fb      	str	r3, [r7, #60]	; 0x3c
 8007790:	2088      	movs	r0, #136	; 0x88
 8007792:	2640      	movs	r6, #64	; 0x40
 8007794:	19b9      	adds	r1, r7, r6
 8007796:	180a      	adds	r2, r1, r0
 8007798:	6853      	ldr	r3, [r2, #4]
 800779a:	6812      	ldr	r2, [r2, #0]
 800779c:	21a8      	movs	r1, #168	; 0xa8
 800779e:	19b8      	adds	r0, r7, r6
 80077a0:	1840      	adds	r0, r0, r1
 80077a2:	6841      	ldr	r1, [r0, #4]
 80077a4:	6800      	ldr	r0, [r0, #0]
 80077a6:	f7f9 fa29 	bl	8000bfc <__aeabi_dadd>
 80077aa:	0002      	movs	r2, r0
 80077ac:	000b      	movs	r3, r1
 80077ae:	0010      	movs	r0, r2
 80077b0:	0019      	movs	r1, r3
 80077b2:	2388      	movs	r3, #136	; 0x88
 80077b4:	18fb      	adds	r3, r7, r3
 80077b6:	681a      	ldr	r2, [r3, #0]
 80077b8:	685b      	ldr	r3, [r3, #4]
 80077ba:	f7fa f945 	bl	8001a48 <__aeabi_dmul>
 80077be:	0002      	movs	r2, r0
 80077c0:	000b      	movs	r3, r1
 80077c2:	633a      	str	r2, [r7, #48]	; 0x30
 80077c4:	637b      	str	r3, [r7, #52]	; 0x34
 80077c6:	2198      	movs	r1, #152	; 0x98
 80077c8:	2040      	movs	r0, #64	; 0x40
 80077ca:	4684      	mov	ip, r0
 80077cc:	44bc      	add	ip, r7
 80077ce:	4461      	add	r1, ip
 80077d0:	680a      	ldr	r2, [r1, #0]
 80077d2:	684b      	ldr	r3, [r1, #4]
 80077d4:	2000      	movs	r0, #0
 80077d6:	498f      	ldr	r1, [pc, #572]	; (8007a14 <MadgwickAHRSupdate+0x221c>)
 80077d8:	f7fa fba8 	bl	8001f2c <__aeabi_dsub>
 80077dc:	0002      	movs	r2, r0
 80077de:	000b      	movs	r3, r1
 80077e0:	0010      	movs	r0, r2
 80077e2:	0019      	movs	r1, r3
 80077e4:	2680      	movs	r6, #128	; 0x80
 80077e6:	2340      	movs	r3, #64	; 0x40
 80077e8:	18fb      	adds	r3, r7, r3
 80077ea:	199b      	adds	r3, r3, r6
 80077ec:	681a      	ldr	r2, [r3, #0]
 80077ee:	685b      	ldr	r3, [r3, #4]
 80077f0:	f7fa fb9c 	bl	8001f2c <__aeabi_dsub>
 80077f4:	0002      	movs	r2, r0
 80077f6:	000b      	movs	r3, r1
 80077f8:	0010      	movs	r0, r2
 80077fa:	0019      	movs	r1, r3
 80077fc:	2280      	movs	r2, #128	; 0x80
 80077fe:	18ba      	adds	r2, r7, r2
 8007800:	6853      	ldr	r3, [r2, #4]
 8007802:	6812      	ldr	r2, [r2, #0]
 8007804:	f7fa f920 	bl	8001a48 <__aeabi_dmul>
 8007808:	0002      	movs	r2, r0
 800780a:	000b      	movs	r3, r1
 800780c:	6b38      	ldr	r0, [r7, #48]	; 0x30
 800780e:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8007810:	f7f9 f9f4 	bl	8000bfc <__aeabi_dadd>
 8007814:	0002      	movs	r2, r0
 8007816:	000b      	movs	r3, r1
 8007818:	0010      	movs	r0, r2
 800781a:	0019      	movs	r1, r3
 800781c:	23c8      	movs	r3, #200	; 0xc8
 800781e:	005b      	lsls	r3, r3, #1
 8007820:	2240      	movs	r2, #64	; 0x40
 8007822:	4694      	mov	ip, r2
 8007824:	44bc      	add	ip, r7
 8007826:	4463      	add	r3, ip
 8007828:	681a      	ldr	r2, [r3, #0]
 800782a:	685b      	ldr	r3, [r3, #4]
 800782c:	f7fa fb7e 	bl	8001f2c <__aeabi_dsub>
 8007830:	0002      	movs	r2, r0
 8007832:	000b      	movs	r3, r1
 8007834:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 8007836:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8007838:	f7fa f906 	bl	8001a48 <__aeabi_dmul>
 800783c:	0002      	movs	r2, r0
 800783e:	000b      	movs	r3, r1
 8007840:	0020      	movs	r0, r4
 8007842:	0029      	movs	r1, r5
 8007844:	f7f9 f9da 	bl	8000bfc <__aeabi_dadd>
 8007848:	0003      	movs	r3, r0
 800784a:	000c      	movs	r4, r1
 800784c:	653b      	str	r3, [r7, #80]	; 0x50
 800784e:	657c      	str	r4, [r7, #84]	; 0x54
 8007850:	6eba      	ldr	r2, [r7, #104]	; 0x68
 8007852:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8007854:	6eb8      	ldr	r0, [r7, #104]	; 0x68
 8007856:	6ef9      	ldr	r1, [r7, #108]	; 0x6c
 8007858:	f7fa f8f6 	bl	8001a48 <__aeabi_dmul>
 800785c:	0003      	movs	r3, r0
 800785e:	000c      	movs	r4, r1
 8007860:	0025      	movs	r5, r4
 8007862:	001c      	movs	r4, r3
 8007864:	6e3a      	ldr	r2, [r7, #96]	; 0x60
 8007866:	6e7b      	ldr	r3, [r7, #100]	; 0x64
 8007868:	6e38      	ldr	r0, [r7, #96]	; 0x60
 800786a:	6e79      	ldr	r1, [r7, #100]	; 0x64
 800786c:	f7fa f8ec 	bl	8001a48 <__aeabi_dmul>
 8007870:	0002      	movs	r2, r0
 8007872:	000b      	movs	r3, r1
 8007874:	0020      	movs	r0, r4
 8007876:	0029      	movs	r1, r5
 8007878:	f7f9 f9c0 	bl	8000bfc <__aeabi_dadd>
 800787c:	0003      	movs	r3, r0
 800787e:	000c      	movs	r4, r1
 8007880:	0025      	movs	r5, r4
 8007882:	001c      	movs	r4, r3
 8007884:	6dba      	ldr	r2, [r7, #88]	; 0x58
 8007886:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
 8007888:	6db8      	ldr	r0, [r7, #88]	; 0x58
 800788a:	6df9      	ldr	r1, [r7, #92]	; 0x5c
 800788c:	f7fa f8dc 	bl	8001a48 <__aeabi_dmul>
 8007890:	0002      	movs	r2, r0
 8007892:	000b      	movs	r3, r1
 8007894:	0020      	movs	r0, r4
 8007896:	0029      	movs	r1, r5
 8007898:	f7f9 f9b0 	bl	8000bfc <__aeabi_dadd>
 800789c:	0003      	movs	r3, r0
 800789e:	000c      	movs	r4, r1
 80078a0:	0025      	movs	r5, r4
 80078a2:	001c      	movs	r4, r3
 80078a4:	6d3a      	ldr	r2, [r7, #80]	; 0x50
 80078a6:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 80078a8:	6d38      	ldr	r0, [r7, #80]	; 0x50
 80078aa:	6d79      	ldr	r1, [r7, #84]	; 0x54
 80078ac:	f7fa f8cc 	bl	8001a48 <__aeabi_dmul>
 80078b0:	0002      	movs	r2, r0
 80078b2:	000b      	movs	r3, r1
 80078b4:	0020      	movs	r0, r4
 80078b6:	0029      	movs	r1, r5
 80078b8:	f7f9 f9a0 	bl	8000bfc <__aeabi_dadd>
 80078bc:	0003      	movs	r3, r0
 80078be:	000c      	movs	r4, r1
 80078c0:	0018      	movs	r0, r3
 80078c2:	0021      	movs	r1, r4
 80078c4:	f001 f80e 	bl	80088e4 <invSqrt>
 80078c8:	0003      	movs	r3, r0
 80078ca:	000c      	movs	r4, r1
 80078cc:	2588      	movs	r5, #136	; 0x88
 80078ce:	006d      	lsls	r5, r5, #1
 80078d0:	2640      	movs	r6, #64	; 0x40
 80078d2:	19ba      	adds	r2, r7, r6
 80078d4:	1952      	adds	r2, r2, r5
 80078d6:	6013      	str	r3, [r2, #0]
 80078d8:	6054      	str	r4, [r2, #4]
 80078da:	19bb      	adds	r3, r7, r6
 80078dc:	195b      	adds	r3, r3, r5
 80078de:	681a      	ldr	r2, [r3, #0]
 80078e0:	685b      	ldr	r3, [r3, #4]
 80078e2:	6eb8      	ldr	r0, [r7, #104]	; 0x68
 80078e4:	6ef9      	ldr	r1, [r7, #108]	; 0x6c
 80078e6:	f7fa f8af 	bl	8001a48 <__aeabi_dmul>
 80078ea:	0003      	movs	r3, r0
 80078ec:	000c      	movs	r4, r1
 80078ee:	66bb      	str	r3, [r7, #104]	; 0x68
 80078f0:	66fc      	str	r4, [r7, #108]	; 0x6c
 80078f2:	19bb      	adds	r3, r7, r6
 80078f4:	195b      	adds	r3, r3, r5
 80078f6:	681a      	ldr	r2, [r3, #0]
 80078f8:	685b      	ldr	r3, [r3, #4]
 80078fa:	6e38      	ldr	r0, [r7, #96]	; 0x60
 80078fc:	6e79      	ldr	r1, [r7, #100]	; 0x64
 80078fe:	f7fa f8a3 	bl	8001a48 <__aeabi_dmul>
 8007902:	0003      	movs	r3, r0
 8007904:	000c      	movs	r4, r1
 8007906:	663b      	str	r3, [r7, #96]	; 0x60
 8007908:	667c      	str	r4, [r7, #100]	; 0x64
 800790a:	19bb      	adds	r3, r7, r6
 800790c:	195b      	adds	r3, r3, r5
 800790e:	681a      	ldr	r2, [r3, #0]
 8007910:	685b      	ldr	r3, [r3, #4]
 8007912:	6db8      	ldr	r0, [r7, #88]	; 0x58
 8007914:	6df9      	ldr	r1, [r7, #92]	; 0x5c
 8007916:	f7fa f897 	bl	8001a48 <__aeabi_dmul>
 800791a:	0003      	movs	r3, r0
 800791c:	000c      	movs	r4, r1
 800791e:	65bb      	str	r3, [r7, #88]	; 0x58
 8007920:	65fc      	str	r4, [r7, #92]	; 0x5c
 8007922:	19bb      	adds	r3, r7, r6
 8007924:	195b      	adds	r3, r3, r5
 8007926:	681a      	ldr	r2, [r3, #0]
 8007928:	685b      	ldr	r3, [r3, #4]
 800792a:	6d38      	ldr	r0, [r7, #80]	; 0x50
 800792c:	6d79      	ldr	r1, [r7, #84]	; 0x54
 800792e:	f7fa f88b 	bl	8001a48 <__aeabi_dmul>
 8007932:	0003      	movs	r3, r0
 8007934:	000c      	movs	r4, r1
 8007936:	653b      	str	r3, [r7, #80]	; 0x50
 8007938:	657c      	str	r4, [r7, #84]	; 0x54
 800793a:	6eba      	ldr	r2, [r7, #104]	; 0x68
 800793c:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 800793e:	25d0      	movs	r5, #208	; 0xd0
 8007940:	006d      	lsls	r5, r5, #1
 8007942:	0031      	movs	r1, r6
 8007944:	1878      	adds	r0, r7, r1
 8007946:	1941      	adds	r1, r0, r5
 8007948:	6808      	ldr	r0, [r1, #0]
 800794a:	6849      	ldr	r1, [r1, #4]
 800794c:	f7fa f87c 	bl	8001a48 <__aeabi_dmul>
 8007950:	0003      	movs	r3, r0
 8007952:	000c      	movs	r4, r1
 8007954:	001a      	movs	r2, r3
 8007956:	0023      	movs	r3, r4
 8007958:	269c      	movs	r6, #156	; 0x9c
 800795a:	0076      	lsls	r6, r6, #1
 800795c:	2140      	movs	r1, #64	; 0x40
 800795e:	1878      	adds	r0, r7, r1
 8007960:	1981      	adds	r1, r0, r6
 8007962:	6808      	ldr	r0, [r1, #0]
 8007964:	6849      	ldr	r1, [r1, #4]
 8007966:	f7fa fae1 	bl	8001f2c <__aeabi_dsub>
 800796a:	0003      	movs	r3, r0
 800796c:	000c      	movs	r4, r1
 800796e:	2140      	movs	r1, #64	; 0x40
 8007970:	187a      	adds	r2, r7, r1
 8007972:	1992      	adds	r2, r2, r6
 8007974:	6013      	str	r3, [r2, #0]
 8007976:	6054      	str	r4, [r2, #4]
 8007978:	6e3a      	ldr	r2, [r7, #96]	; 0x60
 800797a:	6e7b      	ldr	r3, [r7, #100]	; 0x64
 800797c:	1878      	adds	r0, r7, r1
 800797e:	1941      	adds	r1, r0, r5
 8007980:	6808      	ldr	r0, [r1, #0]
 8007982:	6849      	ldr	r1, [r1, #4]
 8007984:	f7fa f860 	bl	8001a48 <__aeabi_dmul>
 8007988:	0003      	movs	r3, r0
 800798a:	000c      	movs	r4, r1
 800798c:	001a      	movs	r2, r3
 800798e:	0023      	movs	r3, r4
 8007990:	2698      	movs	r6, #152	; 0x98
 8007992:	0076      	lsls	r6, r6, #1
 8007994:	2140      	movs	r1, #64	; 0x40
 8007996:	1878      	adds	r0, r7, r1
 8007998:	1981      	adds	r1, r0, r6
 800799a:	6808      	ldr	r0, [r1, #0]
 800799c:	6849      	ldr	r1, [r1, #4]
 800799e:	f7fa fac5 	bl	8001f2c <__aeabi_dsub>
 80079a2:	0003      	movs	r3, r0
 80079a4:	000c      	movs	r4, r1
 80079a6:	2140      	movs	r1, #64	; 0x40
 80079a8:	187a      	adds	r2, r7, r1
 80079aa:	1992      	adds	r2, r2, r6
 80079ac:	6013      	str	r3, [r2, #0]
 80079ae:	6054      	str	r4, [r2, #4]
 80079b0:	6dba      	ldr	r2, [r7, #88]	; 0x58
 80079b2:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
 80079b4:	1878      	adds	r0, r7, r1
 80079b6:	1941      	adds	r1, r0, r5
 80079b8:	6808      	ldr	r0, [r1, #0]
 80079ba:	6849      	ldr	r1, [r1, #4]
 80079bc:	f7fa f844 	bl	8001a48 <__aeabi_dmul>
 80079c0:	0003      	movs	r3, r0
 80079c2:	000c      	movs	r4, r1
 80079c4:	001a      	movs	r2, r3
 80079c6:	0023      	movs	r3, r4
 80079c8:	2694      	movs	r6, #148	; 0x94
 80079ca:	0076      	lsls	r6, r6, #1
 80079cc:	2140      	movs	r1, #64	; 0x40
 80079ce:	1878      	adds	r0, r7, r1
 80079d0:	1981      	adds	r1, r0, r6
 80079d2:	6808      	ldr	r0, [r1, #0]
 80079d4:	6849      	ldr	r1, [r1, #4]
 80079d6:	f7fa faa9 	bl	8001f2c <__aeabi_dsub>
 80079da:	0003      	movs	r3, r0
 80079dc:	000c      	movs	r4, r1
 80079de:	2140      	movs	r1, #64	; 0x40
 80079e0:	187a      	adds	r2, r7, r1
 80079e2:	1992      	adds	r2, r2, r6
 80079e4:	6013      	str	r3, [r2, #0]
 80079e6:	6054      	str	r4, [r2, #4]
 80079e8:	6d3a      	ldr	r2, [r7, #80]	; 0x50
 80079ea:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 80079ec:	000e      	movs	r6, r1
 80079ee:	1879      	adds	r1, r7, r1
 80079f0:	1949      	adds	r1, r1, r5
 80079f2:	6808      	ldr	r0, [r1, #0]
 80079f4:	6849      	ldr	r1, [r1, #4]
 80079f6:	f7fa f827 	bl	8001a48 <__aeabi_dmul>
 80079fa:	0003      	movs	r3, r0
 80079fc:	000c      	movs	r4, r1
 80079fe:	001a      	movs	r2, r3
 8007a00:	0023      	movs	r3, r4
 8007a02:	2590      	movs	r5, #144	; 0x90
 8007a04:	006d      	lsls	r5, r5, #1
 8007a06:	e007      	b.n	8007a18 <MadgwickAHRSupdate+0x2220>
 8007a08:	20000000 	.word	0x20000000
 8007a0c:	200002d8 	.word	0x200002d8
 8007a10:	200002d0 	.word	0x200002d0
 8007a14:	3fe00000 	.word	0x3fe00000
 8007a18:	19b9      	adds	r1, r7, r6
 8007a1a:	1949      	adds	r1, r1, r5
 8007a1c:	6808      	ldr	r0, [r1, #0]
 8007a1e:	6849      	ldr	r1, [r1, #4]
 8007a20:	f7fa fa84 	bl	8001f2c <__aeabi_dsub>
 8007a24:	0003      	movs	r3, r0
 8007a26:	000c      	movs	r4, r1
 8007a28:	19ba      	adds	r2, r7, r6
 8007a2a:	1952      	adds	r2, r2, r5
 8007a2c:	6013      	str	r3, [r2, #0]
 8007a2e:	6054      	str	r4, [r2, #4]
 8007a30:	258c      	movs	r5, #140	; 0x8c
 8007a32:	006d      	lsls	r5, r5, #1
 8007a34:	2640      	movs	r6, #64	; 0x40
 8007a36:	19bb      	adds	r3, r7, r6
 8007a38:	195b      	adds	r3, r3, r5
 8007a3a:	681a      	ldr	r2, [r3, #0]
 8007a3c:	685b      	ldr	r3, [r3, #4]
 8007a3e:	2000      	movs	r0, #0
 8007a40:	49a3      	ldr	r1, [pc, #652]	; (8007cd0 <MadgwickAHRSupdate+0x24d8>)
 8007a42:	f7f9 fbf7 	bl	8001234 <__aeabi_ddiv>
 8007a46:	0003      	movs	r3, r0
 8007a48:	000c      	movs	r4, r1
 8007a4a:	0018      	movs	r0, r3
 8007a4c:	0021      	movs	r1, r4
 8007a4e:	239c      	movs	r3, #156	; 0x9c
 8007a50:	005b      	lsls	r3, r3, #1
 8007a52:	2240      	movs	r2, #64	; 0x40
 8007a54:	4694      	mov	ip, r2
 8007a56:	44bc      	add	ip, r7
 8007a58:	4463      	add	r3, ip
 8007a5a:	681a      	ldr	r2, [r3, #0]
 8007a5c:	685b      	ldr	r3, [r3, #4]
 8007a5e:	f7f9 fff3 	bl	8001a48 <__aeabi_dmul>
 8007a62:	0003      	movs	r3, r0
 8007a64:	000c      	movs	r4, r1
 8007a66:	0018      	movs	r0, r3
 8007a68:	0021      	movs	r1, r4
 8007a6a:	4b9a      	ldr	r3, [pc, #616]	; (8007cd4 <MadgwickAHRSupdate+0x24dc>)
 8007a6c:	685c      	ldr	r4, [r3, #4]
 8007a6e:	681b      	ldr	r3, [r3, #0]
 8007a70:	001a      	movs	r2, r3
 8007a72:	0023      	movs	r3, r4
 8007a74:	f7f9 f8c2 	bl	8000bfc <__aeabi_dadd>
 8007a78:	0003      	movs	r3, r0
 8007a7a:	000c      	movs	r4, r1
 8007a7c:	4a95      	ldr	r2, [pc, #596]	; (8007cd4 <MadgwickAHRSupdate+0x24dc>)
 8007a7e:	6013      	str	r3, [r2, #0]
 8007a80:	6054      	str	r4, [r2, #4]
 8007a82:	19bb      	adds	r3, r7, r6
 8007a84:	195b      	adds	r3, r3, r5
 8007a86:	681a      	ldr	r2, [r3, #0]
 8007a88:	685b      	ldr	r3, [r3, #4]
 8007a8a:	2000      	movs	r0, #0
 8007a8c:	4990      	ldr	r1, [pc, #576]	; (8007cd0 <MadgwickAHRSupdate+0x24d8>)
 8007a8e:	f7f9 fbd1 	bl	8001234 <__aeabi_ddiv>
 8007a92:	0003      	movs	r3, r0
 8007a94:	000c      	movs	r4, r1
 8007a96:	0018      	movs	r0, r3
 8007a98:	0021      	movs	r1, r4
 8007a9a:	2398      	movs	r3, #152	; 0x98
 8007a9c:	005b      	lsls	r3, r3, #1
 8007a9e:	2240      	movs	r2, #64	; 0x40
 8007aa0:	4694      	mov	ip, r2
 8007aa2:	44bc      	add	ip, r7
 8007aa4:	4463      	add	r3, ip
 8007aa6:	681a      	ldr	r2, [r3, #0]
 8007aa8:	685b      	ldr	r3, [r3, #4]
 8007aaa:	f7f9 ffcd 	bl	8001a48 <__aeabi_dmul>
 8007aae:	0003      	movs	r3, r0
 8007ab0:	000c      	movs	r4, r1
 8007ab2:	0018      	movs	r0, r3
 8007ab4:	0021      	movs	r1, r4
 8007ab6:	4b88      	ldr	r3, [pc, #544]	; (8007cd8 <MadgwickAHRSupdate+0x24e0>)
 8007ab8:	685c      	ldr	r4, [r3, #4]
 8007aba:	681b      	ldr	r3, [r3, #0]
 8007abc:	001a      	movs	r2, r3
 8007abe:	0023      	movs	r3, r4
 8007ac0:	f7f9 f89c 	bl	8000bfc <__aeabi_dadd>
 8007ac4:	0003      	movs	r3, r0
 8007ac6:	000c      	movs	r4, r1
 8007ac8:	4a83      	ldr	r2, [pc, #524]	; (8007cd8 <MadgwickAHRSupdate+0x24e0>)
 8007aca:	6013      	str	r3, [r2, #0]
 8007acc:	6054      	str	r4, [r2, #4]
 8007ace:	19bb      	adds	r3, r7, r6
 8007ad0:	195b      	adds	r3, r3, r5
 8007ad2:	681a      	ldr	r2, [r3, #0]
 8007ad4:	685b      	ldr	r3, [r3, #4]
 8007ad6:	2000      	movs	r0, #0
 8007ad8:	497d      	ldr	r1, [pc, #500]	; (8007cd0 <MadgwickAHRSupdate+0x24d8>)
 8007ada:	f7f9 fbab 	bl	8001234 <__aeabi_ddiv>
 8007ade:	0003      	movs	r3, r0
 8007ae0:	000c      	movs	r4, r1
 8007ae2:	0018      	movs	r0, r3
 8007ae4:	0021      	movs	r1, r4
 8007ae6:	2394      	movs	r3, #148	; 0x94
 8007ae8:	005b      	lsls	r3, r3, #1
 8007aea:	2240      	movs	r2, #64	; 0x40
 8007aec:	4694      	mov	ip, r2
 8007aee:	44bc      	add	ip, r7
 8007af0:	4463      	add	r3, ip
 8007af2:	681a      	ldr	r2, [r3, #0]
 8007af4:	685b      	ldr	r3, [r3, #4]
 8007af6:	f7f9 ffa7 	bl	8001a48 <__aeabi_dmul>
 8007afa:	0003      	movs	r3, r0
 8007afc:	000c      	movs	r4, r1
 8007afe:	0018      	movs	r0, r3
 8007b00:	0021      	movs	r1, r4
 8007b02:	4b76      	ldr	r3, [pc, #472]	; (8007cdc <MadgwickAHRSupdate+0x24e4>)
 8007b04:	685c      	ldr	r4, [r3, #4]
 8007b06:	681b      	ldr	r3, [r3, #0]
 8007b08:	001a      	movs	r2, r3
 8007b0a:	0023      	movs	r3, r4
 8007b0c:	f7f9 f876 	bl	8000bfc <__aeabi_dadd>
 8007b10:	0003      	movs	r3, r0
 8007b12:	000c      	movs	r4, r1
 8007b14:	4a71      	ldr	r2, [pc, #452]	; (8007cdc <MadgwickAHRSupdate+0x24e4>)
 8007b16:	6013      	str	r3, [r2, #0]
 8007b18:	6054      	str	r4, [r2, #4]
 8007b1a:	19bb      	adds	r3, r7, r6
 8007b1c:	195b      	adds	r3, r3, r5
 8007b1e:	681a      	ldr	r2, [r3, #0]
 8007b20:	685b      	ldr	r3, [r3, #4]
 8007b22:	2000      	movs	r0, #0
 8007b24:	496a      	ldr	r1, [pc, #424]	; (8007cd0 <MadgwickAHRSupdate+0x24d8>)
 8007b26:	f7f9 fb85 	bl	8001234 <__aeabi_ddiv>
 8007b2a:	0003      	movs	r3, r0
 8007b2c:	000c      	movs	r4, r1
 8007b2e:	0018      	movs	r0, r3
 8007b30:	0021      	movs	r1, r4
 8007b32:	2390      	movs	r3, #144	; 0x90
 8007b34:	005b      	lsls	r3, r3, #1
 8007b36:	2240      	movs	r2, #64	; 0x40
 8007b38:	4694      	mov	ip, r2
 8007b3a:	44bc      	add	ip, r7
 8007b3c:	4463      	add	r3, ip
 8007b3e:	681a      	ldr	r2, [r3, #0]
 8007b40:	685b      	ldr	r3, [r3, #4]
 8007b42:	f7f9 ff81 	bl	8001a48 <__aeabi_dmul>
 8007b46:	0003      	movs	r3, r0
 8007b48:	000c      	movs	r4, r1
 8007b4a:	0018      	movs	r0, r3
 8007b4c:	0021      	movs	r1, r4
 8007b4e:	4b64      	ldr	r3, [pc, #400]	; (8007ce0 <MadgwickAHRSupdate+0x24e8>)
 8007b50:	685c      	ldr	r4, [r3, #4]
 8007b52:	681b      	ldr	r3, [r3, #0]
 8007b54:	001a      	movs	r2, r3
 8007b56:	0023      	movs	r3, r4
 8007b58:	f7f9 f850 	bl	8000bfc <__aeabi_dadd>
 8007b5c:	0003      	movs	r3, r0
 8007b5e:	000c      	movs	r4, r1
 8007b60:	4a5f      	ldr	r2, [pc, #380]	; (8007ce0 <MadgwickAHRSupdate+0x24e8>)
 8007b62:	6013      	str	r3, [r2, #0]
 8007b64:	6054      	str	r4, [r2, #4]
 8007b66:	4b5b      	ldr	r3, [pc, #364]	; (8007cd4 <MadgwickAHRSupdate+0x24dc>)
 8007b68:	6818      	ldr	r0, [r3, #0]
 8007b6a:	6859      	ldr	r1, [r3, #4]
 8007b6c:	4b59      	ldr	r3, [pc, #356]	; (8007cd4 <MadgwickAHRSupdate+0x24dc>)
 8007b6e:	685c      	ldr	r4, [r3, #4]
 8007b70:	681b      	ldr	r3, [r3, #0]
 8007b72:	001a      	movs	r2, r3
 8007b74:	0023      	movs	r3, r4
 8007b76:	f7f9 ff67 	bl	8001a48 <__aeabi_dmul>
 8007b7a:	0003      	movs	r3, r0
 8007b7c:	000c      	movs	r4, r1
 8007b7e:	001d      	movs	r5, r3
 8007b80:	0026      	movs	r6, r4
 8007b82:	4b55      	ldr	r3, [pc, #340]	; (8007cd8 <MadgwickAHRSupdate+0x24e0>)
 8007b84:	6818      	ldr	r0, [r3, #0]
 8007b86:	6859      	ldr	r1, [r3, #4]
 8007b88:	4b53      	ldr	r3, [pc, #332]	; (8007cd8 <MadgwickAHRSupdate+0x24e0>)
 8007b8a:	685c      	ldr	r4, [r3, #4]
 8007b8c:	681b      	ldr	r3, [r3, #0]
 8007b8e:	001a      	movs	r2, r3
 8007b90:	0023      	movs	r3, r4
 8007b92:	f7f9 ff59 	bl	8001a48 <__aeabi_dmul>
 8007b96:	0003      	movs	r3, r0
 8007b98:	000c      	movs	r4, r1
 8007b9a:	001a      	movs	r2, r3
 8007b9c:	0023      	movs	r3, r4
 8007b9e:	0028      	movs	r0, r5
 8007ba0:	0031      	movs	r1, r6
 8007ba2:	f7f9 f82b 	bl	8000bfc <__aeabi_dadd>
 8007ba6:	0003      	movs	r3, r0
 8007ba8:	000c      	movs	r4, r1
 8007baa:	001d      	movs	r5, r3
 8007bac:	0026      	movs	r6, r4
 8007bae:	4b4b      	ldr	r3, [pc, #300]	; (8007cdc <MadgwickAHRSupdate+0x24e4>)
 8007bb0:	6818      	ldr	r0, [r3, #0]
 8007bb2:	6859      	ldr	r1, [r3, #4]
 8007bb4:	4b49      	ldr	r3, [pc, #292]	; (8007cdc <MadgwickAHRSupdate+0x24e4>)
 8007bb6:	685c      	ldr	r4, [r3, #4]
 8007bb8:	681b      	ldr	r3, [r3, #0]
 8007bba:	001a      	movs	r2, r3
 8007bbc:	0023      	movs	r3, r4
 8007bbe:	f7f9 ff43 	bl	8001a48 <__aeabi_dmul>
 8007bc2:	0003      	movs	r3, r0
 8007bc4:	000c      	movs	r4, r1
 8007bc6:	001a      	movs	r2, r3
 8007bc8:	0023      	movs	r3, r4
 8007bca:	0028      	movs	r0, r5
 8007bcc:	0031      	movs	r1, r6
 8007bce:	f7f9 f815 	bl	8000bfc <__aeabi_dadd>
 8007bd2:	0003      	movs	r3, r0
 8007bd4:	000c      	movs	r4, r1
 8007bd6:	001d      	movs	r5, r3
 8007bd8:	0026      	movs	r6, r4
 8007bda:	4b41      	ldr	r3, [pc, #260]	; (8007ce0 <MadgwickAHRSupdate+0x24e8>)
 8007bdc:	6818      	ldr	r0, [r3, #0]
 8007bde:	6859      	ldr	r1, [r3, #4]
 8007be0:	4b3f      	ldr	r3, [pc, #252]	; (8007ce0 <MadgwickAHRSupdate+0x24e8>)
 8007be2:	685c      	ldr	r4, [r3, #4]
 8007be4:	681b      	ldr	r3, [r3, #0]
 8007be6:	001a      	movs	r2, r3
 8007be8:	0023      	movs	r3, r4
 8007bea:	f7f9 ff2d 	bl	8001a48 <__aeabi_dmul>
 8007bee:	0003      	movs	r3, r0
 8007bf0:	000c      	movs	r4, r1
 8007bf2:	001a      	movs	r2, r3
 8007bf4:	0023      	movs	r3, r4
 8007bf6:	0028      	movs	r0, r5
 8007bf8:	0031      	movs	r1, r6
 8007bfa:	f7f8 ffff 	bl	8000bfc <__aeabi_dadd>
 8007bfe:	0003      	movs	r3, r0
 8007c00:	000c      	movs	r4, r1
 8007c02:	0018      	movs	r0, r3
 8007c04:	0021      	movs	r1, r4
 8007c06:	f000 fe6d 	bl	80088e4 <invSqrt>
 8007c0a:	0003      	movs	r3, r0
 8007c0c:	000c      	movs	r4, r1
 8007c0e:	2588      	movs	r5, #136	; 0x88
 8007c10:	006d      	lsls	r5, r5, #1
 8007c12:	2640      	movs	r6, #64	; 0x40
 8007c14:	19ba      	adds	r2, r7, r6
 8007c16:	1952      	adds	r2, r2, r5
 8007c18:	6013      	str	r3, [r2, #0]
 8007c1a:	6054      	str	r4, [r2, #4]
 8007c1c:	4b2d      	ldr	r3, [pc, #180]	; (8007cd4 <MadgwickAHRSupdate+0x24dc>)
 8007c1e:	6818      	ldr	r0, [r3, #0]
 8007c20:	6859      	ldr	r1, [r3, #4]
 8007c22:	19bb      	adds	r3, r7, r6
 8007c24:	195b      	adds	r3, r3, r5
 8007c26:	681a      	ldr	r2, [r3, #0]
 8007c28:	685b      	ldr	r3, [r3, #4]
 8007c2a:	f7f9 ff0d 	bl	8001a48 <__aeabi_dmul>
 8007c2e:	0003      	movs	r3, r0
 8007c30:	000c      	movs	r4, r1
 8007c32:	4a28      	ldr	r2, [pc, #160]	; (8007cd4 <MadgwickAHRSupdate+0x24dc>)
 8007c34:	6013      	str	r3, [r2, #0]
 8007c36:	6054      	str	r4, [r2, #4]
 8007c38:	4b27      	ldr	r3, [pc, #156]	; (8007cd8 <MadgwickAHRSupdate+0x24e0>)
 8007c3a:	6818      	ldr	r0, [r3, #0]
 8007c3c:	6859      	ldr	r1, [r3, #4]
 8007c3e:	19bb      	adds	r3, r7, r6
 8007c40:	195b      	adds	r3, r3, r5
 8007c42:	681a      	ldr	r2, [r3, #0]
 8007c44:	685b      	ldr	r3, [r3, #4]
 8007c46:	f7f9 feff 	bl	8001a48 <__aeabi_dmul>
 8007c4a:	0003      	movs	r3, r0
 8007c4c:	000c      	movs	r4, r1
 8007c4e:	4a22      	ldr	r2, [pc, #136]	; (8007cd8 <MadgwickAHRSupdate+0x24e0>)
 8007c50:	6013      	str	r3, [r2, #0]
 8007c52:	6054      	str	r4, [r2, #4]
 8007c54:	4b21      	ldr	r3, [pc, #132]	; (8007cdc <MadgwickAHRSupdate+0x24e4>)
 8007c56:	6818      	ldr	r0, [r3, #0]
 8007c58:	6859      	ldr	r1, [r3, #4]
 8007c5a:	19bb      	adds	r3, r7, r6
 8007c5c:	195b      	adds	r3, r3, r5
 8007c5e:	681a      	ldr	r2, [r3, #0]
 8007c60:	685b      	ldr	r3, [r3, #4]
 8007c62:	f7f9 fef1 	bl	8001a48 <__aeabi_dmul>
 8007c66:	0003      	movs	r3, r0
 8007c68:	000c      	movs	r4, r1
 8007c6a:	4a1c      	ldr	r2, [pc, #112]	; (8007cdc <MadgwickAHRSupdate+0x24e4>)
 8007c6c:	6013      	str	r3, [r2, #0]
 8007c6e:	6054      	str	r4, [r2, #4]
 8007c70:	4b1b      	ldr	r3, [pc, #108]	; (8007ce0 <MadgwickAHRSupdate+0x24e8>)
 8007c72:	6818      	ldr	r0, [r3, #0]
 8007c74:	6859      	ldr	r1, [r3, #4]
 8007c76:	19bb      	adds	r3, r7, r6
 8007c78:	195b      	adds	r3, r3, r5
 8007c7a:	681a      	ldr	r2, [r3, #0]
 8007c7c:	685b      	ldr	r3, [r3, #4]
 8007c7e:	f7f9 fee3 	bl	8001a48 <__aeabi_dmul>
 8007c82:	0003      	movs	r3, r0
 8007c84:	000c      	movs	r4, r1
 8007c86:	4a16      	ldr	r2, [pc, #88]	; (8007ce0 <MadgwickAHRSupdate+0x24e8>)
 8007c88:	6013      	str	r3, [r2, #0]
 8007c8a:	6054      	str	r4, [r2, #4]
 8007c8c:	4b11      	ldr	r3, [pc, #68]	; (8007cd4 <MadgwickAHRSupdate+0x24dc>)
 8007c8e:	685c      	ldr	r4, [r3, #4]
 8007c90:	681b      	ldr	r3, [r3, #0]
 8007c92:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 8007c94:	6013      	str	r3, [r2, #0]
 8007c96:	6054      	str	r4, [r2, #4]
 8007c98:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8007c9a:	3308      	adds	r3, #8
 8007c9c:	001a      	movs	r2, r3
 8007c9e:	4b0e      	ldr	r3, [pc, #56]	; (8007cd8 <MadgwickAHRSupdate+0x24e0>)
 8007ca0:	685c      	ldr	r4, [r3, #4]
 8007ca2:	681b      	ldr	r3, [r3, #0]
 8007ca4:	6013      	str	r3, [r2, #0]
 8007ca6:	6054      	str	r4, [r2, #4]
 8007ca8:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8007caa:	3310      	adds	r3, #16
 8007cac:	001a      	movs	r2, r3
 8007cae:	4b0b      	ldr	r3, [pc, #44]	; (8007cdc <MadgwickAHRSupdate+0x24e4>)
 8007cb0:	685c      	ldr	r4, [r3, #4]
 8007cb2:	681b      	ldr	r3, [r3, #0]
 8007cb4:	6013      	str	r3, [r2, #0]
 8007cb6:	6054      	str	r4, [r2, #4]
 8007cb8:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8007cba:	3318      	adds	r3, #24
 8007cbc:	001a      	movs	r2, r3
 8007cbe:	4b08      	ldr	r3, [pc, #32]	; (8007ce0 <MadgwickAHRSupdate+0x24e8>)
 8007cc0:	685c      	ldr	r4, [r3, #4]
 8007cc2:	681b      	ldr	r3, [r3, #0]
 8007cc4:	6013      	str	r3, [r2, #0]
 8007cc6:	6054      	str	r4, [r2, #4]
 8007cc8:	46bd      	mov	sp, r7
 8007cca:	b061      	add	sp, #388	; 0x184
 8007ccc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007cce:	46c0      	nop			; (mov r8, r8)
 8007cd0:	3ff00000 	.word	0x3ff00000
 8007cd4:	20000000 	.word	0x20000000
 8007cd8:	200002d0 	.word	0x200002d0
 8007cdc:	200002d8 	.word	0x200002d8
 8007ce0:	200002e0 	.word	0x200002e0

08007ce4 <MadgwickAHRSupdateIMU>:
 8007ce4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007ce6:	b0b3      	sub	sp, #204	; 0xcc
 8007ce8:	af00      	add	r7, sp, #0
 8007cea:	60f8      	str	r0, [r7, #12]
 8007cec:	603a      	str	r2, [r7, #0]
 8007cee:	607b      	str	r3, [r7, #4]
 8007cf0:	2384      	movs	r3, #132	; 0x84
 8007cf2:	005b      	lsls	r3, r3, #1
 8007cf4:	18fb      	adds	r3, r7, r3
 8007cf6:	681a      	ldr	r2, [r3, #0]
 8007cf8:	685b      	ldr	r3, [r3, #4]
 8007cfa:	2000      	movs	r0, #0
 8007cfc:	49e3      	ldr	r1, [pc, #908]	; (800808c <MadgwickAHRSupdateIMU+0x3a8>)
 8007cfe:	f7f9 fa99 	bl	8001234 <__aeabi_ddiv>
 8007d02:	0003      	movs	r3, r0
 8007d04:	000c      	movs	r4, r1
 8007d06:	22a0      	movs	r2, #160	; 0xa0
 8007d08:	18ba      	adds	r2, r7, r2
 8007d0a:	6013      	str	r3, [r2, #0]
 8007d0c:	6054      	str	r4, [r2, #4]
 8007d0e:	4be0      	ldr	r3, [pc, #896]	; (8008090 <MadgwickAHRSupdateIMU+0x3ac>)
 8007d10:	685c      	ldr	r4, [r3, #4]
 8007d12:	681b      	ldr	r3, [r3, #0]
 8007d14:	001a      	movs	r2, r3
 8007d16:	0015      	movs	r5, r2
 8007d18:	2280      	movs	r2, #128	; 0x80
 8007d1a:	0612      	lsls	r2, r2, #24
 8007d1c:	4062      	eors	r2, r4
 8007d1e:	0016      	movs	r6, r2
 8007d20:	683a      	ldr	r2, [r7, #0]
 8007d22:	687b      	ldr	r3, [r7, #4]
 8007d24:	0028      	movs	r0, r5
 8007d26:	0031      	movs	r1, r6
 8007d28:	f7f9 fe8e 	bl	8001a48 <__aeabi_dmul>
 8007d2c:	0003      	movs	r3, r0
 8007d2e:	000c      	movs	r4, r1
 8007d30:	0025      	movs	r5, r4
 8007d32:	001c      	movs	r4, r3
 8007d34:	4bd7      	ldr	r3, [pc, #860]	; (8008094 <MadgwickAHRSupdateIMU+0x3b0>)
 8007d36:	6818      	ldr	r0, [r3, #0]
 8007d38:	6859      	ldr	r1, [r3, #4]
 8007d3a:	26e0      	movs	r6, #224	; 0xe0
 8007d3c:	19bb      	adds	r3, r7, r6
 8007d3e:	681a      	ldr	r2, [r3, #0]
 8007d40:	685b      	ldr	r3, [r3, #4]
 8007d42:	f7f9 fe81 	bl	8001a48 <__aeabi_dmul>
 8007d46:	0002      	movs	r2, r0
 8007d48:	000b      	movs	r3, r1
 8007d4a:	0020      	movs	r0, r4
 8007d4c:	0029      	movs	r1, r5
 8007d4e:	f7fa f8ed 	bl	8001f2c <__aeabi_dsub>
 8007d52:	0003      	movs	r3, r0
 8007d54:	000c      	movs	r4, r1
 8007d56:	0025      	movs	r5, r4
 8007d58:	001c      	movs	r4, r3
 8007d5a:	4bcf      	ldr	r3, [pc, #828]	; (8008098 <MadgwickAHRSupdateIMU+0x3b4>)
 8007d5c:	6818      	ldr	r0, [r3, #0]
 8007d5e:	6859      	ldr	r1, [r3, #4]
 8007d60:	23e8      	movs	r3, #232	; 0xe8
 8007d62:	18fa      	adds	r2, r7, r3
 8007d64:	6853      	ldr	r3, [r2, #4]
 8007d66:	6812      	ldr	r2, [r2, #0]
 8007d68:	f7f9 fe6e 	bl	8001a48 <__aeabi_dmul>
 8007d6c:	0002      	movs	r2, r0
 8007d6e:	000b      	movs	r3, r1
 8007d70:	0020      	movs	r0, r4
 8007d72:	0029      	movs	r1, r5
 8007d74:	f7fa f8da 	bl	8001f2c <__aeabi_dsub>
 8007d78:	0003      	movs	r3, r0
 8007d7a:	000c      	movs	r4, r1
 8007d7c:	0018      	movs	r0, r3
 8007d7e:	0021      	movs	r1, r4
 8007d80:	2200      	movs	r2, #0
 8007d82:	4bc6      	ldr	r3, [pc, #792]	; (800809c <MadgwickAHRSupdateIMU+0x3b8>)
 8007d84:	f7f9 fe60 	bl	8001a48 <__aeabi_dmul>
 8007d88:	0003      	movs	r3, r0
 8007d8a:	000c      	movs	r4, r1
 8007d8c:	22c0      	movs	r2, #192	; 0xc0
 8007d8e:	18ba      	adds	r2, r7, r2
 8007d90:	6013      	str	r3, [r2, #0]
 8007d92:	6054      	str	r4, [r2, #4]
 8007d94:	4bc2      	ldr	r3, [pc, #776]	; (80080a0 <MadgwickAHRSupdateIMU+0x3bc>)
 8007d96:	6818      	ldr	r0, [r3, #0]
 8007d98:	6859      	ldr	r1, [r3, #4]
 8007d9a:	683a      	ldr	r2, [r7, #0]
 8007d9c:	687b      	ldr	r3, [r7, #4]
 8007d9e:	f7f9 fe53 	bl	8001a48 <__aeabi_dmul>
 8007da2:	0003      	movs	r3, r0
 8007da4:	000c      	movs	r4, r1
 8007da6:	0025      	movs	r5, r4
 8007da8:	001c      	movs	r4, r3
 8007daa:	4bba      	ldr	r3, [pc, #744]	; (8008094 <MadgwickAHRSupdateIMU+0x3b0>)
 8007dac:	6818      	ldr	r0, [r3, #0]
 8007dae:	6859      	ldr	r1, [r3, #4]
 8007db0:	23e8      	movs	r3, #232	; 0xe8
 8007db2:	18fa      	adds	r2, r7, r3
 8007db4:	6853      	ldr	r3, [r2, #4]
 8007db6:	6812      	ldr	r2, [r2, #0]
 8007db8:	f7f9 fe46 	bl	8001a48 <__aeabi_dmul>
 8007dbc:	0002      	movs	r2, r0
 8007dbe:	000b      	movs	r3, r1
 8007dc0:	0020      	movs	r0, r4
 8007dc2:	0029      	movs	r1, r5
 8007dc4:	f7f8 ff1a 	bl	8000bfc <__aeabi_dadd>
 8007dc8:	0003      	movs	r3, r0
 8007dca:	000c      	movs	r4, r1
 8007dcc:	0025      	movs	r5, r4
 8007dce:	001c      	movs	r4, r3
 8007dd0:	4bb1      	ldr	r3, [pc, #708]	; (8008098 <MadgwickAHRSupdateIMU+0x3b4>)
 8007dd2:	6818      	ldr	r0, [r3, #0]
 8007dd4:	6859      	ldr	r1, [r3, #4]
 8007dd6:	19ba      	adds	r2, r7, r6
 8007dd8:	6853      	ldr	r3, [r2, #4]
 8007dda:	6812      	ldr	r2, [r2, #0]
 8007ddc:	f7f9 fe34 	bl	8001a48 <__aeabi_dmul>
 8007de0:	0002      	movs	r2, r0
 8007de2:	000b      	movs	r3, r1
 8007de4:	0020      	movs	r0, r4
 8007de6:	0029      	movs	r1, r5
 8007de8:	f7fa f8a0 	bl	8001f2c <__aeabi_dsub>
 8007dec:	0003      	movs	r3, r0
 8007dee:	000c      	movs	r4, r1
 8007df0:	0018      	movs	r0, r3
 8007df2:	0021      	movs	r1, r4
 8007df4:	2200      	movs	r2, #0
 8007df6:	4ba9      	ldr	r3, [pc, #676]	; (800809c <MadgwickAHRSupdateIMU+0x3b8>)
 8007df8:	f7f9 fe26 	bl	8001a48 <__aeabi_dmul>
 8007dfc:	0003      	movs	r3, r0
 8007dfe:	000c      	movs	r4, r1
 8007e00:	22b8      	movs	r2, #184	; 0xb8
 8007e02:	18ba      	adds	r2, r7, r2
 8007e04:	6013      	str	r3, [r2, #0]
 8007e06:	6054      	str	r4, [r2, #4]
 8007e08:	4ba5      	ldr	r3, [pc, #660]	; (80080a0 <MadgwickAHRSupdateIMU+0x3bc>)
 8007e0a:	6818      	ldr	r0, [r3, #0]
 8007e0c:	6859      	ldr	r1, [r3, #4]
 8007e0e:	19ba      	adds	r2, r7, r6
 8007e10:	6853      	ldr	r3, [r2, #4]
 8007e12:	6812      	ldr	r2, [r2, #0]
 8007e14:	f7f9 fe18 	bl	8001a48 <__aeabi_dmul>
 8007e18:	0003      	movs	r3, r0
 8007e1a:	000c      	movs	r4, r1
 8007e1c:	0025      	movs	r5, r4
 8007e1e:	001c      	movs	r4, r3
 8007e20:	4b9b      	ldr	r3, [pc, #620]	; (8008090 <MadgwickAHRSupdateIMU+0x3ac>)
 8007e22:	6818      	ldr	r0, [r3, #0]
 8007e24:	6859      	ldr	r1, [r3, #4]
 8007e26:	23e8      	movs	r3, #232	; 0xe8
 8007e28:	18fa      	adds	r2, r7, r3
 8007e2a:	6853      	ldr	r3, [r2, #4]
 8007e2c:	6812      	ldr	r2, [r2, #0]
 8007e2e:	f7f9 fe0b 	bl	8001a48 <__aeabi_dmul>
 8007e32:	0002      	movs	r2, r0
 8007e34:	000b      	movs	r3, r1
 8007e36:	0020      	movs	r0, r4
 8007e38:	0029      	movs	r1, r5
 8007e3a:	f7fa f877 	bl	8001f2c <__aeabi_dsub>
 8007e3e:	0003      	movs	r3, r0
 8007e40:	000c      	movs	r4, r1
 8007e42:	0025      	movs	r5, r4
 8007e44:	001c      	movs	r4, r3
 8007e46:	4b94      	ldr	r3, [pc, #592]	; (8008098 <MadgwickAHRSupdateIMU+0x3b4>)
 8007e48:	6818      	ldr	r0, [r3, #0]
 8007e4a:	6859      	ldr	r1, [r3, #4]
 8007e4c:	683a      	ldr	r2, [r7, #0]
 8007e4e:	687b      	ldr	r3, [r7, #4]
 8007e50:	f7f9 fdfa 	bl	8001a48 <__aeabi_dmul>
 8007e54:	0002      	movs	r2, r0
 8007e56:	000b      	movs	r3, r1
 8007e58:	0020      	movs	r0, r4
 8007e5a:	0029      	movs	r1, r5
 8007e5c:	f7f8 fece 	bl	8000bfc <__aeabi_dadd>
 8007e60:	0003      	movs	r3, r0
 8007e62:	000c      	movs	r4, r1
 8007e64:	0018      	movs	r0, r3
 8007e66:	0021      	movs	r1, r4
 8007e68:	2200      	movs	r2, #0
 8007e6a:	4b8c      	ldr	r3, [pc, #560]	; (800809c <MadgwickAHRSupdateIMU+0x3b8>)
 8007e6c:	f7f9 fdec 	bl	8001a48 <__aeabi_dmul>
 8007e70:	0003      	movs	r3, r0
 8007e72:	000c      	movs	r4, r1
 8007e74:	22b0      	movs	r2, #176	; 0xb0
 8007e76:	18ba      	adds	r2, r7, r2
 8007e78:	6013      	str	r3, [r2, #0]
 8007e7a:	6054      	str	r4, [r2, #4]
 8007e7c:	4b88      	ldr	r3, [pc, #544]	; (80080a0 <MadgwickAHRSupdateIMU+0x3bc>)
 8007e7e:	6818      	ldr	r0, [r3, #0]
 8007e80:	6859      	ldr	r1, [r3, #4]
 8007e82:	23e8      	movs	r3, #232	; 0xe8
 8007e84:	18fb      	adds	r3, r7, r3
 8007e86:	681a      	ldr	r2, [r3, #0]
 8007e88:	685b      	ldr	r3, [r3, #4]
 8007e8a:	f7f9 fddd 	bl	8001a48 <__aeabi_dmul>
 8007e8e:	0003      	movs	r3, r0
 8007e90:	000c      	movs	r4, r1
 8007e92:	0025      	movs	r5, r4
 8007e94:	001c      	movs	r4, r3
 8007e96:	4b7e      	ldr	r3, [pc, #504]	; (8008090 <MadgwickAHRSupdateIMU+0x3ac>)
 8007e98:	6818      	ldr	r0, [r3, #0]
 8007e9a:	6859      	ldr	r1, [r3, #4]
 8007e9c:	19bb      	adds	r3, r7, r6
 8007e9e:	681a      	ldr	r2, [r3, #0]
 8007ea0:	685b      	ldr	r3, [r3, #4]
 8007ea2:	f7f9 fdd1 	bl	8001a48 <__aeabi_dmul>
 8007ea6:	0002      	movs	r2, r0
 8007ea8:	000b      	movs	r3, r1
 8007eaa:	0020      	movs	r0, r4
 8007eac:	0029      	movs	r1, r5
 8007eae:	f7f8 fea5 	bl	8000bfc <__aeabi_dadd>
 8007eb2:	0003      	movs	r3, r0
 8007eb4:	000c      	movs	r4, r1
 8007eb6:	0025      	movs	r5, r4
 8007eb8:	001c      	movs	r4, r3
 8007eba:	4b76      	ldr	r3, [pc, #472]	; (8008094 <MadgwickAHRSupdateIMU+0x3b0>)
 8007ebc:	6818      	ldr	r0, [r3, #0]
 8007ebe:	6859      	ldr	r1, [r3, #4]
 8007ec0:	683a      	ldr	r2, [r7, #0]
 8007ec2:	687b      	ldr	r3, [r7, #4]
 8007ec4:	f7f9 fdc0 	bl	8001a48 <__aeabi_dmul>
 8007ec8:	0002      	movs	r2, r0
 8007eca:	000b      	movs	r3, r1
 8007ecc:	0020      	movs	r0, r4
 8007ece:	0029      	movs	r1, r5
 8007ed0:	f7fa f82c 	bl	8001f2c <__aeabi_dsub>
 8007ed4:	0003      	movs	r3, r0
 8007ed6:	000c      	movs	r4, r1
 8007ed8:	0018      	movs	r0, r3
 8007eda:	0021      	movs	r1, r4
 8007edc:	2200      	movs	r2, #0
 8007ede:	4b6f      	ldr	r3, [pc, #444]	; (800809c <MadgwickAHRSupdateIMU+0x3b8>)
 8007ee0:	f7f9 fdb2 	bl	8001a48 <__aeabi_dmul>
 8007ee4:	0003      	movs	r3, r0
 8007ee6:	000c      	movs	r4, r1
 8007ee8:	22a8      	movs	r2, #168	; 0xa8
 8007eea:	18ba      	adds	r2, r7, r2
 8007eec:	6013      	str	r3, [r2, #0]
 8007eee:	6054      	str	r4, [r2, #4]
 8007ef0:	2200      	movs	r2, #0
 8007ef2:	2300      	movs	r3, #0
 8007ef4:	21f0      	movs	r1, #240	; 0xf0
 8007ef6:	1879      	adds	r1, r7, r1
 8007ef8:	6808      	ldr	r0, [r1, #0]
 8007efa:	6849      	ldr	r1, [r1, #4]
 8007efc:	f7f8 f9a0 	bl	8000240 <__aeabi_dcmpeq>
 8007f00:	1e03      	subs	r3, r0, #0
 8007f02:	d015      	beq.n	8007f30 <MadgwickAHRSupdateIMU+0x24c>
 8007f04:	2200      	movs	r2, #0
 8007f06:	2300      	movs	r3, #0
 8007f08:	21f8      	movs	r1, #248	; 0xf8
 8007f0a:	1879      	adds	r1, r7, r1
 8007f0c:	6808      	ldr	r0, [r1, #0]
 8007f0e:	6849      	ldr	r1, [r1, #4]
 8007f10:	f7f8 f996 	bl	8000240 <__aeabi_dcmpeq>
 8007f14:	1e03      	subs	r3, r0, #0
 8007f16:	d00b      	beq.n	8007f30 <MadgwickAHRSupdateIMU+0x24c>
 8007f18:	2200      	movs	r2, #0
 8007f1a:	2300      	movs	r3, #0
 8007f1c:	1c79      	adds	r1, r7, #1
 8007f1e:	31ff      	adds	r1, #255	; 0xff
 8007f20:	6808      	ldr	r0, [r1, #0]
 8007f22:	6849      	ldr	r1, [r1, #4]
 8007f24:	f7f8 f98c 	bl	8000240 <__aeabi_dcmpeq>
 8007f28:	1e03      	subs	r3, r0, #0
 8007f2a:	d001      	beq.n	8007f30 <MadgwickAHRSupdateIMU+0x24c>
 8007f2c:	f000 fb91 	bl	8008652 <MadgwickAHRSupdateIMU+0x96e>
 8007f30:	26f0      	movs	r6, #240	; 0xf0
 8007f32:	19bb      	adds	r3, r7, r6
 8007f34:	681a      	ldr	r2, [r3, #0]
 8007f36:	685b      	ldr	r3, [r3, #4]
 8007f38:	19b9      	adds	r1, r7, r6
 8007f3a:	6808      	ldr	r0, [r1, #0]
 8007f3c:	6849      	ldr	r1, [r1, #4]
 8007f3e:	f7f9 fd83 	bl	8001a48 <__aeabi_dmul>
 8007f42:	0003      	movs	r3, r0
 8007f44:	000c      	movs	r4, r1
 8007f46:	0025      	movs	r5, r4
 8007f48:	001c      	movs	r4, r3
 8007f4a:	21f8      	movs	r1, #248	; 0xf8
 8007f4c:	187b      	adds	r3, r7, r1
 8007f4e:	681a      	ldr	r2, [r3, #0]
 8007f50:	685b      	ldr	r3, [r3, #4]
 8007f52:	1878      	adds	r0, r7, r1
 8007f54:	6841      	ldr	r1, [r0, #4]
 8007f56:	6800      	ldr	r0, [r0, #0]
 8007f58:	f7f9 fd76 	bl	8001a48 <__aeabi_dmul>
 8007f5c:	0002      	movs	r2, r0
 8007f5e:	000b      	movs	r3, r1
 8007f60:	0020      	movs	r0, r4
 8007f62:	0029      	movs	r1, r5
 8007f64:	f7f8 fe4a 	bl	8000bfc <__aeabi_dadd>
 8007f68:	0003      	movs	r3, r0
 8007f6a:	000c      	movs	r4, r1
 8007f6c:	0025      	movs	r5, r4
 8007f6e:	001c      	movs	r4, r3
 8007f70:	1c7b      	adds	r3, r7, #1
 8007f72:	33ff      	adds	r3, #255	; 0xff
 8007f74:	681a      	ldr	r2, [r3, #0]
 8007f76:	685b      	ldr	r3, [r3, #4]
 8007f78:	1c78      	adds	r0, r7, #1
 8007f7a:	30ff      	adds	r0, #255	; 0xff
 8007f7c:	6841      	ldr	r1, [r0, #4]
 8007f7e:	6800      	ldr	r0, [r0, #0]
 8007f80:	f7f9 fd62 	bl	8001a48 <__aeabi_dmul>
 8007f84:	0002      	movs	r2, r0
 8007f86:	000b      	movs	r3, r1
 8007f88:	0020      	movs	r0, r4
 8007f8a:	0029      	movs	r1, r5
 8007f8c:	f7f8 fe36 	bl	8000bfc <__aeabi_dadd>
 8007f90:	0003      	movs	r3, r0
 8007f92:	000c      	movs	r4, r1
 8007f94:	0018      	movs	r0, r3
 8007f96:	0021      	movs	r1, r4
 8007f98:	f000 fca4 	bl	80088e4 <invSqrt>
 8007f9c:	0003      	movs	r3, r0
 8007f9e:	000c      	movs	r4, r1
 8007fa0:	2598      	movs	r5, #152	; 0x98
 8007fa2:	197a      	adds	r2, r7, r5
 8007fa4:	6013      	str	r3, [r2, #0]
 8007fa6:	6054      	str	r4, [r2, #4]
 8007fa8:	197b      	adds	r3, r7, r5
 8007faa:	681a      	ldr	r2, [r3, #0]
 8007fac:	685b      	ldr	r3, [r3, #4]
 8007fae:	19b8      	adds	r0, r7, r6
 8007fb0:	6841      	ldr	r1, [r0, #4]
 8007fb2:	6800      	ldr	r0, [r0, #0]
 8007fb4:	f7f9 fd48 	bl	8001a48 <__aeabi_dmul>
 8007fb8:	0003      	movs	r3, r0
 8007fba:	000c      	movs	r4, r1
 8007fbc:	19ba      	adds	r2, r7, r6
 8007fbe:	6013      	str	r3, [r2, #0]
 8007fc0:	6054      	str	r4, [r2, #4]
 8007fc2:	197b      	adds	r3, r7, r5
 8007fc4:	681a      	ldr	r2, [r3, #0]
 8007fc6:	685b      	ldr	r3, [r3, #4]
 8007fc8:	21f8      	movs	r1, #248	; 0xf8
 8007fca:	1878      	adds	r0, r7, r1
 8007fcc:	6841      	ldr	r1, [r0, #4]
 8007fce:	6800      	ldr	r0, [r0, #0]
 8007fd0:	f7f9 fd3a 	bl	8001a48 <__aeabi_dmul>
 8007fd4:	0003      	movs	r3, r0
 8007fd6:	000c      	movs	r4, r1
 8007fd8:	21f8      	movs	r1, #248	; 0xf8
 8007fda:	187a      	adds	r2, r7, r1
 8007fdc:	6013      	str	r3, [r2, #0]
 8007fde:	6054      	str	r4, [r2, #4]
 8007fe0:	197b      	adds	r3, r7, r5
 8007fe2:	681a      	ldr	r2, [r3, #0]
 8007fe4:	685b      	ldr	r3, [r3, #4]
 8007fe6:	1c78      	adds	r0, r7, #1
 8007fe8:	30ff      	adds	r0, #255	; 0xff
 8007fea:	6841      	ldr	r1, [r0, #4]
 8007fec:	6800      	ldr	r0, [r0, #0]
 8007fee:	f7f9 fd2b 	bl	8001a48 <__aeabi_dmul>
 8007ff2:	0003      	movs	r3, r0
 8007ff4:	000c      	movs	r4, r1
 8007ff6:	1c7a      	adds	r2, r7, #1
 8007ff8:	32ff      	adds	r2, #255	; 0xff
 8007ffa:	6013      	str	r3, [r2, #0]
 8007ffc:	6054      	str	r4, [r2, #4]
 8007ffe:	4b28      	ldr	r3, [pc, #160]	; (80080a0 <MadgwickAHRSupdateIMU+0x3bc>)
 8008000:	6818      	ldr	r0, [r3, #0]
 8008002:	6859      	ldr	r1, [r3, #4]
 8008004:	0002      	movs	r2, r0
 8008006:	000b      	movs	r3, r1
 8008008:	f7f8 fdf8 	bl	8000bfc <__aeabi_dadd>
 800800c:	0003      	movs	r3, r0
 800800e:	000c      	movs	r4, r1
 8008010:	2290      	movs	r2, #144	; 0x90
 8008012:	18ba      	adds	r2, r7, r2
 8008014:	6013      	str	r3, [r2, #0]
 8008016:	6054      	str	r4, [r2, #4]
 8008018:	4b1d      	ldr	r3, [pc, #116]	; (8008090 <MadgwickAHRSupdateIMU+0x3ac>)
 800801a:	6818      	ldr	r0, [r3, #0]
 800801c:	6859      	ldr	r1, [r3, #4]
 800801e:	0002      	movs	r2, r0
 8008020:	000b      	movs	r3, r1
 8008022:	f7f8 fdeb 	bl	8000bfc <__aeabi_dadd>
 8008026:	0003      	movs	r3, r0
 8008028:	000c      	movs	r4, r1
 800802a:	2288      	movs	r2, #136	; 0x88
 800802c:	18ba      	adds	r2, r7, r2
 800802e:	6013      	str	r3, [r2, #0]
 8008030:	6054      	str	r4, [r2, #4]
 8008032:	4b18      	ldr	r3, [pc, #96]	; (8008094 <MadgwickAHRSupdateIMU+0x3b0>)
 8008034:	6818      	ldr	r0, [r3, #0]
 8008036:	6859      	ldr	r1, [r3, #4]
 8008038:	0002      	movs	r2, r0
 800803a:	000b      	movs	r3, r1
 800803c:	f7f8 fdde 	bl	8000bfc <__aeabi_dadd>
 8008040:	0003      	movs	r3, r0
 8008042:	000c      	movs	r4, r1
 8008044:	2280      	movs	r2, #128	; 0x80
 8008046:	18ba      	adds	r2, r7, r2
 8008048:	6013      	str	r3, [r2, #0]
 800804a:	6054      	str	r4, [r2, #4]
 800804c:	4b12      	ldr	r3, [pc, #72]	; (8008098 <MadgwickAHRSupdateIMU+0x3b4>)
 800804e:	6818      	ldr	r0, [r3, #0]
 8008050:	6859      	ldr	r1, [r3, #4]
 8008052:	0002      	movs	r2, r0
 8008054:	000b      	movs	r3, r1
 8008056:	f7f8 fdd1 	bl	8000bfc <__aeabi_dadd>
 800805a:	0003      	movs	r3, r0
 800805c:	000c      	movs	r4, r1
 800805e:	67bb      	str	r3, [r7, #120]	; 0x78
 8008060:	67fc      	str	r4, [r7, #124]	; 0x7c
 8008062:	4b0f      	ldr	r3, [pc, #60]	; (80080a0 <MadgwickAHRSupdateIMU+0x3bc>)
 8008064:	6818      	ldr	r0, [r3, #0]
 8008066:	6859      	ldr	r1, [r3, #4]
 8008068:	2200      	movs	r2, #0
 800806a:	4b0e      	ldr	r3, [pc, #56]	; (80080a4 <MadgwickAHRSupdateIMU+0x3c0>)
 800806c:	f7f9 fcec 	bl	8001a48 <__aeabi_dmul>
 8008070:	0003      	movs	r3, r0
 8008072:	000c      	movs	r4, r1
 8008074:	673b      	str	r3, [r7, #112]	; 0x70
 8008076:	677c      	str	r4, [r7, #116]	; 0x74
 8008078:	4b05      	ldr	r3, [pc, #20]	; (8008090 <MadgwickAHRSupdateIMU+0x3ac>)
 800807a:	6818      	ldr	r0, [r3, #0]
 800807c:	6859      	ldr	r1, [r3, #4]
 800807e:	2200      	movs	r2, #0
 8008080:	4b08      	ldr	r3, [pc, #32]	; (80080a4 <MadgwickAHRSupdateIMU+0x3c0>)
 8008082:	f7f9 fce1 	bl	8001a48 <__aeabi_dmul>
 8008086:	0003      	movs	r3, r0
 8008088:	000c      	movs	r4, r1
 800808a:	e00d      	b.n	80080a8 <MadgwickAHRSupdateIMU+0x3c4>
 800808c:	3ff00000 	.word	0x3ff00000
 8008090:	200002d0 	.word	0x200002d0
 8008094:	200002d8 	.word	0x200002d8
 8008098:	200002e0 	.word	0x200002e0
 800809c:	3fe00000 	.word	0x3fe00000
 80080a0:	20000000 	.word	0x20000000
 80080a4:	40100000 	.word	0x40100000
 80080a8:	66bb      	str	r3, [r7, #104]	; 0x68
 80080aa:	66fc      	str	r4, [r7, #108]	; 0x6c
 80080ac:	4be3      	ldr	r3, [pc, #908]	; (800843c <MadgwickAHRSupdateIMU+0x758>)
 80080ae:	6818      	ldr	r0, [r3, #0]
 80080b0:	6859      	ldr	r1, [r3, #4]
 80080b2:	2200      	movs	r2, #0
 80080b4:	4be2      	ldr	r3, [pc, #904]	; (8008440 <MadgwickAHRSupdateIMU+0x75c>)
 80080b6:	f7f9 fcc7 	bl	8001a48 <__aeabi_dmul>
 80080ba:	0003      	movs	r3, r0
 80080bc:	000c      	movs	r4, r1
 80080be:	663b      	str	r3, [r7, #96]	; 0x60
 80080c0:	667c      	str	r4, [r7, #100]	; 0x64
 80080c2:	4be0      	ldr	r3, [pc, #896]	; (8008444 <MadgwickAHRSupdateIMU+0x760>)
 80080c4:	6818      	ldr	r0, [r3, #0]
 80080c6:	6859      	ldr	r1, [r3, #4]
 80080c8:	2200      	movs	r2, #0
 80080ca:	4bdf      	ldr	r3, [pc, #892]	; (8008448 <MadgwickAHRSupdateIMU+0x764>)
 80080cc:	f7f9 fcbc 	bl	8001a48 <__aeabi_dmul>
 80080d0:	0003      	movs	r3, r0
 80080d2:	000c      	movs	r4, r1
 80080d4:	65bb      	str	r3, [r7, #88]	; 0x58
 80080d6:	65fc      	str	r4, [r7, #92]	; 0x5c
 80080d8:	4bd8      	ldr	r3, [pc, #864]	; (800843c <MadgwickAHRSupdateIMU+0x758>)
 80080da:	6818      	ldr	r0, [r3, #0]
 80080dc:	6859      	ldr	r1, [r3, #4]
 80080de:	2200      	movs	r2, #0
 80080e0:	4bd9      	ldr	r3, [pc, #868]	; (8008448 <MadgwickAHRSupdateIMU+0x764>)
 80080e2:	f7f9 fcb1 	bl	8001a48 <__aeabi_dmul>
 80080e6:	0003      	movs	r3, r0
 80080e8:	000c      	movs	r4, r1
 80080ea:	653b      	str	r3, [r7, #80]	; 0x50
 80080ec:	657c      	str	r4, [r7, #84]	; 0x54
 80080ee:	4bd7      	ldr	r3, [pc, #860]	; (800844c <MadgwickAHRSupdateIMU+0x768>)
 80080f0:	6818      	ldr	r0, [r3, #0]
 80080f2:	6859      	ldr	r1, [r3, #4]
 80080f4:	4bd5      	ldr	r3, [pc, #852]	; (800844c <MadgwickAHRSupdateIMU+0x768>)
 80080f6:	685c      	ldr	r4, [r3, #4]
 80080f8:	681b      	ldr	r3, [r3, #0]
 80080fa:	001a      	movs	r2, r3
 80080fc:	0023      	movs	r3, r4
 80080fe:	f7f9 fca3 	bl	8001a48 <__aeabi_dmul>
 8008102:	0003      	movs	r3, r0
 8008104:	000c      	movs	r4, r1
 8008106:	64bb      	str	r3, [r7, #72]	; 0x48
 8008108:	64fc      	str	r4, [r7, #76]	; 0x4c
 800810a:	4bce      	ldr	r3, [pc, #824]	; (8008444 <MadgwickAHRSupdateIMU+0x760>)
 800810c:	6818      	ldr	r0, [r3, #0]
 800810e:	6859      	ldr	r1, [r3, #4]
 8008110:	4bcc      	ldr	r3, [pc, #816]	; (8008444 <MadgwickAHRSupdateIMU+0x760>)
 8008112:	685c      	ldr	r4, [r3, #4]
 8008114:	681b      	ldr	r3, [r3, #0]
 8008116:	001a      	movs	r2, r3
 8008118:	0023      	movs	r3, r4
 800811a:	f7f9 fc95 	bl	8001a48 <__aeabi_dmul>
 800811e:	0003      	movs	r3, r0
 8008120:	000c      	movs	r4, r1
 8008122:	643b      	str	r3, [r7, #64]	; 0x40
 8008124:	647c      	str	r4, [r7, #68]	; 0x44
 8008126:	4bc5      	ldr	r3, [pc, #788]	; (800843c <MadgwickAHRSupdateIMU+0x758>)
 8008128:	6818      	ldr	r0, [r3, #0]
 800812a:	6859      	ldr	r1, [r3, #4]
 800812c:	4bc3      	ldr	r3, [pc, #780]	; (800843c <MadgwickAHRSupdateIMU+0x758>)
 800812e:	685c      	ldr	r4, [r3, #4]
 8008130:	681b      	ldr	r3, [r3, #0]
 8008132:	001a      	movs	r2, r3
 8008134:	0023      	movs	r3, r4
 8008136:	f7f9 fc87 	bl	8001a48 <__aeabi_dmul>
 800813a:	0003      	movs	r3, r0
 800813c:	000c      	movs	r4, r1
 800813e:	63bb      	str	r3, [r7, #56]	; 0x38
 8008140:	63fc      	str	r4, [r7, #60]	; 0x3c
 8008142:	4bc3      	ldr	r3, [pc, #780]	; (8008450 <MadgwickAHRSupdateIMU+0x76c>)
 8008144:	6818      	ldr	r0, [r3, #0]
 8008146:	6859      	ldr	r1, [r3, #4]
 8008148:	4bc1      	ldr	r3, [pc, #772]	; (8008450 <MadgwickAHRSupdateIMU+0x76c>)
 800814a:	685c      	ldr	r4, [r3, #4]
 800814c:	681b      	ldr	r3, [r3, #0]
 800814e:	001a      	movs	r2, r3
 8008150:	0023      	movs	r3, r4
 8008152:	f7f9 fc79 	bl	8001a48 <__aeabi_dmul>
 8008156:	0003      	movs	r3, r0
 8008158:	000c      	movs	r4, r1
 800815a:	633b      	str	r3, [r7, #48]	; 0x30
 800815c:	637c      	str	r4, [r7, #52]	; 0x34
 800815e:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8008160:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8008162:	6f38      	ldr	r0, [r7, #112]	; 0x70
 8008164:	6f79      	ldr	r1, [r7, #116]	; 0x74
 8008166:	f7f9 fc6f 	bl	8001a48 <__aeabi_dmul>
 800816a:	0003      	movs	r3, r0
 800816c:	000c      	movs	r4, r1
 800816e:	0025      	movs	r5, r4
 8008170:	001c      	movs	r4, r3
 8008172:	19bb      	adds	r3, r7, r6
 8008174:	681a      	ldr	r2, [r3, #0]
 8008176:	685b      	ldr	r3, [r3, #4]
 8008178:	2080      	movs	r0, #128	; 0x80
 800817a:	1838      	adds	r0, r7, r0
 800817c:	6841      	ldr	r1, [r0, #4]
 800817e:	6800      	ldr	r0, [r0, #0]
 8008180:	f7f9 fc62 	bl	8001a48 <__aeabi_dmul>
 8008184:	0002      	movs	r2, r0
 8008186:	000b      	movs	r3, r1
 8008188:	0020      	movs	r0, r4
 800818a:	0029      	movs	r1, r5
 800818c:	f7f8 fd36 	bl	8000bfc <__aeabi_dadd>
 8008190:	0003      	movs	r3, r0
 8008192:	000c      	movs	r4, r1
 8008194:	0025      	movs	r5, r4
 8008196:	001c      	movs	r4, r3
 8008198:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 800819a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800819c:	6f38      	ldr	r0, [r7, #112]	; 0x70
 800819e:	6f79      	ldr	r1, [r7, #116]	; 0x74
 80081a0:	f7f9 fc52 	bl	8001a48 <__aeabi_dmul>
 80081a4:	0002      	movs	r2, r0
 80081a6:	000b      	movs	r3, r1
 80081a8:	0020      	movs	r0, r4
 80081aa:	0029      	movs	r1, r5
 80081ac:	f7f8 fd26 	bl	8000bfc <__aeabi_dadd>
 80081b0:	0003      	movs	r3, r0
 80081b2:	000c      	movs	r4, r1
 80081b4:	0025      	movs	r5, r4
 80081b6:	001c      	movs	r4, r3
 80081b8:	21f8      	movs	r1, #248	; 0xf8
 80081ba:	187b      	adds	r3, r7, r1
 80081bc:	681a      	ldr	r2, [r3, #0]
 80081be:	685b      	ldr	r3, [r3, #4]
 80081c0:	2088      	movs	r0, #136	; 0x88
 80081c2:	1839      	adds	r1, r7, r0
 80081c4:	6808      	ldr	r0, [r1, #0]
 80081c6:	6849      	ldr	r1, [r1, #4]
 80081c8:	f7f9 fc3e 	bl	8001a48 <__aeabi_dmul>
 80081cc:	0002      	movs	r2, r0
 80081ce:	000b      	movs	r3, r1
 80081d0:	0020      	movs	r0, r4
 80081d2:	0029      	movs	r1, r5
 80081d4:	f7f9 feaa 	bl	8001f2c <__aeabi_dsub>
 80081d8:	0003      	movs	r3, r0
 80081da:	000c      	movs	r4, r1
 80081dc:	62bb      	str	r3, [r7, #40]	; 0x28
 80081de:	62fc      	str	r4, [r7, #44]	; 0x2c
 80081e0:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 80081e2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80081e4:	6eb8      	ldr	r0, [r7, #104]	; 0x68
 80081e6:	6ef9      	ldr	r1, [r7, #108]	; 0x6c
 80081e8:	f7f9 fc2e 	bl	8001a48 <__aeabi_dmul>
 80081ec:	0003      	movs	r3, r0
 80081ee:	000c      	movs	r4, r1
 80081f0:	0025      	movs	r5, r4
 80081f2:	001c      	movs	r4, r3
 80081f4:	19bb      	adds	r3, r7, r6
 80081f6:	681a      	ldr	r2, [r3, #0]
 80081f8:	685b      	ldr	r3, [r3, #4]
 80081fa:	6fb8      	ldr	r0, [r7, #120]	; 0x78
 80081fc:	6ff9      	ldr	r1, [r7, #124]	; 0x7c
 80081fe:	f7f9 fc23 	bl	8001a48 <__aeabi_dmul>
 8008202:	0002      	movs	r2, r0
 8008204:	000b      	movs	r3, r1
 8008206:	0020      	movs	r0, r4
 8008208:	0029      	movs	r1, r5
 800820a:	f7f9 fe8f 	bl	8001f2c <__aeabi_dsub>
 800820e:	0003      	movs	r3, r0
 8008210:	000c      	movs	r4, r1
 8008212:	001d      	movs	r5, r3
 8008214:	0026      	movs	r6, r4
 8008216:	2200      	movs	r2, #0
 8008218:	4b89      	ldr	r3, [pc, #548]	; (8008440 <MadgwickAHRSupdateIMU+0x75c>)
 800821a:	6cb8      	ldr	r0, [r7, #72]	; 0x48
 800821c:	6cf9      	ldr	r1, [r7, #76]	; 0x4c
 800821e:	f7f9 fc13 	bl	8001a48 <__aeabi_dmul>
 8008222:	0003      	movs	r3, r0
 8008224:	000c      	movs	r4, r1
 8008226:	0018      	movs	r0, r3
 8008228:	0021      	movs	r1, r4
 800822a:	4b86      	ldr	r3, [pc, #536]	; (8008444 <MadgwickAHRSupdateIMU+0x760>)
 800822c:	685c      	ldr	r4, [r3, #4]
 800822e:	681b      	ldr	r3, [r3, #0]
 8008230:	001a      	movs	r2, r3
 8008232:	0023      	movs	r3, r4
 8008234:	f7f9 fc08 	bl	8001a48 <__aeabi_dmul>
 8008238:	0003      	movs	r3, r0
 800823a:	000c      	movs	r4, r1
 800823c:	001a      	movs	r2, r3
 800823e:	0023      	movs	r3, r4
 8008240:	0028      	movs	r0, r5
 8008242:	0031      	movs	r1, r6
 8008244:	f7f8 fcda 	bl	8000bfc <__aeabi_dadd>
 8008248:	0003      	movs	r3, r0
 800824a:	000c      	movs	r4, r1
 800824c:	0025      	movs	r5, r4
 800824e:	001c      	movs	r4, r3
 8008250:	21f8      	movs	r1, #248	; 0xf8
 8008252:	187b      	adds	r3, r7, r1
 8008254:	681a      	ldr	r2, [r3, #0]
 8008256:	685b      	ldr	r3, [r3, #4]
 8008258:	2090      	movs	r0, #144	; 0x90
 800825a:	1839      	adds	r1, r7, r0
 800825c:	6808      	ldr	r0, [r1, #0]
 800825e:	6849      	ldr	r1, [r1, #4]
 8008260:	f7f9 fbf2 	bl	8001a48 <__aeabi_dmul>
 8008264:	0002      	movs	r2, r0
 8008266:	000b      	movs	r3, r1
 8008268:	0020      	movs	r0, r4
 800826a:	0029      	movs	r1, r5
 800826c:	f7f9 fe5e 	bl	8001f2c <__aeabi_dsub>
 8008270:	0003      	movs	r3, r0
 8008272:	000c      	movs	r4, r1
 8008274:	0018      	movs	r0, r3
 8008276:	0021      	movs	r1, r4
 8008278:	6eba      	ldr	r2, [r7, #104]	; 0x68
 800827a:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 800827c:	f7f9 fe56 	bl	8001f2c <__aeabi_dsub>
 8008280:	0003      	movs	r3, r0
 8008282:	000c      	movs	r4, r1
 8008284:	0025      	movs	r5, r4
 8008286:	001c      	movs	r4, r3
 8008288:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 800828a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800828c:	6db8      	ldr	r0, [r7, #88]	; 0x58
 800828e:	6df9      	ldr	r1, [r7, #92]	; 0x5c
 8008290:	f7f9 fbda 	bl	8001a48 <__aeabi_dmul>
 8008294:	0002      	movs	r2, r0
 8008296:	000b      	movs	r3, r1
 8008298:	0020      	movs	r0, r4
 800829a:	0029      	movs	r1, r5
 800829c:	f7f8 fcae 	bl	8000bfc <__aeabi_dadd>
 80082a0:	0003      	movs	r3, r0
 80082a2:	000c      	movs	r4, r1
 80082a4:	0025      	movs	r5, r4
 80082a6:	001c      	movs	r4, r3
 80082a8:	6bba      	ldr	r2, [r7, #56]	; 0x38
 80082aa:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80082ac:	6db8      	ldr	r0, [r7, #88]	; 0x58
 80082ae:	6df9      	ldr	r1, [r7, #92]	; 0x5c
 80082b0:	f7f9 fbca 	bl	8001a48 <__aeabi_dmul>
 80082b4:	0002      	movs	r2, r0
 80082b6:	000b      	movs	r3, r1
 80082b8:	0020      	movs	r0, r4
 80082ba:	0029      	movs	r1, r5
 80082bc:	f7f8 fc9e 	bl	8000bfc <__aeabi_dadd>
 80082c0:	0003      	movs	r3, r0
 80082c2:	000c      	movs	r4, r1
 80082c4:	0025      	movs	r5, r4
 80082c6:	001c      	movs	r4, r3
 80082c8:	1c7b      	adds	r3, r7, #1
 80082ca:	33ff      	adds	r3, #255	; 0xff
 80082cc:	681a      	ldr	r2, [r3, #0]
 80082ce:	685b      	ldr	r3, [r3, #4]
 80082d0:	6eb8      	ldr	r0, [r7, #104]	; 0x68
 80082d2:	6ef9      	ldr	r1, [r7, #108]	; 0x6c
 80082d4:	f7f9 fbb8 	bl	8001a48 <__aeabi_dmul>
 80082d8:	0002      	movs	r2, r0
 80082da:	000b      	movs	r3, r1
 80082dc:	0020      	movs	r0, r4
 80082de:	0029      	movs	r1, r5
 80082e0:	f7f8 fc8c 	bl	8000bfc <__aeabi_dadd>
 80082e4:	0003      	movs	r3, r0
 80082e6:	000c      	movs	r4, r1
 80082e8:	623b      	str	r3, [r7, #32]
 80082ea:	627c      	str	r4, [r7, #36]	; 0x24
 80082ec:	2200      	movs	r2, #0
 80082ee:	4b54      	ldr	r3, [pc, #336]	; (8008440 <MadgwickAHRSupdateIMU+0x75c>)
 80082f0:	6cb8      	ldr	r0, [r7, #72]	; 0x48
 80082f2:	6cf9      	ldr	r1, [r7, #76]	; 0x4c
 80082f4:	f7f9 fba8 	bl	8001a48 <__aeabi_dmul>
 80082f8:	0003      	movs	r3, r0
 80082fa:	000c      	movs	r4, r1
 80082fc:	0018      	movs	r0, r3
 80082fe:	0021      	movs	r1, r4
 8008300:	4b4e      	ldr	r3, [pc, #312]	; (800843c <MadgwickAHRSupdateIMU+0x758>)
 8008302:	685c      	ldr	r4, [r3, #4]
 8008304:	681b      	ldr	r3, [r3, #0]
 8008306:	001a      	movs	r2, r3
 8008308:	0023      	movs	r3, r4
 800830a:	f7f9 fb9d 	bl	8001a48 <__aeabi_dmul>
 800830e:	0003      	movs	r3, r0
 8008310:	000c      	movs	r4, r1
 8008312:	0025      	movs	r5, r4
 8008314:	001c      	movs	r4, r3
 8008316:	26f0      	movs	r6, #240	; 0xf0
 8008318:	19bb      	adds	r3, r7, r6
 800831a:	681a      	ldr	r2, [r3, #0]
 800831c:	685b      	ldr	r3, [r3, #4]
 800831e:	2090      	movs	r0, #144	; 0x90
 8008320:	1839      	adds	r1, r7, r0
 8008322:	6808      	ldr	r0, [r1, #0]
 8008324:	6849      	ldr	r1, [r1, #4]
 8008326:	f7f9 fb8f 	bl	8001a48 <__aeabi_dmul>
 800832a:	0002      	movs	r2, r0
 800832c:	000b      	movs	r3, r1
 800832e:	0020      	movs	r0, r4
 8008330:	0029      	movs	r1, r5
 8008332:	f7f8 fc63 	bl	8000bfc <__aeabi_dadd>
 8008336:	0003      	movs	r3, r0
 8008338:	000c      	movs	r4, r1
 800833a:	0025      	movs	r5, r4
 800833c:	001c      	movs	r4, r3
 800833e:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8008340:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8008342:	6e38      	ldr	r0, [r7, #96]	; 0x60
 8008344:	6e79      	ldr	r1, [r7, #100]	; 0x64
 8008346:	f7f9 fb7f 	bl	8001a48 <__aeabi_dmul>
 800834a:	0002      	movs	r2, r0
 800834c:	000b      	movs	r3, r1
 800834e:	0020      	movs	r0, r4
 8008350:	0029      	movs	r1, r5
 8008352:	f7f8 fc53 	bl	8000bfc <__aeabi_dadd>
 8008356:	0003      	movs	r3, r0
 8008358:	000c      	movs	r4, r1
 800835a:	0025      	movs	r5, r4
 800835c:	001c      	movs	r4, r3
 800835e:	21f8      	movs	r1, #248	; 0xf8
 8008360:	187b      	adds	r3, r7, r1
 8008362:	681a      	ldr	r2, [r3, #0]
 8008364:	685b      	ldr	r3, [r3, #4]
 8008366:	6fb8      	ldr	r0, [r7, #120]	; 0x78
 8008368:	6ff9      	ldr	r1, [r7, #124]	; 0x7c
 800836a:	f7f9 fb6d 	bl	8001a48 <__aeabi_dmul>
 800836e:	0002      	movs	r2, r0
 8008370:	000b      	movs	r3, r1
 8008372:	0020      	movs	r0, r4
 8008374:	0029      	movs	r1, r5
 8008376:	f7f9 fdd9 	bl	8001f2c <__aeabi_dsub>
 800837a:	0003      	movs	r3, r0
 800837c:	000c      	movs	r4, r1
 800837e:	0018      	movs	r0, r3
 8008380:	0021      	movs	r1, r4
 8008382:	6e3a      	ldr	r2, [r7, #96]	; 0x60
 8008384:	6e7b      	ldr	r3, [r7, #100]	; 0x64
 8008386:	f7f9 fdd1 	bl	8001f2c <__aeabi_dsub>
 800838a:	0003      	movs	r3, r0
 800838c:	000c      	movs	r4, r1
 800838e:	0025      	movs	r5, r4
 8008390:	001c      	movs	r4, r3
 8008392:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8008394:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8008396:	6d38      	ldr	r0, [r7, #80]	; 0x50
 8008398:	6d79      	ldr	r1, [r7, #84]	; 0x54
 800839a:	f7f9 fb55 	bl	8001a48 <__aeabi_dmul>
 800839e:	0002      	movs	r2, r0
 80083a0:	000b      	movs	r3, r1
 80083a2:	0020      	movs	r0, r4
 80083a4:	0029      	movs	r1, r5
 80083a6:	f7f8 fc29 	bl	8000bfc <__aeabi_dadd>
 80083aa:	0003      	movs	r3, r0
 80083ac:	000c      	movs	r4, r1
 80083ae:	0025      	movs	r5, r4
 80083b0:	001c      	movs	r4, r3
 80083b2:	6bba      	ldr	r2, [r7, #56]	; 0x38
 80083b4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80083b6:	6d38      	ldr	r0, [r7, #80]	; 0x50
 80083b8:	6d79      	ldr	r1, [r7, #84]	; 0x54
 80083ba:	f7f9 fb45 	bl	8001a48 <__aeabi_dmul>
 80083be:	0002      	movs	r2, r0
 80083c0:	000b      	movs	r3, r1
 80083c2:	0020      	movs	r0, r4
 80083c4:	0029      	movs	r1, r5
 80083c6:	f7f8 fc19 	bl	8000bfc <__aeabi_dadd>
 80083ca:	0003      	movs	r3, r0
 80083cc:	000c      	movs	r4, r1
 80083ce:	0025      	movs	r5, r4
 80083d0:	001c      	movs	r4, r3
 80083d2:	1c7b      	adds	r3, r7, #1
 80083d4:	33ff      	adds	r3, #255	; 0xff
 80083d6:	681a      	ldr	r2, [r3, #0]
 80083d8:	685b      	ldr	r3, [r3, #4]
 80083da:	6e38      	ldr	r0, [r7, #96]	; 0x60
 80083dc:	6e79      	ldr	r1, [r7, #100]	; 0x64
 80083de:	f7f9 fb33 	bl	8001a48 <__aeabi_dmul>
 80083e2:	0002      	movs	r2, r0
 80083e4:	000b      	movs	r3, r1
 80083e6:	0020      	movs	r0, r4
 80083e8:	0029      	movs	r1, r5
 80083ea:	f7f8 fc07 	bl	8000bfc <__aeabi_dadd>
 80083ee:	0003      	movs	r3, r0
 80083f0:	000c      	movs	r4, r1
 80083f2:	61bb      	str	r3, [r7, #24]
 80083f4:	61fc      	str	r4, [r7, #28]
 80083f6:	2200      	movs	r2, #0
 80083f8:	4b11      	ldr	r3, [pc, #68]	; (8008440 <MadgwickAHRSupdateIMU+0x75c>)
 80083fa:	6c38      	ldr	r0, [r7, #64]	; 0x40
 80083fc:	6c79      	ldr	r1, [r7, #68]	; 0x44
 80083fe:	f7f9 fb23 	bl	8001a48 <__aeabi_dmul>
 8008402:	0003      	movs	r3, r0
 8008404:	000c      	movs	r4, r1
 8008406:	0018      	movs	r0, r3
 8008408:	0021      	movs	r1, r4
 800840a:	4b11      	ldr	r3, [pc, #68]	; (8008450 <MadgwickAHRSupdateIMU+0x76c>)
 800840c:	685c      	ldr	r4, [r3, #4]
 800840e:	681b      	ldr	r3, [r3, #0]
 8008410:	001a      	movs	r2, r3
 8008412:	0023      	movs	r3, r4
 8008414:	f7f9 fb18 	bl	8001a48 <__aeabi_dmul>
 8008418:	0003      	movs	r3, r0
 800841a:	000c      	movs	r4, r1
 800841c:	0025      	movs	r5, r4
 800841e:	001c      	movs	r4, r3
 8008420:	19bb      	adds	r3, r7, r6
 8008422:	681a      	ldr	r2, [r3, #0]
 8008424:	685b      	ldr	r3, [r3, #4]
 8008426:	2088      	movs	r0, #136	; 0x88
 8008428:	183e      	adds	r6, r7, r0
 800842a:	6830      	ldr	r0, [r6, #0]
 800842c:	6871      	ldr	r1, [r6, #4]
 800842e:	f7f9 fb0b 	bl	8001a48 <__aeabi_dmul>
 8008432:	0002      	movs	r2, r0
 8008434:	000b      	movs	r3, r1
 8008436:	0020      	movs	r0, r4
 8008438:	0029      	movs	r1, r5
 800843a:	e00b      	b.n	8008454 <MadgwickAHRSupdateIMU+0x770>
 800843c:	200002d8 	.word	0x200002d8
 8008440:	40100000 	.word	0x40100000
 8008444:	200002d0 	.word	0x200002d0
 8008448:	40200000 	.word	0x40200000
 800844c:	20000000 	.word	0x20000000
 8008450:	200002e0 	.word	0x200002e0
 8008454:	f7f9 fd6a 	bl	8001f2c <__aeabi_dsub>
 8008458:	0003      	movs	r3, r0
 800845a:	000c      	movs	r4, r1
 800845c:	001d      	movs	r5, r3
 800845e:	0026      	movs	r6, r4
 8008460:	2200      	movs	r2, #0
 8008462:	4be4      	ldr	r3, [pc, #912]	; (80087f4 <MadgwickAHRSupdateIMU+0xb10>)
 8008464:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 8008466:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8008468:	f7f9 faee 	bl	8001a48 <__aeabi_dmul>
 800846c:	0003      	movs	r3, r0
 800846e:	000c      	movs	r4, r1
 8008470:	0018      	movs	r0, r3
 8008472:	0021      	movs	r1, r4
 8008474:	4be0      	ldr	r3, [pc, #896]	; (80087f8 <MadgwickAHRSupdateIMU+0xb14>)
 8008476:	685c      	ldr	r4, [r3, #4]
 8008478:	681b      	ldr	r3, [r3, #0]
 800847a:	001a      	movs	r2, r3
 800847c:	0023      	movs	r3, r4
 800847e:	f7f9 fae3 	bl	8001a48 <__aeabi_dmul>
 8008482:	0003      	movs	r3, r0
 8008484:	000c      	movs	r4, r1
 8008486:	001a      	movs	r2, r3
 8008488:	0023      	movs	r3, r4
 800848a:	0028      	movs	r0, r5
 800848c:	0031      	movs	r1, r6
 800848e:	f7f8 fbb5 	bl	8000bfc <__aeabi_dadd>
 8008492:	0003      	movs	r3, r0
 8008494:	000c      	movs	r4, r1
 8008496:	0025      	movs	r5, r4
 8008498:	001c      	movs	r4, r3
 800849a:	21f8      	movs	r1, #248	; 0xf8
 800849c:	187b      	adds	r3, r7, r1
 800849e:	681a      	ldr	r2, [r3, #0]
 80084a0:	685b      	ldr	r3, [r3, #4]
 80084a2:	2080      	movs	r0, #128	; 0x80
 80084a4:	1839      	adds	r1, r7, r0
 80084a6:	6808      	ldr	r0, [r1, #0]
 80084a8:	6849      	ldr	r1, [r1, #4]
 80084aa:	f7f9 facd 	bl	8001a48 <__aeabi_dmul>
 80084ae:	0002      	movs	r2, r0
 80084b0:	000b      	movs	r3, r1
 80084b2:	0020      	movs	r0, r4
 80084b4:	0029      	movs	r1, r5
 80084b6:	f7f9 fd39 	bl	8001f2c <__aeabi_dsub>
 80084ba:	0003      	movs	r3, r0
 80084bc:	000c      	movs	r4, r1
 80084be:	613b      	str	r3, [r7, #16]
 80084c0:	617c      	str	r4, [r7, #20]
 80084c2:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80084c4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80084c6:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 80084c8:	6af9      	ldr	r1, [r7, #44]	; 0x2c
 80084ca:	f7f9 fabd 	bl	8001a48 <__aeabi_dmul>
 80084ce:	0003      	movs	r3, r0
 80084d0:	000c      	movs	r4, r1
 80084d2:	0025      	movs	r5, r4
 80084d4:	001c      	movs	r4, r3
 80084d6:	6a3a      	ldr	r2, [r7, #32]
 80084d8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80084da:	6a38      	ldr	r0, [r7, #32]
 80084dc:	6a79      	ldr	r1, [r7, #36]	; 0x24
 80084de:	f7f9 fab3 	bl	8001a48 <__aeabi_dmul>
 80084e2:	0002      	movs	r2, r0
 80084e4:	000b      	movs	r3, r1
 80084e6:	0020      	movs	r0, r4
 80084e8:	0029      	movs	r1, r5
 80084ea:	f7f8 fb87 	bl	8000bfc <__aeabi_dadd>
 80084ee:	0003      	movs	r3, r0
 80084f0:	000c      	movs	r4, r1
 80084f2:	0025      	movs	r5, r4
 80084f4:	001c      	movs	r4, r3
 80084f6:	69ba      	ldr	r2, [r7, #24]
 80084f8:	69fb      	ldr	r3, [r7, #28]
 80084fa:	69b8      	ldr	r0, [r7, #24]
 80084fc:	69f9      	ldr	r1, [r7, #28]
 80084fe:	f7f9 faa3 	bl	8001a48 <__aeabi_dmul>
 8008502:	0002      	movs	r2, r0
 8008504:	000b      	movs	r3, r1
 8008506:	0020      	movs	r0, r4
 8008508:	0029      	movs	r1, r5
 800850a:	f7f8 fb77 	bl	8000bfc <__aeabi_dadd>
 800850e:	0003      	movs	r3, r0
 8008510:	000c      	movs	r4, r1
 8008512:	0025      	movs	r5, r4
 8008514:	001c      	movs	r4, r3
 8008516:	693a      	ldr	r2, [r7, #16]
 8008518:	697b      	ldr	r3, [r7, #20]
 800851a:	6938      	ldr	r0, [r7, #16]
 800851c:	6979      	ldr	r1, [r7, #20]
 800851e:	f7f9 fa93 	bl	8001a48 <__aeabi_dmul>
 8008522:	0002      	movs	r2, r0
 8008524:	000b      	movs	r3, r1
 8008526:	0020      	movs	r0, r4
 8008528:	0029      	movs	r1, r5
 800852a:	f7f8 fb67 	bl	8000bfc <__aeabi_dadd>
 800852e:	0003      	movs	r3, r0
 8008530:	000c      	movs	r4, r1
 8008532:	0018      	movs	r0, r3
 8008534:	0021      	movs	r1, r4
 8008536:	f000 f9d5 	bl	80088e4 <invSqrt>
 800853a:	0003      	movs	r3, r0
 800853c:	000c      	movs	r4, r1
 800853e:	2598      	movs	r5, #152	; 0x98
 8008540:	197a      	adds	r2, r7, r5
 8008542:	6013      	str	r3, [r2, #0]
 8008544:	6054      	str	r4, [r2, #4]
 8008546:	197b      	adds	r3, r7, r5
 8008548:	681a      	ldr	r2, [r3, #0]
 800854a:	685b      	ldr	r3, [r3, #4]
 800854c:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 800854e:	6af9      	ldr	r1, [r7, #44]	; 0x2c
 8008550:	f7f9 fa7a 	bl	8001a48 <__aeabi_dmul>
 8008554:	0003      	movs	r3, r0
 8008556:	000c      	movs	r4, r1
 8008558:	62bb      	str	r3, [r7, #40]	; 0x28
 800855a:	62fc      	str	r4, [r7, #44]	; 0x2c
 800855c:	197b      	adds	r3, r7, r5
 800855e:	681a      	ldr	r2, [r3, #0]
 8008560:	685b      	ldr	r3, [r3, #4]
 8008562:	6a38      	ldr	r0, [r7, #32]
 8008564:	6a79      	ldr	r1, [r7, #36]	; 0x24
 8008566:	f7f9 fa6f 	bl	8001a48 <__aeabi_dmul>
 800856a:	0003      	movs	r3, r0
 800856c:	000c      	movs	r4, r1
 800856e:	623b      	str	r3, [r7, #32]
 8008570:	627c      	str	r4, [r7, #36]	; 0x24
 8008572:	197b      	adds	r3, r7, r5
 8008574:	681a      	ldr	r2, [r3, #0]
 8008576:	685b      	ldr	r3, [r3, #4]
 8008578:	69b8      	ldr	r0, [r7, #24]
 800857a:	69f9      	ldr	r1, [r7, #28]
 800857c:	f7f9 fa64 	bl	8001a48 <__aeabi_dmul>
 8008580:	0003      	movs	r3, r0
 8008582:	000c      	movs	r4, r1
 8008584:	61bb      	str	r3, [r7, #24]
 8008586:	61fc      	str	r4, [r7, #28]
 8008588:	197b      	adds	r3, r7, r5
 800858a:	681a      	ldr	r2, [r3, #0]
 800858c:	685b      	ldr	r3, [r3, #4]
 800858e:	6938      	ldr	r0, [r7, #16]
 8008590:	6979      	ldr	r1, [r7, #20]
 8008592:	f7f9 fa59 	bl	8001a48 <__aeabi_dmul>
 8008596:	0003      	movs	r3, r0
 8008598:	000c      	movs	r4, r1
 800859a:	613b      	str	r3, [r7, #16]
 800859c:	617c      	str	r4, [r7, #20]
 800859e:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80085a0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80085a2:	2588      	movs	r5, #136	; 0x88
 80085a4:	006d      	lsls	r5, r5, #1
 80085a6:	1979      	adds	r1, r7, r5
 80085a8:	6808      	ldr	r0, [r1, #0]
 80085aa:	6849      	ldr	r1, [r1, #4]
 80085ac:	f7f9 fa4c 	bl	8001a48 <__aeabi_dmul>
 80085b0:	0003      	movs	r3, r0
 80085b2:	000c      	movs	r4, r1
 80085b4:	001a      	movs	r2, r3
 80085b6:	0023      	movs	r3, r4
 80085b8:	26c0      	movs	r6, #192	; 0xc0
 80085ba:	19b9      	adds	r1, r7, r6
 80085bc:	6808      	ldr	r0, [r1, #0]
 80085be:	6849      	ldr	r1, [r1, #4]
 80085c0:	f7f9 fcb4 	bl	8001f2c <__aeabi_dsub>
 80085c4:	0003      	movs	r3, r0
 80085c6:	000c      	movs	r4, r1
 80085c8:	19ba      	adds	r2, r7, r6
 80085ca:	6013      	str	r3, [r2, #0]
 80085cc:	6054      	str	r4, [r2, #4]
 80085ce:	6a3a      	ldr	r2, [r7, #32]
 80085d0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80085d2:	1979      	adds	r1, r7, r5
 80085d4:	6808      	ldr	r0, [r1, #0]
 80085d6:	6849      	ldr	r1, [r1, #4]
 80085d8:	f7f9 fa36 	bl	8001a48 <__aeabi_dmul>
 80085dc:	0003      	movs	r3, r0
 80085de:	000c      	movs	r4, r1
 80085e0:	001a      	movs	r2, r3
 80085e2:	0023      	movs	r3, r4
 80085e4:	26b8      	movs	r6, #184	; 0xb8
 80085e6:	19b9      	adds	r1, r7, r6
 80085e8:	6808      	ldr	r0, [r1, #0]
 80085ea:	6849      	ldr	r1, [r1, #4]
 80085ec:	f7f9 fc9e 	bl	8001f2c <__aeabi_dsub>
 80085f0:	0003      	movs	r3, r0
 80085f2:	000c      	movs	r4, r1
 80085f4:	19ba      	adds	r2, r7, r6
 80085f6:	6013      	str	r3, [r2, #0]
 80085f8:	6054      	str	r4, [r2, #4]
 80085fa:	69ba      	ldr	r2, [r7, #24]
 80085fc:	69fb      	ldr	r3, [r7, #28]
 80085fe:	1979      	adds	r1, r7, r5
 8008600:	6808      	ldr	r0, [r1, #0]
 8008602:	6849      	ldr	r1, [r1, #4]
 8008604:	f7f9 fa20 	bl	8001a48 <__aeabi_dmul>
 8008608:	0003      	movs	r3, r0
 800860a:	000c      	movs	r4, r1
 800860c:	001a      	movs	r2, r3
 800860e:	0023      	movs	r3, r4
 8008610:	26b0      	movs	r6, #176	; 0xb0
 8008612:	19b9      	adds	r1, r7, r6
 8008614:	6808      	ldr	r0, [r1, #0]
 8008616:	6849      	ldr	r1, [r1, #4]
 8008618:	f7f9 fc88 	bl	8001f2c <__aeabi_dsub>
 800861c:	0003      	movs	r3, r0
 800861e:	000c      	movs	r4, r1
 8008620:	19ba      	adds	r2, r7, r6
 8008622:	6013      	str	r3, [r2, #0]
 8008624:	6054      	str	r4, [r2, #4]
 8008626:	693a      	ldr	r2, [r7, #16]
 8008628:	697b      	ldr	r3, [r7, #20]
 800862a:	1979      	adds	r1, r7, r5
 800862c:	6808      	ldr	r0, [r1, #0]
 800862e:	6849      	ldr	r1, [r1, #4]
 8008630:	f7f9 fa0a 	bl	8001a48 <__aeabi_dmul>
 8008634:	0003      	movs	r3, r0
 8008636:	000c      	movs	r4, r1
 8008638:	001a      	movs	r2, r3
 800863a:	0023      	movs	r3, r4
 800863c:	25a8      	movs	r5, #168	; 0xa8
 800863e:	1979      	adds	r1, r7, r5
 8008640:	6808      	ldr	r0, [r1, #0]
 8008642:	6849      	ldr	r1, [r1, #4]
 8008644:	f7f9 fc72 	bl	8001f2c <__aeabi_dsub>
 8008648:	0003      	movs	r3, r0
 800864a:	000c      	movs	r4, r1
 800864c:	197a      	adds	r2, r7, r5
 800864e:	6013      	str	r3, [r2, #0]
 8008650:	6054      	str	r4, [r2, #4]
 8008652:	25a0      	movs	r5, #160	; 0xa0
 8008654:	197b      	adds	r3, r7, r5
 8008656:	681a      	ldr	r2, [r3, #0]
 8008658:	685b      	ldr	r3, [r3, #4]
 800865a:	2000      	movs	r0, #0
 800865c:	4967      	ldr	r1, [pc, #412]	; (80087fc <MadgwickAHRSupdateIMU+0xb18>)
 800865e:	f7f8 fde9 	bl	8001234 <__aeabi_ddiv>
 8008662:	0003      	movs	r3, r0
 8008664:	000c      	movs	r4, r1
 8008666:	0018      	movs	r0, r3
 8008668:	0021      	movs	r1, r4
 800866a:	23c0      	movs	r3, #192	; 0xc0
 800866c:	18fb      	adds	r3, r7, r3
 800866e:	681a      	ldr	r2, [r3, #0]
 8008670:	685b      	ldr	r3, [r3, #4]
 8008672:	f7f9 f9e9 	bl	8001a48 <__aeabi_dmul>
 8008676:	0003      	movs	r3, r0
 8008678:	000c      	movs	r4, r1
 800867a:	0018      	movs	r0, r3
 800867c:	0021      	movs	r1, r4
 800867e:	4b60      	ldr	r3, [pc, #384]	; (8008800 <MadgwickAHRSupdateIMU+0xb1c>)
 8008680:	685c      	ldr	r4, [r3, #4]
 8008682:	681b      	ldr	r3, [r3, #0]
 8008684:	001a      	movs	r2, r3
 8008686:	0023      	movs	r3, r4
 8008688:	f7f8 fab8 	bl	8000bfc <__aeabi_dadd>
 800868c:	0003      	movs	r3, r0
 800868e:	000c      	movs	r4, r1
 8008690:	4a5b      	ldr	r2, [pc, #364]	; (8008800 <MadgwickAHRSupdateIMU+0xb1c>)
 8008692:	6013      	str	r3, [r2, #0]
 8008694:	6054      	str	r4, [r2, #4]
 8008696:	197b      	adds	r3, r7, r5
 8008698:	681a      	ldr	r2, [r3, #0]
 800869a:	685b      	ldr	r3, [r3, #4]
 800869c:	2000      	movs	r0, #0
 800869e:	4957      	ldr	r1, [pc, #348]	; (80087fc <MadgwickAHRSupdateIMU+0xb18>)
 80086a0:	f7f8 fdc8 	bl	8001234 <__aeabi_ddiv>
 80086a4:	0003      	movs	r3, r0
 80086a6:	000c      	movs	r4, r1
 80086a8:	0018      	movs	r0, r3
 80086aa:	0021      	movs	r1, r4
 80086ac:	23b8      	movs	r3, #184	; 0xb8
 80086ae:	18fb      	adds	r3, r7, r3
 80086b0:	681a      	ldr	r2, [r3, #0]
 80086b2:	685b      	ldr	r3, [r3, #4]
 80086b4:	f7f9 f9c8 	bl	8001a48 <__aeabi_dmul>
 80086b8:	0003      	movs	r3, r0
 80086ba:	000c      	movs	r4, r1
 80086bc:	0018      	movs	r0, r3
 80086be:	0021      	movs	r1, r4
 80086c0:	4b50      	ldr	r3, [pc, #320]	; (8008804 <MadgwickAHRSupdateIMU+0xb20>)
 80086c2:	685c      	ldr	r4, [r3, #4]
 80086c4:	681b      	ldr	r3, [r3, #0]
 80086c6:	001a      	movs	r2, r3
 80086c8:	0023      	movs	r3, r4
 80086ca:	f7f8 fa97 	bl	8000bfc <__aeabi_dadd>
 80086ce:	0003      	movs	r3, r0
 80086d0:	000c      	movs	r4, r1
 80086d2:	4a4c      	ldr	r2, [pc, #304]	; (8008804 <MadgwickAHRSupdateIMU+0xb20>)
 80086d4:	6013      	str	r3, [r2, #0]
 80086d6:	6054      	str	r4, [r2, #4]
 80086d8:	197b      	adds	r3, r7, r5
 80086da:	681a      	ldr	r2, [r3, #0]
 80086dc:	685b      	ldr	r3, [r3, #4]
 80086de:	2000      	movs	r0, #0
 80086e0:	4946      	ldr	r1, [pc, #280]	; (80087fc <MadgwickAHRSupdateIMU+0xb18>)
 80086e2:	f7f8 fda7 	bl	8001234 <__aeabi_ddiv>
 80086e6:	0003      	movs	r3, r0
 80086e8:	000c      	movs	r4, r1
 80086ea:	0018      	movs	r0, r3
 80086ec:	0021      	movs	r1, r4
 80086ee:	23b0      	movs	r3, #176	; 0xb0
 80086f0:	18fb      	adds	r3, r7, r3
 80086f2:	681a      	ldr	r2, [r3, #0]
 80086f4:	685b      	ldr	r3, [r3, #4]
 80086f6:	f7f9 f9a7 	bl	8001a48 <__aeabi_dmul>
 80086fa:	0003      	movs	r3, r0
 80086fc:	000c      	movs	r4, r1
 80086fe:	0018      	movs	r0, r3
 8008700:	0021      	movs	r1, r4
 8008702:	4b41      	ldr	r3, [pc, #260]	; (8008808 <MadgwickAHRSupdateIMU+0xb24>)
 8008704:	685c      	ldr	r4, [r3, #4]
 8008706:	681b      	ldr	r3, [r3, #0]
 8008708:	001a      	movs	r2, r3
 800870a:	0023      	movs	r3, r4
 800870c:	f7f8 fa76 	bl	8000bfc <__aeabi_dadd>
 8008710:	0003      	movs	r3, r0
 8008712:	000c      	movs	r4, r1
 8008714:	4a3c      	ldr	r2, [pc, #240]	; (8008808 <MadgwickAHRSupdateIMU+0xb24>)
 8008716:	6013      	str	r3, [r2, #0]
 8008718:	6054      	str	r4, [r2, #4]
 800871a:	197b      	adds	r3, r7, r5
 800871c:	681a      	ldr	r2, [r3, #0]
 800871e:	685b      	ldr	r3, [r3, #4]
 8008720:	2000      	movs	r0, #0
 8008722:	4936      	ldr	r1, [pc, #216]	; (80087fc <MadgwickAHRSupdateIMU+0xb18>)
 8008724:	f7f8 fd86 	bl	8001234 <__aeabi_ddiv>
 8008728:	0003      	movs	r3, r0
 800872a:	000c      	movs	r4, r1
 800872c:	0018      	movs	r0, r3
 800872e:	0021      	movs	r1, r4
 8008730:	23a8      	movs	r3, #168	; 0xa8
 8008732:	18fb      	adds	r3, r7, r3
 8008734:	681a      	ldr	r2, [r3, #0]
 8008736:	685b      	ldr	r3, [r3, #4]
 8008738:	f7f9 f986 	bl	8001a48 <__aeabi_dmul>
 800873c:	0003      	movs	r3, r0
 800873e:	000c      	movs	r4, r1
 8008740:	0018      	movs	r0, r3
 8008742:	0021      	movs	r1, r4
 8008744:	4b2c      	ldr	r3, [pc, #176]	; (80087f8 <MadgwickAHRSupdateIMU+0xb14>)
 8008746:	685c      	ldr	r4, [r3, #4]
 8008748:	681b      	ldr	r3, [r3, #0]
 800874a:	001a      	movs	r2, r3
 800874c:	0023      	movs	r3, r4
 800874e:	f7f8 fa55 	bl	8000bfc <__aeabi_dadd>
 8008752:	0003      	movs	r3, r0
 8008754:	000c      	movs	r4, r1
 8008756:	4a28      	ldr	r2, [pc, #160]	; (80087f8 <MadgwickAHRSupdateIMU+0xb14>)
 8008758:	6013      	str	r3, [r2, #0]
 800875a:	6054      	str	r4, [r2, #4]
 800875c:	4b28      	ldr	r3, [pc, #160]	; (8008800 <MadgwickAHRSupdateIMU+0xb1c>)
 800875e:	6818      	ldr	r0, [r3, #0]
 8008760:	6859      	ldr	r1, [r3, #4]
 8008762:	4b27      	ldr	r3, [pc, #156]	; (8008800 <MadgwickAHRSupdateIMU+0xb1c>)
 8008764:	685c      	ldr	r4, [r3, #4]
 8008766:	681b      	ldr	r3, [r3, #0]
 8008768:	001a      	movs	r2, r3
 800876a:	0023      	movs	r3, r4
 800876c:	f7f9 f96c 	bl	8001a48 <__aeabi_dmul>
 8008770:	0003      	movs	r3, r0
 8008772:	000c      	movs	r4, r1
 8008774:	001d      	movs	r5, r3
 8008776:	0026      	movs	r6, r4
 8008778:	4b22      	ldr	r3, [pc, #136]	; (8008804 <MadgwickAHRSupdateIMU+0xb20>)
 800877a:	6818      	ldr	r0, [r3, #0]
 800877c:	6859      	ldr	r1, [r3, #4]
 800877e:	4b21      	ldr	r3, [pc, #132]	; (8008804 <MadgwickAHRSupdateIMU+0xb20>)
 8008780:	685c      	ldr	r4, [r3, #4]
 8008782:	681b      	ldr	r3, [r3, #0]
 8008784:	001a      	movs	r2, r3
 8008786:	0023      	movs	r3, r4
 8008788:	f7f9 f95e 	bl	8001a48 <__aeabi_dmul>
 800878c:	0003      	movs	r3, r0
 800878e:	000c      	movs	r4, r1
 8008790:	001a      	movs	r2, r3
 8008792:	0023      	movs	r3, r4
 8008794:	0028      	movs	r0, r5
 8008796:	0031      	movs	r1, r6
 8008798:	f7f8 fa30 	bl	8000bfc <__aeabi_dadd>
 800879c:	0003      	movs	r3, r0
 800879e:	000c      	movs	r4, r1
 80087a0:	001d      	movs	r5, r3
 80087a2:	0026      	movs	r6, r4
 80087a4:	4b18      	ldr	r3, [pc, #96]	; (8008808 <MadgwickAHRSupdateIMU+0xb24>)
 80087a6:	6818      	ldr	r0, [r3, #0]
 80087a8:	6859      	ldr	r1, [r3, #4]
 80087aa:	4b17      	ldr	r3, [pc, #92]	; (8008808 <MadgwickAHRSupdateIMU+0xb24>)
 80087ac:	685c      	ldr	r4, [r3, #4]
 80087ae:	681b      	ldr	r3, [r3, #0]
 80087b0:	001a      	movs	r2, r3
 80087b2:	0023      	movs	r3, r4
 80087b4:	f7f9 f948 	bl	8001a48 <__aeabi_dmul>
 80087b8:	0003      	movs	r3, r0
 80087ba:	000c      	movs	r4, r1
 80087bc:	001a      	movs	r2, r3
 80087be:	0023      	movs	r3, r4
 80087c0:	0028      	movs	r0, r5
 80087c2:	0031      	movs	r1, r6
 80087c4:	f7f8 fa1a 	bl	8000bfc <__aeabi_dadd>
 80087c8:	0003      	movs	r3, r0
 80087ca:	000c      	movs	r4, r1
 80087cc:	001d      	movs	r5, r3
 80087ce:	0026      	movs	r6, r4
 80087d0:	4b09      	ldr	r3, [pc, #36]	; (80087f8 <MadgwickAHRSupdateIMU+0xb14>)
 80087d2:	6818      	ldr	r0, [r3, #0]
 80087d4:	6859      	ldr	r1, [r3, #4]
 80087d6:	4b08      	ldr	r3, [pc, #32]	; (80087f8 <MadgwickAHRSupdateIMU+0xb14>)
 80087d8:	685c      	ldr	r4, [r3, #4]
 80087da:	681b      	ldr	r3, [r3, #0]
 80087dc:	001a      	movs	r2, r3
 80087de:	0023      	movs	r3, r4
 80087e0:	f7f9 f932 	bl	8001a48 <__aeabi_dmul>
 80087e4:	0003      	movs	r3, r0
 80087e6:	000c      	movs	r4, r1
 80087e8:	001a      	movs	r2, r3
 80087ea:	0023      	movs	r3, r4
 80087ec:	0028      	movs	r0, r5
 80087ee:	0031      	movs	r1, r6
 80087f0:	e00c      	b.n	800880c <MadgwickAHRSupdateIMU+0xb28>
 80087f2:	46c0      	nop			; (mov r8, r8)
 80087f4:	40100000 	.word	0x40100000
 80087f8:	200002e0 	.word	0x200002e0
 80087fc:	3ff00000 	.word	0x3ff00000
 8008800:	20000000 	.word	0x20000000
 8008804:	200002d0 	.word	0x200002d0
 8008808:	200002d8 	.word	0x200002d8
 800880c:	f7f8 f9f6 	bl	8000bfc <__aeabi_dadd>
 8008810:	0003      	movs	r3, r0
 8008812:	000c      	movs	r4, r1
 8008814:	0018      	movs	r0, r3
 8008816:	0021      	movs	r1, r4
 8008818:	f000 f864 	bl	80088e4 <invSqrt>
 800881c:	0003      	movs	r3, r0
 800881e:	000c      	movs	r4, r1
 8008820:	2598      	movs	r5, #152	; 0x98
 8008822:	197a      	adds	r2, r7, r5
 8008824:	6013      	str	r3, [r2, #0]
 8008826:	6054      	str	r4, [r2, #4]
 8008828:	4b2a      	ldr	r3, [pc, #168]	; (80088d4 <MadgwickAHRSupdateIMU+0xbf0>)
 800882a:	6818      	ldr	r0, [r3, #0]
 800882c:	6859      	ldr	r1, [r3, #4]
 800882e:	197b      	adds	r3, r7, r5
 8008830:	681a      	ldr	r2, [r3, #0]
 8008832:	685b      	ldr	r3, [r3, #4]
 8008834:	f7f9 f908 	bl	8001a48 <__aeabi_dmul>
 8008838:	0003      	movs	r3, r0
 800883a:	000c      	movs	r4, r1
 800883c:	4a25      	ldr	r2, [pc, #148]	; (80088d4 <MadgwickAHRSupdateIMU+0xbf0>)
 800883e:	6013      	str	r3, [r2, #0]
 8008840:	6054      	str	r4, [r2, #4]
 8008842:	4b25      	ldr	r3, [pc, #148]	; (80088d8 <MadgwickAHRSupdateIMU+0xbf4>)
 8008844:	6818      	ldr	r0, [r3, #0]
 8008846:	6859      	ldr	r1, [r3, #4]
 8008848:	197b      	adds	r3, r7, r5
 800884a:	681a      	ldr	r2, [r3, #0]
 800884c:	685b      	ldr	r3, [r3, #4]
 800884e:	f7f9 f8fb 	bl	8001a48 <__aeabi_dmul>
 8008852:	0003      	movs	r3, r0
 8008854:	000c      	movs	r4, r1
 8008856:	4a20      	ldr	r2, [pc, #128]	; (80088d8 <MadgwickAHRSupdateIMU+0xbf4>)
 8008858:	6013      	str	r3, [r2, #0]
 800885a:	6054      	str	r4, [r2, #4]
 800885c:	4b1f      	ldr	r3, [pc, #124]	; (80088dc <MadgwickAHRSupdateIMU+0xbf8>)
 800885e:	6818      	ldr	r0, [r3, #0]
 8008860:	6859      	ldr	r1, [r3, #4]
 8008862:	197b      	adds	r3, r7, r5
 8008864:	681a      	ldr	r2, [r3, #0]
 8008866:	685b      	ldr	r3, [r3, #4]
 8008868:	f7f9 f8ee 	bl	8001a48 <__aeabi_dmul>
 800886c:	0003      	movs	r3, r0
 800886e:	000c      	movs	r4, r1
 8008870:	4a1a      	ldr	r2, [pc, #104]	; (80088dc <MadgwickAHRSupdateIMU+0xbf8>)
 8008872:	6013      	str	r3, [r2, #0]
 8008874:	6054      	str	r4, [r2, #4]
 8008876:	4b1a      	ldr	r3, [pc, #104]	; (80088e0 <MadgwickAHRSupdateIMU+0xbfc>)
 8008878:	6818      	ldr	r0, [r3, #0]
 800887a:	6859      	ldr	r1, [r3, #4]
 800887c:	197b      	adds	r3, r7, r5
 800887e:	681a      	ldr	r2, [r3, #0]
 8008880:	685b      	ldr	r3, [r3, #4]
 8008882:	f7f9 f8e1 	bl	8001a48 <__aeabi_dmul>
 8008886:	0003      	movs	r3, r0
 8008888:	000c      	movs	r4, r1
 800888a:	4a15      	ldr	r2, [pc, #84]	; (80088e0 <MadgwickAHRSupdateIMU+0xbfc>)
 800888c:	6013      	str	r3, [r2, #0]
 800888e:	6054      	str	r4, [r2, #4]
 8008890:	4b10      	ldr	r3, [pc, #64]	; (80088d4 <MadgwickAHRSupdateIMU+0xbf0>)
 8008892:	685c      	ldr	r4, [r3, #4]
 8008894:	681b      	ldr	r3, [r3, #0]
 8008896:	68fa      	ldr	r2, [r7, #12]
 8008898:	6013      	str	r3, [r2, #0]
 800889a:	6054      	str	r4, [r2, #4]
 800889c:	68fb      	ldr	r3, [r7, #12]
 800889e:	3308      	adds	r3, #8
 80088a0:	001a      	movs	r2, r3
 80088a2:	4b0d      	ldr	r3, [pc, #52]	; (80088d8 <MadgwickAHRSupdateIMU+0xbf4>)
 80088a4:	685c      	ldr	r4, [r3, #4]
 80088a6:	681b      	ldr	r3, [r3, #0]
 80088a8:	6013      	str	r3, [r2, #0]
 80088aa:	6054      	str	r4, [r2, #4]
 80088ac:	68fb      	ldr	r3, [r7, #12]
 80088ae:	3310      	adds	r3, #16
 80088b0:	001a      	movs	r2, r3
 80088b2:	4b0a      	ldr	r3, [pc, #40]	; (80088dc <MadgwickAHRSupdateIMU+0xbf8>)
 80088b4:	685c      	ldr	r4, [r3, #4]
 80088b6:	681b      	ldr	r3, [r3, #0]
 80088b8:	6013      	str	r3, [r2, #0]
 80088ba:	6054      	str	r4, [r2, #4]
 80088bc:	68fb      	ldr	r3, [r7, #12]
 80088be:	3318      	adds	r3, #24
 80088c0:	001a      	movs	r2, r3
 80088c2:	4b07      	ldr	r3, [pc, #28]	; (80088e0 <MadgwickAHRSupdateIMU+0xbfc>)
 80088c4:	685c      	ldr	r4, [r3, #4]
 80088c6:	681b      	ldr	r3, [r3, #0]
 80088c8:	6013      	str	r3, [r2, #0]
 80088ca:	6054      	str	r4, [r2, #4]
 80088cc:	46c0      	nop			; (mov r8, r8)
 80088ce:	46bd      	mov	sp, r7
 80088d0:	b033      	add	sp, #204	; 0xcc
 80088d2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80088d4:	20000000 	.word	0x20000000
 80088d8:	200002d0 	.word	0x200002d0
 80088dc:	200002d8 	.word	0x200002d8
 80088e0:	200002e0 	.word	0x200002e0

080088e4 <invSqrt>:
 80088e4:	b590      	push	{r4, r7, lr}
 80088e6:	b08b      	sub	sp, #44	; 0x2c
 80088e8:	af00      	add	r7, sp, #0
 80088ea:	6038      	str	r0, [r7, #0]
 80088ec:	6079      	str	r1, [r7, #4]
 80088ee:	4b4d      	ldr	r3, [pc, #308]	; (8008a24 <invSqrt+0x140>)
 80088f0:	681b      	ldr	r3, [r3, #0]
 80088f2:	2b00      	cmp	r3, #0
 80088f4:	d145      	bne.n	8008982 <invSqrt+0x9e>
 80088f6:	6838      	ldr	r0, [r7, #0]
 80088f8:	6879      	ldr	r1, [r7, #4]
 80088fa:	2200      	movs	r2, #0
 80088fc:	4b4a      	ldr	r3, [pc, #296]	; (8008a28 <invSqrt+0x144>)
 80088fe:	f7f9 f8a3 	bl	8001a48 <__aeabi_dmul>
 8008902:	0003      	movs	r3, r0
 8008904:	000c      	movs	r4, r1
 8008906:	61bb      	str	r3, [r7, #24]
 8008908:	61fc      	str	r4, [r7, #28]
 800890a:	683b      	ldr	r3, [r7, #0]
 800890c:	687c      	ldr	r4, [r7, #4]
 800890e:	613b      	str	r3, [r7, #16]
 8008910:	617c      	str	r4, [r7, #20]
 8008912:	2310      	movs	r3, #16
 8008914:	18fb      	adds	r3, r7, r3
 8008916:	681b      	ldr	r3, [r3, #0]
 8008918:	60fb      	str	r3, [r7, #12]
 800891a:	68fb      	ldr	r3, [r7, #12]
 800891c:	105b      	asrs	r3, r3, #1
 800891e:	4a43      	ldr	r2, [pc, #268]	; (8008a2c <invSqrt+0x148>)
 8008920:	1ad3      	subs	r3, r2, r3
 8008922:	60fb      	str	r3, [r7, #12]
 8008924:	230c      	movs	r3, #12
 8008926:	18fb      	adds	r3, r7, r3
 8008928:	685c      	ldr	r4, [r3, #4]
 800892a:	681b      	ldr	r3, [r3, #0]
 800892c:	613b      	str	r3, [r7, #16]
 800892e:	617c      	str	r4, [r7, #20]
 8008930:	6938      	ldr	r0, [r7, #16]
 8008932:	6979      	ldr	r1, [r7, #20]
 8008934:	69ba      	ldr	r2, [r7, #24]
 8008936:	69fb      	ldr	r3, [r7, #28]
 8008938:	f7f9 f886 	bl	8001a48 <__aeabi_dmul>
 800893c:	0003      	movs	r3, r0
 800893e:	000c      	movs	r4, r1
 8008940:	0018      	movs	r0, r3
 8008942:	0021      	movs	r1, r4
 8008944:	693b      	ldr	r3, [r7, #16]
 8008946:	697c      	ldr	r4, [r7, #20]
 8008948:	001a      	movs	r2, r3
 800894a:	0023      	movs	r3, r4
 800894c:	f7f9 f87c 	bl	8001a48 <__aeabi_dmul>
 8008950:	0003      	movs	r3, r0
 8008952:	000c      	movs	r4, r1
 8008954:	001a      	movs	r2, r3
 8008956:	0023      	movs	r3, r4
 8008958:	2000      	movs	r0, #0
 800895a:	4935      	ldr	r1, [pc, #212]	; (8008a30 <invSqrt+0x14c>)
 800895c:	f7f9 fae6 	bl	8001f2c <__aeabi_dsub>
 8008960:	0003      	movs	r3, r0
 8008962:	000c      	movs	r4, r1
 8008964:	0018      	movs	r0, r3
 8008966:	0021      	movs	r1, r4
 8008968:	693b      	ldr	r3, [r7, #16]
 800896a:	697c      	ldr	r4, [r7, #20]
 800896c:	001a      	movs	r2, r3
 800896e:	0023      	movs	r3, r4
 8008970:	f7f9 f86a 	bl	8001a48 <__aeabi_dmul>
 8008974:	0003      	movs	r3, r0
 8008976:	000c      	movs	r4, r1
 8008978:	613b      	str	r3, [r7, #16]
 800897a:	617c      	str	r4, [r7, #20]
 800897c:	693b      	ldr	r3, [r7, #16]
 800897e:	697c      	ldr	r4, [r7, #20]
 8008980:	e04a      	b.n	8008a18 <invSqrt+0x134>
 8008982:	4b28      	ldr	r3, [pc, #160]	; (8008a24 <invSqrt+0x140>)
 8008984:	681b      	ldr	r3, [r3, #0]
 8008986:	2b01      	cmp	r3, #1
 8008988:	d136      	bne.n	80089f8 <invSqrt+0x114>
 800898a:	003b      	movs	r3, r7
 800898c:	681b      	ldr	r3, [r3, #0]
 800898e:	085b      	lsrs	r3, r3, #1
 8008990:	4a28      	ldr	r2, [pc, #160]	; (8008a34 <invSqrt+0x150>)
 8008992:	1ad3      	subs	r3, r2, r3
 8008994:	60bb      	str	r3, [r7, #8]
 8008996:	2308      	movs	r3, #8
 8008998:	18fb      	adds	r3, r7, r3
 800899a:	685c      	ldr	r4, [r3, #4]
 800899c:	681b      	ldr	r3, [r3, #0]
 800899e:	623b      	str	r3, [r7, #32]
 80089a0:	627c      	str	r4, [r7, #36]	; 0x24
 80089a2:	6838      	ldr	r0, [r7, #0]
 80089a4:	6879      	ldr	r1, [r7, #4]
 80089a6:	2280      	movs	r2, #128	; 0x80
 80089a8:	05d2      	lsls	r2, r2, #23
 80089aa:	4b23      	ldr	r3, [pc, #140]	; (8008a38 <invSqrt+0x154>)
 80089ac:	f7f9 f84c 	bl	8001a48 <__aeabi_dmul>
 80089b0:	0003      	movs	r3, r0
 80089b2:	000c      	movs	r4, r1
 80089b4:	0018      	movs	r0, r3
 80089b6:	0021      	movs	r1, r4
 80089b8:	6a3a      	ldr	r2, [r7, #32]
 80089ba:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80089bc:	f7f9 f844 	bl	8001a48 <__aeabi_dmul>
 80089c0:	0003      	movs	r3, r0
 80089c2:	000c      	movs	r4, r1
 80089c4:	0018      	movs	r0, r3
 80089c6:	0021      	movs	r1, r4
 80089c8:	6a3a      	ldr	r2, [r7, #32]
 80089ca:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80089cc:	f7f9 f83c 	bl	8001a48 <__aeabi_dmul>
 80089d0:	0003      	movs	r3, r0
 80089d2:	000c      	movs	r4, r1
 80089d4:	001a      	movs	r2, r3
 80089d6:	0023      	movs	r3, r4
 80089d8:	20e0      	movs	r0, #224	; 0xe0
 80089da:	0600      	lsls	r0, r0, #24
 80089dc:	4917      	ldr	r1, [pc, #92]	; (8008a3c <invSqrt+0x158>)
 80089de:	f7f9 faa5 	bl	8001f2c <__aeabi_dsub>
 80089e2:	0003      	movs	r3, r0
 80089e4:	000c      	movs	r4, r1
 80089e6:	0018      	movs	r0, r3
 80089e8:	0021      	movs	r1, r4
 80089ea:	6a3a      	ldr	r2, [r7, #32]
 80089ec:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80089ee:	f7f9 f82b 	bl	8001a48 <__aeabi_dmul>
 80089f2:	0003      	movs	r3, r0
 80089f4:	000c      	movs	r4, r1
 80089f6:	e00f      	b.n	8008a18 <invSqrt+0x134>
 80089f8:	683b      	ldr	r3, [r7, #0]
 80089fa:	687c      	ldr	r4, [r7, #4]
 80089fc:	0018      	movs	r0, r3
 80089fe:	0021      	movs	r1, r4
 8008a00:	f000 fd70 	bl	80094e4 <sqrt>
 8008a04:	0003      	movs	r3, r0
 8008a06:	000c      	movs	r4, r1
 8008a08:	001a      	movs	r2, r3
 8008a0a:	0023      	movs	r3, r4
 8008a0c:	2000      	movs	r0, #0
 8008a0e:	490c      	ldr	r1, [pc, #48]	; (8008a40 <invSqrt+0x15c>)
 8008a10:	f7f8 fc10 	bl	8001234 <__aeabi_ddiv>
 8008a14:	0003      	movs	r3, r0
 8008a16:	000c      	movs	r4, r1
 8008a18:	0018      	movs	r0, r3
 8008a1a:	0021      	movs	r1, r4
 8008a1c:	46bd      	mov	sp, r7
 8008a1e:	b00b      	add	sp, #44	; 0x2c
 8008a20:	bd90      	pop	{r4, r7, pc}
 8008a22:	46c0      	nop			; (mov r8, r8)
 8008a24:	20000008 	.word	0x20000008
 8008a28:	3fe00000 	.word	0x3fe00000
 8008a2c:	5f3759df 	.word	0x5f3759df
 8008a30:	3ff80000 	.word	0x3ff80000
 8008a34:	5f1f1412 	.word	0x5f1f1412
 8008a38:	3fe6da62 	.word	0x3fe6da62
 8008a3c:	3ffb0a3f 	.word	0x3ffb0a3f
 8008a40:	3ff00000 	.word	0x3ff00000

08008a44 <quat_mult>:
 8008a44:	b5f0      	push	{r4, r5, r6, r7, lr}
 8008a46:	b087      	sub	sp, #28
 8008a48:	af00      	add	r7, sp, #0
 8008a4a:	60f8      	str	r0, [r7, #12]
 8008a4c:	603a      	str	r2, [r7, #0]
 8008a4e:	607b      	str	r3, [r7, #4]
 8008a50:	2317      	movs	r3, #23
 8008a52:	18fb      	adds	r3, r7, r3
 8008a54:	2200      	movs	r2, #0
 8008a56:	701a      	strb	r2, [r3, #0]
 8008a58:	e019      	b.n	8008a8e <quat_mult+0x4a>
 8008a5a:	2617      	movs	r6, #23
 8008a5c:	19bb      	adds	r3, r7, r6
 8008a5e:	781b      	ldrb	r3, [r3, #0]
 8008a60:	00db      	lsls	r3, r3, #3
 8008a62:	68fa      	ldr	r2, [r7, #12]
 8008a64:	18d3      	adds	r3, r2, r3
 8008a66:	6818      	ldr	r0, [r3, #0]
 8008a68:	6859      	ldr	r1, [r3, #4]
 8008a6a:	19bb      	adds	r3, r7, r6
 8008a6c:	781b      	ldrb	r3, [r3, #0]
 8008a6e:	00db      	lsls	r3, r3, #3
 8008a70:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8008a72:	18d5      	adds	r5, r2, r3
 8008a74:	683a      	ldr	r2, [r7, #0]
 8008a76:	687b      	ldr	r3, [r7, #4]
 8008a78:	f7f8 ffe6 	bl	8001a48 <__aeabi_dmul>
 8008a7c:	0003      	movs	r3, r0
 8008a7e:	000c      	movs	r4, r1
 8008a80:	602b      	str	r3, [r5, #0]
 8008a82:	606c      	str	r4, [r5, #4]
 8008a84:	19bb      	adds	r3, r7, r6
 8008a86:	781a      	ldrb	r2, [r3, #0]
 8008a88:	19bb      	adds	r3, r7, r6
 8008a8a:	3201      	adds	r2, #1
 8008a8c:	701a      	strb	r2, [r3, #0]
 8008a8e:	2317      	movs	r3, #23
 8008a90:	18fb      	adds	r3, r7, r3
 8008a92:	781b      	ldrb	r3, [r3, #0]
 8008a94:	2b03      	cmp	r3, #3
 8008a96:	d9e0      	bls.n	8008a5a <quat_mult+0x16>
 8008a98:	46c0      	nop			; (mov r8, r8)
 8008a9a:	46bd      	mov	sp, r7
 8008a9c:	b007      	add	sp, #28
 8008a9e:	bdf0      	pop	{r4, r5, r6, r7, pc}

08008aa0 <quat_abs>:
 8008aa0:	b590      	push	{r4, r7, lr}
 8008aa2:	b087      	sub	sp, #28
 8008aa4:	af00      	add	r7, sp, #0
 8008aa6:	6078      	str	r0, [r7, #4]
 8008aa8:	2300      	movs	r3, #0
 8008aaa:	2400      	movs	r4, #0
 8008aac:	613b      	str	r3, [r7, #16]
 8008aae:	617c      	str	r4, [r7, #20]
 8008ab0:	2300      	movs	r3, #0
 8008ab2:	60fb      	str	r3, [r7, #12]
 8008ab4:	e01b      	b.n	8008aee <quat_abs+0x4e>
 8008ab6:	68fb      	ldr	r3, [r7, #12]
 8008ab8:	00db      	lsls	r3, r3, #3
 8008aba:	687a      	ldr	r2, [r7, #4]
 8008abc:	18d3      	adds	r3, r2, r3
 8008abe:	6818      	ldr	r0, [r3, #0]
 8008ac0:	6859      	ldr	r1, [r3, #4]
 8008ac2:	2300      	movs	r3, #0
 8008ac4:	2480      	movs	r4, #128	; 0x80
 8008ac6:	05e4      	lsls	r4, r4, #23
 8008ac8:	001a      	movs	r2, r3
 8008aca:	0023      	movs	r3, r4
 8008acc:	f000 fb50 	bl	8009170 <pow>
 8008ad0:	0003      	movs	r3, r0
 8008ad2:	000c      	movs	r4, r1
 8008ad4:	001a      	movs	r2, r3
 8008ad6:	0023      	movs	r3, r4
 8008ad8:	6938      	ldr	r0, [r7, #16]
 8008ada:	6979      	ldr	r1, [r7, #20]
 8008adc:	f7f8 f88e 	bl	8000bfc <__aeabi_dadd>
 8008ae0:	0003      	movs	r3, r0
 8008ae2:	000c      	movs	r4, r1
 8008ae4:	613b      	str	r3, [r7, #16]
 8008ae6:	617c      	str	r4, [r7, #20]
 8008ae8:	68fb      	ldr	r3, [r7, #12]
 8008aea:	3301      	adds	r3, #1
 8008aec:	60fb      	str	r3, [r7, #12]
 8008aee:	68fb      	ldr	r3, [r7, #12]
 8008af0:	2b03      	cmp	r3, #3
 8008af2:	dde0      	ble.n	8008ab6 <quat_abs+0x16>
 8008af4:	693b      	ldr	r3, [r7, #16]
 8008af6:	697c      	ldr	r4, [r7, #20]
 8008af8:	0018      	movs	r0, r3
 8008afa:	0021      	movs	r1, r4
 8008afc:	f000 fcf2 	bl	80094e4 <sqrt>
 8008b00:	0003      	movs	r3, r0
 8008b02:	000c      	movs	r4, r1
 8008b04:	0018      	movs	r0, r3
 8008b06:	0021      	movs	r1, r4
 8008b08:	46bd      	mov	sp, r7
 8008b0a:	b007      	add	sp, #28
 8008b0c:	bd90      	pop	{r4, r7, pc}
	...

08008b10 <quat_normalize>:
 8008b10:	b5b0      	push	{r4, r5, r7, lr}
 8008b12:	b084      	sub	sp, #16
 8008b14:	af02      	add	r7, sp, #8
 8008b16:	6078      	str	r0, [r7, #4]
 8008b18:	6039      	str	r1, [r7, #0]
 8008b1a:	687b      	ldr	r3, [r7, #4]
 8008b1c:	0018      	movs	r0, r3
 8008b1e:	f7ff ffbf 	bl	8008aa0 <quat_abs>
 8008b22:	0003      	movs	r3, r0
 8008b24:	000c      	movs	r4, r1
 8008b26:	001a      	movs	r2, r3
 8008b28:	0023      	movs	r3, r4
 8008b2a:	2000      	movs	r0, #0
 8008b2c:	4909      	ldr	r1, [pc, #36]	; (8008b54 <quat_normalize+0x44>)
 8008b2e:	f7f8 fb81 	bl	8001234 <__aeabi_ddiv>
 8008b32:	0003      	movs	r3, r0
 8008b34:	000c      	movs	r4, r1
 8008b36:	0025      	movs	r5, r4
 8008b38:	001c      	movs	r4, r3
 8008b3a:	6879      	ldr	r1, [r7, #4]
 8008b3c:	683b      	ldr	r3, [r7, #0]
 8008b3e:	9300      	str	r3, [sp, #0]
 8008b40:	0022      	movs	r2, r4
 8008b42:	002b      	movs	r3, r5
 8008b44:	0008      	movs	r0, r1
 8008b46:	f7ff ff7d 	bl	8008a44 <quat_mult>
 8008b4a:	46c0      	nop			; (mov r8, r8)
 8008b4c:	46bd      	mov	sp, r7
 8008b4e:	b002      	add	sp, #8
 8008b50:	bdb0      	pop	{r4, r5, r7, pc}
 8008b52:	46c0      	nop			; (mov r8, r8)
 8008b54:	3ff00000 	.word	0x3ff00000

08008b58 <quat_invert>:
 8008b58:	b5f0      	push	{r4, r5, r6, r7, lr}
 8008b5a:	b08d      	sub	sp, #52	; 0x34
 8008b5c:	af00      	add	r7, sp, #0
 8008b5e:	6078      	str	r0, [r7, #4]
 8008b60:	6039      	str	r1, [r7, #0]
 8008b62:	687b      	ldr	r3, [r7, #4]
 8008b64:	685c      	ldr	r4, [r3, #4]
 8008b66:	681b      	ldr	r3, [r3, #0]
 8008b68:	683a      	ldr	r2, [r7, #0]
 8008b6a:	6013      	str	r3, [r2, #0]
 8008b6c:	6054      	str	r4, [r2, #4]
 8008b6e:	2301      	movs	r3, #1
 8008b70:	62fb      	str	r3, [r7, #44]	; 0x2c
 8008b72:	e014      	b.n	8008b9e <quat_invert+0x46>
 8008b74:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8008b76:	00db      	lsls	r3, r3, #3
 8008b78:	687a      	ldr	r2, [r7, #4]
 8008b7a:	18d3      	adds	r3, r2, r3
 8008b7c:	685c      	ldr	r4, [r3, #4]
 8008b7e:	681b      	ldr	r3, [r3, #0]
 8008b80:	6afa      	ldr	r2, [r7, #44]	; 0x2c
 8008b82:	00d2      	lsls	r2, r2, #3
 8008b84:	6839      	ldr	r1, [r7, #0]
 8008b86:	188a      	adds	r2, r1, r2
 8008b88:	0019      	movs	r1, r3
 8008b8a:	000d      	movs	r5, r1
 8008b8c:	2180      	movs	r1, #128	; 0x80
 8008b8e:	0609      	lsls	r1, r1, #24
 8008b90:	4061      	eors	r1, r4
 8008b92:	000e      	movs	r6, r1
 8008b94:	6015      	str	r5, [r2, #0]
 8008b96:	6056      	str	r6, [r2, #4]
 8008b98:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8008b9a:	3301      	adds	r3, #1
 8008b9c:	62fb      	str	r3, [r7, #44]	; 0x2c
 8008b9e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8008ba0:	2b03      	cmp	r3, #3
 8008ba2:	dde7      	ble.n	8008b74 <quat_invert+0x1c>
 8008ba4:	2408      	movs	r4, #8
 8008ba6:	193b      	adds	r3, r7, r4
 8008ba8:	0018      	movs	r0, r3
 8008baa:	2320      	movs	r3, #32
 8008bac:	001a      	movs	r2, r3
 8008bae:	2100      	movs	r1, #0
 8008bb0:	f000 fad5 	bl	800915e <memset>
 8008bb4:	193a      	adds	r2, r7, r4
 8008bb6:	683b      	ldr	r3, [r7, #0]
 8008bb8:	0011      	movs	r1, r2
 8008bba:	0018      	movs	r0, r3
 8008bbc:	f7ff ffa8 	bl	8008b10 <quat_normalize>
 8008bc0:	2300      	movs	r3, #0
 8008bc2:	62bb      	str	r3, [r7, #40]	; 0x28
 8008bc4:	e00f      	b.n	8008be6 <quat_invert+0x8e>
 8008bc6:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8008bc8:	00db      	lsls	r3, r3, #3
 8008bca:	683a      	ldr	r2, [r7, #0]
 8008bcc:	18d2      	adds	r2, r2, r3
 8008bce:	2308      	movs	r3, #8
 8008bd0:	18f9      	adds	r1, r7, r3
 8008bd2:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8008bd4:	00db      	lsls	r3, r3, #3
 8008bd6:	18cb      	adds	r3, r1, r3
 8008bd8:	685c      	ldr	r4, [r3, #4]
 8008bda:	681b      	ldr	r3, [r3, #0]
 8008bdc:	6013      	str	r3, [r2, #0]
 8008bde:	6054      	str	r4, [r2, #4]
 8008be0:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8008be2:	3301      	adds	r3, #1
 8008be4:	62bb      	str	r3, [r7, #40]	; 0x28
 8008be6:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8008be8:	2b03      	cmp	r3, #3
 8008bea:	ddec      	ble.n	8008bc6 <quat_invert+0x6e>
 8008bec:	46c0      	nop			; (mov r8, r8)
 8008bee:	46bd      	mov	sp, r7
 8008bf0:	b00d      	add	sp, #52	; 0x34
 8008bf2:	bdf0      	pop	{r4, r5, r6, r7, pc}

08008bf4 <quat_mult_by_quat>:
 8008bf4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8008bf6:	b08f      	sub	sp, #60	; 0x3c
 8008bf8:	af00      	add	r7, sp, #0
 8008bfa:	60f8      	str	r0, [r7, #12]
 8008bfc:	60b9      	str	r1, [r7, #8]
 8008bfe:	607a      	str	r2, [r7, #4]
 8008c00:	2310      	movs	r3, #16
 8008c02:	18fb      	adds	r3, r7, r3
 8008c04:	0018      	movs	r0, r3
 8008c06:	2320      	movs	r3, #32
 8008c08:	001a      	movs	r2, r3
 8008c0a:	2100      	movs	r1, #0
 8008c0c:	f000 faa7 	bl	800915e <memset>
 8008c10:	68fb      	ldr	r3, [r7, #12]
 8008c12:	6818      	ldr	r0, [r3, #0]
 8008c14:	6859      	ldr	r1, [r3, #4]
 8008c16:	68bb      	ldr	r3, [r7, #8]
 8008c18:	685c      	ldr	r4, [r3, #4]
 8008c1a:	681b      	ldr	r3, [r3, #0]
 8008c1c:	001a      	movs	r2, r3
 8008c1e:	0023      	movs	r3, r4
 8008c20:	f7f8 ff12 	bl	8001a48 <__aeabi_dmul>
 8008c24:	0003      	movs	r3, r0
 8008c26:	000c      	movs	r4, r1
 8008c28:	001d      	movs	r5, r3
 8008c2a:	0026      	movs	r6, r4
 8008c2c:	68fb      	ldr	r3, [r7, #12]
 8008c2e:	3308      	adds	r3, #8
 8008c30:	6818      	ldr	r0, [r3, #0]
 8008c32:	6859      	ldr	r1, [r3, #4]
 8008c34:	68bb      	ldr	r3, [r7, #8]
 8008c36:	3308      	adds	r3, #8
 8008c38:	685c      	ldr	r4, [r3, #4]
 8008c3a:	681b      	ldr	r3, [r3, #0]
 8008c3c:	001a      	movs	r2, r3
 8008c3e:	0023      	movs	r3, r4
 8008c40:	f7f8 ff02 	bl	8001a48 <__aeabi_dmul>
 8008c44:	0003      	movs	r3, r0
 8008c46:	000c      	movs	r4, r1
 8008c48:	001a      	movs	r2, r3
 8008c4a:	0023      	movs	r3, r4
 8008c4c:	0028      	movs	r0, r5
 8008c4e:	0031      	movs	r1, r6
 8008c50:	f7f9 f96c 	bl	8001f2c <__aeabi_dsub>
 8008c54:	0003      	movs	r3, r0
 8008c56:	000c      	movs	r4, r1
 8008c58:	001d      	movs	r5, r3
 8008c5a:	0026      	movs	r6, r4
 8008c5c:	68fb      	ldr	r3, [r7, #12]
 8008c5e:	3310      	adds	r3, #16
 8008c60:	6818      	ldr	r0, [r3, #0]
 8008c62:	6859      	ldr	r1, [r3, #4]
 8008c64:	68bb      	ldr	r3, [r7, #8]
 8008c66:	3310      	adds	r3, #16
 8008c68:	685c      	ldr	r4, [r3, #4]
 8008c6a:	681b      	ldr	r3, [r3, #0]
 8008c6c:	001a      	movs	r2, r3
 8008c6e:	0023      	movs	r3, r4
 8008c70:	f7f8 feea 	bl	8001a48 <__aeabi_dmul>
 8008c74:	0003      	movs	r3, r0
 8008c76:	000c      	movs	r4, r1
 8008c78:	001a      	movs	r2, r3
 8008c7a:	0023      	movs	r3, r4
 8008c7c:	0028      	movs	r0, r5
 8008c7e:	0031      	movs	r1, r6
 8008c80:	f7f9 f954 	bl	8001f2c <__aeabi_dsub>
 8008c84:	0003      	movs	r3, r0
 8008c86:	000c      	movs	r4, r1
 8008c88:	001d      	movs	r5, r3
 8008c8a:	0026      	movs	r6, r4
 8008c8c:	68fb      	ldr	r3, [r7, #12]
 8008c8e:	3318      	adds	r3, #24
 8008c90:	6818      	ldr	r0, [r3, #0]
 8008c92:	6859      	ldr	r1, [r3, #4]
 8008c94:	68bb      	ldr	r3, [r7, #8]
 8008c96:	3318      	adds	r3, #24
 8008c98:	685c      	ldr	r4, [r3, #4]
 8008c9a:	681b      	ldr	r3, [r3, #0]
 8008c9c:	001a      	movs	r2, r3
 8008c9e:	0023      	movs	r3, r4
 8008ca0:	f7f8 fed2 	bl	8001a48 <__aeabi_dmul>
 8008ca4:	0003      	movs	r3, r0
 8008ca6:	000c      	movs	r4, r1
 8008ca8:	001a      	movs	r2, r3
 8008caa:	0023      	movs	r3, r4
 8008cac:	0028      	movs	r0, r5
 8008cae:	0031      	movs	r1, r6
 8008cb0:	f7f9 f93c 	bl	8001f2c <__aeabi_dsub>
 8008cb4:	0003      	movs	r3, r0
 8008cb6:	000c      	movs	r4, r1
 8008cb8:	2210      	movs	r2, #16
 8008cba:	18ba      	adds	r2, r7, r2
 8008cbc:	6013      	str	r3, [r2, #0]
 8008cbe:	6054      	str	r4, [r2, #4]
 8008cc0:	68fb      	ldr	r3, [r7, #12]
 8008cc2:	6818      	ldr	r0, [r3, #0]
 8008cc4:	6859      	ldr	r1, [r3, #4]
 8008cc6:	68bb      	ldr	r3, [r7, #8]
 8008cc8:	3308      	adds	r3, #8
 8008cca:	685c      	ldr	r4, [r3, #4]
 8008ccc:	681b      	ldr	r3, [r3, #0]
 8008cce:	001a      	movs	r2, r3
 8008cd0:	0023      	movs	r3, r4
 8008cd2:	f7f8 feb9 	bl	8001a48 <__aeabi_dmul>
 8008cd6:	0003      	movs	r3, r0
 8008cd8:	000c      	movs	r4, r1
 8008cda:	001d      	movs	r5, r3
 8008cdc:	0026      	movs	r6, r4
 8008cde:	68fb      	ldr	r3, [r7, #12]
 8008ce0:	3308      	adds	r3, #8
 8008ce2:	6818      	ldr	r0, [r3, #0]
 8008ce4:	6859      	ldr	r1, [r3, #4]
 8008ce6:	68bb      	ldr	r3, [r7, #8]
 8008ce8:	685c      	ldr	r4, [r3, #4]
 8008cea:	681b      	ldr	r3, [r3, #0]
 8008cec:	001a      	movs	r2, r3
 8008cee:	0023      	movs	r3, r4
 8008cf0:	f7f8 feaa 	bl	8001a48 <__aeabi_dmul>
 8008cf4:	0003      	movs	r3, r0
 8008cf6:	000c      	movs	r4, r1
 8008cf8:	001a      	movs	r2, r3
 8008cfa:	0023      	movs	r3, r4
 8008cfc:	0028      	movs	r0, r5
 8008cfe:	0031      	movs	r1, r6
 8008d00:	f7f7 ff7c 	bl	8000bfc <__aeabi_dadd>
 8008d04:	0003      	movs	r3, r0
 8008d06:	000c      	movs	r4, r1
 8008d08:	001d      	movs	r5, r3
 8008d0a:	0026      	movs	r6, r4
 8008d0c:	68fb      	ldr	r3, [r7, #12]
 8008d0e:	3310      	adds	r3, #16
 8008d10:	6818      	ldr	r0, [r3, #0]
 8008d12:	6859      	ldr	r1, [r3, #4]
 8008d14:	68bb      	ldr	r3, [r7, #8]
 8008d16:	3318      	adds	r3, #24
 8008d18:	685c      	ldr	r4, [r3, #4]
 8008d1a:	681b      	ldr	r3, [r3, #0]
 8008d1c:	001a      	movs	r2, r3
 8008d1e:	0023      	movs	r3, r4
 8008d20:	f7f8 fe92 	bl	8001a48 <__aeabi_dmul>
 8008d24:	0003      	movs	r3, r0
 8008d26:	000c      	movs	r4, r1
 8008d28:	001a      	movs	r2, r3
 8008d2a:	0023      	movs	r3, r4
 8008d2c:	0028      	movs	r0, r5
 8008d2e:	0031      	movs	r1, r6
 8008d30:	f7f7 ff64 	bl	8000bfc <__aeabi_dadd>
 8008d34:	0003      	movs	r3, r0
 8008d36:	000c      	movs	r4, r1
 8008d38:	001d      	movs	r5, r3
 8008d3a:	0026      	movs	r6, r4
 8008d3c:	68fb      	ldr	r3, [r7, #12]
 8008d3e:	3318      	adds	r3, #24
 8008d40:	6818      	ldr	r0, [r3, #0]
 8008d42:	6859      	ldr	r1, [r3, #4]
 8008d44:	68bb      	ldr	r3, [r7, #8]
 8008d46:	3310      	adds	r3, #16
 8008d48:	685c      	ldr	r4, [r3, #4]
 8008d4a:	681b      	ldr	r3, [r3, #0]
 8008d4c:	001a      	movs	r2, r3
 8008d4e:	0023      	movs	r3, r4
 8008d50:	f7f8 fe7a 	bl	8001a48 <__aeabi_dmul>
 8008d54:	0003      	movs	r3, r0
 8008d56:	000c      	movs	r4, r1
 8008d58:	001a      	movs	r2, r3
 8008d5a:	0023      	movs	r3, r4
 8008d5c:	0028      	movs	r0, r5
 8008d5e:	0031      	movs	r1, r6
 8008d60:	f7f9 f8e4 	bl	8001f2c <__aeabi_dsub>
 8008d64:	0003      	movs	r3, r0
 8008d66:	000c      	movs	r4, r1
 8008d68:	2210      	movs	r2, #16
 8008d6a:	18ba      	adds	r2, r7, r2
 8008d6c:	6093      	str	r3, [r2, #8]
 8008d6e:	60d4      	str	r4, [r2, #12]
 8008d70:	68fb      	ldr	r3, [r7, #12]
 8008d72:	6818      	ldr	r0, [r3, #0]
 8008d74:	6859      	ldr	r1, [r3, #4]
 8008d76:	68bb      	ldr	r3, [r7, #8]
 8008d78:	3310      	adds	r3, #16
 8008d7a:	685c      	ldr	r4, [r3, #4]
 8008d7c:	681b      	ldr	r3, [r3, #0]
 8008d7e:	001a      	movs	r2, r3
 8008d80:	0023      	movs	r3, r4
 8008d82:	f7f8 fe61 	bl	8001a48 <__aeabi_dmul>
 8008d86:	0003      	movs	r3, r0
 8008d88:	000c      	movs	r4, r1
 8008d8a:	001d      	movs	r5, r3
 8008d8c:	0026      	movs	r6, r4
 8008d8e:	68fb      	ldr	r3, [r7, #12]
 8008d90:	3308      	adds	r3, #8
 8008d92:	6818      	ldr	r0, [r3, #0]
 8008d94:	6859      	ldr	r1, [r3, #4]
 8008d96:	68bb      	ldr	r3, [r7, #8]
 8008d98:	3318      	adds	r3, #24
 8008d9a:	685c      	ldr	r4, [r3, #4]
 8008d9c:	681b      	ldr	r3, [r3, #0]
 8008d9e:	001a      	movs	r2, r3
 8008da0:	0023      	movs	r3, r4
 8008da2:	f7f8 fe51 	bl	8001a48 <__aeabi_dmul>
 8008da6:	0003      	movs	r3, r0
 8008da8:	000c      	movs	r4, r1
 8008daa:	001a      	movs	r2, r3
 8008dac:	0023      	movs	r3, r4
 8008dae:	0028      	movs	r0, r5
 8008db0:	0031      	movs	r1, r6
 8008db2:	f7f9 f8bb 	bl	8001f2c <__aeabi_dsub>
 8008db6:	0003      	movs	r3, r0
 8008db8:	000c      	movs	r4, r1
 8008dba:	001d      	movs	r5, r3
 8008dbc:	0026      	movs	r6, r4
 8008dbe:	68fb      	ldr	r3, [r7, #12]
 8008dc0:	3310      	adds	r3, #16
 8008dc2:	6818      	ldr	r0, [r3, #0]
 8008dc4:	6859      	ldr	r1, [r3, #4]
 8008dc6:	68bb      	ldr	r3, [r7, #8]
 8008dc8:	685c      	ldr	r4, [r3, #4]
 8008dca:	681b      	ldr	r3, [r3, #0]
 8008dcc:	001a      	movs	r2, r3
 8008dce:	0023      	movs	r3, r4
 8008dd0:	f7f8 fe3a 	bl	8001a48 <__aeabi_dmul>
 8008dd4:	0003      	movs	r3, r0
 8008dd6:	000c      	movs	r4, r1
 8008dd8:	001a      	movs	r2, r3
 8008dda:	0023      	movs	r3, r4
 8008ddc:	0028      	movs	r0, r5
 8008dde:	0031      	movs	r1, r6
 8008de0:	f7f7 ff0c 	bl	8000bfc <__aeabi_dadd>
 8008de4:	0003      	movs	r3, r0
 8008de6:	000c      	movs	r4, r1
 8008de8:	001d      	movs	r5, r3
 8008dea:	0026      	movs	r6, r4
 8008dec:	68fb      	ldr	r3, [r7, #12]
 8008dee:	3318      	adds	r3, #24
 8008df0:	6818      	ldr	r0, [r3, #0]
 8008df2:	6859      	ldr	r1, [r3, #4]
 8008df4:	68bb      	ldr	r3, [r7, #8]
 8008df6:	3308      	adds	r3, #8
 8008df8:	685c      	ldr	r4, [r3, #4]
 8008dfa:	681b      	ldr	r3, [r3, #0]
 8008dfc:	001a      	movs	r2, r3
 8008dfe:	0023      	movs	r3, r4
 8008e00:	f7f8 fe22 	bl	8001a48 <__aeabi_dmul>
 8008e04:	0003      	movs	r3, r0
 8008e06:	000c      	movs	r4, r1
 8008e08:	001a      	movs	r2, r3
 8008e0a:	0023      	movs	r3, r4
 8008e0c:	0028      	movs	r0, r5
 8008e0e:	0031      	movs	r1, r6
 8008e10:	f7f7 fef4 	bl	8000bfc <__aeabi_dadd>
 8008e14:	0003      	movs	r3, r0
 8008e16:	000c      	movs	r4, r1
 8008e18:	2210      	movs	r2, #16
 8008e1a:	18ba      	adds	r2, r7, r2
 8008e1c:	6113      	str	r3, [r2, #16]
 8008e1e:	6154      	str	r4, [r2, #20]
 8008e20:	68fb      	ldr	r3, [r7, #12]
 8008e22:	6818      	ldr	r0, [r3, #0]
 8008e24:	6859      	ldr	r1, [r3, #4]
 8008e26:	68bb      	ldr	r3, [r7, #8]
 8008e28:	3318      	adds	r3, #24
 8008e2a:	685c      	ldr	r4, [r3, #4]
 8008e2c:	681b      	ldr	r3, [r3, #0]
 8008e2e:	001a      	movs	r2, r3
 8008e30:	0023      	movs	r3, r4
 8008e32:	f7f8 fe09 	bl	8001a48 <__aeabi_dmul>
 8008e36:	0003      	movs	r3, r0
 8008e38:	000c      	movs	r4, r1
 8008e3a:	001d      	movs	r5, r3
 8008e3c:	0026      	movs	r6, r4
 8008e3e:	68fb      	ldr	r3, [r7, #12]
 8008e40:	3308      	adds	r3, #8
 8008e42:	6818      	ldr	r0, [r3, #0]
 8008e44:	6859      	ldr	r1, [r3, #4]
 8008e46:	68bb      	ldr	r3, [r7, #8]
 8008e48:	3310      	adds	r3, #16
 8008e4a:	685c      	ldr	r4, [r3, #4]
 8008e4c:	681b      	ldr	r3, [r3, #0]
 8008e4e:	001a      	movs	r2, r3
 8008e50:	0023      	movs	r3, r4
 8008e52:	f7f8 fdf9 	bl	8001a48 <__aeabi_dmul>
 8008e56:	0003      	movs	r3, r0
 8008e58:	000c      	movs	r4, r1
 8008e5a:	001a      	movs	r2, r3
 8008e5c:	0023      	movs	r3, r4
 8008e5e:	0028      	movs	r0, r5
 8008e60:	0031      	movs	r1, r6
 8008e62:	f7f7 fecb 	bl	8000bfc <__aeabi_dadd>
 8008e66:	0003      	movs	r3, r0
 8008e68:	000c      	movs	r4, r1
 8008e6a:	001d      	movs	r5, r3
 8008e6c:	0026      	movs	r6, r4
 8008e6e:	68fb      	ldr	r3, [r7, #12]
 8008e70:	3310      	adds	r3, #16
 8008e72:	6818      	ldr	r0, [r3, #0]
 8008e74:	6859      	ldr	r1, [r3, #4]
 8008e76:	68bb      	ldr	r3, [r7, #8]
 8008e78:	3308      	adds	r3, #8
 8008e7a:	685c      	ldr	r4, [r3, #4]
 8008e7c:	681b      	ldr	r3, [r3, #0]
 8008e7e:	001a      	movs	r2, r3
 8008e80:	0023      	movs	r3, r4
 8008e82:	f7f8 fde1 	bl	8001a48 <__aeabi_dmul>
 8008e86:	0003      	movs	r3, r0
 8008e88:	000c      	movs	r4, r1
 8008e8a:	001a      	movs	r2, r3
 8008e8c:	0023      	movs	r3, r4
 8008e8e:	0028      	movs	r0, r5
 8008e90:	0031      	movs	r1, r6
 8008e92:	f7f9 f84b 	bl	8001f2c <__aeabi_dsub>
 8008e96:	0003      	movs	r3, r0
 8008e98:	000c      	movs	r4, r1
 8008e9a:	001d      	movs	r5, r3
 8008e9c:	0026      	movs	r6, r4
 8008e9e:	68fb      	ldr	r3, [r7, #12]
 8008ea0:	3318      	adds	r3, #24
 8008ea2:	6818      	ldr	r0, [r3, #0]
 8008ea4:	6859      	ldr	r1, [r3, #4]
 8008ea6:	68bb      	ldr	r3, [r7, #8]
 8008ea8:	685c      	ldr	r4, [r3, #4]
 8008eaa:	681b      	ldr	r3, [r3, #0]
 8008eac:	001a      	movs	r2, r3
 8008eae:	0023      	movs	r3, r4
 8008eb0:	f7f8 fdca 	bl	8001a48 <__aeabi_dmul>
 8008eb4:	0003      	movs	r3, r0
 8008eb6:	000c      	movs	r4, r1
 8008eb8:	001a      	movs	r2, r3
 8008eba:	0023      	movs	r3, r4
 8008ebc:	0028      	movs	r0, r5
 8008ebe:	0031      	movs	r1, r6
 8008ec0:	f7f7 fe9c 	bl	8000bfc <__aeabi_dadd>
 8008ec4:	0003      	movs	r3, r0
 8008ec6:	000c      	movs	r4, r1
 8008ec8:	2210      	movs	r2, #16
 8008eca:	18ba      	adds	r2, r7, r2
 8008ecc:	6193      	str	r3, [r2, #24]
 8008ece:	61d4      	str	r4, [r2, #28]
 8008ed0:	2300      	movs	r3, #0
 8008ed2:	637b      	str	r3, [r7, #52]	; 0x34
 8008ed4:	e00f      	b.n	8008ef6 <quat_mult_by_quat+0x302>
 8008ed6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8008ed8:	00db      	lsls	r3, r3, #3
 8008eda:	687a      	ldr	r2, [r7, #4]
 8008edc:	18d2      	adds	r2, r2, r3
 8008ede:	2310      	movs	r3, #16
 8008ee0:	18f9      	adds	r1, r7, r3
 8008ee2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8008ee4:	00db      	lsls	r3, r3, #3
 8008ee6:	18cb      	adds	r3, r1, r3
 8008ee8:	685c      	ldr	r4, [r3, #4]
 8008eea:	681b      	ldr	r3, [r3, #0]
 8008eec:	6013      	str	r3, [r2, #0]
 8008eee:	6054      	str	r4, [r2, #4]
 8008ef0:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8008ef2:	3301      	adds	r3, #1
 8008ef4:	637b      	str	r3, [r7, #52]	; 0x34
 8008ef6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8008ef8:	2b03      	cmp	r3, #3
 8008efa:	ddec      	ble.n	8008ed6 <quat_mult_by_quat+0x2e2>
 8008efc:	46c0      	nop			; (mov r8, r8)
 8008efe:	46bd      	mov	sp, r7
 8008f00:	b00f      	add	sp, #60	; 0x3c
 8008f02:	bdf0      	pop	{r4, r5, r6, r7, pc}

08008f04 <quat_mult_by_vect>:
 8008f04:	b5b0      	push	{r4, r5, r7, lr}
 8008f06:	b096      	sub	sp, #88	; 0x58
 8008f08:	af00      	add	r7, sp, #0
 8008f0a:	60f8      	str	r0, [r7, #12]
 8008f0c:	60b9      	str	r1, [r7, #8]
 8008f0e:	607a      	str	r2, [r7, #4]
 8008f10:	2530      	movs	r5, #48	; 0x30
 8008f12:	197a      	adds	r2, r7, r5
 8008f14:	2300      	movs	r3, #0
 8008f16:	2400      	movs	r4, #0
 8008f18:	6013      	str	r3, [r2, #0]
 8008f1a:	6054      	str	r4, [r2, #4]
 8008f1c:	68bb      	ldr	r3, [r7, #8]
 8008f1e:	685c      	ldr	r4, [r3, #4]
 8008f20:	681b      	ldr	r3, [r3, #0]
 8008f22:	197a      	adds	r2, r7, r5
 8008f24:	6093      	str	r3, [r2, #8]
 8008f26:	60d4      	str	r4, [r2, #12]
 8008f28:	68bb      	ldr	r3, [r7, #8]
 8008f2a:	68dc      	ldr	r4, [r3, #12]
 8008f2c:	689b      	ldr	r3, [r3, #8]
 8008f2e:	197a      	adds	r2, r7, r5
 8008f30:	6113      	str	r3, [r2, #16]
 8008f32:	6154      	str	r4, [r2, #20]
 8008f34:	68bb      	ldr	r3, [r7, #8]
 8008f36:	695c      	ldr	r4, [r3, #20]
 8008f38:	691b      	ldr	r3, [r3, #16]
 8008f3a:	197a      	adds	r2, r7, r5
 8008f3c:	6193      	str	r3, [r2, #24]
 8008f3e:	61d4      	str	r4, [r2, #28]
 8008f40:	2410      	movs	r4, #16
 8008f42:	193b      	adds	r3, r7, r4
 8008f44:	0018      	movs	r0, r3
 8008f46:	2320      	movs	r3, #32
 8008f48:	001a      	movs	r2, r3
 8008f4a:	2100      	movs	r1, #0
 8008f4c:	f000 f907 	bl	800915e <memset>
 8008f50:	193a      	adds	r2, r7, r4
 8008f52:	1979      	adds	r1, r7, r5
 8008f54:	68fb      	ldr	r3, [r7, #12]
 8008f56:	0018      	movs	r0, r3
 8008f58:	f7ff fe4c 	bl	8008bf4 <quat_mult_by_quat>
 8008f5c:	2300      	movs	r3, #0
 8008f5e:	657b      	str	r3, [r7, #84]	; 0x54
 8008f60:	e00f      	b.n	8008f82 <quat_mult_by_vect+0x7e>
 8008f62:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8008f64:	00db      	lsls	r3, r3, #3
 8008f66:	687a      	ldr	r2, [r7, #4]
 8008f68:	18d2      	adds	r2, r2, r3
 8008f6a:	2310      	movs	r3, #16
 8008f6c:	18f9      	adds	r1, r7, r3
 8008f6e:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8008f70:	00db      	lsls	r3, r3, #3
 8008f72:	18cb      	adds	r3, r1, r3
 8008f74:	685c      	ldr	r4, [r3, #4]
 8008f76:	681b      	ldr	r3, [r3, #0]
 8008f78:	6013      	str	r3, [r2, #0]
 8008f7a:	6054      	str	r4, [r2, #4]
 8008f7c:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8008f7e:	3301      	adds	r3, #1
 8008f80:	657b      	str	r3, [r7, #84]	; 0x54
 8008f82:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8008f84:	2b03      	cmp	r3, #3
 8008f86:	ddec      	ble.n	8008f62 <quat_mult_by_vect+0x5e>
 8008f88:	46c0      	nop			; (mov r8, r8)
 8008f8a:	46bd      	mov	sp, r7
 8008f8c:	b016      	add	sp, #88	; 0x58
 8008f8e:	bdb0      	pop	{r4, r5, r7, pc}

08008f90 <vect_rotate>:
 8008f90:	b5f0      	push	{r4, r5, r6, r7, lr}
 8008f92:	b0a7      	sub	sp, #156	; 0x9c
 8008f94:	af00      	add	r7, sp, #0
 8008f96:	60f8      	str	r0, [r7, #12]
 8008f98:	60b9      	str	r1, [r7, #8]
 8008f9a:	607a      	str	r2, [r7, #4]
 8008f9c:	2370      	movs	r3, #112	; 0x70
 8008f9e:	18fb      	adds	r3, r7, r3
 8008fa0:	0018      	movs	r0, r3
 8008fa2:	2320      	movs	r3, #32
 8008fa4:	001a      	movs	r2, r3
 8008fa6:	2100      	movs	r1, #0
 8008fa8:	f000 f8d9 	bl	800915e <memset>
 8008fac:	2450      	movs	r4, #80	; 0x50
 8008fae:	193b      	adds	r3, r7, r4
 8008fb0:	0018      	movs	r0, r3
 8008fb2:	2320      	movs	r3, #32
 8008fb4:	001a      	movs	r2, r3
 8008fb6:	2100      	movs	r1, #0
 8008fb8:	f000 f8d1 	bl	800915e <memset>
 8008fbc:	193a      	adds	r2, r7, r4
 8008fbe:	68bb      	ldr	r3, [r7, #8]
 8008fc0:	0011      	movs	r1, r2
 8008fc2:	0018      	movs	r0, r3
 8008fc4:	f7ff fda4 	bl	8008b10 <quat_normalize>
 8008fc8:	2530      	movs	r5, #48	; 0x30
 8008fca:	197b      	adds	r3, r7, r5
 8008fcc:	0018      	movs	r0, r3
 8008fce:	2320      	movs	r3, #32
 8008fd0:	001a      	movs	r2, r3
 8008fd2:	2100      	movs	r1, #0
 8008fd4:	f000 f8c3 	bl	800915e <memset>
 8008fd8:	197a      	adds	r2, r7, r5
 8008fda:	68f9      	ldr	r1, [r7, #12]
 8008fdc:	193b      	adds	r3, r7, r4
 8008fde:	0018      	movs	r0, r3
 8008fe0:	f7ff ff90 	bl	8008f04 <quat_mult_by_vect>
 8008fe4:	2610      	movs	r6, #16
 8008fe6:	19bb      	adds	r3, r7, r6
 8008fe8:	0018      	movs	r0, r3
 8008fea:	2320      	movs	r3, #32
 8008fec:	001a      	movs	r2, r3
 8008fee:	2100      	movs	r1, #0
 8008ff0:	f000 f8b5 	bl	800915e <memset>
 8008ff4:	19ba      	adds	r2, r7, r6
 8008ff6:	193b      	adds	r3, r7, r4
 8008ff8:	0011      	movs	r1, r2
 8008ffa:	0018      	movs	r0, r3
 8008ffc:	f7ff fdac 	bl	8008b58 <quat_invert>
 8009000:	2370      	movs	r3, #112	; 0x70
 8009002:	18fa      	adds	r2, r7, r3
 8009004:	19b9      	adds	r1, r7, r6
 8009006:	197b      	adds	r3, r7, r5
 8009008:	0018      	movs	r0, r3
 800900a:	f7ff fdf3 	bl	8008bf4 <quat_mult_by_quat>
 800900e:	2300      	movs	r3, #0
 8009010:	2294      	movs	r2, #148	; 0x94
 8009012:	18ba      	adds	r2, r7, r2
 8009014:	6013      	str	r3, [r2, #0]
 8009016:	e015      	b.n	8009044 <vect_rotate+0xb4>
 8009018:	2094      	movs	r0, #148	; 0x94
 800901a:	183b      	adds	r3, r7, r0
 800901c:	681b      	ldr	r3, [r3, #0]
 800901e:	3301      	adds	r3, #1
 8009020:	183a      	adds	r2, r7, r0
 8009022:	6812      	ldr	r2, [r2, #0]
 8009024:	00d2      	lsls	r2, r2, #3
 8009026:	6879      	ldr	r1, [r7, #4]
 8009028:	188a      	adds	r2, r1, r2
 800902a:	2170      	movs	r1, #112	; 0x70
 800902c:	1879      	adds	r1, r7, r1
 800902e:	00db      	lsls	r3, r3, #3
 8009030:	18cb      	adds	r3, r1, r3
 8009032:	685c      	ldr	r4, [r3, #4]
 8009034:	681b      	ldr	r3, [r3, #0]
 8009036:	6013      	str	r3, [r2, #0]
 8009038:	6054      	str	r4, [r2, #4]
 800903a:	183b      	adds	r3, r7, r0
 800903c:	681b      	ldr	r3, [r3, #0]
 800903e:	3301      	adds	r3, #1
 8009040:	183a      	adds	r2, r7, r0
 8009042:	6013      	str	r3, [r2, #0]
 8009044:	2394      	movs	r3, #148	; 0x94
 8009046:	18fb      	adds	r3, r7, r3
 8009048:	681b      	ldr	r3, [r3, #0]
 800904a:	2b02      	cmp	r3, #2
 800904c:	dde4      	ble.n	8009018 <vect_rotate+0x88>
 800904e:	46c0      	nop			; (mov r8, r8)
 8009050:	46bd      	mov	sp, r7
 8009052:	b027      	add	sp, #156	; 0x9c
 8009054:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

08009058 <SystemInit>:
 8009058:	b580      	push	{r7, lr}
 800905a:	af00      	add	r7, sp, #0
 800905c:	4b1a      	ldr	r3, [pc, #104]	; (80090c8 <SystemInit+0x70>)
 800905e:	681a      	ldr	r2, [r3, #0]
 8009060:	4b19      	ldr	r3, [pc, #100]	; (80090c8 <SystemInit+0x70>)
 8009062:	2101      	movs	r1, #1
 8009064:	430a      	orrs	r2, r1
 8009066:	601a      	str	r2, [r3, #0]
 8009068:	4b17      	ldr	r3, [pc, #92]	; (80090c8 <SystemInit+0x70>)
 800906a:	685a      	ldr	r2, [r3, #4]
 800906c:	4b16      	ldr	r3, [pc, #88]	; (80090c8 <SystemInit+0x70>)
 800906e:	4917      	ldr	r1, [pc, #92]	; (80090cc <SystemInit+0x74>)
 8009070:	400a      	ands	r2, r1
 8009072:	605a      	str	r2, [r3, #4]
 8009074:	4b14      	ldr	r3, [pc, #80]	; (80090c8 <SystemInit+0x70>)
 8009076:	681a      	ldr	r2, [r3, #0]
 8009078:	4b13      	ldr	r3, [pc, #76]	; (80090c8 <SystemInit+0x70>)
 800907a:	4915      	ldr	r1, [pc, #84]	; (80090d0 <SystemInit+0x78>)
 800907c:	400a      	ands	r2, r1
 800907e:	601a      	str	r2, [r3, #0]
 8009080:	4b11      	ldr	r3, [pc, #68]	; (80090c8 <SystemInit+0x70>)
 8009082:	681a      	ldr	r2, [r3, #0]
 8009084:	4b10      	ldr	r3, [pc, #64]	; (80090c8 <SystemInit+0x70>)
 8009086:	4913      	ldr	r1, [pc, #76]	; (80090d4 <SystemInit+0x7c>)
 8009088:	400a      	ands	r2, r1
 800908a:	601a      	str	r2, [r3, #0]
 800908c:	4b0e      	ldr	r3, [pc, #56]	; (80090c8 <SystemInit+0x70>)
 800908e:	685a      	ldr	r2, [r3, #4]
 8009090:	4b0d      	ldr	r3, [pc, #52]	; (80090c8 <SystemInit+0x70>)
 8009092:	4911      	ldr	r1, [pc, #68]	; (80090d8 <SystemInit+0x80>)
 8009094:	400a      	ands	r2, r1
 8009096:	605a      	str	r2, [r3, #4]
 8009098:	4b0b      	ldr	r3, [pc, #44]	; (80090c8 <SystemInit+0x70>)
 800909a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800909c:	4b0a      	ldr	r3, [pc, #40]	; (80090c8 <SystemInit+0x70>)
 800909e:	210f      	movs	r1, #15
 80090a0:	438a      	bics	r2, r1
 80090a2:	62da      	str	r2, [r3, #44]	; 0x2c
 80090a4:	4b08      	ldr	r3, [pc, #32]	; (80090c8 <SystemInit+0x70>)
 80090a6:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80090a8:	4b07      	ldr	r3, [pc, #28]	; (80090c8 <SystemInit+0x70>)
 80090aa:	490c      	ldr	r1, [pc, #48]	; (80090dc <SystemInit+0x84>)
 80090ac:	400a      	ands	r2, r1
 80090ae:	631a      	str	r2, [r3, #48]	; 0x30
 80090b0:	4b05      	ldr	r3, [pc, #20]	; (80090c8 <SystemInit+0x70>)
 80090b2:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 80090b4:	4b04      	ldr	r3, [pc, #16]	; (80090c8 <SystemInit+0x70>)
 80090b6:	2101      	movs	r1, #1
 80090b8:	438a      	bics	r2, r1
 80090ba:	635a      	str	r2, [r3, #52]	; 0x34
 80090bc:	4b02      	ldr	r3, [pc, #8]	; (80090c8 <SystemInit+0x70>)
 80090be:	2200      	movs	r2, #0
 80090c0:	609a      	str	r2, [r3, #8]
 80090c2:	46c0      	nop			; (mov r8, r8)
 80090c4:	46bd      	mov	sp, r7
 80090c6:	bd80      	pop	{r7, pc}
 80090c8:	40021000 	.word	0x40021000
 80090cc:	f8ffb80c 	.word	0xf8ffb80c
 80090d0:	fef6ffff 	.word	0xfef6ffff
 80090d4:	fffbffff 	.word	0xfffbffff
 80090d8:	ffc0ffff 	.word	0xffc0ffff
 80090dc:	fffffeac 	.word	0xfffffeac

080090e0 <NMI_Handler>:
 80090e0:	b580      	push	{r7, lr}
 80090e2:	af00      	add	r7, sp, #0
 80090e4:	46c0      	nop			; (mov r8, r8)
 80090e6:	46bd      	mov	sp, r7
 80090e8:	bd80      	pop	{r7, pc}

080090ea <HardFault_Handler>:
 80090ea:	b580      	push	{r7, lr}
 80090ec:	af00      	add	r7, sp, #0
 80090ee:	e7fe      	b.n	80090ee <HardFault_Handler+0x4>

080090f0 <SVC_Handler>:
 80090f0:	b580      	push	{r7, lr}
 80090f2:	af00      	add	r7, sp, #0
 80090f4:	46c0      	nop			; (mov r8, r8)
 80090f6:	46bd      	mov	sp, r7
 80090f8:	bd80      	pop	{r7, pc}

080090fa <PendSV_Handler>:
 80090fa:	b580      	push	{r7, lr}
 80090fc:	af00      	add	r7, sp, #0
 80090fe:	46c0      	nop			; (mov r8, r8)
 8009100:	46bd      	mov	sp, r7
 8009102:	bd80      	pop	{r7, pc}

08009104 <__libc_init_array>:
 8009104:	b570      	push	{r4, r5, r6, lr}
 8009106:	2600      	movs	r6, #0
 8009108:	4d0c      	ldr	r5, [pc, #48]	; (800913c <__libc_init_array+0x38>)
 800910a:	4c0d      	ldr	r4, [pc, #52]	; (8009140 <__libc_init_array+0x3c>)
 800910c:	1b64      	subs	r4, r4, r5
 800910e:	10a4      	asrs	r4, r4, #2
 8009110:	42a6      	cmp	r6, r4
 8009112:	d109      	bne.n	8009128 <__libc_init_array+0x24>
 8009114:	2600      	movs	r6, #0
 8009116:	f001 f99f 	bl	800a458 <_init>
 800911a:	4d0a      	ldr	r5, [pc, #40]	; (8009144 <__libc_init_array+0x40>)
 800911c:	4c0a      	ldr	r4, [pc, #40]	; (8009148 <__libc_init_array+0x44>)
 800911e:	1b64      	subs	r4, r4, r5
 8009120:	10a4      	asrs	r4, r4, #2
 8009122:	42a6      	cmp	r6, r4
 8009124:	d105      	bne.n	8009132 <__libc_init_array+0x2e>
 8009126:	bd70      	pop	{r4, r5, r6, pc}
 8009128:	00b3      	lsls	r3, r6, #2
 800912a:	58eb      	ldr	r3, [r5, r3]
 800912c:	4798      	blx	r3
 800912e:	3601      	adds	r6, #1
 8009130:	e7ee      	b.n	8009110 <__libc_init_array+0xc>
 8009132:	00b3      	lsls	r3, r6, #2
 8009134:	58eb      	ldr	r3, [r5, r3]
 8009136:	4798      	blx	r3
 8009138:	3601      	adds	r6, #1
 800913a:	e7f2      	b.n	8009122 <__libc_init_array+0x1e>
 800913c:	0800a600 	.word	0x0800a600
 8009140:	0800a600 	.word	0x0800a600
 8009144:	0800a600 	.word	0x0800a600
 8009148:	0800a604 	.word	0x0800a604

0800914c <memcpy>:
 800914c:	2300      	movs	r3, #0
 800914e:	b510      	push	{r4, lr}
 8009150:	429a      	cmp	r2, r3
 8009152:	d100      	bne.n	8009156 <memcpy+0xa>
 8009154:	bd10      	pop	{r4, pc}
 8009156:	5ccc      	ldrb	r4, [r1, r3]
 8009158:	54c4      	strb	r4, [r0, r3]
 800915a:	3301      	adds	r3, #1
 800915c:	e7f8      	b.n	8009150 <memcpy+0x4>

0800915e <memset>:
 800915e:	0003      	movs	r3, r0
 8009160:	1812      	adds	r2, r2, r0
 8009162:	4293      	cmp	r3, r2
 8009164:	d100      	bne.n	8009168 <memset+0xa>
 8009166:	4770      	bx	lr
 8009168:	7019      	strb	r1, [r3, #0]
 800916a:	3301      	adds	r3, #1
 800916c:	e7f9      	b.n	8009162 <memset+0x4>
	...

08009170 <pow>:
 8009170:	b5f0      	push	{r4, r5, r6, r7, lr}
 8009172:	4657      	mov	r7, sl
 8009174:	464e      	mov	r6, r9
 8009176:	46de      	mov	lr, fp
 8009178:	4645      	mov	r5, r8
 800917a:	b5e0      	push	{r5, r6, r7, lr}
 800917c:	b08f      	sub	sp, #60	; 0x3c
 800917e:	001d      	movs	r5, r3
 8009180:	0006      	movs	r6, r0
 8009182:	000f      	movs	r7, r1
 8009184:	0014      	movs	r4, r2
 8009186:	f000 fa0d 	bl	80095a4 <__ieee754_pow>
 800918a:	4bce      	ldr	r3, [pc, #824]	; (80094c4 <pow+0x354>)
 800918c:	9000      	str	r0, [sp, #0]
 800918e:	9101      	str	r1, [sp, #4]
 8009190:	469a      	mov	sl, r3
 8009192:	781b      	ldrb	r3, [r3, #0]
 8009194:	b25b      	sxtb	r3, r3
 8009196:	4699      	mov	r9, r3
 8009198:	3301      	adds	r3, #1
 800919a:	d03e      	beq.n	800921a <pow+0xaa>
 800919c:	0022      	movs	r2, r4
 800919e:	002b      	movs	r3, r5
 80091a0:	0020      	movs	r0, r4
 80091a2:	0029      	movs	r1, r5
 80091a4:	f7f9 fab4 	bl	8002710 <__aeabi_dcmpun>
 80091a8:	4683      	mov	fp, r0
 80091aa:	2800      	cmp	r0, #0
 80091ac:	d135      	bne.n	800921a <pow+0xaa>
 80091ae:	0032      	movs	r2, r6
 80091b0:	003b      	movs	r3, r7
 80091b2:	0030      	movs	r0, r6
 80091b4:	0039      	movs	r1, r7
 80091b6:	f7f9 faab 	bl	8002710 <__aeabi_dcmpun>
 80091ba:	2200      	movs	r2, #0
 80091bc:	9003      	str	r0, [sp, #12]
 80091be:	2800      	cmp	r0, #0
 80091c0:	d000      	beq.n	80091c4 <pow+0x54>
 80091c2:	e06f      	b.n	80092a4 <pow+0x134>
 80091c4:	2300      	movs	r3, #0
 80091c6:	0030      	movs	r0, r6
 80091c8:	0039      	movs	r1, r7
 80091ca:	f7f7 f839 	bl	8000240 <__aeabi_dcmpeq>
 80091ce:	2800      	cmp	r0, #0
 80091d0:	d02c      	beq.n	800922c <pow+0xbc>
 80091d2:	2200      	movs	r2, #0
 80091d4:	2300      	movs	r3, #0
 80091d6:	0020      	movs	r0, r4
 80091d8:	0029      	movs	r1, r5
 80091da:	f7f7 f831 	bl	8000240 <__aeabi_dcmpeq>
 80091de:	4683      	mov	fp, r0
 80091e0:	2800      	cmp	r0, #0
 80091e2:	d100      	bne.n	80091e6 <pow+0x76>
 80091e4:	e092      	b.n	800930c <pow+0x19c>
 80091e6:	ab04      	add	r3, sp, #16
 80091e8:	4698      	mov	r8, r3
 80091ea:	2301      	movs	r3, #1
 80091ec:	4642      	mov	r2, r8
 80091ee:	9304      	str	r3, [sp, #16]
 80091f0:	4bb5      	ldr	r3, [pc, #724]	; (80094c8 <pow+0x358>)
 80091f2:	6053      	str	r3, [r2, #4]
 80091f4:	4643      	mov	r3, r8
 80091f6:	9a03      	ldr	r2, [sp, #12]
 80091f8:	611c      	str	r4, [r3, #16]
 80091fa:	615d      	str	r5, [r3, #20]
 80091fc:	621a      	str	r2, [r3, #32]
 80091fe:	609e      	str	r6, [r3, #8]
 8009200:	60df      	str	r7, [r3, #12]
 8009202:	4642      	mov	r2, r8
 8009204:	2300      	movs	r3, #0
 8009206:	2400      	movs	r4, #0
 8009208:	6193      	str	r3, [r2, #24]
 800920a:	61d4      	str	r4, [r2, #28]
 800920c:	464b      	mov	r3, r9
 800920e:	2b00      	cmp	r3, #0
 8009210:	d067      	beq.n	80092e2 <pow+0x172>
 8009212:	2300      	movs	r3, #0
 8009214:	4cad      	ldr	r4, [pc, #692]	; (80094cc <pow+0x35c>)
 8009216:	9300      	str	r3, [sp, #0]
 8009218:	9401      	str	r4, [sp, #4]
 800921a:	9800      	ldr	r0, [sp, #0]
 800921c:	9901      	ldr	r1, [sp, #4]
 800921e:	b00f      	add	sp, #60	; 0x3c
 8009220:	bc3c      	pop	{r2, r3, r4, r5}
 8009222:	4690      	mov	r8, r2
 8009224:	4699      	mov	r9, r3
 8009226:	46a2      	mov	sl, r4
 8009228:	46ab      	mov	fp, r5
 800922a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800922c:	9800      	ldr	r0, [sp, #0]
 800922e:	9901      	ldr	r1, [sp, #4]
 8009230:	f000 fffa 	bl	800a228 <finite>
 8009234:	4681      	mov	r9, r0
 8009236:	2800      	cmp	r0, #0
 8009238:	d100      	bne.n	800923c <pow+0xcc>
 800923a:	e09a      	b.n	8009372 <pow+0x202>
 800923c:	9800      	ldr	r0, [sp, #0]
 800923e:	9901      	ldr	r1, [sp, #4]
 8009240:	2200      	movs	r2, #0
 8009242:	2300      	movs	r3, #0
 8009244:	f7f6 fffc 	bl	8000240 <__aeabi_dcmpeq>
 8009248:	2800      	cmp	r0, #0
 800924a:	d0e6      	beq.n	800921a <pow+0xaa>
 800924c:	0030      	movs	r0, r6
 800924e:	0039      	movs	r1, r7
 8009250:	f000 ffea 	bl	800a228 <finite>
 8009254:	2800      	cmp	r0, #0
 8009256:	d0e0      	beq.n	800921a <pow+0xaa>
 8009258:	0020      	movs	r0, r4
 800925a:	0029      	movs	r1, r5
 800925c:	f000 ffe4 	bl	800a228 <finite>
 8009260:	2800      	cmp	r0, #0
 8009262:	d0da      	beq.n	800921a <pow+0xaa>
 8009264:	ab04      	add	r3, sp, #16
 8009266:	4698      	mov	r8, r3
 8009268:	2304      	movs	r3, #4
 800926a:	4642      	mov	r2, r8
 800926c:	9304      	str	r3, [sp, #16]
 800926e:	4b96      	ldr	r3, [pc, #600]	; (80094c8 <pow+0x358>)
 8009270:	6114      	str	r4, [r2, #16]
 8009272:	6155      	str	r5, [r2, #20]
 8009274:	6053      	str	r3, [r2, #4]
 8009276:	2300      	movs	r3, #0
 8009278:	2400      	movs	r4, #0
 800927a:	6213      	str	r3, [r2, #32]
 800927c:	2300      	movs	r3, #0
 800927e:	6193      	str	r3, [r2, #24]
 8009280:	61d4      	str	r4, [r2, #28]
 8009282:	4653      	mov	r3, sl
 8009284:	781b      	ldrb	r3, [r3, #0]
 8009286:	6096      	str	r6, [r2, #8]
 8009288:	60d7      	str	r7, [r2, #12]
 800928a:	b25b      	sxtb	r3, r3
 800928c:	2b02      	cmp	r3, #2
 800928e:	d004      	beq.n	800929a <pow+0x12a>
 8009290:	4640      	mov	r0, r8
 8009292:	f000 ffd3 	bl	800a23c <matherr>
 8009296:	2800      	cmp	r0, #0
 8009298:	d129      	bne.n	80092ee <pow+0x17e>
 800929a:	f001 f8d7 	bl	800a44c <__errno>
 800929e:	2322      	movs	r3, #34	; 0x22
 80092a0:	6003      	str	r3, [r0, #0]
 80092a2:	e024      	b.n	80092ee <pow+0x17e>
 80092a4:	2300      	movs	r3, #0
 80092a6:	0020      	movs	r0, r4
 80092a8:	0029      	movs	r1, r5
 80092aa:	f7f6 ffc9 	bl	8000240 <__aeabi_dcmpeq>
 80092ae:	2800      	cmp	r0, #0
 80092b0:	d0b3      	beq.n	800921a <pow+0xaa>
 80092b2:	ab04      	add	r3, sp, #16
 80092b4:	4698      	mov	r8, r3
 80092b6:	2301      	movs	r3, #1
 80092b8:	4642      	mov	r2, r8
 80092ba:	9304      	str	r3, [sp, #16]
 80092bc:	4b82      	ldr	r3, [pc, #520]	; (80094c8 <pow+0x358>)
 80092be:	4641      	mov	r1, r8
 80092c0:	6053      	str	r3, [r2, #4]
 80092c2:	4643      	mov	r3, r8
 80092c4:	465a      	mov	r2, fp
 80092c6:	621a      	str	r2, [r3, #32]
 80092c8:	2200      	movs	r2, #0
 80092ca:	609e      	str	r6, [r3, #8]
 80092cc:	60df      	str	r7, [r3, #12]
 80092ce:	611c      	str	r4, [r3, #16]
 80092d0:	615d      	str	r5, [r3, #20]
 80092d2:	4b7e      	ldr	r3, [pc, #504]	; (80094cc <pow+0x35c>)
 80092d4:	618a      	str	r2, [r1, #24]
 80092d6:	61cb      	str	r3, [r1, #28]
 80092d8:	9200      	str	r2, [sp, #0]
 80092da:	9301      	str	r3, [sp, #4]
 80092dc:	464b      	mov	r3, r9
 80092de:	2b02      	cmp	r3, #2
 80092e0:	d09b      	beq.n	800921a <pow+0xaa>
 80092e2:	4640      	mov	r0, r8
 80092e4:	f000 ffaa 	bl	800a23c <matherr>
 80092e8:	2800      	cmp	r0, #0
 80092ea:	d100      	bne.n	80092ee <pow+0x17e>
 80092ec:	e08a      	b.n	8009404 <pow+0x294>
 80092ee:	4643      	mov	r3, r8
 80092f0:	6a1b      	ldr	r3, [r3, #32]
 80092f2:	2b00      	cmp	r3, #0
 80092f4:	d004      	beq.n	8009300 <pow+0x190>
 80092f6:	f001 f8a9 	bl	800a44c <__errno>
 80092fa:	4643      	mov	r3, r8
 80092fc:	6a1b      	ldr	r3, [r3, #32]
 80092fe:	6003      	str	r3, [r0, #0]
 8009300:	4643      	mov	r3, r8
 8009302:	69dc      	ldr	r4, [r3, #28]
 8009304:	699b      	ldr	r3, [r3, #24]
 8009306:	9300      	str	r3, [sp, #0]
 8009308:	9401      	str	r4, [sp, #4]
 800930a:	e786      	b.n	800921a <pow+0xaa>
 800930c:	0020      	movs	r0, r4
 800930e:	0029      	movs	r1, r5
 8009310:	f000 ff8a 	bl	800a228 <finite>
 8009314:	2800      	cmp	r0, #0
 8009316:	d100      	bne.n	800931a <pow+0x1aa>
 8009318:	e77f      	b.n	800921a <pow+0xaa>
 800931a:	2200      	movs	r2, #0
 800931c:	2300      	movs	r3, #0
 800931e:	0020      	movs	r0, r4
 8009320:	0029      	movs	r1, r5
 8009322:	f7f6 ff93 	bl	800024c <__aeabi_dcmplt>
 8009326:	2800      	cmp	r0, #0
 8009328:	d100      	bne.n	800932c <pow+0x1bc>
 800932a:	e776      	b.n	800921a <pow+0xaa>
 800932c:	ab04      	add	r3, sp, #16
 800932e:	4698      	mov	r8, r3
 8009330:	2301      	movs	r3, #1
 8009332:	4642      	mov	r2, r8
 8009334:	9304      	str	r3, [sp, #16]
 8009336:	4b64      	ldr	r3, [pc, #400]	; (80094c8 <pow+0x358>)
 8009338:	6053      	str	r3, [r2, #4]
 800933a:	4643      	mov	r3, r8
 800933c:	465a      	mov	r2, fp
 800933e:	609e      	str	r6, [r3, #8]
 8009340:	60df      	str	r7, [r3, #12]
 8009342:	621a      	str	r2, [r3, #32]
 8009344:	611c      	str	r4, [r3, #16]
 8009346:	615d      	str	r5, [r3, #20]
 8009348:	4653      	mov	r3, sl
 800934a:	781b      	ldrb	r3, [r3, #0]
 800934c:	b25b      	sxtb	r3, r3
 800934e:	2b00      	cmp	r3, #0
 8009350:	d05d      	beq.n	800940e <pow+0x29e>
 8009352:	2000      	movs	r0, #0
 8009354:	4642      	mov	r2, r8
 8009356:	495e      	ldr	r1, [pc, #376]	; (80094d0 <pow+0x360>)
 8009358:	6190      	str	r0, [r2, #24]
 800935a:	61d1      	str	r1, [r2, #28]
 800935c:	2b02      	cmp	r3, #2
 800935e:	d15b      	bne.n	8009418 <pow+0x2a8>
 8009360:	f001 f874 	bl	800a44c <__errno>
 8009364:	2321      	movs	r3, #33	; 0x21
 8009366:	6003      	str	r3, [r0, #0]
 8009368:	4643      	mov	r3, r8
 800936a:	6a1b      	ldr	r3, [r3, #32]
 800936c:	2b00      	cmp	r3, #0
 800936e:	d0c7      	beq.n	8009300 <pow+0x190>
 8009370:	e7c1      	b.n	80092f6 <pow+0x186>
 8009372:	0030      	movs	r0, r6
 8009374:	0039      	movs	r1, r7
 8009376:	f000 ff57 	bl	800a228 <finite>
 800937a:	2800      	cmp	r0, #0
 800937c:	d100      	bne.n	8009380 <pow+0x210>
 800937e:	e75d      	b.n	800923c <pow+0xcc>
 8009380:	0020      	movs	r0, r4
 8009382:	0029      	movs	r1, r5
 8009384:	f000 ff50 	bl	800a228 <finite>
 8009388:	2800      	cmp	r0, #0
 800938a:	d100      	bne.n	800938e <pow+0x21e>
 800938c:	e756      	b.n	800923c <pow+0xcc>
 800938e:	9800      	ldr	r0, [sp, #0]
 8009390:	9901      	ldr	r1, [sp, #4]
 8009392:	4653      	mov	r3, sl
 8009394:	781b      	ldrb	r3, [r3, #0]
 8009396:	0002      	movs	r2, r0
 8009398:	b25b      	sxtb	r3, r3
 800939a:	469b      	mov	fp, r3
 800939c:	000b      	movs	r3, r1
 800939e:	f7f9 f9b7 	bl	8002710 <__aeabi_dcmpun>
 80093a2:	ab04      	add	r3, sp, #16
 80093a4:	4698      	mov	r8, r3
 80093a6:	2800      	cmp	r0, #0
 80093a8:	d162      	bne.n	8009470 <pow+0x300>
 80093aa:	2303      	movs	r3, #3
 80093ac:	4642      	mov	r2, r8
 80093ae:	9304      	str	r3, [sp, #16]
 80093b0:	4b45      	ldr	r3, [pc, #276]	; (80094c8 <pow+0x358>)
 80093b2:	6114      	str	r4, [r2, #16]
 80093b4:	6155      	str	r5, [r2, #20]
 80093b6:	6053      	str	r3, [r2, #4]
 80093b8:	6210      	str	r0, [r2, #32]
 80093ba:	6096      	str	r6, [r2, #8]
 80093bc:	60d7      	str	r7, [r2, #12]
 80093be:	4b45      	ldr	r3, [pc, #276]	; (80094d4 <pow+0x364>)
 80093c0:	0020      	movs	r0, r4
 80093c2:	0029      	movs	r1, r5
 80093c4:	2200      	movs	r2, #0
 80093c6:	f7f8 fb3f 	bl	8001a48 <__aeabi_dmul>
 80093ca:	465b      	mov	r3, fp
 80093cc:	0004      	movs	r4, r0
 80093ce:	000d      	movs	r5, r1
 80093d0:	2b00      	cmp	r3, #0
 80093d2:	d127      	bne.n	8009424 <pow+0x2b4>
 80093d4:	22e0      	movs	r2, #224	; 0xe0
 80093d6:	4641      	mov	r1, r8
 80093d8:	4b3f      	ldr	r3, [pc, #252]	; (80094d8 <pow+0x368>)
 80093da:	0612      	lsls	r2, r2, #24
 80093dc:	618a      	str	r2, [r1, #24]
 80093de:	61cb      	str	r3, [r1, #28]
 80093e0:	0030      	movs	r0, r6
 80093e2:	2200      	movs	r2, #0
 80093e4:	2300      	movs	r3, #0
 80093e6:	0039      	movs	r1, r7
 80093e8:	f7f6 ff30 	bl	800024c <__aeabi_dcmplt>
 80093ec:	2800      	cmp	r0, #0
 80093ee:	d12a      	bne.n	8009446 <pow+0x2d6>
 80093f0:	4640      	mov	r0, r8
 80093f2:	f000 ff23 	bl	800a23c <matherr>
 80093f6:	2800      	cmp	r0, #0
 80093f8:	d1b6      	bne.n	8009368 <pow+0x1f8>
 80093fa:	f001 f827 	bl	800a44c <__errno>
 80093fe:	2322      	movs	r3, #34	; 0x22
 8009400:	6003      	str	r3, [r0, #0]
 8009402:	e7b1      	b.n	8009368 <pow+0x1f8>
 8009404:	f001 f822 	bl	800a44c <__errno>
 8009408:	2321      	movs	r3, #33	; 0x21
 800940a:	6003      	str	r3, [r0, #0]
 800940c:	e76f      	b.n	80092ee <pow+0x17e>
 800940e:	4642      	mov	r2, r8
 8009410:	2300      	movs	r3, #0
 8009412:	2400      	movs	r4, #0
 8009414:	6193      	str	r3, [r2, #24]
 8009416:	61d4      	str	r4, [r2, #28]
 8009418:	4640      	mov	r0, r8
 800941a:	f000 ff0f 	bl	800a23c <matherr>
 800941e:	2800      	cmp	r0, #0
 8009420:	d1a2      	bne.n	8009368 <pow+0x1f8>
 8009422:	e79d      	b.n	8009360 <pow+0x1f0>
 8009424:	2200      	movs	r2, #0
 8009426:	4641      	mov	r1, r8
 8009428:	4b2c      	ldr	r3, [pc, #176]	; (80094dc <pow+0x36c>)
 800942a:	0030      	movs	r0, r6
 800942c:	618a      	str	r2, [r1, #24]
 800942e:	61cb      	str	r3, [r1, #28]
 8009430:	2200      	movs	r2, #0
 8009432:	2300      	movs	r3, #0
 8009434:	0039      	movs	r1, r7
 8009436:	f7f6 ff09 	bl	800024c <__aeabi_dcmplt>
 800943a:	2800      	cmp	r0, #0
 800943c:	d135      	bne.n	80094aa <pow+0x33a>
 800943e:	465b      	mov	r3, fp
 8009440:	2b02      	cmp	r3, #2
 8009442:	d0da      	beq.n	80093fa <pow+0x28a>
 8009444:	e7d4      	b.n	80093f0 <pow+0x280>
 8009446:	0020      	movs	r0, r4
 8009448:	0029      	movs	r1, r5
 800944a:	f000 feff 	bl	800a24c <rint>
 800944e:	0022      	movs	r2, r4
 8009450:	002b      	movs	r3, r5
 8009452:	f7f6 fef5 	bl	8000240 <__aeabi_dcmpeq>
 8009456:	2800      	cmp	r0, #0
 8009458:	d105      	bne.n	8009466 <pow+0x2f6>
 800945a:	22e0      	movs	r2, #224	; 0xe0
 800945c:	4b20      	ldr	r3, [pc, #128]	; (80094e0 <pow+0x370>)
 800945e:	0612      	lsls	r2, r2, #24
 8009460:	4641      	mov	r1, r8
 8009462:	618a      	str	r2, [r1, #24]
 8009464:	61cb      	str	r3, [r1, #28]
 8009466:	4653      	mov	r3, sl
 8009468:	781b      	ldrb	r3, [r3, #0]
 800946a:	b25b      	sxtb	r3, r3
 800946c:	469b      	mov	fp, r3
 800946e:	e7e6      	b.n	800943e <pow+0x2ce>
 8009470:	2301      	movs	r3, #1
 8009472:	4642      	mov	r2, r8
 8009474:	9304      	str	r3, [sp, #16]
 8009476:	4b14      	ldr	r3, [pc, #80]	; (80094c8 <pow+0x358>)
 8009478:	6053      	str	r3, [r2, #4]
 800947a:	4643      	mov	r3, r8
 800947c:	464a      	mov	r2, r9
 800947e:	609e      	str	r6, [r3, #8]
 8009480:	60df      	str	r7, [r3, #12]
 8009482:	621a      	str	r2, [r3, #32]
 8009484:	611c      	str	r4, [r3, #16]
 8009486:	615d      	str	r5, [r3, #20]
 8009488:	465b      	mov	r3, fp
 800948a:	2b00      	cmp	r3, #0
 800948c:	d0bf      	beq.n	800940e <pow+0x29e>
 800948e:	2300      	movs	r3, #0
 8009490:	2200      	movs	r2, #0
 8009492:	0019      	movs	r1, r3
 8009494:	0010      	movs	r0, r2
 8009496:	f7f7 fecd 	bl	8001234 <__aeabi_ddiv>
 800949a:	4643      	mov	r3, r8
 800949c:	6198      	str	r0, [r3, #24]
 800949e:	61d9      	str	r1, [r3, #28]
 80094a0:	465b      	mov	r3, fp
 80094a2:	2b02      	cmp	r3, #2
 80094a4:	d100      	bne.n	80094a8 <pow+0x338>
 80094a6:	e75b      	b.n	8009360 <pow+0x1f0>
 80094a8:	e7b6      	b.n	8009418 <pow+0x2a8>
 80094aa:	0020      	movs	r0, r4
 80094ac:	0029      	movs	r1, r5
 80094ae:	f000 fecd 	bl	800a24c <rint>
 80094b2:	0022      	movs	r2, r4
 80094b4:	002b      	movs	r3, r5
 80094b6:	f7f6 fec3 	bl	8000240 <__aeabi_dcmpeq>
 80094ba:	2800      	cmp	r0, #0
 80094bc:	d1d3      	bne.n	8009466 <pow+0x2f6>
 80094be:	2200      	movs	r2, #0
 80094c0:	4b03      	ldr	r3, [pc, #12]	; (80094d0 <pow+0x360>)
 80094c2:	e7cd      	b.n	8009460 <pow+0x2f0>
 80094c4:	20000074 	.word	0x20000074
 80094c8:	0800a5e0 	.word	0x0800a5e0
 80094cc:	3ff00000 	.word	0x3ff00000
 80094d0:	fff00000 	.word	0xfff00000
 80094d4:	3fe00000 	.word	0x3fe00000
 80094d8:	47efffff 	.word	0x47efffff
 80094dc:	7ff00000 	.word	0x7ff00000
 80094e0:	c7efffff 	.word	0xc7efffff

080094e4 <sqrt>:
 80094e4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80094e6:	4647      	mov	r7, r8
 80094e8:	46ce      	mov	lr, r9
 80094ea:	b580      	push	{r7, lr}
 80094ec:	b08d      	sub	sp, #52	; 0x34
 80094ee:	0004      	movs	r4, r0
 80094f0:	000d      	movs	r5, r1
 80094f2:	f000 fdbd 	bl	800a070 <__ieee754_sqrt>
 80094f6:	4b29      	ldr	r3, [pc, #164]	; (800959c <sqrt+0xb8>)
 80094f8:	0006      	movs	r6, r0
 80094fa:	781b      	ldrb	r3, [r3, #0]
 80094fc:	000f      	movs	r7, r1
 80094fe:	b25b      	sxtb	r3, r3
 8009500:	4698      	mov	r8, r3
 8009502:	3301      	adds	r3, #1
 8009504:	d010      	beq.n	8009528 <sqrt+0x44>
 8009506:	0022      	movs	r2, r4
 8009508:	002b      	movs	r3, r5
 800950a:	0020      	movs	r0, r4
 800950c:	0029      	movs	r1, r5
 800950e:	f7f9 f8ff 	bl	8002710 <__aeabi_dcmpun>
 8009512:	4681      	mov	r9, r0
 8009514:	2800      	cmp	r0, #0
 8009516:	d107      	bne.n	8009528 <sqrt+0x44>
 8009518:	2200      	movs	r2, #0
 800951a:	2300      	movs	r3, #0
 800951c:	0020      	movs	r0, r4
 800951e:	0029      	movs	r1, r5
 8009520:	f7f6 fe94 	bl	800024c <__aeabi_dcmplt>
 8009524:	2800      	cmp	r0, #0
 8009526:	d106      	bne.n	8009536 <sqrt+0x52>
 8009528:	0030      	movs	r0, r6
 800952a:	0039      	movs	r1, r7
 800952c:	b00d      	add	sp, #52	; 0x34
 800952e:	bc0c      	pop	{r2, r3}
 8009530:	4690      	mov	r8, r2
 8009532:	4699      	mov	r9, r3
 8009534:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8009536:	2301      	movs	r3, #1
 8009538:	9302      	str	r3, [sp, #8]
 800953a:	4b19      	ldr	r3, [pc, #100]	; (80095a0 <sqrt+0xbc>)
 800953c:	9406      	str	r4, [sp, #24]
 800953e:	9507      	str	r5, [sp, #28]
 8009540:	9303      	str	r3, [sp, #12]
 8009542:	464b      	mov	r3, r9
 8009544:	930a      	str	r3, [sp, #40]	; 0x28
 8009546:	4643      	mov	r3, r8
 8009548:	9404      	str	r4, [sp, #16]
 800954a:	9505      	str	r5, [sp, #20]
 800954c:	2b00      	cmp	r3, #0
 800954e:	d015      	beq.n	800957c <sqrt+0x98>
 8009550:	2300      	movs	r3, #0
 8009552:	2200      	movs	r2, #0
 8009554:	0019      	movs	r1, r3
 8009556:	0010      	movs	r0, r2
 8009558:	f7f7 fe6c 	bl	8001234 <__aeabi_ddiv>
 800955c:	4643      	mov	r3, r8
 800955e:	9008      	str	r0, [sp, #32]
 8009560:	9109      	str	r1, [sp, #36]	; 0x24
 8009562:	2b02      	cmp	r3, #2
 8009564:	d10e      	bne.n	8009584 <sqrt+0xa0>
 8009566:	f000 ff71 	bl	800a44c <__errno>
 800956a:	2321      	movs	r3, #33	; 0x21
 800956c:	6003      	str	r3, [r0, #0]
 800956e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8009570:	9301      	str	r3, [sp, #4]
 8009572:	2b00      	cmp	r3, #0
 8009574:	d10c      	bne.n	8009590 <sqrt+0xac>
 8009576:	9e08      	ldr	r6, [sp, #32]
 8009578:	9f09      	ldr	r7, [sp, #36]	; 0x24
 800957a:	e7d5      	b.n	8009528 <sqrt+0x44>
 800957c:	2300      	movs	r3, #0
 800957e:	2400      	movs	r4, #0
 8009580:	9308      	str	r3, [sp, #32]
 8009582:	9409      	str	r4, [sp, #36]	; 0x24
 8009584:	a802      	add	r0, sp, #8
 8009586:	f000 fe59 	bl	800a23c <matherr>
 800958a:	2800      	cmp	r0, #0
 800958c:	d1ef      	bne.n	800956e <sqrt+0x8a>
 800958e:	e7ea      	b.n	8009566 <sqrt+0x82>
 8009590:	f000 ff5c 	bl	800a44c <__errno>
 8009594:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8009596:	9301      	str	r3, [sp, #4]
 8009598:	6003      	str	r3, [r0, #0]
 800959a:	e7ec      	b.n	8009576 <sqrt+0x92>
 800959c:	20000074 	.word	0x20000074
 80095a0:	0800a5e4 	.word	0x0800a5e4

080095a4 <__ieee754_pow>:
 80095a4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80095a6:	4657      	mov	r7, sl
 80095a8:	46de      	mov	lr, fp
 80095aa:	464e      	mov	r6, r9
 80095ac:	4645      	mov	r5, r8
 80095ae:	005c      	lsls	r4, r3, #1
 80095b0:	0864      	lsrs	r4, r4, #1
 80095b2:	b5e0      	push	{r5, r6, r7, lr}
 80095b4:	4698      	mov	r8, r3
 80095b6:	001f      	movs	r7, r3
 80095b8:	0023      	movs	r3, r4
 80095ba:	b093      	sub	sp, #76	; 0x4c
 80095bc:	4683      	mov	fp, r0
 80095be:	468a      	mov	sl, r1
 80095c0:	0016      	movs	r6, r2
 80095c2:	4313      	orrs	r3, r2
 80095c4:	d00c      	beq.n	80095e0 <__ieee754_pow+0x3c>
 80095c6:	4b7d      	ldr	r3, [pc, #500]	; (80097bc <__ieee754_pow+0x218>)
 80095c8:	004d      	lsls	r5, r1, #1
 80095ca:	9102      	str	r1, [sp, #8]
 80095cc:	4681      	mov	r9, r0
 80095ce:	086d      	lsrs	r5, r5, #1
 80095d0:	429d      	cmp	r5, r3
 80095d2:	dd12      	ble.n	80095fa <__ieee754_pow+0x56>
 80095d4:	4b7a      	ldr	r3, [pc, #488]	; (80097c0 <__ieee754_pow+0x21c>)
 80095d6:	469c      	mov	ip, r3
 80095d8:	465b      	mov	r3, fp
 80095da:	4465      	add	r5, ip
 80095dc:	431d      	orrs	r5, r3
 80095de:	d161      	bne.n	80096a4 <__ieee754_pow+0x100>
 80095e0:	2300      	movs	r3, #0
 80095e2:	4c78      	ldr	r4, [pc, #480]	; (80097c4 <__ieee754_pow+0x220>)
 80095e4:	9300      	str	r3, [sp, #0]
 80095e6:	9401      	str	r4, [sp, #4]
 80095e8:	9800      	ldr	r0, [sp, #0]
 80095ea:	9901      	ldr	r1, [sp, #4]
 80095ec:	b013      	add	sp, #76	; 0x4c
 80095ee:	bc3c      	pop	{r2, r3, r4, r5}
 80095f0:	4690      	mov	r8, r2
 80095f2:	4699      	mov	r9, r3
 80095f4:	46a2      	mov	sl, r4
 80095f6:	46ab      	mov	fp, r5
 80095f8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80095fa:	429d      	cmp	r5, r3
 80095fc:	d050      	beq.n	80096a0 <__ieee754_pow+0xfc>
 80095fe:	429c      	cmp	r4, r3
 8009600:	dce8      	bgt.n	80095d4 <__ieee754_pow+0x30>
 8009602:	4b6e      	ldr	r3, [pc, #440]	; (80097bc <__ieee754_pow+0x218>)
 8009604:	429c      	cmp	r4, r3
 8009606:	d06b      	beq.n	80096e0 <__ieee754_pow+0x13c>
 8009608:	2300      	movs	r3, #0
 800960a:	9304      	str	r3, [sp, #16]
 800960c:	4653      	mov	r3, sl
 800960e:	2b00      	cmp	r3, #0
 8009610:	db69      	blt.n	80096e6 <__ieee754_pow+0x142>
 8009612:	2a00      	cmp	r2, #0
 8009614:	d110      	bne.n	8009638 <__ieee754_pow+0x94>
 8009616:	4b69      	ldr	r3, [pc, #420]	; (80097bc <__ieee754_pow+0x218>)
 8009618:	429c      	cmp	r4, r3
 800961a:	d04c      	beq.n	80096b6 <__ieee754_pow+0x112>
 800961c:	4b69      	ldr	r3, [pc, #420]	; (80097c4 <__ieee754_pow+0x220>)
 800961e:	429c      	cmp	r4, r3
 8009620:	d100      	bne.n	8009624 <__ieee754_pow+0x80>
 8009622:	e0a3      	b.n	800976c <__ieee754_pow+0x1c8>
 8009624:	2380      	movs	r3, #128	; 0x80
 8009626:	05db      	lsls	r3, r3, #23
 8009628:	4598      	cmp	r8, r3
 800962a:	d100      	bne.n	800962e <__ieee754_pow+0x8a>
 800962c:	e0bc      	b.n	80097a8 <__ieee754_pow+0x204>
 800962e:	4b66      	ldr	r3, [pc, #408]	; (80097c8 <__ieee754_pow+0x224>)
 8009630:	4598      	cmp	r8, r3
 8009632:	d101      	bne.n	8009638 <__ieee754_pow+0x94>
 8009634:	f000 fbd6 	bl	8009de4 <__ieee754_pow+0x840>
 8009638:	4658      	mov	r0, fp
 800963a:	4651      	mov	r1, sl
 800963c:	f000 fdf0 	bl	800a220 <fabs>
 8009640:	464b      	mov	r3, r9
 8009642:	9000      	str	r0, [sp, #0]
 8009644:	9101      	str	r1, [sp, #4]
 8009646:	2b00      	cmp	r3, #0
 8009648:	d107      	bne.n	800965a <__ieee754_pow+0xb6>
 800964a:	2d00      	cmp	r5, #0
 800964c:	d067      	beq.n	800971e <__ieee754_pow+0x17a>
 800964e:	4653      	mov	r3, sl
 8009650:	4a5c      	ldr	r2, [pc, #368]	; (80097c4 <__ieee754_pow+0x220>)
 8009652:	009b      	lsls	r3, r3, #2
 8009654:	089b      	lsrs	r3, r3, #2
 8009656:	4293      	cmp	r3, r2
 8009658:	d061      	beq.n	800971e <__ieee754_pow+0x17a>
 800965a:	4653      	mov	r3, sl
 800965c:	0fdb      	lsrs	r3, r3, #31
 800965e:	3b01      	subs	r3, #1
 8009660:	4699      	mov	r9, r3
 8009662:	464a      	mov	r2, r9
 8009664:	9b04      	ldr	r3, [sp, #16]
 8009666:	4313      	orrs	r3, r2
 8009668:	d100      	bne.n	800966c <__ieee754_pow+0xc8>
 800966a:	e090      	b.n	800978e <__ieee754_pow+0x1ea>
 800966c:	4b57      	ldr	r3, [pc, #348]	; (80097cc <__ieee754_pow+0x228>)
 800966e:	429c      	cmp	r4, r3
 8009670:	dc00      	bgt.n	8009674 <__ieee754_pow+0xd0>
 8009672:	e0bb      	b.n	80097ec <__ieee754_pow+0x248>
 8009674:	4b56      	ldr	r3, [pc, #344]	; (80097d0 <__ieee754_pow+0x22c>)
 8009676:	429c      	cmp	r4, r3
 8009678:	dc01      	bgt.n	800967e <__ieee754_pow+0xda>
 800967a:	f000 fc10 	bl	8009e9e <__ieee754_pow+0x8fa>
 800967e:	4b55      	ldr	r3, [pc, #340]	; (80097d4 <__ieee754_pow+0x230>)
 8009680:	429d      	cmp	r5, r3
 8009682:	dc01      	bgt.n	8009688 <__ieee754_pow+0xe4>
 8009684:	f000 fc04 	bl	8009e90 <__ieee754_pow+0x8ec>
 8009688:	4643      	mov	r3, r8
 800968a:	2b00      	cmp	r3, #0
 800968c:	dd23      	ble.n	80096d6 <__ieee754_pow+0x132>
 800968e:	4a52      	ldr	r2, [pc, #328]	; (80097d8 <__ieee754_pow+0x234>)
 8009690:	4b52      	ldr	r3, [pc, #328]	; (80097dc <__ieee754_pow+0x238>)
 8009692:	0010      	movs	r0, r2
 8009694:	0019      	movs	r1, r3
 8009696:	f7f8 f9d7 	bl	8001a48 <__aeabi_dmul>
 800969a:	9000      	str	r0, [sp, #0]
 800969c:	9101      	str	r1, [sp, #4]
 800969e:	e7a3      	b.n	80095e8 <__ieee754_pow+0x44>
 80096a0:	2800      	cmp	r0, #0
 80096a2:	d005      	beq.n	80096b0 <__ieee754_pow+0x10c>
 80096a4:	484e      	ldr	r0, [pc, #312]	; (80097e0 <__ieee754_pow+0x23c>)
 80096a6:	f000 fdcb 	bl	800a240 <nan>
 80096aa:	9000      	str	r0, [sp, #0]
 80096ac:	9101      	str	r1, [sp, #4]
 80096ae:	e79b      	b.n	80095e8 <__ieee754_pow+0x44>
 80096b0:	42ac      	cmp	r4, r5
 80096b2:	dcf7      	bgt.n	80096a4 <__ieee754_pow+0x100>
 80096b4:	e7a5      	b.n	8009602 <__ieee754_pow+0x5e>
 80096b6:	465a      	mov	r2, fp
 80096b8:	4b41      	ldr	r3, [pc, #260]	; (80097c0 <__ieee754_pow+0x21c>)
 80096ba:	18eb      	adds	r3, r5, r3
 80096bc:	4313      	orrs	r3, r2
 80096be:	d100      	bne.n	80096c2 <__ieee754_pow+0x11e>
 80096c0:	e78e      	b.n	80095e0 <__ieee754_pow+0x3c>
 80096c2:	4b44      	ldr	r3, [pc, #272]	; (80097d4 <__ieee754_pow+0x230>)
 80096c4:	429d      	cmp	r5, r3
 80096c6:	dc00      	bgt.n	80096ca <__ieee754_pow+0x126>
 80096c8:	e399      	b.n	8009dfe <__ieee754_pow+0x85a>
 80096ca:	4643      	mov	r3, r8
 80096cc:	9600      	str	r6, [sp, #0]
 80096ce:	9701      	str	r7, [sp, #4]
 80096d0:	2b00      	cmp	r3, #0
 80096d2:	db00      	blt.n	80096d6 <__ieee754_pow+0x132>
 80096d4:	e788      	b.n	80095e8 <__ieee754_pow+0x44>
 80096d6:	2300      	movs	r3, #0
 80096d8:	2400      	movs	r4, #0
 80096da:	9300      	str	r3, [sp, #0]
 80096dc:	9401      	str	r4, [sp, #4]
 80096de:	e783      	b.n	80095e8 <__ieee754_pow+0x44>
 80096e0:	2a00      	cmp	r2, #0
 80096e2:	d091      	beq.n	8009608 <__ieee754_pow+0x64>
 80096e4:	e776      	b.n	80095d4 <__ieee754_pow+0x30>
 80096e6:	4b3f      	ldr	r3, [pc, #252]	; (80097e4 <__ieee754_pow+0x240>)
 80096e8:	429c      	cmp	r4, r3
 80096ea:	dc3c      	bgt.n	8009766 <__ieee754_pow+0x1c2>
 80096ec:	4b39      	ldr	r3, [pc, #228]	; (80097d4 <__ieee754_pow+0x230>)
 80096ee:	429c      	cmp	r4, r3
 80096f0:	dd8f      	ble.n	8009612 <__ieee754_pow+0x6e>
 80096f2:	493d      	ldr	r1, [pc, #244]	; (80097e8 <__ieee754_pow+0x244>)
 80096f4:	1523      	asrs	r3, r4, #20
 80096f6:	468c      	mov	ip, r1
 80096f8:	4463      	add	r3, ip
 80096fa:	2b14      	cmp	r3, #20
 80096fc:	dc00      	bgt.n	8009700 <__ieee754_pow+0x15c>
 80096fe:	e3b2      	b.n	8009e66 <__ieee754_pow+0x8c2>
 8009700:	2134      	movs	r1, #52	; 0x34
 8009702:	1acb      	subs	r3, r1, r3
 8009704:	0031      	movs	r1, r6
 8009706:	40d9      	lsrs	r1, r3
 8009708:	0008      	movs	r0, r1
 800970a:	4098      	lsls	r0, r3
 800970c:	4290      	cmp	r0, r2
 800970e:	d000      	beq.n	8009712 <__ieee754_pow+0x16e>
 8009710:	e77f      	b.n	8009612 <__ieee754_pow+0x6e>
 8009712:	2301      	movs	r3, #1
 8009714:	4019      	ands	r1, r3
 8009716:	3301      	adds	r3, #1
 8009718:	1a5b      	subs	r3, r3, r1
 800971a:	9304      	str	r3, [sp, #16]
 800971c:	e779      	b.n	8009612 <__ieee754_pow+0x6e>
 800971e:	4643      	mov	r3, r8
 8009720:	2b00      	cmp	r3, #0
 8009722:	da07      	bge.n	8009734 <__ieee754_pow+0x190>
 8009724:	9a00      	ldr	r2, [sp, #0]
 8009726:	9b01      	ldr	r3, [sp, #4]
 8009728:	2000      	movs	r0, #0
 800972a:	4926      	ldr	r1, [pc, #152]	; (80097c4 <__ieee754_pow+0x220>)
 800972c:	f7f7 fd82 	bl	8001234 <__aeabi_ddiv>
 8009730:	9000      	str	r0, [sp, #0]
 8009732:	9101      	str	r1, [sp, #4]
 8009734:	9b02      	ldr	r3, [sp, #8]
 8009736:	2b00      	cmp	r3, #0
 8009738:	db00      	blt.n	800973c <__ieee754_pow+0x198>
 800973a:	e755      	b.n	80095e8 <__ieee754_pow+0x44>
 800973c:	4b20      	ldr	r3, [pc, #128]	; (80097c0 <__ieee754_pow+0x21c>)
 800973e:	469c      	mov	ip, r3
 8009740:	9b04      	ldr	r3, [sp, #16]
 8009742:	4465      	add	r5, ip
 8009744:	431d      	orrs	r5, r3
 8009746:	d101      	bne.n	800974c <__ieee754_pow+0x1a8>
 8009748:	f000 fc0e 	bl	8009f68 <__ieee754_pow+0x9c4>
 800974c:	9b04      	ldr	r3, [sp, #16]
 800974e:	2b01      	cmp	r3, #1
 8009750:	d000      	beq.n	8009754 <__ieee754_pow+0x1b0>
 8009752:	e749      	b.n	80095e8 <__ieee754_pow+0x44>
 8009754:	9c00      	ldr	r4, [sp, #0]
 8009756:	9d01      	ldr	r5, [sp, #4]
 8009758:	2180      	movs	r1, #128	; 0x80
 800975a:	0022      	movs	r2, r4
 800975c:	0609      	lsls	r1, r1, #24
 800975e:	186b      	adds	r3, r5, r1
 8009760:	9200      	str	r2, [sp, #0]
 8009762:	9301      	str	r3, [sp, #4]
 8009764:	e740      	b.n	80095e8 <__ieee754_pow+0x44>
 8009766:	2302      	movs	r3, #2
 8009768:	9304      	str	r3, [sp, #16]
 800976a:	e752      	b.n	8009612 <__ieee754_pow+0x6e>
 800976c:	4658      	mov	r0, fp
 800976e:	4651      	mov	r1, sl
 8009770:	4643      	mov	r3, r8
 8009772:	9000      	str	r0, [sp, #0]
 8009774:	9101      	str	r1, [sp, #4]
 8009776:	2b00      	cmp	r3, #0
 8009778:	db00      	blt.n	800977c <__ieee754_pow+0x1d8>
 800977a:	e735      	b.n	80095e8 <__ieee754_pow+0x44>
 800977c:	465a      	mov	r2, fp
 800977e:	4653      	mov	r3, sl
 8009780:	2000      	movs	r0, #0
 8009782:	4910      	ldr	r1, [pc, #64]	; (80097c4 <__ieee754_pow+0x220>)
 8009784:	f7f7 fd56 	bl	8001234 <__aeabi_ddiv>
 8009788:	9000      	str	r0, [sp, #0]
 800978a:	9101      	str	r1, [sp, #4]
 800978c:	e72c      	b.n	80095e8 <__ieee754_pow+0x44>
 800978e:	465a      	mov	r2, fp
 8009790:	4653      	mov	r3, sl
 8009792:	4658      	mov	r0, fp
 8009794:	4651      	mov	r1, sl
 8009796:	f7f8 fbc9 	bl	8001f2c <__aeabi_dsub>
 800979a:	0002      	movs	r2, r0
 800979c:	000b      	movs	r3, r1
 800979e:	f7f7 fd49 	bl	8001234 <__aeabi_ddiv>
 80097a2:	9000      	str	r0, [sp, #0]
 80097a4:	9101      	str	r1, [sp, #4]
 80097a6:	e71f      	b.n	80095e8 <__ieee754_pow+0x44>
 80097a8:	465a      	mov	r2, fp
 80097aa:	4653      	mov	r3, sl
 80097ac:	4658      	mov	r0, fp
 80097ae:	4651      	mov	r1, sl
 80097b0:	f7f8 f94a 	bl	8001a48 <__aeabi_dmul>
 80097b4:	9000      	str	r0, [sp, #0]
 80097b6:	9101      	str	r1, [sp, #4]
 80097b8:	e716      	b.n	80095e8 <__ieee754_pow+0x44>
 80097ba:	46c0      	nop			; (mov r8, r8)
 80097bc:	7ff00000 	.word	0x7ff00000
 80097c0:	c0100000 	.word	0xc0100000
 80097c4:	3ff00000 	.word	0x3ff00000
 80097c8:	3fe00000 	.word	0x3fe00000
 80097cc:	41e00000 	.word	0x41e00000
 80097d0:	43f00000 	.word	0x43f00000
 80097d4:	3fefffff 	.word	0x3fefffff
 80097d8:	8800759c 	.word	0x8800759c
 80097dc:	7e37e43c 	.word	0x7e37e43c
 80097e0:	0800a5e8 	.word	0x0800a5e8
 80097e4:	433fffff 	.word	0x433fffff
 80097e8:	fffffc01 	.word	0xfffffc01
 80097ec:	4be4      	ldr	r3, [pc, #912]	; (8009b80 <__ieee754_pow+0x5dc>)
 80097ee:	2200      	movs	r2, #0
 80097f0:	429d      	cmp	r5, r3
 80097f2:	dc0a      	bgt.n	800980a <__ieee754_pow+0x266>
 80097f4:	9800      	ldr	r0, [sp, #0]
 80097f6:	9901      	ldr	r1, [sp, #4]
 80097f8:	2200      	movs	r2, #0
 80097fa:	4be2      	ldr	r3, [pc, #904]	; (8009b84 <__ieee754_pow+0x5e0>)
 80097fc:	f7f8 f924 	bl	8001a48 <__aeabi_dmul>
 8009800:	2235      	movs	r2, #53	; 0x35
 8009802:	000d      	movs	r5, r1
 8009804:	9000      	str	r0, [sp, #0]
 8009806:	9101      	str	r1, [sp, #4]
 8009808:	4252      	negs	r2, r2
 800980a:	49df      	ldr	r1, [pc, #892]	; (8009b88 <__ieee754_pow+0x5e4>)
 800980c:	152b      	asrs	r3, r5, #20
 800980e:	468c      	mov	ip, r1
 8009810:	4463      	add	r3, ip
 8009812:	4698      	mov	r8, r3
 8009814:	032d      	lsls	r5, r5, #12
 8009816:	4cdd      	ldr	r4, [pc, #884]	; (8009b8c <__ieee754_pow+0x5e8>)
 8009818:	4bdd      	ldr	r3, [pc, #884]	; (8009b90 <__ieee754_pow+0x5ec>)
 800981a:	0b2d      	lsrs	r5, r5, #12
 800981c:	4490      	add	r8, r2
 800981e:	432c      	orrs	r4, r5
 8009820:	429d      	cmp	r5, r3
 8009822:	dd0a      	ble.n	800983a <__ieee754_pow+0x296>
 8009824:	4bdb      	ldr	r3, [pc, #876]	; (8009b94 <__ieee754_pow+0x5f0>)
 8009826:	429d      	cmp	r5, r3
 8009828:	dc01      	bgt.n	800982e <__ieee754_pow+0x28a>
 800982a:	f000 fc01 	bl	800a030 <__ieee754_pow+0xa8c>
 800982e:	2301      	movs	r3, #1
 8009830:	469c      	mov	ip, r3
 8009832:	4bd9      	ldr	r3, [pc, #868]	; (8009b98 <__ieee754_pow+0x5f4>)
 8009834:	44e0      	add	r8, ip
 8009836:	469c      	mov	ip, r3
 8009838:	4464      	add	r4, ip
 800983a:	2200      	movs	r2, #0
 800983c:	2300      	movs	r3, #0
 800983e:	920e      	str	r2, [sp, #56]	; 0x38
 8009840:	930f      	str	r3, [sp, #60]	; 0x3c
 8009842:	9210      	str	r2, [sp, #64]	; 0x40
 8009844:	9311      	str	r3, [sp, #68]	; 0x44
 8009846:	2200      	movs	r2, #0
 8009848:	2500      	movs	r5, #0
 800984a:	4bd0      	ldr	r3, [pc, #832]	; (8009b8c <__ieee754_pow+0x5e8>)
 800984c:	9206      	str	r2, [sp, #24]
 800984e:	9307      	str	r3, [sp, #28]
 8009850:	9800      	ldr	r0, [sp, #0]
 8009852:	9901      	ldr	r1, [sp, #4]
 8009854:	9a06      	ldr	r2, [sp, #24]
 8009856:	9b07      	ldr	r3, [sp, #28]
 8009858:	0021      	movs	r1, r4
 800985a:	9008      	str	r0, [sp, #32]
 800985c:	9109      	str	r1, [sp, #36]	; 0x24
 800985e:	f7f8 fb65 	bl	8001f2c <__aeabi_dsub>
 8009862:	9a06      	ldr	r2, [sp, #24]
 8009864:	9b07      	ldr	r3, [sp, #28]
 8009866:	900a      	str	r0, [sp, #40]	; 0x28
 8009868:	910b      	str	r1, [sp, #44]	; 0x2c
 800986a:	9808      	ldr	r0, [sp, #32]
 800986c:	9909      	ldr	r1, [sp, #36]	; 0x24
 800986e:	f7f7 f9c5 	bl	8000bfc <__aeabi_dadd>
 8009872:	0002      	movs	r2, r0
 8009874:	000b      	movs	r3, r1
 8009876:	2000      	movs	r0, #0
 8009878:	49c4      	ldr	r1, [pc, #784]	; (8009b8c <__ieee754_pow+0x5e8>)
 800987a:	f7f7 fcdb 	bl	8001234 <__aeabi_ddiv>
 800987e:	000a      	movs	r2, r1
 8009880:	0001      	movs	r1, r0
 8009882:	0013      	movs	r3, r2
 8009884:	910c      	str	r1, [sp, #48]	; 0x30
 8009886:	920d      	str	r2, [sp, #52]	; 0x34
 8009888:	0002      	movs	r2, r0
 800988a:	980a      	ldr	r0, [sp, #40]	; 0x28
 800988c:	990b      	ldr	r1, [sp, #44]	; 0x2c
 800988e:	f7f8 f8db 	bl	8001a48 <__aeabi_dmul>
 8009892:	000a      	movs	r2, r1
 8009894:	0001      	movs	r1, r0
 8009896:	0013      	movs	r3, r2
 8009898:	9102      	str	r1, [sp, #8]
 800989a:	9203      	str	r2, [sp, #12]
 800989c:	2200      	movs	r2, #0
 800989e:	9200      	str	r2, [sp, #0]
 80098a0:	9301      	str	r3, [sp, #4]
 80098a2:	2380      	movs	r3, #128	; 0x80
 80098a4:	1064      	asrs	r4, r4, #1
 80098a6:	059b      	lsls	r3, r3, #22
 80098a8:	4323      	orrs	r3, r4
 80098aa:	2480      	movs	r4, #128	; 0x80
 80098ac:	0324      	lsls	r4, r4, #12
 80098ae:	46a4      	mov	ip, r4
 80098b0:	2000      	movs	r0, #0
 80098b2:	4463      	add	r3, ip
 80098b4:	1959      	adds	r1, r3, r5
 80098b6:	0004      	movs	r4, r0
 80098b8:	000d      	movs	r5, r1
 80098ba:	0002      	movs	r2, r0
 80098bc:	000b      	movs	r3, r1
 80098be:	9800      	ldr	r0, [sp, #0]
 80098c0:	9901      	ldr	r1, [sp, #4]
 80098c2:	f7f8 f8c1 	bl	8001a48 <__aeabi_dmul>
 80098c6:	0002      	movs	r2, r0
 80098c8:	000b      	movs	r3, r1
 80098ca:	980a      	ldr	r0, [sp, #40]	; 0x28
 80098cc:	990b      	ldr	r1, [sp, #44]	; 0x2c
 80098ce:	f7f8 fb2d 	bl	8001f2c <__aeabi_dsub>
 80098d2:	9a06      	ldr	r2, [sp, #24]
 80098d4:	9b07      	ldr	r3, [sp, #28]
 80098d6:	900a      	str	r0, [sp, #40]	; 0x28
 80098d8:	910b      	str	r1, [sp, #44]	; 0x2c
 80098da:	0020      	movs	r0, r4
 80098dc:	0029      	movs	r1, r5
 80098de:	f7f8 fb25 	bl	8001f2c <__aeabi_dsub>
 80098e2:	0002      	movs	r2, r0
 80098e4:	000b      	movs	r3, r1
 80098e6:	9808      	ldr	r0, [sp, #32]
 80098e8:	9909      	ldr	r1, [sp, #36]	; 0x24
 80098ea:	f7f8 fb1f 	bl	8001f2c <__aeabi_dsub>
 80098ee:	9a00      	ldr	r2, [sp, #0]
 80098f0:	9b01      	ldr	r3, [sp, #4]
 80098f2:	f7f8 f8a9 	bl	8001a48 <__aeabi_dmul>
 80098f6:	0002      	movs	r2, r0
 80098f8:	000b      	movs	r3, r1
 80098fa:	980a      	ldr	r0, [sp, #40]	; 0x28
 80098fc:	990b      	ldr	r1, [sp, #44]	; 0x2c
 80098fe:	f7f8 fb15 	bl	8001f2c <__aeabi_dsub>
 8009902:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8009904:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8009906:	f7f8 f89f 	bl	8001a48 <__aeabi_dmul>
 800990a:	9c02      	ldr	r4, [sp, #8]
 800990c:	9d03      	ldr	r5, [sp, #12]
 800990e:	9008      	str	r0, [sp, #32]
 8009910:	9109      	str	r1, [sp, #36]	; 0x24
 8009912:	0022      	movs	r2, r4
 8009914:	002b      	movs	r3, r5
 8009916:	0020      	movs	r0, r4
 8009918:	0029      	movs	r1, r5
 800991a:	f7f8 f895 	bl	8001a48 <__aeabi_dmul>
 800991e:	0004      	movs	r4, r0
 8009920:	000d      	movs	r5, r1
 8009922:	4a9e      	ldr	r2, [pc, #632]	; (8009b9c <__ieee754_pow+0x5f8>)
 8009924:	4b9e      	ldr	r3, [pc, #632]	; (8009ba0 <__ieee754_pow+0x5fc>)
 8009926:	f7f8 f88f 	bl	8001a48 <__aeabi_dmul>
 800992a:	4a9e      	ldr	r2, [pc, #632]	; (8009ba4 <__ieee754_pow+0x600>)
 800992c:	4b9e      	ldr	r3, [pc, #632]	; (8009ba8 <__ieee754_pow+0x604>)
 800992e:	f7f7 f965 	bl	8000bfc <__aeabi_dadd>
 8009932:	0022      	movs	r2, r4
 8009934:	002b      	movs	r3, r5
 8009936:	f7f8 f887 	bl	8001a48 <__aeabi_dmul>
 800993a:	4a9c      	ldr	r2, [pc, #624]	; (8009bac <__ieee754_pow+0x608>)
 800993c:	4b9c      	ldr	r3, [pc, #624]	; (8009bb0 <__ieee754_pow+0x60c>)
 800993e:	f7f7 f95d 	bl	8000bfc <__aeabi_dadd>
 8009942:	0022      	movs	r2, r4
 8009944:	002b      	movs	r3, r5
 8009946:	f7f8 f87f 	bl	8001a48 <__aeabi_dmul>
 800994a:	4a9a      	ldr	r2, [pc, #616]	; (8009bb4 <__ieee754_pow+0x610>)
 800994c:	4b9a      	ldr	r3, [pc, #616]	; (8009bb8 <__ieee754_pow+0x614>)
 800994e:	f7f7 f955 	bl	8000bfc <__aeabi_dadd>
 8009952:	0022      	movs	r2, r4
 8009954:	002b      	movs	r3, r5
 8009956:	f7f8 f877 	bl	8001a48 <__aeabi_dmul>
 800995a:	4a98      	ldr	r2, [pc, #608]	; (8009bbc <__ieee754_pow+0x618>)
 800995c:	4b98      	ldr	r3, [pc, #608]	; (8009bc0 <__ieee754_pow+0x61c>)
 800995e:	f7f7 f94d 	bl	8000bfc <__aeabi_dadd>
 8009962:	0022      	movs	r2, r4
 8009964:	002b      	movs	r3, r5
 8009966:	f7f8 f86f 	bl	8001a48 <__aeabi_dmul>
 800996a:	4a96      	ldr	r2, [pc, #600]	; (8009bc4 <__ieee754_pow+0x620>)
 800996c:	4b96      	ldr	r3, [pc, #600]	; (8009bc8 <__ieee754_pow+0x624>)
 800996e:	f7f7 f945 	bl	8000bfc <__aeabi_dadd>
 8009972:	0022      	movs	r2, r4
 8009974:	9006      	str	r0, [sp, #24]
 8009976:	9107      	str	r1, [sp, #28]
 8009978:	002b      	movs	r3, r5
 800997a:	0020      	movs	r0, r4
 800997c:	0029      	movs	r1, r5
 800997e:	f7f8 f863 	bl	8001a48 <__aeabi_dmul>
 8009982:	0002      	movs	r2, r0
 8009984:	000b      	movs	r3, r1
 8009986:	9806      	ldr	r0, [sp, #24]
 8009988:	9907      	ldr	r1, [sp, #28]
 800998a:	f7f8 f85d 	bl	8001a48 <__aeabi_dmul>
 800998e:	9a00      	ldr	r2, [sp, #0]
 8009990:	9b01      	ldr	r3, [sp, #4]
 8009992:	0004      	movs	r4, r0
 8009994:	000d      	movs	r5, r1
 8009996:	9802      	ldr	r0, [sp, #8]
 8009998:	9903      	ldr	r1, [sp, #12]
 800999a:	f7f7 f92f 	bl	8000bfc <__aeabi_dadd>
 800999e:	9a08      	ldr	r2, [sp, #32]
 80099a0:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80099a2:	f7f8 f851 	bl	8001a48 <__aeabi_dmul>
 80099a6:	0022      	movs	r2, r4
 80099a8:	002b      	movs	r3, r5
 80099aa:	f7f7 f927 	bl	8000bfc <__aeabi_dadd>
 80099ae:	9c00      	ldr	r4, [sp, #0]
 80099b0:	9d01      	ldr	r5, [sp, #4]
 80099b2:	900a      	str	r0, [sp, #40]	; 0x28
 80099b4:	910b      	str	r1, [sp, #44]	; 0x2c
 80099b6:	0022      	movs	r2, r4
 80099b8:	002b      	movs	r3, r5
 80099ba:	0020      	movs	r0, r4
 80099bc:	0029      	movs	r1, r5
 80099be:	f7f8 f843 	bl	8001a48 <__aeabi_dmul>
 80099c2:	2200      	movs	r2, #0
 80099c4:	4b81      	ldr	r3, [pc, #516]	; (8009bcc <__ieee754_pow+0x628>)
 80099c6:	0004      	movs	r4, r0
 80099c8:	000d      	movs	r5, r1
 80099ca:	f7f7 f917 	bl	8000bfc <__aeabi_dadd>
 80099ce:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80099d0:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80099d2:	f7f7 f913 	bl	8000bfc <__aeabi_dadd>
 80099d6:	2200      	movs	r2, #0
 80099d8:	000b      	movs	r3, r1
 80099da:	0011      	movs	r1, r2
 80099dc:	001a      	movs	r2, r3
 80099de:	9106      	str	r1, [sp, #24]
 80099e0:	9207      	str	r2, [sp, #28]
 80099e2:	000a      	movs	r2, r1
 80099e4:	9800      	ldr	r0, [sp, #0]
 80099e6:	9901      	ldr	r1, [sp, #4]
 80099e8:	f7f8 f82e 	bl	8001a48 <__aeabi_dmul>
 80099ec:	2200      	movs	r2, #0
 80099ee:	900c      	str	r0, [sp, #48]	; 0x30
 80099f0:	910d      	str	r1, [sp, #52]	; 0x34
 80099f2:	9806      	ldr	r0, [sp, #24]
 80099f4:	9907      	ldr	r1, [sp, #28]
 80099f6:	4b75      	ldr	r3, [pc, #468]	; (8009bcc <__ieee754_pow+0x628>)
 80099f8:	f7f8 fa98 	bl	8001f2c <__aeabi_dsub>
 80099fc:	0022      	movs	r2, r4
 80099fe:	002b      	movs	r3, r5
 8009a00:	f7f8 fa94 	bl	8001f2c <__aeabi_dsub>
 8009a04:	0002      	movs	r2, r0
 8009a06:	000b      	movs	r3, r1
 8009a08:	980a      	ldr	r0, [sp, #40]	; 0x28
 8009a0a:	990b      	ldr	r1, [sp, #44]	; 0x2c
 8009a0c:	f7f8 fa8e 	bl	8001f2c <__aeabi_dsub>
 8009a10:	9a02      	ldr	r2, [sp, #8]
 8009a12:	9b03      	ldr	r3, [sp, #12]
 8009a14:	f7f8 f818 	bl	8001a48 <__aeabi_dmul>
 8009a18:	9a06      	ldr	r2, [sp, #24]
 8009a1a:	9b07      	ldr	r3, [sp, #28]
 8009a1c:	0004      	movs	r4, r0
 8009a1e:	000d      	movs	r5, r1
 8009a20:	9808      	ldr	r0, [sp, #32]
 8009a22:	9909      	ldr	r1, [sp, #36]	; 0x24
 8009a24:	f7f8 f810 	bl	8001a48 <__aeabi_dmul>
 8009a28:	0002      	movs	r2, r0
 8009a2a:	000b      	movs	r3, r1
 8009a2c:	0020      	movs	r0, r4
 8009a2e:	0029      	movs	r1, r5
 8009a30:	f7f7 f8e4 	bl	8000bfc <__aeabi_dadd>
 8009a34:	0004      	movs	r4, r0
 8009a36:	000d      	movs	r5, r1
 8009a38:	0002      	movs	r2, r0
 8009a3a:	000b      	movs	r3, r1
 8009a3c:	980c      	ldr	r0, [sp, #48]	; 0x30
 8009a3e:	990d      	ldr	r1, [sp, #52]	; 0x34
 8009a40:	f7f7 f8dc 	bl	8000bfc <__aeabi_dadd>
 8009a44:	2200      	movs	r2, #0
 8009a46:	0010      	movs	r0, r2
 8009a48:	22e0      	movs	r2, #224	; 0xe0
 8009a4a:	4b61      	ldr	r3, [pc, #388]	; (8009bd0 <__ieee754_pow+0x62c>)
 8009a4c:	0612      	lsls	r2, r2, #24
 8009a4e:	9000      	str	r0, [sp, #0]
 8009a50:	9101      	str	r1, [sp, #4]
 8009a52:	f7f7 fff9 	bl	8001a48 <__aeabi_dmul>
 8009a56:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8009a58:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8009a5a:	9002      	str	r0, [sp, #8]
 8009a5c:	9103      	str	r1, [sp, #12]
 8009a5e:	9800      	ldr	r0, [sp, #0]
 8009a60:	9901      	ldr	r1, [sp, #4]
 8009a62:	f7f8 fa63 	bl	8001f2c <__aeabi_dsub>
 8009a66:	0002      	movs	r2, r0
 8009a68:	000b      	movs	r3, r1
 8009a6a:	0020      	movs	r0, r4
 8009a6c:	0029      	movs	r1, r5
 8009a6e:	f7f8 fa5d 	bl	8001f2c <__aeabi_dsub>
 8009a72:	4a58      	ldr	r2, [pc, #352]	; (8009bd4 <__ieee754_pow+0x630>)
 8009a74:	4b56      	ldr	r3, [pc, #344]	; (8009bd0 <__ieee754_pow+0x62c>)
 8009a76:	f7f7 ffe7 	bl	8001a48 <__aeabi_dmul>
 8009a7a:	4a57      	ldr	r2, [pc, #348]	; (8009bd8 <__ieee754_pow+0x634>)
 8009a7c:	0004      	movs	r4, r0
 8009a7e:	000d      	movs	r5, r1
 8009a80:	9800      	ldr	r0, [sp, #0]
 8009a82:	9901      	ldr	r1, [sp, #4]
 8009a84:	4b55      	ldr	r3, [pc, #340]	; (8009bdc <__ieee754_pow+0x638>)
 8009a86:	f7f7 ffdf 	bl	8001a48 <__aeabi_dmul>
 8009a8a:	0002      	movs	r2, r0
 8009a8c:	000b      	movs	r3, r1
 8009a8e:	0020      	movs	r0, r4
 8009a90:	0029      	movs	r1, r5
 8009a92:	f7f7 f8b3 	bl	8000bfc <__aeabi_dadd>
 8009a96:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8009a98:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8009a9a:	f7f7 f8af 	bl	8000bfc <__aeabi_dadd>
 8009a9e:	9006      	str	r0, [sp, #24]
 8009aa0:	9107      	str	r1, [sp, #28]
 8009aa2:	4640      	mov	r0, r8
 8009aa4:	f7f8 fd8a 	bl	80025bc <__aeabi_i2d>
 8009aa8:	9a06      	ldr	r2, [sp, #24]
 8009aaa:	9b07      	ldr	r3, [sp, #28]
 8009aac:	0004      	movs	r4, r0
 8009aae:	000d      	movs	r5, r1
 8009ab0:	9802      	ldr	r0, [sp, #8]
 8009ab2:	9903      	ldr	r1, [sp, #12]
 8009ab4:	f7f7 f8a2 	bl	8000bfc <__aeabi_dadd>
 8009ab8:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8009aba:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8009abc:	f7f7 f89e 	bl	8000bfc <__aeabi_dadd>
 8009ac0:	0022      	movs	r2, r4
 8009ac2:	002b      	movs	r3, r5
 8009ac4:	f7f7 f89a 	bl	8000bfc <__aeabi_dadd>
 8009ac8:	2000      	movs	r0, #0
 8009aca:	0022      	movs	r2, r4
 8009acc:	002b      	movs	r3, r5
 8009ace:	9000      	str	r0, [sp, #0]
 8009ad0:	9101      	str	r1, [sp, #4]
 8009ad2:	f7f8 fa2b 	bl	8001f2c <__aeabi_dsub>
 8009ad6:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8009ad8:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8009ada:	f7f8 fa27 	bl	8001f2c <__aeabi_dsub>
 8009ade:	9a02      	ldr	r2, [sp, #8]
 8009ae0:	9b03      	ldr	r3, [sp, #12]
 8009ae2:	f7f8 fa23 	bl	8001f2c <__aeabi_dsub>
 8009ae6:	0002      	movs	r2, r0
 8009ae8:	000b      	movs	r3, r1
 8009aea:	9806      	ldr	r0, [sp, #24]
 8009aec:	9907      	ldr	r1, [sp, #28]
 8009aee:	f7f8 fa1d 	bl	8001f2c <__aeabi_dsub>
 8009af2:	9006      	str	r0, [sp, #24]
 8009af4:	9107      	str	r1, [sp, #28]
 8009af6:	464a      	mov	r2, r9
 8009af8:	9b04      	ldr	r3, [sp, #16]
 8009afa:	3b01      	subs	r3, #1
 8009afc:	4313      	orrs	r3, r2
 8009afe:	d100      	bne.n	8009b02 <__ieee754_pow+0x55e>
 8009b00:	e188      	b.n	8009e14 <__ieee754_pow+0x870>
 8009b02:	2300      	movs	r3, #0
 8009b04:	4c21      	ldr	r4, [pc, #132]	; (8009b8c <__ieee754_pow+0x5e8>)
 8009b06:	9302      	str	r3, [sp, #8]
 8009b08:	9403      	str	r4, [sp, #12]
 8009b0a:	2200      	movs	r2, #0
 8009b0c:	003b      	movs	r3, r7
 8009b0e:	0030      	movs	r0, r6
 8009b10:	0039      	movs	r1, r7
 8009b12:	0014      	movs	r4, r2
 8009b14:	f7f8 fa0a 	bl	8001f2c <__aeabi_dsub>
 8009b18:	9a00      	ldr	r2, [sp, #0]
 8009b1a:	9b01      	ldr	r3, [sp, #4]
 8009b1c:	f7f7 ff94 	bl	8001a48 <__aeabi_dmul>
 8009b20:	0032      	movs	r2, r6
 8009b22:	003b      	movs	r3, r7
 8009b24:	9004      	str	r0, [sp, #16]
 8009b26:	9105      	str	r1, [sp, #20]
 8009b28:	9806      	ldr	r0, [sp, #24]
 8009b2a:	9907      	ldr	r1, [sp, #28]
 8009b2c:	f7f7 ff8c 	bl	8001a48 <__aeabi_dmul>
 8009b30:	0002      	movs	r2, r0
 8009b32:	000b      	movs	r3, r1
 8009b34:	9804      	ldr	r0, [sp, #16]
 8009b36:	9905      	ldr	r1, [sp, #20]
 8009b38:	f7f7 f860 	bl	8000bfc <__aeabi_dadd>
 8009b3c:	003d      	movs	r5, r7
 8009b3e:	0006      	movs	r6, r0
 8009b40:	000f      	movs	r7, r1
 8009b42:	9800      	ldr	r0, [sp, #0]
 8009b44:	9901      	ldr	r1, [sp, #4]
 8009b46:	0022      	movs	r2, r4
 8009b48:	002b      	movs	r3, r5
 8009b4a:	9604      	str	r6, [sp, #16]
 8009b4c:	9705      	str	r7, [sp, #20]
 8009b4e:	f7f7 ff7b 	bl	8001a48 <__aeabi_dmul>
 8009b52:	0002      	movs	r2, r0
 8009b54:	000b      	movs	r3, r1
 8009b56:	0030      	movs	r0, r6
 8009b58:	0039      	movs	r1, r7
 8009b5a:	9200      	str	r2, [sp, #0]
 8009b5c:	9301      	str	r3, [sp, #4]
 8009b5e:	f7f7 f84d 	bl	8000bfc <__aeabi_dadd>
 8009b62:	4b1f      	ldr	r3, [pc, #124]	; (8009be0 <__ieee754_pow+0x63c>)
 8009b64:	0004      	movs	r4, r0
 8009b66:	000d      	movs	r5, r1
 8009b68:	468b      	mov	fp, r1
 8009b6a:	0002      	movs	r2, r0
 8009b6c:	4299      	cmp	r1, r3
 8009b6e:	dc00      	bgt.n	8009b72 <__ieee754_pow+0x5ce>
 8009b70:	e155      	b.n	8009e1e <__ieee754_pow+0x87a>
 8009b72:	4b1c      	ldr	r3, [pc, #112]	; (8009be4 <__ieee754_pow+0x640>)
 8009b74:	18cb      	adds	r3, r1, r3
 8009b76:	4303      	orrs	r3, r0
 8009b78:	d000      	beq.n	8009b7c <__ieee754_pow+0x5d8>
 8009b7a:	e1fb      	b.n	8009f74 <__ieee754_pow+0x9d0>
 8009b7c:	e034      	b.n	8009be8 <__ieee754_pow+0x644>
 8009b7e:	46c0      	nop			; (mov r8, r8)
 8009b80:	000fffff 	.word	0x000fffff
 8009b84:	43400000 	.word	0x43400000
 8009b88:	fffffc01 	.word	0xfffffc01
 8009b8c:	3ff00000 	.word	0x3ff00000
 8009b90:	0003988e 	.word	0x0003988e
 8009b94:	000bb679 	.word	0x000bb679
 8009b98:	fff00000 	.word	0xfff00000
 8009b9c:	4a454eef 	.word	0x4a454eef
 8009ba0:	3fca7e28 	.word	0x3fca7e28
 8009ba4:	93c9db65 	.word	0x93c9db65
 8009ba8:	3fcd864a 	.word	0x3fcd864a
 8009bac:	a91d4101 	.word	0xa91d4101
 8009bb0:	3fd17460 	.word	0x3fd17460
 8009bb4:	518f264d 	.word	0x518f264d
 8009bb8:	3fd55555 	.word	0x3fd55555
 8009bbc:	db6fabff 	.word	0xdb6fabff
 8009bc0:	3fdb6db6 	.word	0x3fdb6db6
 8009bc4:	33333303 	.word	0x33333303
 8009bc8:	3fe33333 	.word	0x3fe33333
 8009bcc:	40080000 	.word	0x40080000
 8009bd0:	3feec709 	.word	0x3feec709
 8009bd4:	dc3a03fd 	.word	0xdc3a03fd
 8009bd8:	145b01f5 	.word	0x145b01f5
 8009bdc:	be3e2fe0 	.word	0xbe3e2fe0
 8009be0:	408fffff 	.word	0x408fffff
 8009be4:	bf700000 	.word	0xbf700000
 8009be8:	9804      	ldr	r0, [sp, #16]
 8009bea:	9905      	ldr	r1, [sp, #20]
 8009bec:	4ae8      	ldr	r2, [pc, #928]	; (8009f90 <__ieee754_pow+0x9ec>)
 8009bee:	4be9      	ldr	r3, [pc, #932]	; (8009f94 <__ieee754_pow+0x9f0>)
 8009bf0:	f7f7 f804 	bl	8000bfc <__aeabi_dadd>
 8009bf4:	9a00      	ldr	r2, [sp, #0]
 8009bf6:	9b01      	ldr	r3, [sp, #4]
 8009bf8:	0006      	movs	r6, r0
 8009bfa:	000f      	movs	r7, r1
 8009bfc:	0020      	movs	r0, r4
 8009bfe:	0029      	movs	r1, r5
 8009c00:	f7f8 f994 	bl	8001f2c <__aeabi_dsub>
 8009c04:	0002      	movs	r2, r0
 8009c06:	000b      	movs	r3, r1
 8009c08:	0030      	movs	r0, r6
 8009c0a:	0039      	movs	r1, r7
 8009c0c:	f7f6 fb32 	bl	8000274 <__aeabi_dcmpgt>
 8009c10:	46aa      	mov	sl, r5
 8009c12:	2800      	cmp	r0, #0
 8009c14:	d000      	beq.n	8009c18 <__ieee754_pow+0x674>
 8009c16:	e1ad      	b.n	8009f74 <__ieee754_pow+0x9d0>
 8009c18:	2480      	movs	r4, #128	; 0x80
 8009c1a:	4adf      	ldr	r2, [pc, #892]	; (8009f98 <__ieee754_pow+0x9f4>)
 8009c1c:	4653      	mov	r3, sl
 8009c1e:	4694      	mov	ip, r2
 8009c20:	0364      	lsls	r4, r4, #13
 8009c22:	0022      	movs	r2, r4
 8009c24:	151b      	asrs	r3, r3, #20
 8009c26:	4463      	add	r3, ip
 8009c28:	411a      	asrs	r2, r3
 8009c2a:	0013      	movs	r3, r2
 8009c2c:	49db      	ldr	r1, [pc, #876]	; (8009f9c <__ieee754_pow+0x9f8>)
 8009c2e:	445b      	add	r3, fp
 8009c30:	005a      	lsls	r2, r3, #1
 8009c32:	001e      	movs	r6, r3
 8009c34:	031b      	lsls	r3, r3, #12
 8009c36:	468c      	mov	ip, r1
 8009c38:	0b1b      	lsrs	r3, r3, #12
 8009c3a:	4323      	orrs	r3, r4
 8009c3c:	2414      	movs	r4, #20
 8009c3e:	0d52      	lsrs	r2, r2, #21
 8009c40:	4dd7      	ldr	r5, [pc, #860]	; (8009fa0 <__ieee754_pow+0x9fc>)
 8009c42:	4462      	add	r2, ip
 8009c44:	4115      	asrs	r5, r2
 8009c46:	1aa2      	subs	r2, r4, r2
 8009c48:	4113      	asrs	r3, r2
 8009c4a:	4699      	mov	r9, r3
 8009c4c:	465b      	mov	r3, fp
 8009c4e:	43ae      	bics	r6, r5
 8009c50:	2000      	movs	r0, #0
 8009c52:	0031      	movs	r1, r6
 8009c54:	2b00      	cmp	r3, #0
 8009c56:	da02      	bge.n	8009c5e <__ieee754_pow+0x6ba>
 8009c58:	464b      	mov	r3, r9
 8009c5a:	425b      	negs	r3, r3
 8009c5c:	4699      	mov	r9, r3
 8009c5e:	0002      	movs	r2, r0
 8009c60:	000b      	movs	r3, r1
 8009c62:	9800      	ldr	r0, [sp, #0]
 8009c64:	9901      	ldr	r1, [sp, #4]
 8009c66:	f7f8 f961 	bl	8001f2c <__aeabi_dsub>
 8009c6a:	464b      	mov	r3, r9
 8009c6c:	051b      	lsls	r3, r3, #20
 8009c6e:	9000      	str	r0, [sp, #0]
 8009c70:	9101      	str	r1, [sp, #4]
 8009c72:	0002      	movs	r2, r0
 8009c74:	4698      	mov	r8, r3
 8009c76:	000b      	movs	r3, r1
 8009c78:	9804      	ldr	r0, [sp, #16]
 8009c7a:	9905      	ldr	r1, [sp, #20]
 8009c7c:	f7f6 ffbe 	bl	8000bfc <__aeabi_dadd>
 8009c80:	000d      	movs	r5, r1
 8009c82:	2400      	movs	r4, #0
 8009c84:	2200      	movs	r2, #0
 8009c86:	4bc7      	ldr	r3, [pc, #796]	; (8009fa4 <__ieee754_pow+0xa00>)
 8009c88:	0020      	movs	r0, r4
 8009c8a:	0029      	movs	r1, r5
 8009c8c:	f7f7 fedc 	bl	8001a48 <__aeabi_dmul>
 8009c90:	9a00      	ldr	r2, [sp, #0]
 8009c92:	9b01      	ldr	r3, [sp, #4]
 8009c94:	9006      	str	r0, [sp, #24]
 8009c96:	9107      	str	r1, [sp, #28]
 8009c98:	0020      	movs	r0, r4
 8009c9a:	0029      	movs	r1, r5
 8009c9c:	f7f8 f946 	bl	8001f2c <__aeabi_dsub>
 8009ca0:	0002      	movs	r2, r0
 8009ca2:	000b      	movs	r3, r1
 8009ca4:	9804      	ldr	r0, [sp, #16]
 8009ca6:	9905      	ldr	r1, [sp, #20]
 8009ca8:	f7f8 f940 	bl	8001f2c <__aeabi_dsub>
 8009cac:	4abe      	ldr	r2, [pc, #760]	; (8009fa8 <__ieee754_pow+0xa04>)
 8009cae:	4bbf      	ldr	r3, [pc, #764]	; (8009fac <__ieee754_pow+0xa08>)
 8009cb0:	f7f7 feca 	bl	8001a48 <__aeabi_dmul>
 8009cb4:	4abe      	ldr	r2, [pc, #760]	; (8009fb0 <__ieee754_pow+0xa0c>)
 8009cb6:	0006      	movs	r6, r0
 8009cb8:	000f      	movs	r7, r1
 8009cba:	4bbe      	ldr	r3, [pc, #760]	; (8009fb4 <__ieee754_pow+0xa10>)
 8009cbc:	0020      	movs	r0, r4
 8009cbe:	0029      	movs	r1, r5
 8009cc0:	f7f7 fec2 	bl	8001a48 <__aeabi_dmul>
 8009cc4:	0002      	movs	r2, r0
 8009cc6:	000b      	movs	r3, r1
 8009cc8:	0030      	movs	r0, r6
 8009cca:	0039      	movs	r1, r7
 8009ccc:	f7f6 ff96 	bl	8000bfc <__aeabi_dadd>
 8009cd0:	0004      	movs	r4, r0
 8009cd2:	000d      	movs	r5, r1
 8009cd4:	0002      	movs	r2, r0
 8009cd6:	000b      	movs	r3, r1
 8009cd8:	9806      	ldr	r0, [sp, #24]
 8009cda:	9907      	ldr	r1, [sp, #28]
 8009cdc:	f7f6 ff8e 	bl	8000bfc <__aeabi_dadd>
 8009ce0:	9a06      	ldr	r2, [sp, #24]
 8009ce2:	9b07      	ldr	r3, [sp, #28]
 8009ce4:	0006      	movs	r6, r0
 8009ce6:	000f      	movs	r7, r1
 8009ce8:	f7f8 f920 	bl	8001f2c <__aeabi_dsub>
 8009cec:	0002      	movs	r2, r0
 8009cee:	000b      	movs	r3, r1
 8009cf0:	0020      	movs	r0, r4
 8009cf2:	0029      	movs	r1, r5
 8009cf4:	f7f8 f91a 	bl	8001f2c <__aeabi_dsub>
 8009cf8:	0032      	movs	r2, r6
 8009cfa:	9000      	str	r0, [sp, #0]
 8009cfc:	9101      	str	r1, [sp, #4]
 8009cfe:	003b      	movs	r3, r7
 8009d00:	0030      	movs	r0, r6
 8009d02:	0039      	movs	r1, r7
 8009d04:	f7f7 fea0 	bl	8001a48 <__aeabi_dmul>
 8009d08:	0004      	movs	r4, r0
 8009d0a:	000d      	movs	r5, r1
 8009d0c:	4aaa      	ldr	r2, [pc, #680]	; (8009fb8 <__ieee754_pow+0xa14>)
 8009d0e:	4bab      	ldr	r3, [pc, #684]	; (8009fbc <__ieee754_pow+0xa18>)
 8009d10:	f7f7 fe9a 	bl	8001a48 <__aeabi_dmul>
 8009d14:	4aaa      	ldr	r2, [pc, #680]	; (8009fc0 <__ieee754_pow+0xa1c>)
 8009d16:	4bab      	ldr	r3, [pc, #684]	; (8009fc4 <__ieee754_pow+0xa20>)
 8009d18:	f7f8 f908 	bl	8001f2c <__aeabi_dsub>
 8009d1c:	0022      	movs	r2, r4
 8009d1e:	002b      	movs	r3, r5
 8009d20:	f7f7 fe92 	bl	8001a48 <__aeabi_dmul>
 8009d24:	4aa8      	ldr	r2, [pc, #672]	; (8009fc8 <__ieee754_pow+0xa24>)
 8009d26:	4ba9      	ldr	r3, [pc, #676]	; (8009fcc <__ieee754_pow+0xa28>)
 8009d28:	f7f6 ff68 	bl	8000bfc <__aeabi_dadd>
 8009d2c:	0022      	movs	r2, r4
 8009d2e:	002b      	movs	r3, r5
 8009d30:	f7f7 fe8a 	bl	8001a48 <__aeabi_dmul>
 8009d34:	4aa6      	ldr	r2, [pc, #664]	; (8009fd0 <__ieee754_pow+0xa2c>)
 8009d36:	4ba7      	ldr	r3, [pc, #668]	; (8009fd4 <__ieee754_pow+0xa30>)
 8009d38:	f7f8 f8f8 	bl	8001f2c <__aeabi_dsub>
 8009d3c:	0022      	movs	r2, r4
 8009d3e:	002b      	movs	r3, r5
 8009d40:	f7f7 fe82 	bl	8001a48 <__aeabi_dmul>
 8009d44:	4aa4      	ldr	r2, [pc, #656]	; (8009fd8 <__ieee754_pow+0xa34>)
 8009d46:	4ba5      	ldr	r3, [pc, #660]	; (8009fdc <__ieee754_pow+0xa38>)
 8009d48:	f7f6 ff58 	bl	8000bfc <__aeabi_dadd>
 8009d4c:	0022      	movs	r2, r4
 8009d4e:	002b      	movs	r3, r5
 8009d50:	f7f7 fe7a 	bl	8001a48 <__aeabi_dmul>
 8009d54:	0002      	movs	r2, r0
 8009d56:	000b      	movs	r3, r1
 8009d58:	0030      	movs	r0, r6
 8009d5a:	0039      	movs	r1, r7
 8009d5c:	f7f8 f8e6 	bl	8001f2c <__aeabi_dsub>
 8009d60:	0004      	movs	r4, r0
 8009d62:	000d      	movs	r5, r1
 8009d64:	0002      	movs	r2, r0
 8009d66:	000b      	movs	r3, r1
 8009d68:	0030      	movs	r0, r6
 8009d6a:	0039      	movs	r1, r7
 8009d6c:	f7f7 fe6c 	bl	8001a48 <__aeabi_dmul>
 8009d70:	2380      	movs	r3, #128	; 0x80
 8009d72:	9004      	str	r0, [sp, #16]
 8009d74:	9105      	str	r1, [sp, #20]
 8009d76:	2200      	movs	r2, #0
 8009d78:	05db      	lsls	r3, r3, #23
 8009d7a:	0020      	movs	r0, r4
 8009d7c:	0029      	movs	r1, r5
 8009d7e:	f7f8 f8d5 	bl	8001f2c <__aeabi_dsub>
 8009d82:	0002      	movs	r2, r0
 8009d84:	000b      	movs	r3, r1
 8009d86:	9804      	ldr	r0, [sp, #16]
 8009d88:	9905      	ldr	r1, [sp, #20]
 8009d8a:	f7f7 fa53 	bl	8001234 <__aeabi_ddiv>
 8009d8e:	9a00      	ldr	r2, [sp, #0]
 8009d90:	9b01      	ldr	r3, [sp, #4]
 8009d92:	0004      	movs	r4, r0
 8009d94:	000d      	movs	r5, r1
 8009d96:	0030      	movs	r0, r6
 8009d98:	0039      	movs	r1, r7
 8009d9a:	f7f7 fe55 	bl	8001a48 <__aeabi_dmul>
 8009d9e:	9a00      	ldr	r2, [sp, #0]
 8009da0:	9b01      	ldr	r3, [sp, #4]
 8009da2:	f7f6 ff2b 	bl	8000bfc <__aeabi_dadd>
 8009da6:	0002      	movs	r2, r0
 8009da8:	000b      	movs	r3, r1
 8009daa:	0020      	movs	r0, r4
 8009dac:	0029      	movs	r1, r5
 8009dae:	f7f8 f8bd 	bl	8001f2c <__aeabi_dsub>
 8009db2:	0032      	movs	r2, r6
 8009db4:	003b      	movs	r3, r7
 8009db6:	f7f8 f8b9 	bl	8001f2c <__aeabi_dsub>
 8009dba:	0002      	movs	r2, r0
 8009dbc:	000b      	movs	r3, r1
 8009dbe:	2000      	movs	r0, #0
 8009dc0:	4987      	ldr	r1, [pc, #540]	; (8009fe0 <__ieee754_pow+0xa3c>)
 8009dc2:	f7f8 f8b3 	bl	8001f2c <__aeabi_dsub>
 8009dc6:	4643      	mov	r3, r8
 8009dc8:	185b      	adds	r3, r3, r1
 8009dca:	151a      	asrs	r2, r3, #20
 8009dcc:	2a00      	cmp	r2, #0
 8009dce:	dc00      	bgt.n	8009dd2 <__ieee754_pow+0x82e>
 8009dd0:	e13f      	b.n	800a052 <__ieee754_pow+0xaae>
 8009dd2:	0019      	movs	r1, r3
 8009dd4:	9a02      	ldr	r2, [sp, #8]
 8009dd6:	9b03      	ldr	r3, [sp, #12]
 8009dd8:	f7f7 fe36 	bl	8001a48 <__aeabi_dmul>
 8009ddc:	9000      	str	r0, [sp, #0]
 8009dde:	9101      	str	r1, [sp, #4]
 8009de0:	f7ff fc02 	bl	80095e8 <__ieee754_pow+0x44>
 8009de4:	4653      	mov	r3, sl
 8009de6:	2b00      	cmp	r3, #0
 8009de8:	da01      	bge.n	8009dee <__ieee754_pow+0x84a>
 8009dea:	f7ff fc25 	bl	8009638 <__ieee754_pow+0x94>
 8009dee:	4658      	mov	r0, fp
 8009df0:	4651      	mov	r1, sl
 8009df2:	f000 f93d 	bl	800a070 <__ieee754_sqrt>
 8009df6:	9000      	str	r0, [sp, #0]
 8009df8:	9101      	str	r1, [sp, #4]
 8009dfa:	f7ff fbf5 	bl	80095e8 <__ieee754_pow+0x44>
 8009dfe:	4643      	mov	r3, r8
 8009e00:	2b00      	cmp	r3, #0
 8009e02:	db00      	blt.n	8009e06 <__ieee754_pow+0x862>
 8009e04:	e467      	b.n	80096d6 <__ieee754_pow+0x132>
 8009e06:	2380      	movs	r3, #128	; 0x80
 8009e08:	061b      	lsls	r3, r3, #24
 8009e0a:	18fb      	adds	r3, r7, r3
 8009e0c:	9600      	str	r6, [sp, #0]
 8009e0e:	9301      	str	r3, [sp, #4]
 8009e10:	f7ff fbea 	bl	80095e8 <__ieee754_pow+0x44>
 8009e14:	2300      	movs	r3, #0
 8009e16:	4c73      	ldr	r4, [pc, #460]	; (8009fe4 <__ieee754_pow+0xa40>)
 8009e18:	9302      	str	r3, [sp, #8]
 8009e1a:	9403      	str	r4, [sp, #12]
 8009e1c:	e675      	b.n	8009b0a <__ieee754_pow+0x566>
 8009e1e:	004b      	lsls	r3, r1, #1
 8009e20:	085b      	lsrs	r3, r3, #1
 8009e22:	469a      	mov	sl, r3
 8009e24:	4b70      	ldr	r3, [pc, #448]	; (8009fe8 <__ieee754_pow+0xa44>)
 8009e26:	459a      	cmp	sl, r3
 8009e28:	dc00      	bgt.n	8009e2c <__ieee754_pow+0x888>
 8009e2a:	e0f9      	b.n	800a020 <__ieee754_pow+0xa7c>
 8009e2c:	4b6f      	ldr	r3, [pc, #444]	; (8009fec <__ieee754_pow+0xa48>)
 8009e2e:	445b      	add	r3, fp
 8009e30:	431a      	orrs	r2, r3
 8009e32:	d10a      	bne.n	8009e4a <__ieee754_pow+0x8a6>
 8009e34:	9a00      	ldr	r2, [sp, #0]
 8009e36:	9b01      	ldr	r3, [sp, #4]
 8009e38:	f7f8 f878 	bl	8001f2c <__aeabi_dsub>
 8009e3c:	9a04      	ldr	r2, [sp, #16]
 8009e3e:	9b05      	ldr	r3, [sp, #20]
 8009e40:	f7f6 fa22 	bl	8000288 <__aeabi_dcmpge>
 8009e44:	2800      	cmp	r0, #0
 8009e46:	d100      	bne.n	8009e4a <__ieee754_pow+0x8a6>
 8009e48:	e6e6      	b.n	8009c18 <__ieee754_pow+0x674>
 8009e4a:	9802      	ldr	r0, [sp, #8]
 8009e4c:	9903      	ldr	r1, [sp, #12]
 8009e4e:	4a68      	ldr	r2, [pc, #416]	; (8009ff0 <__ieee754_pow+0xa4c>)
 8009e50:	4b68      	ldr	r3, [pc, #416]	; (8009ff4 <__ieee754_pow+0xa50>)
 8009e52:	f7f7 fdf9 	bl	8001a48 <__aeabi_dmul>
 8009e56:	4a66      	ldr	r2, [pc, #408]	; (8009ff0 <__ieee754_pow+0xa4c>)
 8009e58:	4b66      	ldr	r3, [pc, #408]	; (8009ff4 <__ieee754_pow+0xa50>)
 8009e5a:	f7f7 fdf5 	bl	8001a48 <__aeabi_dmul>
 8009e5e:	9000      	str	r0, [sp, #0]
 8009e60:	9101      	str	r1, [sp, #4]
 8009e62:	f7ff fbc1 	bl	80095e8 <__ieee754_pow+0x44>
 8009e66:	2a00      	cmp	r2, #0
 8009e68:	d001      	beq.n	8009e6e <__ieee754_pow+0x8ca>
 8009e6a:	f7ff fbe5 	bl	8009638 <__ieee754_pow+0x94>
 8009e6e:	3214      	adds	r2, #20
 8009e70:	1ad3      	subs	r3, r2, r3
 8009e72:	0022      	movs	r2, r4
 8009e74:	411a      	asrs	r2, r3
 8009e76:	0011      	movs	r1, r2
 8009e78:	4099      	lsls	r1, r3
 8009e7a:	42a1      	cmp	r1, r4
 8009e7c:	d001      	beq.n	8009e82 <__ieee754_pow+0x8de>
 8009e7e:	f7ff fbcd 	bl	800961c <__ieee754_pow+0x78>
 8009e82:	2301      	movs	r3, #1
 8009e84:	401a      	ands	r2, r3
 8009e86:	18db      	adds	r3, r3, r3
 8009e88:	1a9b      	subs	r3, r3, r2
 8009e8a:	9304      	str	r3, [sp, #16]
 8009e8c:	f7ff fbc6 	bl	800961c <__ieee754_pow+0x78>
 8009e90:	4643      	mov	r3, r8
 8009e92:	2b00      	cmp	r3, #0
 8009e94:	db01      	blt.n	8009e9a <__ieee754_pow+0x8f6>
 8009e96:	f7ff fc1e 	bl	80096d6 <__ieee754_pow+0x132>
 8009e9a:	f7ff fbf8 	bl	800968e <__ieee754_pow+0xea>
 8009e9e:	4b56      	ldr	r3, [pc, #344]	; (8009ff8 <__ieee754_pow+0xa54>)
 8009ea0:	429d      	cmp	r5, r3
 8009ea2:	ddf5      	ble.n	8009e90 <__ieee754_pow+0x8ec>
 8009ea4:	4b4e      	ldr	r3, [pc, #312]	; (8009fe0 <__ieee754_pow+0xa3c>)
 8009ea6:	429d      	cmp	r5, r3
 8009ea8:	dd01      	ble.n	8009eae <__ieee754_pow+0x90a>
 8009eaa:	f7ff fbed 	bl	8009688 <__ieee754_pow+0xe4>
 8009eae:	9800      	ldr	r0, [sp, #0]
 8009eb0:	9901      	ldr	r1, [sp, #4]
 8009eb2:	2200      	movs	r2, #0
 8009eb4:	4b4a      	ldr	r3, [pc, #296]	; (8009fe0 <__ieee754_pow+0xa3c>)
 8009eb6:	f7f8 f839 	bl	8001f2c <__aeabi_dsub>
 8009eba:	22c0      	movs	r2, #192	; 0xc0
 8009ebc:	4b4f      	ldr	r3, [pc, #316]	; (8009ffc <__ieee754_pow+0xa58>)
 8009ebe:	05d2      	lsls	r2, r2, #23
 8009ec0:	0004      	movs	r4, r0
 8009ec2:	000d      	movs	r5, r1
 8009ec4:	f7f7 fdc0 	bl	8001a48 <__aeabi_dmul>
 8009ec8:	4a4d      	ldr	r2, [pc, #308]	; (800a000 <__ieee754_pow+0xa5c>)
 8009eca:	9002      	str	r0, [sp, #8]
 8009ecc:	9103      	str	r1, [sp, #12]
 8009ece:	4b4d      	ldr	r3, [pc, #308]	; (800a004 <__ieee754_pow+0xa60>)
 8009ed0:	0020      	movs	r0, r4
 8009ed2:	0029      	movs	r1, r5
 8009ed4:	f7f7 fdb8 	bl	8001a48 <__aeabi_dmul>
 8009ed8:	2200      	movs	r2, #0
 8009eda:	9000      	str	r0, [sp, #0]
 8009edc:	9101      	str	r1, [sp, #4]
 8009ede:	4b4a      	ldr	r3, [pc, #296]	; (800a008 <__ieee754_pow+0xa64>)
 8009ee0:	0020      	movs	r0, r4
 8009ee2:	0029      	movs	r1, r5
 8009ee4:	f7f7 fdb0 	bl	8001a48 <__aeabi_dmul>
 8009ee8:	0002      	movs	r2, r0
 8009eea:	000b      	movs	r3, r1
 8009eec:	4847      	ldr	r0, [pc, #284]	; (800a00c <__ieee754_pow+0xa68>)
 8009eee:	4948      	ldr	r1, [pc, #288]	; (800a010 <__ieee754_pow+0xa6c>)
 8009ef0:	f7f8 f81c 	bl	8001f2c <__aeabi_dsub>
 8009ef4:	0022      	movs	r2, r4
 8009ef6:	002b      	movs	r3, r5
 8009ef8:	f7f7 fda6 	bl	8001a48 <__aeabi_dmul>
 8009efc:	0002      	movs	r2, r0
 8009efe:	000b      	movs	r3, r1
 8009f00:	2000      	movs	r0, #0
 8009f02:	4944      	ldr	r1, [pc, #272]	; (800a014 <__ieee754_pow+0xa70>)
 8009f04:	f7f8 f812 	bl	8001f2c <__aeabi_dsub>
 8009f08:	0022      	movs	r2, r4
 8009f0a:	9006      	str	r0, [sp, #24]
 8009f0c:	9107      	str	r1, [sp, #28]
 8009f0e:	002b      	movs	r3, r5
 8009f10:	0020      	movs	r0, r4
 8009f12:	0029      	movs	r1, r5
 8009f14:	f7f7 fd98 	bl	8001a48 <__aeabi_dmul>
 8009f18:	0002      	movs	r2, r0
 8009f1a:	000b      	movs	r3, r1
 8009f1c:	9806      	ldr	r0, [sp, #24]
 8009f1e:	9907      	ldr	r1, [sp, #28]
 8009f20:	f7f7 fd92 	bl	8001a48 <__aeabi_dmul>
 8009f24:	4a1a      	ldr	r2, [pc, #104]	; (8009f90 <__ieee754_pow+0x9ec>)
 8009f26:	4b35      	ldr	r3, [pc, #212]	; (8009ffc <__ieee754_pow+0xa58>)
 8009f28:	f7f7 fd8e 	bl	8001a48 <__aeabi_dmul>
 8009f2c:	0002      	movs	r2, r0
 8009f2e:	000b      	movs	r3, r1
 8009f30:	9800      	ldr	r0, [sp, #0]
 8009f32:	9901      	ldr	r1, [sp, #4]
 8009f34:	f7f7 fffa 	bl	8001f2c <__aeabi_dsub>
 8009f38:	0002      	movs	r2, r0
 8009f3a:	000b      	movs	r3, r1
 8009f3c:	0004      	movs	r4, r0
 8009f3e:	000d      	movs	r5, r1
 8009f40:	9802      	ldr	r0, [sp, #8]
 8009f42:	9903      	ldr	r1, [sp, #12]
 8009f44:	f7f6 fe5a 	bl	8000bfc <__aeabi_dadd>
 8009f48:	9a02      	ldr	r2, [sp, #8]
 8009f4a:	9b03      	ldr	r3, [sp, #12]
 8009f4c:	2000      	movs	r0, #0
 8009f4e:	9000      	str	r0, [sp, #0]
 8009f50:	9101      	str	r1, [sp, #4]
 8009f52:	f7f7 ffeb 	bl	8001f2c <__aeabi_dsub>
 8009f56:	0002      	movs	r2, r0
 8009f58:	000b      	movs	r3, r1
 8009f5a:	0020      	movs	r0, r4
 8009f5c:	0029      	movs	r1, r5
 8009f5e:	f7f7 ffe5 	bl	8001f2c <__aeabi_dsub>
 8009f62:	9006      	str	r0, [sp, #24]
 8009f64:	9107      	str	r1, [sp, #28]
 8009f66:	e5c6      	b.n	8009af6 <__ieee754_pow+0x552>
 8009f68:	9800      	ldr	r0, [sp, #0]
 8009f6a:	9901      	ldr	r1, [sp, #4]
 8009f6c:	0002      	movs	r2, r0
 8009f6e:	000b      	movs	r3, r1
 8009f70:	f7ff fc11 	bl	8009796 <__ieee754_pow+0x1f2>
 8009f74:	4a28      	ldr	r2, [pc, #160]	; (800a018 <__ieee754_pow+0xa74>)
 8009f76:	4b29      	ldr	r3, [pc, #164]	; (800a01c <__ieee754_pow+0xa78>)
 8009f78:	9802      	ldr	r0, [sp, #8]
 8009f7a:	9903      	ldr	r1, [sp, #12]
 8009f7c:	f7f7 fd64 	bl	8001a48 <__aeabi_dmul>
 8009f80:	4a25      	ldr	r2, [pc, #148]	; (800a018 <__ieee754_pow+0xa74>)
 8009f82:	4b26      	ldr	r3, [pc, #152]	; (800a01c <__ieee754_pow+0xa78>)
 8009f84:	f7f7 fd60 	bl	8001a48 <__aeabi_dmul>
 8009f88:	9000      	str	r0, [sp, #0]
 8009f8a:	9101      	str	r1, [sp, #4]
 8009f8c:	f7ff fb2c 	bl	80095e8 <__ieee754_pow+0x44>
 8009f90:	652b82fe 	.word	0x652b82fe
 8009f94:	3c971547 	.word	0x3c971547
 8009f98:	fffffc02 	.word	0xfffffc02
 8009f9c:	fffffc01 	.word	0xfffffc01
 8009fa0:	000fffff 	.word	0x000fffff
 8009fa4:	3fe62e43 	.word	0x3fe62e43
 8009fa8:	fefa39ef 	.word	0xfefa39ef
 8009fac:	3fe62e42 	.word	0x3fe62e42
 8009fb0:	0ca86c39 	.word	0x0ca86c39
 8009fb4:	be205c61 	.word	0xbe205c61
 8009fb8:	72bea4d0 	.word	0x72bea4d0
 8009fbc:	3e663769 	.word	0x3e663769
 8009fc0:	c5d26bf1 	.word	0xc5d26bf1
 8009fc4:	3ebbbd41 	.word	0x3ebbbd41
 8009fc8:	af25de2c 	.word	0xaf25de2c
 8009fcc:	3f11566a 	.word	0x3f11566a
 8009fd0:	16bebd93 	.word	0x16bebd93
 8009fd4:	3f66c16c 	.word	0x3f66c16c
 8009fd8:	5555553e 	.word	0x5555553e
 8009fdc:	3fc55555 	.word	0x3fc55555
 8009fe0:	3ff00000 	.word	0x3ff00000
 8009fe4:	bff00000 	.word	0xbff00000
 8009fe8:	4090cbff 	.word	0x4090cbff
 8009fec:	3f6f3400 	.word	0x3f6f3400
 8009ff0:	c2f8f359 	.word	0xc2f8f359
 8009ff4:	01a56e1f 	.word	0x01a56e1f
 8009ff8:	3feffffe 	.word	0x3feffffe
 8009ffc:	3ff71547 	.word	0x3ff71547
 800a000:	f85ddf44 	.word	0xf85ddf44
 800a004:	3e54ae0b 	.word	0x3e54ae0b
 800a008:	3fd00000 	.word	0x3fd00000
 800a00c:	55555555 	.word	0x55555555
 800a010:	3fd55555 	.word	0x3fd55555
 800a014:	3fe00000 	.word	0x3fe00000
 800a018:	8800759c 	.word	0x8800759c
 800a01c:	7e37e43c 	.word	0x7e37e43c
 800a020:	2200      	movs	r2, #0
 800a022:	4b0e      	ldr	r3, [pc, #56]	; (800a05c <__ieee754_pow+0xab8>)
 800a024:	4690      	mov	r8, r2
 800a026:	4691      	mov	r9, r2
 800a028:	459a      	cmp	sl, r3
 800a02a:	dc00      	bgt.n	800a02e <__ieee754_pow+0xa8a>
 800a02c:	e629      	b.n	8009c82 <__ieee754_pow+0x6de>
 800a02e:	e5f3      	b.n	8009c18 <__ieee754_pow+0x674>
 800a030:	2280      	movs	r2, #128	; 0x80
 800a032:	4b0b      	ldr	r3, [pc, #44]	; (800a060 <__ieee754_pow+0xabc>)
 800a034:	05d2      	lsls	r2, r2, #23
 800a036:	920e      	str	r2, [sp, #56]	; 0x38
 800a038:	930f      	str	r3, [sp, #60]	; 0x3c
 800a03a:	4a0a      	ldr	r2, [pc, #40]	; (800a064 <__ieee754_pow+0xac0>)
 800a03c:	4b0a      	ldr	r3, [pc, #40]	; (800a068 <__ieee754_pow+0xac4>)
 800a03e:	2580      	movs	r5, #128	; 0x80
 800a040:	9210      	str	r2, [sp, #64]	; 0x40
 800a042:	9311      	str	r3, [sp, #68]	; 0x44
 800a044:	2200      	movs	r2, #0
 800a046:	4b09      	ldr	r3, [pc, #36]	; (800a06c <__ieee754_pow+0xac8>)
 800a048:	02ed      	lsls	r5, r5, #11
 800a04a:	9206      	str	r2, [sp, #24]
 800a04c:	9307      	str	r3, [sp, #28]
 800a04e:	f7ff fbff 	bl	8009850 <__ieee754_pow+0x2ac>
 800a052:	464a      	mov	r2, r9
 800a054:	f000 f98a 	bl	800a36c <scalbn>
 800a058:	e6bc      	b.n	8009dd4 <__ieee754_pow+0x830>
 800a05a:	46c0      	nop			; (mov r8, r8)
 800a05c:	3fe00000 	.word	0x3fe00000
 800a060:	3fe2b803 	.word	0x3fe2b803
 800a064:	43cfd006 	.word	0x43cfd006
 800a068:	3e4cfdeb 	.word	0x3e4cfdeb
 800a06c:	3ff80000 	.word	0x3ff80000

0800a070 <__ieee754_sqrt>:
 800a070:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a072:	4647      	mov	r7, r8
 800a074:	46ce      	mov	lr, r9
 800a076:	4b67      	ldr	r3, [pc, #412]	; (800a214 <__ieee754_sqrt+0x1a4>)
 800a078:	b580      	push	{r7, lr}
 800a07a:	000a      	movs	r2, r1
 800a07c:	000f      	movs	r7, r1
 800a07e:	0019      	movs	r1, r3
 800a080:	0005      	movs	r5, r0
 800a082:	4039      	ands	r1, r7
 800a084:	4299      	cmp	r1, r3
 800a086:	d100      	bne.n	800a08a <__ieee754_sqrt+0x1a>
 800a088:	e09b      	b.n	800a1c2 <__ieee754_sqrt+0x152>
 800a08a:	0004      	movs	r4, r0
 800a08c:	0001      	movs	r1, r0
 800a08e:	2f00      	cmp	r7, #0
 800a090:	dd69      	ble.n	800a166 <__ieee754_sqrt+0xf6>
 800a092:	153f      	asrs	r7, r7, #20
 800a094:	d100      	bne.n	800a098 <__ieee754_sqrt+0x28>
 800a096:	e0b4      	b.n	800a202 <__ieee754_sqrt+0x192>
 800a098:	4b5f      	ldr	r3, [pc, #380]	; (800a218 <__ieee754_sqrt+0x1a8>)
 800a09a:	0312      	lsls	r2, r2, #12
 800a09c:	469c      	mov	ip, r3
 800a09e:	2380      	movs	r3, #128	; 0x80
 800a0a0:	0b12      	lsrs	r2, r2, #12
 800a0a2:	035b      	lsls	r3, r3, #13
 800a0a4:	4313      	orrs	r3, r2
 800a0a6:	005b      	lsls	r3, r3, #1
 800a0a8:	0fca      	lsrs	r2, r1, #31
 800a0aa:	4467      	add	r7, ip
 800a0ac:	189b      	adds	r3, r3, r2
 800a0ae:	004a      	lsls	r2, r1, #1
 800a0b0:	07f8      	lsls	r0, r7, #31
 800a0b2:	d503      	bpl.n	800a0bc <__ieee754_sqrt+0x4c>
 800a0b4:	0fd2      	lsrs	r2, r2, #31
 800a0b6:	005b      	lsls	r3, r3, #1
 800a0b8:	189b      	adds	r3, r3, r2
 800a0ba:	008a      	lsls	r2, r1, #2
 800a0bc:	1079      	asrs	r1, r7, #1
 800a0be:	468c      	mov	ip, r1
 800a0c0:	2100      	movs	r1, #0
 800a0c2:	2080      	movs	r0, #128	; 0x80
 800a0c4:	2416      	movs	r4, #22
 800a0c6:	4689      	mov	r9, r1
 800a0c8:	0380      	lsls	r0, r0, #14
 800a0ca:	180d      	adds	r5, r1, r0
 800a0cc:	429d      	cmp	r5, r3
 800a0ce:	dc02      	bgt.n	800a0d6 <__ieee754_sqrt+0x66>
 800a0d0:	1829      	adds	r1, r5, r0
 800a0d2:	1b5b      	subs	r3, r3, r5
 800a0d4:	4481      	add	r9, r0
 800a0d6:	0fd5      	lsrs	r5, r2, #31
 800a0d8:	005b      	lsls	r3, r3, #1
 800a0da:	3c01      	subs	r4, #1
 800a0dc:	195b      	adds	r3, r3, r5
 800a0de:	0052      	lsls	r2, r2, #1
 800a0e0:	0840      	lsrs	r0, r0, #1
 800a0e2:	2c00      	cmp	r4, #0
 800a0e4:	d1f1      	bne.n	800a0ca <__ieee754_sqrt+0x5a>
 800a0e6:	2000      	movs	r0, #0
 800a0e8:	4680      	mov	r8, r0
 800a0ea:	2080      	movs	r0, #128	; 0x80
 800a0ec:	2520      	movs	r5, #32
 800a0ee:	2700      	movs	r7, #0
 800a0f0:	0600      	lsls	r0, r0, #24
 800a0f2:	e009      	b.n	800a108 <__ieee754_sqrt+0x98>
 800a0f4:	428b      	cmp	r3, r1
 800a0f6:	d05c      	beq.n	800a1b2 <__ieee754_sqrt+0x142>
 800a0f8:	0fd4      	lsrs	r4, r2, #31
 800a0fa:	005b      	lsls	r3, r3, #1
 800a0fc:	3d01      	subs	r5, #1
 800a0fe:	18e3      	adds	r3, r4, r3
 800a100:	0052      	lsls	r2, r2, #1
 800a102:	0840      	lsrs	r0, r0, #1
 800a104:	2d00      	cmp	r5, #0
 800a106:	d016      	beq.n	800a136 <__ieee754_sqrt+0xc6>
 800a108:	19c4      	adds	r4, r0, r7
 800a10a:	428b      	cmp	r3, r1
 800a10c:	ddf2      	ble.n	800a0f4 <__ieee754_sqrt+0x84>
 800a10e:	1827      	adds	r7, r4, r0
 800a110:	000e      	movs	r6, r1
 800a112:	2c00      	cmp	r4, #0
 800a114:	db49      	blt.n	800a1aa <__ieee754_sqrt+0x13a>
 800a116:	1a5b      	subs	r3, r3, r1
 800a118:	42a2      	cmp	r2, r4
 800a11a:	4189      	sbcs	r1, r1
 800a11c:	4249      	negs	r1, r1
 800a11e:	1a5b      	subs	r3, r3, r1
 800a120:	1b12      	subs	r2, r2, r4
 800a122:	0fd4      	lsrs	r4, r2, #31
 800a124:	005b      	lsls	r3, r3, #1
 800a126:	3d01      	subs	r5, #1
 800a128:	4480      	add	r8, r0
 800a12a:	0031      	movs	r1, r6
 800a12c:	18e3      	adds	r3, r4, r3
 800a12e:	0052      	lsls	r2, r2, #1
 800a130:	0840      	lsrs	r0, r0, #1
 800a132:	2d00      	cmp	r5, #0
 800a134:	d1e8      	bne.n	800a108 <__ieee754_sqrt+0x98>
 800a136:	4313      	orrs	r3, r2
 800a138:	d14e      	bne.n	800a1d8 <__ieee754_sqrt+0x168>
 800a13a:	4643      	mov	r3, r8
 800a13c:	085b      	lsrs	r3, r3, #1
 800a13e:	4937      	ldr	r1, [pc, #220]	; (800a21c <__ieee754_sqrt+0x1ac>)
 800a140:	464a      	mov	r2, r9
 800a142:	4688      	mov	r8, r1
 800a144:	4649      	mov	r1, r9
 800a146:	1052      	asrs	r2, r2, #1
 800a148:	4442      	add	r2, r8
 800a14a:	07c9      	lsls	r1, r1, #31
 800a14c:	d502      	bpl.n	800a154 <__ieee754_sqrt+0xe4>
 800a14e:	2180      	movs	r1, #128	; 0x80
 800a150:	0609      	lsls	r1, r1, #24
 800a152:	430b      	orrs	r3, r1
 800a154:	4661      	mov	r1, ip
 800a156:	050f      	lsls	r7, r1, #20
 800a158:	18bd      	adds	r5, r7, r2
 800a15a:	0018      	movs	r0, r3
 800a15c:	0029      	movs	r1, r5
 800a15e:	bc0c      	pop	{r2, r3}
 800a160:	4690      	mov	r8, r2
 800a162:	4699      	mov	r9, r3
 800a164:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800a166:	007b      	lsls	r3, r7, #1
 800a168:	085b      	lsrs	r3, r3, #1
 800a16a:	4303      	orrs	r3, r0
 800a16c:	0039      	movs	r1, r7
 800a16e:	2b00      	cmp	r3, #0
 800a170:	d0f5      	beq.n	800a15e <__ieee754_sqrt+0xee>
 800a172:	2f00      	cmp	r7, #0
 800a174:	d13c      	bne.n	800a1f0 <__ieee754_sqrt+0x180>
 800a176:	0ae3      	lsrs	r3, r4, #11
 800a178:	3a15      	subs	r2, #21
 800a17a:	0564      	lsls	r4, r4, #21
 800a17c:	2b00      	cmp	r3, #0
 800a17e:	d0fa      	beq.n	800a176 <__ieee754_sqrt+0x106>
 800a180:	2080      	movs	r0, #128	; 0x80
 800a182:	0340      	lsls	r0, r0, #13
 800a184:	4203      	tst	r3, r0
 800a186:	d13f      	bne.n	800a208 <__ieee754_sqrt+0x198>
 800a188:	2700      	movs	r7, #0
 800a18a:	e000      	b.n	800a18e <__ieee754_sqrt+0x11e>
 800a18c:	000f      	movs	r7, r1
 800a18e:	005b      	lsls	r3, r3, #1
 800a190:	1c79      	adds	r1, r7, #1
 800a192:	4203      	tst	r3, r0
 800a194:	d0fa      	beq.n	800a18c <__ieee754_sqrt+0x11c>
 800a196:	0025      	movs	r5, r4
 800a198:	2020      	movs	r0, #32
 800a19a:	408d      	lsls	r5, r1
 800a19c:	1a40      	subs	r0, r0, r1
 800a19e:	0029      	movs	r1, r5
 800a1a0:	1bd7      	subs	r7, r2, r7
 800a1a2:	0022      	movs	r2, r4
 800a1a4:	40c2      	lsrs	r2, r0
 800a1a6:	431a      	orrs	r2, r3
 800a1a8:	e776      	b.n	800a098 <__ieee754_sqrt+0x28>
 800a1aa:	43fe      	mvns	r6, r7
 800a1ac:	0ff6      	lsrs	r6, r6, #31
 800a1ae:	198e      	adds	r6, r1, r6
 800a1b0:	e7b1      	b.n	800a116 <__ieee754_sqrt+0xa6>
 800a1b2:	4294      	cmp	r4, r2
 800a1b4:	d8a0      	bhi.n	800a0f8 <__ieee754_sqrt+0x88>
 800a1b6:	1827      	adds	r7, r4, r0
 800a1b8:	2c00      	cmp	r4, #0
 800a1ba:	dbf6      	blt.n	800a1aa <__ieee754_sqrt+0x13a>
 800a1bc:	001e      	movs	r6, r3
 800a1be:	2300      	movs	r3, #0
 800a1c0:	e7ae      	b.n	800a120 <__ieee754_sqrt+0xb0>
 800a1c2:	0002      	movs	r2, r0
 800a1c4:	003b      	movs	r3, r7
 800a1c6:	0028      	movs	r0, r5
 800a1c8:	0039      	movs	r1, r7
 800a1ca:	f7f7 fc3d 	bl	8001a48 <__aeabi_dmul>
 800a1ce:	002a      	movs	r2, r5
 800a1d0:	003b      	movs	r3, r7
 800a1d2:	f7f6 fd13 	bl	8000bfc <__aeabi_dadd>
 800a1d6:	e7c2      	b.n	800a15e <__ieee754_sqrt+0xee>
 800a1d8:	4643      	mov	r3, r8
 800a1da:	3301      	adds	r3, #1
 800a1dc:	d003      	beq.n	800a1e6 <__ieee754_sqrt+0x176>
 800a1de:	4643      	mov	r3, r8
 800a1e0:	3301      	adds	r3, #1
 800a1e2:	085b      	lsrs	r3, r3, #1
 800a1e4:	e7ab      	b.n	800a13e <__ieee754_sqrt+0xce>
 800a1e6:	2301      	movs	r3, #1
 800a1e8:	4698      	mov	r8, r3
 800a1ea:	2300      	movs	r3, #0
 800a1ec:	44c1      	add	r9, r8
 800a1ee:	e7a6      	b.n	800a13e <__ieee754_sqrt+0xce>
 800a1f0:	003b      	movs	r3, r7
 800a1f2:	0002      	movs	r2, r0
 800a1f4:	f7f7 fe9a 	bl	8001f2c <__aeabi_dsub>
 800a1f8:	0002      	movs	r2, r0
 800a1fa:	000b      	movs	r3, r1
 800a1fc:	f7f7 f81a 	bl	8001234 <__aeabi_ddiv>
 800a200:	e7ad      	b.n	800a15e <__ieee754_sqrt+0xee>
 800a202:	0013      	movs	r3, r2
 800a204:	2200      	movs	r2, #0
 800a206:	e7bb      	b.n	800a180 <__ieee754_sqrt+0x110>
 800a208:	2701      	movs	r7, #1
 800a20a:	0021      	movs	r1, r4
 800a20c:	2020      	movs	r0, #32
 800a20e:	427f      	negs	r7, r7
 800a210:	e7c6      	b.n	800a1a0 <__ieee754_sqrt+0x130>
 800a212:	46c0      	nop			; (mov r8, r8)
 800a214:	7ff00000 	.word	0x7ff00000
 800a218:	fffffc01 	.word	0xfffffc01
 800a21c:	3fe00000 	.word	0x3fe00000

0800a220 <fabs>:
 800a220:	0049      	lsls	r1, r1, #1
 800a222:	084b      	lsrs	r3, r1, #1
 800a224:	0019      	movs	r1, r3
 800a226:	4770      	bx	lr

0800a228 <finite>:
 800a228:	4b03      	ldr	r3, [pc, #12]	; (800a238 <finite+0x10>)
 800a22a:	0048      	lsls	r0, r1, #1
 800a22c:	469c      	mov	ip, r3
 800a22e:	0840      	lsrs	r0, r0, #1
 800a230:	4460      	add	r0, ip
 800a232:	0fc0      	lsrs	r0, r0, #31
 800a234:	4770      	bx	lr
 800a236:	46c0      	nop			; (mov r8, r8)
 800a238:	80100000 	.word	0x80100000

0800a23c <matherr>:
 800a23c:	2000      	movs	r0, #0
 800a23e:	4770      	bx	lr

0800a240 <nan>:
 800a240:	2000      	movs	r0, #0
 800a242:	4901      	ldr	r1, [pc, #4]	; (800a248 <nan+0x8>)
 800a244:	4770      	bx	lr
 800a246:	46c0      	nop			; (mov r8, r8)
 800a248:	7ff80000 	.word	0x7ff80000

0800a24c <rint>:
 800a24c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800a24e:	46c6      	mov	lr, r8
 800a250:	b500      	push	{lr}
 800a252:	0fcb      	lsrs	r3, r1, #31
 800a254:	4698      	mov	r8, r3
 800a256:	4a40      	ldr	r2, [pc, #256]	; (800a358 <rint+0x10c>)
 800a258:	004b      	lsls	r3, r1, #1
 800a25a:	0d5b      	lsrs	r3, r3, #21
 800a25c:	189a      	adds	r2, r3, r2
 800a25e:	b082      	sub	sp, #8
 800a260:	000d      	movs	r5, r1
 800a262:	0004      	movs	r4, r0
 800a264:	2a13      	cmp	r2, #19
 800a266:	dc2f      	bgt.n	800a2c8 <rint+0x7c>
 800a268:	2a00      	cmp	r2, #0
 800a26a:	db49      	blt.n	800a300 <rint+0xb4>
 800a26c:	4f3b      	ldr	r7, [pc, #236]	; (800a35c <rint+0x110>)
 800a26e:	4117      	asrs	r7, r2
 800a270:	003e      	movs	r6, r7
 800a272:	400e      	ands	r6, r1
 800a274:	4306      	orrs	r6, r0
 800a276:	d023      	beq.n	800a2c0 <rint+0x74>
 800a278:	087f      	lsrs	r7, r7, #1
 800a27a:	0039      	movs	r1, r7
 800a27c:	4029      	ands	r1, r5
 800a27e:	430c      	orrs	r4, r1
 800a280:	d00a      	beq.n	800a298 <rint+0x4c>
 800a282:	4937      	ldr	r1, [pc, #220]	; (800a360 <rint+0x114>)
 800a284:	43bd      	bics	r5, r7
 800a286:	468c      	mov	ip, r1
 800a288:	4463      	add	r3, ip
 800a28a:	425c      	negs	r4, r3
 800a28c:	415c      	adcs	r4, r3
 800a28e:	2380      	movs	r3, #128	; 0x80
 800a290:	02db      	lsls	r3, r3, #11
 800a292:	4113      	asrs	r3, r2
 800a294:	07e4      	lsls	r4, r4, #31
 800a296:	431d      	orrs	r5, r3
 800a298:	4641      	mov	r1, r8
 800a29a:	00ce      	lsls	r6, r1, #3
 800a29c:	4931      	ldr	r1, [pc, #196]	; (800a364 <rint+0x118>)
 800a29e:	002b      	movs	r3, r5
 800a2a0:	198e      	adds	r6, r1, r6
 800a2a2:	0022      	movs	r2, r4
 800a2a4:	6834      	ldr	r4, [r6, #0]
 800a2a6:	6875      	ldr	r5, [r6, #4]
 800a2a8:	0020      	movs	r0, r4
 800a2aa:	0029      	movs	r1, r5
 800a2ac:	f7f6 fca6 	bl	8000bfc <__aeabi_dadd>
 800a2b0:	9000      	str	r0, [sp, #0]
 800a2b2:	9101      	str	r1, [sp, #4]
 800a2b4:	9800      	ldr	r0, [sp, #0]
 800a2b6:	9901      	ldr	r1, [sp, #4]
 800a2b8:	0022      	movs	r2, r4
 800a2ba:	002b      	movs	r3, r5
 800a2bc:	f7f7 fe36 	bl	8001f2c <__aeabi_dsub>
 800a2c0:	b002      	add	sp, #8
 800a2c2:	bc04      	pop	{r2}
 800a2c4:	4690      	mov	r8, r2
 800a2c6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800a2c8:	2a33      	cmp	r2, #51	; 0x33
 800a2ca:	dd08      	ble.n	800a2de <rint+0x92>
 800a2cc:	2380      	movs	r3, #128	; 0x80
 800a2ce:	00db      	lsls	r3, r3, #3
 800a2d0:	429a      	cmp	r2, r3
 800a2d2:	d1f5      	bne.n	800a2c0 <rint+0x74>
 800a2d4:	0002      	movs	r2, r0
 800a2d6:	000b      	movs	r3, r1
 800a2d8:	f7f6 fc90 	bl	8000bfc <__aeabi_dadd>
 800a2dc:	e7f0      	b.n	800a2c0 <rint+0x74>
 800a2de:	4a22      	ldr	r2, [pc, #136]	; (800a368 <rint+0x11c>)
 800a2e0:	4694      	mov	ip, r2
 800a2e2:	2201      	movs	r2, #1
 800a2e4:	4463      	add	r3, ip
 800a2e6:	4252      	negs	r2, r2
 800a2e8:	40da      	lsrs	r2, r3
 800a2ea:	4202      	tst	r2, r0
 800a2ec:	d0e8      	beq.n	800a2c0 <rint+0x74>
 800a2ee:	0852      	lsrs	r2, r2, #1
 800a2f0:	4202      	tst	r2, r0
 800a2f2:	d0d1      	beq.n	800a298 <rint+0x4c>
 800a2f4:	4394      	bics	r4, r2
 800a2f6:	2280      	movs	r2, #128	; 0x80
 800a2f8:	05d2      	lsls	r2, r2, #23
 800a2fa:	411a      	asrs	r2, r3
 800a2fc:	4314      	orrs	r4, r2
 800a2fe:	e7cb      	b.n	800a298 <rint+0x4c>
 800a300:	004b      	lsls	r3, r1, #1
 800a302:	085b      	lsrs	r3, r3, #1
 800a304:	4303      	orrs	r3, r0
 800a306:	d0db      	beq.n	800a2c0 <rint+0x74>
 800a308:	030b      	lsls	r3, r1, #12
 800a30a:	0b1b      	lsrs	r3, r3, #12
 800a30c:	431c      	orrs	r4, r3
 800a30e:	4263      	negs	r3, r4
 800a310:	4323      	orrs	r3, r4
 800a312:	2480      	movs	r4, #128	; 0x80
 800a314:	0c4d      	lsrs	r5, r1, #17
 800a316:	0324      	lsls	r4, r4, #12
 800a318:	0b1b      	lsrs	r3, r3, #12
 800a31a:	4023      	ands	r3, r4
 800a31c:	046d      	lsls	r5, r5, #17
 800a31e:	432b      	orrs	r3, r5
 800a320:	0019      	movs	r1, r3
 800a322:	4643      	mov	r3, r8
 800a324:	00da      	lsls	r2, r3, #3
 800a326:	4b0f      	ldr	r3, [pc, #60]	; (800a364 <rint+0x118>)
 800a328:	189b      	adds	r3, r3, r2
 800a32a:	681c      	ldr	r4, [r3, #0]
 800a32c:	685d      	ldr	r5, [r3, #4]
 800a32e:	0002      	movs	r2, r0
 800a330:	000b      	movs	r3, r1
 800a332:	0020      	movs	r0, r4
 800a334:	0029      	movs	r1, r5
 800a336:	f7f6 fc61 	bl	8000bfc <__aeabi_dadd>
 800a33a:	9000      	str	r0, [sp, #0]
 800a33c:	9101      	str	r1, [sp, #4]
 800a33e:	9800      	ldr	r0, [sp, #0]
 800a340:	9901      	ldr	r1, [sp, #4]
 800a342:	0022      	movs	r2, r4
 800a344:	002b      	movs	r3, r5
 800a346:	f7f7 fdf1 	bl	8001f2c <__aeabi_dsub>
 800a34a:	4642      	mov	r2, r8
 800a34c:	004b      	lsls	r3, r1, #1
 800a34e:	085b      	lsrs	r3, r3, #1
 800a350:	07d6      	lsls	r6, r2, #31
 800a352:	4333      	orrs	r3, r6
 800a354:	0019      	movs	r1, r3
 800a356:	e7b3      	b.n	800a2c0 <rint+0x74>
 800a358:	fffffc01 	.word	0xfffffc01
 800a35c:	000fffff 	.word	0x000fffff
 800a360:	fffffbee 	.word	0xfffffbee
 800a364:	0800a5f0 	.word	0x0800a5f0
 800a368:	fffffbed 	.word	0xfffffbed

0800a36c <scalbn>:
 800a36c:	004b      	lsls	r3, r1, #1
 800a36e:	b570      	push	{r4, r5, r6, lr}
 800a370:	0d5b      	lsrs	r3, r3, #21
 800a372:	0014      	movs	r4, r2
 800a374:	000a      	movs	r2, r1
 800a376:	2b00      	cmp	r3, #0
 800a378:	d11a      	bne.n	800a3b0 <scalbn+0x44>
 800a37a:	004b      	lsls	r3, r1, #1
 800a37c:	085b      	lsrs	r3, r3, #1
 800a37e:	4303      	orrs	r3, r0
 800a380:	d015      	beq.n	800a3ae <scalbn+0x42>
 800a382:	4b23      	ldr	r3, [pc, #140]	; (800a410 <scalbn+0xa4>)
 800a384:	2200      	movs	r2, #0
 800a386:	f7f7 fb5f 	bl	8001a48 <__aeabi_dmul>
 800a38a:	4b22      	ldr	r3, [pc, #136]	; (800a414 <scalbn+0xa8>)
 800a38c:	429c      	cmp	r4, r3
 800a38e:	db2d      	blt.n	800a3ec <scalbn+0x80>
 800a390:	000a      	movs	r2, r1
 800a392:	004b      	lsls	r3, r1, #1
 800a394:	0d5b      	lsrs	r3, r3, #21
 800a396:	3b36      	subs	r3, #54	; 0x36
 800a398:	4d1f      	ldr	r5, [pc, #124]	; (800a418 <scalbn+0xac>)
 800a39a:	18e3      	adds	r3, r4, r3
 800a39c:	42ab      	cmp	r3, r5
 800a39e:	dc2a      	bgt.n	800a3f6 <scalbn+0x8a>
 800a3a0:	2b00      	cmp	r3, #0
 800a3a2:	dd0d      	ble.n	800a3c0 <scalbn+0x54>
 800a3a4:	4c1d      	ldr	r4, [pc, #116]	; (800a41c <scalbn+0xb0>)
 800a3a6:	051b      	lsls	r3, r3, #20
 800a3a8:	4022      	ands	r2, r4
 800a3aa:	431a      	orrs	r2, r3
 800a3ac:	0011      	movs	r1, r2
 800a3ae:	bd70      	pop	{r4, r5, r6, pc}
 800a3b0:	4d1b      	ldr	r5, [pc, #108]	; (800a420 <scalbn+0xb4>)
 800a3b2:	42ab      	cmp	r3, r5
 800a3b4:	d1f0      	bne.n	800a398 <scalbn+0x2c>
 800a3b6:	0002      	movs	r2, r0
 800a3b8:	000b      	movs	r3, r1
 800a3ba:	f7f6 fc1f 	bl	8000bfc <__aeabi_dadd>
 800a3be:	e7f6      	b.n	800a3ae <scalbn+0x42>
 800a3c0:	001d      	movs	r5, r3
 800a3c2:	3535      	adds	r5, #53	; 0x35
 800a3c4:	da19      	bge.n	800a3fa <scalbn+0x8e>
 800a3c6:	4b17      	ldr	r3, [pc, #92]	; (800a424 <scalbn+0xb8>)
 800a3c8:	0002      	movs	r2, r0
 800a3ca:	429c      	cmp	r4, r3
 800a3cc:	dd09      	ble.n	800a3e2 <scalbn+0x76>
 800a3ce:	000b      	movs	r3, r1
 800a3d0:	4815      	ldr	r0, [pc, #84]	; (800a428 <scalbn+0xbc>)
 800a3d2:	4916      	ldr	r1, [pc, #88]	; (800a42c <scalbn+0xc0>)
 800a3d4:	f000 f832 	bl	800a43c <copysign>
 800a3d8:	4a13      	ldr	r2, [pc, #76]	; (800a428 <scalbn+0xbc>)
 800a3da:	4b14      	ldr	r3, [pc, #80]	; (800a42c <scalbn+0xc0>)
 800a3dc:	f7f7 fb34 	bl	8001a48 <__aeabi_dmul>
 800a3e0:	e7e5      	b.n	800a3ae <scalbn+0x42>
 800a3e2:	000b      	movs	r3, r1
 800a3e4:	4812      	ldr	r0, [pc, #72]	; (800a430 <scalbn+0xc4>)
 800a3e6:	4913      	ldr	r1, [pc, #76]	; (800a434 <scalbn+0xc8>)
 800a3e8:	f000 f828 	bl	800a43c <copysign>
 800a3ec:	4a10      	ldr	r2, [pc, #64]	; (800a430 <scalbn+0xc4>)
 800a3ee:	4b11      	ldr	r3, [pc, #68]	; (800a434 <scalbn+0xc8>)
 800a3f0:	f7f7 fb2a 	bl	8001a48 <__aeabi_dmul>
 800a3f4:	e7db      	b.n	800a3ae <scalbn+0x42>
 800a3f6:	0002      	movs	r2, r0
 800a3f8:	e7e9      	b.n	800a3ce <scalbn+0x62>
 800a3fa:	4c08      	ldr	r4, [pc, #32]	; (800a41c <scalbn+0xb0>)
 800a3fc:	3336      	adds	r3, #54	; 0x36
 800a3fe:	4022      	ands	r2, r4
 800a400:	051b      	lsls	r3, r3, #20
 800a402:	4313      	orrs	r3, r2
 800a404:	0019      	movs	r1, r3
 800a406:	2200      	movs	r2, #0
 800a408:	4b0b      	ldr	r3, [pc, #44]	; (800a438 <scalbn+0xcc>)
 800a40a:	f7f7 fb1d 	bl	8001a48 <__aeabi_dmul>
 800a40e:	e7ce      	b.n	800a3ae <scalbn+0x42>
 800a410:	43500000 	.word	0x43500000
 800a414:	ffff3cb0 	.word	0xffff3cb0
 800a418:	000007fe 	.word	0x000007fe
 800a41c:	800fffff 	.word	0x800fffff
 800a420:	000007ff 	.word	0x000007ff
 800a424:	0000c350 	.word	0x0000c350
 800a428:	8800759c 	.word	0x8800759c
 800a42c:	7e37e43c 	.word	0x7e37e43c
 800a430:	c2f8f359 	.word	0xc2f8f359
 800a434:	01a56e1f 	.word	0x01a56e1f
 800a438:	3c900000 	.word	0x3c900000

0800a43c <copysign>:
 800a43c:	b530      	push	{r4, r5, lr}
 800a43e:	004a      	lsls	r2, r1, #1
 800a440:	0fdb      	lsrs	r3, r3, #31
 800a442:	07db      	lsls	r3, r3, #31
 800a444:	0852      	lsrs	r2, r2, #1
 800a446:	431a      	orrs	r2, r3
 800a448:	0011      	movs	r1, r2
 800a44a:	bd30      	pop	{r4, r5, pc}

0800a44c <__errno>:
 800a44c:	4b01      	ldr	r3, [pc, #4]	; (800a454 <__errno+0x8>)
 800a44e:	6818      	ldr	r0, [r3, #0]
 800a450:	4770      	bx	lr
 800a452:	46c0      	nop			; (mov r8, r8)
 800a454:	20000010 	.word	0x20000010

0800a458 <_init>:
 800a458:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a45a:	46c0      	nop			; (mov r8, r8)
 800a45c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800a45e:	bc08      	pop	{r3}
 800a460:	469e      	mov	lr, r3
 800a462:	4770      	bx	lr

0800a464 <_fini>:
 800a464:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a466:	46c0      	nop			; (mov r8, r8)
 800a468:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800a46a:	bc08      	pop	{r3}
 800a46c:	469e      	mov	lr, r3
 800a46e:	4770      	bx	lr
