
build/stm32f0_mpu.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00009aa4  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           000001d0  08009b68  08009b68  00019b68  2**3  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000004  08009d38  08009d38  00019d38  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08009d3c  08009d3c  00019d3c  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000074  20000000  08009d40  00020000  2**2  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000188  20000074  08009db4  00020074  2**2  ALLOC
  7 ._user_heap_stack 00000604  200001fc  08009db4  000201fc  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020074  2**0  CONTENTS, READONLY
  9 .debug_info       00008b8f  00000000  00000000  0002009c  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     0000179e  00000000  00000000  00028c2b  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        00001a54  00000000  00000000  0002a3c9  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    00000518  00000000  00000000  0002be1d  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     000004a8  00000000  00000000  0002c335  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       00001f99  00000000  00000000  0002c7dd  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        00001802  00000000  00000000  0002e776  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          0000007f  00000000  00000000  0002ff78  2**0  CONTENTS, READONLY
 17 .debug_frame      00001714  00000000  00000000  0002fff8  2**2  CONTENTS, READONLY, DEBUGGING

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
 80000dc:	20000074 	.word	0x20000074
 80000e0:	00000000 	.word	0x00000000
 80000e4:	08009b4c 	.word	0x08009b4c

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
 8000100:	20000078 	.word	0x20000078
 8000104:	08009b4c 	.word	0x08009b4c

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

08000220 <__aeabi_cfrcmple>:
 8000220:	4684      	mov	ip, r0
 8000222:	1c08      	adds	r0, r1, #0
 8000224:	4661      	mov	r1, ip
 8000226:	e7ff      	b.n	8000228 <__aeabi_cfcmpeq>

08000228 <__aeabi_cfcmpeq>:
 8000228:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800022a:	f000 fb55 	bl	80008d8 <__lesf2>
 800022e:	2800      	cmp	r0, #0
 8000230:	d401      	bmi.n	8000236 <__aeabi_cfcmpeq+0xe>
 8000232:	2100      	movs	r1, #0
 8000234:	42c8      	cmn	r0, r1
 8000236:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

08000238 <__aeabi_fcmpeq>:
 8000238:	b510      	push	{r4, lr}
 800023a:	f000 fad7 	bl	80007ec <__eqsf2>
 800023e:	4240      	negs	r0, r0
 8000240:	3001      	adds	r0, #1
 8000242:	bd10      	pop	{r4, pc}

08000244 <__aeabi_fcmplt>:
 8000244:	b510      	push	{r4, lr}
 8000246:	f000 fb47 	bl	80008d8 <__lesf2>
 800024a:	2800      	cmp	r0, #0
 800024c:	db01      	blt.n	8000252 <__aeabi_fcmplt+0xe>
 800024e:	2000      	movs	r0, #0
 8000250:	bd10      	pop	{r4, pc}
 8000252:	2001      	movs	r0, #1
 8000254:	bd10      	pop	{r4, pc}
 8000256:	46c0      	nop			; (mov r8, r8)

08000258 <__aeabi_fcmple>:
 8000258:	b510      	push	{r4, lr}
 800025a:	f000 fb3d 	bl	80008d8 <__lesf2>
 800025e:	2800      	cmp	r0, #0
 8000260:	dd01      	ble.n	8000266 <__aeabi_fcmple+0xe>
 8000262:	2000      	movs	r0, #0
 8000264:	bd10      	pop	{r4, pc}
 8000266:	2001      	movs	r0, #1
 8000268:	bd10      	pop	{r4, pc}
 800026a:	46c0      	nop			; (mov r8, r8)

0800026c <__aeabi_fcmpgt>:
 800026c:	b510      	push	{r4, lr}
 800026e:	f000 fae5 	bl	800083c <__gesf2>
 8000272:	2800      	cmp	r0, #0
 8000274:	dc01      	bgt.n	800027a <__aeabi_fcmpgt+0xe>
 8000276:	2000      	movs	r0, #0
 8000278:	bd10      	pop	{r4, pc}
 800027a:	2001      	movs	r0, #1
 800027c:	bd10      	pop	{r4, pc}
 800027e:	46c0      	nop			; (mov r8, r8)

08000280 <__aeabi_fcmpge>:
 8000280:	b510      	push	{r4, lr}
 8000282:	f000 fadb 	bl	800083c <__gesf2>
 8000286:	2800      	cmp	r0, #0
 8000288:	da01      	bge.n	800028e <__aeabi_fcmpge+0xe>
 800028a:	2000      	movs	r0, #0
 800028c:	bd10      	pop	{r4, pc}
 800028e:	2001      	movs	r0, #1
 8000290:	bd10      	pop	{r4, pc}
 8000292:	46c0      	nop			; (mov r8, r8)

08000294 <__aeabi_fadd>:
 8000294:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000296:	4647      	mov	r7, r8
 8000298:	46ce      	mov	lr, r9
 800029a:	0243      	lsls	r3, r0, #9
 800029c:	0a5b      	lsrs	r3, r3, #9
 800029e:	0044      	lsls	r4, r0, #1
 80002a0:	0fc2      	lsrs	r2, r0, #31
 80002a2:	469c      	mov	ip, r3
 80002a4:	0048      	lsls	r0, r1, #1
 80002a6:	00dd      	lsls	r5, r3, #3
 80002a8:	024b      	lsls	r3, r1, #9
 80002aa:	0e24      	lsrs	r4, r4, #24
 80002ac:	0a5b      	lsrs	r3, r3, #9
 80002ae:	0e00      	lsrs	r0, r0, #24
 80002b0:	b580      	push	{r7, lr}
 80002b2:	4698      	mov	r8, r3
 80002b4:	0026      	movs	r6, r4
 80002b6:	4691      	mov	r9, r2
 80002b8:	0fc9      	lsrs	r1, r1, #31
 80002ba:	00db      	lsls	r3, r3, #3
 80002bc:	1a27      	subs	r7, r4, r0
 80002be:	428a      	cmp	r2, r1
 80002c0:	d029      	beq.n	8000316 <__aeabi_fadd+0x82>
 80002c2:	2f00      	cmp	r7, #0
 80002c4:	dd15      	ble.n	80002f2 <__aeabi_fadd+0x5e>
 80002c6:	2800      	cmp	r0, #0
 80002c8:	d14a      	bne.n	8000360 <__aeabi_fadd+0xcc>
 80002ca:	2b00      	cmp	r3, #0
 80002cc:	d000      	beq.n	80002d0 <__aeabi_fadd+0x3c>
 80002ce:	e095      	b.n	80003fc <__aeabi_fadd+0x168>
 80002d0:	08ed      	lsrs	r5, r5, #3
 80002d2:	2cff      	cmp	r4, #255	; 0xff
 80002d4:	d100      	bne.n	80002d8 <__aeabi_fadd+0x44>
 80002d6:	e088      	b.n	80003ea <__aeabi_fadd+0x156>
 80002d8:	026b      	lsls	r3, r5, #9
 80002da:	0a5b      	lsrs	r3, r3, #9
 80002dc:	b2e6      	uxtb	r6, r4
 80002de:	025b      	lsls	r3, r3, #9
 80002e0:	05f6      	lsls	r6, r6, #23
 80002e2:	0a58      	lsrs	r0, r3, #9
 80002e4:	4330      	orrs	r0, r6
 80002e6:	07d2      	lsls	r2, r2, #31
 80002e8:	4310      	orrs	r0, r2
 80002ea:	bc0c      	pop	{r2, r3}
 80002ec:	4690      	mov	r8, r2
 80002ee:	4699      	mov	r9, r3
 80002f0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80002f2:	2f00      	cmp	r7, #0
 80002f4:	d000      	beq.n	80002f8 <__aeabi_fadd+0x64>
 80002f6:	e087      	b.n	8000408 <__aeabi_fadd+0x174>
 80002f8:	1c60      	adds	r0, r4, #1
 80002fa:	b2c0      	uxtb	r0, r0
 80002fc:	2801      	cmp	r0, #1
 80002fe:	dc00      	bgt.n	8000302 <__aeabi_fadd+0x6e>
 8000300:	e0b6      	b.n	8000470 <__aeabi_fadd+0x1dc>
 8000302:	1aee      	subs	r6, r5, r3
 8000304:	0172      	lsls	r2, r6, #5
 8000306:	d500      	bpl.n	800030a <__aeabi_fadd+0x76>
 8000308:	e0c5      	b.n	8000496 <__aeabi_fadd+0x202>
 800030a:	2e00      	cmp	r6, #0
 800030c:	d13d      	bne.n	800038a <__aeabi_fadd+0xf6>
 800030e:	2200      	movs	r2, #0
 8000310:	2600      	movs	r6, #0
 8000312:	2300      	movs	r3, #0
 8000314:	e7e3      	b.n	80002de <__aeabi_fadd+0x4a>
 8000316:	2f00      	cmp	r7, #0
 8000318:	dc00      	bgt.n	800031c <__aeabi_fadd+0x88>
 800031a:	e096      	b.n	800044a <__aeabi_fadd+0x1b6>
 800031c:	2800      	cmp	r0, #0
 800031e:	d05d      	beq.n	80003dc <__aeabi_fadd+0x148>
 8000320:	2cff      	cmp	r4, #255	; 0xff
 8000322:	d060      	beq.n	80003e6 <__aeabi_fadd+0x152>
 8000324:	2280      	movs	r2, #128	; 0x80
 8000326:	04d2      	lsls	r2, r2, #19
 8000328:	4313      	orrs	r3, r2
 800032a:	2f1b      	cmp	r7, #27
 800032c:	dd00      	ble.n	8000330 <__aeabi_fadd+0x9c>
 800032e:	e0ec      	b.n	800050a <__aeabi_fadd+0x276>
 8000330:	2220      	movs	r2, #32
 8000332:	1bd2      	subs	r2, r2, r7
 8000334:	0018      	movs	r0, r3
 8000336:	4093      	lsls	r3, r2
 8000338:	40f8      	lsrs	r0, r7
 800033a:	1e5a      	subs	r2, r3, #1
 800033c:	4193      	sbcs	r3, r2
 800033e:	4303      	orrs	r3, r0
 8000340:	18ed      	adds	r5, r5, r3
 8000342:	016b      	lsls	r3, r5, #5
 8000344:	d57b      	bpl.n	800043e <__aeabi_fadd+0x1aa>
 8000346:	3401      	adds	r4, #1
 8000348:	2cff      	cmp	r4, #255	; 0xff
 800034a:	d100      	bne.n	800034e <__aeabi_fadd+0xba>
 800034c:	e0b7      	b.n	80004be <__aeabi_fadd+0x22a>
 800034e:	2201      	movs	r2, #1
 8000350:	2607      	movs	r6, #7
 8000352:	402a      	ands	r2, r5
 8000354:	086b      	lsrs	r3, r5, #1
 8000356:	4d9a      	ldr	r5, [pc, #616]	; (80005c0 <__aeabi_fadd+0x32c>)
 8000358:	401d      	ands	r5, r3
 800035a:	4315      	orrs	r5, r2
 800035c:	402e      	ands	r6, r5
 800035e:	e029      	b.n	80003b4 <__aeabi_fadd+0x120>
 8000360:	2cff      	cmp	r4, #255	; 0xff
 8000362:	d0b5      	beq.n	80002d0 <__aeabi_fadd+0x3c>
 8000364:	2280      	movs	r2, #128	; 0x80
 8000366:	04d2      	lsls	r2, r2, #19
 8000368:	4313      	orrs	r3, r2
 800036a:	2f1b      	cmp	r7, #27
 800036c:	dd00      	ble.n	8000370 <__aeabi_fadd+0xdc>
 800036e:	e0b2      	b.n	80004d6 <__aeabi_fadd+0x242>
 8000370:	2220      	movs	r2, #32
 8000372:	1bd2      	subs	r2, r2, r7
 8000374:	0019      	movs	r1, r3
 8000376:	4093      	lsls	r3, r2
 8000378:	40f9      	lsrs	r1, r7
 800037a:	1e5a      	subs	r2, r3, #1
 800037c:	4193      	sbcs	r3, r2
 800037e:	430b      	orrs	r3, r1
 8000380:	1aed      	subs	r5, r5, r3
 8000382:	016b      	lsls	r3, r5, #5
 8000384:	d55b      	bpl.n	800043e <__aeabi_fadd+0x1aa>
 8000386:	01ad      	lsls	r5, r5, #6
 8000388:	09ae      	lsrs	r6, r5, #6
 800038a:	0030      	movs	r0, r6
 800038c:	f002 fb22 	bl	80029d4 <__clzsi2>
 8000390:	3805      	subs	r0, #5
 8000392:	4086      	lsls	r6, r0
 8000394:	4284      	cmp	r4, r0
 8000396:	dc65      	bgt.n	8000464 <__aeabi_fadd+0x1d0>
 8000398:	1b04      	subs	r4, r0, r4
 800039a:	0033      	movs	r3, r6
 800039c:	2020      	movs	r0, #32
 800039e:	3401      	adds	r4, #1
 80003a0:	40e3      	lsrs	r3, r4
 80003a2:	1b04      	subs	r4, r0, r4
 80003a4:	40a6      	lsls	r6, r4
 80003a6:	1e75      	subs	r5, r6, #1
 80003a8:	41ae      	sbcs	r6, r5
 80003aa:	4333      	orrs	r3, r6
 80003ac:	2607      	movs	r6, #7
 80003ae:	001d      	movs	r5, r3
 80003b0:	2400      	movs	r4, #0
 80003b2:	401e      	ands	r6, r3
 80003b4:	2201      	movs	r2, #1
 80003b6:	464b      	mov	r3, r9
 80003b8:	401a      	ands	r2, r3
 80003ba:	2e00      	cmp	r6, #0
 80003bc:	d004      	beq.n	80003c8 <__aeabi_fadd+0x134>
 80003be:	230f      	movs	r3, #15
 80003c0:	402b      	ands	r3, r5
 80003c2:	2b04      	cmp	r3, #4
 80003c4:	d000      	beq.n	80003c8 <__aeabi_fadd+0x134>
 80003c6:	3504      	adds	r5, #4
 80003c8:	016b      	lsls	r3, r5, #5
 80003ca:	d400      	bmi.n	80003ce <__aeabi_fadd+0x13a>
 80003cc:	e780      	b.n	80002d0 <__aeabi_fadd+0x3c>
 80003ce:	3401      	adds	r4, #1
 80003d0:	b2e6      	uxtb	r6, r4
 80003d2:	2cff      	cmp	r4, #255	; 0xff
 80003d4:	d12f      	bne.n	8000436 <__aeabi_fadd+0x1a2>
 80003d6:	26ff      	movs	r6, #255	; 0xff
 80003d8:	2300      	movs	r3, #0
 80003da:	e780      	b.n	80002de <__aeabi_fadd+0x4a>
 80003dc:	2b00      	cmp	r3, #0
 80003de:	d152      	bne.n	8000486 <__aeabi_fadd+0x1f2>
 80003e0:	2cff      	cmp	r4, #255	; 0xff
 80003e2:	d000      	beq.n	80003e6 <__aeabi_fadd+0x152>
 80003e4:	e774      	b.n	80002d0 <__aeabi_fadd+0x3c>
 80003e6:	000a      	movs	r2, r1
 80003e8:	08ed      	lsrs	r5, r5, #3
 80003ea:	2d00      	cmp	r5, #0
 80003ec:	d0f3      	beq.n	80003d6 <__aeabi_fadd+0x142>
 80003ee:	2380      	movs	r3, #128	; 0x80
 80003f0:	03db      	lsls	r3, r3, #15
 80003f2:	432b      	orrs	r3, r5
 80003f4:	025b      	lsls	r3, r3, #9
 80003f6:	0a5b      	lsrs	r3, r3, #9
 80003f8:	26ff      	movs	r6, #255	; 0xff
 80003fa:	e770      	b.n	80002de <__aeabi_fadd+0x4a>
 80003fc:	3f01      	subs	r7, #1
 80003fe:	2f00      	cmp	r7, #0
 8000400:	d0be      	beq.n	8000380 <__aeabi_fadd+0xec>
 8000402:	2cff      	cmp	r4, #255	; 0xff
 8000404:	d1b1      	bne.n	800036a <__aeabi_fadd+0xd6>
 8000406:	e763      	b.n	80002d0 <__aeabi_fadd+0x3c>
 8000408:	2c00      	cmp	r4, #0
 800040a:	d047      	beq.n	800049c <__aeabi_fadd+0x208>
 800040c:	28ff      	cmp	r0, #255	; 0xff
 800040e:	d069      	beq.n	80004e4 <__aeabi_fadd+0x250>
 8000410:	2480      	movs	r4, #128	; 0x80
 8000412:	04e4      	lsls	r4, r4, #19
 8000414:	427a      	negs	r2, r7
 8000416:	4325      	orrs	r5, r4
 8000418:	2a1b      	cmp	r2, #27
 800041a:	dd00      	ble.n	800041e <__aeabi_fadd+0x18a>
 800041c:	e0c5      	b.n	80005aa <__aeabi_fadd+0x316>
 800041e:	002c      	movs	r4, r5
 8000420:	2620      	movs	r6, #32
 8000422:	40d4      	lsrs	r4, r2
 8000424:	1ab2      	subs	r2, r6, r2
 8000426:	4095      	lsls	r5, r2
 8000428:	1e6a      	subs	r2, r5, #1
 800042a:	4195      	sbcs	r5, r2
 800042c:	4325      	orrs	r5, r4
 800042e:	1b5d      	subs	r5, r3, r5
 8000430:	0004      	movs	r4, r0
 8000432:	4689      	mov	r9, r1
 8000434:	e7a5      	b.n	8000382 <__aeabi_fadd+0xee>
 8000436:	01ab      	lsls	r3, r5, #6
 8000438:	0a5b      	lsrs	r3, r3, #9
 800043a:	e750      	b.n	80002de <__aeabi_fadd+0x4a>
 800043c:	2400      	movs	r4, #0
 800043e:	2201      	movs	r2, #1
 8000440:	464b      	mov	r3, r9
 8000442:	401a      	ands	r2, r3
 8000444:	076b      	lsls	r3, r5, #29
 8000446:	d1ba      	bne.n	80003be <__aeabi_fadd+0x12a>
 8000448:	e742      	b.n	80002d0 <__aeabi_fadd+0x3c>
 800044a:	2f00      	cmp	r7, #0
 800044c:	d13b      	bne.n	80004c6 <__aeabi_fadd+0x232>
 800044e:	3401      	adds	r4, #1
 8000450:	b2e0      	uxtb	r0, r4
 8000452:	2801      	cmp	r0, #1
 8000454:	dd4a      	ble.n	80004ec <__aeabi_fadd+0x258>
 8000456:	2cff      	cmp	r4, #255	; 0xff
 8000458:	d0bd      	beq.n	80003d6 <__aeabi_fadd+0x142>
 800045a:	2607      	movs	r6, #7
 800045c:	18ed      	adds	r5, r5, r3
 800045e:	086d      	lsrs	r5, r5, #1
 8000460:	402e      	ands	r6, r5
 8000462:	e7a7      	b.n	80003b4 <__aeabi_fadd+0x120>
 8000464:	2307      	movs	r3, #7
 8000466:	4d57      	ldr	r5, [pc, #348]	; (80005c4 <__aeabi_fadd+0x330>)
 8000468:	1a24      	subs	r4, r4, r0
 800046a:	4035      	ands	r5, r6
 800046c:	401e      	ands	r6, r3
 800046e:	e7a1      	b.n	80003b4 <__aeabi_fadd+0x120>
 8000470:	2c00      	cmp	r4, #0
 8000472:	d11b      	bne.n	80004ac <__aeabi_fadd+0x218>
 8000474:	2d00      	cmp	r5, #0
 8000476:	d16e      	bne.n	8000556 <__aeabi_fadd+0x2c2>
 8000478:	2b00      	cmp	r3, #0
 800047a:	d100      	bne.n	800047e <__aeabi_fadd+0x1ea>
 800047c:	e09a      	b.n	80005b4 <__aeabi_fadd+0x320>
 800047e:	000a      	movs	r2, r1
 8000480:	001d      	movs	r5, r3
 8000482:	003c      	movs	r4, r7
 8000484:	e724      	b.n	80002d0 <__aeabi_fadd+0x3c>
 8000486:	3f01      	subs	r7, #1
 8000488:	2f00      	cmp	r7, #0
 800048a:	d100      	bne.n	800048e <__aeabi_fadd+0x1fa>
 800048c:	e758      	b.n	8000340 <__aeabi_fadd+0xac>
 800048e:	2cff      	cmp	r4, #255	; 0xff
 8000490:	d000      	beq.n	8000494 <__aeabi_fadd+0x200>
 8000492:	e74a      	b.n	800032a <__aeabi_fadd+0x96>
 8000494:	e7a7      	b.n	80003e6 <__aeabi_fadd+0x152>
 8000496:	1b5e      	subs	r6, r3, r5
 8000498:	4689      	mov	r9, r1
 800049a:	e776      	b.n	800038a <__aeabi_fadd+0xf6>
 800049c:	2d00      	cmp	r5, #0
 800049e:	d11c      	bne.n	80004da <__aeabi_fadd+0x246>
 80004a0:	000a      	movs	r2, r1
 80004a2:	28ff      	cmp	r0, #255	; 0xff
 80004a4:	d01f      	beq.n	80004e6 <__aeabi_fadd+0x252>
 80004a6:	0004      	movs	r4, r0
 80004a8:	001d      	movs	r5, r3
 80004aa:	e711      	b.n	80002d0 <__aeabi_fadd+0x3c>
 80004ac:	2d00      	cmp	r5, #0
 80004ae:	d15d      	bne.n	800056c <__aeabi_fadd+0x2d8>
 80004b0:	2b00      	cmp	r3, #0
 80004b2:	d117      	bne.n	80004e4 <__aeabi_fadd+0x250>
 80004b4:	2380      	movs	r3, #128	; 0x80
 80004b6:	2200      	movs	r2, #0
 80004b8:	03db      	lsls	r3, r3, #15
 80004ba:	26ff      	movs	r6, #255	; 0xff
 80004bc:	e70f      	b.n	80002de <__aeabi_fadd+0x4a>
 80004be:	000a      	movs	r2, r1
 80004c0:	26ff      	movs	r6, #255	; 0xff
 80004c2:	2300      	movs	r3, #0
 80004c4:	e70b      	b.n	80002de <__aeabi_fadd+0x4a>
 80004c6:	2c00      	cmp	r4, #0
 80004c8:	d121      	bne.n	800050e <__aeabi_fadd+0x27a>
 80004ca:	2d00      	cmp	r5, #0
 80004cc:	d166      	bne.n	800059c <__aeabi_fadd+0x308>
 80004ce:	28ff      	cmp	r0, #255	; 0xff
 80004d0:	d1e9      	bne.n	80004a6 <__aeabi_fadd+0x212>
 80004d2:	001d      	movs	r5, r3
 80004d4:	e787      	b.n	80003e6 <__aeabi_fadd+0x152>
 80004d6:	2301      	movs	r3, #1
 80004d8:	e752      	b.n	8000380 <__aeabi_fadd+0xec>
 80004da:	1c7a      	adds	r2, r7, #1
 80004dc:	d0a7      	beq.n	800042e <__aeabi_fadd+0x19a>
 80004de:	43fa      	mvns	r2, r7
 80004e0:	28ff      	cmp	r0, #255	; 0xff
 80004e2:	d199      	bne.n	8000418 <__aeabi_fadd+0x184>
 80004e4:	000a      	movs	r2, r1
 80004e6:	001d      	movs	r5, r3
 80004e8:	24ff      	movs	r4, #255	; 0xff
 80004ea:	e6f1      	b.n	80002d0 <__aeabi_fadd+0x3c>
 80004ec:	2e00      	cmp	r6, #0
 80004ee:	d121      	bne.n	8000534 <__aeabi_fadd+0x2a0>
 80004f0:	2d00      	cmp	r5, #0
 80004f2:	d04f      	beq.n	8000594 <__aeabi_fadd+0x300>
 80004f4:	2b00      	cmp	r3, #0
 80004f6:	d04c      	beq.n	8000592 <__aeabi_fadd+0x2fe>
 80004f8:	18ed      	adds	r5, r5, r3
 80004fa:	016b      	lsls	r3, r5, #5
 80004fc:	d59e      	bpl.n	800043c <__aeabi_fadd+0x1a8>
 80004fe:	4b31      	ldr	r3, [pc, #196]	; (80005c4 <__aeabi_fadd+0x330>)
 8000500:	3607      	adds	r6, #7
 8000502:	402e      	ands	r6, r5
 8000504:	2401      	movs	r4, #1
 8000506:	401d      	ands	r5, r3
 8000508:	e754      	b.n	80003b4 <__aeabi_fadd+0x120>
 800050a:	2301      	movs	r3, #1
 800050c:	e718      	b.n	8000340 <__aeabi_fadd+0xac>
 800050e:	28ff      	cmp	r0, #255	; 0xff
 8000510:	d0df      	beq.n	80004d2 <__aeabi_fadd+0x23e>
 8000512:	2480      	movs	r4, #128	; 0x80
 8000514:	04e4      	lsls	r4, r4, #19
 8000516:	427f      	negs	r7, r7
 8000518:	4325      	orrs	r5, r4
 800051a:	2f1b      	cmp	r7, #27
 800051c:	dc4d      	bgt.n	80005ba <__aeabi_fadd+0x326>
 800051e:	2620      	movs	r6, #32
 8000520:	1bf6      	subs	r6, r6, r7
 8000522:	002c      	movs	r4, r5
 8000524:	40b5      	lsls	r5, r6
 8000526:	40fc      	lsrs	r4, r7
 8000528:	1e6a      	subs	r2, r5, #1
 800052a:	4195      	sbcs	r5, r2
 800052c:	4325      	orrs	r5, r4
 800052e:	18ed      	adds	r5, r5, r3
 8000530:	0004      	movs	r4, r0
 8000532:	e706      	b.n	8000342 <__aeabi_fadd+0xae>
 8000534:	2d00      	cmp	r5, #0
 8000536:	d0cc      	beq.n	80004d2 <__aeabi_fadd+0x23e>
 8000538:	2b00      	cmp	r3, #0
 800053a:	d100      	bne.n	800053e <__aeabi_fadd+0x2aa>
 800053c:	e753      	b.n	80003e6 <__aeabi_fadd+0x152>
 800053e:	2180      	movs	r1, #128	; 0x80
 8000540:	4660      	mov	r0, ip
 8000542:	03c9      	lsls	r1, r1, #15
 8000544:	4208      	tst	r0, r1
 8000546:	d003      	beq.n	8000550 <__aeabi_fadd+0x2bc>
 8000548:	4640      	mov	r0, r8
 800054a:	4208      	tst	r0, r1
 800054c:	d100      	bne.n	8000550 <__aeabi_fadd+0x2bc>
 800054e:	001d      	movs	r5, r3
 8000550:	2101      	movs	r1, #1
 8000552:	4011      	ands	r1, r2
 8000554:	e747      	b.n	80003e6 <__aeabi_fadd+0x152>
 8000556:	2b00      	cmp	r3, #0
 8000558:	d100      	bne.n	800055c <__aeabi_fadd+0x2c8>
 800055a:	e6b9      	b.n	80002d0 <__aeabi_fadd+0x3c>
 800055c:	1aea      	subs	r2, r5, r3
 800055e:	0150      	lsls	r0, r2, #5
 8000560:	d525      	bpl.n	80005ae <__aeabi_fadd+0x31a>
 8000562:	2607      	movs	r6, #7
 8000564:	1b5d      	subs	r5, r3, r5
 8000566:	402e      	ands	r6, r5
 8000568:	4689      	mov	r9, r1
 800056a:	e723      	b.n	80003b4 <__aeabi_fadd+0x120>
 800056c:	24ff      	movs	r4, #255	; 0xff
 800056e:	2b00      	cmp	r3, #0
 8000570:	d100      	bne.n	8000574 <__aeabi_fadd+0x2e0>
 8000572:	e6ad      	b.n	80002d0 <__aeabi_fadd+0x3c>
 8000574:	2280      	movs	r2, #128	; 0x80
 8000576:	4660      	mov	r0, ip
 8000578:	03d2      	lsls	r2, r2, #15
 800057a:	4210      	tst	r0, r2
 800057c:	d004      	beq.n	8000588 <__aeabi_fadd+0x2f4>
 800057e:	4640      	mov	r0, r8
 8000580:	4210      	tst	r0, r2
 8000582:	d101      	bne.n	8000588 <__aeabi_fadd+0x2f4>
 8000584:	001d      	movs	r5, r3
 8000586:	4689      	mov	r9, r1
 8000588:	2201      	movs	r2, #1
 800058a:	464b      	mov	r3, r9
 800058c:	24ff      	movs	r4, #255	; 0xff
 800058e:	401a      	ands	r2, r3
 8000590:	e69e      	b.n	80002d0 <__aeabi_fadd+0x3c>
 8000592:	002b      	movs	r3, r5
 8000594:	08dd      	lsrs	r5, r3, #3
 8000596:	000a      	movs	r2, r1
 8000598:	2400      	movs	r4, #0
 800059a:	e69d      	b.n	80002d8 <__aeabi_fadd+0x44>
 800059c:	1c7a      	adds	r2, r7, #1
 800059e:	d0c6      	beq.n	800052e <__aeabi_fadd+0x29a>
 80005a0:	43ff      	mvns	r7, r7
 80005a2:	28ff      	cmp	r0, #255	; 0xff
 80005a4:	d1b9      	bne.n	800051a <__aeabi_fadd+0x286>
 80005a6:	001d      	movs	r5, r3
 80005a8:	e71d      	b.n	80003e6 <__aeabi_fadd+0x152>
 80005aa:	2501      	movs	r5, #1
 80005ac:	e73f      	b.n	800042e <__aeabi_fadd+0x19a>
 80005ae:	1e15      	subs	r5, r2, #0
 80005b0:	d000      	beq.n	80005b4 <__aeabi_fadd+0x320>
 80005b2:	e744      	b.n	800043e <__aeabi_fadd+0x1aa>
 80005b4:	2200      	movs	r2, #0
 80005b6:	2300      	movs	r3, #0
 80005b8:	e691      	b.n	80002de <__aeabi_fadd+0x4a>
 80005ba:	2501      	movs	r5, #1
 80005bc:	e7b7      	b.n	800052e <__aeabi_fadd+0x29a>
 80005be:	46c0      	nop			; (mov r8, r8)
 80005c0:	7dffffff 	.word	0x7dffffff
 80005c4:	fbffffff 	.word	0xfbffffff

080005c8 <__aeabi_fdiv>:
 80005c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80005ca:	4657      	mov	r7, sl
 80005cc:	464e      	mov	r6, r9
 80005ce:	4645      	mov	r5, r8
 80005d0:	46de      	mov	lr, fp
 80005d2:	0244      	lsls	r4, r0, #9
 80005d4:	b5e0      	push	{r5, r6, r7, lr}
 80005d6:	0046      	lsls	r6, r0, #1
 80005d8:	4688      	mov	r8, r1
 80005da:	0a64      	lsrs	r4, r4, #9
 80005dc:	0e36      	lsrs	r6, r6, #24
 80005de:	0fc7      	lsrs	r7, r0, #31
 80005e0:	2e00      	cmp	r6, #0
 80005e2:	d063      	beq.n	80006ac <__aeabi_fdiv+0xe4>
 80005e4:	2eff      	cmp	r6, #255	; 0xff
 80005e6:	d024      	beq.n	8000632 <__aeabi_fdiv+0x6a>
 80005e8:	2380      	movs	r3, #128	; 0x80
 80005ea:	00e4      	lsls	r4, r4, #3
 80005ec:	04db      	lsls	r3, r3, #19
 80005ee:	431c      	orrs	r4, r3
 80005f0:	2300      	movs	r3, #0
 80005f2:	4699      	mov	r9, r3
 80005f4:	469b      	mov	fp, r3
 80005f6:	3e7f      	subs	r6, #127	; 0x7f
 80005f8:	4643      	mov	r3, r8
 80005fa:	4642      	mov	r2, r8
 80005fc:	025d      	lsls	r5, r3, #9
 80005fe:	0fd2      	lsrs	r2, r2, #31
 8000600:	005b      	lsls	r3, r3, #1
 8000602:	0a6d      	lsrs	r5, r5, #9
 8000604:	0e1b      	lsrs	r3, r3, #24
 8000606:	4690      	mov	r8, r2
 8000608:	4692      	mov	sl, r2
 800060a:	d065      	beq.n	80006d8 <__aeabi_fdiv+0x110>
 800060c:	2bff      	cmp	r3, #255	; 0xff
 800060e:	d055      	beq.n	80006bc <__aeabi_fdiv+0xf4>
 8000610:	2280      	movs	r2, #128	; 0x80
 8000612:	2100      	movs	r1, #0
 8000614:	00ed      	lsls	r5, r5, #3
 8000616:	04d2      	lsls	r2, r2, #19
 8000618:	3b7f      	subs	r3, #127	; 0x7f
 800061a:	4315      	orrs	r5, r2
 800061c:	1af6      	subs	r6, r6, r3
 800061e:	4643      	mov	r3, r8
 8000620:	464a      	mov	r2, r9
 8000622:	407b      	eors	r3, r7
 8000624:	2a0f      	cmp	r2, #15
 8000626:	d900      	bls.n	800062a <__aeabi_fdiv+0x62>
 8000628:	e08d      	b.n	8000746 <__aeabi_fdiv+0x17e>
 800062a:	486d      	ldr	r0, [pc, #436]	; (80007e0 <__aeabi_fdiv+0x218>)
 800062c:	0092      	lsls	r2, r2, #2
 800062e:	5882      	ldr	r2, [r0, r2]
 8000630:	4697      	mov	pc, r2
 8000632:	2c00      	cmp	r4, #0
 8000634:	d154      	bne.n	80006e0 <__aeabi_fdiv+0x118>
 8000636:	2308      	movs	r3, #8
 8000638:	4699      	mov	r9, r3
 800063a:	3b06      	subs	r3, #6
 800063c:	26ff      	movs	r6, #255	; 0xff
 800063e:	469b      	mov	fp, r3
 8000640:	e7da      	b.n	80005f8 <__aeabi_fdiv+0x30>
 8000642:	2500      	movs	r5, #0
 8000644:	4653      	mov	r3, sl
 8000646:	2902      	cmp	r1, #2
 8000648:	d01b      	beq.n	8000682 <__aeabi_fdiv+0xba>
 800064a:	2903      	cmp	r1, #3
 800064c:	d100      	bne.n	8000650 <__aeabi_fdiv+0x88>
 800064e:	e0bf      	b.n	80007d0 <__aeabi_fdiv+0x208>
 8000650:	2901      	cmp	r1, #1
 8000652:	d028      	beq.n	80006a6 <__aeabi_fdiv+0xde>
 8000654:	0030      	movs	r0, r6
 8000656:	307f      	adds	r0, #127	; 0x7f
 8000658:	2800      	cmp	r0, #0
 800065a:	dd20      	ble.n	800069e <__aeabi_fdiv+0xd6>
 800065c:	076a      	lsls	r2, r5, #29
 800065e:	d004      	beq.n	800066a <__aeabi_fdiv+0xa2>
 8000660:	220f      	movs	r2, #15
 8000662:	402a      	ands	r2, r5
 8000664:	2a04      	cmp	r2, #4
 8000666:	d000      	beq.n	800066a <__aeabi_fdiv+0xa2>
 8000668:	3504      	adds	r5, #4
 800066a:	012a      	lsls	r2, r5, #4
 800066c:	d503      	bpl.n	8000676 <__aeabi_fdiv+0xae>
 800066e:	0030      	movs	r0, r6
 8000670:	4a5c      	ldr	r2, [pc, #368]	; (80007e4 <__aeabi_fdiv+0x21c>)
 8000672:	3080      	adds	r0, #128	; 0x80
 8000674:	4015      	ands	r5, r2
 8000676:	28fe      	cmp	r0, #254	; 0xfe
 8000678:	dc03      	bgt.n	8000682 <__aeabi_fdiv+0xba>
 800067a:	01ac      	lsls	r4, r5, #6
 800067c:	0a64      	lsrs	r4, r4, #9
 800067e:	b2c2      	uxtb	r2, r0
 8000680:	e001      	b.n	8000686 <__aeabi_fdiv+0xbe>
 8000682:	22ff      	movs	r2, #255	; 0xff
 8000684:	2400      	movs	r4, #0
 8000686:	0264      	lsls	r4, r4, #9
 8000688:	05d2      	lsls	r2, r2, #23
 800068a:	0a60      	lsrs	r0, r4, #9
 800068c:	07db      	lsls	r3, r3, #31
 800068e:	4310      	orrs	r0, r2
 8000690:	4318      	orrs	r0, r3
 8000692:	bc3c      	pop	{r2, r3, r4, r5}
 8000694:	4690      	mov	r8, r2
 8000696:	4699      	mov	r9, r3
 8000698:	46a2      	mov	sl, r4
 800069a:	46ab      	mov	fp, r5
 800069c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800069e:	2201      	movs	r2, #1
 80006a0:	1a10      	subs	r0, r2, r0
 80006a2:	281b      	cmp	r0, #27
 80006a4:	dd7c      	ble.n	80007a0 <__aeabi_fdiv+0x1d8>
 80006a6:	2200      	movs	r2, #0
 80006a8:	2400      	movs	r4, #0
 80006aa:	e7ec      	b.n	8000686 <__aeabi_fdiv+0xbe>
 80006ac:	2c00      	cmp	r4, #0
 80006ae:	d11d      	bne.n	80006ec <__aeabi_fdiv+0x124>
 80006b0:	2304      	movs	r3, #4
 80006b2:	4699      	mov	r9, r3
 80006b4:	3b03      	subs	r3, #3
 80006b6:	2600      	movs	r6, #0
 80006b8:	469b      	mov	fp, r3
 80006ba:	e79d      	b.n	80005f8 <__aeabi_fdiv+0x30>
 80006bc:	3eff      	subs	r6, #255	; 0xff
 80006be:	2d00      	cmp	r5, #0
 80006c0:	d120      	bne.n	8000704 <__aeabi_fdiv+0x13c>
 80006c2:	2102      	movs	r1, #2
 80006c4:	4643      	mov	r3, r8
 80006c6:	464a      	mov	r2, r9
 80006c8:	407b      	eors	r3, r7
 80006ca:	430a      	orrs	r2, r1
 80006cc:	2a0f      	cmp	r2, #15
 80006ce:	d8d8      	bhi.n	8000682 <__aeabi_fdiv+0xba>
 80006d0:	4845      	ldr	r0, [pc, #276]	; (80007e8 <__aeabi_fdiv+0x220>)
 80006d2:	0092      	lsls	r2, r2, #2
 80006d4:	5882      	ldr	r2, [r0, r2]
 80006d6:	4697      	mov	pc, r2
 80006d8:	2d00      	cmp	r5, #0
 80006da:	d119      	bne.n	8000710 <__aeabi_fdiv+0x148>
 80006dc:	2101      	movs	r1, #1
 80006de:	e7f1      	b.n	80006c4 <__aeabi_fdiv+0xfc>
 80006e0:	230c      	movs	r3, #12
 80006e2:	4699      	mov	r9, r3
 80006e4:	3b09      	subs	r3, #9
 80006e6:	26ff      	movs	r6, #255	; 0xff
 80006e8:	469b      	mov	fp, r3
 80006ea:	e785      	b.n	80005f8 <__aeabi_fdiv+0x30>
 80006ec:	0020      	movs	r0, r4
 80006ee:	f002 f971 	bl	80029d4 <__clzsi2>
 80006f2:	2676      	movs	r6, #118	; 0x76
 80006f4:	1f43      	subs	r3, r0, #5
 80006f6:	409c      	lsls	r4, r3
 80006f8:	2300      	movs	r3, #0
 80006fa:	4276      	negs	r6, r6
 80006fc:	1a36      	subs	r6, r6, r0
 80006fe:	4699      	mov	r9, r3
 8000700:	469b      	mov	fp, r3
 8000702:	e779      	b.n	80005f8 <__aeabi_fdiv+0x30>
 8000704:	464a      	mov	r2, r9
 8000706:	2303      	movs	r3, #3
 8000708:	431a      	orrs	r2, r3
 800070a:	4691      	mov	r9, r2
 800070c:	2103      	movs	r1, #3
 800070e:	e786      	b.n	800061e <__aeabi_fdiv+0x56>
 8000710:	0028      	movs	r0, r5
 8000712:	f002 f95f 	bl	80029d4 <__clzsi2>
 8000716:	1f43      	subs	r3, r0, #5
 8000718:	1836      	adds	r6, r6, r0
 800071a:	409d      	lsls	r5, r3
 800071c:	3676      	adds	r6, #118	; 0x76
 800071e:	2100      	movs	r1, #0
 8000720:	e77d      	b.n	800061e <__aeabi_fdiv+0x56>
 8000722:	2480      	movs	r4, #128	; 0x80
 8000724:	2300      	movs	r3, #0
 8000726:	03e4      	lsls	r4, r4, #15
 8000728:	22ff      	movs	r2, #255	; 0xff
 800072a:	e7ac      	b.n	8000686 <__aeabi_fdiv+0xbe>
 800072c:	2500      	movs	r5, #0
 800072e:	2380      	movs	r3, #128	; 0x80
 8000730:	03db      	lsls	r3, r3, #15
 8000732:	421c      	tst	r4, r3
 8000734:	d028      	beq.n	8000788 <__aeabi_fdiv+0x1c0>
 8000736:	421d      	tst	r5, r3
 8000738:	d126      	bne.n	8000788 <__aeabi_fdiv+0x1c0>
 800073a:	432b      	orrs	r3, r5
 800073c:	025c      	lsls	r4, r3, #9
 800073e:	0a64      	lsrs	r4, r4, #9
 8000740:	4643      	mov	r3, r8
 8000742:	22ff      	movs	r2, #255	; 0xff
 8000744:	e79f      	b.n	8000686 <__aeabi_fdiv+0xbe>
 8000746:	0162      	lsls	r2, r4, #5
 8000748:	016c      	lsls	r4, r5, #5
 800074a:	42a2      	cmp	r2, r4
 800074c:	d224      	bcs.n	8000798 <__aeabi_fdiv+0x1d0>
 800074e:	211b      	movs	r1, #27
 8000750:	2500      	movs	r5, #0
 8000752:	3e01      	subs	r6, #1
 8000754:	2701      	movs	r7, #1
 8000756:	0010      	movs	r0, r2
 8000758:	006d      	lsls	r5, r5, #1
 800075a:	0052      	lsls	r2, r2, #1
 800075c:	2800      	cmp	r0, #0
 800075e:	db01      	blt.n	8000764 <__aeabi_fdiv+0x19c>
 8000760:	4294      	cmp	r4, r2
 8000762:	d801      	bhi.n	8000768 <__aeabi_fdiv+0x1a0>
 8000764:	1b12      	subs	r2, r2, r4
 8000766:	433d      	orrs	r5, r7
 8000768:	3901      	subs	r1, #1
 800076a:	2900      	cmp	r1, #0
 800076c:	d1f3      	bne.n	8000756 <__aeabi_fdiv+0x18e>
 800076e:	0014      	movs	r4, r2
 8000770:	1e62      	subs	r2, r4, #1
 8000772:	4194      	sbcs	r4, r2
 8000774:	4325      	orrs	r5, r4
 8000776:	e76d      	b.n	8000654 <__aeabi_fdiv+0x8c>
 8000778:	46ba      	mov	sl, r7
 800077a:	4659      	mov	r1, fp
 800077c:	0025      	movs	r5, r4
 800077e:	4653      	mov	r3, sl
 8000780:	2902      	cmp	r1, #2
 8000782:	d000      	beq.n	8000786 <__aeabi_fdiv+0x1be>
 8000784:	e761      	b.n	800064a <__aeabi_fdiv+0x82>
 8000786:	e77c      	b.n	8000682 <__aeabi_fdiv+0xba>
 8000788:	2380      	movs	r3, #128	; 0x80
 800078a:	03db      	lsls	r3, r3, #15
 800078c:	431c      	orrs	r4, r3
 800078e:	0264      	lsls	r4, r4, #9
 8000790:	0a64      	lsrs	r4, r4, #9
 8000792:	003b      	movs	r3, r7
 8000794:	22ff      	movs	r2, #255	; 0xff
 8000796:	e776      	b.n	8000686 <__aeabi_fdiv+0xbe>
 8000798:	1b12      	subs	r2, r2, r4
 800079a:	211a      	movs	r1, #26
 800079c:	2501      	movs	r5, #1
 800079e:	e7d9      	b.n	8000754 <__aeabi_fdiv+0x18c>
 80007a0:	369e      	adds	r6, #158	; 0x9e
 80007a2:	002a      	movs	r2, r5
 80007a4:	40b5      	lsls	r5, r6
 80007a6:	002c      	movs	r4, r5
 80007a8:	40c2      	lsrs	r2, r0
 80007aa:	1e65      	subs	r5, r4, #1
 80007ac:	41ac      	sbcs	r4, r5
 80007ae:	4314      	orrs	r4, r2
 80007b0:	0762      	lsls	r2, r4, #29
 80007b2:	d004      	beq.n	80007be <__aeabi_fdiv+0x1f6>
 80007b4:	220f      	movs	r2, #15
 80007b6:	4022      	ands	r2, r4
 80007b8:	2a04      	cmp	r2, #4
 80007ba:	d000      	beq.n	80007be <__aeabi_fdiv+0x1f6>
 80007bc:	3404      	adds	r4, #4
 80007be:	0162      	lsls	r2, r4, #5
 80007c0:	d403      	bmi.n	80007ca <__aeabi_fdiv+0x202>
 80007c2:	01a4      	lsls	r4, r4, #6
 80007c4:	0a64      	lsrs	r4, r4, #9
 80007c6:	2200      	movs	r2, #0
 80007c8:	e75d      	b.n	8000686 <__aeabi_fdiv+0xbe>
 80007ca:	2201      	movs	r2, #1
 80007cc:	2400      	movs	r4, #0
 80007ce:	e75a      	b.n	8000686 <__aeabi_fdiv+0xbe>
 80007d0:	2480      	movs	r4, #128	; 0x80
 80007d2:	03e4      	lsls	r4, r4, #15
 80007d4:	432c      	orrs	r4, r5
 80007d6:	0264      	lsls	r4, r4, #9
 80007d8:	0a64      	lsrs	r4, r4, #9
 80007da:	22ff      	movs	r2, #255	; 0xff
 80007dc:	e753      	b.n	8000686 <__aeabi_fdiv+0xbe>
 80007de:	46c0      	nop			; (mov r8, r8)
 80007e0:	08009b7c 	.word	0x08009b7c
 80007e4:	f7ffffff 	.word	0xf7ffffff
 80007e8:	08009bbc 	.word	0x08009bbc

080007ec <__eqsf2>:
 80007ec:	b570      	push	{r4, r5, r6, lr}
 80007ee:	0042      	lsls	r2, r0, #1
 80007f0:	024e      	lsls	r6, r1, #9
 80007f2:	004c      	lsls	r4, r1, #1
 80007f4:	0245      	lsls	r5, r0, #9
 80007f6:	0a6d      	lsrs	r5, r5, #9
 80007f8:	0e12      	lsrs	r2, r2, #24
 80007fa:	0fc3      	lsrs	r3, r0, #31
 80007fc:	0a76      	lsrs	r6, r6, #9
 80007fe:	0e24      	lsrs	r4, r4, #24
 8000800:	0fc9      	lsrs	r1, r1, #31
 8000802:	2aff      	cmp	r2, #255	; 0xff
 8000804:	d00f      	beq.n	8000826 <__eqsf2+0x3a>
 8000806:	2cff      	cmp	r4, #255	; 0xff
 8000808:	d011      	beq.n	800082e <__eqsf2+0x42>
 800080a:	2001      	movs	r0, #1
 800080c:	42a2      	cmp	r2, r4
 800080e:	d000      	beq.n	8000812 <__eqsf2+0x26>
 8000810:	bd70      	pop	{r4, r5, r6, pc}
 8000812:	42b5      	cmp	r5, r6
 8000814:	d1fc      	bne.n	8000810 <__eqsf2+0x24>
 8000816:	428b      	cmp	r3, r1
 8000818:	d00d      	beq.n	8000836 <__eqsf2+0x4a>
 800081a:	2a00      	cmp	r2, #0
 800081c:	d1f8      	bne.n	8000810 <__eqsf2+0x24>
 800081e:	0028      	movs	r0, r5
 8000820:	1e45      	subs	r5, r0, #1
 8000822:	41a8      	sbcs	r0, r5
 8000824:	e7f4      	b.n	8000810 <__eqsf2+0x24>
 8000826:	2001      	movs	r0, #1
 8000828:	2d00      	cmp	r5, #0
 800082a:	d1f1      	bne.n	8000810 <__eqsf2+0x24>
 800082c:	e7eb      	b.n	8000806 <__eqsf2+0x1a>
 800082e:	2001      	movs	r0, #1
 8000830:	2e00      	cmp	r6, #0
 8000832:	d1ed      	bne.n	8000810 <__eqsf2+0x24>
 8000834:	e7e9      	b.n	800080a <__eqsf2+0x1e>
 8000836:	2000      	movs	r0, #0
 8000838:	e7ea      	b.n	8000810 <__eqsf2+0x24>
 800083a:	46c0      	nop			; (mov r8, r8)

0800083c <__gesf2>:
 800083c:	b570      	push	{r4, r5, r6, lr}
 800083e:	004a      	lsls	r2, r1, #1
 8000840:	024e      	lsls	r6, r1, #9
 8000842:	0245      	lsls	r5, r0, #9
 8000844:	0044      	lsls	r4, r0, #1
 8000846:	0a6d      	lsrs	r5, r5, #9
 8000848:	0e24      	lsrs	r4, r4, #24
 800084a:	0fc3      	lsrs	r3, r0, #31
 800084c:	0a76      	lsrs	r6, r6, #9
 800084e:	0e12      	lsrs	r2, r2, #24
 8000850:	0fc9      	lsrs	r1, r1, #31
 8000852:	2cff      	cmp	r4, #255	; 0xff
 8000854:	d015      	beq.n	8000882 <__gesf2+0x46>
 8000856:	2aff      	cmp	r2, #255	; 0xff
 8000858:	d00e      	beq.n	8000878 <__gesf2+0x3c>
 800085a:	2c00      	cmp	r4, #0
 800085c:	d115      	bne.n	800088a <__gesf2+0x4e>
 800085e:	2a00      	cmp	r2, #0
 8000860:	d101      	bne.n	8000866 <__gesf2+0x2a>
 8000862:	2e00      	cmp	r6, #0
 8000864:	d01c      	beq.n	80008a0 <__gesf2+0x64>
 8000866:	2d00      	cmp	r5, #0
 8000868:	d014      	beq.n	8000894 <__gesf2+0x58>
 800086a:	428b      	cmp	r3, r1
 800086c:	d027      	beq.n	80008be <__gesf2+0x82>
 800086e:	2002      	movs	r0, #2
 8000870:	3b01      	subs	r3, #1
 8000872:	4018      	ands	r0, r3
 8000874:	3801      	subs	r0, #1
 8000876:	bd70      	pop	{r4, r5, r6, pc}
 8000878:	2e00      	cmp	r6, #0
 800087a:	d0ee      	beq.n	800085a <__gesf2+0x1e>
 800087c:	2002      	movs	r0, #2
 800087e:	4240      	negs	r0, r0
 8000880:	e7f9      	b.n	8000876 <__gesf2+0x3a>
 8000882:	2d00      	cmp	r5, #0
 8000884:	d1fa      	bne.n	800087c <__gesf2+0x40>
 8000886:	2aff      	cmp	r2, #255	; 0xff
 8000888:	d00e      	beq.n	80008a8 <__gesf2+0x6c>
 800088a:	2a00      	cmp	r2, #0
 800088c:	d10e      	bne.n	80008ac <__gesf2+0x70>
 800088e:	2e00      	cmp	r6, #0
 8000890:	d0ed      	beq.n	800086e <__gesf2+0x32>
 8000892:	e00b      	b.n	80008ac <__gesf2+0x70>
 8000894:	2301      	movs	r3, #1
 8000896:	3901      	subs	r1, #1
 8000898:	4399      	bics	r1, r3
 800089a:	0008      	movs	r0, r1
 800089c:	3001      	adds	r0, #1
 800089e:	e7ea      	b.n	8000876 <__gesf2+0x3a>
 80008a0:	2000      	movs	r0, #0
 80008a2:	2d00      	cmp	r5, #0
 80008a4:	d0e7      	beq.n	8000876 <__gesf2+0x3a>
 80008a6:	e7e2      	b.n	800086e <__gesf2+0x32>
 80008a8:	2e00      	cmp	r6, #0
 80008aa:	d1e7      	bne.n	800087c <__gesf2+0x40>
 80008ac:	428b      	cmp	r3, r1
 80008ae:	d1de      	bne.n	800086e <__gesf2+0x32>
 80008b0:	4294      	cmp	r4, r2
 80008b2:	dd05      	ble.n	80008c0 <__gesf2+0x84>
 80008b4:	2102      	movs	r1, #2
 80008b6:	1e58      	subs	r0, r3, #1
 80008b8:	4008      	ands	r0, r1
 80008ba:	3801      	subs	r0, #1
 80008bc:	e7db      	b.n	8000876 <__gesf2+0x3a>
 80008be:	2400      	movs	r4, #0
 80008c0:	42a2      	cmp	r2, r4
 80008c2:	dc04      	bgt.n	80008ce <__gesf2+0x92>
 80008c4:	42b5      	cmp	r5, r6
 80008c6:	d8d2      	bhi.n	800086e <__gesf2+0x32>
 80008c8:	2000      	movs	r0, #0
 80008ca:	42b5      	cmp	r5, r6
 80008cc:	d2d3      	bcs.n	8000876 <__gesf2+0x3a>
 80008ce:	1e58      	subs	r0, r3, #1
 80008d0:	2301      	movs	r3, #1
 80008d2:	4398      	bics	r0, r3
 80008d4:	3001      	adds	r0, #1
 80008d6:	e7ce      	b.n	8000876 <__gesf2+0x3a>

080008d8 <__lesf2>:
 80008d8:	b530      	push	{r4, r5, lr}
 80008da:	0042      	lsls	r2, r0, #1
 80008dc:	0244      	lsls	r4, r0, #9
 80008de:	024d      	lsls	r5, r1, #9
 80008e0:	0fc3      	lsrs	r3, r0, #31
 80008e2:	0048      	lsls	r0, r1, #1
 80008e4:	0a64      	lsrs	r4, r4, #9
 80008e6:	0e12      	lsrs	r2, r2, #24
 80008e8:	0a6d      	lsrs	r5, r5, #9
 80008ea:	0e00      	lsrs	r0, r0, #24
 80008ec:	0fc9      	lsrs	r1, r1, #31
 80008ee:	2aff      	cmp	r2, #255	; 0xff
 80008f0:	d012      	beq.n	8000918 <__lesf2+0x40>
 80008f2:	28ff      	cmp	r0, #255	; 0xff
 80008f4:	d00c      	beq.n	8000910 <__lesf2+0x38>
 80008f6:	2a00      	cmp	r2, #0
 80008f8:	d112      	bne.n	8000920 <__lesf2+0x48>
 80008fa:	2800      	cmp	r0, #0
 80008fc:	d119      	bne.n	8000932 <__lesf2+0x5a>
 80008fe:	2d00      	cmp	r5, #0
 8000900:	d117      	bne.n	8000932 <__lesf2+0x5a>
 8000902:	2c00      	cmp	r4, #0
 8000904:	d02b      	beq.n	800095e <__lesf2+0x86>
 8000906:	2002      	movs	r0, #2
 8000908:	3b01      	subs	r3, #1
 800090a:	4018      	ands	r0, r3
 800090c:	3801      	subs	r0, #1
 800090e:	e026      	b.n	800095e <__lesf2+0x86>
 8000910:	2d00      	cmp	r5, #0
 8000912:	d0f0      	beq.n	80008f6 <__lesf2+0x1e>
 8000914:	2002      	movs	r0, #2
 8000916:	e022      	b.n	800095e <__lesf2+0x86>
 8000918:	2c00      	cmp	r4, #0
 800091a:	d1fb      	bne.n	8000914 <__lesf2+0x3c>
 800091c:	28ff      	cmp	r0, #255	; 0xff
 800091e:	d01f      	beq.n	8000960 <__lesf2+0x88>
 8000920:	2800      	cmp	r0, #0
 8000922:	d11f      	bne.n	8000964 <__lesf2+0x8c>
 8000924:	2d00      	cmp	r5, #0
 8000926:	d11d      	bne.n	8000964 <__lesf2+0x8c>
 8000928:	2002      	movs	r0, #2
 800092a:	3b01      	subs	r3, #1
 800092c:	4018      	ands	r0, r3
 800092e:	3801      	subs	r0, #1
 8000930:	e015      	b.n	800095e <__lesf2+0x86>
 8000932:	2c00      	cmp	r4, #0
 8000934:	d00e      	beq.n	8000954 <__lesf2+0x7c>
 8000936:	428b      	cmp	r3, r1
 8000938:	d1e5      	bne.n	8000906 <__lesf2+0x2e>
 800093a:	2200      	movs	r2, #0
 800093c:	4290      	cmp	r0, r2
 800093e:	dc04      	bgt.n	800094a <__lesf2+0x72>
 8000940:	42ac      	cmp	r4, r5
 8000942:	d8e0      	bhi.n	8000906 <__lesf2+0x2e>
 8000944:	2000      	movs	r0, #0
 8000946:	42ac      	cmp	r4, r5
 8000948:	d209      	bcs.n	800095e <__lesf2+0x86>
 800094a:	1e58      	subs	r0, r3, #1
 800094c:	2301      	movs	r3, #1
 800094e:	4398      	bics	r0, r3
 8000950:	3001      	adds	r0, #1
 8000952:	e004      	b.n	800095e <__lesf2+0x86>
 8000954:	2301      	movs	r3, #1
 8000956:	3901      	subs	r1, #1
 8000958:	4399      	bics	r1, r3
 800095a:	0008      	movs	r0, r1
 800095c:	3001      	adds	r0, #1
 800095e:	bd30      	pop	{r4, r5, pc}
 8000960:	2d00      	cmp	r5, #0
 8000962:	d1d7      	bne.n	8000914 <__lesf2+0x3c>
 8000964:	428b      	cmp	r3, r1
 8000966:	d1ce      	bne.n	8000906 <__lesf2+0x2e>
 8000968:	4282      	cmp	r2, r0
 800096a:	dde7      	ble.n	800093c <__lesf2+0x64>
 800096c:	2102      	movs	r1, #2
 800096e:	1e58      	subs	r0, r3, #1
 8000970:	4008      	ands	r0, r1
 8000972:	3801      	subs	r0, #1
 8000974:	e7f3      	b.n	800095e <__lesf2+0x86>
 8000976:	46c0      	nop			; (mov r8, r8)

08000978 <__aeabi_fmul>:
 8000978:	b5f0      	push	{r4, r5, r6, r7, lr}
 800097a:	464e      	mov	r6, r9
 800097c:	4657      	mov	r7, sl
 800097e:	4645      	mov	r5, r8
 8000980:	46de      	mov	lr, fp
 8000982:	b5e0      	push	{r5, r6, r7, lr}
 8000984:	0243      	lsls	r3, r0, #9
 8000986:	0a5b      	lsrs	r3, r3, #9
 8000988:	0045      	lsls	r5, r0, #1
 800098a:	b083      	sub	sp, #12
 800098c:	1c0f      	adds	r7, r1, #0
 800098e:	4699      	mov	r9, r3
 8000990:	0e2d      	lsrs	r5, r5, #24
 8000992:	0fc6      	lsrs	r6, r0, #31
 8000994:	2d00      	cmp	r5, #0
 8000996:	d057      	beq.n	8000a48 <__aeabi_fmul+0xd0>
 8000998:	2dff      	cmp	r5, #255	; 0xff
 800099a:	d024      	beq.n	80009e6 <__aeabi_fmul+0x6e>
 800099c:	2080      	movs	r0, #128	; 0x80
 800099e:	00db      	lsls	r3, r3, #3
 80009a0:	04c0      	lsls	r0, r0, #19
 80009a2:	4318      	orrs	r0, r3
 80009a4:	2300      	movs	r3, #0
 80009a6:	4681      	mov	r9, r0
 80009a8:	469a      	mov	sl, r3
 80009aa:	469b      	mov	fp, r3
 80009ac:	3d7f      	subs	r5, #127	; 0x7f
 80009ae:	027c      	lsls	r4, r7, #9
 80009b0:	007a      	lsls	r2, r7, #1
 80009b2:	0ffb      	lsrs	r3, r7, #31
 80009b4:	0a64      	lsrs	r4, r4, #9
 80009b6:	0e12      	lsrs	r2, r2, #24
 80009b8:	4698      	mov	r8, r3
 80009ba:	d023      	beq.n	8000a04 <__aeabi_fmul+0x8c>
 80009bc:	2aff      	cmp	r2, #255	; 0xff
 80009be:	d04b      	beq.n	8000a58 <__aeabi_fmul+0xe0>
 80009c0:	00e3      	lsls	r3, r4, #3
 80009c2:	2480      	movs	r4, #128	; 0x80
 80009c4:	2000      	movs	r0, #0
 80009c6:	04e4      	lsls	r4, r4, #19
 80009c8:	3a7f      	subs	r2, #127	; 0x7f
 80009ca:	431c      	orrs	r4, r3
 80009cc:	18ad      	adds	r5, r5, r2
 80009ce:	1c6b      	adds	r3, r5, #1
 80009d0:	4647      	mov	r7, r8
 80009d2:	9301      	str	r3, [sp, #4]
 80009d4:	4653      	mov	r3, sl
 80009d6:	4077      	eors	r7, r6
 80009d8:	003a      	movs	r2, r7
 80009da:	2b0f      	cmp	r3, #15
 80009dc:	d848      	bhi.n	8000a70 <__aeabi_fmul+0xf8>
 80009de:	497d      	ldr	r1, [pc, #500]	; (8000bd4 <__aeabi_fmul+0x25c>)
 80009e0:	009b      	lsls	r3, r3, #2
 80009e2:	58cb      	ldr	r3, [r1, r3]
 80009e4:	469f      	mov	pc, r3
 80009e6:	2b00      	cmp	r3, #0
 80009e8:	d000      	beq.n	80009ec <__aeabi_fmul+0x74>
 80009ea:	e085      	b.n	8000af8 <__aeabi_fmul+0x180>
 80009ec:	3308      	adds	r3, #8
 80009ee:	469a      	mov	sl, r3
 80009f0:	3b06      	subs	r3, #6
 80009f2:	469b      	mov	fp, r3
 80009f4:	027c      	lsls	r4, r7, #9
 80009f6:	007a      	lsls	r2, r7, #1
 80009f8:	0ffb      	lsrs	r3, r7, #31
 80009fa:	25ff      	movs	r5, #255	; 0xff
 80009fc:	0a64      	lsrs	r4, r4, #9
 80009fe:	0e12      	lsrs	r2, r2, #24
 8000a00:	4698      	mov	r8, r3
 8000a02:	d1db      	bne.n	80009bc <__aeabi_fmul+0x44>
 8000a04:	2c00      	cmp	r4, #0
 8000a06:	d000      	beq.n	8000a0a <__aeabi_fmul+0x92>
 8000a08:	e090      	b.n	8000b2c <__aeabi_fmul+0x1b4>
 8000a0a:	4652      	mov	r2, sl
 8000a0c:	2301      	movs	r3, #1
 8000a0e:	431a      	orrs	r2, r3
 8000a10:	4692      	mov	sl, r2
 8000a12:	2001      	movs	r0, #1
 8000a14:	e7db      	b.n	80009ce <__aeabi_fmul+0x56>
 8000a16:	464c      	mov	r4, r9
 8000a18:	4658      	mov	r0, fp
 8000a1a:	0017      	movs	r7, r2
 8000a1c:	2802      	cmp	r0, #2
 8000a1e:	d024      	beq.n	8000a6a <__aeabi_fmul+0xf2>
 8000a20:	2803      	cmp	r0, #3
 8000a22:	d100      	bne.n	8000a26 <__aeabi_fmul+0xae>
 8000a24:	e0cf      	b.n	8000bc6 <__aeabi_fmul+0x24e>
 8000a26:	2200      	movs	r2, #0
 8000a28:	2300      	movs	r3, #0
 8000a2a:	2801      	cmp	r0, #1
 8000a2c:	d14d      	bne.n	8000aca <__aeabi_fmul+0x152>
 8000a2e:	0258      	lsls	r0, r3, #9
 8000a30:	05d2      	lsls	r2, r2, #23
 8000a32:	0a40      	lsrs	r0, r0, #9
 8000a34:	07ff      	lsls	r7, r7, #31
 8000a36:	4310      	orrs	r0, r2
 8000a38:	4338      	orrs	r0, r7
 8000a3a:	b003      	add	sp, #12
 8000a3c:	bc3c      	pop	{r2, r3, r4, r5}
 8000a3e:	4690      	mov	r8, r2
 8000a40:	4699      	mov	r9, r3
 8000a42:	46a2      	mov	sl, r4
 8000a44:	46ab      	mov	fp, r5
 8000a46:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a48:	2b00      	cmp	r3, #0
 8000a4a:	d15b      	bne.n	8000b04 <__aeabi_fmul+0x18c>
 8000a4c:	2304      	movs	r3, #4
 8000a4e:	469a      	mov	sl, r3
 8000a50:	3b03      	subs	r3, #3
 8000a52:	2500      	movs	r5, #0
 8000a54:	469b      	mov	fp, r3
 8000a56:	e7aa      	b.n	80009ae <__aeabi_fmul+0x36>
 8000a58:	35ff      	adds	r5, #255	; 0xff
 8000a5a:	2c00      	cmp	r4, #0
 8000a5c:	d160      	bne.n	8000b20 <__aeabi_fmul+0x1a8>
 8000a5e:	4652      	mov	r2, sl
 8000a60:	2302      	movs	r3, #2
 8000a62:	431a      	orrs	r2, r3
 8000a64:	4692      	mov	sl, r2
 8000a66:	2002      	movs	r0, #2
 8000a68:	e7b1      	b.n	80009ce <__aeabi_fmul+0x56>
 8000a6a:	22ff      	movs	r2, #255	; 0xff
 8000a6c:	2300      	movs	r3, #0
 8000a6e:	e7de      	b.n	8000a2e <__aeabi_fmul+0xb6>
 8000a70:	464b      	mov	r3, r9
 8000a72:	0c1b      	lsrs	r3, r3, #16
 8000a74:	469c      	mov	ip, r3
 8000a76:	464b      	mov	r3, r9
 8000a78:	0426      	lsls	r6, r4, #16
 8000a7a:	0c36      	lsrs	r6, r6, #16
 8000a7c:	0418      	lsls	r0, r3, #16
 8000a7e:	4661      	mov	r1, ip
 8000a80:	0033      	movs	r3, r6
 8000a82:	0c22      	lsrs	r2, r4, #16
 8000a84:	4664      	mov	r4, ip
 8000a86:	0c00      	lsrs	r0, r0, #16
 8000a88:	4343      	muls	r3, r0
 8000a8a:	434e      	muls	r6, r1
 8000a8c:	4350      	muls	r0, r2
 8000a8e:	4354      	muls	r4, r2
 8000a90:	1980      	adds	r0, r0, r6
 8000a92:	0c1a      	lsrs	r2, r3, #16
 8000a94:	1812      	adds	r2, r2, r0
 8000a96:	4296      	cmp	r6, r2
 8000a98:	d903      	bls.n	8000aa2 <__aeabi_fmul+0x12a>
 8000a9a:	2180      	movs	r1, #128	; 0x80
 8000a9c:	0249      	lsls	r1, r1, #9
 8000a9e:	468c      	mov	ip, r1
 8000aa0:	4464      	add	r4, ip
 8000aa2:	041b      	lsls	r3, r3, #16
 8000aa4:	0c1b      	lsrs	r3, r3, #16
 8000aa6:	0410      	lsls	r0, r2, #16
 8000aa8:	18c0      	adds	r0, r0, r3
 8000aaa:	0183      	lsls	r3, r0, #6
 8000aac:	1e5e      	subs	r6, r3, #1
 8000aae:	41b3      	sbcs	r3, r6
 8000ab0:	0e80      	lsrs	r0, r0, #26
 8000ab2:	4318      	orrs	r0, r3
 8000ab4:	0c13      	lsrs	r3, r2, #16
 8000ab6:	191b      	adds	r3, r3, r4
 8000ab8:	019b      	lsls	r3, r3, #6
 8000aba:	4303      	orrs	r3, r0
 8000abc:	001c      	movs	r4, r3
 8000abe:	0123      	lsls	r3, r4, #4
 8000ac0:	d579      	bpl.n	8000bb6 <__aeabi_fmul+0x23e>
 8000ac2:	2301      	movs	r3, #1
 8000ac4:	0862      	lsrs	r2, r4, #1
 8000ac6:	401c      	ands	r4, r3
 8000ac8:	4314      	orrs	r4, r2
 8000aca:	9a01      	ldr	r2, [sp, #4]
 8000acc:	327f      	adds	r2, #127	; 0x7f
 8000ace:	2a00      	cmp	r2, #0
 8000ad0:	dd4d      	ble.n	8000b6e <__aeabi_fmul+0x1f6>
 8000ad2:	0763      	lsls	r3, r4, #29
 8000ad4:	d004      	beq.n	8000ae0 <__aeabi_fmul+0x168>
 8000ad6:	230f      	movs	r3, #15
 8000ad8:	4023      	ands	r3, r4
 8000ada:	2b04      	cmp	r3, #4
 8000adc:	d000      	beq.n	8000ae0 <__aeabi_fmul+0x168>
 8000ade:	3404      	adds	r4, #4
 8000ae0:	0123      	lsls	r3, r4, #4
 8000ae2:	d503      	bpl.n	8000aec <__aeabi_fmul+0x174>
 8000ae4:	4b3c      	ldr	r3, [pc, #240]	; (8000bd8 <__aeabi_fmul+0x260>)
 8000ae6:	9a01      	ldr	r2, [sp, #4]
 8000ae8:	401c      	ands	r4, r3
 8000aea:	3280      	adds	r2, #128	; 0x80
 8000aec:	2afe      	cmp	r2, #254	; 0xfe
 8000aee:	dcbc      	bgt.n	8000a6a <__aeabi_fmul+0xf2>
 8000af0:	01a3      	lsls	r3, r4, #6
 8000af2:	0a5b      	lsrs	r3, r3, #9
 8000af4:	b2d2      	uxtb	r2, r2
 8000af6:	e79a      	b.n	8000a2e <__aeabi_fmul+0xb6>
 8000af8:	230c      	movs	r3, #12
 8000afa:	469a      	mov	sl, r3
 8000afc:	3b09      	subs	r3, #9
 8000afe:	25ff      	movs	r5, #255	; 0xff
 8000b00:	469b      	mov	fp, r3
 8000b02:	e754      	b.n	80009ae <__aeabi_fmul+0x36>
 8000b04:	0018      	movs	r0, r3
 8000b06:	f001 ff65 	bl	80029d4 <__clzsi2>
 8000b0a:	464a      	mov	r2, r9
 8000b0c:	1f43      	subs	r3, r0, #5
 8000b0e:	2576      	movs	r5, #118	; 0x76
 8000b10:	409a      	lsls	r2, r3
 8000b12:	2300      	movs	r3, #0
 8000b14:	426d      	negs	r5, r5
 8000b16:	4691      	mov	r9, r2
 8000b18:	1a2d      	subs	r5, r5, r0
 8000b1a:	469a      	mov	sl, r3
 8000b1c:	469b      	mov	fp, r3
 8000b1e:	e746      	b.n	80009ae <__aeabi_fmul+0x36>
 8000b20:	4652      	mov	r2, sl
 8000b22:	2303      	movs	r3, #3
 8000b24:	431a      	orrs	r2, r3
 8000b26:	4692      	mov	sl, r2
 8000b28:	2003      	movs	r0, #3
 8000b2a:	e750      	b.n	80009ce <__aeabi_fmul+0x56>
 8000b2c:	0020      	movs	r0, r4
 8000b2e:	f001 ff51 	bl	80029d4 <__clzsi2>
 8000b32:	1f43      	subs	r3, r0, #5
 8000b34:	1a2d      	subs	r5, r5, r0
 8000b36:	409c      	lsls	r4, r3
 8000b38:	3d76      	subs	r5, #118	; 0x76
 8000b3a:	2000      	movs	r0, #0
 8000b3c:	e747      	b.n	80009ce <__aeabi_fmul+0x56>
 8000b3e:	2380      	movs	r3, #128	; 0x80
 8000b40:	2700      	movs	r7, #0
 8000b42:	03db      	lsls	r3, r3, #15
 8000b44:	22ff      	movs	r2, #255	; 0xff
 8000b46:	e772      	b.n	8000a2e <__aeabi_fmul+0xb6>
 8000b48:	4642      	mov	r2, r8
 8000b4a:	e766      	b.n	8000a1a <__aeabi_fmul+0xa2>
 8000b4c:	464c      	mov	r4, r9
 8000b4e:	0032      	movs	r2, r6
 8000b50:	4658      	mov	r0, fp
 8000b52:	e762      	b.n	8000a1a <__aeabi_fmul+0xa2>
 8000b54:	2380      	movs	r3, #128	; 0x80
 8000b56:	464a      	mov	r2, r9
 8000b58:	03db      	lsls	r3, r3, #15
 8000b5a:	421a      	tst	r2, r3
 8000b5c:	d022      	beq.n	8000ba4 <__aeabi_fmul+0x22c>
 8000b5e:	421c      	tst	r4, r3
 8000b60:	d120      	bne.n	8000ba4 <__aeabi_fmul+0x22c>
 8000b62:	4323      	orrs	r3, r4
 8000b64:	025b      	lsls	r3, r3, #9
 8000b66:	0a5b      	lsrs	r3, r3, #9
 8000b68:	4647      	mov	r7, r8
 8000b6a:	22ff      	movs	r2, #255	; 0xff
 8000b6c:	e75f      	b.n	8000a2e <__aeabi_fmul+0xb6>
 8000b6e:	2301      	movs	r3, #1
 8000b70:	1a9a      	subs	r2, r3, r2
 8000b72:	2a1b      	cmp	r2, #27
 8000b74:	dc21      	bgt.n	8000bba <__aeabi_fmul+0x242>
 8000b76:	0023      	movs	r3, r4
 8000b78:	9901      	ldr	r1, [sp, #4]
 8000b7a:	40d3      	lsrs	r3, r2
 8000b7c:	319e      	adds	r1, #158	; 0x9e
 8000b7e:	408c      	lsls	r4, r1
 8000b80:	001a      	movs	r2, r3
 8000b82:	0023      	movs	r3, r4
 8000b84:	1e5c      	subs	r4, r3, #1
 8000b86:	41a3      	sbcs	r3, r4
 8000b88:	4313      	orrs	r3, r2
 8000b8a:	075a      	lsls	r2, r3, #29
 8000b8c:	d004      	beq.n	8000b98 <__aeabi_fmul+0x220>
 8000b8e:	220f      	movs	r2, #15
 8000b90:	401a      	ands	r2, r3
 8000b92:	2a04      	cmp	r2, #4
 8000b94:	d000      	beq.n	8000b98 <__aeabi_fmul+0x220>
 8000b96:	3304      	adds	r3, #4
 8000b98:	015a      	lsls	r2, r3, #5
 8000b9a:	d411      	bmi.n	8000bc0 <__aeabi_fmul+0x248>
 8000b9c:	019b      	lsls	r3, r3, #6
 8000b9e:	0a5b      	lsrs	r3, r3, #9
 8000ba0:	2200      	movs	r2, #0
 8000ba2:	e744      	b.n	8000a2e <__aeabi_fmul+0xb6>
 8000ba4:	2380      	movs	r3, #128	; 0x80
 8000ba6:	464a      	mov	r2, r9
 8000ba8:	03db      	lsls	r3, r3, #15
 8000baa:	4313      	orrs	r3, r2
 8000bac:	025b      	lsls	r3, r3, #9
 8000bae:	0a5b      	lsrs	r3, r3, #9
 8000bb0:	0037      	movs	r7, r6
 8000bb2:	22ff      	movs	r2, #255	; 0xff
 8000bb4:	e73b      	b.n	8000a2e <__aeabi_fmul+0xb6>
 8000bb6:	9501      	str	r5, [sp, #4]
 8000bb8:	e787      	b.n	8000aca <__aeabi_fmul+0x152>
 8000bba:	2200      	movs	r2, #0
 8000bbc:	2300      	movs	r3, #0
 8000bbe:	e736      	b.n	8000a2e <__aeabi_fmul+0xb6>
 8000bc0:	2201      	movs	r2, #1
 8000bc2:	2300      	movs	r3, #0
 8000bc4:	e733      	b.n	8000a2e <__aeabi_fmul+0xb6>
 8000bc6:	2380      	movs	r3, #128	; 0x80
 8000bc8:	03db      	lsls	r3, r3, #15
 8000bca:	4323      	orrs	r3, r4
 8000bcc:	025b      	lsls	r3, r3, #9
 8000bce:	0a5b      	lsrs	r3, r3, #9
 8000bd0:	22ff      	movs	r2, #255	; 0xff
 8000bd2:	e72c      	b.n	8000a2e <__aeabi_fmul+0xb6>
 8000bd4:	08009bfc 	.word	0x08009bfc
 8000bd8:	f7ffffff 	.word	0xf7ffffff

08000bdc <__aeabi_fsub>:
 8000bdc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000bde:	4647      	mov	r7, r8
 8000be0:	46ce      	mov	lr, r9
 8000be2:	0044      	lsls	r4, r0, #1
 8000be4:	0fc2      	lsrs	r2, r0, #31
 8000be6:	b580      	push	{r7, lr}
 8000be8:	0247      	lsls	r7, r0, #9
 8000bea:	0248      	lsls	r0, r1, #9
 8000bec:	0a40      	lsrs	r0, r0, #9
 8000bee:	4684      	mov	ip, r0
 8000bf0:	4666      	mov	r6, ip
 8000bf2:	0048      	lsls	r0, r1, #1
 8000bf4:	0a7f      	lsrs	r7, r7, #9
 8000bf6:	0e24      	lsrs	r4, r4, #24
 8000bf8:	00f6      	lsls	r6, r6, #3
 8000bfa:	0025      	movs	r5, r4
 8000bfc:	4690      	mov	r8, r2
 8000bfe:	00fb      	lsls	r3, r7, #3
 8000c00:	0e00      	lsrs	r0, r0, #24
 8000c02:	0fc9      	lsrs	r1, r1, #31
 8000c04:	46b1      	mov	r9, r6
 8000c06:	28ff      	cmp	r0, #255	; 0xff
 8000c08:	d100      	bne.n	8000c0c <__aeabi_fsub+0x30>
 8000c0a:	e085      	b.n	8000d18 <__aeabi_fsub+0x13c>
 8000c0c:	2601      	movs	r6, #1
 8000c0e:	4071      	eors	r1, r6
 8000c10:	1a26      	subs	r6, r4, r0
 8000c12:	4291      	cmp	r1, r2
 8000c14:	d057      	beq.n	8000cc6 <__aeabi_fsub+0xea>
 8000c16:	2e00      	cmp	r6, #0
 8000c18:	dd43      	ble.n	8000ca2 <__aeabi_fsub+0xc6>
 8000c1a:	2800      	cmp	r0, #0
 8000c1c:	d000      	beq.n	8000c20 <__aeabi_fsub+0x44>
 8000c1e:	e07f      	b.n	8000d20 <__aeabi_fsub+0x144>
 8000c20:	4649      	mov	r1, r9
 8000c22:	2900      	cmp	r1, #0
 8000c24:	d100      	bne.n	8000c28 <__aeabi_fsub+0x4c>
 8000c26:	e0aa      	b.n	8000d7e <__aeabi_fsub+0x1a2>
 8000c28:	3e01      	subs	r6, #1
 8000c2a:	2e00      	cmp	r6, #0
 8000c2c:	d000      	beq.n	8000c30 <__aeabi_fsub+0x54>
 8000c2e:	e0f7      	b.n	8000e20 <__aeabi_fsub+0x244>
 8000c30:	1a5b      	subs	r3, r3, r1
 8000c32:	015a      	lsls	r2, r3, #5
 8000c34:	d400      	bmi.n	8000c38 <__aeabi_fsub+0x5c>
 8000c36:	e08b      	b.n	8000d50 <__aeabi_fsub+0x174>
 8000c38:	019b      	lsls	r3, r3, #6
 8000c3a:	099c      	lsrs	r4, r3, #6
 8000c3c:	0020      	movs	r0, r4
 8000c3e:	f001 fec9 	bl	80029d4 <__clzsi2>
 8000c42:	3805      	subs	r0, #5
 8000c44:	4084      	lsls	r4, r0
 8000c46:	4285      	cmp	r5, r0
 8000c48:	dd00      	ble.n	8000c4c <__aeabi_fsub+0x70>
 8000c4a:	e0d3      	b.n	8000df4 <__aeabi_fsub+0x218>
 8000c4c:	1b45      	subs	r5, r0, r5
 8000c4e:	0023      	movs	r3, r4
 8000c50:	2020      	movs	r0, #32
 8000c52:	3501      	adds	r5, #1
 8000c54:	40eb      	lsrs	r3, r5
 8000c56:	1b45      	subs	r5, r0, r5
 8000c58:	40ac      	lsls	r4, r5
 8000c5a:	1e62      	subs	r2, r4, #1
 8000c5c:	4194      	sbcs	r4, r2
 8000c5e:	4323      	orrs	r3, r4
 8000c60:	2407      	movs	r4, #7
 8000c62:	2500      	movs	r5, #0
 8000c64:	401c      	ands	r4, r3
 8000c66:	2201      	movs	r2, #1
 8000c68:	4641      	mov	r1, r8
 8000c6a:	400a      	ands	r2, r1
 8000c6c:	2c00      	cmp	r4, #0
 8000c6e:	d004      	beq.n	8000c7a <__aeabi_fsub+0x9e>
 8000c70:	210f      	movs	r1, #15
 8000c72:	4019      	ands	r1, r3
 8000c74:	2904      	cmp	r1, #4
 8000c76:	d000      	beq.n	8000c7a <__aeabi_fsub+0x9e>
 8000c78:	3304      	adds	r3, #4
 8000c7a:	0159      	lsls	r1, r3, #5
 8000c7c:	d400      	bmi.n	8000c80 <__aeabi_fsub+0xa4>
 8000c7e:	e080      	b.n	8000d82 <__aeabi_fsub+0x1a6>
 8000c80:	3501      	adds	r5, #1
 8000c82:	b2ec      	uxtb	r4, r5
 8000c84:	2dff      	cmp	r5, #255	; 0xff
 8000c86:	d000      	beq.n	8000c8a <__aeabi_fsub+0xae>
 8000c88:	e0a3      	b.n	8000dd2 <__aeabi_fsub+0x1f6>
 8000c8a:	24ff      	movs	r4, #255	; 0xff
 8000c8c:	2300      	movs	r3, #0
 8000c8e:	025b      	lsls	r3, r3, #9
 8000c90:	05e4      	lsls	r4, r4, #23
 8000c92:	0a58      	lsrs	r0, r3, #9
 8000c94:	07d2      	lsls	r2, r2, #31
 8000c96:	4320      	orrs	r0, r4
 8000c98:	4310      	orrs	r0, r2
 8000c9a:	bc0c      	pop	{r2, r3}
 8000c9c:	4690      	mov	r8, r2
 8000c9e:	4699      	mov	r9, r3
 8000ca0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000ca2:	2e00      	cmp	r6, #0
 8000ca4:	d174      	bne.n	8000d90 <__aeabi_fsub+0x1b4>
 8000ca6:	1c60      	adds	r0, r4, #1
 8000ca8:	b2c0      	uxtb	r0, r0
 8000caa:	2801      	cmp	r0, #1
 8000cac:	dc00      	bgt.n	8000cb0 <__aeabi_fsub+0xd4>
 8000cae:	e0a7      	b.n	8000e00 <__aeabi_fsub+0x224>
 8000cb0:	464a      	mov	r2, r9
 8000cb2:	1a9c      	subs	r4, r3, r2
 8000cb4:	0162      	lsls	r2, r4, #5
 8000cb6:	d500      	bpl.n	8000cba <__aeabi_fsub+0xde>
 8000cb8:	e0b6      	b.n	8000e28 <__aeabi_fsub+0x24c>
 8000cba:	2c00      	cmp	r4, #0
 8000cbc:	d1be      	bne.n	8000c3c <__aeabi_fsub+0x60>
 8000cbe:	2200      	movs	r2, #0
 8000cc0:	2400      	movs	r4, #0
 8000cc2:	2300      	movs	r3, #0
 8000cc4:	e7e3      	b.n	8000c8e <__aeabi_fsub+0xb2>
 8000cc6:	2e00      	cmp	r6, #0
 8000cc8:	dc00      	bgt.n	8000ccc <__aeabi_fsub+0xf0>
 8000cca:	e085      	b.n	8000dd8 <__aeabi_fsub+0x1fc>
 8000ccc:	2800      	cmp	r0, #0
 8000cce:	d046      	beq.n	8000d5e <__aeabi_fsub+0x182>
 8000cd0:	2cff      	cmp	r4, #255	; 0xff
 8000cd2:	d049      	beq.n	8000d68 <__aeabi_fsub+0x18c>
 8000cd4:	2280      	movs	r2, #128	; 0x80
 8000cd6:	4648      	mov	r0, r9
 8000cd8:	04d2      	lsls	r2, r2, #19
 8000cda:	4310      	orrs	r0, r2
 8000cdc:	4681      	mov	r9, r0
 8000cde:	2201      	movs	r2, #1
 8000ce0:	2e1b      	cmp	r6, #27
 8000ce2:	dc09      	bgt.n	8000cf8 <__aeabi_fsub+0x11c>
 8000ce4:	2020      	movs	r0, #32
 8000ce6:	464c      	mov	r4, r9
 8000ce8:	1b80      	subs	r0, r0, r6
 8000cea:	4084      	lsls	r4, r0
 8000cec:	464a      	mov	r2, r9
 8000cee:	0020      	movs	r0, r4
 8000cf0:	40f2      	lsrs	r2, r6
 8000cf2:	1e44      	subs	r4, r0, #1
 8000cf4:	41a0      	sbcs	r0, r4
 8000cf6:	4302      	orrs	r2, r0
 8000cf8:	189b      	adds	r3, r3, r2
 8000cfa:	015a      	lsls	r2, r3, #5
 8000cfc:	d528      	bpl.n	8000d50 <__aeabi_fsub+0x174>
 8000cfe:	3501      	adds	r5, #1
 8000d00:	2dff      	cmp	r5, #255	; 0xff
 8000d02:	d100      	bne.n	8000d06 <__aeabi_fsub+0x12a>
 8000d04:	e0a8      	b.n	8000e58 <__aeabi_fsub+0x27c>
 8000d06:	2201      	movs	r2, #1
 8000d08:	2407      	movs	r4, #7
 8000d0a:	4994      	ldr	r1, [pc, #592]	; (8000f5c <__aeabi_fsub+0x380>)
 8000d0c:	401a      	ands	r2, r3
 8000d0e:	085b      	lsrs	r3, r3, #1
 8000d10:	400b      	ands	r3, r1
 8000d12:	4313      	orrs	r3, r2
 8000d14:	401c      	ands	r4, r3
 8000d16:	e7a6      	b.n	8000c66 <__aeabi_fsub+0x8a>
 8000d18:	2e00      	cmp	r6, #0
 8000d1a:	d000      	beq.n	8000d1e <__aeabi_fsub+0x142>
 8000d1c:	e778      	b.n	8000c10 <__aeabi_fsub+0x34>
 8000d1e:	e775      	b.n	8000c0c <__aeabi_fsub+0x30>
 8000d20:	2cff      	cmp	r4, #255	; 0xff
 8000d22:	d054      	beq.n	8000dce <__aeabi_fsub+0x1f2>
 8000d24:	2280      	movs	r2, #128	; 0x80
 8000d26:	4649      	mov	r1, r9
 8000d28:	04d2      	lsls	r2, r2, #19
 8000d2a:	4311      	orrs	r1, r2
 8000d2c:	4689      	mov	r9, r1
 8000d2e:	2201      	movs	r2, #1
 8000d30:	2e1b      	cmp	r6, #27
 8000d32:	dc09      	bgt.n	8000d48 <__aeabi_fsub+0x16c>
 8000d34:	2120      	movs	r1, #32
 8000d36:	4648      	mov	r0, r9
 8000d38:	1b89      	subs	r1, r1, r6
 8000d3a:	4088      	lsls	r0, r1
 8000d3c:	464a      	mov	r2, r9
 8000d3e:	0001      	movs	r1, r0
 8000d40:	40f2      	lsrs	r2, r6
 8000d42:	1e48      	subs	r0, r1, #1
 8000d44:	4181      	sbcs	r1, r0
 8000d46:	430a      	orrs	r2, r1
 8000d48:	1a9b      	subs	r3, r3, r2
 8000d4a:	015a      	lsls	r2, r3, #5
 8000d4c:	d500      	bpl.n	8000d50 <__aeabi_fsub+0x174>
 8000d4e:	e773      	b.n	8000c38 <__aeabi_fsub+0x5c>
 8000d50:	2201      	movs	r2, #1
 8000d52:	4641      	mov	r1, r8
 8000d54:	400a      	ands	r2, r1
 8000d56:	0759      	lsls	r1, r3, #29
 8000d58:	d000      	beq.n	8000d5c <__aeabi_fsub+0x180>
 8000d5a:	e789      	b.n	8000c70 <__aeabi_fsub+0x94>
 8000d5c:	e011      	b.n	8000d82 <__aeabi_fsub+0x1a6>
 8000d5e:	4648      	mov	r0, r9
 8000d60:	2800      	cmp	r0, #0
 8000d62:	d158      	bne.n	8000e16 <__aeabi_fsub+0x23a>
 8000d64:	2cff      	cmp	r4, #255	; 0xff
 8000d66:	d10c      	bne.n	8000d82 <__aeabi_fsub+0x1a6>
 8000d68:	08db      	lsrs	r3, r3, #3
 8000d6a:	2b00      	cmp	r3, #0
 8000d6c:	d100      	bne.n	8000d70 <__aeabi_fsub+0x194>
 8000d6e:	e78c      	b.n	8000c8a <__aeabi_fsub+0xae>
 8000d70:	2080      	movs	r0, #128	; 0x80
 8000d72:	03c0      	lsls	r0, r0, #15
 8000d74:	4303      	orrs	r3, r0
 8000d76:	025b      	lsls	r3, r3, #9
 8000d78:	0a5b      	lsrs	r3, r3, #9
 8000d7a:	24ff      	movs	r4, #255	; 0xff
 8000d7c:	e787      	b.n	8000c8e <__aeabi_fsub+0xb2>
 8000d7e:	2cff      	cmp	r4, #255	; 0xff
 8000d80:	d025      	beq.n	8000dce <__aeabi_fsub+0x1f2>
 8000d82:	08db      	lsrs	r3, r3, #3
 8000d84:	2dff      	cmp	r5, #255	; 0xff
 8000d86:	d0f0      	beq.n	8000d6a <__aeabi_fsub+0x18e>
 8000d88:	025b      	lsls	r3, r3, #9
 8000d8a:	0a5b      	lsrs	r3, r3, #9
 8000d8c:	b2ec      	uxtb	r4, r5
 8000d8e:	e77e      	b.n	8000c8e <__aeabi_fsub+0xb2>
 8000d90:	2c00      	cmp	r4, #0
 8000d92:	d04d      	beq.n	8000e30 <__aeabi_fsub+0x254>
 8000d94:	28ff      	cmp	r0, #255	; 0xff
 8000d96:	d018      	beq.n	8000dca <__aeabi_fsub+0x1ee>
 8000d98:	2480      	movs	r4, #128	; 0x80
 8000d9a:	04e4      	lsls	r4, r4, #19
 8000d9c:	4272      	negs	r2, r6
 8000d9e:	4323      	orrs	r3, r4
 8000da0:	2a1b      	cmp	r2, #27
 8000da2:	dd00      	ble.n	8000da6 <__aeabi_fsub+0x1ca>
 8000da4:	e0c4      	b.n	8000f30 <__aeabi_fsub+0x354>
 8000da6:	001c      	movs	r4, r3
 8000da8:	2520      	movs	r5, #32
 8000daa:	40d4      	lsrs	r4, r2
 8000dac:	1aaa      	subs	r2, r5, r2
 8000dae:	4093      	lsls	r3, r2
 8000db0:	1e5a      	subs	r2, r3, #1
 8000db2:	4193      	sbcs	r3, r2
 8000db4:	4323      	orrs	r3, r4
 8000db6:	464a      	mov	r2, r9
 8000db8:	0005      	movs	r5, r0
 8000dba:	1ad3      	subs	r3, r2, r3
 8000dbc:	4688      	mov	r8, r1
 8000dbe:	e738      	b.n	8000c32 <__aeabi_fsub+0x56>
 8000dc0:	1c72      	adds	r2, r6, #1
 8000dc2:	d0f8      	beq.n	8000db6 <__aeabi_fsub+0x1da>
 8000dc4:	43f2      	mvns	r2, r6
 8000dc6:	28ff      	cmp	r0, #255	; 0xff
 8000dc8:	d1ea      	bne.n	8000da0 <__aeabi_fsub+0x1c4>
 8000dca:	000a      	movs	r2, r1
 8000dcc:	464b      	mov	r3, r9
 8000dce:	25ff      	movs	r5, #255	; 0xff
 8000dd0:	e7d7      	b.n	8000d82 <__aeabi_fsub+0x1a6>
 8000dd2:	019b      	lsls	r3, r3, #6
 8000dd4:	0a5b      	lsrs	r3, r3, #9
 8000dd6:	e75a      	b.n	8000c8e <__aeabi_fsub+0xb2>
 8000dd8:	2e00      	cmp	r6, #0
 8000dda:	d141      	bne.n	8000e60 <__aeabi_fsub+0x284>
 8000ddc:	1c65      	adds	r5, r4, #1
 8000dde:	b2e9      	uxtb	r1, r5
 8000de0:	2901      	cmp	r1, #1
 8000de2:	dd45      	ble.n	8000e70 <__aeabi_fsub+0x294>
 8000de4:	2dff      	cmp	r5, #255	; 0xff
 8000de6:	d100      	bne.n	8000dea <__aeabi_fsub+0x20e>
 8000de8:	e74f      	b.n	8000c8a <__aeabi_fsub+0xae>
 8000dea:	2407      	movs	r4, #7
 8000dec:	444b      	add	r3, r9
 8000dee:	085b      	lsrs	r3, r3, #1
 8000df0:	401c      	ands	r4, r3
 8000df2:	e738      	b.n	8000c66 <__aeabi_fsub+0x8a>
 8000df4:	2207      	movs	r2, #7
 8000df6:	4b5a      	ldr	r3, [pc, #360]	; (8000f60 <__aeabi_fsub+0x384>)
 8000df8:	1a2d      	subs	r5, r5, r0
 8000dfa:	4023      	ands	r3, r4
 8000dfc:	4014      	ands	r4, r2
 8000dfe:	e732      	b.n	8000c66 <__aeabi_fsub+0x8a>
 8000e00:	2c00      	cmp	r4, #0
 8000e02:	d11d      	bne.n	8000e40 <__aeabi_fsub+0x264>
 8000e04:	2b00      	cmp	r3, #0
 8000e06:	d17a      	bne.n	8000efe <__aeabi_fsub+0x322>
 8000e08:	464b      	mov	r3, r9
 8000e0a:	2b00      	cmp	r3, #0
 8000e0c:	d100      	bne.n	8000e10 <__aeabi_fsub+0x234>
 8000e0e:	e091      	b.n	8000f34 <__aeabi_fsub+0x358>
 8000e10:	000a      	movs	r2, r1
 8000e12:	2500      	movs	r5, #0
 8000e14:	e7b5      	b.n	8000d82 <__aeabi_fsub+0x1a6>
 8000e16:	3e01      	subs	r6, #1
 8000e18:	2e00      	cmp	r6, #0
 8000e1a:	d119      	bne.n	8000e50 <__aeabi_fsub+0x274>
 8000e1c:	444b      	add	r3, r9
 8000e1e:	e76c      	b.n	8000cfa <__aeabi_fsub+0x11e>
 8000e20:	2cff      	cmp	r4, #255	; 0xff
 8000e22:	d184      	bne.n	8000d2e <__aeabi_fsub+0x152>
 8000e24:	25ff      	movs	r5, #255	; 0xff
 8000e26:	e7ac      	b.n	8000d82 <__aeabi_fsub+0x1a6>
 8000e28:	464a      	mov	r2, r9
 8000e2a:	4688      	mov	r8, r1
 8000e2c:	1ad4      	subs	r4, r2, r3
 8000e2e:	e705      	b.n	8000c3c <__aeabi_fsub+0x60>
 8000e30:	2b00      	cmp	r3, #0
 8000e32:	d1c5      	bne.n	8000dc0 <__aeabi_fsub+0x1e4>
 8000e34:	000a      	movs	r2, r1
 8000e36:	28ff      	cmp	r0, #255	; 0xff
 8000e38:	d0c8      	beq.n	8000dcc <__aeabi_fsub+0x1f0>
 8000e3a:	0005      	movs	r5, r0
 8000e3c:	464b      	mov	r3, r9
 8000e3e:	e7a0      	b.n	8000d82 <__aeabi_fsub+0x1a6>
 8000e40:	2b00      	cmp	r3, #0
 8000e42:	d149      	bne.n	8000ed8 <__aeabi_fsub+0x2fc>
 8000e44:	464b      	mov	r3, r9
 8000e46:	2b00      	cmp	r3, #0
 8000e48:	d077      	beq.n	8000f3a <__aeabi_fsub+0x35e>
 8000e4a:	000a      	movs	r2, r1
 8000e4c:	25ff      	movs	r5, #255	; 0xff
 8000e4e:	e798      	b.n	8000d82 <__aeabi_fsub+0x1a6>
 8000e50:	2cff      	cmp	r4, #255	; 0xff
 8000e52:	d000      	beq.n	8000e56 <__aeabi_fsub+0x27a>
 8000e54:	e743      	b.n	8000cde <__aeabi_fsub+0x102>
 8000e56:	e787      	b.n	8000d68 <__aeabi_fsub+0x18c>
 8000e58:	000a      	movs	r2, r1
 8000e5a:	24ff      	movs	r4, #255	; 0xff
 8000e5c:	2300      	movs	r3, #0
 8000e5e:	e716      	b.n	8000c8e <__aeabi_fsub+0xb2>
 8000e60:	2c00      	cmp	r4, #0
 8000e62:	d115      	bne.n	8000e90 <__aeabi_fsub+0x2b4>
 8000e64:	2b00      	cmp	r3, #0
 8000e66:	d157      	bne.n	8000f18 <__aeabi_fsub+0x33c>
 8000e68:	28ff      	cmp	r0, #255	; 0xff
 8000e6a:	d1e6      	bne.n	8000e3a <__aeabi_fsub+0x25e>
 8000e6c:	464b      	mov	r3, r9
 8000e6e:	e77b      	b.n	8000d68 <__aeabi_fsub+0x18c>
 8000e70:	2c00      	cmp	r4, #0
 8000e72:	d120      	bne.n	8000eb6 <__aeabi_fsub+0x2da>
 8000e74:	2b00      	cmp	r3, #0
 8000e76:	d057      	beq.n	8000f28 <__aeabi_fsub+0x34c>
 8000e78:	4649      	mov	r1, r9
 8000e7a:	2900      	cmp	r1, #0
 8000e7c:	d053      	beq.n	8000f26 <__aeabi_fsub+0x34a>
 8000e7e:	444b      	add	r3, r9
 8000e80:	015a      	lsls	r2, r3, #5
 8000e82:	d568      	bpl.n	8000f56 <__aeabi_fsub+0x37a>
 8000e84:	2407      	movs	r4, #7
 8000e86:	4a36      	ldr	r2, [pc, #216]	; (8000f60 <__aeabi_fsub+0x384>)
 8000e88:	401c      	ands	r4, r3
 8000e8a:	2501      	movs	r5, #1
 8000e8c:	4013      	ands	r3, r2
 8000e8e:	e6ea      	b.n	8000c66 <__aeabi_fsub+0x8a>
 8000e90:	28ff      	cmp	r0, #255	; 0xff
 8000e92:	d0eb      	beq.n	8000e6c <__aeabi_fsub+0x290>
 8000e94:	2280      	movs	r2, #128	; 0x80
 8000e96:	04d2      	lsls	r2, r2, #19
 8000e98:	4276      	negs	r6, r6
 8000e9a:	4313      	orrs	r3, r2
 8000e9c:	2e1b      	cmp	r6, #27
 8000e9e:	dc53      	bgt.n	8000f48 <__aeabi_fsub+0x36c>
 8000ea0:	2520      	movs	r5, #32
 8000ea2:	1bad      	subs	r5, r5, r6
 8000ea4:	001a      	movs	r2, r3
 8000ea6:	40ab      	lsls	r3, r5
 8000ea8:	40f2      	lsrs	r2, r6
 8000eaa:	1e5c      	subs	r4, r3, #1
 8000eac:	41a3      	sbcs	r3, r4
 8000eae:	4313      	orrs	r3, r2
 8000eb0:	444b      	add	r3, r9
 8000eb2:	0005      	movs	r5, r0
 8000eb4:	e721      	b.n	8000cfa <__aeabi_fsub+0x11e>
 8000eb6:	2b00      	cmp	r3, #0
 8000eb8:	d0d8      	beq.n	8000e6c <__aeabi_fsub+0x290>
 8000eba:	4649      	mov	r1, r9
 8000ebc:	2900      	cmp	r1, #0
 8000ebe:	d100      	bne.n	8000ec2 <__aeabi_fsub+0x2e6>
 8000ec0:	e752      	b.n	8000d68 <__aeabi_fsub+0x18c>
 8000ec2:	2180      	movs	r1, #128	; 0x80
 8000ec4:	03c9      	lsls	r1, r1, #15
 8000ec6:	420f      	tst	r7, r1
 8000ec8:	d100      	bne.n	8000ecc <__aeabi_fsub+0x2f0>
 8000eca:	e74d      	b.n	8000d68 <__aeabi_fsub+0x18c>
 8000ecc:	4660      	mov	r0, ip
 8000ece:	4208      	tst	r0, r1
 8000ed0:	d000      	beq.n	8000ed4 <__aeabi_fsub+0x2f8>
 8000ed2:	e749      	b.n	8000d68 <__aeabi_fsub+0x18c>
 8000ed4:	464b      	mov	r3, r9
 8000ed6:	e747      	b.n	8000d68 <__aeabi_fsub+0x18c>
 8000ed8:	4648      	mov	r0, r9
 8000eda:	25ff      	movs	r5, #255	; 0xff
 8000edc:	2800      	cmp	r0, #0
 8000ede:	d100      	bne.n	8000ee2 <__aeabi_fsub+0x306>
 8000ee0:	e74f      	b.n	8000d82 <__aeabi_fsub+0x1a6>
 8000ee2:	2280      	movs	r2, #128	; 0x80
 8000ee4:	03d2      	lsls	r2, r2, #15
 8000ee6:	4217      	tst	r7, r2
 8000ee8:	d004      	beq.n	8000ef4 <__aeabi_fsub+0x318>
 8000eea:	4660      	mov	r0, ip
 8000eec:	4210      	tst	r0, r2
 8000eee:	d101      	bne.n	8000ef4 <__aeabi_fsub+0x318>
 8000ef0:	464b      	mov	r3, r9
 8000ef2:	4688      	mov	r8, r1
 8000ef4:	2201      	movs	r2, #1
 8000ef6:	4641      	mov	r1, r8
 8000ef8:	25ff      	movs	r5, #255	; 0xff
 8000efa:	400a      	ands	r2, r1
 8000efc:	e741      	b.n	8000d82 <__aeabi_fsub+0x1a6>
 8000efe:	4648      	mov	r0, r9
 8000f00:	2800      	cmp	r0, #0
 8000f02:	d01f      	beq.n	8000f44 <__aeabi_fsub+0x368>
 8000f04:	1a1a      	subs	r2, r3, r0
 8000f06:	0150      	lsls	r0, r2, #5
 8000f08:	d520      	bpl.n	8000f4c <__aeabi_fsub+0x370>
 8000f0a:	464a      	mov	r2, r9
 8000f0c:	2407      	movs	r4, #7
 8000f0e:	1ad3      	subs	r3, r2, r3
 8000f10:	401c      	ands	r4, r3
 8000f12:	4688      	mov	r8, r1
 8000f14:	2500      	movs	r5, #0
 8000f16:	e6a6      	b.n	8000c66 <__aeabi_fsub+0x8a>
 8000f18:	1c74      	adds	r4, r6, #1
 8000f1a:	d0c9      	beq.n	8000eb0 <__aeabi_fsub+0x2d4>
 8000f1c:	43f6      	mvns	r6, r6
 8000f1e:	28ff      	cmp	r0, #255	; 0xff
 8000f20:	d1bc      	bne.n	8000e9c <__aeabi_fsub+0x2c0>
 8000f22:	464b      	mov	r3, r9
 8000f24:	e720      	b.n	8000d68 <__aeabi_fsub+0x18c>
 8000f26:	4699      	mov	r9, r3
 8000f28:	464b      	mov	r3, r9
 8000f2a:	2500      	movs	r5, #0
 8000f2c:	08db      	lsrs	r3, r3, #3
 8000f2e:	e72b      	b.n	8000d88 <__aeabi_fsub+0x1ac>
 8000f30:	2301      	movs	r3, #1
 8000f32:	e740      	b.n	8000db6 <__aeabi_fsub+0x1da>
 8000f34:	2200      	movs	r2, #0
 8000f36:	2300      	movs	r3, #0
 8000f38:	e6a9      	b.n	8000c8e <__aeabi_fsub+0xb2>
 8000f3a:	2380      	movs	r3, #128	; 0x80
 8000f3c:	2200      	movs	r2, #0
 8000f3e:	03db      	lsls	r3, r3, #15
 8000f40:	24ff      	movs	r4, #255	; 0xff
 8000f42:	e6a4      	b.n	8000c8e <__aeabi_fsub+0xb2>
 8000f44:	2500      	movs	r5, #0
 8000f46:	e71c      	b.n	8000d82 <__aeabi_fsub+0x1a6>
 8000f48:	2301      	movs	r3, #1
 8000f4a:	e7b1      	b.n	8000eb0 <__aeabi_fsub+0x2d4>
 8000f4c:	2a00      	cmp	r2, #0
 8000f4e:	d0f1      	beq.n	8000f34 <__aeabi_fsub+0x358>
 8000f50:	0013      	movs	r3, r2
 8000f52:	2500      	movs	r5, #0
 8000f54:	e6fc      	b.n	8000d50 <__aeabi_fsub+0x174>
 8000f56:	2500      	movs	r5, #0
 8000f58:	e6fa      	b.n	8000d50 <__aeabi_fsub+0x174>
 8000f5a:	46c0      	nop			; (mov r8, r8)
 8000f5c:	7dffffff 	.word	0x7dffffff
 8000f60:	fbffffff 	.word	0xfbffffff

08000f64 <__aeabi_i2f>:
 8000f64:	b570      	push	{r4, r5, r6, lr}
 8000f66:	2800      	cmp	r0, #0
 8000f68:	d03d      	beq.n	8000fe6 <__aeabi_i2f+0x82>
 8000f6a:	17c3      	asrs	r3, r0, #31
 8000f6c:	18c5      	adds	r5, r0, r3
 8000f6e:	405d      	eors	r5, r3
 8000f70:	0fc4      	lsrs	r4, r0, #31
 8000f72:	0028      	movs	r0, r5
 8000f74:	f001 fd2e 	bl	80029d4 <__clzsi2>
 8000f78:	229e      	movs	r2, #158	; 0x9e
 8000f7a:	1a12      	subs	r2, r2, r0
 8000f7c:	2a96      	cmp	r2, #150	; 0x96
 8000f7e:	dc07      	bgt.n	8000f90 <__aeabi_i2f+0x2c>
 8000f80:	b2d2      	uxtb	r2, r2
 8000f82:	2808      	cmp	r0, #8
 8000f84:	dd33      	ble.n	8000fee <__aeabi_i2f+0x8a>
 8000f86:	3808      	subs	r0, #8
 8000f88:	4085      	lsls	r5, r0
 8000f8a:	0268      	lsls	r0, r5, #9
 8000f8c:	0a40      	lsrs	r0, r0, #9
 8000f8e:	e023      	b.n	8000fd8 <__aeabi_i2f+0x74>
 8000f90:	2a99      	cmp	r2, #153	; 0x99
 8000f92:	dd0b      	ble.n	8000fac <__aeabi_i2f+0x48>
 8000f94:	2305      	movs	r3, #5
 8000f96:	0029      	movs	r1, r5
 8000f98:	1a1b      	subs	r3, r3, r0
 8000f9a:	40d9      	lsrs	r1, r3
 8000f9c:	0003      	movs	r3, r0
 8000f9e:	331b      	adds	r3, #27
 8000fa0:	409d      	lsls	r5, r3
 8000fa2:	002b      	movs	r3, r5
 8000fa4:	1e5d      	subs	r5, r3, #1
 8000fa6:	41ab      	sbcs	r3, r5
 8000fa8:	4319      	orrs	r1, r3
 8000faa:	000d      	movs	r5, r1
 8000fac:	2805      	cmp	r0, #5
 8000fae:	dd01      	ble.n	8000fb4 <__aeabi_i2f+0x50>
 8000fb0:	1f43      	subs	r3, r0, #5
 8000fb2:	409d      	lsls	r5, r3
 8000fb4:	002b      	movs	r3, r5
 8000fb6:	490f      	ldr	r1, [pc, #60]	; (8000ff4 <__aeabi_i2f+0x90>)
 8000fb8:	400b      	ands	r3, r1
 8000fba:	076e      	lsls	r6, r5, #29
 8000fbc:	d009      	beq.n	8000fd2 <__aeabi_i2f+0x6e>
 8000fbe:	260f      	movs	r6, #15
 8000fc0:	4035      	ands	r5, r6
 8000fc2:	2d04      	cmp	r5, #4
 8000fc4:	d005      	beq.n	8000fd2 <__aeabi_i2f+0x6e>
 8000fc6:	3304      	adds	r3, #4
 8000fc8:	015d      	lsls	r5, r3, #5
 8000fca:	d502      	bpl.n	8000fd2 <__aeabi_i2f+0x6e>
 8000fcc:	229f      	movs	r2, #159	; 0x9f
 8000fce:	400b      	ands	r3, r1
 8000fd0:	1a12      	subs	r2, r2, r0
 8000fd2:	019b      	lsls	r3, r3, #6
 8000fd4:	0a58      	lsrs	r0, r3, #9
 8000fd6:	b2d2      	uxtb	r2, r2
 8000fd8:	0240      	lsls	r0, r0, #9
 8000fda:	05d2      	lsls	r2, r2, #23
 8000fdc:	0a40      	lsrs	r0, r0, #9
 8000fde:	07e4      	lsls	r4, r4, #31
 8000fe0:	4310      	orrs	r0, r2
 8000fe2:	4320      	orrs	r0, r4
 8000fe4:	bd70      	pop	{r4, r5, r6, pc}
 8000fe6:	2400      	movs	r4, #0
 8000fe8:	2200      	movs	r2, #0
 8000fea:	2000      	movs	r0, #0
 8000fec:	e7f4      	b.n	8000fd8 <__aeabi_i2f+0x74>
 8000fee:	0268      	lsls	r0, r5, #9
 8000ff0:	0a40      	lsrs	r0, r0, #9
 8000ff2:	e7f1      	b.n	8000fd8 <__aeabi_i2f+0x74>
 8000ff4:	fbffffff 	.word	0xfbffffff

08000ff8 <__aeabi_ui2f>:
 8000ff8:	b570      	push	{r4, r5, r6, lr}
 8000ffa:	1e04      	subs	r4, r0, #0
 8000ffc:	d034      	beq.n	8001068 <__aeabi_ui2f+0x70>
 8000ffe:	f001 fce9 	bl	80029d4 <__clzsi2>
 8001002:	229e      	movs	r2, #158	; 0x9e
 8001004:	1a12      	subs	r2, r2, r0
 8001006:	2a96      	cmp	r2, #150	; 0x96
 8001008:	dc07      	bgt.n	800101a <__aeabi_ui2f+0x22>
 800100a:	b2d2      	uxtb	r2, r2
 800100c:	2808      	cmp	r0, #8
 800100e:	dd2e      	ble.n	800106e <__aeabi_ui2f+0x76>
 8001010:	3808      	subs	r0, #8
 8001012:	4084      	lsls	r4, r0
 8001014:	0260      	lsls	r0, r4, #9
 8001016:	0a40      	lsrs	r0, r0, #9
 8001018:	e021      	b.n	800105e <__aeabi_ui2f+0x66>
 800101a:	2a99      	cmp	r2, #153	; 0x99
 800101c:	dd09      	ble.n	8001032 <__aeabi_ui2f+0x3a>
 800101e:	0003      	movs	r3, r0
 8001020:	0021      	movs	r1, r4
 8001022:	331b      	adds	r3, #27
 8001024:	4099      	lsls	r1, r3
 8001026:	1e4b      	subs	r3, r1, #1
 8001028:	4199      	sbcs	r1, r3
 800102a:	2305      	movs	r3, #5
 800102c:	1a1b      	subs	r3, r3, r0
 800102e:	40dc      	lsrs	r4, r3
 8001030:	430c      	orrs	r4, r1
 8001032:	2805      	cmp	r0, #5
 8001034:	dd01      	ble.n	800103a <__aeabi_ui2f+0x42>
 8001036:	1f43      	subs	r3, r0, #5
 8001038:	409c      	lsls	r4, r3
 800103a:	0023      	movs	r3, r4
 800103c:	490d      	ldr	r1, [pc, #52]	; (8001074 <__aeabi_ui2f+0x7c>)
 800103e:	400b      	ands	r3, r1
 8001040:	0765      	lsls	r5, r4, #29
 8001042:	d009      	beq.n	8001058 <__aeabi_ui2f+0x60>
 8001044:	250f      	movs	r5, #15
 8001046:	402c      	ands	r4, r5
 8001048:	2c04      	cmp	r4, #4
 800104a:	d005      	beq.n	8001058 <__aeabi_ui2f+0x60>
 800104c:	3304      	adds	r3, #4
 800104e:	015c      	lsls	r4, r3, #5
 8001050:	d502      	bpl.n	8001058 <__aeabi_ui2f+0x60>
 8001052:	229f      	movs	r2, #159	; 0x9f
 8001054:	400b      	ands	r3, r1
 8001056:	1a12      	subs	r2, r2, r0
 8001058:	019b      	lsls	r3, r3, #6
 800105a:	0a58      	lsrs	r0, r3, #9
 800105c:	b2d2      	uxtb	r2, r2
 800105e:	0240      	lsls	r0, r0, #9
 8001060:	05d2      	lsls	r2, r2, #23
 8001062:	0a40      	lsrs	r0, r0, #9
 8001064:	4310      	orrs	r0, r2
 8001066:	bd70      	pop	{r4, r5, r6, pc}
 8001068:	2200      	movs	r2, #0
 800106a:	2000      	movs	r0, #0
 800106c:	e7f7      	b.n	800105e <__aeabi_ui2f+0x66>
 800106e:	0260      	lsls	r0, r4, #9
 8001070:	0a40      	lsrs	r0, r0, #9
 8001072:	e7f4      	b.n	800105e <__aeabi_ui2f+0x66>
 8001074:	fbffffff 	.word	0xfbffffff

08001078 <__aeabi_dadd>:
 8001078:	b5f0      	push	{r4, r5, r6, r7, lr}
 800107a:	464f      	mov	r7, r9
 800107c:	4646      	mov	r6, r8
 800107e:	46d6      	mov	lr, sl
 8001080:	000c      	movs	r4, r1
 8001082:	0309      	lsls	r1, r1, #12
 8001084:	b5c0      	push	{r6, r7, lr}
 8001086:	0a49      	lsrs	r1, r1, #9
 8001088:	0f47      	lsrs	r7, r0, #29
 800108a:	005e      	lsls	r6, r3, #1
 800108c:	4339      	orrs	r1, r7
 800108e:	031f      	lsls	r7, r3, #12
 8001090:	0fdb      	lsrs	r3, r3, #31
 8001092:	469c      	mov	ip, r3
 8001094:	0065      	lsls	r5, r4, #1
 8001096:	0a7b      	lsrs	r3, r7, #9
 8001098:	0f57      	lsrs	r7, r2, #29
 800109a:	431f      	orrs	r7, r3
 800109c:	0d6d      	lsrs	r5, r5, #21
 800109e:	0fe4      	lsrs	r4, r4, #31
 80010a0:	0d76      	lsrs	r6, r6, #21
 80010a2:	46a1      	mov	r9, r4
 80010a4:	00c0      	lsls	r0, r0, #3
 80010a6:	46b8      	mov	r8, r7
 80010a8:	00d2      	lsls	r2, r2, #3
 80010aa:	1bab      	subs	r3, r5, r6
 80010ac:	4564      	cmp	r4, ip
 80010ae:	d07b      	beq.n	80011a8 <__aeabi_dadd+0x130>
 80010b0:	2b00      	cmp	r3, #0
 80010b2:	dd5f      	ble.n	8001174 <__aeabi_dadd+0xfc>
 80010b4:	2e00      	cmp	r6, #0
 80010b6:	d000      	beq.n	80010ba <__aeabi_dadd+0x42>
 80010b8:	e0a4      	b.n	8001204 <__aeabi_dadd+0x18c>
 80010ba:	003e      	movs	r6, r7
 80010bc:	4316      	orrs	r6, r2
 80010be:	d100      	bne.n	80010c2 <__aeabi_dadd+0x4a>
 80010c0:	e112      	b.n	80012e8 <__aeabi_dadd+0x270>
 80010c2:	1e5e      	subs	r6, r3, #1
 80010c4:	2e00      	cmp	r6, #0
 80010c6:	d000      	beq.n	80010ca <__aeabi_dadd+0x52>
 80010c8:	e19e      	b.n	8001408 <__aeabi_dadd+0x390>
 80010ca:	1a87      	subs	r7, r0, r2
 80010cc:	4643      	mov	r3, r8
 80010ce:	42b8      	cmp	r0, r7
 80010d0:	4180      	sbcs	r0, r0
 80010d2:	2501      	movs	r5, #1
 80010d4:	1ac9      	subs	r1, r1, r3
 80010d6:	4240      	negs	r0, r0
 80010d8:	1a09      	subs	r1, r1, r0
 80010da:	020b      	lsls	r3, r1, #8
 80010dc:	d400      	bmi.n	80010e0 <__aeabi_dadd+0x68>
 80010de:	e131      	b.n	8001344 <__aeabi_dadd+0x2cc>
 80010e0:	0249      	lsls	r1, r1, #9
 80010e2:	0a4e      	lsrs	r6, r1, #9
 80010e4:	2e00      	cmp	r6, #0
 80010e6:	d100      	bne.n	80010ea <__aeabi_dadd+0x72>
 80010e8:	e16e      	b.n	80013c8 <__aeabi_dadd+0x350>
 80010ea:	0030      	movs	r0, r6
 80010ec:	f001 fc72 	bl	80029d4 <__clzsi2>
 80010f0:	0003      	movs	r3, r0
 80010f2:	3b08      	subs	r3, #8
 80010f4:	2b1f      	cmp	r3, #31
 80010f6:	dd00      	ble.n	80010fa <__aeabi_dadd+0x82>
 80010f8:	e161      	b.n	80013be <__aeabi_dadd+0x346>
 80010fa:	2220      	movs	r2, #32
 80010fc:	0039      	movs	r1, r7
 80010fe:	1ad2      	subs	r2, r2, r3
 8001100:	409e      	lsls	r6, r3
 8001102:	40d1      	lsrs	r1, r2
 8001104:	409f      	lsls	r7, r3
 8001106:	430e      	orrs	r6, r1
 8001108:	429d      	cmp	r5, r3
 800110a:	dd00      	ble.n	800110e <__aeabi_dadd+0x96>
 800110c:	e151      	b.n	80013b2 <__aeabi_dadd+0x33a>
 800110e:	1b5d      	subs	r5, r3, r5
 8001110:	1c6b      	adds	r3, r5, #1
 8001112:	2b1f      	cmp	r3, #31
 8001114:	dd00      	ble.n	8001118 <__aeabi_dadd+0xa0>
 8001116:	e17c      	b.n	8001412 <__aeabi_dadd+0x39a>
 8001118:	2120      	movs	r1, #32
 800111a:	1ac9      	subs	r1, r1, r3
 800111c:	003d      	movs	r5, r7
 800111e:	0030      	movs	r0, r6
 8001120:	408f      	lsls	r7, r1
 8001122:	4088      	lsls	r0, r1
 8001124:	40dd      	lsrs	r5, r3
 8001126:	1e79      	subs	r1, r7, #1
 8001128:	418f      	sbcs	r7, r1
 800112a:	0031      	movs	r1, r6
 800112c:	2207      	movs	r2, #7
 800112e:	4328      	orrs	r0, r5
 8001130:	40d9      	lsrs	r1, r3
 8001132:	2500      	movs	r5, #0
 8001134:	4307      	orrs	r7, r0
 8001136:	403a      	ands	r2, r7
 8001138:	2a00      	cmp	r2, #0
 800113a:	d009      	beq.n	8001150 <__aeabi_dadd+0xd8>
 800113c:	230f      	movs	r3, #15
 800113e:	403b      	ands	r3, r7
 8001140:	2b04      	cmp	r3, #4
 8001142:	d005      	beq.n	8001150 <__aeabi_dadd+0xd8>
 8001144:	1d3b      	adds	r3, r7, #4
 8001146:	42bb      	cmp	r3, r7
 8001148:	41bf      	sbcs	r7, r7
 800114a:	427f      	negs	r7, r7
 800114c:	19c9      	adds	r1, r1, r7
 800114e:	001f      	movs	r7, r3
 8001150:	020b      	lsls	r3, r1, #8
 8001152:	d400      	bmi.n	8001156 <__aeabi_dadd+0xde>
 8001154:	e226      	b.n	80015a4 <__aeabi_dadd+0x52c>
 8001156:	1c6a      	adds	r2, r5, #1
 8001158:	4bc6      	ldr	r3, [pc, #792]	; (8001474 <__aeabi_dadd+0x3fc>)
 800115a:	0555      	lsls	r5, r2, #21
 800115c:	0d6d      	lsrs	r5, r5, #21
 800115e:	429a      	cmp	r2, r3
 8001160:	d100      	bne.n	8001164 <__aeabi_dadd+0xec>
 8001162:	e106      	b.n	8001372 <__aeabi_dadd+0x2fa>
 8001164:	4ac4      	ldr	r2, [pc, #784]	; (8001478 <__aeabi_dadd+0x400>)
 8001166:	08ff      	lsrs	r7, r7, #3
 8001168:	400a      	ands	r2, r1
 800116a:	0753      	lsls	r3, r2, #29
 800116c:	0252      	lsls	r2, r2, #9
 800116e:	433b      	orrs	r3, r7
 8001170:	0b12      	lsrs	r2, r2, #12
 8001172:	e08e      	b.n	8001292 <__aeabi_dadd+0x21a>
 8001174:	2b00      	cmp	r3, #0
 8001176:	d000      	beq.n	800117a <__aeabi_dadd+0x102>
 8001178:	e0b8      	b.n	80012ec <__aeabi_dadd+0x274>
 800117a:	1c6b      	adds	r3, r5, #1
 800117c:	055b      	lsls	r3, r3, #21
 800117e:	0d5b      	lsrs	r3, r3, #21
 8001180:	2b01      	cmp	r3, #1
 8001182:	dc00      	bgt.n	8001186 <__aeabi_dadd+0x10e>
 8001184:	e130      	b.n	80013e8 <__aeabi_dadd+0x370>
 8001186:	1a87      	subs	r7, r0, r2
 8001188:	4643      	mov	r3, r8
 800118a:	42b8      	cmp	r0, r7
 800118c:	41b6      	sbcs	r6, r6
 800118e:	1acb      	subs	r3, r1, r3
 8001190:	4276      	negs	r6, r6
 8001192:	1b9e      	subs	r6, r3, r6
 8001194:	0233      	lsls	r3, r6, #8
 8001196:	d500      	bpl.n	800119a <__aeabi_dadd+0x122>
 8001198:	e14c      	b.n	8001434 <__aeabi_dadd+0x3bc>
 800119a:	003b      	movs	r3, r7
 800119c:	4333      	orrs	r3, r6
 800119e:	d1a1      	bne.n	80010e4 <__aeabi_dadd+0x6c>
 80011a0:	2200      	movs	r2, #0
 80011a2:	2400      	movs	r4, #0
 80011a4:	2500      	movs	r5, #0
 80011a6:	e070      	b.n	800128a <__aeabi_dadd+0x212>
 80011a8:	2b00      	cmp	r3, #0
 80011aa:	dc00      	bgt.n	80011ae <__aeabi_dadd+0x136>
 80011ac:	e0e5      	b.n	800137a <__aeabi_dadd+0x302>
 80011ae:	2e00      	cmp	r6, #0
 80011b0:	d100      	bne.n	80011b4 <__aeabi_dadd+0x13c>
 80011b2:	e083      	b.n	80012bc <__aeabi_dadd+0x244>
 80011b4:	4eaf      	ldr	r6, [pc, #700]	; (8001474 <__aeabi_dadd+0x3fc>)
 80011b6:	42b5      	cmp	r5, r6
 80011b8:	d060      	beq.n	800127c <__aeabi_dadd+0x204>
 80011ba:	2680      	movs	r6, #128	; 0x80
 80011bc:	0436      	lsls	r6, r6, #16
 80011be:	4337      	orrs	r7, r6
 80011c0:	46b8      	mov	r8, r7
 80011c2:	2b38      	cmp	r3, #56	; 0x38
 80011c4:	dc00      	bgt.n	80011c8 <__aeabi_dadd+0x150>
 80011c6:	e13e      	b.n	8001446 <__aeabi_dadd+0x3ce>
 80011c8:	4643      	mov	r3, r8
 80011ca:	4313      	orrs	r3, r2
 80011cc:	001f      	movs	r7, r3
 80011ce:	1e7a      	subs	r2, r7, #1
 80011d0:	4197      	sbcs	r7, r2
 80011d2:	183f      	adds	r7, r7, r0
 80011d4:	4287      	cmp	r7, r0
 80011d6:	4180      	sbcs	r0, r0
 80011d8:	4240      	negs	r0, r0
 80011da:	1809      	adds	r1, r1, r0
 80011dc:	020b      	lsls	r3, r1, #8
 80011de:	d400      	bmi.n	80011e2 <__aeabi_dadd+0x16a>
 80011e0:	e0b0      	b.n	8001344 <__aeabi_dadd+0x2cc>
 80011e2:	4ba4      	ldr	r3, [pc, #656]	; (8001474 <__aeabi_dadd+0x3fc>)
 80011e4:	3501      	adds	r5, #1
 80011e6:	429d      	cmp	r5, r3
 80011e8:	d100      	bne.n	80011ec <__aeabi_dadd+0x174>
 80011ea:	e0c3      	b.n	8001374 <__aeabi_dadd+0x2fc>
 80011ec:	4aa2      	ldr	r2, [pc, #648]	; (8001478 <__aeabi_dadd+0x400>)
 80011ee:	087b      	lsrs	r3, r7, #1
 80011f0:	400a      	ands	r2, r1
 80011f2:	2101      	movs	r1, #1
 80011f4:	400f      	ands	r7, r1
 80011f6:	431f      	orrs	r7, r3
 80011f8:	0851      	lsrs	r1, r2, #1
 80011fa:	07d3      	lsls	r3, r2, #31
 80011fc:	2207      	movs	r2, #7
 80011fe:	431f      	orrs	r7, r3
 8001200:	403a      	ands	r2, r7
 8001202:	e799      	b.n	8001138 <__aeabi_dadd+0xc0>
 8001204:	4e9b      	ldr	r6, [pc, #620]	; (8001474 <__aeabi_dadd+0x3fc>)
 8001206:	42b5      	cmp	r5, r6
 8001208:	d038      	beq.n	800127c <__aeabi_dadd+0x204>
 800120a:	2680      	movs	r6, #128	; 0x80
 800120c:	0436      	lsls	r6, r6, #16
 800120e:	4337      	orrs	r7, r6
 8001210:	46b8      	mov	r8, r7
 8001212:	2b38      	cmp	r3, #56	; 0x38
 8001214:	dd00      	ble.n	8001218 <__aeabi_dadd+0x1a0>
 8001216:	e0dc      	b.n	80013d2 <__aeabi_dadd+0x35a>
 8001218:	2b1f      	cmp	r3, #31
 800121a:	dc00      	bgt.n	800121e <__aeabi_dadd+0x1a6>
 800121c:	e130      	b.n	8001480 <__aeabi_dadd+0x408>
 800121e:	001e      	movs	r6, r3
 8001220:	4647      	mov	r7, r8
 8001222:	3e20      	subs	r6, #32
 8001224:	40f7      	lsrs	r7, r6
 8001226:	46bc      	mov	ip, r7
 8001228:	2b20      	cmp	r3, #32
 800122a:	d004      	beq.n	8001236 <__aeabi_dadd+0x1be>
 800122c:	2640      	movs	r6, #64	; 0x40
 800122e:	1af3      	subs	r3, r6, r3
 8001230:	4646      	mov	r6, r8
 8001232:	409e      	lsls	r6, r3
 8001234:	4332      	orrs	r2, r6
 8001236:	0017      	movs	r7, r2
 8001238:	4663      	mov	r3, ip
 800123a:	1e7a      	subs	r2, r7, #1
 800123c:	4197      	sbcs	r7, r2
 800123e:	431f      	orrs	r7, r3
 8001240:	e0cc      	b.n	80013dc <__aeabi_dadd+0x364>
 8001242:	2b00      	cmp	r3, #0
 8001244:	d100      	bne.n	8001248 <__aeabi_dadd+0x1d0>
 8001246:	e204      	b.n	8001652 <__aeabi_dadd+0x5da>
 8001248:	4643      	mov	r3, r8
 800124a:	4313      	orrs	r3, r2
 800124c:	d100      	bne.n	8001250 <__aeabi_dadd+0x1d8>
 800124e:	e159      	b.n	8001504 <__aeabi_dadd+0x48c>
 8001250:	074b      	lsls	r3, r1, #29
 8001252:	08c0      	lsrs	r0, r0, #3
 8001254:	4318      	orrs	r0, r3
 8001256:	2380      	movs	r3, #128	; 0x80
 8001258:	08c9      	lsrs	r1, r1, #3
 800125a:	031b      	lsls	r3, r3, #12
 800125c:	4219      	tst	r1, r3
 800125e:	d008      	beq.n	8001272 <__aeabi_dadd+0x1fa>
 8001260:	4645      	mov	r5, r8
 8001262:	08ed      	lsrs	r5, r5, #3
 8001264:	421d      	tst	r5, r3
 8001266:	d104      	bne.n	8001272 <__aeabi_dadd+0x1fa>
 8001268:	4643      	mov	r3, r8
 800126a:	08d0      	lsrs	r0, r2, #3
 800126c:	0759      	lsls	r1, r3, #29
 800126e:	4308      	orrs	r0, r1
 8001270:	0029      	movs	r1, r5
 8001272:	0f42      	lsrs	r2, r0, #29
 8001274:	00c9      	lsls	r1, r1, #3
 8001276:	4d7f      	ldr	r5, [pc, #508]	; (8001474 <__aeabi_dadd+0x3fc>)
 8001278:	4311      	orrs	r1, r2
 800127a:	00c0      	lsls	r0, r0, #3
 800127c:	074b      	lsls	r3, r1, #29
 800127e:	08ca      	lsrs	r2, r1, #3
 8001280:	497c      	ldr	r1, [pc, #496]	; (8001474 <__aeabi_dadd+0x3fc>)
 8001282:	08c0      	lsrs	r0, r0, #3
 8001284:	4303      	orrs	r3, r0
 8001286:	428d      	cmp	r5, r1
 8001288:	d068      	beq.n	800135c <__aeabi_dadd+0x2e4>
 800128a:	0312      	lsls	r2, r2, #12
 800128c:	056d      	lsls	r5, r5, #21
 800128e:	0b12      	lsrs	r2, r2, #12
 8001290:	0d6d      	lsrs	r5, r5, #21
 8001292:	2100      	movs	r1, #0
 8001294:	0312      	lsls	r2, r2, #12
 8001296:	0018      	movs	r0, r3
 8001298:	0b13      	lsrs	r3, r2, #12
 800129a:	0d0a      	lsrs	r2, r1, #20
 800129c:	0512      	lsls	r2, r2, #20
 800129e:	431a      	orrs	r2, r3
 80012a0:	4b76      	ldr	r3, [pc, #472]	; (800147c <__aeabi_dadd+0x404>)
 80012a2:	052d      	lsls	r5, r5, #20
 80012a4:	4013      	ands	r3, r2
 80012a6:	432b      	orrs	r3, r5
 80012a8:	005b      	lsls	r3, r3, #1
 80012aa:	07e4      	lsls	r4, r4, #31
 80012ac:	085b      	lsrs	r3, r3, #1
 80012ae:	4323      	orrs	r3, r4
 80012b0:	0019      	movs	r1, r3
 80012b2:	bc1c      	pop	{r2, r3, r4}
 80012b4:	4690      	mov	r8, r2
 80012b6:	4699      	mov	r9, r3
 80012b8:	46a2      	mov	sl, r4
 80012ba:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80012bc:	003e      	movs	r6, r7
 80012be:	4316      	orrs	r6, r2
 80012c0:	d012      	beq.n	80012e8 <__aeabi_dadd+0x270>
 80012c2:	1e5e      	subs	r6, r3, #1
 80012c4:	2e00      	cmp	r6, #0
 80012c6:	d000      	beq.n	80012ca <__aeabi_dadd+0x252>
 80012c8:	e100      	b.n	80014cc <__aeabi_dadd+0x454>
 80012ca:	1887      	adds	r7, r0, r2
 80012cc:	4287      	cmp	r7, r0
 80012ce:	4180      	sbcs	r0, r0
 80012d0:	4441      	add	r1, r8
 80012d2:	4240      	negs	r0, r0
 80012d4:	1809      	adds	r1, r1, r0
 80012d6:	2501      	movs	r5, #1
 80012d8:	020b      	lsls	r3, r1, #8
 80012da:	d533      	bpl.n	8001344 <__aeabi_dadd+0x2cc>
 80012dc:	2502      	movs	r5, #2
 80012de:	e785      	b.n	80011ec <__aeabi_dadd+0x174>
 80012e0:	4664      	mov	r4, ip
 80012e2:	0033      	movs	r3, r6
 80012e4:	4641      	mov	r1, r8
 80012e6:	0010      	movs	r0, r2
 80012e8:	001d      	movs	r5, r3
 80012ea:	e7c7      	b.n	800127c <__aeabi_dadd+0x204>
 80012ec:	2d00      	cmp	r5, #0
 80012ee:	d000      	beq.n	80012f2 <__aeabi_dadd+0x27a>
 80012f0:	e0da      	b.n	80014a8 <__aeabi_dadd+0x430>
 80012f2:	000c      	movs	r4, r1
 80012f4:	4304      	orrs	r4, r0
 80012f6:	d0f3      	beq.n	80012e0 <__aeabi_dadd+0x268>
 80012f8:	1c5c      	adds	r4, r3, #1
 80012fa:	d100      	bne.n	80012fe <__aeabi_dadd+0x286>
 80012fc:	e19f      	b.n	800163e <__aeabi_dadd+0x5c6>
 80012fe:	4c5d      	ldr	r4, [pc, #372]	; (8001474 <__aeabi_dadd+0x3fc>)
 8001300:	42a6      	cmp	r6, r4
 8001302:	d100      	bne.n	8001306 <__aeabi_dadd+0x28e>
 8001304:	e12f      	b.n	8001566 <__aeabi_dadd+0x4ee>
 8001306:	43db      	mvns	r3, r3
 8001308:	2b38      	cmp	r3, #56	; 0x38
 800130a:	dd00      	ble.n	800130e <__aeabi_dadd+0x296>
 800130c:	e166      	b.n	80015dc <__aeabi_dadd+0x564>
 800130e:	2b1f      	cmp	r3, #31
 8001310:	dd00      	ble.n	8001314 <__aeabi_dadd+0x29c>
 8001312:	e183      	b.n	800161c <__aeabi_dadd+0x5a4>
 8001314:	2420      	movs	r4, #32
 8001316:	0005      	movs	r5, r0
 8001318:	1ae4      	subs	r4, r4, r3
 800131a:	000f      	movs	r7, r1
 800131c:	40dd      	lsrs	r5, r3
 800131e:	40d9      	lsrs	r1, r3
 8001320:	40a0      	lsls	r0, r4
 8001322:	4643      	mov	r3, r8
 8001324:	40a7      	lsls	r7, r4
 8001326:	1a5b      	subs	r3, r3, r1
 8001328:	1e44      	subs	r4, r0, #1
 800132a:	41a0      	sbcs	r0, r4
 800132c:	4698      	mov	r8, r3
 800132e:	432f      	orrs	r7, r5
 8001330:	4338      	orrs	r0, r7
 8001332:	1a17      	subs	r7, r2, r0
 8001334:	42ba      	cmp	r2, r7
 8001336:	4192      	sbcs	r2, r2
 8001338:	4643      	mov	r3, r8
 800133a:	4252      	negs	r2, r2
 800133c:	1a99      	subs	r1, r3, r2
 800133e:	4664      	mov	r4, ip
 8001340:	0035      	movs	r5, r6
 8001342:	e6ca      	b.n	80010da <__aeabi_dadd+0x62>
 8001344:	2207      	movs	r2, #7
 8001346:	403a      	ands	r2, r7
 8001348:	2a00      	cmp	r2, #0
 800134a:	d000      	beq.n	800134e <__aeabi_dadd+0x2d6>
 800134c:	e6f6      	b.n	800113c <__aeabi_dadd+0xc4>
 800134e:	074b      	lsls	r3, r1, #29
 8001350:	08ca      	lsrs	r2, r1, #3
 8001352:	4948      	ldr	r1, [pc, #288]	; (8001474 <__aeabi_dadd+0x3fc>)
 8001354:	08ff      	lsrs	r7, r7, #3
 8001356:	433b      	orrs	r3, r7
 8001358:	428d      	cmp	r5, r1
 800135a:	d196      	bne.n	800128a <__aeabi_dadd+0x212>
 800135c:	0019      	movs	r1, r3
 800135e:	4311      	orrs	r1, r2
 8001360:	d100      	bne.n	8001364 <__aeabi_dadd+0x2ec>
 8001362:	e19e      	b.n	80016a2 <__aeabi_dadd+0x62a>
 8001364:	2180      	movs	r1, #128	; 0x80
 8001366:	0309      	lsls	r1, r1, #12
 8001368:	430a      	orrs	r2, r1
 800136a:	0312      	lsls	r2, r2, #12
 800136c:	0b12      	lsrs	r2, r2, #12
 800136e:	4d41      	ldr	r5, [pc, #260]	; (8001474 <__aeabi_dadd+0x3fc>)
 8001370:	e78f      	b.n	8001292 <__aeabi_dadd+0x21a>
 8001372:	0015      	movs	r5, r2
 8001374:	2200      	movs	r2, #0
 8001376:	2300      	movs	r3, #0
 8001378:	e78b      	b.n	8001292 <__aeabi_dadd+0x21a>
 800137a:	2b00      	cmp	r3, #0
 800137c:	d000      	beq.n	8001380 <__aeabi_dadd+0x308>
 800137e:	e0c7      	b.n	8001510 <__aeabi_dadd+0x498>
 8001380:	1c6b      	adds	r3, r5, #1
 8001382:	055f      	lsls	r7, r3, #21
 8001384:	0d7f      	lsrs	r7, r7, #21
 8001386:	2f01      	cmp	r7, #1
 8001388:	dc00      	bgt.n	800138c <__aeabi_dadd+0x314>
 800138a:	e0f1      	b.n	8001570 <__aeabi_dadd+0x4f8>
 800138c:	4d39      	ldr	r5, [pc, #228]	; (8001474 <__aeabi_dadd+0x3fc>)
 800138e:	42ab      	cmp	r3, r5
 8001390:	d100      	bne.n	8001394 <__aeabi_dadd+0x31c>
 8001392:	e0b9      	b.n	8001508 <__aeabi_dadd+0x490>
 8001394:	1885      	adds	r5, r0, r2
 8001396:	000a      	movs	r2, r1
 8001398:	4285      	cmp	r5, r0
 800139a:	4189      	sbcs	r1, r1
 800139c:	4442      	add	r2, r8
 800139e:	4249      	negs	r1, r1
 80013a0:	1851      	adds	r1, r2, r1
 80013a2:	2207      	movs	r2, #7
 80013a4:	07cf      	lsls	r7, r1, #31
 80013a6:	086d      	lsrs	r5, r5, #1
 80013a8:	432f      	orrs	r7, r5
 80013aa:	0849      	lsrs	r1, r1, #1
 80013ac:	403a      	ands	r2, r7
 80013ae:	001d      	movs	r5, r3
 80013b0:	e6c2      	b.n	8001138 <__aeabi_dadd+0xc0>
 80013b2:	2207      	movs	r2, #7
 80013b4:	4930      	ldr	r1, [pc, #192]	; (8001478 <__aeabi_dadd+0x400>)
 80013b6:	1aed      	subs	r5, r5, r3
 80013b8:	4031      	ands	r1, r6
 80013ba:	403a      	ands	r2, r7
 80013bc:	e6bc      	b.n	8001138 <__aeabi_dadd+0xc0>
 80013be:	003e      	movs	r6, r7
 80013c0:	3828      	subs	r0, #40	; 0x28
 80013c2:	4086      	lsls	r6, r0
 80013c4:	2700      	movs	r7, #0
 80013c6:	e69f      	b.n	8001108 <__aeabi_dadd+0x90>
 80013c8:	0038      	movs	r0, r7
 80013ca:	f001 fb03 	bl	80029d4 <__clzsi2>
 80013ce:	3020      	adds	r0, #32
 80013d0:	e68e      	b.n	80010f0 <__aeabi_dadd+0x78>
 80013d2:	4643      	mov	r3, r8
 80013d4:	4313      	orrs	r3, r2
 80013d6:	001f      	movs	r7, r3
 80013d8:	1e7a      	subs	r2, r7, #1
 80013da:	4197      	sbcs	r7, r2
 80013dc:	1bc7      	subs	r7, r0, r7
 80013de:	42b8      	cmp	r0, r7
 80013e0:	4180      	sbcs	r0, r0
 80013e2:	4240      	negs	r0, r0
 80013e4:	1a09      	subs	r1, r1, r0
 80013e6:	e678      	b.n	80010da <__aeabi_dadd+0x62>
 80013e8:	000e      	movs	r6, r1
 80013ea:	003b      	movs	r3, r7
 80013ec:	4306      	orrs	r6, r0
 80013ee:	4313      	orrs	r3, r2
 80013f0:	2d00      	cmp	r5, #0
 80013f2:	d161      	bne.n	80014b8 <__aeabi_dadd+0x440>
 80013f4:	2e00      	cmp	r6, #0
 80013f6:	d000      	beq.n	80013fa <__aeabi_dadd+0x382>
 80013f8:	e0f4      	b.n	80015e4 <__aeabi_dadd+0x56c>
 80013fa:	2b00      	cmp	r3, #0
 80013fc:	d100      	bne.n	8001400 <__aeabi_dadd+0x388>
 80013fe:	e11b      	b.n	8001638 <__aeabi_dadd+0x5c0>
 8001400:	4664      	mov	r4, ip
 8001402:	0039      	movs	r1, r7
 8001404:	0010      	movs	r0, r2
 8001406:	e739      	b.n	800127c <__aeabi_dadd+0x204>
 8001408:	4f1a      	ldr	r7, [pc, #104]	; (8001474 <__aeabi_dadd+0x3fc>)
 800140a:	42bb      	cmp	r3, r7
 800140c:	d07a      	beq.n	8001504 <__aeabi_dadd+0x48c>
 800140e:	0033      	movs	r3, r6
 8001410:	e6ff      	b.n	8001212 <__aeabi_dadd+0x19a>
 8001412:	0030      	movs	r0, r6
 8001414:	3d1f      	subs	r5, #31
 8001416:	40e8      	lsrs	r0, r5
 8001418:	2b20      	cmp	r3, #32
 800141a:	d003      	beq.n	8001424 <__aeabi_dadd+0x3ac>
 800141c:	2140      	movs	r1, #64	; 0x40
 800141e:	1acb      	subs	r3, r1, r3
 8001420:	409e      	lsls	r6, r3
 8001422:	4337      	orrs	r7, r6
 8001424:	1e7b      	subs	r3, r7, #1
 8001426:	419f      	sbcs	r7, r3
 8001428:	2207      	movs	r2, #7
 800142a:	4307      	orrs	r7, r0
 800142c:	403a      	ands	r2, r7
 800142e:	2100      	movs	r1, #0
 8001430:	2500      	movs	r5, #0
 8001432:	e789      	b.n	8001348 <__aeabi_dadd+0x2d0>
 8001434:	1a17      	subs	r7, r2, r0
 8001436:	4643      	mov	r3, r8
 8001438:	42ba      	cmp	r2, r7
 800143a:	41b6      	sbcs	r6, r6
 800143c:	1a59      	subs	r1, r3, r1
 800143e:	4276      	negs	r6, r6
 8001440:	1b8e      	subs	r6, r1, r6
 8001442:	4664      	mov	r4, ip
 8001444:	e64e      	b.n	80010e4 <__aeabi_dadd+0x6c>
 8001446:	2b1f      	cmp	r3, #31
 8001448:	dd00      	ble.n	800144c <__aeabi_dadd+0x3d4>
 800144a:	e0ad      	b.n	80015a8 <__aeabi_dadd+0x530>
 800144c:	2620      	movs	r6, #32
 800144e:	4647      	mov	r7, r8
 8001450:	1af6      	subs	r6, r6, r3
 8001452:	40b7      	lsls	r7, r6
 8001454:	46b9      	mov	r9, r7
 8001456:	0017      	movs	r7, r2
 8001458:	46b2      	mov	sl, r6
 800145a:	40df      	lsrs	r7, r3
 800145c:	464e      	mov	r6, r9
 800145e:	433e      	orrs	r6, r7
 8001460:	0037      	movs	r7, r6
 8001462:	4656      	mov	r6, sl
 8001464:	40b2      	lsls	r2, r6
 8001466:	1e56      	subs	r6, r2, #1
 8001468:	41b2      	sbcs	r2, r6
 800146a:	4317      	orrs	r7, r2
 800146c:	4642      	mov	r2, r8
 800146e:	40da      	lsrs	r2, r3
 8001470:	1889      	adds	r1, r1, r2
 8001472:	e6ae      	b.n	80011d2 <__aeabi_dadd+0x15a>
 8001474:	000007ff 	.word	0x000007ff
 8001478:	ff7fffff 	.word	0xff7fffff
 800147c:	800fffff 	.word	0x800fffff
 8001480:	2620      	movs	r6, #32
 8001482:	4647      	mov	r7, r8
 8001484:	1af6      	subs	r6, r6, r3
 8001486:	40b7      	lsls	r7, r6
 8001488:	46b9      	mov	r9, r7
 800148a:	0017      	movs	r7, r2
 800148c:	46b2      	mov	sl, r6
 800148e:	40df      	lsrs	r7, r3
 8001490:	464e      	mov	r6, r9
 8001492:	433e      	orrs	r6, r7
 8001494:	0037      	movs	r7, r6
 8001496:	4656      	mov	r6, sl
 8001498:	40b2      	lsls	r2, r6
 800149a:	1e56      	subs	r6, r2, #1
 800149c:	41b2      	sbcs	r2, r6
 800149e:	4317      	orrs	r7, r2
 80014a0:	4642      	mov	r2, r8
 80014a2:	40da      	lsrs	r2, r3
 80014a4:	1a89      	subs	r1, r1, r2
 80014a6:	e799      	b.n	80013dc <__aeabi_dadd+0x364>
 80014a8:	4c7f      	ldr	r4, [pc, #508]	; (80016a8 <__aeabi_dadd+0x630>)
 80014aa:	42a6      	cmp	r6, r4
 80014ac:	d05b      	beq.n	8001566 <__aeabi_dadd+0x4ee>
 80014ae:	2480      	movs	r4, #128	; 0x80
 80014b0:	0424      	lsls	r4, r4, #16
 80014b2:	425b      	negs	r3, r3
 80014b4:	4321      	orrs	r1, r4
 80014b6:	e727      	b.n	8001308 <__aeabi_dadd+0x290>
 80014b8:	2e00      	cmp	r6, #0
 80014ba:	d10c      	bne.n	80014d6 <__aeabi_dadd+0x45e>
 80014bc:	2b00      	cmp	r3, #0
 80014be:	d100      	bne.n	80014c2 <__aeabi_dadd+0x44a>
 80014c0:	e0cb      	b.n	800165a <__aeabi_dadd+0x5e2>
 80014c2:	4664      	mov	r4, ip
 80014c4:	0039      	movs	r1, r7
 80014c6:	0010      	movs	r0, r2
 80014c8:	4d77      	ldr	r5, [pc, #476]	; (80016a8 <__aeabi_dadd+0x630>)
 80014ca:	e6d7      	b.n	800127c <__aeabi_dadd+0x204>
 80014cc:	4f76      	ldr	r7, [pc, #472]	; (80016a8 <__aeabi_dadd+0x630>)
 80014ce:	42bb      	cmp	r3, r7
 80014d0:	d018      	beq.n	8001504 <__aeabi_dadd+0x48c>
 80014d2:	0033      	movs	r3, r6
 80014d4:	e675      	b.n	80011c2 <__aeabi_dadd+0x14a>
 80014d6:	2b00      	cmp	r3, #0
 80014d8:	d014      	beq.n	8001504 <__aeabi_dadd+0x48c>
 80014da:	074b      	lsls	r3, r1, #29
 80014dc:	08c0      	lsrs	r0, r0, #3
 80014de:	4318      	orrs	r0, r3
 80014e0:	2380      	movs	r3, #128	; 0x80
 80014e2:	08c9      	lsrs	r1, r1, #3
 80014e4:	031b      	lsls	r3, r3, #12
 80014e6:	4219      	tst	r1, r3
 80014e8:	d007      	beq.n	80014fa <__aeabi_dadd+0x482>
 80014ea:	08fc      	lsrs	r4, r7, #3
 80014ec:	421c      	tst	r4, r3
 80014ee:	d104      	bne.n	80014fa <__aeabi_dadd+0x482>
 80014f0:	0779      	lsls	r1, r7, #29
 80014f2:	08d0      	lsrs	r0, r2, #3
 80014f4:	4308      	orrs	r0, r1
 80014f6:	46e1      	mov	r9, ip
 80014f8:	0021      	movs	r1, r4
 80014fa:	464c      	mov	r4, r9
 80014fc:	0f42      	lsrs	r2, r0, #29
 80014fe:	00c9      	lsls	r1, r1, #3
 8001500:	4311      	orrs	r1, r2
 8001502:	00c0      	lsls	r0, r0, #3
 8001504:	4d68      	ldr	r5, [pc, #416]	; (80016a8 <__aeabi_dadd+0x630>)
 8001506:	e6b9      	b.n	800127c <__aeabi_dadd+0x204>
 8001508:	001d      	movs	r5, r3
 800150a:	2200      	movs	r2, #0
 800150c:	2300      	movs	r3, #0
 800150e:	e6c0      	b.n	8001292 <__aeabi_dadd+0x21a>
 8001510:	2d00      	cmp	r5, #0
 8001512:	d15b      	bne.n	80015cc <__aeabi_dadd+0x554>
 8001514:	000d      	movs	r5, r1
 8001516:	4305      	orrs	r5, r0
 8001518:	d100      	bne.n	800151c <__aeabi_dadd+0x4a4>
 800151a:	e6e2      	b.n	80012e2 <__aeabi_dadd+0x26a>
 800151c:	1c5d      	adds	r5, r3, #1
 800151e:	d100      	bne.n	8001522 <__aeabi_dadd+0x4aa>
 8001520:	e0b0      	b.n	8001684 <__aeabi_dadd+0x60c>
 8001522:	4d61      	ldr	r5, [pc, #388]	; (80016a8 <__aeabi_dadd+0x630>)
 8001524:	42ae      	cmp	r6, r5
 8001526:	d01f      	beq.n	8001568 <__aeabi_dadd+0x4f0>
 8001528:	43db      	mvns	r3, r3
 800152a:	2b38      	cmp	r3, #56	; 0x38
 800152c:	dc71      	bgt.n	8001612 <__aeabi_dadd+0x59a>
 800152e:	2b1f      	cmp	r3, #31
 8001530:	dd00      	ble.n	8001534 <__aeabi_dadd+0x4bc>
 8001532:	e096      	b.n	8001662 <__aeabi_dadd+0x5ea>
 8001534:	2520      	movs	r5, #32
 8001536:	000f      	movs	r7, r1
 8001538:	1aed      	subs	r5, r5, r3
 800153a:	40af      	lsls	r7, r5
 800153c:	46b9      	mov	r9, r7
 800153e:	0007      	movs	r7, r0
 8001540:	46aa      	mov	sl, r5
 8001542:	40df      	lsrs	r7, r3
 8001544:	464d      	mov	r5, r9
 8001546:	433d      	orrs	r5, r7
 8001548:	002f      	movs	r7, r5
 800154a:	4655      	mov	r5, sl
 800154c:	40a8      	lsls	r0, r5
 800154e:	40d9      	lsrs	r1, r3
 8001550:	1e45      	subs	r5, r0, #1
 8001552:	41a8      	sbcs	r0, r5
 8001554:	4488      	add	r8, r1
 8001556:	4307      	orrs	r7, r0
 8001558:	18bf      	adds	r7, r7, r2
 800155a:	4297      	cmp	r7, r2
 800155c:	4192      	sbcs	r2, r2
 800155e:	4251      	negs	r1, r2
 8001560:	4441      	add	r1, r8
 8001562:	0035      	movs	r5, r6
 8001564:	e63a      	b.n	80011dc <__aeabi_dadd+0x164>
 8001566:	4664      	mov	r4, ip
 8001568:	0035      	movs	r5, r6
 800156a:	4641      	mov	r1, r8
 800156c:	0010      	movs	r0, r2
 800156e:	e685      	b.n	800127c <__aeabi_dadd+0x204>
 8001570:	000b      	movs	r3, r1
 8001572:	4303      	orrs	r3, r0
 8001574:	2d00      	cmp	r5, #0
 8001576:	d000      	beq.n	800157a <__aeabi_dadd+0x502>
 8001578:	e663      	b.n	8001242 <__aeabi_dadd+0x1ca>
 800157a:	2b00      	cmp	r3, #0
 800157c:	d0f5      	beq.n	800156a <__aeabi_dadd+0x4f2>
 800157e:	4643      	mov	r3, r8
 8001580:	4313      	orrs	r3, r2
 8001582:	d100      	bne.n	8001586 <__aeabi_dadd+0x50e>
 8001584:	e67a      	b.n	800127c <__aeabi_dadd+0x204>
 8001586:	1887      	adds	r7, r0, r2
 8001588:	4287      	cmp	r7, r0
 800158a:	4180      	sbcs	r0, r0
 800158c:	2207      	movs	r2, #7
 800158e:	4441      	add	r1, r8
 8001590:	4240      	negs	r0, r0
 8001592:	1809      	adds	r1, r1, r0
 8001594:	403a      	ands	r2, r7
 8001596:	020b      	lsls	r3, r1, #8
 8001598:	d400      	bmi.n	800159c <__aeabi_dadd+0x524>
 800159a:	e6d5      	b.n	8001348 <__aeabi_dadd+0x2d0>
 800159c:	4b43      	ldr	r3, [pc, #268]	; (80016ac <__aeabi_dadd+0x634>)
 800159e:	3501      	adds	r5, #1
 80015a0:	4019      	ands	r1, r3
 80015a2:	e5c9      	b.n	8001138 <__aeabi_dadd+0xc0>
 80015a4:	0038      	movs	r0, r7
 80015a6:	e669      	b.n	800127c <__aeabi_dadd+0x204>
 80015a8:	001e      	movs	r6, r3
 80015aa:	4647      	mov	r7, r8
 80015ac:	3e20      	subs	r6, #32
 80015ae:	40f7      	lsrs	r7, r6
 80015b0:	46bc      	mov	ip, r7
 80015b2:	2b20      	cmp	r3, #32
 80015b4:	d004      	beq.n	80015c0 <__aeabi_dadd+0x548>
 80015b6:	2640      	movs	r6, #64	; 0x40
 80015b8:	1af3      	subs	r3, r6, r3
 80015ba:	4646      	mov	r6, r8
 80015bc:	409e      	lsls	r6, r3
 80015be:	4332      	orrs	r2, r6
 80015c0:	0017      	movs	r7, r2
 80015c2:	4663      	mov	r3, ip
 80015c4:	1e7a      	subs	r2, r7, #1
 80015c6:	4197      	sbcs	r7, r2
 80015c8:	431f      	orrs	r7, r3
 80015ca:	e602      	b.n	80011d2 <__aeabi_dadd+0x15a>
 80015cc:	4d36      	ldr	r5, [pc, #216]	; (80016a8 <__aeabi_dadd+0x630>)
 80015ce:	42ae      	cmp	r6, r5
 80015d0:	d0ca      	beq.n	8001568 <__aeabi_dadd+0x4f0>
 80015d2:	2580      	movs	r5, #128	; 0x80
 80015d4:	042d      	lsls	r5, r5, #16
 80015d6:	425b      	negs	r3, r3
 80015d8:	4329      	orrs	r1, r5
 80015da:	e7a6      	b.n	800152a <__aeabi_dadd+0x4b2>
 80015dc:	4308      	orrs	r0, r1
 80015de:	1e41      	subs	r1, r0, #1
 80015e0:	4188      	sbcs	r0, r1
 80015e2:	e6a6      	b.n	8001332 <__aeabi_dadd+0x2ba>
 80015e4:	2b00      	cmp	r3, #0
 80015e6:	d100      	bne.n	80015ea <__aeabi_dadd+0x572>
 80015e8:	e648      	b.n	800127c <__aeabi_dadd+0x204>
 80015ea:	1a87      	subs	r7, r0, r2
 80015ec:	4643      	mov	r3, r8
 80015ee:	42b8      	cmp	r0, r7
 80015f0:	41b6      	sbcs	r6, r6
 80015f2:	1acb      	subs	r3, r1, r3
 80015f4:	4276      	negs	r6, r6
 80015f6:	1b9e      	subs	r6, r3, r6
 80015f8:	0233      	lsls	r3, r6, #8
 80015fa:	d54b      	bpl.n	8001694 <__aeabi_dadd+0x61c>
 80015fc:	1a17      	subs	r7, r2, r0
 80015fe:	4643      	mov	r3, r8
 8001600:	42ba      	cmp	r2, r7
 8001602:	4192      	sbcs	r2, r2
 8001604:	1a59      	subs	r1, r3, r1
 8001606:	4252      	negs	r2, r2
 8001608:	1a89      	subs	r1, r1, r2
 800160a:	2207      	movs	r2, #7
 800160c:	4664      	mov	r4, ip
 800160e:	403a      	ands	r2, r7
 8001610:	e592      	b.n	8001138 <__aeabi_dadd+0xc0>
 8001612:	4301      	orrs	r1, r0
 8001614:	000f      	movs	r7, r1
 8001616:	1e79      	subs	r1, r7, #1
 8001618:	418f      	sbcs	r7, r1
 800161a:	e79d      	b.n	8001558 <__aeabi_dadd+0x4e0>
 800161c:	001c      	movs	r4, r3
 800161e:	000f      	movs	r7, r1
 8001620:	3c20      	subs	r4, #32
 8001622:	40e7      	lsrs	r7, r4
 8001624:	2b20      	cmp	r3, #32
 8001626:	d003      	beq.n	8001630 <__aeabi_dadd+0x5b8>
 8001628:	2440      	movs	r4, #64	; 0x40
 800162a:	1ae3      	subs	r3, r4, r3
 800162c:	4099      	lsls	r1, r3
 800162e:	4308      	orrs	r0, r1
 8001630:	1e41      	subs	r1, r0, #1
 8001632:	4188      	sbcs	r0, r1
 8001634:	4338      	orrs	r0, r7
 8001636:	e67c      	b.n	8001332 <__aeabi_dadd+0x2ba>
 8001638:	2200      	movs	r2, #0
 800163a:	2400      	movs	r4, #0
 800163c:	e625      	b.n	800128a <__aeabi_dadd+0x212>
 800163e:	1a17      	subs	r7, r2, r0
 8001640:	4643      	mov	r3, r8
 8001642:	42ba      	cmp	r2, r7
 8001644:	4192      	sbcs	r2, r2
 8001646:	1a59      	subs	r1, r3, r1
 8001648:	4252      	negs	r2, r2
 800164a:	1a89      	subs	r1, r1, r2
 800164c:	4664      	mov	r4, ip
 800164e:	0035      	movs	r5, r6
 8001650:	e543      	b.n	80010da <__aeabi_dadd+0x62>
 8001652:	4641      	mov	r1, r8
 8001654:	0010      	movs	r0, r2
 8001656:	4d14      	ldr	r5, [pc, #80]	; (80016a8 <__aeabi_dadd+0x630>)
 8001658:	e610      	b.n	800127c <__aeabi_dadd+0x204>
 800165a:	2280      	movs	r2, #128	; 0x80
 800165c:	2400      	movs	r4, #0
 800165e:	0312      	lsls	r2, r2, #12
 8001660:	e680      	b.n	8001364 <__aeabi_dadd+0x2ec>
 8001662:	001d      	movs	r5, r3
 8001664:	000f      	movs	r7, r1
 8001666:	3d20      	subs	r5, #32
 8001668:	40ef      	lsrs	r7, r5
 800166a:	46bc      	mov	ip, r7
 800166c:	2b20      	cmp	r3, #32
 800166e:	d003      	beq.n	8001678 <__aeabi_dadd+0x600>
 8001670:	2540      	movs	r5, #64	; 0x40
 8001672:	1aeb      	subs	r3, r5, r3
 8001674:	4099      	lsls	r1, r3
 8001676:	4308      	orrs	r0, r1
 8001678:	0007      	movs	r7, r0
 800167a:	4663      	mov	r3, ip
 800167c:	1e78      	subs	r0, r7, #1
 800167e:	4187      	sbcs	r7, r0
 8001680:	431f      	orrs	r7, r3
 8001682:	e769      	b.n	8001558 <__aeabi_dadd+0x4e0>
 8001684:	1887      	adds	r7, r0, r2
 8001686:	4297      	cmp	r7, r2
 8001688:	419b      	sbcs	r3, r3
 800168a:	4441      	add	r1, r8
 800168c:	425b      	negs	r3, r3
 800168e:	18c9      	adds	r1, r1, r3
 8001690:	0035      	movs	r5, r6
 8001692:	e5a3      	b.n	80011dc <__aeabi_dadd+0x164>
 8001694:	003b      	movs	r3, r7
 8001696:	4333      	orrs	r3, r6
 8001698:	d0ce      	beq.n	8001638 <__aeabi_dadd+0x5c0>
 800169a:	2207      	movs	r2, #7
 800169c:	0031      	movs	r1, r6
 800169e:	403a      	ands	r2, r7
 80016a0:	e652      	b.n	8001348 <__aeabi_dadd+0x2d0>
 80016a2:	2300      	movs	r3, #0
 80016a4:	001a      	movs	r2, r3
 80016a6:	e5f4      	b.n	8001292 <__aeabi_dadd+0x21a>
 80016a8:	000007ff 	.word	0x000007ff
 80016ac:	ff7fffff 	.word	0xff7fffff

080016b0 <__aeabi_ddiv>:
 80016b0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80016b2:	4657      	mov	r7, sl
 80016b4:	46de      	mov	lr, fp
 80016b6:	464e      	mov	r6, r9
 80016b8:	4645      	mov	r5, r8
 80016ba:	b5e0      	push	{r5, r6, r7, lr}
 80016bc:	4683      	mov	fp, r0
 80016be:	0007      	movs	r7, r0
 80016c0:	030e      	lsls	r6, r1, #12
 80016c2:	0048      	lsls	r0, r1, #1
 80016c4:	b085      	sub	sp, #20
 80016c6:	4692      	mov	sl, r2
 80016c8:	001c      	movs	r4, r3
 80016ca:	0b36      	lsrs	r6, r6, #12
 80016cc:	0d40      	lsrs	r0, r0, #21
 80016ce:	0fcd      	lsrs	r5, r1, #31
 80016d0:	2800      	cmp	r0, #0
 80016d2:	d100      	bne.n	80016d6 <__aeabi_ddiv+0x26>
 80016d4:	e09d      	b.n	8001812 <__aeabi_ddiv+0x162>
 80016d6:	4b95      	ldr	r3, [pc, #596]	; (800192c <__aeabi_ddiv+0x27c>)
 80016d8:	4298      	cmp	r0, r3
 80016da:	d039      	beq.n	8001750 <__aeabi_ddiv+0xa0>
 80016dc:	2380      	movs	r3, #128	; 0x80
 80016de:	00f6      	lsls	r6, r6, #3
 80016e0:	041b      	lsls	r3, r3, #16
 80016e2:	431e      	orrs	r6, r3
 80016e4:	4a92      	ldr	r2, [pc, #584]	; (8001930 <__aeabi_ddiv+0x280>)
 80016e6:	0f7b      	lsrs	r3, r7, #29
 80016e8:	4333      	orrs	r3, r6
 80016ea:	4699      	mov	r9, r3
 80016ec:	4694      	mov	ip, r2
 80016ee:	0003      	movs	r3, r0
 80016f0:	4463      	add	r3, ip
 80016f2:	9300      	str	r3, [sp, #0]
 80016f4:	2300      	movs	r3, #0
 80016f6:	2600      	movs	r6, #0
 80016f8:	00ff      	lsls	r7, r7, #3
 80016fa:	9302      	str	r3, [sp, #8]
 80016fc:	0323      	lsls	r3, r4, #12
 80016fe:	0b1b      	lsrs	r3, r3, #12
 8001700:	4698      	mov	r8, r3
 8001702:	0063      	lsls	r3, r4, #1
 8001704:	0fe4      	lsrs	r4, r4, #31
 8001706:	4652      	mov	r2, sl
 8001708:	0d5b      	lsrs	r3, r3, #21
 800170a:	9401      	str	r4, [sp, #4]
 800170c:	d100      	bne.n	8001710 <__aeabi_ddiv+0x60>
 800170e:	e0b3      	b.n	8001878 <__aeabi_ddiv+0x1c8>
 8001710:	4986      	ldr	r1, [pc, #536]	; (800192c <__aeabi_ddiv+0x27c>)
 8001712:	428b      	cmp	r3, r1
 8001714:	d100      	bne.n	8001718 <__aeabi_ddiv+0x68>
 8001716:	e09e      	b.n	8001856 <__aeabi_ddiv+0x1a6>
 8001718:	4642      	mov	r2, r8
 800171a:	00d1      	lsls	r1, r2, #3
 800171c:	2280      	movs	r2, #128	; 0x80
 800171e:	0412      	lsls	r2, r2, #16
 8001720:	430a      	orrs	r2, r1
 8001722:	4651      	mov	r1, sl
 8001724:	0f49      	lsrs	r1, r1, #29
 8001726:	4311      	orrs	r1, r2
 8001728:	468b      	mov	fp, r1
 800172a:	4981      	ldr	r1, [pc, #516]	; (8001930 <__aeabi_ddiv+0x280>)
 800172c:	4652      	mov	r2, sl
 800172e:	468c      	mov	ip, r1
 8001730:	9900      	ldr	r1, [sp, #0]
 8001732:	4463      	add	r3, ip
 8001734:	1acb      	subs	r3, r1, r3
 8001736:	2100      	movs	r1, #0
 8001738:	00d2      	lsls	r2, r2, #3
 800173a:	9300      	str	r3, [sp, #0]
 800173c:	002b      	movs	r3, r5
 800173e:	4063      	eors	r3, r4
 8001740:	469a      	mov	sl, r3
 8001742:	2e0f      	cmp	r6, #15
 8001744:	d900      	bls.n	8001748 <__aeabi_ddiv+0x98>
 8001746:	e105      	b.n	8001954 <__aeabi_ddiv+0x2a4>
 8001748:	4b7a      	ldr	r3, [pc, #488]	; (8001934 <__aeabi_ddiv+0x284>)
 800174a:	00b6      	lsls	r6, r6, #2
 800174c:	599b      	ldr	r3, [r3, r6]
 800174e:	469f      	mov	pc, r3
 8001750:	465b      	mov	r3, fp
 8001752:	4333      	orrs	r3, r6
 8001754:	4699      	mov	r9, r3
 8001756:	d000      	beq.n	800175a <__aeabi_ddiv+0xaa>
 8001758:	e0b8      	b.n	80018cc <__aeabi_ddiv+0x21c>
 800175a:	2302      	movs	r3, #2
 800175c:	2608      	movs	r6, #8
 800175e:	2700      	movs	r7, #0
 8001760:	9000      	str	r0, [sp, #0]
 8001762:	9302      	str	r3, [sp, #8]
 8001764:	e7ca      	b.n	80016fc <__aeabi_ddiv+0x4c>
 8001766:	46cb      	mov	fp, r9
 8001768:	003a      	movs	r2, r7
 800176a:	9902      	ldr	r1, [sp, #8]
 800176c:	9501      	str	r5, [sp, #4]
 800176e:	9b01      	ldr	r3, [sp, #4]
 8001770:	469a      	mov	sl, r3
 8001772:	2902      	cmp	r1, #2
 8001774:	d027      	beq.n	80017c6 <__aeabi_ddiv+0x116>
 8001776:	2903      	cmp	r1, #3
 8001778:	d100      	bne.n	800177c <__aeabi_ddiv+0xcc>
 800177a:	e280      	b.n	8001c7e <__aeabi_ddiv+0x5ce>
 800177c:	2901      	cmp	r1, #1
 800177e:	d044      	beq.n	800180a <__aeabi_ddiv+0x15a>
 8001780:	496d      	ldr	r1, [pc, #436]	; (8001938 <__aeabi_ddiv+0x288>)
 8001782:	9b00      	ldr	r3, [sp, #0]
 8001784:	468c      	mov	ip, r1
 8001786:	4463      	add	r3, ip
 8001788:	001c      	movs	r4, r3
 800178a:	2c00      	cmp	r4, #0
 800178c:	dd38      	ble.n	8001800 <__aeabi_ddiv+0x150>
 800178e:	0753      	lsls	r3, r2, #29
 8001790:	d000      	beq.n	8001794 <__aeabi_ddiv+0xe4>
 8001792:	e213      	b.n	8001bbc <__aeabi_ddiv+0x50c>
 8001794:	08d2      	lsrs	r2, r2, #3
 8001796:	465b      	mov	r3, fp
 8001798:	01db      	lsls	r3, r3, #7
 800179a:	d509      	bpl.n	80017b0 <__aeabi_ddiv+0x100>
 800179c:	4659      	mov	r1, fp
 800179e:	4b67      	ldr	r3, [pc, #412]	; (800193c <__aeabi_ddiv+0x28c>)
 80017a0:	4019      	ands	r1, r3
 80017a2:	468b      	mov	fp, r1
 80017a4:	2180      	movs	r1, #128	; 0x80
 80017a6:	00c9      	lsls	r1, r1, #3
 80017a8:	468c      	mov	ip, r1
 80017aa:	9b00      	ldr	r3, [sp, #0]
 80017ac:	4463      	add	r3, ip
 80017ae:	001c      	movs	r4, r3
 80017b0:	4b63      	ldr	r3, [pc, #396]	; (8001940 <__aeabi_ddiv+0x290>)
 80017b2:	429c      	cmp	r4, r3
 80017b4:	dc07      	bgt.n	80017c6 <__aeabi_ddiv+0x116>
 80017b6:	465b      	mov	r3, fp
 80017b8:	0564      	lsls	r4, r4, #21
 80017ba:	075f      	lsls	r7, r3, #29
 80017bc:	025b      	lsls	r3, r3, #9
 80017be:	4317      	orrs	r7, r2
 80017c0:	0b1b      	lsrs	r3, r3, #12
 80017c2:	0d62      	lsrs	r2, r4, #21
 80017c4:	e002      	b.n	80017cc <__aeabi_ddiv+0x11c>
 80017c6:	2300      	movs	r3, #0
 80017c8:	2700      	movs	r7, #0
 80017ca:	4a58      	ldr	r2, [pc, #352]	; (800192c <__aeabi_ddiv+0x27c>)
 80017cc:	2100      	movs	r1, #0
 80017ce:	031b      	lsls	r3, r3, #12
 80017d0:	0b1c      	lsrs	r4, r3, #12
 80017d2:	0d0b      	lsrs	r3, r1, #20
 80017d4:	051b      	lsls	r3, r3, #20
 80017d6:	4323      	orrs	r3, r4
 80017d8:	0514      	lsls	r4, r2, #20
 80017da:	4a5a      	ldr	r2, [pc, #360]	; (8001944 <__aeabi_ddiv+0x294>)
 80017dc:	0038      	movs	r0, r7
 80017de:	4013      	ands	r3, r2
 80017e0:	431c      	orrs	r4, r3
 80017e2:	4653      	mov	r3, sl
 80017e4:	0064      	lsls	r4, r4, #1
 80017e6:	07db      	lsls	r3, r3, #31
 80017e8:	0864      	lsrs	r4, r4, #1
 80017ea:	431c      	orrs	r4, r3
 80017ec:	0021      	movs	r1, r4
 80017ee:	b005      	add	sp, #20
 80017f0:	bc3c      	pop	{r2, r3, r4, r5}
 80017f2:	4690      	mov	r8, r2
 80017f4:	4699      	mov	r9, r3
 80017f6:	46a2      	mov	sl, r4
 80017f8:	46ab      	mov	fp, r5
 80017fa:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80017fc:	2201      	movs	r2, #1
 80017fe:	4252      	negs	r2, r2
 8001800:	2301      	movs	r3, #1
 8001802:	1b1b      	subs	r3, r3, r4
 8001804:	2b38      	cmp	r3, #56	; 0x38
 8001806:	dc00      	bgt.n	800180a <__aeabi_ddiv+0x15a>
 8001808:	e1ad      	b.n	8001b66 <__aeabi_ddiv+0x4b6>
 800180a:	2200      	movs	r2, #0
 800180c:	2300      	movs	r3, #0
 800180e:	2700      	movs	r7, #0
 8001810:	e7dc      	b.n	80017cc <__aeabi_ddiv+0x11c>
 8001812:	465b      	mov	r3, fp
 8001814:	4333      	orrs	r3, r6
 8001816:	4699      	mov	r9, r3
 8001818:	d05e      	beq.n	80018d8 <__aeabi_ddiv+0x228>
 800181a:	2e00      	cmp	r6, #0
 800181c:	d100      	bne.n	8001820 <__aeabi_ddiv+0x170>
 800181e:	e18a      	b.n	8001b36 <__aeabi_ddiv+0x486>
 8001820:	0030      	movs	r0, r6
 8001822:	f001 f8d7 	bl	80029d4 <__clzsi2>
 8001826:	0003      	movs	r3, r0
 8001828:	3b0b      	subs	r3, #11
 800182a:	2b1c      	cmp	r3, #28
 800182c:	dd00      	ble.n	8001830 <__aeabi_ddiv+0x180>
 800182e:	e17b      	b.n	8001b28 <__aeabi_ddiv+0x478>
 8001830:	221d      	movs	r2, #29
 8001832:	1ad3      	subs	r3, r2, r3
 8001834:	465a      	mov	r2, fp
 8001836:	0001      	movs	r1, r0
 8001838:	40da      	lsrs	r2, r3
 800183a:	3908      	subs	r1, #8
 800183c:	408e      	lsls	r6, r1
 800183e:	0013      	movs	r3, r2
 8001840:	465f      	mov	r7, fp
 8001842:	4333      	orrs	r3, r6
 8001844:	4699      	mov	r9, r3
 8001846:	408f      	lsls	r7, r1
 8001848:	4b3f      	ldr	r3, [pc, #252]	; (8001948 <__aeabi_ddiv+0x298>)
 800184a:	2600      	movs	r6, #0
 800184c:	1a1b      	subs	r3, r3, r0
 800184e:	9300      	str	r3, [sp, #0]
 8001850:	2300      	movs	r3, #0
 8001852:	9302      	str	r3, [sp, #8]
 8001854:	e752      	b.n	80016fc <__aeabi_ddiv+0x4c>
 8001856:	4641      	mov	r1, r8
 8001858:	4653      	mov	r3, sl
 800185a:	430b      	orrs	r3, r1
 800185c:	493b      	ldr	r1, [pc, #236]	; (800194c <__aeabi_ddiv+0x29c>)
 800185e:	469b      	mov	fp, r3
 8001860:	468c      	mov	ip, r1
 8001862:	9b00      	ldr	r3, [sp, #0]
 8001864:	4463      	add	r3, ip
 8001866:	9300      	str	r3, [sp, #0]
 8001868:	465b      	mov	r3, fp
 800186a:	2b00      	cmp	r3, #0
 800186c:	d13b      	bne.n	80018e6 <__aeabi_ddiv+0x236>
 800186e:	2302      	movs	r3, #2
 8001870:	2200      	movs	r2, #0
 8001872:	431e      	orrs	r6, r3
 8001874:	2102      	movs	r1, #2
 8001876:	e761      	b.n	800173c <__aeabi_ddiv+0x8c>
 8001878:	4643      	mov	r3, r8
 800187a:	4313      	orrs	r3, r2
 800187c:	469b      	mov	fp, r3
 800187e:	d037      	beq.n	80018f0 <__aeabi_ddiv+0x240>
 8001880:	4643      	mov	r3, r8
 8001882:	2b00      	cmp	r3, #0
 8001884:	d100      	bne.n	8001888 <__aeabi_ddiv+0x1d8>
 8001886:	e162      	b.n	8001b4e <__aeabi_ddiv+0x49e>
 8001888:	4640      	mov	r0, r8
 800188a:	f001 f8a3 	bl	80029d4 <__clzsi2>
 800188e:	0003      	movs	r3, r0
 8001890:	3b0b      	subs	r3, #11
 8001892:	2b1c      	cmp	r3, #28
 8001894:	dd00      	ble.n	8001898 <__aeabi_ddiv+0x1e8>
 8001896:	e153      	b.n	8001b40 <__aeabi_ddiv+0x490>
 8001898:	0002      	movs	r2, r0
 800189a:	4641      	mov	r1, r8
 800189c:	3a08      	subs	r2, #8
 800189e:	4091      	lsls	r1, r2
 80018a0:	4688      	mov	r8, r1
 80018a2:	211d      	movs	r1, #29
 80018a4:	1acb      	subs	r3, r1, r3
 80018a6:	4651      	mov	r1, sl
 80018a8:	40d9      	lsrs	r1, r3
 80018aa:	000b      	movs	r3, r1
 80018ac:	4641      	mov	r1, r8
 80018ae:	430b      	orrs	r3, r1
 80018b0:	469b      	mov	fp, r3
 80018b2:	4653      	mov	r3, sl
 80018b4:	4093      	lsls	r3, r2
 80018b6:	001a      	movs	r2, r3
 80018b8:	9b00      	ldr	r3, [sp, #0]
 80018ba:	4925      	ldr	r1, [pc, #148]	; (8001950 <__aeabi_ddiv+0x2a0>)
 80018bc:	469c      	mov	ip, r3
 80018be:	4460      	add	r0, ip
 80018c0:	0003      	movs	r3, r0
 80018c2:	468c      	mov	ip, r1
 80018c4:	4463      	add	r3, ip
 80018c6:	9300      	str	r3, [sp, #0]
 80018c8:	2100      	movs	r1, #0
 80018ca:	e737      	b.n	800173c <__aeabi_ddiv+0x8c>
 80018cc:	2303      	movs	r3, #3
 80018ce:	46b1      	mov	r9, r6
 80018d0:	9000      	str	r0, [sp, #0]
 80018d2:	260c      	movs	r6, #12
 80018d4:	9302      	str	r3, [sp, #8]
 80018d6:	e711      	b.n	80016fc <__aeabi_ddiv+0x4c>
 80018d8:	2300      	movs	r3, #0
 80018da:	9300      	str	r3, [sp, #0]
 80018dc:	3301      	adds	r3, #1
 80018de:	2604      	movs	r6, #4
 80018e0:	2700      	movs	r7, #0
 80018e2:	9302      	str	r3, [sp, #8]
 80018e4:	e70a      	b.n	80016fc <__aeabi_ddiv+0x4c>
 80018e6:	2303      	movs	r3, #3
 80018e8:	46c3      	mov	fp, r8
 80018ea:	431e      	orrs	r6, r3
 80018ec:	2103      	movs	r1, #3
 80018ee:	e725      	b.n	800173c <__aeabi_ddiv+0x8c>
 80018f0:	3301      	adds	r3, #1
 80018f2:	431e      	orrs	r6, r3
 80018f4:	2200      	movs	r2, #0
 80018f6:	2101      	movs	r1, #1
 80018f8:	e720      	b.n	800173c <__aeabi_ddiv+0x8c>
 80018fa:	2300      	movs	r3, #0
 80018fc:	469a      	mov	sl, r3
 80018fe:	2380      	movs	r3, #128	; 0x80
 8001900:	2700      	movs	r7, #0
 8001902:	031b      	lsls	r3, r3, #12
 8001904:	4a09      	ldr	r2, [pc, #36]	; (800192c <__aeabi_ddiv+0x27c>)
 8001906:	e761      	b.n	80017cc <__aeabi_ddiv+0x11c>
 8001908:	2380      	movs	r3, #128	; 0x80
 800190a:	4649      	mov	r1, r9
 800190c:	031b      	lsls	r3, r3, #12
 800190e:	4219      	tst	r1, r3
 8001910:	d100      	bne.n	8001914 <__aeabi_ddiv+0x264>
 8001912:	e0e2      	b.n	8001ada <__aeabi_ddiv+0x42a>
 8001914:	4659      	mov	r1, fp
 8001916:	4219      	tst	r1, r3
 8001918:	d000      	beq.n	800191c <__aeabi_ddiv+0x26c>
 800191a:	e0de      	b.n	8001ada <__aeabi_ddiv+0x42a>
 800191c:	430b      	orrs	r3, r1
 800191e:	031b      	lsls	r3, r3, #12
 8001920:	0017      	movs	r7, r2
 8001922:	0b1b      	lsrs	r3, r3, #12
 8001924:	46a2      	mov	sl, r4
 8001926:	4a01      	ldr	r2, [pc, #4]	; (800192c <__aeabi_ddiv+0x27c>)
 8001928:	e750      	b.n	80017cc <__aeabi_ddiv+0x11c>
 800192a:	46c0      	nop			; (mov r8, r8)
 800192c:	000007ff 	.word	0x000007ff
 8001930:	fffffc01 	.word	0xfffffc01
 8001934:	08009c3c 	.word	0x08009c3c
 8001938:	000003ff 	.word	0x000003ff
 800193c:	feffffff 	.word	0xfeffffff
 8001940:	000007fe 	.word	0x000007fe
 8001944:	800fffff 	.word	0x800fffff
 8001948:	fffffc0d 	.word	0xfffffc0d
 800194c:	fffff801 	.word	0xfffff801
 8001950:	000003f3 	.word	0x000003f3
 8001954:	45d9      	cmp	r9, fp
 8001956:	d900      	bls.n	800195a <__aeabi_ddiv+0x2aa>
 8001958:	e0cb      	b.n	8001af2 <__aeabi_ddiv+0x442>
 800195a:	d100      	bne.n	800195e <__aeabi_ddiv+0x2ae>
 800195c:	e0c6      	b.n	8001aec <__aeabi_ddiv+0x43c>
 800195e:	003c      	movs	r4, r7
 8001960:	4648      	mov	r0, r9
 8001962:	2700      	movs	r7, #0
 8001964:	9b00      	ldr	r3, [sp, #0]
 8001966:	3b01      	subs	r3, #1
 8001968:	9300      	str	r3, [sp, #0]
 800196a:	465b      	mov	r3, fp
 800196c:	0e16      	lsrs	r6, r2, #24
 800196e:	021b      	lsls	r3, r3, #8
 8001970:	431e      	orrs	r6, r3
 8001972:	0213      	lsls	r3, r2, #8
 8001974:	4698      	mov	r8, r3
 8001976:	0433      	lsls	r3, r6, #16
 8001978:	0c1b      	lsrs	r3, r3, #16
 800197a:	4699      	mov	r9, r3
 800197c:	0c31      	lsrs	r1, r6, #16
 800197e:	9101      	str	r1, [sp, #4]
 8001980:	f7fe fc48 	bl	8000214 <__aeabi_uidivmod>
 8001984:	464a      	mov	r2, r9
 8001986:	4342      	muls	r2, r0
 8001988:	040b      	lsls	r3, r1, #16
 800198a:	0c21      	lsrs	r1, r4, #16
 800198c:	0005      	movs	r5, r0
 800198e:	4319      	orrs	r1, r3
 8001990:	428a      	cmp	r2, r1
 8001992:	d907      	bls.n	80019a4 <__aeabi_ddiv+0x2f4>
 8001994:	1989      	adds	r1, r1, r6
 8001996:	3d01      	subs	r5, #1
 8001998:	428e      	cmp	r6, r1
 800199a:	d803      	bhi.n	80019a4 <__aeabi_ddiv+0x2f4>
 800199c:	428a      	cmp	r2, r1
 800199e:	d901      	bls.n	80019a4 <__aeabi_ddiv+0x2f4>
 80019a0:	1e85      	subs	r5, r0, #2
 80019a2:	1989      	adds	r1, r1, r6
 80019a4:	1a88      	subs	r0, r1, r2
 80019a6:	9901      	ldr	r1, [sp, #4]
 80019a8:	f7fe fc34 	bl	8000214 <__aeabi_uidivmod>
 80019ac:	0409      	lsls	r1, r1, #16
 80019ae:	468c      	mov	ip, r1
 80019b0:	464a      	mov	r2, r9
 80019b2:	0421      	lsls	r1, r4, #16
 80019b4:	4664      	mov	r4, ip
 80019b6:	4342      	muls	r2, r0
 80019b8:	0c09      	lsrs	r1, r1, #16
 80019ba:	0003      	movs	r3, r0
 80019bc:	4321      	orrs	r1, r4
 80019be:	428a      	cmp	r2, r1
 80019c0:	d904      	bls.n	80019cc <__aeabi_ddiv+0x31c>
 80019c2:	1989      	adds	r1, r1, r6
 80019c4:	3b01      	subs	r3, #1
 80019c6:	428e      	cmp	r6, r1
 80019c8:	d800      	bhi.n	80019cc <__aeabi_ddiv+0x31c>
 80019ca:	e0f1      	b.n	8001bb0 <__aeabi_ddiv+0x500>
 80019cc:	042d      	lsls	r5, r5, #16
 80019ce:	431d      	orrs	r5, r3
 80019d0:	46ab      	mov	fp, r5
 80019d2:	4643      	mov	r3, r8
 80019d4:	1a89      	subs	r1, r1, r2
 80019d6:	4642      	mov	r2, r8
 80019d8:	0c28      	lsrs	r0, r5, #16
 80019da:	0412      	lsls	r2, r2, #16
 80019dc:	0c1d      	lsrs	r5, r3, #16
 80019de:	465b      	mov	r3, fp
 80019e0:	0c14      	lsrs	r4, r2, #16
 80019e2:	0022      	movs	r2, r4
 80019e4:	041b      	lsls	r3, r3, #16
 80019e6:	0c1b      	lsrs	r3, r3, #16
 80019e8:	435a      	muls	r2, r3
 80019ea:	9403      	str	r4, [sp, #12]
 80019ec:	436b      	muls	r3, r5
 80019ee:	4344      	muls	r4, r0
 80019f0:	9502      	str	r5, [sp, #8]
 80019f2:	4368      	muls	r0, r5
 80019f4:	191b      	adds	r3, r3, r4
 80019f6:	0c15      	lsrs	r5, r2, #16
 80019f8:	18eb      	adds	r3, r5, r3
 80019fa:	429c      	cmp	r4, r3
 80019fc:	d903      	bls.n	8001a06 <__aeabi_ddiv+0x356>
 80019fe:	2480      	movs	r4, #128	; 0x80
 8001a00:	0264      	lsls	r4, r4, #9
 8001a02:	46a4      	mov	ip, r4
 8001a04:	4460      	add	r0, ip
 8001a06:	0c1c      	lsrs	r4, r3, #16
 8001a08:	0415      	lsls	r5, r2, #16
 8001a0a:	041b      	lsls	r3, r3, #16
 8001a0c:	0c2d      	lsrs	r5, r5, #16
 8001a0e:	1820      	adds	r0, r4, r0
 8001a10:	195d      	adds	r5, r3, r5
 8001a12:	4281      	cmp	r1, r0
 8001a14:	d377      	bcc.n	8001b06 <__aeabi_ddiv+0x456>
 8001a16:	d073      	beq.n	8001b00 <__aeabi_ddiv+0x450>
 8001a18:	1a0c      	subs	r4, r1, r0
 8001a1a:	4aa2      	ldr	r2, [pc, #648]	; (8001ca4 <__aeabi_ddiv+0x5f4>)
 8001a1c:	1b7d      	subs	r5, r7, r5
 8001a1e:	42af      	cmp	r7, r5
 8001a20:	41bf      	sbcs	r7, r7
 8001a22:	4694      	mov	ip, r2
 8001a24:	9b00      	ldr	r3, [sp, #0]
 8001a26:	427f      	negs	r7, r7
 8001a28:	4463      	add	r3, ip
 8001a2a:	1be0      	subs	r0, r4, r7
 8001a2c:	001c      	movs	r4, r3
 8001a2e:	4286      	cmp	r6, r0
 8001a30:	d100      	bne.n	8001a34 <__aeabi_ddiv+0x384>
 8001a32:	e0db      	b.n	8001bec <__aeabi_ddiv+0x53c>
 8001a34:	9901      	ldr	r1, [sp, #4]
 8001a36:	f7fe fbed 	bl	8000214 <__aeabi_uidivmod>
 8001a3a:	464a      	mov	r2, r9
 8001a3c:	4342      	muls	r2, r0
 8001a3e:	040b      	lsls	r3, r1, #16
 8001a40:	0c29      	lsrs	r1, r5, #16
 8001a42:	0007      	movs	r7, r0
 8001a44:	4319      	orrs	r1, r3
 8001a46:	428a      	cmp	r2, r1
 8001a48:	d907      	bls.n	8001a5a <__aeabi_ddiv+0x3aa>
 8001a4a:	1989      	adds	r1, r1, r6
 8001a4c:	3f01      	subs	r7, #1
 8001a4e:	428e      	cmp	r6, r1
 8001a50:	d803      	bhi.n	8001a5a <__aeabi_ddiv+0x3aa>
 8001a52:	428a      	cmp	r2, r1
 8001a54:	d901      	bls.n	8001a5a <__aeabi_ddiv+0x3aa>
 8001a56:	1e87      	subs	r7, r0, #2
 8001a58:	1989      	adds	r1, r1, r6
 8001a5a:	1a88      	subs	r0, r1, r2
 8001a5c:	9901      	ldr	r1, [sp, #4]
 8001a5e:	f7fe fbd9 	bl	8000214 <__aeabi_uidivmod>
 8001a62:	0409      	lsls	r1, r1, #16
 8001a64:	464a      	mov	r2, r9
 8001a66:	4689      	mov	r9, r1
 8001a68:	0429      	lsls	r1, r5, #16
 8001a6a:	464d      	mov	r5, r9
 8001a6c:	4342      	muls	r2, r0
 8001a6e:	0c09      	lsrs	r1, r1, #16
 8001a70:	0003      	movs	r3, r0
 8001a72:	4329      	orrs	r1, r5
 8001a74:	428a      	cmp	r2, r1
 8001a76:	d907      	bls.n	8001a88 <__aeabi_ddiv+0x3d8>
 8001a78:	1989      	adds	r1, r1, r6
 8001a7a:	3b01      	subs	r3, #1
 8001a7c:	428e      	cmp	r6, r1
 8001a7e:	d803      	bhi.n	8001a88 <__aeabi_ddiv+0x3d8>
 8001a80:	428a      	cmp	r2, r1
 8001a82:	d901      	bls.n	8001a88 <__aeabi_ddiv+0x3d8>
 8001a84:	1e83      	subs	r3, r0, #2
 8001a86:	1989      	adds	r1, r1, r6
 8001a88:	043f      	lsls	r7, r7, #16
 8001a8a:	1a89      	subs	r1, r1, r2
 8001a8c:	003a      	movs	r2, r7
 8001a8e:	9f03      	ldr	r7, [sp, #12]
 8001a90:	431a      	orrs	r2, r3
 8001a92:	0038      	movs	r0, r7
 8001a94:	0413      	lsls	r3, r2, #16
 8001a96:	0c1b      	lsrs	r3, r3, #16
 8001a98:	4358      	muls	r0, r3
 8001a9a:	4681      	mov	r9, r0
 8001a9c:	9802      	ldr	r0, [sp, #8]
 8001a9e:	0c15      	lsrs	r5, r2, #16
 8001aa0:	436f      	muls	r7, r5
 8001aa2:	4343      	muls	r3, r0
 8001aa4:	4345      	muls	r5, r0
 8001aa6:	4648      	mov	r0, r9
 8001aa8:	0c00      	lsrs	r0, r0, #16
 8001aaa:	4684      	mov	ip, r0
 8001aac:	19db      	adds	r3, r3, r7
 8001aae:	4463      	add	r3, ip
 8001ab0:	429f      	cmp	r7, r3
 8001ab2:	d903      	bls.n	8001abc <__aeabi_ddiv+0x40c>
 8001ab4:	2080      	movs	r0, #128	; 0x80
 8001ab6:	0240      	lsls	r0, r0, #9
 8001ab8:	4684      	mov	ip, r0
 8001aba:	4465      	add	r5, ip
 8001abc:	4648      	mov	r0, r9
 8001abe:	0c1f      	lsrs	r7, r3, #16
 8001ac0:	0400      	lsls	r0, r0, #16
 8001ac2:	041b      	lsls	r3, r3, #16
 8001ac4:	0c00      	lsrs	r0, r0, #16
 8001ac6:	197d      	adds	r5, r7, r5
 8001ac8:	1818      	adds	r0, r3, r0
 8001aca:	42a9      	cmp	r1, r5
 8001acc:	d200      	bcs.n	8001ad0 <__aeabi_ddiv+0x420>
 8001ace:	e084      	b.n	8001bda <__aeabi_ddiv+0x52a>
 8001ad0:	d100      	bne.n	8001ad4 <__aeabi_ddiv+0x424>
 8001ad2:	e07f      	b.n	8001bd4 <__aeabi_ddiv+0x524>
 8001ad4:	2301      	movs	r3, #1
 8001ad6:	431a      	orrs	r2, r3
 8001ad8:	e657      	b.n	800178a <__aeabi_ddiv+0xda>
 8001ada:	2380      	movs	r3, #128	; 0x80
 8001adc:	464a      	mov	r2, r9
 8001ade:	031b      	lsls	r3, r3, #12
 8001ae0:	4313      	orrs	r3, r2
 8001ae2:	031b      	lsls	r3, r3, #12
 8001ae4:	0b1b      	lsrs	r3, r3, #12
 8001ae6:	46aa      	mov	sl, r5
 8001ae8:	4a6f      	ldr	r2, [pc, #444]	; (8001ca8 <__aeabi_ddiv+0x5f8>)
 8001aea:	e66f      	b.n	80017cc <__aeabi_ddiv+0x11c>
 8001aec:	42ba      	cmp	r2, r7
 8001aee:	d900      	bls.n	8001af2 <__aeabi_ddiv+0x442>
 8001af0:	e735      	b.n	800195e <__aeabi_ddiv+0x2ae>
 8001af2:	464b      	mov	r3, r9
 8001af4:	07dc      	lsls	r4, r3, #31
 8001af6:	0858      	lsrs	r0, r3, #1
 8001af8:	087b      	lsrs	r3, r7, #1
 8001afa:	431c      	orrs	r4, r3
 8001afc:	07ff      	lsls	r7, r7, #31
 8001afe:	e734      	b.n	800196a <__aeabi_ddiv+0x2ba>
 8001b00:	2400      	movs	r4, #0
 8001b02:	42af      	cmp	r7, r5
 8001b04:	d289      	bcs.n	8001a1a <__aeabi_ddiv+0x36a>
 8001b06:	4447      	add	r7, r8
 8001b08:	4547      	cmp	r7, r8
 8001b0a:	41a4      	sbcs	r4, r4
 8001b0c:	465b      	mov	r3, fp
 8001b0e:	4264      	negs	r4, r4
 8001b10:	19a4      	adds	r4, r4, r6
 8001b12:	1864      	adds	r4, r4, r1
 8001b14:	3b01      	subs	r3, #1
 8001b16:	42a6      	cmp	r6, r4
 8001b18:	d21e      	bcs.n	8001b58 <__aeabi_ddiv+0x4a8>
 8001b1a:	42a0      	cmp	r0, r4
 8001b1c:	d86d      	bhi.n	8001bfa <__aeabi_ddiv+0x54a>
 8001b1e:	d100      	bne.n	8001b22 <__aeabi_ddiv+0x472>
 8001b20:	e0b6      	b.n	8001c90 <__aeabi_ddiv+0x5e0>
 8001b22:	1a24      	subs	r4, r4, r0
 8001b24:	469b      	mov	fp, r3
 8001b26:	e778      	b.n	8001a1a <__aeabi_ddiv+0x36a>
 8001b28:	0003      	movs	r3, r0
 8001b2a:	465a      	mov	r2, fp
 8001b2c:	3b28      	subs	r3, #40	; 0x28
 8001b2e:	409a      	lsls	r2, r3
 8001b30:	2700      	movs	r7, #0
 8001b32:	4691      	mov	r9, r2
 8001b34:	e688      	b.n	8001848 <__aeabi_ddiv+0x198>
 8001b36:	4658      	mov	r0, fp
 8001b38:	f000 ff4c 	bl	80029d4 <__clzsi2>
 8001b3c:	3020      	adds	r0, #32
 8001b3e:	e672      	b.n	8001826 <__aeabi_ddiv+0x176>
 8001b40:	0003      	movs	r3, r0
 8001b42:	4652      	mov	r2, sl
 8001b44:	3b28      	subs	r3, #40	; 0x28
 8001b46:	409a      	lsls	r2, r3
 8001b48:	4693      	mov	fp, r2
 8001b4a:	2200      	movs	r2, #0
 8001b4c:	e6b4      	b.n	80018b8 <__aeabi_ddiv+0x208>
 8001b4e:	4650      	mov	r0, sl
 8001b50:	f000 ff40 	bl	80029d4 <__clzsi2>
 8001b54:	3020      	adds	r0, #32
 8001b56:	e69a      	b.n	800188e <__aeabi_ddiv+0x1de>
 8001b58:	42a6      	cmp	r6, r4
 8001b5a:	d1e2      	bne.n	8001b22 <__aeabi_ddiv+0x472>
 8001b5c:	45b8      	cmp	r8, r7
 8001b5e:	d9dc      	bls.n	8001b1a <__aeabi_ddiv+0x46a>
 8001b60:	1a34      	subs	r4, r6, r0
 8001b62:	469b      	mov	fp, r3
 8001b64:	e759      	b.n	8001a1a <__aeabi_ddiv+0x36a>
 8001b66:	2b1f      	cmp	r3, #31
 8001b68:	dc65      	bgt.n	8001c36 <__aeabi_ddiv+0x586>
 8001b6a:	4c50      	ldr	r4, [pc, #320]	; (8001cac <__aeabi_ddiv+0x5fc>)
 8001b6c:	9900      	ldr	r1, [sp, #0]
 8001b6e:	46a4      	mov	ip, r4
 8001b70:	465c      	mov	r4, fp
 8001b72:	4461      	add	r1, ip
 8001b74:	0008      	movs	r0, r1
 8001b76:	408c      	lsls	r4, r1
 8001b78:	0011      	movs	r1, r2
 8001b7a:	4082      	lsls	r2, r0
 8001b7c:	40d9      	lsrs	r1, r3
 8001b7e:	1e50      	subs	r0, r2, #1
 8001b80:	4182      	sbcs	r2, r0
 8001b82:	430c      	orrs	r4, r1
 8001b84:	4314      	orrs	r4, r2
 8001b86:	465a      	mov	r2, fp
 8001b88:	40da      	lsrs	r2, r3
 8001b8a:	0013      	movs	r3, r2
 8001b8c:	0762      	lsls	r2, r4, #29
 8001b8e:	d009      	beq.n	8001ba4 <__aeabi_ddiv+0x4f4>
 8001b90:	220f      	movs	r2, #15
 8001b92:	4022      	ands	r2, r4
 8001b94:	2a04      	cmp	r2, #4
 8001b96:	d005      	beq.n	8001ba4 <__aeabi_ddiv+0x4f4>
 8001b98:	0022      	movs	r2, r4
 8001b9a:	1d14      	adds	r4, r2, #4
 8001b9c:	4294      	cmp	r4, r2
 8001b9e:	4189      	sbcs	r1, r1
 8001ba0:	4249      	negs	r1, r1
 8001ba2:	185b      	adds	r3, r3, r1
 8001ba4:	021a      	lsls	r2, r3, #8
 8001ba6:	d562      	bpl.n	8001c6e <__aeabi_ddiv+0x5be>
 8001ba8:	2201      	movs	r2, #1
 8001baa:	2300      	movs	r3, #0
 8001bac:	2700      	movs	r7, #0
 8001bae:	e60d      	b.n	80017cc <__aeabi_ddiv+0x11c>
 8001bb0:	428a      	cmp	r2, r1
 8001bb2:	d800      	bhi.n	8001bb6 <__aeabi_ddiv+0x506>
 8001bb4:	e70a      	b.n	80019cc <__aeabi_ddiv+0x31c>
 8001bb6:	1e83      	subs	r3, r0, #2
 8001bb8:	1989      	adds	r1, r1, r6
 8001bba:	e707      	b.n	80019cc <__aeabi_ddiv+0x31c>
 8001bbc:	230f      	movs	r3, #15
 8001bbe:	4013      	ands	r3, r2
 8001bc0:	2b04      	cmp	r3, #4
 8001bc2:	d100      	bne.n	8001bc6 <__aeabi_ddiv+0x516>
 8001bc4:	e5e6      	b.n	8001794 <__aeabi_ddiv+0xe4>
 8001bc6:	1d17      	adds	r7, r2, #4
 8001bc8:	4297      	cmp	r7, r2
 8001bca:	4192      	sbcs	r2, r2
 8001bcc:	4253      	negs	r3, r2
 8001bce:	449b      	add	fp, r3
 8001bd0:	08fa      	lsrs	r2, r7, #3
 8001bd2:	e5e0      	b.n	8001796 <__aeabi_ddiv+0xe6>
 8001bd4:	2800      	cmp	r0, #0
 8001bd6:	d100      	bne.n	8001bda <__aeabi_ddiv+0x52a>
 8001bd8:	e5d7      	b.n	800178a <__aeabi_ddiv+0xda>
 8001bda:	1871      	adds	r1, r6, r1
 8001bdc:	1e53      	subs	r3, r2, #1
 8001bde:	42b1      	cmp	r1, r6
 8001be0:	d327      	bcc.n	8001c32 <__aeabi_ddiv+0x582>
 8001be2:	42a9      	cmp	r1, r5
 8001be4:	d315      	bcc.n	8001c12 <__aeabi_ddiv+0x562>
 8001be6:	d058      	beq.n	8001c9a <__aeabi_ddiv+0x5ea>
 8001be8:	001a      	movs	r2, r3
 8001bea:	e773      	b.n	8001ad4 <__aeabi_ddiv+0x424>
 8001bec:	2b00      	cmp	r3, #0
 8001bee:	dc00      	bgt.n	8001bf2 <__aeabi_ddiv+0x542>
 8001bf0:	e604      	b.n	80017fc <__aeabi_ddiv+0x14c>
 8001bf2:	2301      	movs	r3, #1
 8001bf4:	2200      	movs	r2, #0
 8001bf6:	449b      	add	fp, r3
 8001bf8:	e5cd      	b.n	8001796 <__aeabi_ddiv+0xe6>
 8001bfa:	2302      	movs	r3, #2
 8001bfc:	4447      	add	r7, r8
 8001bfe:	4547      	cmp	r7, r8
 8001c00:	4189      	sbcs	r1, r1
 8001c02:	425b      	negs	r3, r3
 8001c04:	469c      	mov	ip, r3
 8001c06:	4249      	negs	r1, r1
 8001c08:	1989      	adds	r1, r1, r6
 8001c0a:	190c      	adds	r4, r1, r4
 8001c0c:	44e3      	add	fp, ip
 8001c0e:	1a24      	subs	r4, r4, r0
 8001c10:	e703      	b.n	8001a1a <__aeabi_ddiv+0x36a>
 8001c12:	4643      	mov	r3, r8
 8001c14:	005f      	lsls	r7, r3, #1
 8001c16:	4547      	cmp	r7, r8
 8001c18:	419b      	sbcs	r3, r3
 8001c1a:	46b8      	mov	r8, r7
 8001c1c:	425b      	negs	r3, r3
 8001c1e:	199e      	adds	r6, r3, r6
 8001c20:	3a02      	subs	r2, #2
 8001c22:	1989      	adds	r1, r1, r6
 8001c24:	42a9      	cmp	r1, r5
 8001c26:	d000      	beq.n	8001c2a <__aeabi_ddiv+0x57a>
 8001c28:	e754      	b.n	8001ad4 <__aeabi_ddiv+0x424>
 8001c2a:	4540      	cmp	r0, r8
 8001c2c:	d000      	beq.n	8001c30 <__aeabi_ddiv+0x580>
 8001c2e:	e751      	b.n	8001ad4 <__aeabi_ddiv+0x424>
 8001c30:	e5ab      	b.n	800178a <__aeabi_ddiv+0xda>
 8001c32:	001a      	movs	r2, r3
 8001c34:	e7f6      	b.n	8001c24 <__aeabi_ddiv+0x574>
 8001c36:	211f      	movs	r1, #31
 8001c38:	465f      	mov	r7, fp
 8001c3a:	4249      	negs	r1, r1
 8001c3c:	1b0c      	subs	r4, r1, r4
 8001c3e:	40e7      	lsrs	r7, r4
 8001c40:	2b20      	cmp	r3, #32
 8001c42:	d007      	beq.n	8001c54 <__aeabi_ddiv+0x5a4>
 8001c44:	491a      	ldr	r1, [pc, #104]	; (8001cb0 <__aeabi_ddiv+0x600>)
 8001c46:	9b00      	ldr	r3, [sp, #0]
 8001c48:	468c      	mov	ip, r1
 8001c4a:	4463      	add	r3, ip
 8001c4c:	0018      	movs	r0, r3
 8001c4e:	465b      	mov	r3, fp
 8001c50:	4083      	lsls	r3, r0
 8001c52:	431a      	orrs	r2, r3
 8001c54:	1e50      	subs	r0, r2, #1
 8001c56:	4182      	sbcs	r2, r0
 8001c58:	433a      	orrs	r2, r7
 8001c5a:	2707      	movs	r7, #7
 8001c5c:	2300      	movs	r3, #0
 8001c5e:	4017      	ands	r7, r2
 8001c60:	d009      	beq.n	8001c76 <__aeabi_ddiv+0x5c6>
 8001c62:	210f      	movs	r1, #15
 8001c64:	2300      	movs	r3, #0
 8001c66:	4011      	ands	r1, r2
 8001c68:	0014      	movs	r4, r2
 8001c6a:	2904      	cmp	r1, #4
 8001c6c:	d195      	bne.n	8001b9a <__aeabi_ddiv+0x4ea>
 8001c6e:	0022      	movs	r2, r4
 8001c70:	075f      	lsls	r7, r3, #29
 8001c72:	025b      	lsls	r3, r3, #9
 8001c74:	0b1b      	lsrs	r3, r3, #12
 8001c76:	08d2      	lsrs	r2, r2, #3
 8001c78:	4317      	orrs	r7, r2
 8001c7a:	2200      	movs	r2, #0
 8001c7c:	e5a6      	b.n	80017cc <__aeabi_ddiv+0x11c>
 8001c7e:	2380      	movs	r3, #128	; 0x80
 8001c80:	4659      	mov	r1, fp
 8001c82:	031b      	lsls	r3, r3, #12
 8001c84:	430b      	orrs	r3, r1
 8001c86:	031b      	lsls	r3, r3, #12
 8001c88:	0017      	movs	r7, r2
 8001c8a:	0b1b      	lsrs	r3, r3, #12
 8001c8c:	4a06      	ldr	r2, [pc, #24]	; (8001ca8 <__aeabi_ddiv+0x5f8>)
 8001c8e:	e59d      	b.n	80017cc <__aeabi_ddiv+0x11c>
 8001c90:	42bd      	cmp	r5, r7
 8001c92:	d8b2      	bhi.n	8001bfa <__aeabi_ddiv+0x54a>
 8001c94:	469b      	mov	fp, r3
 8001c96:	2400      	movs	r4, #0
 8001c98:	e6bf      	b.n	8001a1a <__aeabi_ddiv+0x36a>
 8001c9a:	4580      	cmp	r8, r0
 8001c9c:	d3b9      	bcc.n	8001c12 <__aeabi_ddiv+0x562>
 8001c9e:	001a      	movs	r2, r3
 8001ca0:	e7c3      	b.n	8001c2a <__aeabi_ddiv+0x57a>
 8001ca2:	46c0      	nop			; (mov r8, r8)
 8001ca4:	000003ff 	.word	0x000003ff
 8001ca8:	000007ff 	.word	0x000007ff
 8001cac:	0000041e 	.word	0x0000041e
 8001cb0:	0000043e 	.word	0x0000043e

08001cb4 <__aeabi_dmul>:
 8001cb4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001cb6:	4657      	mov	r7, sl
 8001cb8:	46de      	mov	lr, fp
 8001cba:	464e      	mov	r6, r9
 8001cbc:	4645      	mov	r5, r8
 8001cbe:	b5e0      	push	{r5, r6, r7, lr}
 8001cc0:	4683      	mov	fp, r0
 8001cc2:	0006      	movs	r6, r0
 8001cc4:	030f      	lsls	r7, r1, #12
 8001cc6:	0048      	lsls	r0, r1, #1
 8001cc8:	b087      	sub	sp, #28
 8001cca:	4692      	mov	sl, r2
 8001ccc:	001d      	movs	r5, r3
 8001cce:	0b3f      	lsrs	r7, r7, #12
 8001cd0:	0d40      	lsrs	r0, r0, #21
 8001cd2:	0fcc      	lsrs	r4, r1, #31
 8001cd4:	2800      	cmp	r0, #0
 8001cd6:	d100      	bne.n	8001cda <__aeabi_dmul+0x26>
 8001cd8:	e06f      	b.n	8001dba <__aeabi_dmul+0x106>
 8001cda:	4bde      	ldr	r3, [pc, #888]	; (8002054 <__aeabi_dmul+0x3a0>)
 8001cdc:	4298      	cmp	r0, r3
 8001cde:	d038      	beq.n	8001d52 <__aeabi_dmul+0x9e>
 8001ce0:	2380      	movs	r3, #128	; 0x80
 8001ce2:	00ff      	lsls	r7, r7, #3
 8001ce4:	041b      	lsls	r3, r3, #16
 8001ce6:	431f      	orrs	r7, r3
 8001ce8:	0f73      	lsrs	r3, r6, #29
 8001cea:	433b      	orrs	r3, r7
 8001cec:	9301      	str	r3, [sp, #4]
 8001cee:	4bda      	ldr	r3, [pc, #872]	; (8002058 <__aeabi_dmul+0x3a4>)
 8001cf0:	2700      	movs	r7, #0
 8001cf2:	4699      	mov	r9, r3
 8001cf4:	2300      	movs	r3, #0
 8001cf6:	469b      	mov	fp, r3
 8001cf8:	00f6      	lsls	r6, r6, #3
 8001cfa:	4481      	add	r9, r0
 8001cfc:	032b      	lsls	r3, r5, #12
 8001cfe:	0069      	lsls	r1, r5, #1
 8001d00:	0b1b      	lsrs	r3, r3, #12
 8001d02:	4652      	mov	r2, sl
 8001d04:	4698      	mov	r8, r3
 8001d06:	0d49      	lsrs	r1, r1, #21
 8001d08:	0fed      	lsrs	r5, r5, #31
 8001d0a:	2900      	cmp	r1, #0
 8001d0c:	d100      	bne.n	8001d10 <__aeabi_dmul+0x5c>
 8001d0e:	e085      	b.n	8001e1c <__aeabi_dmul+0x168>
 8001d10:	4bd0      	ldr	r3, [pc, #832]	; (8002054 <__aeabi_dmul+0x3a0>)
 8001d12:	4299      	cmp	r1, r3
 8001d14:	d100      	bne.n	8001d18 <__aeabi_dmul+0x64>
 8001d16:	e073      	b.n	8001e00 <__aeabi_dmul+0x14c>
 8001d18:	4643      	mov	r3, r8
 8001d1a:	00da      	lsls	r2, r3, #3
 8001d1c:	2380      	movs	r3, #128	; 0x80
 8001d1e:	041b      	lsls	r3, r3, #16
 8001d20:	4313      	orrs	r3, r2
 8001d22:	4652      	mov	r2, sl
 8001d24:	48cc      	ldr	r0, [pc, #816]	; (8002058 <__aeabi_dmul+0x3a4>)
 8001d26:	0f52      	lsrs	r2, r2, #29
 8001d28:	4684      	mov	ip, r0
 8001d2a:	4313      	orrs	r3, r2
 8001d2c:	4652      	mov	r2, sl
 8001d2e:	2000      	movs	r0, #0
 8001d30:	4461      	add	r1, ip
 8001d32:	00d2      	lsls	r2, r2, #3
 8001d34:	4489      	add	r9, r1
 8001d36:	0021      	movs	r1, r4
 8001d38:	4069      	eors	r1, r5
 8001d3a:	9100      	str	r1, [sp, #0]
 8001d3c:	468c      	mov	ip, r1
 8001d3e:	2101      	movs	r1, #1
 8001d40:	4449      	add	r1, r9
 8001d42:	468a      	mov	sl, r1
 8001d44:	2f0f      	cmp	r7, #15
 8001d46:	d900      	bls.n	8001d4a <__aeabi_dmul+0x96>
 8001d48:	e090      	b.n	8001e6c <__aeabi_dmul+0x1b8>
 8001d4a:	49c4      	ldr	r1, [pc, #784]	; (800205c <__aeabi_dmul+0x3a8>)
 8001d4c:	00bf      	lsls	r7, r7, #2
 8001d4e:	59cf      	ldr	r7, [r1, r7]
 8001d50:	46bf      	mov	pc, r7
 8001d52:	465b      	mov	r3, fp
 8001d54:	433b      	orrs	r3, r7
 8001d56:	9301      	str	r3, [sp, #4]
 8001d58:	d000      	beq.n	8001d5c <__aeabi_dmul+0xa8>
 8001d5a:	e16a      	b.n	8002032 <__aeabi_dmul+0x37e>
 8001d5c:	2302      	movs	r3, #2
 8001d5e:	2708      	movs	r7, #8
 8001d60:	2600      	movs	r6, #0
 8001d62:	4681      	mov	r9, r0
 8001d64:	469b      	mov	fp, r3
 8001d66:	e7c9      	b.n	8001cfc <__aeabi_dmul+0x48>
 8001d68:	0032      	movs	r2, r6
 8001d6a:	4658      	mov	r0, fp
 8001d6c:	9b01      	ldr	r3, [sp, #4]
 8001d6e:	4661      	mov	r1, ip
 8001d70:	9100      	str	r1, [sp, #0]
 8001d72:	2802      	cmp	r0, #2
 8001d74:	d100      	bne.n	8001d78 <__aeabi_dmul+0xc4>
 8001d76:	e075      	b.n	8001e64 <__aeabi_dmul+0x1b0>
 8001d78:	2803      	cmp	r0, #3
 8001d7a:	d100      	bne.n	8001d7e <__aeabi_dmul+0xca>
 8001d7c:	e1fe      	b.n	800217c <__aeabi_dmul+0x4c8>
 8001d7e:	2801      	cmp	r0, #1
 8001d80:	d000      	beq.n	8001d84 <__aeabi_dmul+0xd0>
 8001d82:	e12c      	b.n	8001fde <__aeabi_dmul+0x32a>
 8001d84:	2300      	movs	r3, #0
 8001d86:	2700      	movs	r7, #0
 8001d88:	2600      	movs	r6, #0
 8001d8a:	2500      	movs	r5, #0
 8001d8c:	033f      	lsls	r7, r7, #12
 8001d8e:	0d2a      	lsrs	r2, r5, #20
 8001d90:	0b3f      	lsrs	r7, r7, #12
 8001d92:	48b3      	ldr	r0, [pc, #716]	; (8002060 <__aeabi_dmul+0x3ac>)
 8001d94:	0512      	lsls	r2, r2, #20
 8001d96:	433a      	orrs	r2, r7
 8001d98:	4002      	ands	r2, r0
 8001d9a:	051b      	lsls	r3, r3, #20
 8001d9c:	4313      	orrs	r3, r2
 8001d9e:	9a00      	ldr	r2, [sp, #0]
 8001da0:	005b      	lsls	r3, r3, #1
 8001da2:	07d1      	lsls	r1, r2, #31
 8001da4:	085b      	lsrs	r3, r3, #1
 8001da6:	430b      	orrs	r3, r1
 8001da8:	0030      	movs	r0, r6
 8001daa:	0019      	movs	r1, r3
 8001dac:	b007      	add	sp, #28
 8001dae:	bc3c      	pop	{r2, r3, r4, r5}
 8001db0:	4690      	mov	r8, r2
 8001db2:	4699      	mov	r9, r3
 8001db4:	46a2      	mov	sl, r4
 8001db6:	46ab      	mov	fp, r5
 8001db8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001dba:	465b      	mov	r3, fp
 8001dbc:	433b      	orrs	r3, r7
 8001dbe:	9301      	str	r3, [sp, #4]
 8001dc0:	d100      	bne.n	8001dc4 <__aeabi_dmul+0x110>
 8001dc2:	e12f      	b.n	8002024 <__aeabi_dmul+0x370>
 8001dc4:	2f00      	cmp	r7, #0
 8001dc6:	d100      	bne.n	8001dca <__aeabi_dmul+0x116>
 8001dc8:	e1a5      	b.n	8002116 <__aeabi_dmul+0x462>
 8001dca:	0038      	movs	r0, r7
 8001dcc:	f000 fe02 	bl	80029d4 <__clzsi2>
 8001dd0:	0003      	movs	r3, r0
 8001dd2:	3b0b      	subs	r3, #11
 8001dd4:	2b1c      	cmp	r3, #28
 8001dd6:	dd00      	ble.n	8001dda <__aeabi_dmul+0x126>
 8001dd8:	e196      	b.n	8002108 <__aeabi_dmul+0x454>
 8001dda:	221d      	movs	r2, #29
 8001ddc:	1ad3      	subs	r3, r2, r3
 8001dde:	465a      	mov	r2, fp
 8001de0:	0001      	movs	r1, r0
 8001de2:	40da      	lsrs	r2, r3
 8001de4:	465e      	mov	r6, fp
 8001de6:	3908      	subs	r1, #8
 8001de8:	408f      	lsls	r7, r1
 8001dea:	0013      	movs	r3, r2
 8001dec:	408e      	lsls	r6, r1
 8001dee:	433b      	orrs	r3, r7
 8001df0:	9301      	str	r3, [sp, #4]
 8001df2:	4b9c      	ldr	r3, [pc, #624]	; (8002064 <__aeabi_dmul+0x3b0>)
 8001df4:	2700      	movs	r7, #0
 8001df6:	1a1b      	subs	r3, r3, r0
 8001df8:	4699      	mov	r9, r3
 8001dfa:	2300      	movs	r3, #0
 8001dfc:	469b      	mov	fp, r3
 8001dfe:	e77d      	b.n	8001cfc <__aeabi_dmul+0x48>
 8001e00:	4641      	mov	r1, r8
 8001e02:	4653      	mov	r3, sl
 8001e04:	430b      	orrs	r3, r1
 8001e06:	4993      	ldr	r1, [pc, #588]	; (8002054 <__aeabi_dmul+0x3a0>)
 8001e08:	468c      	mov	ip, r1
 8001e0a:	44e1      	add	r9, ip
 8001e0c:	2b00      	cmp	r3, #0
 8001e0e:	d000      	beq.n	8001e12 <__aeabi_dmul+0x15e>
 8001e10:	e11a      	b.n	8002048 <__aeabi_dmul+0x394>
 8001e12:	2202      	movs	r2, #2
 8001e14:	2002      	movs	r0, #2
 8001e16:	4317      	orrs	r7, r2
 8001e18:	2200      	movs	r2, #0
 8001e1a:	e78c      	b.n	8001d36 <__aeabi_dmul+0x82>
 8001e1c:	4313      	orrs	r3, r2
 8001e1e:	d100      	bne.n	8001e22 <__aeabi_dmul+0x16e>
 8001e20:	e10d      	b.n	800203e <__aeabi_dmul+0x38a>
 8001e22:	4643      	mov	r3, r8
 8001e24:	2b00      	cmp	r3, #0
 8001e26:	d100      	bne.n	8001e2a <__aeabi_dmul+0x176>
 8001e28:	e181      	b.n	800212e <__aeabi_dmul+0x47a>
 8001e2a:	4640      	mov	r0, r8
 8001e2c:	f000 fdd2 	bl	80029d4 <__clzsi2>
 8001e30:	0002      	movs	r2, r0
 8001e32:	3a0b      	subs	r2, #11
 8001e34:	2a1c      	cmp	r2, #28
 8001e36:	dd00      	ble.n	8001e3a <__aeabi_dmul+0x186>
 8001e38:	e172      	b.n	8002120 <__aeabi_dmul+0x46c>
 8001e3a:	0001      	movs	r1, r0
 8001e3c:	4643      	mov	r3, r8
 8001e3e:	3908      	subs	r1, #8
 8001e40:	408b      	lsls	r3, r1
 8001e42:	4698      	mov	r8, r3
 8001e44:	231d      	movs	r3, #29
 8001e46:	1a9a      	subs	r2, r3, r2
 8001e48:	4653      	mov	r3, sl
 8001e4a:	40d3      	lsrs	r3, r2
 8001e4c:	001a      	movs	r2, r3
 8001e4e:	4643      	mov	r3, r8
 8001e50:	4313      	orrs	r3, r2
 8001e52:	4652      	mov	r2, sl
 8001e54:	408a      	lsls	r2, r1
 8001e56:	4649      	mov	r1, r9
 8001e58:	1a08      	subs	r0, r1, r0
 8001e5a:	4982      	ldr	r1, [pc, #520]	; (8002064 <__aeabi_dmul+0x3b0>)
 8001e5c:	4689      	mov	r9, r1
 8001e5e:	4481      	add	r9, r0
 8001e60:	2000      	movs	r0, #0
 8001e62:	e768      	b.n	8001d36 <__aeabi_dmul+0x82>
 8001e64:	4b7b      	ldr	r3, [pc, #492]	; (8002054 <__aeabi_dmul+0x3a0>)
 8001e66:	2700      	movs	r7, #0
 8001e68:	2600      	movs	r6, #0
 8001e6a:	e78e      	b.n	8001d8a <__aeabi_dmul+0xd6>
 8001e6c:	0c14      	lsrs	r4, r2, #16
 8001e6e:	0412      	lsls	r2, r2, #16
 8001e70:	0c12      	lsrs	r2, r2, #16
 8001e72:	0011      	movs	r1, r2
 8001e74:	0c37      	lsrs	r7, r6, #16
 8001e76:	0436      	lsls	r6, r6, #16
 8001e78:	0c35      	lsrs	r5, r6, #16
 8001e7a:	4379      	muls	r1, r7
 8001e7c:	0028      	movs	r0, r5
 8001e7e:	468c      	mov	ip, r1
 8001e80:	002e      	movs	r6, r5
 8001e82:	4360      	muls	r0, r4
 8001e84:	4460      	add	r0, ip
 8001e86:	4683      	mov	fp, r0
 8001e88:	4356      	muls	r6, r2
 8001e8a:	0021      	movs	r1, r4
 8001e8c:	0c30      	lsrs	r0, r6, #16
 8001e8e:	4680      	mov	r8, r0
 8001e90:	4658      	mov	r0, fp
 8001e92:	4379      	muls	r1, r7
 8001e94:	4440      	add	r0, r8
 8001e96:	9102      	str	r1, [sp, #8]
 8001e98:	4584      	cmp	ip, r0
 8001e9a:	d906      	bls.n	8001eaa <__aeabi_dmul+0x1f6>
 8001e9c:	4688      	mov	r8, r1
 8001e9e:	2180      	movs	r1, #128	; 0x80
 8001ea0:	0249      	lsls	r1, r1, #9
 8001ea2:	468c      	mov	ip, r1
 8001ea4:	44e0      	add	r8, ip
 8001ea6:	4641      	mov	r1, r8
 8001ea8:	9102      	str	r1, [sp, #8]
 8001eaa:	0436      	lsls	r6, r6, #16
 8001eac:	0c01      	lsrs	r1, r0, #16
 8001eae:	0c36      	lsrs	r6, r6, #16
 8001eb0:	0400      	lsls	r0, r0, #16
 8001eb2:	468b      	mov	fp, r1
 8001eb4:	1981      	adds	r1, r0, r6
 8001eb6:	0c1e      	lsrs	r6, r3, #16
 8001eb8:	041b      	lsls	r3, r3, #16
 8001eba:	0c1b      	lsrs	r3, r3, #16
 8001ebc:	9103      	str	r1, [sp, #12]
 8001ebe:	0019      	movs	r1, r3
 8001ec0:	4379      	muls	r1, r7
 8001ec2:	468c      	mov	ip, r1
 8001ec4:	0028      	movs	r0, r5
 8001ec6:	4375      	muls	r5, r6
 8001ec8:	4465      	add	r5, ip
 8001eca:	46a8      	mov	r8, r5
 8001ecc:	4358      	muls	r0, r3
 8001ece:	0c05      	lsrs	r5, r0, #16
 8001ed0:	4445      	add	r5, r8
 8001ed2:	4377      	muls	r7, r6
 8001ed4:	42a9      	cmp	r1, r5
 8001ed6:	d903      	bls.n	8001ee0 <__aeabi_dmul+0x22c>
 8001ed8:	2180      	movs	r1, #128	; 0x80
 8001eda:	0249      	lsls	r1, r1, #9
 8001edc:	468c      	mov	ip, r1
 8001ede:	4467      	add	r7, ip
 8001ee0:	0c29      	lsrs	r1, r5, #16
 8001ee2:	468c      	mov	ip, r1
 8001ee4:	0039      	movs	r1, r7
 8001ee6:	0400      	lsls	r0, r0, #16
 8001ee8:	0c00      	lsrs	r0, r0, #16
 8001eea:	042d      	lsls	r5, r5, #16
 8001eec:	182d      	adds	r5, r5, r0
 8001eee:	4461      	add	r1, ip
 8001ef0:	44ab      	add	fp, r5
 8001ef2:	9105      	str	r1, [sp, #20]
 8001ef4:	4659      	mov	r1, fp
 8001ef6:	9104      	str	r1, [sp, #16]
 8001ef8:	9901      	ldr	r1, [sp, #4]
 8001efa:	040f      	lsls	r7, r1, #16
 8001efc:	0c3f      	lsrs	r7, r7, #16
 8001efe:	0c08      	lsrs	r0, r1, #16
 8001f00:	0039      	movs	r1, r7
 8001f02:	4351      	muls	r1, r2
 8001f04:	4342      	muls	r2, r0
 8001f06:	4690      	mov	r8, r2
 8001f08:	0002      	movs	r2, r0
 8001f0a:	468c      	mov	ip, r1
 8001f0c:	0c09      	lsrs	r1, r1, #16
 8001f0e:	468b      	mov	fp, r1
 8001f10:	4362      	muls	r2, r4
 8001f12:	437c      	muls	r4, r7
 8001f14:	4444      	add	r4, r8
 8001f16:	445c      	add	r4, fp
 8001f18:	45a0      	cmp	r8, r4
 8001f1a:	d903      	bls.n	8001f24 <__aeabi_dmul+0x270>
 8001f1c:	2180      	movs	r1, #128	; 0x80
 8001f1e:	0249      	lsls	r1, r1, #9
 8001f20:	4688      	mov	r8, r1
 8001f22:	4442      	add	r2, r8
 8001f24:	0c21      	lsrs	r1, r4, #16
 8001f26:	4688      	mov	r8, r1
 8001f28:	4661      	mov	r1, ip
 8001f2a:	0409      	lsls	r1, r1, #16
 8001f2c:	0c09      	lsrs	r1, r1, #16
 8001f2e:	468c      	mov	ip, r1
 8001f30:	0039      	movs	r1, r7
 8001f32:	4359      	muls	r1, r3
 8001f34:	4343      	muls	r3, r0
 8001f36:	4370      	muls	r0, r6
 8001f38:	437e      	muls	r6, r7
 8001f3a:	0c0f      	lsrs	r7, r1, #16
 8001f3c:	18f6      	adds	r6, r6, r3
 8001f3e:	0424      	lsls	r4, r4, #16
 8001f40:	19be      	adds	r6, r7, r6
 8001f42:	4464      	add	r4, ip
 8001f44:	4442      	add	r2, r8
 8001f46:	468c      	mov	ip, r1
 8001f48:	42b3      	cmp	r3, r6
 8001f4a:	d903      	bls.n	8001f54 <__aeabi_dmul+0x2a0>
 8001f4c:	2380      	movs	r3, #128	; 0x80
 8001f4e:	025b      	lsls	r3, r3, #9
 8001f50:	4698      	mov	r8, r3
 8001f52:	4440      	add	r0, r8
 8001f54:	9b02      	ldr	r3, [sp, #8]
 8001f56:	4661      	mov	r1, ip
 8001f58:	4698      	mov	r8, r3
 8001f5a:	9b04      	ldr	r3, [sp, #16]
 8001f5c:	0437      	lsls	r7, r6, #16
 8001f5e:	4443      	add	r3, r8
 8001f60:	469b      	mov	fp, r3
 8001f62:	45ab      	cmp	fp, r5
 8001f64:	41ad      	sbcs	r5, r5
 8001f66:	426b      	negs	r3, r5
 8001f68:	040d      	lsls	r5, r1, #16
 8001f6a:	9905      	ldr	r1, [sp, #20]
 8001f6c:	0c2d      	lsrs	r5, r5, #16
 8001f6e:	468c      	mov	ip, r1
 8001f70:	197f      	adds	r7, r7, r5
 8001f72:	4467      	add	r7, ip
 8001f74:	18fd      	adds	r5, r7, r3
 8001f76:	46a8      	mov	r8, r5
 8001f78:	465d      	mov	r5, fp
 8001f7a:	192d      	adds	r5, r5, r4
 8001f7c:	42a5      	cmp	r5, r4
 8001f7e:	41a4      	sbcs	r4, r4
 8001f80:	4693      	mov	fp, r2
 8001f82:	4264      	negs	r4, r4
 8001f84:	46a4      	mov	ip, r4
 8001f86:	44c3      	add	fp, r8
 8001f88:	44dc      	add	ip, fp
 8001f8a:	428f      	cmp	r7, r1
 8001f8c:	41bf      	sbcs	r7, r7
 8001f8e:	4598      	cmp	r8, r3
 8001f90:	419b      	sbcs	r3, r3
 8001f92:	4593      	cmp	fp, r2
 8001f94:	4192      	sbcs	r2, r2
 8001f96:	45a4      	cmp	ip, r4
 8001f98:	41a4      	sbcs	r4, r4
 8001f9a:	425b      	negs	r3, r3
 8001f9c:	427f      	negs	r7, r7
 8001f9e:	431f      	orrs	r7, r3
 8001fa0:	0c36      	lsrs	r6, r6, #16
 8001fa2:	4252      	negs	r2, r2
 8001fa4:	4264      	negs	r4, r4
 8001fa6:	19bf      	adds	r7, r7, r6
 8001fa8:	4322      	orrs	r2, r4
 8001faa:	18bf      	adds	r7, r7, r2
 8001fac:	4662      	mov	r2, ip
 8001fae:	1838      	adds	r0, r7, r0
 8001fb0:	0243      	lsls	r3, r0, #9
 8001fb2:	0dd2      	lsrs	r2, r2, #23
 8001fb4:	9903      	ldr	r1, [sp, #12]
 8001fb6:	4313      	orrs	r3, r2
 8001fb8:	026a      	lsls	r2, r5, #9
 8001fba:	430a      	orrs	r2, r1
 8001fbc:	1e50      	subs	r0, r2, #1
 8001fbe:	4182      	sbcs	r2, r0
 8001fc0:	4661      	mov	r1, ip
 8001fc2:	0ded      	lsrs	r5, r5, #23
 8001fc4:	432a      	orrs	r2, r5
 8001fc6:	024e      	lsls	r6, r1, #9
 8001fc8:	4332      	orrs	r2, r6
 8001fca:	01d9      	lsls	r1, r3, #7
 8001fcc:	d400      	bmi.n	8001fd0 <__aeabi_dmul+0x31c>
 8001fce:	e0b3      	b.n	8002138 <__aeabi_dmul+0x484>
 8001fd0:	2601      	movs	r6, #1
 8001fd2:	0850      	lsrs	r0, r2, #1
 8001fd4:	4032      	ands	r2, r6
 8001fd6:	4302      	orrs	r2, r0
 8001fd8:	07de      	lsls	r6, r3, #31
 8001fda:	4332      	orrs	r2, r6
 8001fdc:	085b      	lsrs	r3, r3, #1
 8001fde:	4c22      	ldr	r4, [pc, #136]	; (8002068 <__aeabi_dmul+0x3b4>)
 8001fe0:	4454      	add	r4, sl
 8001fe2:	2c00      	cmp	r4, #0
 8001fe4:	dd62      	ble.n	80020ac <__aeabi_dmul+0x3f8>
 8001fe6:	0751      	lsls	r1, r2, #29
 8001fe8:	d009      	beq.n	8001ffe <__aeabi_dmul+0x34a>
 8001fea:	200f      	movs	r0, #15
 8001fec:	4010      	ands	r0, r2
 8001fee:	2804      	cmp	r0, #4
 8001ff0:	d005      	beq.n	8001ffe <__aeabi_dmul+0x34a>
 8001ff2:	1d10      	adds	r0, r2, #4
 8001ff4:	4290      	cmp	r0, r2
 8001ff6:	4192      	sbcs	r2, r2
 8001ff8:	4252      	negs	r2, r2
 8001ffa:	189b      	adds	r3, r3, r2
 8001ffc:	0002      	movs	r2, r0
 8001ffe:	01d9      	lsls	r1, r3, #7
 8002000:	d504      	bpl.n	800200c <__aeabi_dmul+0x358>
 8002002:	2480      	movs	r4, #128	; 0x80
 8002004:	4819      	ldr	r0, [pc, #100]	; (800206c <__aeabi_dmul+0x3b8>)
 8002006:	00e4      	lsls	r4, r4, #3
 8002008:	4003      	ands	r3, r0
 800200a:	4454      	add	r4, sl
 800200c:	4818      	ldr	r0, [pc, #96]	; (8002070 <__aeabi_dmul+0x3bc>)
 800200e:	4284      	cmp	r4, r0
 8002010:	dd00      	ble.n	8002014 <__aeabi_dmul+0x360>
 8002012:	e727      	b.n	8001e64 <__aeabi_dmul+0x1b0>
 8002014:	075e      	lsls	r6, r3, #29
 8002016:	025b      	lsls	r3, r3, #9
 8002018:	08d2      	lsrs	r2, r2, #3
 800201a:	0b1f      	lsrs	r7, r3, #12
 800201c:	0563      	lsls	r3, r4, #21
 800201e:	4316      	orrs	r6, r2
 8002020:	0d5b      	lsrs	r3, r3, #21
 8002022:	e6b2      	b.n	8001d8a <__aeabi_dmul+0xd6>
 8002024:	2300      	movs	r3, #0
 8002026:	4699      	mov	r9, r3
 8002028:	3301      	adds	r3, #1
 800202a:	2704      	movs	r7, #4
 800202c:	2600      	movs	r6, #0
 800202e:	469b      	mov	fp, r3
 8002030:	e664      	b.n	8001cfc <__aeabi_dmul+0x48>
 8002032:	2303      	movs	r3, #3
 8002034:	9701      	str	r7, [sp, #4]
 8002036:	4681      	mov	r9, r0
 8002038:	270c      	movs	r7, #12
 800203a:	469b      	mov	fp, r3
 800203c:	e65e      	b.n	8001cfc <__aeabi_dmul+0x48>
 800203e:	2201      	movs	r2, #1
 8002040:	2001      	movs	r0, #1
 8002042:	4317      	orrs	r7, r2
 8002044:	2200      	movs	r2, #0
 8002046:	e676      	b.n	8001d36 <__aeabi_dmul+0x82>
 8002048:	2303      	movs	r3, #3
 800204a:	2003      	movs	r0, #3
 800204c:	431f      	orrs	r7, r3
 800204e:	4643      	mov	r3, r8
 8002050:	e671      	b.n	8001d36 <__aeabi_dmul+0x82>
 8002052:	46c0      	nop			; (mov r8, r8)
 8002054:	000007ff 	.word	0x000007ff
 8002058:	fffffc01 	.word	0xfffffc01
 800205c:	08009c7c 	.word	0x08009c7c
 8002060:	800fffff 	.word	0x800fffff
 8002064:	fffffc0d 	.word	0xfffffc0d
 8002068:	000003ff 	.word	0x000003ff
 800206c:	feffffff 	.word	0xfeffffff
 8002070:	000007fe 	.word	0x000007fe
 8002074:	2300      	movs	r3, #0
 8002076:	2780      	movs	r7, #128	; 0x80
 8002078:	9300      	str	r3, [sp, #0]
 800207a:	033f      	lsls	r7, r7, #12
 800207c:	2600      	movs	r6, #0
 800207e:	4b43      	ldr	r3, [pc, #268]	; (800218c <__aeabi_dmul+0x4d8>)
 8002080:	e683      	b.n	8001d8a <__aeabi_dmul+0xd6>
 8002082:	9b01      	ldr	r3, [sp, #4]
 8002084:	0032      	movs	r2, r6
 8002086:	46a4      	mov	ip, r4
 8002088:	4658      	mov	r0, fp
 800208a:	e670      	b.n	8001d6e <__aeabi_dmul+0xba>
 800208c:	46ac      	mov	ip, r5
 800208e:	e66e      	b.n	8001d6e <__aeabi_dmul+0xba>
 8002090:	2780      	movs	r7, #128	; 0x80
 8002092:	9901      	ldr	r1, [sp, #4]
 8002094:	033f      	lsls	r7, r7, #12
 8002096:	4239      	tst	r1, r7
 8002098:	d02d      	beq.n	80020f6 <__aeabi_dmul+0x442>
 800209a:	423b      	tst	r3, r7
 800209c:	d12b      	bne.n	80020f6 <__aeabi_dmul+0x442>
 800209e:	431f      	orrs	r7, r3
 80020a0:	033f      	lsls	r7, r7, #12
 80020a2:	0b3f      	lsrs	r7, r7, #12
 80020a4:	9500      	str	r5, [sp, #0]
 80020a6:	0016      	movs	r6, r2
 80020a8:	4b38      	ldr	r3, [pc, #224]	; (800218c <__aeabi_dmul+0x4d8>)
 80020aa:	e66e      	b.n	8001d8a <__aeabi_dmul+0xd6>
 80020ac:	2501      	movs	r5, #1
 80020ae:	1b2d      	subs	r5, r5, r4
 80020b0:	2d38      	cmp	r5, #56	; 0x38
 80020b2:	dd00      	ble.n	80020b6 <__aeabi_dmul+0x402>
 80020b4:	e666      	b.n	8001d84 <__aeabi_dmul+0xd0>
 80020b6:	2d1f      	cmp	r5, #31
 80020b8:	dc40      	bgt.n	800213c <__aeabi_dmul+0x488>
 80020ba:	4835      	ldr	r0, [pc, #212]	; (8002190 <__aeabi_dmul+0x4dc>)
 80020bc:	001c      	movs	r4, r3
 80020be:	4450      	add	r0, sl
 80020c0:	0016      	movs	r6, r2
 80020c2:	4082      	lsls	r2, r0
 80020c4:	4084      	lsls	r4, r0
 80020c6:	40ee      	lsrs	r6, r5
 80020c8:	1e50      	subs	r0, r2, #1
 80020ca:	4182      	sbcs	r2, r0
 80020cc:	4334      	orrs	r4, r6
 80020ce:	4314      	orrs	r4, r2
 80020d0:	40eb      	lsrs	r3, r5
 80020d2:	0762      	lsls	r2, r4, #29
 80020d4:	d009      	beq.n	80020ea <__aeabi_dmul+0x436>
 80020d6:	220f      	movs	r2, #15
 80020d8:	4022      	ands	r2, r4
 80020da:	2a04      	cmp	r2, #4
 80020dc:	d005      	beq.n	80020ea <__aeabi_dmul+0x436>
 80020de:	0022      	movs	r2, r4
 80020e0:	1d14      	adds	r4, r2, #4
 80020e2:	4294      	cmp	r4, r2
 80020e4:	4180      	sbcs	r0, r0
 80020e6:	4240      	negs	r0, r0
 80020e8:	181b      	adds	r3, r3, r0
 80020ea:	021a      	lsls	r2, r3, #8
 80020ec:	d53e      	bpl.n	800216c <__aeabi_dmul+0x4b8>
 80020ee:	2301      	movs	r3, #1
 80020f0:	2700      	movs	r7, #0
 80020f2:	2600      	movs	r6, #0
 80020f4:	e649      	b.n	8001d8a <__aeabi_dmul+0xd6>
 80020f6:	2780      	movs	r7, #128	; 0x80
 80020f8:	9b01      	ldr	r3, [sp, #4]
 80020fa:	033f      	lsls	r7, r7, #12
 80020fc:	431f      	orrs	r7, r3
 80020fe:	033f      	lsls	r7, r7, #12
 8002100:	0b3f      	lsrs	r7, r7, #12
 8002102:	9400      	str	r4, [sp, #0]
 8002104:	4b21      	ldr	r3, [pc, #132]	; (800218c <__aeabi_dmul+0x4d8>)
 8002106:	e640      	b.n	8001d8a <__aeabi_dmul+0xd6>
 8002108:	0003      	movs	r3, r0
 800210a:	465a      	mov	r2, fp
 800210c:	3b28      	subs	r3, #40	; 0x28
 800210e:	409a      	lsls	r2, r3
 8002110:	2600      	movs	r6, #0
 8002112:	9201      	str	r2, [sp, #4]
 8002114:	e66d      	b.n	8001df2 <__aeabi_dmul+0x13e>
 8002116:	4658      	mov	r0, fp
 8002118:	f000 fc5c 	bl	80029d4 <__clzsi2>
 800211c:	3020      	adds	r0, #32
 800211e:	e657      	b.n	8001dd0 <__aeabi_dmul+0x11c>
 8002120:	0003      	movs	r3, r0
 8002122:	4652      	mov	r2, sl
 8002124:	3b28      	subs	r3, #40	; 0x28
 8002126:	409a      	lsls	r2, r3
 8002128:	0013      	movs	r3, r2
 800212a:	2200      	movs	r2, #0
 800212c:	e693      	b.n	8001e56 <__aeabi_dmul+0x1a2>
 800212e:	4650      	mov	r0, sl
 8002130:	f000 fc50 	bl	80029d4 <__clzsi2>
 8002134:	3020      	adds	r0, #32
 8002136:	e67b      	b.n	8001e30 <__aeabi_dmul+0x17c>
 8002138:	46ca      	mov	sl, r9
 800213a:	e750      	b.n	8001fde <__aeabi_dmul+0x32a>
 800213c:	201f      	movs	r0, #31
 800213e:	001e      	movs	r6, r3
 8002140:	4240      	negs	r0, r0
 8002142:	1b04      	subs	r4, r0, r4
 8002144:	40e6      	lsrs	r6, r4
 8002146:	2d20      	cmp	r5, #32
 8002148:	d003      	beq.n	8002152 <__aeabi_dmul+0x49e>
 800214a:	4c12      	ldr	r4, [pc, #72]	; (8002194 <__aeabi_dmul+0x4e0>)
 800214c:	4454      	add	r4, sl
 800214e:	40a3      	lsls	r3, r4
 8002150:	431a      	orrs	r2, r3
 8002152:	1e50      	subs	r0, r2, #1
 8002154:	4182      	sbcs	r2, r0
 8002156:	4332      	orrs	r2, r6
 8002158:	2607      	movs	r6, #7
 800215a:	2700      	movs	r7, #0
 800215c:	4016      	ands	r6, r2
 800215e:	d009      	beq.n	8002174 <__aeabi_dmul+0x4c0>
 8002160:	200f      	movs	r0, #15
 8002162:	2300      	movs	r3, #0
 8002164:	4010      	ands	r0, r2
 8002166:	0014      	movs	r4, r2
 8002168:	2804      	cmp	r0, #4
 800216a:	d1b9      	bne.n	80020e0 <__aeabi_dmul+0x42c>
 800216c:	0022      	movs	r2, r4
 800216e:	075e      	lsls	r6, r3, #29
 8002170:	025b      	lsls	r3, r3, #9
 8002172:	0b1f      	lsrs	r7, r3, #12
 8002174:	08d2      	lsrs	r2, r2, #3
 8002176:	4316      	orrs	r6, r2
 8002178:	2300      	movs	r3, #0
 800217a:	e606      	b.n	8001d8a <__aeabi_dmul+0xd6>
 800217c:	2780      	movs	r7, #128	; 0x80
 800217e:	033f      	lsls	r7, r7, #12
 8002180:	431f      	orrs	r7, r3
 8002182:	033f      	lsls	r7, r7, #12
 8002184:	0b3f      	lsrs	r7, r7, #12
 8002186:	0016      	movs	r6, r2
 8002188:	4b00      	ldr	r3, [pc, #0]	; (800218c <__aeabi_dmul+0x4d8>)
 800218a:	e5fe      	b.n	8001d8a <__aeabi_dmul+0xd6>
 800218c:	000007ff 	.word	0x000007ff
 8002190:	0000041e 	.word	0x0000041e
 8002194:	0000043e 	.word	0x0000043e

08002198 <__aeabi_dsub>:
 8002198:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800219a:	4657      	mov	r7, sl
 800219c:	464e      	mov	r6, r9
 800219e:	4645      	mov	r5, r8
 80021a0:	46de      	mov	lr, fp
 80021a2:	000c      	movs	r4, r1
 80021a4:	0309      	lsls	r1, r1, #12
 80021a6:	b5e0      	push	{r5, r6, r7, lr}
 80021a8:	0a49      	lsrs	r1, r1, #9
 80021aa:	0f46      	lsrs	r6, r0, #29
 80021ac:	005f      	lsls	r7, r3, #1
 80021ae:	4331      	orrs	r1, r6
 80021b0:	031e      	lsls	r6, r3, #12
 80021b2:	0fdb      	lsrs	r3, r3, #31
 80021b4:	0a76      	lsrs	r6, r6, #9
 80021b6:	469b      	mov	fp, r3
 80021b8:	0f53      	lsrs	r3, r2, #29
 80021ba:	4333      	orrs	r3, r6
 80021bc:	4ec8      	ldr	r6, [pc, #800]	; (80024e0 <__aeabi_dsub+0x348>)
 80021be:	0065      	lsls	r5, r4, #1
 80021c0:	00c0      	lsls	r0, r0, #3
 80021c2:	0fe4      	lsrs	r4, r4, #31
 80021c4:	00d2      	lsls	r2, r2, #3
 80021c6:	0d6d      	lsrs	r5, r5, #21
 80021c8:	46a2      	mov	sl, r4
 80021ca:	4681      	mov	r9, r0
 80021cc:	0d7f      	lsrs	r7, r7, #21
 80021ce:	469c      	mov	ip, r3
 80021d0:	4690      	mov	r8, r2
 80021d2:	42b7      	cmp	r7, r6
 80021d4:	d100      	bne.n	80021d8 <__aeabi_dsub+0x40>
 80021d6:	e0b9      	b.n	800234c <__aeabi_dsub+0x1b4>
 80021d8:	465b      	mov	r3, fp
 80021da:	2601      	movs	r6, #1
 80021dc:	4073      	eors	r3, r6
 80021de:	469b      	mov	fp, r3
 80021e0:	1bee      	subs	r6, r5, r7
 80021e2:	45a3      	cmp	fp, r4
 80021e4:	d100      	bne.n	80021e8 <__aeabi_dsub+0x50>
 80021e6:	e083      	b.n	80022f0 <__aeabi_dsub+0x158>
 80021e8:	2e00      	cmp	r6, #0
 80021ea:	dd63      	ble.n	80022b4 <__aeabi_dsub+0x11c>
 80021ec:	2f00      	cmp	r7, #0
 80021ee:	d000      	beq.n	80021f2 <__aeabi_dsub+0x5a>
 80021f0:	e0b1      	b.n	8002356 <__aeabi_dsub+0x1be>
 80021f2:	4663      	mov	r3, ip
 80021f4:	4313      	orrs	r3, r2
 80021f6:	d100      	bne.n	80021fa <__aeabi_dsub+0x62>
 80021f8:	e123      	b.n	8002442 <__aeabi_dsub+0x2aa>
 80021fa:	1e73      	subs	r3, r6, #1
 80021fc:	2b00      	cmp	r3, #0
 80021fe:	d000      	beq.n	8002202 <__aeabi_dsub+0x6a>
 8002200:	e1ba      	b.n	8002578 <__aeabi_dsub+0x3e0>
 8002202:	1a86      	subs	r6, r0, r2
 8002204:	4663      	mov	r3, ip
 8002206:	42b0      	cmp	r0, r6
 8002208:	4180      	sbcs	r0, r0
 800220a:	2501      	movs	r5, #1
 800220c:	1ac9      	subs	r1, r1, r3
 800220e:	4240      	negs	r0, r0
 8002210:	1a09      	subs	r1, r1, r0
 8002212:	020b      	lsls	r3, r1, #8
 8002214:	d400      	bmi.n	8002218 <__aeabi_dsub+0x80>
 8002216:	e147      	b.n	80024a8 <__aeabi_dsub+0x310>
 8002218:	0249      	lsls	r1, r1, #9
 800221a:	0a4b      	lsrs	r3, r1, #9
 800221c:	4698      	mov	r8, r3
 800221e:	4643      	mov	r3, r8
 8002220:	2b00      	cmp	r3, #0
 8002222:	d100      	bne.n	8002226 <__aeabi_dsub+0x8e>
 8002224:	e189      	b.n	800253a <__aeabi_dsub+0x3a2>
 8002226:	4640      	mov	r0, r8
 8002228:	f000 fbd4 	bl	80029d4 <__clzsi2>
 800222c:	0003      	movs	r3, r0
 800222e:	3b08      	subs	r3, #8
 8002230:	2b1f      	cmp	r3, #31
 8002232:	dd00      	ble.n	8002236 <__aeabi_dsub+0x9e>
 8002234:	e17c      	b.n	8002530 <__aeabi_dsub+0x398>
 8002236:	2220      	movs	r2, #32
 8002238:	0030      	movs	r0, r6
 800223a:	1ad2      	subs	r2, r2, r3
 800223c:	4641      	mov	r1, r8
 800223e:	40d0      	lsrs	r0, r2
 8002240:	4099      	lsls	r1, r3
 8002242:	0002      	movs	r2, r0
 8002244:	409e      	lsls	r6, r3
 8002246:	430a      	orrs	r2, r1
 8002248:	429d      	cmp	r5, r3
 800224a:	dd00      	ble.n	800224e <__aeabi_dsub+0xb6>
 800224c:	e16a      	b.n	8002524 <__aeabi_dsub+0x38c>
 800224e:	1b5d      	subs	r5, r3, r5
 8002250:	1c6b      	adds	r3, r5, #1
 8002252:	2b1f      	cmp	r3, #31
 8002254:	dd00      	ble.n	8002258 <__aeabi_dsub+0xc0>
 8002256:	e194      	b.n	8002582 <__aeabi_dsub+0x3ea>
 8002258:	2120      	movs	r1, #32
 800225a:	0010      	movs	r0, r2
 800225c:	0035      	movs	r5, r6
 800225e:	1ac9      	subs	r1, r1, r3
 8002260:	408e      	lsls	r6, r1
 8002262:	40da      	lsrs	r2, r3
 8002264:	4088      	lsls	r0, r1
 8002266:	40dd      	lsrs	r5, r3
 8002268:	1e71      	subs	r1, r6, #1
 800226a:	418e      	sbcs	r6, r1
 800226c:	0011      	movs	r1, r2
 800226e:	2207      	movs	r2, #7
 8002270:	4328      	orrs	r0, r5
 8002272:	2500      	movs	r5, #0
 8002274:	4306      	orrs	r6, r0
 8002276:	4032      	ands	r2, r6
 8002278:	2a00      	cmp	r2, #0
 800227a:	d009      	beq.n	8002290 <__aeabi_dsub+0xf8>
 800227c:	230f      	movs	r3, #15
 800227e:	4033      	ands	r3, r6
 8002280:	2b04      	cmp	r3, #4
 8002282:	d005      	beq.n	8002290 <__aeabi_dsub+0xf8>
 8002284:	1d33      	adds	r3, r6, #4
 8002286:	42b3      	cmp	r3, r6
 8002288:	41b6      	sbcs	r6, r6
 800228a:	4276      	negs	r6, r6
 800228c:	1989      	adds	r1, r1, r6
 800228e:	001e      	movs	r6, r3
 8002290:	020b      	lsls	r3, r1, #8
 8002292:	d400      	bmi.n	8002296 <__aeabi_dsub+0xfe>
 8002294:	e23d      	b.n	8002712 <__aeabi_dsub+0x57a>
 8002296:	1c6a      	adds	r2, r5, #1
 8002298:	4b91      	ldr	r3, [pc, #580]	; (80024e0 <__aeabi_dsub+0x348>)
 800229a:	0555      	lsls	r5, r2, #21
 800229c:	0d6d      	lsrs	r5, r5, #21
 800229e:	429a      	cmp	r2, r3
 80022a0:	d100      	bne.n	80022a4 <__aeabi_dsub+0x10c>
 80022a2:	e119      	b.n	80024d8 <__aeabi_dsub+0x340>
 80022a4:	4a8f      	ldr	r2, [pc, #572]	; (80024e4 <__aeabi_dsub+0x34c>)
 80022a6:	08f6      	lsrs	r6, r6, #3
 80022a8:	400a      	ands	r2, r1
 80022aa:	0757      	lsls	r7, r2, #29
 80022ac:	0252      	lsls	r2, r2, #9
 80022ae:	4337      	orrs	r7, r6
 80022b0:	0b12      	lsrs	r2, r2, #12
 80022b2:	e09b      	b.n	80023ec <__aeabi_dsub+0x254>
 80022b4:	2e00      	cmp	r6, #0
 80022b6:	d000      	beq.n	80022ba <__aeabi_dsub+0x122>
 80022b8:	e0c5      	b.n	8002446 <__aeabi_dsub+0x2ae>
 80022ba:	1c6e      	adds	r6, r5, #1
 80022bc:	0576      	lsls	r6, r6, #21
 80022be:	0d76      	lsrs	r6, r6, #21
 80022c0:	2e01      	cmp	r6, #1
 80022c2:	dc00      	bgt.n	80022c6 <__aeabi_dsub+0x12e>
 80022c4:	e148      	b.n	8002558 <__aeabi_dsub+0x3c0>
 80022c6:	4667      	mov	r7, ip
 80022c8:	1a86      	subs	r6, r0, r2
 80022ca:	1bcb      	subs	r3, r1, r7
 80022cc:	42b0      	cmp	r0, r6
 80022ce:	41bf      	sbcs	r7, r7
 80022d0:	427f      	negs	r7, r7
 80022d2:	46b8      	mov	r8, r7
 80022d4:	001f      	movs	r7, r3
 80022d6:	4643      	mov	r3, r8
 80022d8:	1aff      	subs	r7, r7, r3
 80022da:	003b      	movs	r3, r7
 80022dc:	46b8      	mov	r8, r7
 80022de:	021b      	lsls	r3, r3, #8
 80022e0:	d500      	bpl.n	80022e4 <__aeabi_dsub+0x14c>
 80022e2:	e15f      	b.n	80025a4 <__aeabi_dsub+0x40c>
 80022e4:	4337      	orrs	r7, r6
 80022e6:	d19a      	bne.n	800221e <__aeabi_dsub+0x86>
 80022e8:	2200      	movs	r2, #0
 80022ea:	2400      	movs	r4, #0
 80022ec:	2500      	movs	r5, #0
 80022ee:	e079      	b.n	80023e4 <__aeabi_dsub+0x24c>
 80022f0:	2e00      	cmp	r6, #0
 80022f2:	dc00      	bgt.n	80022f6 <__aeabi_dsub+0x15e>
 80022f4:	e0fa      	b.n	80024ec <__aeabi_dsub+0x354>
 80022f6:	2f00      	cmp	r7, #0
 80022f8:	d100      	bne.n	80022fc <__aeabi_dsub+0x164>
 80022fa:	e08d      	b.n	8002418 <__aeabi_dsub+0x280>
 80022fc:	4b78      	ldr	r3, [pc, #480]	; (80024e0 <__aeabi_dsub+0x348>)
 80022fe:	429d      	cmp	r5, r3
 8002300:	d067      	beq.n	80023d2 <__aeabi_dsub+0x23a>
 8002302:	2380      	movs	r3, #128	; 0x80
 8002304:	4667      	mov	r7, ip
 8002306:	041b      	lsls	r3, r3, #16
 8002308:	431f      	orrs	r7, r3
 800230a:	46bc      	mov	ip, r7
 800230c:	2e38      	cmp	r6, #56	; 0x38
 800230e:	dc00      	bgt.n	8002312 <__aeabi_dsub+0x17a>
 8002310:	e152      	b.n	80025b8 <__aeabi_dsub+0x420>
 8002312:	4663      	mov	r3, ip
 8002314:	4313      	orrs	r3, r2
 8002316:	1e5a      	subs	r2, r3, #1
 8002318:	4193      	sbcs	r3, r2
 800231a:	181e      	adds	r6, r3, r0
 800231c:	4286      	cmp	r6, r0
 800231e:	4180      	sbcs	r0, r0
 8002320:	4240      	negs	r0, r0
 8002322:	1809      	adds	r1, r1, r0
 8002324:	020b      	lsls	r3, r1, #8
 8002326:	d400      	bmi.n	800232a <__aeabi_dsub+0x192>
 8002328:	e0be      	b.n	80024a8 <__aeabi_dsub+0x310>
 800232a:	4b6d      	ldr	r3, [pc, #436]	; (80024e0 <__aeabi_dsub+0x348>)
 800232c:	3501      	adds	r5, #1
 800232e:	429d      	cmp	r5, r3
 8002330:	d100      	bne.n	8002334 <__aeabi_dsub+0x19c>
 8002332:	e0d2      	b.n	80024da <__aeabi_dsub+0x342>
 8002334:	4a6b      	ldr	r2, [pc, #428]	; (80024e4 <__aeabi_dsub+0x34c>)
 8002336:	0873      	lsrs	r3, r6, #1
 8002338:	400a      	ands	r2, r1
 800233a:	2101      	movs	r1, #1
 800233c:	400e      	ands	r6, r1
 800233e:	431e      	orrs	r6, r3
 8002340:	0851      	lsrs	r1, r2, #1
 8002342:	07d3      	lsls	r3, r2, #31
 8002344:	2207      	movs	r2, #7
 8002346:	431e      	orrs	r6, r3
 8002348:	4032      	ands	r2, r6
 800234a:	e795      	b.n	8002278 <__aeabi_dsub+0xe0>
 800234c:	001e      	movs	r6, r3
 800234e:	4316      	orrs	r6, r2
 8002350:	d000      	beq.n	8002354 <__aeabi_dsub+0x1bc>
 8002352:	e745      	b.n	80021e0 <__aeabi_dsub+0x48>
 8002354:	e740      	b.n	80021d8 <__aeabi_dsub+0x40>
 8002356:	4b62      	ldr	r3, [pc, #392]	; (80024e0 <__aeabi_dsub+0x348>)
 8002358:	429d      	cmp	r5, r3
 800235a:	d03a      	beq.n	80023d2 <__aeabi_dsub+0x23a>
 800235c:	2380      	movs	r3, #128	; 0x80
 800235e:	4667      	mov	r7, ip
 8002360:	041b      	lsls	r3, r3, #16
 8002362:	431f      	orrs	r7, r3
 8002364:	46bc      	mov	ip, r7
 8002366:	2e38      	cmp	r6, #56	; 0x38
 8002368:	dd00      	ble.n	800236c <__aeabi_dsub+0x1d4>
 800236a:	e0eb      	b.n	8002544 <__aeabi_dsub+0x3ac>
 800236c:	2e1f      	cmp	r6, #31
 800236e:	dc00      	bgt.n	8002372 <__aeabi_dsub+0x1da>
 8002370:	e13a      	b.n	80025e8 <__aeabi_dsub+0x450>
 8002372:	0033      	movs	r3, r6
 8002374:	4667      	mov	r7, ip
 8002376:	3b20      	subs	r3, #32
 8002378:	40df      	lsrs	r7, r3
 800237a:	003b      	movs	r3, r7
 800237c:	2e20      	cmp	r6, #32
 800237e:	d005      	beq.n	800238c <__aeabi_dsub+0x1f4>
 8002380:	2740      	movs	r7, #64	; 0x40
 8002382:	1bbf      	subs	r7, r7, r6
 8002384:	4666      	mov	r6, ip
 8002386:	40be      	lsls	r6, r7
 8002388:	4332      	orrs	r2, r6
 800238a:	4690      	mov	r8, r2
 800238c:	4646      	mov	r6, r8
 800238e:	1e72      	subs	r2, r6, #1
 8002390:	4196      	sbcs	r6, r2
 8002392:	4333      	orrs	r3, r6
 8002394:	e0da      	b.n	800254c <__aeabi_dsub+0x3b4>
 8002396:	2b00      	cmp	r3, #0
 8002398:	d100      	bne.n	800239c <__aeabi_dsub+0x204>
 800239a:	e214      	b.n	80027c6 <__aeabi_dsub+0x62e>
 800239c:	4663      	mov	r3, ip
 800239e:	4313      	orrs	r3, r2
 80023a0:	d100      	bne.n	80023a4 <__aeabi_dsub+0x20c>
 80023a2:	e168      	b.n	8002676 <__aeabi_dsub+0x4de>
 80023a4:	2380      	movs	r3, #128	; 0x80
 80023a6:	074e      	lsls	r6, r1, #29
 80023a8:	08c0      	lsrs	r0, r0, #3
 80023aa:	08c9      	lsrs	r1, r1, #3
 80023ac:	031b      	lsls	r3, r3, #12
 80023ae:	4306      	orrs	r6, r0
 80023b0:	4219      	tst	r1, r3
 80023b2:	d008      	beq.n	80023c6 <__aeabi_dsub+0x22e>
 80023b4:	4660      	mov	r0, ip
 80023b6:	08c0      	lsrs	r0, r0, #3
 80023b8:	4218      	tst	r0, r3
 80023ba:	d104      	bne.n	80023c6 <__aeabi_dsub+0x22e>
 80023bc:	4663      	mov	r3, ip
 80023be:	0001      	movs	r1, r0
 80023c0:	08d2      	lsrs	r2, r2, #3
 80023c2:	075e      	lsls	r6, r3, #29
 80023c4:	4316      	orrs	r6, r2
 80023c6:	00f3      	lsls	r3, r6, #3
 80023c8:	4699      	mov	r9, r3
 80023ca:	00c9      	lsls	r1, r1, #3
 80023cc:	0f72      	lsrs	r2, r6, #29
 80023ce:	4d44      	ldr	r5, [pc, #272]	; (80024e0 <__aeabi_dsub+0x348>)
 80023d0:	4311      	orrs	r1, r2
 80023d2:	464b      	mov	r3, r9
 80023d4:	08de      	lsrs	r6, r3, #3
 80023d6:	4b42      	ldr	r3, [pc, #264]	; (80024e0 <__aeabi_dsub+0x348>)
 80023d8:	074f      	lsls	r7, r1, #29
 80023da:	4337      	orrs	r7, r6
 80023dc:	08ca      	lsrs	r2, r1, #3
 80023de:	429d      	cmp	r5, r3
 80023e0:	d100      	bne.n	80023e4 <__aeabi_dsub+0x24c>
 80023e2:	e06e      	b.n	80024c2 <__aeabi_dsub+0x32a>
 80023e4:	0312      	lsls	r2, r2, #12
 80023e6:	056d      	lsls	r5, r5, #21
 80023e8:	0b12      	lsrs	r2, r2, #12
 80023ea:	0d6d      	lsrs	r5, r5, #21
 80023ec:	2100      	movs	r1, #0
 80023ee:	0312      	lsls	r2, r2, #12
 80023f0:	0b13      	lsrs	r3, r2, #12
 80023f2:	0d0a      	lsrs	r2, r1, #20
 80023f4:	0512      	lsls	r2, r2, #20
 80023f6:	431a      	orrs	r2, r3
 80023f8:	4b3b      	ldr	r3, [pc, #236]	; (80024e8 <__aeabi_dsub+0x350>)
 80023fa:	052d      	lsls	r5, r5, #20
 80023fc:	4013      	ands	r3, r2
 80023fe:	432b      	orrs	r3, r5
 8002400:	005b      	lsls	r3, r3, #1
 8002402:	07e4      	lsls	r4, r4, #31
 8002404:	085b      	lsrs	r3, r3, #1
 8002406:	4323      	orrs	r3, r4
 8002408:	0038      	movs	r0, r7
 800240a:	0019      	movs	r1, r3
 800240c:	bc3c      	pop	{r2, r3, r4, r5}
 800240e:	4690      	mov	r8, r2
 8002410:	4699      	mov	r9, r3
 8002412:	46a2      	mov	sl, r4
 8002414:	46ab      	mov	fp, r5
 8002416:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8002418:	4663      	mov	r3, ip
 800241a:	4313      	orrs	r3, r2
 800241c:	d011      	beq.n	8002442 <__aeabi_dsub+0x2aa>
 800241e:	1e73      	subs	r3, r6, #1
 8002420:	2b00      	cmp	r3, #0
 8002422:	d000      	beq.n	8002426 <__aeabi_dsub+0x28e>
 8002424:	e107      	b.n	8002636 <__aeabi_dsub+0x49e>
 8002426:	1886      	adds	r6, r0, r2
 8002428:	4286      	cmp	r6, r0
 800242a:	4180      	sbcs	r0, r0
 800242c:	4461      	add	r1, ip
 800242e:	4240      	negs	r0, r0
 8002430:	1809      	adds	r1, r1, r0
 8002432:	2501      	movs	r5, #1
 8002434:	020b      	lsls	r3, r1, #8
 8002436:	d537      	bpl.n	80024a8 <__aeabi_dsub+0x310>
 8002438:	2502      	movs	r5, #2
 800243a:	e77b      	b.n	8002334 <__aeabi_dsub+0x19c>
 800243c:	003e      	movs	r6, r7
 800243e:	4661      	mov	r1, ip
 8002440:	4691      	mov	r9, r2
 8002442:	0035      	movs	r5, r6
 8002444:	e7c5      	b.n	80023d2 <__aeabi_dsub+0x23a>
 8002446:	465c      	mov	r4, fp
 8002448:	2d00      	cmp	r5, #0
 800244a:	d000      	beq.n	800244e <__aeabi_dsub+0x2b6>
 800244c:	e0e1      	b.n	8002612 <__aeabi_dsub+0x47a>
 800244e:	000b      	movs	r3, r1
 8002450:	4303      	orrs	r3, r0
 8002452:	d0f3      	beq.n	800243c <__aeabi_dsub+0x2a4>
 8002454:	1c73      	adds	r3, r6, #1
 8002456:	d100      	bne.n	800245a <__aeabi_dsub+0x2c2>
 8002458:	e1ac      	b.n	80027b4 <__aeabi_dsub+0x61c>
 800245a:	4b21      	ldr	r3, [pc, #132]	; (80024e0 <__aeabi_dsub+0x348>)
 800245c:	429f      	cmp	r7, r3
 800245e:	d100      	bne.n	8002462 <__aeabi_dsub+0x2ca>
 8002460:	e13a      	b.n	80026d8 <__aeabi_dsub+0x540>
 8002462:	43f3      	mvns	r3, r6
 8002464:	2b38      	cmp	r3, #56	; 0x38
 8002466:	dd00      	ble.n	800246a <__aeabi_dsub+0x2d2>
 8002468:	e16f      	b.n	800274a <__aeabi_dsub+0x5b2>
 800246a:	2b1f      	cmp	r3, #31
 800246c:	dd00      	ble.n	8002470 <__aeabi_dsub+0x2d8>
 800246e:	e18c      	b.n	800278a <__aeabi_dsub+0x5f2>
 8002470:	2520      	movs	r5, #32
 8002472:	000e      	movs	r6, r1
 8002474:	1aed      	subs	r5, r5, r3
 8002476:	40ae      	lsls	r6, r5
 8002478:	46b0      	mov	r8, r6
 800247a:	0006      	movs	r6, r0
 800247c:	46aa      	mov	sl, r5
 800247e:	40de      	lsrs	r6, r3
 8002480:	4645      	mov	r5, r8
 8002482:	4335      	orrs	r5, r6
 8002484:	002e      	movs	r6, r5
 8002486:	4655      	mov	r5, sl
 8002488:	40d9      	lsrs	r1, r3
 800248a:	40a8      	lsls	r0, r5
 800248c:	4663      	mov	r3, ip
 800248e:	1e45      	subs	r5, r0, #1
 8002490:	41a8      	sbcs	r0, r5
 8002492:	1a5b      	subs	r3, r3, r1
 8002494:	469c      	mov	ip, r3
 8002496:	4330      	orrs	r0, r6
 8002498:	1a16      	subs	r6, r2, r0
 800249a:	42b2      	cmp	r2, r6
 800249c:	4192      	sbcs	r2, r2
 800249e:	4663      	mov	r3, ip
 80024a0:	4252      	negs	r2, r2
 80024a2:	1a99      	subs	r1, r3, r2
 80024a4:	003d      	movs	r5, r7
 80024a6:	e6b4      	b.n	8002212 <__aeabi_dsub+0x7a>
 80024a8:	2207      	movs	r2, #7
 80024aa:	4032      	ands	r2, r6
 80024ac:	2a00      	cmp	r2, #0
 80024ae:	d000      	beq.n	80024b2 <__aeabi_dsub+0x31a>
 80024b0:	e6e4      	b.n	800227c <__aeabi_dsub+0xe4>
 80024b2:	4b0b      	ldr	r3, [pc, #44]	; (80024e0 <__aeabi_dsub+0x348>)
 80024b4:	08f6      	lsrs	r6, r6, #3
 80024b6:	074f      	lsls	r7, r1, #29
 80024b8:	4337      	orrs	r7, r6
 80024ba:	08ca      	lsrs	r2, r1, #3
 80024bc:	429d      	cmp	r5, r3
 80024be:	d000      	beq.n	80024c2 <__aeabi_dsub+0x32a>
 80024c0:	e790      	b.n	80023e4 <__aeabi_dsub+0x24c>
 80024c2:	003b      	movs	r3, r7
 80024c4:	4313      	orrs	r3, r2
 80024c6:	d100      	bne.n	80024ca <__aeabi_dsub+0x332>
 80024c8:	e1a6      	b.n	8002818 <__aeabi_dsub+0x680>
 80024ca:	2380      	movs	r3, #128	; 0x80
 80024cc:	031b      	lsls	r3, r3, #12
 80024ce:	431a      	orrs	r2, r3
 80024d0:	0312      	lsls	r2, r2, #12
 80024d2:	0b12      	lsrs	r2, r2, #12
 80024d4:	4d02      	ldr	r5, [pc, #8]	; (80024e0 <__aeabi_dsub+0x348>)
 80024d6:	e789      	b.n	80023ec <__aeabi_dsub+0x254>
 80024d8:	0015      	movs	r5, r2
 80024da:	2200      	movs	r2, #0
 80024dc:	2700      	movs	r7, #0
 80024de:	e785      	b.n	80023ec <__aeabi_dsub+0x254>
 80024e0:	000007ff 	.word	0x000007ff
 80024e4:	ff7fffff 	.word	0xff7fffff
 80024e8:	800fffff 	.word	0x800fffff
 80024ec:	2e00      	cmp	r6, #0
 80024ee:	d000      	beq.n	80024f2 <__aeabi_dsub+0x35a>
 80024f0:	e0c7      	b.n	8002682 <__aeabi_dsub+0x4ea>
 80024f2:	1c6b      	adds	r3, r5, #1
 80024f4:	055e      	lsls	r6, r3, #21
 80024f6:	0d76      	lsrs	r6, r6, #21
 80024f8:	2e01      	cmp	r6, #1
 80024fa:	dc00      	bgt.n	80024fe <__aeabi_dsub+0x366>
 80024fc:	e0f0      	b.n	80026e0 <__aeabi_dsub+0x548>
 80024fe:	4dc8      	ldr	r5, [pc, #800]	; (8002820 <__aeabi_dsub+0x688>)
 8002500:	42ab      	cmp	r3, r5
 8002502:	d100      	bne.n	8002506 <__aeabi_dsub+0x36e>
 8002504:	e0b9      	b.n	800267a <__aeabi_dsub+0x4e2>
 8002506:	1885      	adds	r5, r0, r2
 8002508:	000a      	movs	r2, r1
 800250a:	4285      	cmp	r5, r0
 800250c:	4189      	sbcs	r1, r1
 800250e:	4462      	add	r2, ip
 8002510:	4249      	negs	r1, r1
 8002512:	1851      	adds	r1, r2, r1
 8002514:	2207      	movs	r2, #7
 8002516:	07ce      	lsls	r6, r1, #31
 8002518:	086d      	lsrs	r5, r5, #1
 800251a:	432e      	orrs	r6, r5
 800251c:	0849      	lsrs	r1, r1, #1
 800251e:	4032      	ands	r2, r6
 8002520:	001d      	movs	r5, r3
 8002522:	e6a9      	b.n	8002278 <__aeabi_dsub+0xe0>
 8002524:	49bf      	ldr	r1, [pc, #764]	; (8002824 <__aeabi_dsub+0x68c>)
 8002526:	1aed      	subs	r5, r5, r3
 8002528:	4011      	ands	r1, r2
 800252a:	2207      	movs	r2, #7
 800252c:	4032      	ands	r2, r6
 800252e:	e6a3      	b.n	8002278 <__aeabi_dsub+0xe0>
 8002530:	0032      	movs	r2, r6
 8002532:	3828      	subs	r0, #40	; 0x28
 8002534:	4082      	lsls	r2, r0
 8002536:	2600      	movs	r6, #0
 8002538:	e686      	b.n	8002248 <__aeabi_dsub+0xb0>
 800253a:	0030      	movs	r0, r6
 800253c:	f000 fa4a 	bl	80029d4 <__clzsi2>
 8002540:	3020      	adds	r0, #32
 8002542:	e673      	b.n	800222c <__aeabi_dsub+0x94>
 8002544:	4663      	mov	r3, ip
 8002546:	4313      	orrs	r3, r2
 8002548:	1e5a      	subs	r2, r3, #1
 800254a:	4193      	sbcs	r3, r2
 800254c:	1ac6      	subs	r6, r0, r3
 800254e:	42b0      	cmp	r0, r6
 8002550:	4180      	sbcs	r0, r0
 8002552:	4240      	negs	r0, r0
 8002554:	1a09      	subs	r1, r1, r0
 8002556:	e65c      	b.n	8002212 <__aeabi_dsub+0x7a>
 8002558:	000e      	movs	r6, r1
 800255a:	4667      	mov	r7, ip
 800255c:	4306      	orrs	r6, r0
 800255e:	4317      	orrs	r7, r2
 8002560:	2d00      	cmp	r5, #0
 8002562:	d15e      	bne.n	8002622 <__aeabi_dsub+0x48a>
 8002564:	2e00      	cmp	r6, #0
 8002566:	d000      	beq.n	800256a <__aeabi_dsub+0x3d2>
 8002568:	e0f3      	b.n	8002752 <__aeabi_dsub+0x5ba>
 800256a:	2f00      	cmp	r7, #0
 800256c:	d100      	bne.n	8002570 <__aeabi_dsub+0x3d8>
 800256e:	e11e      	b.n	80027ae <__aeabi_dsub+0x616>
 8002570:	465c      	mov	r4, fp
 8002572:	4661      	mov	r1, ip
 8002574:	4691      	mov	r9, r2
 8002576:	e72c      	b.n	80023d2 <__aeabi_dsub+0x23a>
 8002578:	4fa9      	ldr	r7, [pc, #676]	; (8002820 <__aeabi_dsub+0x688>)
 800257a:	42be      	cmp	r6, r7
 800257c:	d07b      	beq.n	8002676 <__aeabi_dsub+0x4de>
 800257e:	001e      	movs	r6, r3
 8002580:	e6f1      	b.n	8002366 <__aeabi_dsub+0x1ce>
 8002582:	0010      	movs	r0, r2
 8002584:	3d1f      	subs	r5, #31
 8002586:	40e8      	lsrs	r0, r5
 8002588:	2b20      	cmp	r3, #32
 800258a:	d003      	beq.n	8002594 <__aeabi_dsub+0x3fc>
 800258c:	2140      	movs	r1, #64	; 0x40
 800258e:	1acb      	subs	r3, r1, r3
 8002590:	409a      	lsls	r2, r3
 8002592:	4316      	orrs	r6, r2
 8002594:	1e73      	subs	r3, r6, #1
 8002596:	419e      	sbcs	r6, r3
 8002598:	2207      	movs	r2, #7
 800259a:	4306      	orrs	r6, r0
 800259c:	4032      	ands	r2, r6
 800259e:	2100      	movs	r1, #0
 80025a0:	2500      	movs	r5, #0
 80025a2:	e783      	b.n	80024ac <__aeabi_dsub+0x314>
 80025a4:	1a16      	subs	r6, r2, r0
 80025a6:	4663      	mov	r3, ip
 80025a8:	42b2      	cmp	r2, r6
 80025aa:	4180      	sbcs	r0, r0
 80025ac:	1a59      	subs	r1, r3, r1
 80025ae:	4240      	negs	r0, r0
 80025b0:	1a0b      	subs	r3, r1, r0
 80025b2:	4698      	mov	r8, r3
 80025b4:	465c      	mov	r4, fp
 80025b6:	e632      	b.n	800221e <__aeabi_dsub+0x86>
 80025b8:	2e1f      	cmp	r6, #31
 80025ba:	dd00      	ble.n	80025be <__aeabi_dsub+0x426>
 80025bc:	e0ab      	b.n	8002716 <__aeabi_dsub+0x57e>
 80025be:	2720      	movs	r7, #32
 80025c0:	1bbb      	subs	r3, r7, r6
 80025c2:	469a      	mov	sl, r3
 80025c4:	4663      	mov	r3, ip
 80025c6:	4657      	mov	r7, sl
 80025c8:	40bb      	lsls	r3, r7
 80025ca:	4699      	mov	r9, r3
 80025cc:	0013      	movs	r3, r2
 80025ce:	464f      	mov	r7, r9
 80025d0:	40f3      	lsrs	r3, r6
 80025d2:	431f      	orrs	r7, r3
 80025d4:	003b      	movs	r3, r7
 80025d6:	4657      	mov	r7, sl
 80025d8:	40ba      	lsls	r2, r7
 80025da:	1e57      	subs	r7, r2, #1
 80025dc:	41ba      	sbcs	r2, r7
 80025de:	4313      	orrs	r3, r2
 80025e0:	4662      	mov	r2, ip
 80025e2:	40f2      	lsrs	r2, r6
 80025e4:	1889      	adds	r1, r1, r2
 80025e6:	e698      	b.n	800231a <__aeabi_dsub+0x182>
 80025e8:	2720      	movs	r7, #32
 80025ea:	1bbb      	subs	r3, r7, r6
 80025ec:	469a      	mov	sl, r3
 80025ee:	4663      	mov	r3, ip
 80025f0:	4657      	mov	r7, sl
 80025f2:	40bb      	lsls	r3, r7
 80025f4:	4699      	mov	r9, r3
 80025f6:	0013      	movs	r3, r2
 80025f8:	464f      	mov	r7, r9
 80025fa:	40f3      	lsrs	r3, r6
 80025fc:	431f      	orrs	r7, r3
 80025fe:	003b      	movs	r3, r7
 8002600:	4657      	mov	r7, sl
 8002602:	40ba      	lsls	r2, r7
 8002604:	1e57      	subs	r7, r2, #1
 8002606:	41ba      	sbcs	r2, r7
 8002608:	4313      	orrs	r3, r2
 800260a:	4662      	mov	r2, ip
 800260c:	40f2      	lsrs	r2, r6
 800260e:	1a89      	subs	r1, r1, r2
 8002610:	e79c      	b.n	800254c <__aeabi_dsub+0x3b4>
 8002612:	4b83      	ldr	r3, [pc, #524]	; (8002820 <__aeabi_dsub+0x688>)
 8002614:	429f      	cmp	r7, r3
 8002616:	d05f      	beq.n	80026d8 <__aeabi_dsub+0x540>
 8002618:	2580      	movs	r5, #128	; 0x80
 800261a:	042d      	lsls	r5, r5, #16
 800261c:	4273      	negs	r3, r6
 800261e:	4329      	orrs	r1, r5
 8002620:	e720      	b.n	8002464 <__aeabi_dsub+0x2cc>
 8002622:	2e00      	cmp	r6, #0
 8002624:	d10c      	bne.n	8002640 <__aeabi_dsub+0x4a8>
 8002626:	2f00      	cmp	r7, #0
 8002628:	d100      	bne.n	800262c <__aeabi_dsub+0x494>
 800262a:	e0d0      	b.n	80027ce <__aeabi_dsub+0x636>
 800262c:	465c      	mov	r4, fp
 800262e:	4661      	mov	r1, ip
 8002630:	4691      	mov	r9, r2
 8002632:	4d7b      	ldr	r5, [pc, #492]	; (8002820 <__aeabi_dsub+0x688>)
 8002634:	e6cd      	b.n	80023d2 <__aeabi_dsub+0x23a>
 8002636:	4f7a      	ldr	r7, [pc, #488]	; (8002820 <__aeabi_dsub+0x688>)
 8002638:	42be      	cmp	r6, r7
 800263a:	d01c      	beq.n	8002676 <__aeabi_dsub+0x4de>
 800263c:	001e      	movs	r6, r3
 800263e:	e665      	b.n	800230c <__aeabi_dsub+0x174>
 8002640:	2f00      	cmp	r7, #0
 8002642:	d018      	beq.n	8002676 <__aeabi_dsub+0x4de>
 8002644:	08c0      	lsrs	r0, r0, #3
 8002646:	074e      	lsls	r6, r1, #29
 8002648:	4306      	orrs	r6, r0
 800264a:	2080      	movs	r0, #128	; 0x80
 800264c:	08c9      	lsrs	r1, r1, #3
 800264e:	0300      	lsls	r0, r0, #12
 8002650:	4201      	tst	r1, r0
 8002652:	d008      	beq.n	8002666 <__aeabi_dsub+0x4ce>
 8002654:	4663      	mov	r3, ip
 8002656:	08dc      	lsrs	r4, r3, #3
 8002658:	4204      	tst	r4, r0
 800265a:	d104      	bne.n	8002666 <__aeabi_dsub+0x4ce>
 800265c:	0021      	movs	r1, r4
 800265e:	46da      	mov	sl, fp
 8002660:	08d2      	lsrs	r2, r2, #3
 8002662:	075e      	lsls	r6, r3, #29
 8002664:	4316      	orrs	r6, r2
 8002666:	00f3      	lsls	r3, r6, #3
 8002668:	4699      	mov	r9, r3
 800266a:	2401      	movs	r4, #1
 800266c:	4653      	mov	r3, sl
 800266e:	00c9      	lsls	r1, r1, #3
 8002670:	0f72      	lsrs	r2, r6, #29
 8002672:	4311      	orrs	r1, r2
 8002674:	401c      	ands	r4, r3
 8002676:	4d6a      	ldr	r5, [pc, #424]	; (8002820 <__aeabi_dsub+0x688>)
 8002678:	e6ab      	b.n	80023d2 <__aeabi_dsub+0x23a>
 800267a:	001d      	movs	r5, r3
 800267c:	2200      	movs	r2, #0
 800267e:	2700      	movs	r7, #0
 8002680:	e6b4      	b.n	80023ec <__aeabi_dsub+0x254>
 8002682:	2d00      	cmp	r5, #0
 8002684:	d159      	bne.n	800273a <__aeabi_dsub+0x5a2>
 8002686:	000b      	movs	r3, r1
 8002688:	4303      	orrs	r3, r0
 800268a:	d100      	bne.n	800268e <__aeabi_dsub+0x4f6>
 800268c:	e6d6      	b.n	800243c <__aeabi_dsub+0x2a4>
 800268e:	1c73      	adds	r3, r6, #1
 8002690:	d100      	bne.n	8002694 <__aeabi_dsub+0x4fc>
 8002692:	e0b2      	b.n	80027fa <__aeabi_dsub+0x662>
 8002694:	4b62      	ldr	r3, [pc, #392]	; (8002820 <__aeabi_dsub+0x688>)
 8002696:	429f      	cmp	r7, r3
 8002698:	d01e      	beq.n	80026d8 <__aeabi_dsub+0x540>
 800269a:	43f3      	mvns	r3, r6
 800269c:	2b38      	cmp	r3, #56	; 0x38
 800269e:	dc6f      	bgt.n	8002780 <__aeabi_dsub+0x5e8>
 80026a0:	2b1f      	cmp	r3, #31
 80026a2:	dd00      	ble.n	80026a6 <__aeabi_dsub+0x50e>
 80026a4:	e097      	b.n	80027d6 <__aeabi_dsub+0x63e>
 80026a6:	2520      	movs	r5, #32
 80026a8:	000e      	movs	r6, r1
 80026aa:	1aed      	subs	r5, r5, r3
 80026ac:	40ae      	lsls	r6, r5
 80026ae:	46b0      	mov	r8, r6
 80026b0:	0006      	movs	r6, r0
 80026b2:	46aa      	mov	sl, r5
 80026b4:	40de      	lsrs	r6, r3
 80026b6:	4645      	mov	r5, r8
 80026b8:	4335      	orrs	r5, r6
 80026ba:	002e      	movs	r6, r5
 80026bc:	4655      	mov	r5, sl
 80026be:	40a8      	lsls	r0, r5
 80026c0:	40d9      	lsrs	r1, r3
 80026c2:	1e45      	subs	r5, r0, #1
 80026c4:	41a8      	sbcs	r0, r5
 80026c6:	448c      	add	ip, r1
 80026c8:	4306      	orrs	r6, r0
 80026ca:	18b6      	adds	r6, r6, r2
 80026cc:	4296      	cmp	r6, r2
 80026ce:	4192      	sbcs	r2, r2
 80026d0:	4251      	negs	r1, r2
 80026d2:	4461      	add	r1, ip
 80026d4:	003d      	movs	r5, r7
 80026d6:	e625      	b.n	8002324 <__aeabi_dsub+0x18c>
 80026d8:	003d      	movs	r5, r7
 80026da:	4661      	mov	r1, ip
 80026dc:	4691      	mov	r9, r2
 80026de:	e678      	b.n	80023d2 <__aeabi_dsub+0x23a>
 80026e0:	000b      	movs	r3, r1
 80026e2:	4303      	orrs	r3, r0
 80026e4:	2d00      	cmp	r5, #0
 80026e6:	d000      	beq.n	80026ea <__aeabi_dsub+0x552>
 80026e8:	e655      	b.n	8002396 <__aeabi_dsub+0x1fe>
 80026ea:	2b00      	cmp	r3, #0
 80026ec:	d0f5      	beq.n	80026da <__aeabi_dsub+0x542>
 80026ee:	4663      	mov	r3, ip
 80026f0:	4313      	orrs	r3, r2
 80026f2:	d100      	bne.n	80026f6 <__aeabi_dsub+0x55e>
 80026f4:	e66d      	b.n	80023d2 <__aeabi_dsub+0x23a>
 80026f6:	1886      	adds	r6, r0, r2
 80026f8:	4286      	cmp	r6, r0
 80026fa:	4180      	sbcs	r0, r0
 80026fc:	4461      	add	r1, ip
 80026fe:	4240      	negs	r0, r0
 8002700:	1809      	adds	r1, r1, r0
 8002702:	2200      	movs	r2, #0
 8002704:	020b      	lsls	r3, r1, #8
 8002706:	d400      	bmi.n	800270a <__aeabi_dsub+0x572>
 8002708:	e6d0      	b.n	80024ac <__aeabi_dsub+0x314>
 800270a:	4b46      	ldr	r3, [pc, #280]	; (8002824 <__aeabi_dsub+0x68c>)
 800270c:	3501      	adds	r5, #1
 800270e:	4019      	ands	r1, r3
 8002710:	e5b2      	b.n	8002278 <__aeabi_dsub+0xe0>
 8002712:	46b1      	mov	r9, r6
 8002714:	e65d      	b.n	80023d2 <__aeabi_dsub+0x23a>
 8002716:	0033      	movs	r3, r6
 8002718:	4667      	mov	r7, ip
 800271a:	3b20      	subs	r3, #32
 800271c:	40df      	lsrs	r7, r3
 800271e:	003b      	movs	r3, r7
 8002720:	2e20      	cmp	r6, #32
 8002722:	d005      	beq.n	8002730 <__aeabi_dsub+0x598>
 8002724:	2740      	movs	r7, #64	; 0x40
 8002726:	1bbf      	subs	r7, r7, r6
 8002728:	4666      	mov	r6, ip
 800272a:	40be      	lsls	r6, r7
 800272c:	4332      	orrs	r2, r6
 800272e:	4690      	mov	r8, r2
 8002730:	4646      	mov	r6, r8
 8002732:	1e72      	subs	r2, r6, #1
 8002734:	4196      	sbcs	r6, r2
 8002736:	4333      	orrs	r3, r6
 8002738:	e5ef      	b.n	800231a <__aeabi_dsub+0x182>
 800273a:	4b39      	ldr	r3, [pc, #228]	; (8002820 <__aeabi_dsub+0x688>)
 800273c:	429f      	cmp	r7, r3
 800273e:	d0cb      	beq.n	80026d8 <__aeabi_dsub+0x540>
 8002740:	2580      	movs	r5, #128	; 0x80
 8002742:	042d      	lsls	r5, r5, #16
 8002744:	4273      	negs	r3, r6
 8002746:	4329      	orrs	r1, r5
 8002748:	e7a8      	b.n	800269c <__aeabi_dsub+0x504>
 800274a:	4308      	orrs	r0, r1
 800274c:	1e41      	subs	r1, r0, #1
 800274e:	4188      	sbcs	r0, r1
 8002750:	e6a2      	b.n	8002498 <__aeabi_dsub+0x300>
 8002752:	2f00      	cmp	r7, #0
 8002754:	d100      	bne.n	8002758 <__aeabi_dsub+0x5c0>
 8002756:	e63c      	b.n	80023d2 <__aeabi_dsub+0x23a>
 8002758:	4663      	mov	r3, ip
 800275a:	1a86      	subs	r6, r0, r2
 800275c:	1acf      	subs	r7, r1, r3
 800275e:	42b0      	cmp	r0, r6
 8002760:	419b      	sbcs	r3, r3
 8002762:	425b      	negs	r3, r3
 8002764:	1afb      	subs	r3, r7, r3
 8002766:	4698      	mov	r8, r3
 8002768:	021b      	lsls	r3, r3, #8
 800276a:	d54e      	bpl.n	800280a <__aeabi_dsub+0x672>
 800276c:	1a16      	subs	r6, r2, r0
 800276e:	4663      	mov	r3, ip
 8002770:	42b2      	cmp	r2, r6
 8002772:	4192      	sbcs	r2, r2
 8002774:	1a59      	subs	r1, r3, r1
 8002776:	4252      	negs	r2, r2
 8002778:	1a89      	subs	r1, r1, r2
 800277a:	465c      	mov	r4, fp
 800277c:	2200      	movs	r2, #0
 800277e:	e57b      	b.n	8002278 <__aeabi_dsub+0xe0>
 8002780:	4301      	orrs	r1, r0
 8002782:	000e      	movs	r6, r1
 8002784:	1e71      	subs	r1, r6, #1
 8002786:	418e      	sbcs	r6, r1
 8002788:	e79f      	b.n	80026ca <__aeabi_dsub+0x532>
 800278a:	001d      	movs	r5, r3
 800278c:	000e      	movs	r6, r1
 800278e:	3d20      	subs	r5, #32
 8002790:	40ee      	lsrs	r6, r5
 8002792:	46b0      	mov	r8, r6
 8002794:	2b20      	cmp	r3, #32
 8002796:	d004      	beq.n	80027a2 <__aeabi_dsub+0x60a>
 8002798:	2540      	movs	r5, #64	; 0x40
 800279a:	1aeb      	subs	r3, r5, r3
 800279c:	4099      	lsls	r1, r3
 800279e:	4308      	orrs	r0, r1
 80027a0:	4681      	mov	r9, r0
 80027a2:	4648      	mov	r0, r9
 80027a4:	4643      	mov	r3, r8
 80027a6:	1e41      	subs	r1, r0, #1
 80027a8:	4188      	sbcs	r0, r1
 80027aa:	4318      	orrs	r0, r3
 80027ac:	e674      	b.n	8002498 <__aeabi_dsub+0x300>
 80027ae:	2200      	movs	r2, #0
 80027b0:	2400      	movs	r4, #0
 80027b2:	e617      	b.n	80023e4 <__aeabi_dsub+0x24c>
 80027b4:	1a16      	subs	r6, r2, r0
 80027b6:	4663      	mov	r3, ip
 80027b8:	42b2      	cmp	r2, r6
 80027ba:	4192      	sbcs	r2, r2
 80027bc:	1a59      	subs	r1, r3, r1
 80027be:	4252      	negs	r2, r2
 80027c0:	1a89      	subs	r1, r1, r2
 80027c2:	003d      	movs	r5, r7
 80027c4:	e525      	b.n	8002212 <__aeabi_dsub+0x7a>
 80027c6:	4661      	mov	r1, ip
 80027c8:	4691      	mov	r9, r2
 80027ca:	4d15      	ldr	r5, [pc, #84]	; (8002820 <__aeabi_dsub+0x688>)
 80027cc:	e601      	b.n	80023d2 <__aeabi_dsub+0x23a>
 80027ce:	2280      	movs	r2, #128	; 0x80
 80027d0:	2400      	movs	r4, #0
 80027d2:	0312      	lsls	r2, r2, #12
 80027d4:	e679      	b.n	80024ca <__aeabi_dsub+0x332>
 80027d6:	001d      	movs	r5, r3
 80027d8:	000e      	movs	r6, r1
 80027da:	3d20      	subs	r5, #32
 80027dc:	40ee      	lsrs	r6, r5
 80027de:	46b0      	mov	r8, r6
 80027e0:	2b20      	cmp	r3, #32
 80027e2:	d004      	beq.n	80027ee <__aeabi_dsub+0x656>
 80027e4:	2540      	movs	r5, #64	; 0x40
 80027e6:	1aeb      	subs	r3, r5, r3
 80027e8:	4099      	lsls	r1, r3
 80027ea:	4308      	orrs	r0, r1
 80027ec:	4681      	mov	r9, r0
 80027ee:	464e      	mov	r6, r9
 80027f0:	4643      	mov	r3, r8
 80027f2:	1e71      	subs	r1, r6, #1
 80027f4:	418e      	sbcs	r6, r1
 80027f6:	431e      	orrs	r6, r3
 80027f8:	e767      	b.n	80026ca <__aeabi_dsub+0x532>
 80027fa:	1886      	adds	r6, r0, r2
 80027fc:	4296      	cmp	r6, r2
 80027fe:	419b      	sbcs	r3, r3
 8002800:	4461      	add	r1, ip
 8002802:	425b      	negs	r3, r3
 8002804:	18c9      	adds	r1, r1, r3
 8002806:	003d      	movs	r5, r7
 8002808:	e58c      	b.n	8002324 <__aeabi_dsub+0x18c>
 800280a:	4647      	mov	r7, r8
 800280c:	4337      	orrs	r7, r6
 800280e:	d0ce      	beq.n	80027ae <__aeabi_dsub+0x616>
 8002810:	2207      	movs	r2, #7
 8002812:	4641      	mov	r1, r8
 8002814:	4032      	ands	r2, r6
 8002816:	e649      	b.n	80024ac <__aeabi_dsub+0x314>
 8002818:	2700      	movs	r7, #0
 800281a:	003a      	movs	r2, r7
 800281c:	e5e6      	b.n	80023ec <__aeabi_dsub+0x254>
 800281e:	46c0      	nop			; (mov r8, r8)
 8002820:	000007ff 	.word	0x000007ff
 8002824:	ff7fffff 	.word	0xff7fffff

08002828 <__aeabi_f2d>:
 8002828:	0041      	lsls	r1, r0, #1
 800282a:	0e09      	lsrs	r1, r1, #24
 800282c:	1c4b      	adds	r3, r1, #1
 800282e:	b570      	push	{r4, r5, r6, lr}
 8002830:	b2db      	uxtb	r3, r3
 8002832:	0246      	lsls	r6, r0, #9
 8002834:	0a75      	lsrs	r5, r6, #9
 8002836:	0fc4      	lsrs	r4, r0, #31
 8002838:	2b01      	cmp	r3, #1
 800283a:	dd14      	ble.n	8002866 <__aeabi_f2d+0x3e>
 800283c:	23e0      	movs	r3, #224	; 0xe0
 800283e:	009b      	lsls	r3, r3, #2
 8002840:	076d      	lsls	r5, r5, #29
 8002842:	0b36      	lsrs	r6, r6, #12
 8002844:	18cb      	adds	r3, r1, r3
 8002846:	2100      	movs	r1, #0
 8002848:	0d0a      	lsrs	r2, r1, #20
 800284a:	0028      	movs	r0, r5
 800284c:	0512      	lsls	r2, r2, #20
 800284e:	4d1c      	ldr	r5, [pc, #112]	; (80028c0 <__aeabi_f2d+0x98>)
 8002850:	4332      	orrs	r2, r6
 8002852:	055b      	lsls	r3, r3, #21
 8002854:	402a      	ands	r2, r5
 8002856:	085b      	lsrs	r3, r3, #1
 8002858:	4313      	orrs	r3, r2
 800285a:	005b      	lsls	r3, r3, #1
 800285c:	07e4      	lsls	r4, r4, #31
 800285e:	085b      	lsrs	r3, r3, #1
 8002860:	4323      	orrs	r3, r4
 8002862:	0019      	movs	r1, r3
 8002864:	bd70      	pop	{r4, r5, r6, pc}
 8002866:	2900      	cmp	r1, #0
 8002868:	d114      	bne.n	8002894 <__aeabi_f2d+0x6c>
 800286a:	2d00      	cmp	r5, #0
 800286c:	d01e      	beq.n	80028ac <__aeabi_f2d+0x84>
 800286e:	0028      	movs	r0, r5
 8002870:	f000 f8b0 	bl	80029d4 <__clzsi2>
 8002874:	280a      	cmp	r0, #10
 8002876:	dc1c      	bgt.n	80028b2 <__aeabi_f2d+0x8a>
 8002878:	230b      	movs	r3, #11
 800287a:	002a      	movs	r2, r5
 800287c:	1a1b      	subs	r3, r3, r0
 800287e:	40da      	lsrs	r2, r3
 8002880:	0003      	movs	r3, r0
 8002882:	3315      	adds	r3, #21
 8002884:	409d      	lsls	r5, r3
 8002886:	4b0f      	ldr	r3, [pc, #60]	; (80028c4 <__aeabi_f2d+0x9c>)
 8002888:	0312      	lsls	r2, r2, #12
 800288a:	1a1b      	subs	r3, r3, r0
 800288c:	055b      	lsls	r3, r3, #21
 800288e:	0b16      	lsrs	r6, r2, #12
 8002890:	0d5b      	lsrs	r3, r3, #21
 8002892:	e7d8      	b.n	8002846 <__aeabi_f2d+0x1e>
 8002894:	2d00      	cmp	r5, #0
 8002896:	d006      	beq.n	80028a6 <__aeabi_f2d+0x7e>
 8002898:	0b32      	lsrs	r2, r6, #12
 800289a:	2680      	movs	r6, #128	; 0x80
 800289c:	0336      	lsls	r6, r6, #12
 800289e:	076d      	lsls	r5, r5, #29
 80028a0:	4316      	orrs	r6, r2
 80028a2:	4b09      	ldr	r3, [pc, #36]	; (80028c8 <__aeabi_f2d+0xa0>)
 80028a4:	e7cf      	b.n	8002846 <__aeabi_f2d+0x1e>
 80028a6:	4b08      	ldr	r3, [pc, #32]	; (80028c8 <__aeabi_f2d+0xa0>)
 80028a8:	2600      	movs	r6, #0
 80028aa:	e7cc      	b.n	8002846 <__aeabi_f2d+0x1e>
 80028ac:	2300      	movs	r3, #0
 80028ae:	2600      	movs	r6, #0
 80028b0:	e7c9      	b.n	8002846 <__aeabi_f2d+0x1e>
 80028b2:	0003      	movs	r3, r0
 80028b4:	002a      	movs	r2, r5
 80028b6:	3b0b      	subs	r3, #11
 80028b8:	409a      	lsls	r2, r3
 80028ba:	2500      	movs	r5, #0
 80028bc:	e7e3      	b.n	8002886 <__aeabi_f2d+0x5e>
 80028be:	46c0      	nop			; (mov r8, r8)
 80028c0:	800fffff 	.word	0x800fffff
 80028c4:	00000389 	.word	0x00000389
 80028c8:	000007ff 	.word	0x000007ff

080028cc <__aeabi_d2f>:
 80028cc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80028ce:	004c      	lsls	r4, r1, #1
 80028d0:	0d64      	lsrs	r4, r4, #21
 80028d2:	030b      	lsls	r3, r1, #12
 80028d4:	1c62      	adds	r2, r4, #1
 80028d6:	0a5b      	lsrs	r3, r3, #9
 80028d8:	0f46      	lsrs	r6, r0, #29
 80028da:	0552      	lsls	r2, r2, #21
 80028dc:	0fc9      	lsrs	r1, r1, #31
 80028de:	431e      	orrs	r6, r3
 80028e0:	00c5      	lsls	r5, r0, #3
 80028e2:	0d52      	lsrs	r2, r2, #21
 80028e4:	2a01      	cmp	r2, #1
 80028e6:	dd29      	ble.n	800293c <__aeabi_d2f+0x70>
 80028e8:	4b37      	ldr	r3, [pc, #220]	; (80029c8 <__aeabi_d2f+0xfc>)
 80028ea:	18e7      	adds	r7, r4, r3
 80028ec:	2ffe      	cmp	r7, #254	; 0xfe
 80028ee:	dc1c      	bgt.n	800292a <__aeabi_d2f+0x5e>
 80028f0:	2f00      	cmp	r7, #0
 80028f2:	dd3b      	ble.n	800296c <__aeabi_d2f+0xa0>
 80028f4:	0180      	lsls	r0, r0, #6
 80028f6:	1e43      	subs	r3, r0, #1
 80028f8:	4198      	sbcs	r0, r3
 80028fa:	2207      	movs	r2, #7
 80028fc:	00f3      	lsls	r3, r6, #3
 80028fe:	0f6d      	lsrs	r5, r5, #29
 8002900:	4303      	orrs	r3, r0
 8002902:	432b      	orrs	r3, r5
 8002904:	401a      	ands	r2, r3
 8002906:	2a00      	cmp	r2, #0
 8002908:	d004      	beq.n	8002914 <__aeabi_d2f+0x48>
 800290a:	220f      	movs	r2, #15
 800290c:	401a      	ands	r2, r3
 800290e:	2a04      	cmp	r2, #4
 8002910:	d000      	beq.n	8002914 <__aeabi_d2f+0x48>
 8002912:	3304      	adds	r3, #4
 8002914:	2280      	movs	r2, #128	; 0x80
 8002916:	04d2      	lsls	r2, r2, #19
 8002918:	401a      	ands	r2, r3
 800291a:	d024      	beq.n	8002966 <__aeabi_d2f+0x9a>
 800291c:	3701      	adds	r7, #1
 800291e:	b2fa      	uxtb	r2, r7
 8002920:	2fff      	cmp	r7, #255	; 0xff
 8002922:	d002      	beq.n	800292a <__aeabi_d2f+0x5e>
 8002924:	019b      	lsls	r3, r3, #6
 8002926:	0a58      	lsrs	r0, r3, #9
 8002928:	e001      	b.n	800292e <__aeabi_d2f+0x62>
 800292a:	22ff      	movs	r2, #255	; 0xff
 800292c:	2000      	movs	r0, #0
 800292e:	0240      	lsls	r0, r0, #9
 8002930:	05d2      	lsls	r2, r2, #23
 8002932:	0a40      	lsrs	r0, r0, #9
 8002934:	07c9      	lsls	r1, r1, #31
 8002936:	4310      	orrs	r0, r2
 8002938:	4308      	orrs	r0, r1
 800293a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800293c:	4335      	orrs	r5, r6
 800293e:	2c00      	cmp	r4, #0
 8002940:	d104      	bne.n	800294c <__aeabi_d2f+0x80>
 8002942:	2d00      	cmp	r5, #0
 8002944:	d10a      	bne.n	800295c <__aeabi_d2f+0x90>
 8002946:	2200      	movs	r2, #0
 8002948:	2000      	movs	r0, #0
 800294a:	e7f0      	b.n	800292e <__aeabi_d2f+0x62>
 800294c:	2d00      	cmp	r5, #0
 800294e:	d0ec      	beq.n	800292a <__aeabi_d2f+0x5e>
 8002950:	2080      	movs	r0, #128	; 0x80
 8002952:	03c0      	lsls	r0, r0, #15
 8002954:	4330      	orrs	r0, r6
 8002956:	22ff      	movs	r2, #255	; 0xff
 8002958:	e7e9      	b.n	800292e <__aeabi_d2f+0x62>
 800295a:	2400      	movs	r4, #0
 800295c:	2300      	movs	r3, #0
 800295e:	025b      	lsls	r3, r3, #9
 8002960:	0a58      	lsrs	r0, r3, #9
 8002962:	b2e2      	uxtb	r2, r4
 8002964:	e7e3      	b.n	800292e <__aeabi_d2f+0x62>
 8002966:	08db      	lsrs	r3, r3, #3
 8002968:	003c      	movs	r4, r7
 800296a:	e7f8      	b.n	800295e <__aeabi_d2f+0x92>
 800296c:	003b      	movs	r3, r7
 800296e:	3317      	adds	r3, #23
 8002970:	dbf3      	blt.n	800295a <__aeabi_d2f+0x8e>
 8002972:	2380      	movs	r3, #128	; 0x80
 8002974:	041b      	lsls	r3, r3, #16
 8002976:	4333      	orrs	r3, r6
 8002978:	261e      	movs	r6, #30
 800297a:	1bf6      	subs	r6, r6, r7
 800297c:	2e1f      	cmp	r6, #31
 800297e:	dd14      	ble.n	80029aa <__aeabi_d2f+0xde>
 8002980:	2202      	movs	r2, #2
 8002982:	4252      	negs	r2, r2
 8002984:	1bd7      	subs	r7, r2, r7
 8002986:	001a      	movs	r2, r3
 8002988:	40fa      	lsrs	r2, r7
 800298a:	0017      	movs	r7, r2
 800298c:	2e20      	cmp	r6, #32
 800298e:	d004      	beq.n	800299a <__aeabi_d2f+0xce>
 8002990:	4a0e      	ldr	r2, [pc, #56]	; (80029cc <__aeabi_d2f+0x100>)
 8002992:	4694      	mov	ip, r2
 8002994:	4464      	add	r4, ip
 8002996:	40a3      	lsls	r3, r4
 8002998:	431d      	orrs	r5, r3
 800299a:	002b      	movs	r3, r5
 800299c:	1e5d      	subs	r5, r3, #1
 800299e:	41ab      	sbcs	r3, r5
 80029a0:	2207      	movs	r2, #7
 80029a2:	433b      	orrs	r3, r7
 80029a4:	401a      	ands	r2, r3
 80029a6:	2700      	movs	r7, #0
 80029a8:	e7ad      	b.n	8002906 <__aeabi_d2f+0x3a>
 80029aa:	4a09      	ldr	r2, [pc, #36]	; (80029d0 <__aeabi_d2f+0x104>)
 80029ac:	0028      	movs	r0, r5
 80029ae:	18a2      	adds	r2, r4, r2
 80029b0:	4095      	lsls	r5, r2
 80029b2:	4093      	lsls	r3, r2
 80029b4:	1e6c      	subs	r4, r5, #1
 80029b6:	41a5      	sbcs	r5, r4
 80029b8:	40f0      	lsrs	r0, r6
 80029ba:	2207      	movs	r2, #7
 80029bc:	432b      	orrs	r3, r5
 80029be:	4303      	orrs	r3, r0
 80029c0:	401a      	ands	r2, r3
 80029c2:	2700      	movs	r7, #0
 80029c4:	e79f      	b.n	8002906 <__aeabi_d2f+0x3a>
 80029c6:	46c0      	nop			; (mov r8, r8)
 80029c8:	fffffc80 	.word	0xfffffc80
 80029cc:	fffffca2 	.word	0xfffffca2
 80029d0:	fffffc82 	.word	0xfffffc82

080029d4 <__clzsi2>:
 80029d4:	211c      	movs	r1, #28
 80029d6:	2301      	movs	r3, #1
 80029d8:	041b      	lsls	r3, r3, #16
 80029da:	4298      	cmp	r0, r3
 80029dc:	d301      	bcc.n	80029e2 <__clzsi2+0xe>
 80029de:	0c00      	lsrs	r0, r0, #16
 80029e0:	3910      	subs	r1, #16
 80029e2:	0a1b      	lsrs	r3, r3, #8
 80029e4:	4298      	cmp	r0, r3
 80029e6:	d301      	bcc.n	80029ec <__clzsi2+0x18>
 80029e8:	0a00      	lsrs	r0, r0, #8
 80029ea:	3908      	subs	r1, #8
 80029ec:	091b      	lsrs	r3, r3, #4
 80029ee:	4298      	cmp	r0, r3
 80029f0:	d301      	bcc.n	80029f6 <__clzsi2+0x22>
 80029f2:	0900      	lsrs	r0, r0, #4
 80029f4:	3904      	subs	r1, #4
 80029f6:	a202      	add	r2, pc, #8	; (adr r2, 8002a00 <__clzsi2+0x2c>)
 80029f8:	5c10      	ldrb	r0, [r2, r0]
 80029fa:	1840      	adds	r0, r0, r1
 80029fc:	4770      	bx	lr
 80029fe:	46c0      	nop			; (mov r8, r8)
 8002a00:	02020304 	.word	0x02020304
 8002a04:	01010101 	.word	0x01010101
	...

08002a10 <__aeabi_cdrcmple>:
 8002a10:	4684      	mov	ip, r0
 8002a12:	1c10      	adds	r0, r2, #0
 8002a14:	4662      	mov	r2, ip
 8002a16:	468c      	mov	ip, r1
 8002a18:	1c19      	adds	r1, r3, #0
 8002a1a:	4663      	mov	r3, ip
 8002a1c:	e000      	b.n	8002a20 <__aeabi_cdcmpeq>
 8002a1e:	46c0      	nop			; (mov r8, r8)

08002a20 <__aeabi_cdcmpeq>:
 8002a20:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8002a22:	f000 f8d3 	bl	8002bcc <__ledf2>
 8002a26:	2800      	cmp	r0, #0
 8002a28:	d401      	bmi.n	8002a2e <__aeabi_cdcmpeq+0xe>
 8002a2a:	2100      	movs	r1, #0
 8002a2c:	42c8      	cmn	r0, r1
 8002a2e:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

08002a30 <__aeabi_dcmpeq>:
 8002a30:	b510      	push	{r4, lr}
 8002a32:	f000 f82b 	bl	8002a8c <__eqdf2>
 8002a36:	4240      	negs	r0, r0
 8002a38:	3001      	adds	r0, #1
 8002a3a:	bd10      	pop	{r4, pc}

08002a3c <__aeabi_dcmplt>:
 8002a3c:	b510      	push	{r4, lr}
 8002a3e:	f000 f8c5 	bl	8002bcc <__ledf2>
 8002a42:	2800      	cmp	r0, #0
 8002a44:	db01      	blt.n	8002a4a <__aeabi_dcmplt+0xe>
 8002a46:	2000      	movs	r0, #0
 8002a48:	bd10      	pop	{r4, pc}
 8002a4a:	2001      	movs	r0, #1
 8002a4c:	bd10      	pop	{r4, pc}
 8002a4e:	46c0      	nop			; (mov r8, r8)

08002a50 <__aeabi_dcmple>:
 8002a50:	b510      	push	{r4, lr}
 8002a52:	f000 f8bb 	bl	8002bcc <__ledf2>
 8002a56:	2800      	cmp	r0, #0
 8002a58:	dd01      	ble.n	8002a5e <__aeabi_dcmple+0xe>
 8002a5a:	2000      	movs	r0, #0
 8002a5c:	bd10      	pop	{r4, pc}
 8002a5e:	2001      	movs	r0, #1
 8002a60:	bd10      	pop	{r4, pc}
 8002a62:	46c0      	nop			; (mov r8, r8)

08002a64 <__aeabi_dcmpgt>:
 8002a64:	b510      	push	{r4, lr}
 8002a66:	f000 f84d 	bl	8002b04 <__gedf2>
 8002a6a:	2800      	cmp	r0, #0
 8002a6c:	dc01      	bgt.n	8002a72 <__aeabi_dcmpgt+0xe>
 8002a6e:	2000      	movs	r0, #0
 8002a70:	bd10      	pop	{r4, pc}
 8002a72:	2001      	movs	r0, #1
 8002a74:	bd10      	pop	{r4, pc}
 8002a76:	46c0      	nop			; (mov r8, r8)

08002a78 <__aeabi_dcmpge>:
 8002a78:	b510      	push	{r4, lr}
 8002a7a:	f000 f843 	bl	8002b04 <__gedf2>
 8002a7e:	2800      	cmp	r0, #0
 8002a80:	da01      	bge.n	8002a86 <__aeabi_dcmpge+0xe>
 8002a82:	2000      	movs	r0, #0
 8002a84:	bd10      	pop	{r4, pc}
 8002a86:	2001      	movs	r0, #1
 8002a88:	bd10      	pop	{r4, pc}
 8002a8a:	46c0      	nop			; (mov r8, r8)

08002a8c <__eqdf2>:
 8002a8c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002a8e:	464f      	mov	r7, r9
 8002a90:	4646      	mov	r6, r8
 8002a92:	46d6      	mov	lr, sl
 8002a94:	4684      	mov	ip, r0
 8002a96:	b5c0      	push	{r6, r7, lr}
 8002a98:	4680      	mov	r8, r0
 8002a9a:	4e19      	ldr	r6, [pc, #100]	; (8002b00 <__eqdf2+0x74>)
 8002a9c:	0318      	lsls	r0, r3, #12
 8002a9e:	030f      	lsls	r7, r1, #12
 8002aa0:	004d      	lsls	r5, r1, #1
 8002aa2:	0b00      	lsrs	r0, r0, #12
 8002aa4:	005c      	lsls	r4, r3, #1
 8002aa6:	4682      	mov	sl, r0
 8002aa8:	0b3f      	lsrs	r7, r7, #12
 8002aaa:	0d6d      	lsrs	r5, r5, #21
 8002aac:	0fc9      	lsrs	r1, r1, #31
 8002aae:	4691      	mov	r9, r2
 8002ab0:	0d64      	lsrs	r4, r4, #21
 8002ab2:	0fdb      	lsrs	r3, r3, #31
 8002ab4:	2001      	movs	r0, #1
 8002ab6:	42b5      	cmp	r5, r6
 8002ab8:	d00a      	beq.n	8002ad0 <__eqdf2+0x44>
 8002aba:	42b4      	cmp	r4, r6
 8002abc:	d003      	beq.n	8002ac6 <__eqdf2+0x3a>
 8002abe:	42a5      	cmp	r5, r4
 8002ac0:	d101      	bne.n	8002ac6 <__eqdf2+0x3a>
 8002ac2:	4557      	cmp	r7, sl
 8002ac4:	d00c      	beq.n	8002ae0 <__eqdf2+0x54>
 8002ac6:	bc1c      	pop	{r2, r3, r4}
 8002ac8:	4690      	mov	r8, r2
 8002aca:	4699      	mov	r9, r3
 8002acc:	46a2      	mov	sl, r4
 8002ace:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002ad0:	4666      	mov	r6, ip
 8002ad2:	433e      	orrs	r6, r7
 8002ad4:	d1f7      	bne.n	8002ac6 <__eqdf2+0x3a>
 8002ad6:	42ac      	cmp	r4, r5
 8002ad8:	d1f5      	bne.n	8002ac6 <__eqdf2+0x3a>
 8002ada:	4654      	mov	r4, sl
 8002adc:	4314      	orrs	r4, r2
 8002ade:	d1f2      	bne.n	8002ac6 <__eqdf2+0x3a>
 8002ae0:	2001      	movs	r0, #1
 8002ae2:	45c8      	cmp	r8, r9
 8002ae4:	d1ef      	bne.n	8002ac6 <__eqdf2+0x3a>
 8002ae6:	4299      	cmp	r1, r3
 8002ae8:	d007      	beq.n	8002afa <__eqdf2+0x6e>
 8002aea:	2d00      	cmp	r5, #0
 8002aec:	d1eb      	bne.n	8002ac6 <__eqdf2+0x3a>
 8002aee:	4663      	mov	r3, ip
 8002af0:	431f      	orrs	r7, r3
 8002af2:	0038      	movs	r0, r7
 8002af4:	1e47      	subs	r7, r0, #1
 8002af6:	41b8      	sbcs	r0, r7
 8002af8:	e7e5      	b.n	8002ac6 <__eqdf2+0x3a>
 8002afa:	2000      	movs	r0, #0
 8002afc:	e7e3      	b.n	8002ac6 <__eqdf2+0x3a>
 8002afe:	46c0      	nop			; (mov r8, r8)
 8002b00:	000007ff 	.word	0x000007ff

08002b04 <__gedf2>:
 8002b04:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002b06:	464f      	mov	r7, r9
 8002b08:	4646      	mov	r6, r8
 8002b0a:	46d6      	mov	lr, sl
 8002b0c:	004d      	lsls	r5, r1, #1
 8002b0e:	b5c0      	push	{r6, r7, lr}
 8002b10:	030e      	lsls	r6, r1, #12
 8002b12:	0fc9      	lsrs	r1, r1, #31
 8002b14:	468a      	mov	sl, r1
 8002b16:	492c      	ldr	r1, [pc, #176]	; (8002bc8 <__gedf2+0xc4>)
 8002b18:	031f      	lsls	r7, r3, #12
 8002b1a:	005c      	lsls	r4, r3, #1
 8002b1c:	4680      	mov	r8, r0
 8002b1e:	0b36      	lsrs	r6, r6, #12
 8002b20:	0d6d      	lsrs	r5, r5, #21
 8002b22:	4691      	mov	r9, r2
 8002b24:	0b3f      	lsrs	r7, r7, #12
 8002b26:	0d64      	lsrs	r4, r4, #21
 8002b28:	0fdb      	lsrs	r3, r3, #31
 8002b2a:	428d      	cmp	r5, r1
 8002b2c:	d01e      	beq.n	8002b6c <__gedf2+0x68>
 8002b2e:	428c      	cmp	r4, r1
 8002b30:	d016      	beq.n	8002b60 <__gedf2+0x5c>
 8002b32:	2d00      	cmp	r5, #0
 8002b34:	d11e      	bne.n	8002b74 <__gedf2+0x70>
 8002b36:	4330      	orrs	r0, r6
 8002b38:	4684      	mov	ip, r0
 8002b3a:	2c00      	cmp	r4, #0
 8002b3c:	d101      	bne.n	8002b42 <__gedf2+0x3e>
 8002b3e:	433a      	orrs	r2, r7
 8002b40:	d023      	beq.n	8002b8a <__gedf2+0x86>
 8002b42:	4662      	mov	r2, ip
 8002b44:	2a00      	cmp	r2, #0
 8002b46:	d01a      	beq.n	8002b7e <__gedf2+0x7a>
 8002b48:	459a      	cmp	sl, r3
 8002b4a:	d029      	beq.n	8002ba0 <__gedf2+0x9c>
 8002b4c:	4651      	mov	r1, sl
 8002b4e:	2002      	movs	r0, #2
 8002b50:	3901      	subs	r1, #1
 8002b52:	4008      	ands	r0, r1
 8002b54:	3801      	subs	r0, #1
 8002b56:	bc1c      	pop	{r2, r3, r4}
 8002b58:	4690      	mov	r8, r2
 8002b5a:	4699      	mov	r9, r3
 8002b5c:	46a2      	mov	sl, r4
 8002b5e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002b60:	0039      	movs	r1, r7
 8002b62:	4311      	orrs	r1, r2
 8002b64:	d0e5      	beq.n	8002b32 <__gedf2+0x2e>
 8002b66:	2002      	movs	r0, #2
 8002b68:	4240      	negs	r0, r0
 8002b6a:	e7f4      	b.n	8002b56 <__gedf2+0x52>
 8002b6c:	4330      	orrs	r0, r6
 8002b6e:	d1fa      	bne.n	8002b66 <__gedf2+0x62>
 8002b70:	42ac      	cmp	r4, r5
 8002b72:	d00f      	beq.n	8002b94 <__gedf2+0x90>
 8002b74:	2c00      	cmp	r4, #0
 8002b76:	d10f      	bne.n	8002b98 <__gedf2+0x94>
 8002b78:	433a      	orrs	r2, r7
 8002b7a:	d0e7      	beq.n	8002b4c <__gedf2+0x48>
 8002b7c:	e00c      	b.n	8002b98 <__gedf2+0x94>
 8002b7e:	2201      	movs	r2, #1
 8002b80:	3b01      	subs	r3, #1
 8002b82:	4393      	bics	r3, r2
 8002b84:	0018      	movs	r0, r3
 8002b86:	3001      	adds	r0, #1
 8002b88:	e7e5      	b.n	8002b56 <__gedf2+0x52>
 8002b8a:	4663      	mov	r3, ip
 8002b8c:	2000      	movs	r0, #0
 8002b8e:	2b00      	cmp	r3, #0
 8002b90:	d0e1      	beq.n	8002b56 <__gedf2+0x52>
 8002b92:	e7db      	b.n	8002b4c <__gedf2+0x48>
 8002b94:	433a      	orrs	r2, r7
 8002b96:	d1e6      	bne.n	8002b66 <__gedf2+0x62>
 8002b98:	459a      	cmp	sl, r3
 8002b9a:	d1d7      	bne.n	8002b4c <__gedf2+0x48>
 8002b9c:	42a5      	cmp	r5, r4
 8002b9e:	dcd5      	bgt.n	8002b4c <__gedf2+0x48>
 8002ba0:	42a5      	cmp	r5, r4
 8002ba2:	db05      	blt.n	8002bb0 <__gedf2+0xac>
 8002ba4:	42be      	cmp	r6, r7
 8002ba6:	d8d1      	bhi.n	8002b4c <__gedf2+0x48>
 8002ba8:	d008      	beq.n	8002bbc <__gedf2+0xb8>
 8002baa:	2000      	movs	r0, #0
 8002bac:	42be      	cmp	r6, r7
 8002bae:	d2d2      	bcs.n	8002b56 <__gedf2+0x52>
 8002bb0:	4650      	mov	r0, sl
 8002bb2:	2301      	movs	r3, #1
 8002bb4:	3801      	subs	r0, #1
 8002bb6:	4398      	bics	r0, r3
 8002bb8:	3001      	adds	r0, #1
 8002bba:	e7cc      	b.n	8002b56 <__gedf2+0x52>
 8002bbc:	45c8      	cmp	r8, r9
 8002bbe:	d8c5      	bhi.n	8002b4c <__gedf2+0x48>
 8002bc0:	2000      	movs	r0, #0
 8002bc2:	45c8      	cmp	r8, r9
 8002bc4:	d3f4      	bcc.n	8002bb0 <__gedf2+0xac>
 8002bc6:	e7c6      	b.n	8002b56 <__gedf2+0x52>
 8002bc8:	000007ff 	.word	0x000007ff

08002bcc <__ledf2>:
 8002bcc:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002bce:	464f      	mov	r7, r9
 8002bd0:	4646      	mov	r6, r8
 8002bd2:	46d6      	mov	lr, sl
 8002bd4:	004d      	lsls	r5, r1, #1
 8002bd6:	b5c0      	push	{r6, r7, lr}
 8002bd8:	030e      	lsls	r6, r1, #12
 8002bda:	0fc9      	lsrs	r1, r1, #31
 8002bdc:	468a      	mov	sl, r1
 8002bde:	492e      	ldr	r1, [pc, #184]	; (8002c98 <__ledf2+0xcc>)
 8002be0:	031f      	lsls	r7, r3, #12
 8002be2:	005c      	lsls	r4, r3, #1
 8002be4:	4680      	mov	r8, r0
 8002be6:	0b36      	lsrs	r6, r6, #12
 8002be8:	0d6d      	lsrs	r5, r5, #21
 8002bea:	4691      	mov	r9, r2
 8002bec:	0b3f      	lsrs	r7, r7, #12
 8002bee:	0d64      	lsrs	r4, r4, #21
 8002bf0:	0fdb      	lsrs	r3, r3, #31
 8002bf2:	428d      	cmp	r5, r1
 8002bf4:	d018      	beq.n	8002c28 <__ledf2+0x5c>
 8002bf6:	428c      	cmp	r4, r1
 8002bf8:	d011      	beq.n	8002c1e <__ledf2+0x52>
 8002bfa:	2d00      	cmp	r5, #0
 8002bfc:	d118      	bne.n	8002c30 <__ledf2+0x64>
 8002bfe:	4330      	orrs	r0, r6
 8002c00:	4684      	mov	ip, r0
 8002c02:	2c00      	cmp	r4, #0
 8002c04:	d11e      	bne.n	8002c44 <__ledf2+0x78>
 8002c06:	433a      	orrs	r2, r7
 8002c08:	d11c      	bne.n	8002c44 <__ledf2+0x78>
 8002c0a:	4663      	mov	r3, ip
 8002c0c:	2000      	movs	r0, #0
 8002c0e:	2b00      	cmp	r3, #0
 8002c10:	d030      	beq.n	8002c74 <__ledf2+0xa8>
 8002c12:	4651      	mov	r1, sl
 8002c14:	2002      	movs	r0, #2
 8002c16:	3901      	subs	r1, #1
 8002c18:	4008      	ands	r0, r1
 8002c1a:	3801      	subs	r0, #1
 8002c1c:	e02a      	b.n	8002c74 <__ledf2+0xa8>
 8002c1e:	0039      	movs	r1, r7
 8002c20:	4311      	orrs	r1, r2
 8002c22:	d0ea      	beq.n	8002bfa <__ledf2+0x2e>
 8002c24:	2002      	movs	r0, #2
 8002c26:	e025      	b.n	8002c74 <__ledf2+0xa8>
 8002c28:	4330      	orrs	r0, r6
 8002c2a:	d1fb      	bne.n	8002c24 <__ledf2+0x58>
 8002c2c:	42ac      	cmp	r4, r5
 8002c2e:	d026      	beq.n	8002c7e <__ledf2+0xb2>
 8002c30:	2c00      	cmp	r4, #0
 8002c32:	d126      	bne.n	8002c82 <__ledf2+0xb6>
 8002c34:	433a      	orrs	r2, r7
 8002c36:	d124      	bne.n	8002c82 <__ledf2+0xb6>
 8002c38:	4651      	mov	r1, sl
 8002c3a:	2002      	movs	r0, #2
 8002c3c:	3901      	subs	r1, #1
 8002c3e:	4008      	ands	r0, r1
 8002c40:	3801      	subs	r0, #1
 8002c42:	e017      	b.n	8002c74 <__ledf2+0xa8>
 8002c44:	4662      	mov	r2, ip
 8002c46:	2a00      	cmp	r2, #0
 8002c48:	d00f      	beq.n	8002c6a <__ledf2+0x9e>
 8002c4a:	459a      	cmp	sl, r3
 8002c4c:	d1e1      	bne.n	8002c12 <__ledf2+0x46>
 8002c4e:	42a5      	cmp	r5, r4
 8002c50:	db05      	blt.n	8002c5e <__ledf2+0x92>
 8002c52:	42be      	cmp	r6, r7
 8002c54:	d8dd      	bhi.n	8002c12 <__ledf2+0x46>
 8002c56:	d019      	beq.n	8002c8c <__ledf2+0xc0>
 8002c58:	2000      	movs	r0, #0
 8002c5a:	42be      	cmp	r6, r7
 8002c5c:	d20a      	bcs.n	8002c74 <__ledf2+0xa8>
 8002c5e:	4650      	mov	r0, sl
 8002c60:	2301      	movs	r3, #1
 8002c62:	3801      	subs	r0, #1
 8002c64:	4398      	bics	r0, r3
 8002c66:	3001      	adds	r0, #1
 8002c68:	e004      	b.n	8002c74 <__ledf2+0xa8>
 8002c6a:	2201      	movs	r2, #1
 8002c6c:	3b01      	subs	r3, #1
 8002c6e:	4393      	bics	r3, r2
 8002c70:	0018      	movs	r0, r3
 8002c72:	3001      	adds	r0, #1
 8002c74:	bc1c      	pop	{r2, r3, r4}
 8002c76:	4690      	mov	r8, r2
 8002c78:	4699      	mov	r9, r3
 8002c7a:	46a2      	mov	sl, r4
 8002c7c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002c7e:	433a      	orrs	r2, r7
 8002c80:	d1d0      	bne.n	8002c24 <__ledf2+0x58>
 8002c82:	459a      	cmp	sl, r3
 8002c84:	d1c5      	bne.n	8002c12 <__ledf2+0x46>
 8002c86:	42a5      	cmp	r5, r4
 8002c88:	dcc3      	bgt.n	8002c12 <__ledf2+0x46>
 8002c8a:	e7e0      	b.n	8002c4e <__ledf2+0x82>
 8002c8c:	45c8      	cmp	r8, r9
 8002c8e:	d8c0      	bhi.n	8002c12 <__ledf2+0x46>
 8002c90:	2000      	movs	r0, #0
 8002c92:	45c8      	cmp	r8, r9
 8002c94:	d3e3      	bcc.n	8002c5e <__ledf2+0x92>
 8002c96:	e7ed      	b.n	8002c74 <__ledf2+0xa8>
 8002c98:	000007ff 	.word	0x000007ff

08002c9c <__aeabi_dcmpun>:
 8002c9c:	b570      	push	{r4, r5, r6, lr}
 8002c9e:	4e0c      	ldr	r6, [pc, #48]	; (8002cd0 <__aeabi_dcmpun+0x34>)
 8002ca0:	030d      	lsls	r5, r1, #12
 8002ca2:	031c      	lsls	r4, r3, #12
 8002ca4:	0049      	lsls	r1, r1, #1
 8002ca6:	005b      	lsls	r3, r3, #1
 8002ca8:	0b2d      	lsrs	r5, r5, #12
 8002caa:	0d49      	lsrs	r1, r1, #21
 8002cac:	0b24      	lsrs	r4, r4, #12
 8002cae:	0d5b      	lsrs	r3, r3, #21
 8002cb0:	42b1      	cmp	r1, r6
 8002cb2:	d008      	beq.n	8002cc6 <__aeabi_dcmpun+0x2a>
 8002cb4:	4906      	ldr	r1, [pc, #24]	; (8002cd0 <__aeabi_dcmpun+0x34>)
 8002cb6:	2000      	movs	r0, #0
 8002cb8:	428b      	cmp	r3, r1
 8002cba:	d103      	bne.n	8002cc4 <__aeabi_dcmpun+0x28>
 8002cbc:	4314      	orrs	r4, r2
 8002cbe:	0020      	movs	r0, r4
 8002cc0:	1e44      	subs	r4, r0, #1
 8002cc2:	41a0      	sbcs	r0, r4
 8002cc4:	bd70      	pop	{r4, r5, r6, pc}
 8002cc6:	4305      	orrs	r5, r0
 8002cc8:	2001      	movs	r0, #1
 8002cca:	2d00      	cmp	r5, #0
 8002ccc:	d1fa      	bne.n	8002cc4 <__aeabi_dcmpun+0x28>
 8002cce:	e7f1      	b.n	8002cb4 <__aeabi_dcmpun+0x18>
 8002cd0:	000007ff 	.word	0x000007ff

08002cd4 <__aeabi_i2d>:
 8002cd4:	b570      	push	{r4, r5, r6, lr}
 8002cd6:	2800      	cmp	r0, #0
 8002cd8:	d02d      	beq.n	8002d36 <__aeabi_i2d+0x62>
 8002cda:	17c3      	asrs	r3, r0, #31
 8002cdc:	18c5      	adds	r5, r0, r3
 8002cde:	405d      	eors	r5, r3
 8002ce0:	0fc4      	lsrs	r4, r0, #31
 8002ce2:	0028      	movs	r0, r5
 8002ce4:	f7ff fe76 	bl	80029d4 <__clzsi2>
 8002ce8:	4b15      	ldr	r3, [pc, #84]	; (8002d40 <__aeabi_i2d+0x6c>)
 8002cea:	1a1b      	subs	r3, r3, r0
 8002cec:	055b      	lsls	r3, r3, #21
 8002cee:	0d5b      	lsrs	r3, r3, #21
 8002cf0:	280a      	cmp	r0, #10
 8002cf2:	dd15      	ble.n	8002d20 <__aeabi_i2d+0x4c>
 8002cf4:	380b      	subs	r0, #11
 8002cf6:	4085      	lsls	r5, r0
 8002cf8:	2200      	movs	r2, #0
 8002cfa:	032d      	lsls	r5, r5, #12
 8002cfc:	0b2d      	lsrs	r5, r5, #12
 8002cfe:	2100      	movs	r1, #0
 8002d00:	0010      	movs	r0, r2
 8002d02:	032d      	lsls	r5, r5, #12
 8002d04:	0d0a      	lsrs	r2, r1, #20
 8002d06:	0b2d      	lsrs	r5, r5, #12
 8002d08:	0512      	lsls	r2, r2, #20
 8002d0a:	432a      	orrs	r2, r5
 8002d0c:	4d0d      	ldr	r5, [pc, #52]	; (8002d44 <__aeabi_i2d+0x70>)
 8002d0e:	051b      	lsls	r3, r3, #20
 8002d10:	402a      	ands	r2, r5
 8002d12:	4313      	orrs	r3, r2
 8002d14:	005b      	lsls	r3, r3, #1
 8002d16:	07e4      	lsls	r4, r4, #31
 8002d18:	085b      	lsrs	r3, r3, #1
 8002d1a:	4323      	orrs	r3, r4
 8002d1c:	0019      	movs	r1, r3
 8002d1e:	bd70      	pop	{r4, r5, r6, pc}
 8002d20:	0002      	movs	r2, r0
 8002d22:	0029      	movs	r1, r5
 8002d24:	3215      	adds	r2, #21
 8002d26:	4091      	lsls	r1, r2
 8002d28:	000a      	movs	r2, r1
 8002d2a:	210b      	movs	r1, #11
 8002d2c:	1a08      	subs	r0, r1, r0
 8002d2e:	40c5      	lsrs	r5, r0
 8002d30:	032d      	lsls	r5, r5, #12
 8002d32:	0b2d      	lsrs	r5, r5, #12
 8002d34:	e7e3      	b.n	8002cfe <__aeabi_i2d+0x2a>
 8002d36:	2400      	movs	r4, #0
 8002d38:	2300      	movs	r3, #0
 8002d3a:	2500      	movs	r5, #0
 8002d3c:	2200      	movs	r2, #0
 8002d3e:	e7de      	b.n	8002cfe <__aeabi_i2d+0x2a>
 8002d40:	0000041e 	.word	0x0000041e
 8002d44:	800fffff 	.word	0x800fffff

08002d48 <Reset_Handler>:
 8002d48:	480d      	ldr	r0, [pc, #52]	; (8002d80 <LoopForever+0x2>)
 8002d4a:	4685      	mov	sp, r0
 8002d4c:	480d      	ldr	r0, [pc, #52]	; (8002d84 <LoopForever+0x6>)
 8002d4e:	490e      	ldr	r1, [pc, #56]	; (8002d88 <LoopForever+0xa>)
 8002d50:	4a0e      	ldr	r2, [pc, #56]	; (8002d8c <LoopForever+0xe>)
 8002d52:	2300      	movs	r3, #0
 8002d54:	e002      	b.n	8002d5c <LoopCopyDataInit>

08002d56 <CopyDataInit>:
 8002d56:	58d4      	ldr	r4, [r2, r3]
 8002d58:	50c4      	str	r4, [r0, r3]
 8002d5a:	3304      	adds	r3, #4

08002d5c <LoopCopyDataInit>:
 8002d5c:	18c4      	adds	r4, r0, r3
 8002d5e:	428c      	cmp	r4, r1
 8002d60:	d3f9      	bcc.n	8002d56 <CopyDataInit>
 8002d62:	4a0b      	ldr	r2, [pc, #44]	; (8002d90 <LoopForever+0x12>)
 8002d64:	4c0b      	ldr	r4, [pc, #44]	; (8002d94 <LoopForever+0x16>)
 8002d66:	2300      	movs	r3, #0
 8002d68:	e001      	b.n	8002d6e <LoopFillZerobss>

08002d6a <FillZerobss>:
 8002d6a:	6013      	str	r3, [r2, #0]
 8002d6c:	3204      	adds	r2, #4

08002d6e <LoopFillZerobss>:
 8002d6e:	42a2      	cmp	r2, r4
 8002d70:	d3fb      	bcc.n	8002d6a <FillZerobss>
 8002d72:	f005 fceb 	bl	800874c <SystemInit>
 8002d76:	f005 fd3f 	bl	80087f8 <__libc_init_array>
 8002d7a:	f001 f957 	bl	800402c <main>

08002d7e <LoopForever>:
 8002d7e:	e7fe      	b.n	8002d7e <LoopForever>
 8002d80:	20002000 	.word	0x20002000
 8002d84:	20000000 	.word	0x20000000
 8002d88:	20000074 	.word	0x20000074
 8002d8c:	08009d40 	.word	0x08009d40
 8002d90:	20000074 	.word	0x20000074
 8002d94:	200001fc 	.word	0x200001fc

08002d98 <ADC1_COMP_IRQHandler>:
 8002d98:	e7fe      	b.n	8002d98 <ADC1_COMP_IRQHandler>

08002d9a <LL_USART_IsActiveFlag_TC>:
 8002d9a:	b580      	push	{r7, lr}
 8002d9c:	b082      	sub	sp, #8
 8002d9e:	af00      	add	r7, sp, #0
 8002da0:	6078      	str	r0, [r7, #4]
 8002da2:	687b      	ldr	r3, [r7, #4]
 8002da4:	69db      	ldr	r3, [r3, #28]
 8002da6:	2240      	movs	r2, #64	; 0x40
 8002da8:	4013      	ands	r3, r2
 8002daa:	3b40      	subs	r3, #64	; 0x40
 8002dac:	425a      	negs	r2, r3
 8002dae:	4153      	adcs	r3, r2
 8002db0:	b2db      	uxtb	r3, r3
 8002db2:	0018      	movs	r0, r3
 8002db4:	46bd      	mov	sp, r7
 8002db6:	b002      	add	sp, #8
 8002db8:	bd80      	pop	{r7, pc}

08002dba <LL_USART_IsActiveFlag_TXE>:
 8002dba:	b580      	push	{r7, lr}
 8002dbc:	b082      	sub	sp, #8
 8002dbe:	af00      	add	r7, sp, #0
 8002dc0:	6078      	str	r0, [r7, #4]
 8002dc2:	687b      	ldr	r3, [r7, #4]
 8002dc4:	69db      	ldr	r3, [r3, #28]
 8002dc6:	2280      	movs	r2, #128	; 0x80
 8002dc8:	4013      	ands	r3, r2
 8002dca:	3b80      	subs	r3, #128	; 0x80
 8002dcc:	425a      	negs	r2, r3
 8002dce:	4153      	adcs	r3, r2
 8002dd0:	b2db      	uxtb	r3, r3
 8002dd2:	0018      	movs	r0, r3
 8002dd4:	46bd      	mov	sp, r7
 8002dd6:	b002      	add	sp, #8
 8002dd8:	bd80      	pop	{r7, pc}

08002dda <LL_USART_ClearFlag_TC>:
 8002dda:	b580      	push	{r7, lr}
 8002ddc:	b082      	sub	sp, #8
 8002dde:	af00      	add	r7, sp, #0
 8002de0:	6078      	str	r0, [r7, #4]
 8002de2:	687b      	ldr	r3, [r7, #4]
 8002de4:	2240      	movs	r2, #64	; 0x40
 8002de6:	621a      	str	r2, [r3, #32]
 8002de8:	46c0      	nop			; (mov r8, r8)
 8002dea:	46bd      	mov	sp, r7
 8002dec:	b002      	add	sp, #8
 8002dee:	bd80      	pop	{r7, pc}

08002df0 <LL_USART_TransmitData8>:
 8002df0:	b580      	push	{r7, lr}
 8002df2:	b082      	sub	sp, #8
 8002df4:	af00      	add	r7, sp, #0
 8002df6:	6078      	str	r0, [r7, #4]
 8002df8:	000a      	movs	r2, r1
 8002dfa:	1cfb      	adds	r3, r7, #3
 8002dfc:	701a      	strb	r2, [r3, #0]
 8002dfe:	1cfb      	adds	r3, r7, #3
 8002e00:	781b      	ldrb	r3, [r3, #0]
 8002e02:	b29a      	uxth	r2, r3
 8002e04:	687b      	ldr	r3, [r7, #4]
 8002e06:	851a      	strh	r2, [r3, #40]	; 0x28
 8002e08:	46c0      	nop			; (mov r8, r8)
 8002e0a:	46bd      	mov	sp, r7
 8002e0c:	b002      	add	sp, #8
 8002e0e:	bd80      	pop	{r7, pc}

08002e10 <crc32>:
 8002e10:	b580      	push	{r7, lr}
 8002e12:	4f40      	ldr	r7, [pc, #256]	; (8002f14 <crc32+0x104>)
 8002e14:	44bd      	add	sp, r7
 8002e16:	af00      	add	r7, sp, #0
 8002e18:	6078      	str	r0, [r7, #4]
 8002e1a:	6039      	str	r1, [r7, #0]
 8002e1c:	2300      	movs	r3, #0
 8002e1e:	4a3e      	ldr	r2, [pc, #248]	; (8002f18 <crc32+0x108>)
 8002e20:	18ba      	adds	r2, r7, r2
 8002e22:	6013      	str	r3, [r2, #0]
 8002e24:	4b3d      	ldr	r3, [pc, #244]	; (8002f1c <crc32+0x10c>)
 8002e26:	18fb      	adds	r3, r7, r3
 8002e28:	2200      	movs	r2, #0
 8002e2a:	801a      	strh	r2, [r3, #0]
 8002e2c:	e03f      	b.n	8002eae <crc32+0x9e>
 8002e2e:	4b3b      	ldr	r3, [pc, #236]	; (8002f1c <crc32+0x10c>)
 8002e30:	18fb      	adds	r3, r7, r3
 8002e32:	881b      	ldrh	r3, [r3, #0]
 8002e34:	4a38      	ldr	r2, [pc, #224]	; (8002f18 <crc32+0x108>)
 8002e36:	18ba      	adds	r2, r7, r2
 8002e38:	6013      	str	r3, [r2, #0]
 8002e3a:	2381      	movs	r3, #129	; 0x81
 8002e3c:	00db      	lsls	r3, r3, #3
 8002e3e:	18fb      	adds	r3, r7, r3
 8002e40:	2200      	movs	r2, #0
 8002e42:	801a      	strh	r2, [r3, #0]
 8002e44:	e01a      	b.n	8002e7c <crc32+0x6c>
 8002e46:	4b34      	ldr	r3, [pc, #208]	; (8002f18 <crc32+0x108>)
 8002e48:	18fb      	adds	r3, r7, r3
 8002e4a:	681b      	ldr	r3, [r3, #0]
 8002e4c:	2201      	movs	r2, #1
 8002e4e:	4013      	ands	r3, r2
 8002e50:	d006      	beq.n	8002e60 <crc32+0x50>
 8002e52:	4b31      	ldr	r3, [pc, #196]	; (8002f18 <crc32+0x108>)
 8002e54:	18fb      	adds	r3, r7, r3
 8002e56:	681b      	ldr	r3, [r3, #0]
 8002e58:	085b      	lsrs	r3, r3, #1
 8002e5a:	4a31      	ldr	r2, [pc, #196]	; (8002f20 <crc32+0x110>)
 8002e5c:	4053      	eors	r3, r2
 8002e5e:	e003      	b.n	8002e68 <crc32+0x58>
 8002e60:	4b2d      	ldr	r3, [pc, #180]	; (8002f18 <crc32+0x108>)
 8002e62:	18fb      	adds	r3, r7, r3
 8002e64:	681b      	ldr	r3, [r3, #0]
 8002e66:	085b      	lsrs	r3, r3, #1
 8002e68:	4a2b      	ldr	r2, [pc, #172]	; (8002f18 <crc32+0x108>)
 8002e6a:	18ba      	adds	r2, r7, r2
 8002e6c:	6013      	str	r3, [r2, #0]
 8002e6e:	2181      	movs	r1, #129	; 0x81
 8002e70:	00c9      	lsls	r1, r1, #3
 8002e72:	187b      	adds	r3, r7, r1
 8002e74:	881a      	ldrh	r2, [r3, #0]
 8002e76:	187b      	adds	r3, r7, r1
 8002e78:	3201      	adds	r2, #1
 8002e7a:	801a      	strh	r2, [r3, #0]
 8002e7c:	2381      	movs	r3, #129	; 0x81
 8002e7e:	00db      	lsls	r3, r3, #3
 8002e80:	18fb      	adds	r3, r7, r3
 8002e82:	881b      	ldrh	r3, [r3, #0]
 8002e84:	2b07      	cmp	r3, #7
 8002e86:	d9de      	bls.n	8002e46 <crc32+0x36>
 8002e88:	4824      	ldr	r0, [pc, #144]	; (8002f1c <crc32+0x10c>)
 8002e8a:	183b      	adds	r3, r7, r0
 8002e8c:	881a      	ldrh	r2, [r3, #0]
 8002e8e:	4b25      	ldr	r3, [pc, #148]	; (8002f24 <crc32+0x114>)
 8002e90:	2182      	movs	r1, #130	; 0x82
 8002e92:	00c9      	lsls	r1, r1, #3
 8002e94:	468c      	mov	ip, r1
 8002e96:	44bc      	add	ip, r7
 8002e98:	4463      	add	r3, ip
 8002e9a:	0092      	lsls	r2, r2, #2
 8002e9c:	491e      	ldr	r1, [pc, #120]	; (8002f18 <crc32+0x108>)
 8002e9e:	1879      	adds	r1, r7, r1
 8002ea0:	6809      	ldr	r1, [r1, #0]
 8002ea2:	50d1      	str	r1, [r2, r3]
 8002ea4:	183b      	adds	r3, r7, r0
 8002ea6:	881a      	ldrh	r2, [r3, #0]
 8002ea8:	183b      	adds	r3, r7, r0
 8002eaa:	3201      	adds	r2, #1
 8002eac:	801a      	strh	r2, [r3, #0]
 8002eae:	4b1b      	ldr	r3, [pc, #108]	; (8002f1c <crc32+0x10c>)
 8002eb0:	18fb      	adds	r3, r7, r3
 8002eb2:	881b      	ldrh	r3, [r3, #0]
 8002eb4:	2bff      	cmp	r3, #255	; 0xff
 8002eb6:	d9ba      	bls.n	8002e2e <crc32+0x1e>
 8002eb8:	2301      	movs	r3, #1
 8002eba:	425b      	negs	r3, r3
 8002ebc:	4a16      	ldr	r2, [pc, #88]	; (8002f18 <crc32+0x108>)
 8002ebe:	18ba      	adds	r2, r7, r2
 8002ec0:	6013      	str	r3, [r2, #0]
 8002ec2:	e018      	b.n	8002ef6 <crc32+0xe6>
 8002ec4:	687b      	ldr	r3, [r7, #4]
 8002ec6:	1c5a      	adds	r2, r3, #1
 8002ec8:	607a      	str	r2, [r7, #4]
 8002eca:	781b      	ldrb	r3, [r3, #0]
 8002ecc:	001a      	movs	r2, r3
 8002ece:	4912      	ldr	r1, [pc, #72]	; (8002f18 <crc32+0x108>)
 8002ed0:	187b      	adds	r3, r7, r1
 8002ed2:	681b      	ldr	r3, [r3, #0]
 8002ed4:	4053      	eors	r3, r2
 8002ed6:	22ff      	movs	r2, #255	; 0xff
 8002ed8:	401a      	ands	r2, r3
 8002eda:	4b12      	ldr	r3, [pc, #72]	; (8002f24 <crc32+0x114>)
 8002edc:	2082      	movs	r0, #130	; 0x82
 8002ede:	00c0      	lsls	r0, r0, #3
 8002ee0:	4684      	mov	ip, r0
 8002ee2:	44bc      	add	ip, r7
 8002ee4:	4463      	add	r3, ip
 8002ee6:	0092      	lsls	r2, r2, #2
 8002ee8:	58d2      	ldr	r2, [r2, r3]
 8002eea:	187b      	adds	r3, r7, r1
 8002eec:	681b      	ldr	r3, [r3, #0]
 8002eee:	0a1b      	lsrs	r3, r3, #8
 8002ef0:	4053      	eors	r3, r2
 8002ef2:	187a      	adds	r2, r7, r1
 8002ef4:	6013      	str	r3, [r2, #0]
 8002ef6:	683b      	ldr	r3, [r7, #0]
 8002ef8:	1e5a      	subs	r2, r3, #1
 8002efa:	603a      	str	r2, [r7, #0]
 8002efc:	2b00      	cmp	r3, #0
 8002efe:	d1e1      	bne.n	8002ec4 <crc32+0xb4>
 8002f00:	4b05      	ldr	r3, [pc, #20]	; (8002f18 <crc32+0x108>)
 8002f02:	18fb      	adds	r3, r7, r3
 8002f04:	681b      	ldr	r3, [r3, #0]
 8002f06:	43db      	mvns	r3, r3
 8002f08:	0018      	movs	r0, r3
 8002f0a:	46bd      	mov	sp, r7
 8002f0c:	2382      	movs	r3, #130	; 0x82
 8002f0e:	00db      	lsls	r3, r3, #3
 8002f10:	449d      	add	sp, r3
 8002f12:	bd80      	pop	{r7, pc}
 8002f14:	fffffbf0 	.word	0xfffffbf0
 8002f18:	0000040c 	.word	0x0000040c
 8002f1c:	0000040a 	.word	0x0000040a
 8002f20:	edb88320 	.word	0xedb88320
 8002f24:	fffffbf8 	.word	0xfffffbf8

08002f28 <stateMsg_fill>:
 8002f28:	b5b0      	push	{r4, r5, r7, lr}
 8002f2a:	b084      	sub	sp, #16
 8002f2c:	af00      	add	r7, sp, #0
 8002f2e:	6078      	str	r0, [r7, #4]
 8002f30:	687b      	ldr	r3, [r7, #4]
 8002f32:	22ff      	movs	r2, #255	; 0xff
 8002f34:	701a      	strb	r2, [r3, #0]
 8002f36:	687b      	ldr	r3, [r7, #4]
 8002f38:	22fe      	movs	r2, #254	; 0xfe
 8002f3a:	705a      	strb	r2, [r3, #1]
 8002f3c:	4bd0      	ldr	r3, [pc, #832]	; (8003280 <stateMsg_fill+0x358>)
 8002f3e:	681b      	ldr	r3, [r3, #0]
 8002f40:	001a      	movs	r2, r3
 8002f42:	687b      	ldr	r3, [r7, #4]
 8002f44:	3302      	adds	r3, #2
 8002f46:	21ff      	movs	r1, #255	; 0xff
 8002f48:	4011      	ands	r1, r2
 8002f4a:	000c      	movs	r4, r1
 8002f4c:	7819      	ldrb	r1, [r3, #0]
 8002f4e:	2000      	movs	r0, #0
 8002f50:	4001      	ands	r1, r0
 8002f52:	1c08      	adds	r0, r1, #0
 8002f54:	1c21      	adds	r1, r4, #0
 8002f56:	4301      	orrs	r1, r0
 8002f58:	7019      	strb	r1, [r3, #0]
 8002f5a:	0a11      	lsrs	r1, r2, #8
 8002f5c:	20ff      	movs	r0, #255	; 0xff
 8002f5e:	4001      	ands	r1, r0
 8002f60:	000c      	movs	r4, r1
 8002f62:	7859      	ldrb	r1, [r3, #1]
 8002f64:	2000      	movs	r0, #0
 8002f66:	4001      	ands	r1, r0
 8002f68:	1c08      	adds	r0, r1, #0
 8002f6a:	1c21      	adds	r1, r4, #0
 8002f6c:	4301      	orrs	r1, r0
 8002f6e:	7059      	strb	r1, [r3, #1]
 8002f70:	0c11      	lsrs	r1, r2, #16
 8002f72:	20ff      	movs	r0, #255	; 0xff
 8002f74:	4001      	ands	r1, r0
 8002f76:	000c      	movs	r4, r1
 8002f78:	7899      	ldrb	r1, [r3, #2]
 8002f7a:	2000      	movs	r0, #0
 8002f7c:	4001      	ands	r1, r0
 8002f7e:	1c08      	adds	r0, r1, #0
 8002f80:	1c21      	adds	r1, r4, #0
 8002f82:	4301      	orrs	r1, r0
 8002f84:	7099      	strb	r1, [r3, #2]
 8002f86:	0e10      	lsrs	r0, r2, #24
 8002f88:	78da      	ldrb	r2, [r3, #3]
 8002f8a:	2100      	movs	r1, #0
 8002f8c:	400a      	ands	r2, r1
 8002f8e:	1c11      	adds	r1, r2, #0
 8002f90:	1c02      	adds	r2, r0, #0
 8002f92:	430a      	orrs	r2, r1
 8002f94:	70da      	strb	r2, [r3, #3]
 8002f96:	4bbb      	ldr	r3, [pc, #748]	; (8003284 <stateMsg_fill+0x35c>)
 8002f98:	681a      	ldr	r2, [r3, #0]
 8002f9a:	687b      	ldr	r3, [r7, #4]
 8002f9c:	3306      	adds	r3, #6
 8002f9e:	21ff      	movs	r1, #255	; 0xff
 8002fa0:	4011      	ands	r1, r2
 8002fa2:	000c      	movs	r4, r1
 8002fa4:	7819      	ldrb	r1, [r3, #0]
 8002fa6:	2000      	movs	r0, #0
 8002fa8:	4001      	ands	r1, r0
 8002faa:	1c08      	adds	r0, r1, #0
 8002fac:	1c21      	adds	r1, r4, #0
 8002fae:	4301      	orrs	r1, r0
 8002fb0:	7019      	strb	r1, [r3, #0]
 8002fb2:	0a11      	lsrs	r1, r2, #8
 8002fb4:	20ff      	movs	r0, #255	; 0xff
 8002fb6:	4001      	ands	r1, r0
 8002fb8:	000c      	movs	r4, r1
 8002fba:	7859      	ldrb	r1, [r3, #1]
 8002fbc:	2000      	movs	r0, #0
 8002fbe:	4001      	ands	r1, r0
 8002fc0:	1c08      	adds	r0, r1, #0
 8002fc2:	1c21      	adds	r1, r4, #0
 8002fc4:	4301      	orrs	r1, r0
 8002fc6:	7059      	strb	r1, [r3, #1]
 8002fc8:	0c11      	lsrs	r1, r2, #16
 8002fca:	20ff      	movs	r0, #255	; 0xff
 8002fcc:	4001      	ands	r1, r0
 8002fce:	000c      	movs	r4, r1
 8002fd0:	7899      	ldrb	r1, [r3, #2]
 8002fd2:	2000      	movs	r0, #0
 8002fd4:	4001      	ands	r1, r0
 8002fd6:	1c08      	adds	r0, r1, #0
 8002fd8:	1c21      	adds	r1, r4, #0
 8002fda:	4301      	orrs	r1, r0
 8002fdc:	7099      	strb	r1, [r3, #2]
 8002fde:	0e10      	lsrs	r0, r2, #24
 8002fe0:	78da      	ldrb	r2, [r3, #3]
 8002fe2:	2100      	movs	r1, #0
 8002fe4:	400a      	ands	r2, r1
 8002fe6:	1c11      	adds	r1, r2, #0
 8002fe8:	1c02      	adds	r2, r0, #0
 8002fea:	430a      	orrs	r2, r1
 8002fec:	70da      	strb	r2, [r3, #3]
 8002fee:	230f      	movs	r3, #15
 8002ff0:	18fb      	adds	r3, r7, r3
 8002ff2:	2200      	movs	r2, #0
 8002ff4:	701a      	strb	r2, [r3, #0]
 8002ff6:	e0a8      	b.n	800314a <stateMsg_fill+0x222>
 8002ff8:	250f      	movs	r5, #15
 8002ffa:	197b      	adds	r3, r7, r5
 8002ffc:	7819      	ldrb	r1, [r3, #0]
 8002ffe:	197b      	adds	r3, r7, r5
 8003000:	781b      	ldrb	r3, [r3, #0]
 8003002:	4aa1      	ldr	r2, [pc, #644]	; (8003288 <stateMsg_fill+0x360>)
 8003004:	0089      	lsls	r1, r1, #2
 8003006:	5889      	ldr	r1, [r1, r2]
 8003008:	687a      	ldr	r2, [r7, #4]
 800300a:	3302      	adds	r3, #2
 800300c:	009b      	lsls	r3, r3, #2
 800300e:	18d3      	adds	r3, r2, r3
 8003010:	3302      	adds	r3, #2
 8003012:	1c0a      	adds	r2, r1, #0
 8003014:	21ff      	movs	r1, #255	; 0xff
 8003016:	4011      	ands	r1, r2
 8003018:	000c      	movs	r4, r1
 800301a:	7819      	ldrb	r1, [r3, #0]
 800301c:	2000      	movs	r0, #0
 800301e:	4001      	ands	r1, r0
 8003020:	1c08      	adds	r0, r1, #0
 8003022:	1c21      	adds	r1, r4, #0
 8003024:	4301      	orrs	r1, r0
 8003026:	7019      	strb	r1, [r3, #0]
 8003028:	0a11      	lsrs	r1, r2, #8
 800302a:	20ff      	movs	r0, #255	; 0xff
 800302c:	4001      	ands	r1, r0
 800302e:	000c      	movs	r4, r1
 8003030:	7859      	ldrb	r1, [r3, #1]
 8003032:	2000      	movs	r0, #0
 8003034:	4001      	ands	r1, r0
 8003036:	1c08      	adds	r0, r1, #0
 8003038:	1c21      	adds	r1, r4, #0
 800303a:	4301      	orrs	r1, r0
 800303c:	7059      	strb	r1, [r3, #1]
 800303e:	0c11      	lsrs	r1, r2, #16
 8003040:	20ff      	movs	r0, #255	; 0xff
 8003042:	4001      	ands	r1, r0
 8003044:	000c      	movs	r4, r1
 8003046:	7899      	ldrb	r1, [r3, #2]
 8003048:	2000      	movs	r0, #0
 800304a:	4001      	ands	r1, r0
 800304c:	1c08      	adds	r0, r1, #0
 800304e:	1c21      	adds	r1, r4, #0
 8003050:	4301      	orrs	r1, r0
 8003052:	7099      	strb	r1, [r3, #2]
 8003054:	0e10      	lsrs	r0, r2, #24
 8003056:	78da      	ldrb	r2, [r3, #3]
 8003058:	2100      	movs	r1, #0
 800305a:	400a      	ands	r2, r1
 800305c:	1c11      	adds	r1, r2, #0
 800305e:	1c02      	adds	r2, r0, #0
 8003060:	430a      	orrs	r2, r1
 8003062:	70da      	strb	r2, [r3, #3]
 8003064:	197b      	adds	r3, r7, r5
 8003066:	781b      	ldrb	r3, [r3, #0]
 8003068:	197a      	adds	r2, r7, r5
 800306a:	7811      	ldrb	r1, [r2, #0]
 800306c:	4a87      	ldr	r2, [pc, #540]	; (800328c <stateMsg_fill+0x364>)
 800306e:	3302      	adds	r3, #2
 8003070:	009b      	lsls	r3, r3, #2
 8003072:	18d3      	adds	r3, r2, r3
 8003074:	3304      	adds	r3, #4
 8003076:	6818      	ldr	r0, [r3, #0]
 8003078:	687a      	ldr	r2, [r7, #4]
 800307a:	1d0b      	adds	r3, r1, #4
 800307c:	009b      	lsls	r3, r3, #2
 800307e:	18d3      	adds	r3, r2, r3
 8003080:	3306      	adds	r3, #6
 8003082:	1c02      	adds	r2, r0, #0
 8003084:	21ff      	movs	r1, #255	; 0xff
 8003086:	4011      	ands	r1, r2
 8003088:	000c      	movs	r4, r1
 800308a:	7819      	ldrb	r1, [r3, #0]
 800308c:	2000      	movs	r0, #0
 800308e:	4001      	ands	r1, r0
 8003090:	1c08      	adds	r0, r1, #0
 8003092:	1c21      	adds	r1, r4, #0
 8003094:	4301      	orrs	r1, r0
 8003096:	7019      	strb	r1, [r3, #0]
 8003098:	0a11      	lsrs	r1, r2, #8
 800309a:	20ff      	movs	r0, #255	; 0xff
 800309c:	4001      	ands	r1, r0
 800309e:	000c      	movs	r4, r1
 80030a0:	7859      	ldrb	r1, [r3, #1]
 80030a2:	2000      	movs	r0, #0
 80030a4:	4001      	ands	r1, r0
 80030a6:	1c08      	adds	r0, r1, #0
 80030a8:	1c21      	adds	r1, r4, #0
 80030aa:	4301      	orrs	r1, r0
 80030ac:	7059      	strb	r1, [r3, #1]
 80030ae:	0c11      	lsrs	r1, r2, #16
 80030b0:	20ff      	movs	r0, #255	; 0xff
 80030b2:	4001      	ands	r1, r0
 80030b4:	000c      	movs	r4, r1
 80030b6:	7899      	ldrb	r1, [r3, #2]
 80030b8:	2000      	movs	r0, #0
 80030ba:	4001      	ands	r1, r0
 80030bc:	1c08      	adds	r0, r1, #0
 80030be:	1c21      	adds	r1, r4, #0
 80030c0:	4301      	orrs	r1, r0
 80030c2:	7099      	strb	r1, [r3, #2]
 80030c4:	0e10      	lsrs	r0, r2, #24
 80030c6:	78da      	ldrb	r2, [r3, #3]
 80030c8:	2100      	movs	r1, #0
 80030ca:	400a      	ands	r2, r1
 80030cc:	1c11      	adds	r1, r2, #0
 80030ce:	1c02      	adds	r2, r0, #0
 80030d0:	430a      	orrs	r2, r1
 80030d2:	70da      	strb	r2, [r3, #3]
 80030d4:	197b      	adds	r3, r7, r5
 80030d6:	7819      	ldrb	r1, [r3, #0]
 80030d8:	197b      	adds	r3, r7, r5
 80030da:	781b      	ldrb	r3, [r3, #0]
 80030dc:	4a6a      	ldr	r2, [pc, #424]	; (8003288 <stateMsg_fill+0x360>)
 80030de:	3106      	adds	r1, #6
 80030e0:	0089      	lsls	r1, r1, #2
 80030e2:	5889      	ldr	r1, [r1, r2]
 80030e4:	687a      	ldr	r2, [r7, #4]
 80030e6:	3308      	adds	r3, #8
 80030e8:	009b      	lsls	r3, r3, #2
 80030ea:	18d3      	adds	r3, r2, r3
 80030ec:	3302      	adds	r3, #2
 80030ee:	1c0a      	adds	r2, r1, #0
 80030f0:	21ff      	movs	r1, #255	; 0xff
 80030f2:	4011      	ands	r1, r2
 80030f4:	000c      	movs	r4, r1
 80030f6:	7819      	ldrb	r1, [r3, #0]
 80030f8:	2000      	movs	r0, #0
 80030fa:	4001      	ands	r1, r0
 80030fc:	1c08      	adds	r0, r1, #0
 80030fe:	1c21      	adds	r1, r4, #0
 8003100:	4301      	orrs	r1, r0
 8003102:	7019      	strb	r1, [r3, #0]
 8003104:	0a11      	lsrs	r1, r2, #8
 8003106:	20ff      	movs	r0, #255	; 0xff
 8003108:	4001      	ands	r1, r0
 800310a:	000c      	movs	r4, r1
 800310c:	7859      	ldrb	r1, [r3, #1]
 800310e:	2000      	movs	r0, #0
 8003110:	4001      	ands	r1, r0
 8003112:	1c08      	adds	r0, r1, #0
 8003114:	1c21      	adds	r1, r4, #0
 8003116:	4301      	orrs	r1, r0
 8003118:	7059      	strb	r1, [r3, #1]
 800311a:	0c11      	lsrs	r1, r2, #16
 800311c:	20ff      	movs	r0, #255	; 0xff
 800311e:	4001      	ands	r1, r0
 8003120:	000c      	movs	r4, r1
 8003122:	7899      	ldrb	r1, [r3, #2]
 8003124:	2000      	movs	r0, #0
 8003126:	4001      	ands	r1, r0
 8003128:	1c08      	adds	r0, r1, #0
 800312a:	1c21      	adds	r1, r4, #0
 800312c:	4301      	orrs	r1, r0
 800312e:	7099      	strb	r1, [r3, #2]
 8003130:	0e10      	lsrs	r0, r2, #24
 8003132:	78da      	ldrb	r2, [r3, #3]
 8003134:	2100      	movs	r1, #0
 8003136:	400a      	ands	r2, r1
 8003138:	1c11      	adds	r1, r2, #0
 800313a:	1c02      	adds	r2, r0, #0
 800313c:	430a      	orrs	r2, r1
 800313e:	70da      	strb	r2, [r3, #3]
 8003140:	197b      	adds	r3, r7, r5
 8003142:	781a      	ldrb	r2, [r3, #0]
 8003144:	197b      	adds	r3, r7, r5
 8003146:	3201      	adds	r2, #1
 8003148:	701a      	strb	r2, [r3, #0]
 800314a:	230f      	movs	r3, #15
 800314c:	18fb      	adds	r3, r7, r3
 800314e:	781b      	ldrb	r3, [r3, #0]
 8003150:	2b02      	cmp	r3, #2
 8003152:	d800      	bhi.n	8003156 <stateMsg_fill+0x22e>
 8003154:	e750      	b.n	8002ff8 <stateMsg_fill+0xd0>
 8003156:	230e      	movs	r3, #14
 8003158:	18fb      	adds	r3, r7, r3
 800315a:	2200      	movs	r2, #0
 800315c:	701a      	strb	r2, [r3, #0]
 800315e:	e03e      	b.n	80031de <stateMsg_fill+0x2b6>
 8003160:	250e      	movs	r5, #14
 8003162:	197b      	adds	r3, r7, r5
 8003164:	781b      	ldrb	r3, [r3, #0]
 8003166:	197a      	adds	r2, r7, r5
 8003168:	7811      	ldrb	r1, [r2, #0]
 800316a:	4a47      	ldr	r2, [pc, #284]	; (8003288 <stateMsg_fill+0x360>)
 800316c:	330e      	adds	r3, #14
 800316e:	009b      	lsls	r3, r3, #2
 8003170:	18d3      	adds	r3, r2, r3
 8003172:	3304      	adds	r3, #4
 8003174:	6818      	ldr	r0, [r3, #0]
 8003176:	687a      	ldr	r2, [r7, #4]
 8003178:	000b      	movs	r3, r1
 800317a:	330a      	adds	r3, #10
 800317c:	009b      	lsls	r3, r3, #2
 800317e:	18d3      	adds	r3, r2, r3
 8003180:	3306      	adds	r3, #6
 8003182:	1c02      	adds	r2, r0, #0
 8003184:	21ff      	movs	r1, #255	; 0xff
 8003186:	4011      	ands	r1, r2
 8003188:	000c      	movs	r4, r1
 800318a:	7819      	ldrb	r1, [r3, #0]
 800318c:	2000      	movs	r0, #0
 800318e:	4001      	ands	r1, r0
 8003190:	1c08      	adds	r0, r1, #0
 8003192:	1c21      	adds	r1, r4, #0
 8003194:	4301      	orrs	r1, r0
 8003196:	7019      	strb	r1, [r3, #0]
 8003198:	0a11      	lsrs	r1, r2, #8
 800319a:	20ff      	movs	r0, #255	; 0xff
 800319c:	4001      	ands	r1, r0
 800319e:	000c      	movs	r4, r1
 80031a0:	7859      	ldrb	r1, [r3, #1]
 80031a2:	2000      	movs	r0, #0
 80031a4:	4001      	ands	r1, r0
 80031a6:	1c08      	adds	r0, r1, #0
 80031a8:	1c21      	adds	r1, r4, #0
 80031aa:	4301      	orrs	r1, r0
 80031ac:	7059      	strb	r1, [r3, #1]
 80031ae:	0c11      	lsrs	r1, r2, #16
 80031b0:	20ff      	movs	r0, #255	; 0xff
 80031b2:	4001      	ands	r1, r0
 80031b4:	000c      	movs	r4, r1
 80031b6:	7899      	ldrb	r1, [r3, #2]
 80031b8:	2000      	movs	r0, #0
 80031ba:	4001      	ands	r1, r0
 80031bc:	1c08      	adds	r0, r1, #0
 80031be:	1c21      	adds	r1, r4, #0
 80031c0:	4301      	orrs	r1, r0
 80031c2:	7099      	strb	r1, [r3, #2]
 80031c4:	0e10      	lsrs	r0, r2, #24
 80031c6:	78da      	ldrb	r2, [r3, #3]
 80031c8:	2100      	movs	r1, #0
 80031ca:	400a      	ands	r2, r1
 80031cc:	1c11      	adds	r1, r2, #0
 80031ce:	1c02      	adds	r2, r0, #0
 80031d0:	430a      	orrs	r2, r1
 80031d2:	70da      	strb	r2, [r3, #3]
 80031d4:	197b      	adds	r3, r7, r5
 80031d6:	781a      	ldrb	r2, [r3, #0]
 80031d8:	197b      	adds	r3, r7, r5
 80031da:	3201      	adds	r2, #1
 80031dc:	701a      	strb	r2, [r3, #0]
 80031de:	230e      	movs	r3, #14
 80031e0:	18fb      	adds	r3, r7, r3
 80031e2:	781b      	ldrb	r3, [r3, #0]
 80031e4:	2b03      	cmp	r3, #3
 80031e6:	d9bb      	bls.n	8003160 <stateMsg_fill+0x238>
 80031e8:	687b      	ldr	r3, [r7, #4]
 80031ea:	333e      	adds	r3, #62	; 0x3e
 80031ec:	781a      	ldrb	r2, [r3, #0]
 80031ee:	2100      	movs	r1, #0
 80031f0:	400a      	ands	r2, r1
 80031f2:	701a      	strb	r2, [r3, #0]
 80031f4:	785a      	ldrb	r2, [r3, #1]
 80031f6:	2100      	movs	r1, #0
 80031f8:	400a      	ands	r2, r1
 80031fa:	705a      	strb	r2, [r3, #1]
 80031fc:	789a      	ldrb	r2, [r3, #2]
 80031fe:	2100      	movs	r1, #0
 8003200:	400a      	ands	r2, r1
 8003202:	709a      	strb	r2, [r3, #2]
 8003204:	78da      	ldrb	r2, [r3, #3]
 8003206:	2100      	movs	r1, #0
 8003208:	400a      	ands	r2, r1
 800320a:	70da      	strb	r2, [r3, #3]
 800320c:	687b      	ldr	r3, [r7, #4]
 800320e:	2142      	movs	r1, #66	; 0x42
 8003210:	0018      	movs	r0, r3
 8003212:	f7ff fdfd 	bl	8002e10 <crc32>
 8003216:	0002      	movs	r2, r0
 8003218:	687b      	ldr	r3, [r7, #4]
 800321a:	333e      	adds	r3, #62	; 0x3e
 800321c:	21ff      	movs	r1, #255	; 0xff
 800321e:	4011      	ands	r1, r2
 8003220:	000c      	movs	r4, r1
 8003222:	7819      	ldrb	r1, [r3, #0]
 8003224:	2000      	movs	r0, #0
 8003226:	4001      	ands	r1, r0
 8003228:	1c08      	adds	r0, r1, #0
 800322a:	1c21      	adds	r1, r4, #0
 800322c:	4301      	orrs	r1, r0
 800322e:	7019      	strb	r1, [r3, #0]
 8003230:	0a11      	lsrs	r1, r2, #8
 8003232:	20ff      	movs	r0, #255	; 0xff
 8003234:	4001      	ands	r1, r0
 8003236:	000c      	movs	r4, r1
 8003238:	7859      	ldrb	r1, [r3, #1]
 800323a:	2000      	movs	r0, #0
 800323c:	4001      	ands	r1, r0
 800323e:	1c08      	adds	r0, r1, #0
 8003240:	1c21      	adds	r1, r4, #0
 8003242:	4301      	orrs	r1, r0
 8003244:	7059      	strb	r1, [r3, #1]
 8003246:	0c11      	lsrs	r1, r2, #16
 8003248:	20ff      	movs	r0, #255	; 0xff
 800324a:	4001      	ands	r1, r0
 800324c:	000c      	movs	r4, r1
 800324e:	7899      	ldrb	r1, [r3, #2]
 8003250:	2000      	movs	r0, #0
 8003252:	4001      	ands	r1, r0
 8003254:	1c08      	adds	r0, r1, #0
 8003256:	1c21      	adds	r1, r4, #0
 8003258:	4301      	orrs	r1, r0
 800325a:	7099      	strb	r1, [r3, #2]
 800325c:	0e10      	lsrs	r0, r2, #24
 800325e:	78da      	ldrb	r2, [r3, #3]
 8003260:	2100      	movs	r1, #0
 8003262:	400a      	ands	r2, r1
 8003264:	1c11      	adds	r1, r2, #0
 8003266:	1c02      	adds	r2, r0, #0
 8003268:	430a      	orrs	r2, r1
 800326a:	70da      	strb	r2, [r3, #3]
 800326c:	4b04      	ldr	r3, [pc, #16]	; (8003280 <stateMsg_fill+0x358>)
 800326e:	681b      	ldr	r3, [r3, #0]
 8003270:	1c5a      	adds	r2, r3, #1
 8003272:	4b03      	ldr	r3, [pc, #12]	; (8003280 <stateMsg_fill+0x358>)
 8003274:	601a      	str	r2, [r3, #0]
 8003276:	46c0      	nop			; (mov r8, r8)
 8003278:	46bd      	mov	sp, r7
 800327a:	b004      	add	sp, #16
 800327c:	bdb0      	pop	{r4, r5, r7, pc}
 800327e:	46c0      	nop			; (mov r8, r8)
 8003280:	200001bc 	.word	0x200001bc
 8003284:	2000014c 	.word	0x2000014c
 8003288:	200000b4 	.word	0x200000b4
 800328c:	20000090 	.word	0x20000090

08003290 <stateMsg_send>:
 8003290:	b580      	push	{r7, lr}
 8003292:	b086      	sub	sp, #24
 8003294:	af00      	add	r7, sp, #0
 8003296:	6078      	str	r0, [r7, #4]
 8003298:	2300      	movs	r3, #0
 800329a:	617b      	str	r3, [r7, #20]
 800329c:	687b      	ldr	r3, [r7, #4]
 800329e:	60fb      	str	r3, [r7, #12]
 80032a0:	2313      	movs	r3, #19
 80032a2:	18fb      	adds	r3, r7, r3
 80032a4:	2242      	movs	r2, #66	; 0x42
 80032a6:	701a      	strb	r2, [r3, #0]
 80032a8:	4b15      	ldr	r3, [pc, #84]	; (8003300 <stateMsg_send+0x70>)
 80032aa:	0018      	movs	r0, r3
 80032ac:	f7ff fd95 	bl	8002dda <LL_USART_ClearFlag_TC>
 80032b0:	e012      	b.n	80032d8 <stateMsg_send+0x48>
 80032b2:	46c0      	nop			; (mov r8, r8)
 80032b4:	4b12      	ldr	r3, [pc, #72]	; (8003300 <stateMsg_send+0x70>)
 80032b6:	0018      	movs	r0, r3
 80032b8:	f7ff fd7f 	bl	8002dba <LL_USART_IsActiveFlag_TXE>
 80032bc:	1e03      	subs	r3, r0, #0
 80032be:	d0f9      	beq.n	80032b4 <stateMsg_send+0x24>
 80032c0:	697b      	ldr	r3, [r7, #20]
 80032c2:	1c5a      	adds	r2, r3, #1
 80032c4:	617a      	str	r2, [r7, #20]
 80032c6:	001a      	movs	r2, r3
 80032c8:	68fb      	ldr	r3, [r7, #12]
 80032ca:	189b      	adds	r3, r3, r2
 80032cc:	781b      	ldrb	r3, [r3, #0]
 80032ce:	4a0c      	ldr	r2, [pc, #48]	; (8003300 <stateMsg_send+0x70>)
 80032d0:	0019      	movs	r1, r3
 80032d2:	0010      	movs	r0, r2
 80032d4:	f7ff fd8c 	bl	8002df0 <LL_USART_TransmitData8>
 80032d8:	2213      	movs	r2, #19
 80032da:	18bb      	adds	r3, r7, r2
 80032dc:	781b      	ldrb	r3, [r3, #0]
 80032de:	18ba      	adds	r2, r7, r2
 80032e0:	1e59      	subs	r1, r3, #1
 80032e2:	7011      	strb	r1, [r2, #0]
 80032e4:	2b00      	cmp	r3, #0
 80032e6:	d1e4      	bne.n	80032b2 <stateMsg_send+0x22>
 80032e8:	46c0      	nop			; (mov r8, r8)
 80032ea:	4b05      	ldr	r3, [pc, #20]	; (8003300 <stateMsg_send+0x70>)
 80032ec:	0018      	movs	r0, r3
 80032ee:	f7ff fd54 	bl	8002d9a <LL_USART_IsActiveFlag_TC>
 80032f2:	1e03      	subs	r3, r0, #0
 80032f4:	d0f9      	beq.n	80032ea <stateMsg_send+0x5a>
 80032f6:	46c0      	nop			; (mov r8, r8)
 80032f8:	46bd      	mov	sp, r7
 80032fa:	b006      	add	sp, #24
 80032fc:	bd80      	pop	{r7, pc}
 80032fe:	46c0      	nop			; (mov r8, r8)
 8003300:	40013800 	.word	0x40013800

08003304 <NVIC_SetPriority>:
 8003304:	b590      	push	{r4, r7, lr}
 8003306:	b083      	sub	sp, #12
 8003308:	af00      	add	r7, sp, #0
 800330a:	0002      	movs	r2, r0
 800330c:	6039      	str	r1, [r7, #0]
 800330e:	1dfb      	adds	r3, r7, #7
 8003310:	701a      	strb	r2, [r3, #0]
 8003312:	1dfb      	adds	r3, r7, #7
 8003314:	781b      	ldrb	r3, [r3, #0]
 8003316:	2b7f      	cmp	r3, #127	; 0x7f
 8003318:	d932      	bls.n	8003380 <NVIC_SetPriority+0x7c>
 800331a:	4a2f      	ldr	r2, [pc, #188]	; (80033d8 <NVIC_SetPriority+0xd4>)
 800331c:	1dfb      	adds	r3, r7, #7
 800331e:	781b      	ldrb	r3, [r3, #0]
 8003320:	0019      	movs	r1, r3
 8003322:	230f      	movs	r3, #15
 8003324:	400b      	ands	r3, r1
 8003326:	3b08      	subs	r3, #8
 8003328:	089b      	lsrs	r3, r3, #2
 800332a:	3306      	adds	r3, #6
 800332c:	009b      	lsls	r3, r3, #2
 800332e:	18d3      	adds	r3, r2, r3
 8003330:	3304      	adds	r3, #4
 8003332:	681b      	ldr	r3, [r3, #0]
 8003334:	1dfa      	adds	r2, r7, #7
 8003336:	7812      	ldrb	r2, [r2, #0]
 8003338:	0011      	movs	r1, r2
 800333a:	2203      	movs	r2, #3
 800333c:	400a      	ands	r2, r1
 800333e:	00d2      	lsls	r2, r2, #3
 8003340:	21ff      	movs	r1, #255	; 0xff
 8003342:	4091      	lsls	r1, r2
 8003344:	000a      	movs	r2, r1
 8003346:	43d2      	mvns	r2, r2
 8003348:	401a      	ands	r2, r3
 800334a:	0011      	movs	r1, r2
 800334c:	683b      	ldr	r3, [r7, #0]
 800334e:	019b      	lsls	r3, r3, #6
 8003350:	22ff      	movs	r2, #255	; 0xff
 8003352:	401a      	ands	r2, r3
 8003354:	1dfb      	adds	r3, r7, #7
 8003356:	781b      	ldrb	r3, [r3, #0]
 8003358:	0018      	movs	r0, r3
 800335a:	2303      	movs	r3, #3
 800335c:	4003      	ands	r3, r0
 800335e:	00db      	lsls	r3, r3, #3
 8003360:	409a      	lsls	r2, r3
 8003362:	481d      	ldr	r0, [pc, #116]	; (80033d8 <NVIC_SetPriority+0xd4>)
 8003364:	1dfb      	adds	r3, r7, #7
 8003366:	781b      	ldrb	r3, [r3, #0]
 8003368:	001c      	movs	r4, r3
 800336a:	230f      	movs	r3, #15
 800336c:	4023      	ands	r3, r4
 800336e:	3b08      	subs	r3, #8
 8003370:	089b      	lsrs	r3, r3, #2
 8003372:	430a      	orrs	r2, r1
 8003374:	3306      	adds	r3, #6
 8003376:	009b      	lsls	r3, r3, #2
 8003378:	18c3      	adds	r3, r0, r3
 800337a:	3304      	adds	r3, #4
 800337c:	601a      	str	r2, [r3, #0]
 800337e:	e027      	b.n	80033d0 <NVIC_SetPriority+0xcc>
 8003380:	4a16      	ldr	r2, [pc, #88]	; (80033dc <NVIC_SetPriority+0xd8>)
 8003382:	1dfb      	adds	r3, r7, #7
 8003384:	781b      	ldrb	r3, [r3, #0]
 8003386:	b25b      	sxtb	r3, r3
 8003388:	089b      	lsrs	r3, r3, #2
 800338a:	33c0      	adds	r3, #192	; 0xc0
 800338c:	009b      	lsls	r3, r3, #2
 800338e:	589b      	ldr	r3, [r3, r2]
 8003390:	1dfa      	adds	r2, r7, #7
 8003392:	7812      	ldrb	r2, [r2, #0]
 8003394:	0011      	movs	r1, r2
 8003396:	2203      	movs	r2, #3
 8003398:	400a      	ands	r2, r1
 800339a:	00d2      	lsls	r2, r2, #3
 800339c:	21ff      	movs	r1, #255	; 0xff
 800339e:	4091      	lsls	r1, r2
 80033a0:	000a      	movs	r2, r1
 80033a2:	43d2      	mvns	r2, r2
 80033a4:	401a      	ands	r2, r3
 80033a6:	0011      	movs	r1, r2
 80033a8:	683b      	ldr	r3, [r7, #0]
 80033aa:	019b      	lsls	r3, r3, #6
 80033ac:	22ff      	movs	r2, #255	; 0xff
 80033ae:	401a      	ands	r2, r3
 80033b0:	1dfb      	adds	r3, r7, #7
 80033b2:	781b      	ldrb	r3, [r3, #0]
 80033b4:	0018      	movs	r0, r3
 80033b6:	2303      	movs	r3, #3
 80033b8:	4003      	ands	r3, r0
 80033ba:	00db      	lsls	r3, r3, #3
 80033bc:	409a      	lsls	r2, r3
 80033be:	4807      	ldr	r0, [pc, #28]	; (80033dc <NVIC_SetPriority+0xd8>)
 80033c0:	1dfb      	adds	r3, r7, #7
 80033c2:	781b      	ldrb	r3, [r3, #0]
 80033c4:	b25b      	sxtb	r3, r3
 80033c6:	089b      	lsrs	r3, r3, #2
 80033c8:	430a      	orrs	r2, r1
 80033ca:	33c0      	adds	r3, #192	; 0xc0
 80033cc:	009b      	lsls	r3, r3, #2
 80033ce:	501a      	str	r2, [r3, r0]
 80033d0:	46c0      	nop			; (mov r8, r8)
 80033d2:	46bd      	mov	sp, r7
 80033d4:	b003      	add	sp, #12
 80033d6:	bd90      	pop	{r4, r7, pc}
 80033d8:	e000ed00 	.word	0xe000ed00
 80033dc:	e000e100 	.word	0xe000e100

080033e0 <LL_InitTick>:
 80033e0:	b580      	push	{r7, lr}
 80033e2:	b082      	sub	sp, #8
 80033e4:	af00      	add	r7, sp, #0
 80033e6:	6078      	str	r0, [r7, #4]
 80033e8:	6039      	str	r1, [r7, #0]
 80033ea:	6839      	ldr	r1, [r7, #0]
 80033ec:	6878      	ldr	r0, [r7, #4]
 80033ee:	f7fc fe8b 	bl	8000108 <__udivsi3>
 80033f2:	0003      	movs	r3, r0
 80033f4:	001a      	movs	r2, r3
 80033f6:	4b06      	ldr	r3, [pc, #24]	; (8003410 <LL_InitTick+0x30>)
 80033f8:	3a01      	subs	r2, #1
 80033fa:	605a      	str	r2, [r3, #4]
 80033fc:	4b04      	ldr	r3, [pc, #16]	; (8003410 <LL_InitTick+0x30>)
 80033fe:	2200      	movs	r2, #0
 8003400:	609a      	str	r2, [r3, #8]
 8003402:	4b03      	ldr	r3, [pc, #12]	; (8003410 <LL_InitTick+0x30>)
 8003404:	2205      	movs	r2, #5
 8003406:	601a      	str	r2, [r3, #0]
 8003408:	46c0      	nop			; (mov r8, r8)
 800340a:	46bd      	mov	sp, r7
 800340c:	b002      	add	sp, #8
 800340e:	bd80      	pop	{r7, pc}
 8003410:	e000e010 	.word	0xe000e010

08003414 <LL_SYSTICK_EnableIT>:
 8003414:	b580      	push	{r7, lr}
 8003416:	af00      	add	r7, sp, #0
 8003418:	4b04      	ldr	r3, [pc, #16]	; (800342c <LL_SYSTICK_EnableIT+0x18>)
 800341a:	681a      	ldr	r2, [r3, #0]
 800341c:	4b03      	ldr	r3, [pc, #12]	; (800342c <LL_SYSTICK_EnableIT+0x18>)
 800341e:	2102      	movs	r1, #2
 8003420:	430a      	orrs	r2, r1
 8003422:	601a      	str	r2, [r3, #0]
 8003424:	46c0      	nop			; (mov r8, r8)
 8003426:	46bd      	mov	sp, r7
 8003428:	bd80      	pop	{r7, pc}
 800342a:	46c0      	nop			; (mov r8, r8)
 800342c:	e000e010 	.word	0xe000e010

08003430 <SysTick_Handler>:
 8003430:	b580      	push	{r7, lr}
 8003432:	af00      	add	r7, sp, #0
 8003434:	4b0c      	ldr	r3, [pc, #48]	; (8003468 <SysTick_Handler+0x38>)
 8003436:	681b      	ldr	r3, [r3, #0]
 8003438:	1c5a      	adds	r2, r3, #1
 800343a:	23fa      	movs	r3, #250	; 0xfa
 800343c:	009b      	lsls	r3, r3, #2
 800343e:	0019      	movs	r1, r3
 8003440:	0010      	movs	r0, r2
 8003442:	f7fc fee7 	bl	8000214 <__aeabi_uidivmod>
 8003446:	000b      	movs	r3, r1
 8003448:	001a      	movs	r2, r3
 800344a:	4b07      	ldr	r3, [pc, #28]	; (8003468 <SysTick_Handler+0x38>)
 800344c:	601a      	str	r2, [r3, #0]
 800344e:	4b06      	ldr	r3, [pc, #24]	; (8003468 <SysTick_Handler+0x38>)
 8003450:	681b      	ldr	r3, [r3, #0]
 8003452:	2b00      	cmp	r3, #0
 8003454:	d104      	bne.n	8003460 <SysTick_Handler+0x30>
 8003456:	4b05      	ldr	r3, [pc, #20]	; (800346c <SysTick_Handler+0x3c>)
 8003458:	681b      	ldr	r3, [r3, #0]
 800345a:	1c5a      	adds	r2, r3, #1
 800345c:	4b03      	ldr	r3, [pc, #12]	; (800346c <SysTick_Handler+0x3c>)
 800345e:	601a      	str	r2, [r3, #0]
 8003460:	46c0      	nop			; (mov r8, r8)
 8003462:	46bd      	mov	sp, r7
 8003464:	bd80      	pop	{r7, pc}
 8003466:	46c0      	nop			; (mov r8, r8)
 8003468:	200001c4 	.word	0x200001c4
 800346c:	200001c0 	.word	0x200001c0

08003470 <systick_config>:
 8003470:	b580      	push	{r7, lr}
 8003472:	af00      	add	r7, sp, #0
 8003474:	23fa      	movs	r3, #250	; 0xfa
 8003476:	009b      	lsls	r3, r3, #2
 8003478:	4a07      	ldr	r2, [pc, #28]	; (8003498 <systick_config+0x28>)
 800347a:	0019      	movs	r1, r3
 800347c:	0010      	movs	r0, r2
 800347e:	f7ff ffaf 	bl	80033e0 <LL_InitTick>
 8003482:	f7ff ffc7 	bl	8003414 <LL_SYSTICK_EnableIT>
 8003486:	2301      	movs	r3, #1
 8003488:	425b      	negs	r3, r3
 800348a:	2100      	movs	r1, #0
 800348c:	0018      	movs	r0, r3
 800348e:	f7ff ff39 	bl	8003304 <NVIC_SetPriority>
 8003492:	46c0      	nop			; (mov r8, r8)
 8003494:	46bd      	mov	sp, r7
 8003496:	bd80      	pop	{r7, pc}
 8003498:	02dc6c00 	.word	0x02dc6c00

0800349c <getTime_s>:
 800349c:	b5b0      	push	{r4, r5, r7, lr}
 800349e:	b082      	sub	sp, #8
 80034a0:	af00      	add	r7, sp, #0
 80034a2:	4b11      	ldr	r3, [pc, #68]	; (80034e8 <getTime_s+0x4c>)
 80034a4:	681b      	ldr	r3, [r3, #0]
 80034a6:	607b      	str	r3, [r7, #4]
 80034a8:	4b10      	ldr	r3, [pc, #64]	; (80034ec <getTime_s+0x50>)
 80034aa:	681b      	ldr	r3, [r3, #0]
 80034ac:	603b      	str	r3, [r7, #0]
 80034ae:	6838      	ldr	r0, [r7, #0]
 80034b0:	f7fd fda2 	bl	8000ff8 <__aeabi_ui2f>
 80034b4:	1c04      	adds	r4, r0, #0
 80034b6:	6878      	ldr	r0, [r7, #4]
 80034b8:	f7fd fd9e 	bl	8000ff8 <__aeabi_ui2f>
 80034bc:	1c05      	adds	r5, r0, #0
 80034be:	23fa      	movs	r3, #250	; 0xfa
 80034c0:	009b      	lsls	r3, r3, #2
 80034c2:	0018      	movs	r0, r3
 80034c4:	f7fd fd98 	bl	8000ff8 <__aeabi_ui2f>
 80034c8:	1c03      	adds	r3, r0, #0
 80034ca:	1c19      	adds	r1, r3, #0
 80034cc:	1c28      	adds	r0, r5, #0
 80034ce:	f7fd f87b 	bl	80005c8 <__aeabi_fdiv>
 80034d2:	1c03      	adds	r3, r0, #0
 80034d4:	1c19      	adds	r1, r3, #0
 80034d6:	1c20      	adds	r0, r4, #0
 80034d8:	f7fc fedc 	bl	8000294 <__aeabi_fadd>
 80034dc:	1c03      	adds	r3, r0, #0
 80034de:	1c18      	adds	r0, r3, #0
 80034e0:	46bd      	mov	sp, r7
 80034e2:	b002      	add	sp, #8
 80034e4:	bdb0      	pop	{r4, r5, r7, pc}
 80034e6:	46c0      	nop			; (mov r8, r8)
 80034e8:	200001c4 	.word	0x200001c4
 80034ec:	200001c0 	.word	0x200001c0

080034f0 <get_gyro_staticShift>:
 80034f0:	b5b0      	push	{r4, r5, r7, lr}
 80034f2:	b08e      	sub	sp, #56	; 0x38
 80034f4:	af00      	add	r7, sp, #0
 80034f6:	6078      	str	r0, [r7, #4]
 80034f8:	2337      	movs	r3, #55	; 0x37
 80034fa:	18fb      	adds	r3, r7, r3
 80034fc:	2200      	movs	r2, #0
 80034fe:	701a      	strb	r2, [r3, #0]
 8003500:	2326      	movs	r3, #38	; 0x26
 8003502:	18fb      	adds	r3, r7, r3
 8003504:	22fa      	movs	r2, #250	; 0xfa
 8003506:	0112      	lsls	r2, r2, #4
 8003508:	801a      	strh	r2, [r3, #0]
 800350a:	2300      	movs	r3, #0
 800350c:	633b      	str	r3, [r7, #48]	; 0x30
 800350e:	e051      	b.n	80035b4 <get_gyro_staticShift+0xc4>
 8003510:	2120      	movs	r1, #32
 8003512:	187b      	adds	r3, r7, r1
 8003514:	2200      	movs	r2, #0
 8003516:	801a      	strh	r2, [r3, #0]
 8003518:	187b      	adds	r3, r7, r1
 800351a:	2200      	movs	r2, #0
 800351c:	805a      	strh	r2, [r3, #2]
 800351e:	187b      	adds	r3, r7, r1
 8003520:	2200      	movs	r2, #0
 8003522:	809a      	strh	r2, [r3, #4]
 8003524:	2018      	movs	r0, #24
 8003526:	183b      	adds	r3, r7, r0
 8003528:	2200      	movs	r2, #0
 800352a:	801a      	strh	r2, [r3, #0]
 800352c:	183b      	adds	r3, r7, r0
 800352e:	2200      	movs	r2, #0
 8003530:	805a      	strh	r2, [r3, #2]
 8003532:	183b      	adds	r3, r7, r0
 8003534:	2200      	movs	r2, #0
 8003536:	809a      	strh	r2, [r3, #4]
 8003538:	240c      	movs	r4, #12
 800353a:	193b      	adds	r3, r7, r4
 800353c:	2200      	movs	r2, #0
 800353e:	601a      	str	r2, [r3, #0]
 8003540:	193b      	adds	r3, r7, r4
 8003542:	2200      	movs	r2, #0
 8003544:	605a      	str	r2, [r3, #4]
 8003546:	193b      	adds	r3, r7, r4
 8003548:	2200      	movs	r2, #0
 800354a:	609a      	str	r2, [r3, #8]
 800354c:	183a      	adds	r2, r7, r0
 800354e:	187b      	adds	r3, r7, r1
 8003550:	0011      	movs	r1, r2
 8003552:	0018      	movs	r0, r3
 8003554:	f001 fdd1 	bl	80050fa <mpu9255_readIMU>
 8003558:	0002      	movs	r2, r0
 800355a:	2137      	movs	r1, #55	; 0x37
 800355c:	187b      	adds	r3, r7, r1
 800355e:	701a      	strb	r2, [r3, #0]
 8003560:	187b      	adds	r3, r7, r1
 8003562:	781b      	ldrb	r3, [r3, #0]
 8003564:	2b00      	cmp	r3, #0
 8003566:	d14a      	bne.n	80035fe <get_gyro_staticShift+0x10e>
 8003568:	230c      	movs	r3, #12
 800356a:	18fa      	adds	r2, r7, r3
 800356c:	2318      	movs	r3, #24
 800356e:	18fb      	adds	r3, r7, r3
 8003570:	0011      	movs	r1, r2
 8003572:	0018      	movs	r0, r3
 8003574:	f001 ff0e 	bl	8005394 <mpu9255_recalcGyro>
 8003578:	2300      	movs	r3, #0
 800357a:	62fb      	str	r3, [r7, #44]	; 0x2c
 800357c:	e014      	b.n	80035a8 <get_gyro_staticShift+0xb8>
 800357e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8003580:	009b      	lsls	r3, r3, #2
 8003582:	687a      	ldr	r2, [r7, #4]
 8003584:	18d3      	adds	r3, r2, r3
 8003586:	6818      	ldr	r0, [r3, #0]
 8003588:	230c      	movs	r3, #12
 800358a:	18fb      	adds	r3, r7, r3
 800358c:	6afa      	ldr	r2, [r7, #44]	; 0x2c
 800358e:	0092      	lsls	r2, r2, #2
 8003590:	58d1      	ldr	r1, [r2, r3]
 8003592:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8003594:	009b      	lsls	r3, r3, #2
 8003596:	687a      	ldr	r2, [r7, #4]
 8003598:	18d4      	adds	r4, r2, r3
 800359a:	f7fc fe7b 	bl	8000294 <__aeabi_fadd>
 800359e:	1c03      	adds	r3, r0, #0
 80035a0:	6023      	str	r3, [r4, #0]
 80035a2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80035a4:	3301      	adds	r3, #1
 80035a6:	62fb      	str	r3, [r7, #44]	; 0x2c
 80035a8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80035aa:	2b02      	cmp	r3, #2
 80035ac:	dde7      	ble.n	800357e <get_gyro_staticShift+0x8e>
 80035ae:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80035b0:	3301      	adds	r3, #1
 80035b2:	633b      	str	r3, [r7, #48]	; 0x30
 80035b4:	2326      	movs	r3, #38	; 0x26
 80035b6:	18fb      	adds	r3, r7, r3
 80035b8:	881b      	ldrh	r3, [r3, #0]
 80035ba:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 80035bc:	429a      	cmp	r2, r3
 80035be:	dba7      	blt.n	8003510 <get_gyro_staticShift+0x20>
 80035c0:	2300      	movs	r3, #0
 80035c2:	62bb      	str	r3, [r7, #40]	; 0x28
 80035c4:	e017      	b.n	80035f6 <get_gyro_staticShift+0x106>
 80035c6:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80035c8:	009b      	lsls	r3, r3, #2
 80035ca:	687a      	ldr	r2, [r7, #4]
 80035cc:	18d3      	adds	r3, r2, r3
 80035ce:	681d      	ldr	r5, [r3, #0]
 80035d0:	2326      	movs	r3, #38	; 0x26
 80035d2:	18fb      	adds	r3, r7, r3
 80035d4:	881b      	ldrh	r3, [r3, #0]
 80035d6:	0018      	movs	r0, r3
 80035d8:	f7fd fcc4 	bl	8000f64 <__aeabi_i2f>
 80035dc:	1c01      	adds	r1, r0, #0
 80035de:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80035e0:	009b      	lsls	r3, r3, #2
 80035e2:	687a      	ldr	r2, [r7, #4]
 80035e4:	18d4      	adds	r4, r2, r3
 80035e6:	1c28      	adds	r0, r5, #0
 80035e8:	f7fc ffee 	bl	80005c8 <__aeabi_fdiv>
 80035ec:	1c03      	adds	r3, r0, #0
 80035ee:	6023      	str	r3, [r4, #0]
 80035f0:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80035f2:	3301      	adds	r3, #1
 80035f4:	62bb      	str	r3, [r7, #40]	; 0x28
 80035f6:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80035f8:	2b02      	cmp	r3, #2
 80035fa:	dde4      	ble.n	80035c6 <get_gyro_staticShift+0xd6>
 80035fc:	e000      	b.n	8003600 <get_gyro_staticShift+0x110>
 80035fe:	46c0      	nop			; (mov r8, r8)
 8003600:	2337      	movs	r3, #55	; 0x37
 8003602:	18fb      	adds	r3, r7, r3
 8003604:	781b      	ldrb	r3, [r3, #0]
 8003606:	0018      	movs	r0, r3
 8003608:	46bd      	mov	sp, r7
 800360a:	b00e      	add	sp, #56	; 0x38
 800360c:	bdb0      	pop	{r4, r5, r7, pc}
	...

08003610 <get_accel_staticShift>:
 8003610:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003612:	46de      	mov	lr, fp
 8003614:	4657      	mov	r7, sl
 8003616:	464e      	mov	r6, r9
 8003618:	4645      	mov	r5, r8
 800361a:	b5e0      	push	{r5, r6, r7, lr}
 800361c:	b0af      	sub	sp, #188	; 0xbc
 800361e:	af08      	add	r7, sp, #32
 8003620:	60f8      	str	r0, [r7, #12]
 8003622:	60b9      	str	r1, [r7, #8]
 8003624:	238f      	movs	r3, #143	; 0x8f
 8003626:	2208      	movs	r2, #8
 8003628:	4694      	mov	ip, r2
 800362a:	44bc      	add	ip, r7
 800362c:	4463      	add	r3, ip
 800362e:	2200      	movs	r2, #0
 8003630:	701a      	strb	r2, [r3, #0]
 8003632:	2376      	movs	r3, #118	; 0x76
 8003634:	2208      	movs	r2, #8
 8003636:	4694      	mov	ip, r2
 8003638:	44bc      	add	ip, r7
 800363a:	4463      	add	r3, ip
 800363c:	2296      	movs	r2, #150	; 0x96
 800363e:	0052      	lsls	r2, r2, #1
 8003640:	801a      	strh	r2, [r3, #0]
 8003642:	2300      	movs	r3, #0
 8003644:	67bb      	str	r3, [r7, #120]	; 0x78
 8003646:	f7ff ff29 	bl	800349c <getTime_s>
 800364a:	1c03      	adds	r3, r0, #0
 800364c:	2288      	movs	r2, #136	; 0x88
 800364e:	2108      	movs	r1, #8
 8003650:	468c      	mov	ip, r1
 8003652:	44bc      	add	ip, r7
 8003654:	4462      	add	r2, ip
 8003656:	6013      	str	r3, [r2, #0]
 8003658:	2300      	movs	r3, #0
 800365a:	2284      	movs	r2, #132	; 0x84
 800365c:	2108      	movs	r1, #8
 800365e:	468c      	mov	ip, r1
 8003660:	44bc      	add	ip, r7
 8003662:	4462      	add	r2, ip
 8003664:	6013      	str	r3, [r2, #0]
 8003666:	e18f      	b.n	8003988 <get_accel_staticShift+0x378>
 8003668:	2168      	movs	r1, #104	; 0x68
 800366a:	2508      	movs	r5, #8
 800366c:	197b      	adds	r3, r7, r5
 800366e:	185b      	adds	r3, r3, r1
 8003670:	2200      	movs	r2, #0
 8003672:	801a      	strh	r2, [r3, #0]
 8003674:	197b      	adds	r3, r7, r5
 8003676:	185b      	adds	r3, r3, r1
 8003678:	2200      	movs	r2, #0
 800367a:	805a      	strh	r2, [r3, #2]
 800367c:	197b      	adds	r3, r7, r5
 800367e:	185b      	adds	r3, r3, r1
 8003680:	2200      	movs	r2, #0
 8003682:	809a      	strh	r2, [r3, #4]
 8003684:	2060      	movs	r0, #96	; 0x60
 8003686:	197b      	adds	r3, r7, r5
 8003688:	181b      	adds	r3, r3, r0
 800368a:	2200      	movs	r2, #0
 800368c:	801a      	strh	r2, [r3, #0]
 800368e:	197b      	adds	r3, r7, r5
 8003690:	181b      	adds	r3, r3, r0
 8003692:	2200      	movs	r2, #0
 8003694:	805a      	strh	r2, [r3, #2]
 8003696:	197b      	adds	r3, r7, r5
 8003698:	181b      	adds	r3, r3, r0
 800369a:	2200      	movs	r2, #0
 800369c:	809a      	strh	r2, [r3, #4]
 800369e:	2458      	movs	r4, #88	; 0x58
 80036a0:	197b      	adds	r3, r7, r5
 80036a2:	191b      	adds	r3, r3, r4
 80036a4:	2200      	movs	r2, #0
 80036a6:	801a      	strh	r2, [r3, #0]
 80036a8:	197b      	adds	r3, r7, r5
 80036aa:	191b      	adds	r3, r3, r4
 80036ac:	2200      	movs	r2, #0
 80036ae:	805a      	strh	r2, [r3, #2]
 80036b0:	197b      	adds	r3, r7, r5
 80036b2:	191b      	adds	r3, r3, r4
 80036b4:	2200      	movs	r2, #0
 80036b6:	809a      	strh	r2, [r3, #4]
 80036b8:	244c      	movs	r4, #76	; 0x4c
 80036ba:	197b      	adds	r3, r7, r5
 80036bc:	191b      	adds	r3, r3, r4
 80036be:	2200      	movs	r2, #0
 80036c0:	601a      	str	r2, [r3, #0]
 80036c2:	197b      	adds	r3, r7, r5
 80036c4:	191b      	adds	r3, r3, r4
 80036c6:	2200      	movs	r2, #0
 80036c8:	605a      	str	r2, [r3, #4]
 80036ca:	197b      	adds	r3, r7, r5
 80036cc:	191b      	adds	r3, r3, r4
 80036ce:	2200      	movs	r2, #0
 80036d0:	609a      	str	r2, [r3, #8]
 80036d2:	2440      	movs	r4, #64	; 0x40
 80036d4:	197b      	adds	r3, r7, r5
 80036d6:	191b      	adds	r3, r3, r4
 80036d8:	2200      	movs	r2, #0
 80036da:	601a      	str	r2, [r3, #0]
 80036dc:	197b      	adds	r3, r7, r5
 80036de:	191b      	adds	r3, r3, r4
 80036e0:	2200      	movs	r2, #0
 80036e2:	605a      	str	r2, [r3, #4]
 80036e4:	197b      	adds	r3, r7, r5
 80036e6:	191b      	adds	r3, r3, r4
 80036e8:	2200      	movs	r2, #0
 80036ea:	609a      	str	r2, [r3, #8]
 80036ec:	2434      	movs	r4, #52	; 0x34
 80036ee:	197b      	adds	r3, r7, r5
 80036f0:	191b      	adds	r3, r3, r4
 80036f2:	2200      	movs	r2, #0
 80036f4:	601a      	str	r2, [r3, #0]
 80036f6:	197b      	adds	r3, r7, r5
 80036f8:	191b      	adds	r3, r3, r4
 80036fa:	2200      	movs	r2, #0
 80036fc:	605a      	str	r2, [r3, #4]
 80036fe:	197b      	adds	r3, r7, r5
 8003700:	191b      	adds	r3, r3, r4
 8003702:	2200      	movs	r2, #0
 8003704:	609a      	str	r2, [r3, #8]
 8003706:	2428      	movs	r4, #40	; 0x28
 8003708:	197b      	adds	r3, r7, r5
 800370a:	191b      	adds	r3, r3, r4
 800370c:	2200      	movs	r2, #0
 800370e:	601a      	str	r2, [r3, #0]
 8003710:	197b      	adds	r3, r7, r5
 8003712:	191b      	adds	r3, r3, r4
 8003714:	2200      	movs	r2, #0
 8003716:	605a      	str	r2, [r3, #4]
 8003718:	197b      	adds	r3, r7, r5
 800371a:	191b      	adds	r3, r3, r4
 800371c:	2200      	movs	r2, #0
 800371e:	609a      	str	r2, [r3, #8]
 8003720:	241c      	movs	r4, #28
 8003722:	197b      	adds	r3, r7, r5
 8003724:	191b      	adds	r3, r3, r4
 8003726:	2200      	movs	r2, #0
 8003728:	601a      	str	r2, [r3, #0]
 800372a:	197b      	adds	r3, r7, r5
 800372c:	191b      	adds	r3, r3, r4
 800372e:	2200      	movs	r2, #0
 8003730:	605a      	str	r2, [r3, #4]
 8003732:	197b      	adds	r3, r7, r5
 8003734:	191b      	adds	r3, r3, r4
 8003736:	2200      	movs	r2, #0
 8003738:	609a      	str	r2, [r3, #8]
 800373a:	002c      	movs	r4, r5
 800373c:	193b      	adds	r3, r7, r4
 800373e:	181a      	adds	r2, r3, r0
 8003740:	193b      	adds	r3, r7, r4
 8003742:	185b      	adds	r3, r3, r1
 8003744:	0011      	movs	r1, r2
 8003746:	0018      	movs	r0, r3
 8003748:	f001 fcd7 	bl	80050fa <mpu9255_readIMU>
 800374c:	0002      	movs	r2, r0
 800374e:	218f      	movs	r1, #143	; 0x8f
 8003750:	0020      	movs	r0, r4
 8003752:	183b      	adds	r3, r7, r0
 8003754:	185b      	adds	r3, r3, r1
 8003756:	701a      	strb	r2, [r3, #0]
 8003758:	183b      	adds	r3, r7, r0
 800375a:	185b      	adds	r3, r3, r1
 800375c:	781b      	ldrb	r3, [r3, #0]
 800375e:	2b00      	cmp	r3, #0
 8003760:	d000      	beq.n	8003764 <get_accel_staticShift+0x154>
 8003762:	e14d      	b.n	8003a00 <get_accel_staticShift+0x3f0>
 8003764:	2358      	movs	r3, #88	; 0x58
 8003766:	2208      	movs	r2, #8
 8003768:	4694      	mov	ip, r2
 800376a:	44bc      	add	ip, r7
 800376c:	4463      	add	r3, ip
 800376e:	0018      	movs	r0, r3
 8003770:	f001 fd19 	bl	80051a6 <mpu9255_readCompass>
 8003774:	0002      	movs	r2, r0
 8003776:	218f      	movs	r1, #143	; 0x8f
 8003778:	2008      	movs	r0, #8
 800377a:	183b      	adds	r3, r7, r0
 800377c:	185b      	adds	r3, r3, r1
 800377e:	701a      	strb	r2, [r3, #0]
 8003780:	183b      	adds	r3, r7, r0
 8003782:	185b      	adds	r3, r3, r1
 8003784:	781b      	ldrb	r3, [r3, #0]
 8003786:	2b00      	cmp	r3, #0
 8003788:	d000      	beq.n	800378c <get_accel_staticShift+0x17c>
 800378a:	e13b      	b.n	8003a04 <get_accel_staticShift+0x3f4>
 800378c:	2334      	movs	r3, #52	; 0x34
 800378e:	2408      	movs	r4, #8
 8003790:	193a      	adds	r2, r7, r4
 8003792:	18d2      	adds	r2, r2, r3
 8003794:	2360      	movs	r3, #96	; 0x60
 8003796:	2108      	movs	r1, #8
 8003798:	468c      	mov	ip, r1
 800379a:	44bc      	add	ip, r7
 800379c:	4463      	add	r3, ip
 800379e:	0011      	movs	r1, r2
 80037a0:	0018      	movs	r0, r3
 80037a2:	f001 fdf7 	bl	8005394 <mpu9255_recalcGyro>
 80037a6:	234c      	movs	r3, #76	; 0x4c
 80037a8:	193a      	adds	r2, r7, r4
 80037aa:	18d2      	adds	r2, r2, r3
 80037ac:	2368      	movs	r3, #104	; 0x68
 80037ae:	2108      	movs	r1, #8
 80037b0:	468c      	mov	ip, r1
 80037b2:	44bc      	add	ip, r7
 80037b4:	4463      	add	r3, ip
 80037b6:	0011      	movs	r1, r2
 80037b8:	0018      	movs	r0, r3
 80037ba:	f001 fd47 	bl	800524c <mpu9255_recalcAccel>
 80037be:	2328      	movs	r3, #40	; 0x28
 80037c0:	193a      	adds	r2, r7, r4
 80037c2:	18d2      	adds	r2, r2, r3
 80037c4:	2358      	movs	r3, #88	; 0x58
 80037c6:	2108      	movs	r1, #8
 80037c8:	468c      	mov	ip, r1
 80037ca:	44bc      	add	ip, r7
 80037cc:	4463      	add	r3, ip
 80037ce:	0011      	movs	r1, r2
 80037d0:	0018      	movs	r0, r3
 80037d2:	f001 fe6d 	bl	80054b0 <mpu9255_recalcCompass>
 80037d6:	f7ff fe61 	bl	800349c <getTime_s>
 80037da:	1c03      	adds	r3, r0, #0
 80037dc:	67bb      	str	r3, [r7, #120]	; 0x78
 80037de:	2300      	movs	r3, #0
 80037e0:	2280      	movs	r2, #128	; 0x80
 80037e2:	2108      	movs	r1, #8
 80037e4:	468c      	mov	ip, r1
 80037e6:	44bc      	add	ip, r7
 80037e8:	4462      	add	r2, ip
 80037ea:	6013      	str	r3, [r2, #0]
 80037ec:	e023      	b.n	8003836 <get_accel_staticShift+0x226>
 80037ee:	2534      	movs	r5, #52	; 0x34
 80037f0:	2608      	movs	r6, #8
 80037f2:	19bb      	adds	r3, r7, r6
 80037f4:	195b      	adds	r3, r3, r5
 80037f6:	2480      	movs	r4, #128	; 0x80
 80037f8:	19ba      	adds	r2, r7, r6
 80037fa:	1912      	adds	r2, r2, r4
 80037fc:	6812      	ldr	r2, [r2, #0]
 80037fe:	0092      	lsls	r2, r2, #2
 8003800:	58d0      	ldr	r0, [r2, r3]
 8003802:	19bb      	adds	r3, r7, r6
 8003804:	191b      	adds	r3, r3, r4
 8003806:	681b      	ldr	r3, [r3, #0]
 8003808:	009b      	lsls	r3, r3, #2
 800380a:	68fa      	ldr	r2, [r7, #12]
 800380c:	18d3      	adds	r3, r2, r3
 800380e:	681b      	ldr	r3, [r3, #0]
 8003810:	1c19      	adds	r1, r3, #0
 8003812:	f7fd f9e3 	bl	8000bdc <__aeabi_fsub>
 8003816:	1c03      	adds	r3, r0, #0
 8003818:	1c19      	adds	r1, r3, #0
 800381a:	19bb      	adds	r3, r7, r6
 800381c:	195b      	adds	r3, r3, r5
 800381e:	19ba      	adds	r2, r7, r6
 8003820:	1912      	adds	r2, r2, r4
 8003822:	6812      	ldr	r2, [r2, #0]
 8003824:	0092      	lsls	r2, r2, #2
 8003826:	50d1      	str	r1, [r2, r3]
 8003828:	19bb      	adds	r3, r7, r6
 800382a:	191b      	adds	r3, r3, r4
 800382c:	681b      	ldr	r3, [r3, #0]
 800382e:	3301      	adds	r3, #1
 8003830:	19ba      	adds	r2, r7, r6
 8003832:	1912      	adds	r2, r2, r4
 8003834:	6013      	str	r3, [r2, #0]
 8003836:	2380      	movs	r3, #128	; 0x80
 8003838:	2208      	movs	r2, #8
 800383a:	4694      	mov	ip, r2
 800383c:	44bc      	add	ip, r7
 800383e:	4463      	add	r3, ip
 8003840:	681b      	ldr	r3, [r3, #0]
 8003842:	2b02      	cmp	r3, #2
 8003844:	ddd3      	ble.n	80037ee <get_accel_staticShift+0x1de>
 8003846:	230c      	movs	r3, #12
 8003848:	2208      	movs	r2, #8
 800384a:	4694      	mov	ip, r2
 800384c:	44bc      	add	ip, r7
 800384e:	4463      	add	r3, ip
 8003850:	0018      	movs	r0, r3
 8003852:	2310      	movs	r3, #16
 8003854:	001a      	movs	r2, r3
 8003856:	2100      	movs	r1, #0
 8003858:	f004 fffb 	bl	8008852 <memset>
 800385c:	2134      	movs	r1, #52	; 0x34
 800385e:	2008      	movs	r0, #8
 8003860:	183b      	adds	r3, r7, r0
 8003862:	185b      	adds	r3, r3, r1
 8003864:	681a      	ldr	r2, [r3, #0]
 8003866:	4693      	mov	fp, r2
 8003868:	183b      	adds	r3, r7, r0
 800386a:	185b      	adds	r3, r3, r1
 800386c:	685a      	ldr	r2, [r3, #4]
 800386e:	607a      	str	r2, [r7, #4]
 8003870:	183b      	adds	r3, r7, r0
 8003872:	185b      	adds	r3, r3, r1
 8003874:	6899      	ldr	r1, [r3, #8]
 8003876:	6039      	str	r1, [r7, #0]
 8003878:	214c      	movs	r1, #76	; 0x4c
 800387a:	183b      	adds	r3, r7, r0
 800387c:	185b      	adds	r3, r3, r1
 800387e:	681c      	ldr	r4, [r3, #0]
 8003880:	0002      	movs	r2, r0
 8003882:	18bb      	adds	r3, r7, r2
 8003884:	185b      	adds	r3, r3, r1
 8003886:	685d      	ldr	r5, [r3, #4]
 8003888:	0010      	movs	r0, r2
 800388a:	18bb      	adds	r3, r7, r2
 800388c:	185b      	adds	r3, r3, r1
 800388e:	689e      	ldr	r6, [r3, #8]
 8003890:	2228      	movs	r2, #40	; 0x28
 8003892:	0001      	movs	r1, r0
 8003894:	187b      	adds	r3, r7, r1
 8003896:	189b      	adds	r3, r3, r2
 8003898:	6818      	ldr	r0, [r3, #0]
 800389a:	4680      	mov	r8, r0
 800389c:	187b      	adds	r3, r7, r1
 800389e:	189b      	adds	r3, r3, r2
 80038a0:	6858      	ldr	r0, [r3, #4]
 80038a2:	4681      	mov	r9, r0
 80038a4:	187b      	adds	r3, r7, r1
 80038a6:	189b      	adds	r3, r3, r2
 80038a8:	6898      	ldr	r0, [r3, #8]
 80038aa:	4682      	mov	sl, r0
 80038ac:	2088      	movs	r0, #136	; 0x88
 80038ae:	2308      	movs	r3, #8
 80038b0:	469c      	mov	ip, r3
 80038b2:	44bc      	add	ip, r7
 80038b4:	4460      	add	r0, ip
 80038b6:	6801      	ldr	r1, [r0, #0]
 80038b8:	6fb8      	ldr	r0, [r7, #120]	; 0x78
 80038ba:	f7fd f98f 	bl	8000bdc <__aeabi_fsub>
 80038be:	1c03      	adds	r3, r0, #0
 80038c0:	1c1a      	adds	r2, r3, #0
 80038c2:	200c      	movs	r0, #12
 80038c4:	2308      	movs	r3, #8
 80038c6:	469c      	mov	ip, r3
 80038c8:	44bc      	add	ip, r7
 80038ca:	4460      	add	r0, ip
 80038cc:	4b55      	ldr	r3, [pc, #340]	; (8003a24 <get_accel_staticShift+0x414>)
 80038ce:	9307      	str	r3, [sp, #28]
 80038d0:	9206      	str	r2, [sp, #24]
 80038d2:	4652      	mov	r2, sl
 80038d4:	9205      	str	r2, [sp, #20]
 80038d6:	464a      	mov	r2, r9
 80038d8:	9204      	str	r2, [sp, #16]
 80038da:	4642      	mov	r2, r8
 80038dc:	9203      	str	r2, [sp, #12]
 80038de:	9602      	str	r6, [sp, #8]
 80038e0:	9501      	str	r5, [sp, #4]
 80038e2:	9400      	str	r4, [sp, #0]
 80038e4:	683b      	ldr	r3, [r7, #0]
 80038e6:	687a      	ldr	r2, [r7, #4]
 80038e8:	4659      	mov	r1, fp
 80038ea:	f001 fffd 	bl	80058e8 <MadgwickAHRSupdate>
 80038ee:	2240      	movs	r2, #64	; 0x40
 80038f0:	2308      	movs	r3, #8
 80038f2:	469c      	mov	ip, r3
 80038f4:	44bc      	add	ip, r7
 80038f6:	4462      	add	r2, ip
 80038f8:	200c      	movs	r0, #12
 80038fa:	2108      	movs	r1, #8
 80038fc:	187b      	adds	r3, r7, r1
 80038fe:	1819      	adds	r1, r3, r0
 8003900:	234c      	movs	r3, #76	; 0x4c
 8003902:	2008      	movs	r0, #8
 8003904:	4684      	mov	ip, r0
 8003906:	44bc      	add	ip, r7
 8003908:	4463      	add	r3, ip
 800390a:	0018      	movs	r0, r3
 800390c:	f004 fec7 	bl	800869e <vect_rotate>
 8003910:	2300      	movs	r3, #0
 8003912:	2284      	movs	r2, #132	; 0x84
 8003914:	18ba      	adds	r2, r7, r2
 8003916:	6013      	str	r3, [r2, #0]
 8003918:	e01f      	b.n	800395a <get_accel_staticShift+0x34a>
 800391a:	2184      	movs	r1, #132	; 0x84
 800391c:	187b      	adds	r3, r7, r1
 800391e:	681b      	ldr	r3, [r3, #0]
 8003920:	009b      	lsls	r3, r3, #2
 8003922:	68ba      	ldr	r2, [r7, #8]
 8003924:	18d3      	adds	r3, r2, r3
 8003926:	6818      	ldr	r0, [r3, #0]
 8003928:	2340      	movs	r3, #64	; 0x40
 800392a:	2208      	movs	r2, #8
 800392c:	4694      	mov	ip, r2
 800392e:	44bc      	add	ip, r7
 8003930:	4463      	add	r3, ip
 8003932:	000d      	movs	r5, r1
 8003934:	197a      	adds	r2, r7, r5
 8003936:	6812      	ldr	r2, [r2, #0]
 8003938:	0092      	lsls	r2, r2, #2
 800393a:	58d1      	ldr	r1, [r2, r3]
 800393c:	197b      	adds	r3, r7, r5
 800393e:	681b      	ldr	r3, [r3, #0]
 8003940:	009b      	lsls	r3, r3, #2
 8003942:	68ba      	ldr	r2, [r7, #8]
 8003944:	18d4      	adds	r4, r2, r3
 8003946:	f7fc fca5 	bl	8000294 <__aeabi_fadd>
 800394a:	1c03      	adds	r3, r0, #0
 800394c:	6023      	str	r3, [r4, #0]
 800394e:	0029      	movs	r1, r5
 8003950:	187b      	adds	r3, r7, r1
 8003952:	681b      	ldr	r3, [r3, #0]
 8003954:	3301      	adds	r3, #1
 8003956:	187a      	adds	r2, r7, r1
 8003958:	6013      	str	r3, [r2, #0]
 800395a:	2384      	movs	r3, #132	; 0x84
 800395c:	18fb      	adds	r3, r7, r3
 800395e:	681b      	ldr	r3, [r3, #0]
 8003960:	2b02      	cmp	r3, #2
 8003962:	ddda      	ble.n	800391a <get_accel_staticShift+0x30a>
 8003964:	6fbb      	ldr	r3, [r7, #120]	; 0x78
 8003966:	2288      	movs	r2, #136	; 0x88
 8003968:	2108      	movs	r1, #8
 800396a:	468c      	mov	ip, r1
 800396c:	44bc      	add	ip, r7
 800396e:	4462      	add	r2, ip
 8003970:	6013      	str	r3, [r2, #0]
 8003972:	2284      	movs	r2, #132	; 0x84
 8003974:	2308      	movs	r3, #8
 8003976:	18fb      	adds	r3, r7, r3
 8003978:	189b      	adds	r3, r3, r2
 800397a:	681b      	ldr	r3, [r3, #0]
 800397c:	3301      	adds	r3, #1
 800397e:	2108      	movs	r1, #8
 8003980:	468c      	mov	ip, r1
 8003982:	44bc      	add	ip, r7
 8003984:	4462      	add	r2, ip
 8003986:	6013      	str	r3, [r2, #0]
 8003988:	2376      	movs	r3, #118	; 0x76
 800398a:	2208      	movs	r2, #8
 800398c:	4694      	mov	ip, r2
 800398e:	44bc      	add	ip, r7
 8003990:	4463      	add	r3, ip
 8003992:	881b      	ldrh	r3, [r3, #0]
 8003994:	2284      	movs	r2, #132	; 0x84
 8003996:	2108      	movs	r1, #8
 8003998:	468c      	mov	ip, r1
 800399a:	44bc      	add	ip, r7
 800399c:	4462      	add	r2, ip
 800399e:	6812      	ldr	r2, [r2, #0]
 80039a0:	429a      	cmp	r2, r3
 80039a2:	da00      	bge.n	80039a6 <get_accel_staticShift+0x396>
 80039a4:	e660      	b.n	8003668 <get_accel_staticShift+0x58>
 80039a6:	2300      	movs	r3, #0
 80039a8:	2280      	movs	r2, #128	; 0x80
 80039aa:	18ba      	adds	r2, r7, r2
 80039ac:	6013      	str	r3, [r2, #0]
 80039ae:	e021      	b.n	80039f4 <get_accel_staticShift+0x3e4>
 80039b0:	2480      	movs	r4, #128	; 0x80
 80039b2:	193b      	adds	r3, r7, r4
 80039b4:	681b      	ldr	r3, [r3, #0]
 80039b6:	009b      	lsls	r3, r3, #2
 80039b8:	68ba      	ldr	r2, [r7, #8]
 80039ba:	18d3      	adds	r3, r2, r3
 80039bc:	681d      	ldr	r5, [r3, #0]
 80039be:	2376      	movs	r3, #118	; 0x76
 80039c0:	2208      	movs	r2, #8
 80039c2:	4694      	mov	ip, r2
 80039c4:	44bc      	add	ip, r7
 80039c6:	4463      	add	r3, ip
 80039c8:	881b      	ldrh	r3, [r3, #0]
 80039ca:	0018      	movs	r0, r3
 80039cc:	f7fd faca 	bl	8000f64 <__aeabi_i2f>
 80039d0:	1c01      	adds	r1, r0, #0
 80039d2:	0026      	movs	r6, r4
 80039d4:	193b      	adds	r3, r7, r4
 80039d6:	681b      	ldr	r3, [r3, #0]
 80039d8:	009b      	lsls	r3, r3, #2
 80039da:	68ba      	ldr	r2, [r7, #8]
 80039dc:	18d4      	adds	r4, r2, r3
 80039de:	1c28      	adds	r0, r5, #0
 80039e0:	f7fc fdf2 	bl	80005c8 <__aeabi_fdiv>
 80039e4:	1c03      	adds	r3, r0, #0
 80039e6:	6023      	str	r3, [r4, #0]
 80039e8:	0034      	movs	r4, r6
 80039ea:	193b      	adds	r3, r7, r4
 80039ec:	681b      	ldr	r3, [r3, #0]
 80039ee:	3301      	adds	r3, #1
 80039f0:	193a      	adds	r2, r7, r4
 80039f2:	6013      	str	r3, [r2, #0]
 80039f4:	2380      	movs	r3, #128	; 0x80
 80039f6:	18fb      	adds	r3, r7, r3
 80039f8:	681b      	ldr	r3, [r3, #0]
 80039fa:	2b02      	cmp	r3, #2
 80039fc:	ddd8      	ble.n	80039b0 <get_accel_staticShift+0x3a0>
 80039fe:	e002      	b.n	8003a06 <get_accel_staticShift+0x3f6>
 8003a00:	46c0      	nop			; (mov r8, r8)
 8003a02:	e000      	b.n	8003a06 <get_accel_staticShift+0x3f6>
 8003a04:	46c0      	nop			; (mov r8, r8)
 8003a06:	238f      	movs	r3, #143	; 0x8f
 8003a08:	2208      	movs	r2, #8
 8003a0a:	4694      	mov	ip, r2
 8003a0c:	44bc      	add	ip, r7
 8003a0e:	4463      	add	r3, ip
 8003a10:	781b      	ldrb	r3, [r3, #0]
 8003a12:	0018      	movs	r0, r3
 8003a14:	46bd      	mov	sp, r7
 8003a16:	b027      	add	sp, #156	; 0x9c
 8003a18:	bc3c      	pop	{r2, r3, r4, r5}
 8003a1a:	4690      	mov	r8, r2
 8003a1c:	4699      	mov	r9, r3
 8003a1e:	46a2      	mov	sl, r4
 8003a20:	46ab      	mov	fp, r5
 8003a22:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003a24:	3f19999a 	.word	0x3f19999a

08003a28 <IMU_updateDataAll>:
 8003a28:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003a2a:	b0bb      	sub	sp, #236	; 0xec
 8003a2c:	af06      	add	r7, sp, #24
 8003a2e:	2300      	movs	r3, #0
 8003a30:	24cc      	movs	r4, #204	; 0xcc
 8003a32:	193a      	adds	r2, r7, r4
 8003a34:	6013      	str	r3, [r2, #0]
 8003a36:	219c      	movs	r1, #156	; 0x9c
 8003a38:	187b      	adds	r3, r7, r1
 8003a3a:	2200      	movs	r2, #0
 8003a3c:	801a      	strh	r2, [r3, #0]
 8003a3e:	187b      	adds	r3, r7, r1
 8003a40:	2200      	movs	r2, #0
 8003a42:	805a      	strh	r2, [r3, #2]
 8003a44:	187b      	adds	r3, r7, r1
 8003a46:	2200      	movs	r2, #0
 8003a48:	809a      	strh	r2, [r3, #4]
 8003a4a:	2094      	movs	r0, #148	; 0x94
 8003a4c:	183b      	adds	r3, r7, r0
 8003a4e:	2200      	movs	r2, #0
 8003a50:	801a      	strh	r2, [r3, #0]
 8003a52:	183b      	adds	r3, r7, r0
 8003a54:	2200      	movs	r2, #0
 8003a56:	805a      	strh	r2, [r3, #2]
 8003a58:	183b      	adds	r3, r7, r0
 8003a5a:	2200      	movs	r2, #0
 8003a5c:	809a      	strh	r2, [r3, #4]
 8003a5e:	258c      	movs	r5, #140	; 0x8c
 8003a60:	197b      	adds	r3, r7, r5
 8003a62:	2200      	movs	r2, #0
 8003a64:	801a      	strh	r2, [r3, #0]
 8003a66:	197b      	adds	r3, r7, r5
 8003a68:	2200      	movs	r2, #0
 8003a6a:	805a      	strh	r2, [r3, #2]
 8003a6c:	197b      	adds	r3, r7, r5
 8003a6e:	2200      	movs	r2, #0
 8003a70:	809a      	strh	r2, [r3, #4]
 8003a72:	2580      	movs	r5, #128	; 0x80
 8003a74:	197b      	adds	r3, r7, r5
 8003a76:	2200      	movs	r2, #0
 8003a78:	601a      	str	r2, [r3, #0]
 8003a7a:	197b      	adds	r3, r7, r5
 8003a7c:	2200      	movs	r2, #0
 8003a7e:	605a      	str	r2, [r3, #4]
 8003a80:	197b      	adds	r3, r7, r5
 8003a82:	2200      	movs	r2, #0
 8003a84:	609a      	str	r2, [r3, #8]
 8003a86:	2574      	movs	r5, #116	; 0x74
 8003a88:	197b      	adds	r3, r7, r5
 8003a8a:	2200      	movs	r2, #0
 8003a8c:	601a      	str	r2, [r3, #0]
 8003a8e:	197b      	adds	r3, r7, r5
 8003a90:	2200      	movs	r2, #0
 8003a92:	605a      	str	r2, [r3, #4]
 8003a94:	197b      	adds	r3, r7, r5
 8003a96:	2200      	movs	r2, #0
 8003a98:	609a      	str	r2, [r3, #8]
 8003a9a:	2568      	movs	r5, #104	; 0x68
 8003a9c:	197b      	adds	r3, r7, r5
 8003a9e:	2200      	movs	r2, #0
 8003aa0:	601a      	str	r2, [r3, #0]
 8003aa2:	197b      	adds	r3, r7, r5
 8003aa4:	2200      	movs	r2, #0
 8003aa6:	605a      	str	r2, [r3, #4]
 8003aa8:	197b      	adds	r3, r7, r5
 8003aaa:	2200      	movs	r2, #0
 8003aac:	609a      	str	r2, [r3, #8]
 8003aae:	183a      	adds	r2, r7, r0
 8003ab0:	187b      	adds	r3, r7, r1
 8003ab2:	0011      	movs	r1, r2
 8003ab4:	0018      	movs	r0, r3
 8003ab6:	f001 fb20 	bl	80050fa <mpu9255_readIMU>
 8003aba:	0003      	movs	r3, r0
 8003abc:	193a      	adds	r2, r7, r4
 8003abe:	6013      	str	r3, [r2, #0]
 8003ac0:	193b      	adds	r3, r7, r4
 8003ac2:	681b      	ldr	r3, [r3, #0]
 8003ac4:	2b00      	cmp	r3, #0
 8003ac6:	d000      	beq.n	8003aca <IMU_updateDataAll+0xa2>
 8003ac8:	e23f      	b.n	8003f4a <IMU_updateDataAll+0x522>
 8003aca:	238c      	movs	r3, #140	; 0x8c
 8003acc:	18fb      	adds	r3, r7, r3
 8003ace:	0018      	movs	r0, r3
 8003ad0:	f001 fb69 	bl	80051a6 <mpu9255_readCompass>
 8003ad4:	0003      	movs	r3, r0
 8003ad6:	22cc      	movs	r2, #204	; 0xcc
 8003ad8:	18b9      	adds	r1, r7, r2
 8003ada:	600b      	str	r3, [r1, #0]
 8003adc:	18bb      	adds	r3, r7, r2
 8003ade:	681b      	ldr	r3, [r3, #0]
 8003ae0:	2b00      	cmp	r3, #0
 8003ae2:	d000      	beq.n	8003ae6 <IMU_updateDataAll+0xbe>
 8003ae4:	e233      	b.n	8003f4e <IMU_updateDataAll+0x526>
 8003ae6:	2380      	movs	r3, #128	; 0x80
 8003ae8:	18fa      	adds	r2, r7, r3
 8003aea:	239c      	movs	r3, #156	; 0x9c
 8003aec:	18fb      	adds	r3, r7, r3
 8003aee:	0011      	movs	r1, r2
 8003af0:	0018      	movs	r0, r3
 8003af2:	f001 fbab 	bl	800524c <mpu9255_recalcAccel>
 8003af6:	2374      	movs	r3, #116	; 0x74
 8003af8:	18fa      	adds	r2, r7, r3
 8003afa:	2394      	movs	r3, #148	; 0x94
 8003afc:	18fb      	adds	r3, r7, r3
 8003afe:	0011      	movs	r1, r2
 8003b00:	0018      	movs	r0, r3
 8003b02:	f001 fc47 	bl	8005394 <mpu9255_recalcGyro>
 8003b06:	2368      	movs	r3, #104	; 0x68
 8003b08:	18fa      	adds	r2, r7, r3
 8003b0a:	238c      	movs	r3, #140	; 0x8c
 8003b0c:	18fb      	adds	r3, r7, r3
 8003b0e:	0011      	movs	r1, r2
 8003b10:	0018      	movs	r0, r3
 8003b12:	f001 fccd 	bl	80054b0 <mpu9255_recalcCompass>
 8003b16:	f7ff fcc1 	bl	800349c <getTime_s>
 8003b1a:	1c03      	adds	r3, r0, #0
 8003b1c:	22b4      	movs	r2, #180	; 0xb4
 8003b1e:	18b9      	adds	r1, r7, r2
 8003b20:	600b      	str	r3, [r1, #0]
 8003b22:	4be1      	ldr	r3, [pc, #900]	; (8003ea8 <IMU_updateDataAll+0x480>)
 8003b24:	18ba      	adds	r2, r7, r2
 8003b26:	6812      	ldr	r2, [r2, #0]
 8003b28:	601a      	str	r2, [r3, #0]
 8003b2a:	2300      	movs	r3, #0
 8003b2c:	22c8      	movs	r2, #200	; 0xc8
 8003b2e:	18ba      	adds	r2, r7, r2
 8003b30:	6013      	str	r3, [r2, #0]
 8003b32:	e040      	b.n	8003bb6 <IMU_updateDataAll+0x18e>
 8003b34:	2380      	movs	r3, #128	; 0x80
 8003b36:	18fb      	adds	r3, r7, r3
 8003b38:	24c8      	movs	r4, #200	; 0xc8
 8003b3a:	193a      	adds	r2, r7, r4
 8003b3c:	6812      	ldr	r2, [r2, #0]
 8003b3e:	0092      	lsls	r2, r2, #2
 8003b40:	58d1      	ldr	r1, [r2, r3]
 8003b42:	4bda      	ldr	r3, [pc, #872]	; (8003eac <IMU_updateDataAll+0x484>)
 8003b44:	193a      	adds	r2, r7, r4
 8003b46:	6812      	ldr	r2, [r2, #0]
 8003b48:	0092      	lsls	r2, r2, #2
 8003b4a:	50d1      	str	r1, [r2, r3]
 8003b4c:	2574      	movs	r5, #116	; 0x74
 8003b4e:	197b      	adds	r3, r7, r5
 8003b50:	193a      	adds	r2, r7, r4
 8003b52:	6812      	ldr	r2, [r2, #0]
 8003b54:	0092      	lsls	r2, r2, #2
 8003b56:	58d0      	ldr	r0, [r2, r3]
 8003b58:	4ad3      	ldr	r2, [pc, #844]	; (8003ea8 <IMU_updateDataAll+0x480>)
 8003b5a:	193b      	adds	r3, r7, r4
 8003b5c:	681b      	ldr	r3, [r3, #0]
 8003b5e:	009b      	lsls	r3, r3, #2
 8003b60:	18d3      	adds	r3, r2, r3
 8003b62:	3304      	adds	r3, #4
 8003b64:	681b      	ldr	r3, [r3, #0]
 8003b66:	1c19      	adds	r1, r3, #0
 8003b68:	f7fd f838 	bl	8000bdc <__aeabi_fsub>
 8003b6c:	1c03      	adds	r3, r0, #0
 8003b6e:	1c19      	adds	r1, r3, #0
 8003b70:	197b      	adds	r3, r7, r5
 8003b72:	193a      	adds	r2, r7, r4
 8003b74:	6812      	ldr	r2, [r2, #0]
 8003b76:	0092      	lsls	r2, r2, #2
 8003b78:	50d1      	str	r1, [r2, r3]
 8003b7a:	197b      	adds	r3, r7, r5
 8003b7c:	193a      	adds	r2, r7, r4
 8003b7e:	6812      	ldr	r2, [r2, #0]
 8003b80:	0092      	lsls	r2, r2, #2
 8003b82:	58d2      	ldr	r2, [r2, r3]
 8003b84:	49c9      	ldr	r1, [pc, #804]	; (8003eac <IMU_updateDataAll+0x484>)
 8003b86:	193b      	adds	r3, r7, r4
 8003b88:	681b      	ldr	r3, [r3, #0]
 8003b8a:	3302      	adds	r3, #2
 8003b8c:	009b      	lsls	r3, r3, #2
 8003b8e:	18cb      	adds	r3, r1, r3
 8003b90:	3304      	adds	r3, #4
 8003b92:	601a      	str	r2, [r3, #0]
 8003b94:	2368      	movs	r3, #104	; 0x68
 8003b96:	18fb      	adds	r3, r7, r3
 8003b98:	193a      	adds	r2, r7, r4
 8003b9a:	6812      	ldr	r2, [r2, #0]
 8003b9c:	0092      	lsls	r2, r2, #2
 8003b9e:	58d1      	ldr	r1, [r2, r3]
 8003ba0:	4bc2      	ldr	r3, [pc, #776]	; (8003eac <IMU_updateDataAll+0x484>)
 8003ba2:	193a      	adds	r2, r7, r4
 8003ba4:	6812      	ldr	r2, [r2, #0]
 8003ba6:	3206      	adds	r2, #6
 8003ba8:	0092      	lsls	r2, r2, #2
 8003baa:	50d1      	str	r1, [r2, r3]
 8003bac:	193b      	adds	r3, r7, r4
 8003bae:	681b      	ldr	r3, [r3, #0]
 8003bb0:	3301      	adds	r3, #1
 8003bb2:	193a      	adds	r2, r7, r4
 8003bb4:	6013      	str	r3, [r2, #0]
 8003bb6:	23c8      	movs	r3, #200	; 0xc8
 8003bb8:	18fb      	adds	r3, r7, r3
 8003bba:	681b      	ldr	r3, [r3, #0]
 8003bbc:	2b02      	cmp	r3, #2
 8003bbe:	ddb9      	ble.n	8003b34 <IMU_updateDataAll+0x10c>
 8003bc0:	2458      	movs	r4, #88	; 0x58
 8003bc2:	193b      	adds	r3, r7, r4
 8003bc4:	0018      	movs	r0, r3
 8003bc6:	2310      	movs	r3, #16
 8003bc8:	001a      	movs	r2, r3
 8003bca:	2100      	movs	r1, #0
 8003bcc:	f004 fe41 	bl	8008852 <memset>
 8003bd0:	4bb7      	ldr	r3, [pc, #732]	; (8003eb0 <IMU_updateDataAll+0x488>)
 8003bd2:	681b      	ldr	r3, [r3, #0]
 8003bd4:	1c19      	adds	r1, r3, #0
 8003bd6:	23b4      	movs	r3, #180	; 0xb4
 8003bd8:	18fb      	adds	r3, r7, r3
 8003bda:	6818      	ldr	r0, [r3, #0]
 8003bdc:	f7fc fffe 	bl	8000bdc <__aeabi_fsub>
 8003be0:	1c03      	adds	r3, r0, #0
 8003be2:	22b0      	movs	r2, #176	; 0xb0
 8003be4:	18b9      	adds	r1, r7, r2
 8003be6:	600b      	str	r3, [r1, #0]
 8003be8:	4bb2      	ldr	r3, [pc, #712]	; (8003eb4 <IMU_updateDataAll+0x48c>)
 8003bea:	21ac      	movs	r1, #172	; 0xac
 8003bec:	1879      	adds	r1, r7, r1
 8003bee:	600b      	str	r3, [r1, #0]
 8003bf0:	4bb1      	ldr	r3, [pc, #708]	; (8003eb8 <IMU_updateDataAll+0x490>)
 8003bf2:	21a8      	movs	r1, #168	; 0xa8
 8003bf4:	187d      	adds	r5, r7, r1
 8003bf6:	602b      	str	r3, [r5, #0]
 8003bf8:	2300      	movs	r3, #0
 8003bfa:	25a4      	movs	r5, #164	; 0xa4
 8003bfc:	197e      	adds	r6, r7, r5
 8003bfe:	6033      	str	r3, [r6, #0]
 8003c00:	2274      	movs	r2, #116	; 0x74
 8003c02:	18bb      	adds	r3, r7, r2
 8003c04:	681d      	ldr	r5, [r3, #0]
 8003c06:	18bb      	adds	r3, r7, r2
 8003c08:	685e      	ldr	r6, [r3, #4]
 8003c0a:	18bb      	adds	r3, r7, r2
 8003c0c:	689b      	ldr	r3, [r3, #8]
 8003c0e:	469c      	mov	ip, r3
 8003c10:	2080      	movs	r0, #128	; 0x80
 8003c12:	183b      	adds	r3, r7, r0
 8003c14:	681a      	ldr	r2, [r3, #0]
 8003c16:	183b      	adds	r3, r7, r0
 8003c18:	6859      	ldr	r1, [r3, #4]
 8003c1a:	183b      	adds	r3, r7, r0
 8003c1c:	689b      	ldr	r3, [r3, #8]
 8003c1e:	193c      	adds	r4, r7, r4
 8003c20:	20a4      	movs	r0, #164	; 0xa4
 8003c22:	1838      	adds	r0, r7, r0
 8003c24:	6800      	ldr	r0, [r0, #0]
 8003c26:	9005      	str	r0, [sp, #20]
 8003c28:	20a8      	movs	r0, #168	; 0xa8
 8003c2a:	1838      	adds	r0, r7, r0
 8003c2c:	6800      	ldr	r0, [r0, #0]
 8003c2e:	9004      	str	r0, [sp, #16]
 8003c30:	20b0      	movs	r0, #176	; 0xb0
 8003c32:	1838      	adds	r0, r7, r0
 8003c34:	6800      	ldr	r0, [r0, #0]
 8003c36:	9003      	str	r0, [sp, #12]
 8003c38:	9302      	str	r3, [sp, #8]
 8003c3a:	9101      	str	r1, [sp, #4]
 8003c3c:	9200      	str	r2, [sp, #0]
 8003c3e:	4663      	mov	r3, ip
 8003c40:	1c32      	adds	r2, r6, #0
 8003c42:	1c29      	adds	r1, r5, #0
 8003c44:	0020      	movs	r0, r4
 8003c46:	f003 ffd9 	bl	8007bfc <MahonyAHRSupdateIMU>
 8003c4a:	2158      	movs	r1, #88	; 0x58
 8003c4c:	187b      	adds	r3, r7, r1
 8003c4e:	681a      	ldr	r2, [r3, #0]
 8003c50:	4b9a      	ldr	r3, [pc, #616]	; (8003ebc <IMU_updateDataAll+0x494>)
 8003c52:	63da      	str	r2, [r3, #60]	; 0x3c
 8003c54:	187b      	adds	r3, r7, r1
 8003c56:	685a      	ldr	r2, [r3, #4]
 8003c58:	4b98      	ldr	r3, [pc, #608]	; (8003ebc <IMU_updateDataAll+0x494>)
 8003c5a:	641a      	str	r2, [r3, #64]	; 0x40
 8003c5c:	187b      	adds	r3, r7, r1
 8003c5e:	689a      	ldr	r2, [r3, #8]
 8003c60:	4b96      	ldr	r3, [pc, #600]	; (8003ebc <IMU_updateDataAll+0x494>)
 8003c62:	645a      	str	r2, [r3, #68]	; 0x44
 8003c64:	187b      	adds	r3, r7, r1
 8003c66:	68da      	ldr	r2, [r3, #12]
 8003c68:	4b94      	ldr	r3, [pc, #592]	; (8003ebc <IMU_updateDataAll+0x494>)
 8003c6a:	649a      	str	r2, [r3, #72]	; 0x48
 8003c6c:	244c      	movs	r4, #76	; 0x4c
 8003c6e:	193b      	adds	r3, r7, r4
 8003c70:	2200      	movs	r2, #0
 8003c72:	601a      	str	r2, [r3, #0]
 8003c74:	193b      	adds	r3, r7, r4
 8003c76:	2200      	movs	r2, #0
 8003c78:	605a      	str	r2, [r3, #4]
 8003c7a:	193b      	adds	r3, r7, r4
 8003c7c:	2200      	movs	r2, #0
 8003c7e:	609a      	str	r2, [r3, #8]
 8003c80:	2540      	movs	r5, #64	; 0x40
 8003c82:	197b      	adds	r3, r7, r5
 8003c84:	2200      	movs	r2, #0
 8003c86:	601a      	str	r2, [r3, #0]
 8003c88:	197b      	adds	r3, r7, r5
 8003c8a:	2200      	movs	r2, #0
 8003c8c:	605a      	str	r2, [r3, #4]
 8003c8e:	197b      	adds	r3, r7, r5
 8003c90:	2200      	movs	r2, #0
 8003c92:	609a      	str	r2, [r3, #8]
 8003c94:	193a      	adds	r2, r7, r4
 8003c96:	1879      	adds	r1, r7, r1
 8003c98:	2080      	movs	r0, #128	; 0x80
 8003c9a:	183b      	adds	r3, r7, r0
 8003c9c:	0018      	movs	r0, r3
 8003c9e:	f004 fcfe 	bl	800869e <vect_rotate>
 8003ca2:	2300      	movs	r3, #0
 8003ca4:	22c4      	movs	r2, #196	; 0xc4
 8003ca6:	18ba      	adds	r2, r7, r2
 8003ca8:	6013      	str	r3, [r2, #0]
 8003caa:	e01b      	b.n	8003ce4 <IMU_updateDataAll+0x2bc>
 8003cac:	254c      	movs	r5, #76	; 0x4c
 8003cae:	197b      	adds	r3, r7, r5
 8003cb0:	24c4      	movs	r4, #196	; 0xc4
 8003cb2:	193a      	adds	r2, r7, r4
 8003cb4:	6812      	ldr	r2, [r2, #0]
 8003cb6:	0092      	lsls	r2, r2, #2
 8003cb8:	58d0      	ldr	r0, [r2, r3]
 8003cba:	4b7b      	ldr	r3, [pc, #492]	; (8003ea8 <IMU_updateDataAll+0x480>)
 8003cbc:	193a      	adds	r2, r7, r4
 8003cbe:	6812      	ldr	r2, [r2, #0]
 8003cc0:	3204      	adds	r2, #4
 8003cc2:	0092      	lsls	r2, r2, #2
 8003cc4:	58d3      	ldr	r3, [r2, r3]
 8003cc6:	1c19      	adds	r1, r3, #0
 8003cc8:	f7fc ff88 	bl	8000bdc <__aeabi_fsub>
 8003ccc:	1c03      	adds	r3, r0, #0
 8003cce:	1c19      	adds	r1, r3, #0
 8003cd0:	197b      	adds	r3, r7, r5
 8003cd2:	193a      	adds	r2, r7, r4
 8003cd4:	6812      	ldr	r2, [r2, #0]
 8003cd6:	0092      	lsls	r2, r2, #2
 8003cd8:	50d1      	str	r1, [r2, r3]
 8003cda:	193b      	adds	r3, r7, r4
 8003cdc:	681b      	ldr	r3, [r3, #0]
 8003cde:	3301      	adds	r3, #1
 8003ce0:	193a      	adds	r2, r7, r4
 8003ce2:	6013      	str	r3, [r2, #0]
 8003ce4:	23c4      	movs	r3, #196	; 0xc4
 8003ce6:	18fb      	adds	r3, r7, r3
 8003ce8:	681b      	ldr	r3, [r3, #0]
 8003cea:	2b02      	cmp	r3, #2
 8003cec:	ddde      	ble.n	8003cac <IMU_updateDataAll+0x284>
 8003cee:	214c      	movs	r1, #76	; 0x4c
 8003cf0:	187b      	adds	r3, r7, r1
 8003cf2:	681a      	ldr	r2, [r3, #0]
 8003cf4:	4b71      	ldr	r3, [pc, #452]	; (8003ebc <IMU_updateDataAll+0x494>)
 8003cf6:	601a      	str	r2, [r3, #0]
 8003cf8:	187b      	adds	r3, r7, r1
 8003cfa:	685a      	ldr	r2, [r3, #4]
 8003cfc:	4b6f      	ldr	r3, [pc, #444]	; (8003ebc <IMU_updateDataAll+0x494>)
 8003cfe:	605a      	str	r2, [r3, #4]
 8003d00:	187b      	adds	r3, r7, r1
 8003d02:	689a      	ldr	r2, [r3, #8]
 8003d04:	4b6d      	ldr	r3, [pc, #436]	; (8003ebc <IMU_updateDataAll+0x494>)
 8003d06:	609a      	str	r2, [r3, #8]
 8003d08:	2168      	movs	r1, #104	; 0x68
 8003d0a:	187b      	adds	r3, r7, r1
 8003d0c:	681a      	ldr	r2, [r3, #0]
 8003d0e:	4b6b      	ldr	r3, [pc, #428]	; (8003ebc <IMU_updateDataAll+0x494>)
 8003d10:	619a      	str	r2, [r3, #24]
 8003d12:	187b      	adds	r3, r7, r1
 8003d14:	685a      	ldr	r2, [r3, #4]
 8003d16:	4b69      	ldr	r3, [pc, #420]	; (8003ebc <IMU_updateDataAll+0x494>)
 8003d18:	61da      	str	r2, [r3, #28]
 8003d1a:	187b      	adds	r3, r7, r1
 8003d1c:	689a      	ldr	r2, [r3, #8]
 8003d1e:	4b67      	ldr	r3, [pc, #412]	; (8003ebc <IMU_updateDataAll+0x494>)
 8003d20:	621a      	str	r2, [r3, #32]
 8003d22:	2134      	movs	r1, #52	; 0x34
 8003d24:	187b      	adds	r3, r7, r1
 8003d26:	2200      	movs	r2, #0
 8003d28:	601a      	str	r2, [r3, #0]
 8003d2a:	187b      	adds	r3, r7, r1
 8003d2c:	2200      	movs	r2, #0
 8003d2e:	605a      	str	r2, [r3, #4]
 8003d30:	187b      	adds	r3, r7, r1
 8003d32:	2200      	movs	r2, #0
 8003d34:	609a      	str	r2, [r3, #8]
 8003d36:	2128      	movs	r1, #40	; 0x28
 8003d38:	187b      	adds	r3, r7, r1
 8003d3a:	2200      	movs	r2, #0
 8003d3c:	601a      	str	r2, [r3, #0]
 8003d3e:	187b      	adds	r3, r7, r1
 8003d40:	2200      	movs	r2, #0
 8003d42:	605a      	str	r2, [r3, #4]
 8003d44:	187b      	adds	r3, r7, r1
 8003d46:	2200      	movs	r2, #0
 8003d48:	609a      	str	r2, [r3, #8]
 8003d4a:	211c      	movs	r1, #28
 8003d4c:	187b      	adds	r3, r7, r1
 8003d4e:	2200      	movs	r2, #0
 8003d50:	601a      	str	r2, [r3, #0]
 8003d52:	187b      	adds	r3, r7, r1
 8003d54:	2200      	movs	r2, #0
 8003d56:	605a      	str	r2, [r3, #4]
 8003d58:	187b      	adds	r3, r7, r1
 8003d5a:	2200      	movs	r2, #0
 8003d5c:	609a      	str	r2, [r3, #8]
 8003d5e:	2110      	movs	r1, #16
 8003d60:	187b      	adds	r3, r7, r1
 8003d62:	2200      	movs	r2, #0
 8003d64:	601a      	str	r2, [r3, #0]
 8003d66:	187b      	adds	r3, r7, r1
 8003d68:	2200      	movs	r2, #0
 8003d6a:	605a      	str	r2, [r3, #4]
 8003d6c:	187b      	adds	r3, r7, r1
 8003d6e:	2200      	movs	r2, #0
 8003d70:	609a      	str	r2, [r3, #8]
 8003d72:	1d3b      	adds	r3, r7, #4
 8003d74:	2200      	movs	r2, #0
 8003d76:	601a      	str	r2, [r3, #0]
 8003d78:	1d3b      	adds	r3, r7, #4
 8003d7a:	2200      	movs	r2, #0
 8003d7c:	605a      	str	r2, [r3, #4]
 8003d7e:	1d3b      	adds	r3, r7, #4
 8003d80:	2200      	movs	r2, #0
 8003d82:	609a      	str	r2, [r3, #8]
 8003d84:	2300      	movs	r3, #0
 8003d86:	22c0      	movs	r2, #192	; 0xc0
 8003d88:	18ba      	adds	r2, r7, r2
 8003d8a:	6013      	str	r3, [r2, #0]
 8003d8c:	e02b      	b.n	8003de6 <IMU_updateDataAll+0x3be>
 8003d8e:	4b4c      	ldr	r3, [pc, #304]	; (8003ec0 <IMU_updateDataAll+0x498>)
 8003d90:	20c0      	movs	r0, #192	; 0xc0
 8003d92:	183a      	adds	r2, r7, r0
 8003d94:	6812      	ldr	r2, [r2, #0]
 8003d96:	0092      	lsls	r2, r2, #2
 8003d98:	58d1      	ldr	r1, [r2, r3]
 8003d9a:	231c      	movs	r3, #28
 8003d9c:	18fb      	adds	r3, r7, r3
 8003d9e:	183a      	adds	r2, r7, r0
 8003da0:	6812      	ldr	r2, [r2, #0]
 8003da2:	0092      	lsls	r2, r2, #2
 8003da4:	50d1      	str	r1, [r2, r3]
 8003da6:	4a45      	ldr	r2, [pc, #276]	; (8003ebc <IMU_updateDataAll+0x494>)
 8003da8:	183b      	adds	r3, r7, r0
 8003daa:	681b      	ldr	r3, [r3, #0]
 8003dac:	3308      	adds	r3, #8
 8003dae:	009b      	lsls	r3, r3, #2
 8003db0:	18d3      	adds	r3, r2, r3
 8003db2:	3304      	adds	r3, #4
 8003db4:	6819      	ldr	r1, [r3, #0]
 8003db6:	2310      	movs	r3, #16
 8003db8:	18fb      	adds	r3, r7, r3
 8003dba:	183a      	adds	r2, r7, r0
 8003dbc:	6812      	ldr	r2, [r2, #0]
 8003dbe:	0092      	lsls	r2, r2, #2
 8003dc0:	50d1      	str	r1, [r2, r3]
 8003dc2:	4a3f      	ldr	r2, [pc, #252]	; (8003ec0 <IMU_updateDataAll+0x498>)
 8003dc4:	183b      	adds	r3, r7, r0
 8003dc6:	681b      	ldr	r3, [r3, #0]
 8003dc8:	3308      	adds	r3, #8
 8003dca:	009b      	lsls	r3, r3, #2
 8003dcc:	18d3      	adds	r3, r2, r3
 8003dce:	3304      	adds	r3, #4
 8003dd0:	6819      	ldr	r1, [r3, #0]
 8003dd2:	1d3b      	adds	r3, r7, #4
 8003dd4:	183a      	adds	r2, r7, r0
 8003dd6:	6812      	ldr	r2, [r2, #0]
 8003dd8:	0092      	lsls	r2, r2, #2
 8003dda:	50d1      	str	r1, [r2, r3]
 8003ddc:	183b      	adds	r3, r7, r0
 8003dde:	681b      	ldr	r3, [r3, #0]
 8003de0:	3301      	adds	r3, #1
 8003de2:	183a      	adds	r2, r7, r0
 8003de4:	6013      	str	r3, [r2, #0]
 8003de6:	23c0      	movs	r3, #192	; 0xc0
 8003de8:	18fb      	adds	r3, r7, r3
 8003dea:	681b      	ldr	r3, [r3, #0]
 8003dec:	2b02      	cmp	r3, #2
 8003dee:	ddce      	ble.n	8003d8e <IMU_updateDataAll+0x366>
 8003df0:	2300      	movs	r3, #0
 8003df2:	22bc      	movs	r2, #188	; 0xbc
 8003df4:	18ba      	adds	r2, r7, r2
 8003df6:	6013      	str	r3, [r2, #0]
 8003df8:	e04b      	b.n	8003e92 <IMU_updateDataAll+0x46a>
 8003dfa:	234c      	movs	r3, #76	; 0x4c
 8003dfc:	18fb      	adds	r3, r7, r3
 8003dfe:	24bc      	movs	r4, #188	; 0xbc
 8003e00:	193a      	adds	r2, r7, r4
 8003e02:	6812      	ldr	r2, [r2, #0]
 8003e04:	0092      	lsls	r2, r2, #2
 8003e06:	58d0      	ldr	r0, [r2, r3]
 8003e08:	231c      	movs	r3, #28
 8003e0a:	18fb      	adds	r3, r7, r3
 8003e0c:	193a      	adds	r2, r7, r4
 8003e0e:	6812      	ldr	r2, [r2, #0]
 8003e10:	0092      	lsls	r2, r2, #2
 8003e12:	58d3      	ldr	r3, [r2, r3]
 8003e14:	1c19      	adds	r1, r3, #0
 8003e16:	f7fc fa3d 	bl	8000294 <__aeabi_fadd>
 8003e1a:	1c03      	adds	r3, r0, #0
 8003e1c:	25b0      	movs	r5, #176	; 0xb0
 8003e1e:	197a      	adds	r2, r7, r5
 8003e20:	6811      	ldr	r1, [r2, #0]
 8003e22:	1c18      	adds	r0, r3, #0
 8003e24:	f7fc fda8 	bl	8000978 <__aeabi_fmul>
 8003e28:	1c03      	adds	r3, r0, #0
 8003e2a:	2180      	movs	r1, #128	; 0x80
 8003e2c:	05c9      	lsls	r1, r1, #23
 8003e2e:	1c18      	adds	r0, r3, #0
 8003e30:	f7fc fbca 	bl	80005c8 <__aeabi_fdiv>
 8003e34:	1c03      	adds	r3, r0, #0
 8003e36:	1c19      	adds	r1, r3, #0
 8003e38:	2334      	movs	r3, #52	; 0x34
 8003e3a:	18fb      	adds	r3, r7, r3
 8003e3c:	193a      	adds	r2, r7, r4
 8003e3e:	6812      	ldr	r2, [r2, #0]
 8003e40:	0092      	lsls	r2, r2, #2
 8003e42:	50d1      	str	r1, [r2, r3]
 8003e44:	2310      	movs	r3, #16
 8003e46:	18fb      	adds	r3, r7, r3
 8003e48:	193a      	adds	r2, r7, r4
 8003e4a:	6812      	ldr	r2, [r2, #0]
 8003e4c:	0092      	lsls	r2, r2, #2
 8003e4e:	58d0      	ldr	r0, [r2, r3]
 8003e50:	1d3b      	adds	r3, r7, #4
 8003e52:	193a      	adds	r2, r7, r4
 8003e54:	6812      	ldr	r2, [r2, #0]
 8003e56:	0092      	lsls	r2, r2, #2
 8003e58:	58d3      	ldr	r3, [r2, r3]
 8003e5a:	1c19      	adds	r1, r3, #0
 8003e5c:	f7fc fa1a 	bl	8000294 <__aeabi_fadd>
 8003e60:	1c03      	adds	r3, r0, #0
 8003e62:	197a      	adds	r2, r7, r5
 8003e64:	6811      	ldr	r1, [r2, #0]
 8003e66:	1c18      	adds	r0, r3, #0
 8003e68:	f7fc fd86 	bl	8000978 <__aeabi_fmul>
 8003e6c:	1c03      	adds	r3, r0, #0
 8003e6e:	2180      	movs	r1, #128	; 0x80
 8003e70:	05c9      	lsls	r1, r1, #23
 8003e72:	1c18      	adds	r0, r3, #0
 8003e74:	f7fc fba8 	bl	80005c8 <__aeabi_fdiv>
 8003e78:	1c03      	adds	r3, r0, #0
 8003e7a:	1c19      	adds	r1, r3, #0
 8003e7c:	2328      	movs	r3, #40	; 0x28
 8003e7e:	18fb      	adds	r3, r7, r3
 8003e80:	193a      	adds	r2, r7, r4
 8003e82:	6812      	ldr	r2, [r2, #0]
 8003e84:	0092      	lsls	r2, r2, #2
 8003e86:	50d1      	str	r1, [r2, r3]
 8003e88:	193b      	adds	r3, r7, r4
 8003e8a:	681b      	ldr	r3, [r3, #0]
 8003e8c:	3301      	adds	r3, #1
 8003e8e:	193a      	adds	r2, r7, r4
 8003e90:	6013      	str	r3, [r2, #0]
 8003e92:	23bc      	movs	r3, #188	; 0xbc
 8003e94:	18fb      	adds	r3, r7, r3
 8003e96:	681b      	ldr	r3, [r3, #0]
 8003e98:	2b02      	cmp	r3, #2
 8003e9a:	ddae      	ble.n	8003dfa <IMU_updateDataAll+0x3d2>
 8003e9c:	2300      	movs	r3, #0
 8003e9e:	22b8      	movs	r2, #184	; 0xb8
 8003ea0:	18ba      	adds	r2, r7, r2
 8003ea2:	6013      	str	r3, [r2, #0]
 8003ea4:	e04b      	b.n	8003f3e <IMU_updateDataAll+0x516>
 8003ea6:	46c0      	nop			; (mov r8, r8)
 8003ea8:	2000014c 	.word	0x2000014c
 8003eac:	20000090 	.word	0x20000090
 8003eb0:	20000184 	.word	0x20000184
 8003eb4:	40200000 	.word	0x40200000
 8003eb8:	41200000 	.word	0x41200000
 8003ebc:	200000b4 	.word	0x200000b4
 8003ec0:	20000100 	.word	0x20000100
 8003ec4:	4a26      	ldr	r2, [pc, #152]	; (8003f60 <IMU_updateDataAll+0x538>)
 8003ec6:	21b8      	movs	r1, #184	; 0xb8
 8003ec8:	187b      	adds	r3, r7, r1
 8003eca:	681b      	ldr	r3, [r3, #0]
 8003ecc:	3308      	adds	r3, #8
 8003ece:	009b      	lsls	r3, r3, #2
 8003ed0:	18d3      	adds	r3, r2, r3
 8003ed2:	3304      	adds	r3, #4
 8003ed4:	6818      	ldr	r0, [r3, #0]
 8003ed6:	2334      	movs	r3, #52	; 0x34
 8003ed8:	18fb      	adds	r3, r7, r3
 8003eda:	000c      	movs	r4, r1
 8003edc:	187a      	adds	r2, r7, r1
 8003ede:	6812      	ldr	r2, [r2, #0]
 8003ee0:	0092      	lsls	r2, r2, #2
 8003ee2:	58d3      	ldr	r3, [r2, r3]
 8003ee4:	1c19      	adds	r1, r3, #0
 8003ee6:	f7fc f9d5 	bl	8000294 <__aeabi_fadd>
 8003eea:	1c03      	adds	r3, r0, #0
 8003eec:	1c19      	adds	r1, r3, #0
 8003eee:	4a1c      	ldr	r2, [pc, #112]	; (8003f60 <IMU_updateDataAll+0x538>)
 8003ef0:	0020      	movs	r0, r4
 8003ef2:	183b      	adds	r3, r7, r0
 8003ef4:	681b      	ldr	r3, [r3, #0]
 8003ef6:	3308      	adds	r3, #8
 8003ef8:	009b      	lsls	r3, r3, #2
 8003efa:	18d3      	adds	r3, r2, r3
 8003efc:	3304      	adds	r3, #4
 8003efe:	6019      	str	r1, [r3, #0]
 8003f00:	4b17      	ldr	r3, [pc, #92]	; (8003f60 <IMU_updateDataAll+0x538>)
 8003f02:	0001      	movs	r1, r0
 8003f04:	187a      	adds	r2, r7, r1
 8003f06:	6812      	ldr	r2, [r2, #0]
 8003f08:	320c      	adds	r2, #12
 8003f0a:	0092      	lsls	r2, r2, #2
 8003f0c:	58d0      	ldr	r0, [r2, r3]
 8003f0e:	2328      	movs	r3, #40	; 0x28
 8003f10:	18fb      	adds	r3, r7, r3
 8003f12:	000c      	movs	r4, r1
 8003f14:	193a      	adds	r2, r7, r4
 8003f16:	6812      	ldr	r2, [r2, #0]
 8003f18:	0092      	lsls	r2, r2, #2
 8003f1a:	58d3      	ldr	r3, [r2, r3]
 8003f1c:	1c19      	adds	r1, r3, #0
 8003f1e:	f7fc f9b9 	bl	8000294 <__aeabi_fadd>
 8003f22:	1c03      	adds	r3, r0, #0
 8003f24:	1c19      	adds	r1, r3, #0
 8003f26:	4b0e      	ldr	r3, [pc, #56]	; (8003f60 <IMU_updateDataAll+0x538>)
 8003f28:	0020      	movs	r0, r4
 8003f2a:	183a      	adds	r2, r7, r0
 8003f2c:	6812      	ldr	r2, [r2, #0]
 8003f2e:	320c      	adds	r2, #12
 8003f30:	0092      	lsls	r2, r2, #2
 8003f32:	50d1      	str	r1, [r2, r3]
 8003f34:	183b      	adds	r3, r7, r0
 8003f36:	681b      	ldr	r3, [r3, #0]
 8003f38:	3301      	adds	r3, #1
 8003f3a:	183a      	adds	r2, r7, r0
 8003f3c:	6013      	str	r3, [r2, #0]
 8003f3e:	23b8      	movs	r3, #184	; 0xb8
 8003f40:	18fb      	adds	r3, r7, r3
 8003f42:	681b      	ldr	r3, [r3, #0]
 8003f44:	2b02      	cmp	r3, #2
 8003f46:	ddbd      	ble.n	8003ec4 <IMU_updateDataAll+0x49c>
 8003f48:	e002      	b.n	8003f50 <IMU_updateDataAll+0x528>
 8003f4a:	46c0      	nop			; (mov r8, r8)
 8003f4c:	e000      	b.n	8003f50 <IMU_updateDataAll+0x528>
 8003f4e:	46c0      	nop			; (mov r8, r8)
 8003f50:	23cc      	movs	r3, #204	; 0xcc
 8003f52:	18fb      	adds	r3, r7, r3
 8003f54:	681b      	ldr	r3, [r3, #0]
 8003f56:	0018      	movs	r0, r3
 8003f58:	46bd      	mov	sp, r7
 8003f5a:	b035      	add	sp, #212	; 0xd4
 8003f5c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003f5e:	46c0      	nop			; (mov r8, r8)
 8003f60:	200000b4 	.word	0x200000b4

08003f64 <get_staticShifts>:
 8003f64:	b590      	push	{r4, r7, lr}
 8003f66:	b089      	sub	sp, #36	; 0x24
 8003f68:	af00      	add	r7, sp, #0
 8003f6a:	2110      	movs	r1, #16
 8003f6c:	187b      	adds	r3, r7, r1
 8003f6e:	2200      	movs	r2, #0
 8003f70:	601a      	str	r2, [r3, #0]
 8003f72:	187b      	adds	r3, r7, r1
 8003f74:	2200      	movs	r2, #0
 8003f76:	605a      	str	r2, [r3, #4]
 8003f78:	187b      	adds	r3, r7, r1
 8003f7a:	2200      	movs	r2, #0
 8003f7c:	609a      	str	r2, [r3, #8]
 8003f7e:	1d3b      	adds	r3, r7, #4
 8003f80:	2200      	movs	r2, #0
 8003f82:	601a      	str	r2, [r3, #0]
 8003f84:	1d3b      	adds	r3, r7, #4
 8003f86:	2200      	movs	r2, #0
 8003f88:	605a      	str	r2, [r3, #4]
 8003f8a:	1d3b      	adds	r3, r7, #4
 8003f8c:	2200      	movs	r2, #0
 8003f8e:	609a      	str	r2, [r3, #8]
 8003f90:	000c      	movs	r4, r1
 8003f92:	187b      	adds	r3, r7, r1
 8003f94:	0018      	movs	r0, r3
 8003f96:	f7ff faab 	bl	80034f0 <get_gyro_staticShift>
 8003f9a:	1d3a      	adds	r2, r7, #4
 8003f9c:	0021      	movs	r1, r4
 8003f9e:	187b      	adds	r3, r7, r1
 8003fa0:	0011      	movs	r1, r2
 8003fa2:	0018      	movs	r0, r3
 8003fa4:	f7ff fb34 	bl	8003610 <get_accel_staticShift>
 8003fa8:	2300      	movs	r3, #0
 8003faa:	61fb      	str	r3, [r7, #28]
 8003fac:	e016      	b.n	8003fdc <get_staticShifts+0x78>
 8003fae:	2310      	movs	r3, #16
 8003fb0:	18fb      	adds	r3, r7, r3
 8003fb2:	69fa      	ldr	r2, [r7, #28]
 8003fb4:	0092      	lsls	r2, r2, #2
 8003fb6:	58d2      	ldr	r2, [r2, r3]
 8003fb8:	490c      	ldr	r1, [pc, #48]	; (8003fec <get_staticShifts+0x88>)
 8003fba:	69fb      	ldr	r3, [r7, #28]
 8003fbc:	009b      	lsls	r3, r3, #2
 8003fbe:	18cb      	adds	r3, r1, r3
 8003fc0:	3304      	adds	r3, #4
 8003fc2:	601a      	str	r2, [r3, #0]
 8003fc4:	1d3b      	adds	r3, r7, #4
 8003fc6:	69fa      	ldr	r2, [r7, #28]
 8003fc8:	0092      	lsls	r2, r2, #2
 8003fca:	58d1      	ldr	r1, [r2, r3]
 8003fcc:	4b07      	ldr	r3, [pc, #28]	; (8003fec <get_staticShifts+0x88>)
 8003fce:	69fa      	ldr	r2, [r7, #28]
 8003fd0:	3204      	adds	r2, #4
 8003fd2:	0092      	lsls	r2, r2, #2
 8003fd4:	50d1      	str	r1, [r2, r3]
 8003fd6:	69fb      	ldr	r3, [r7, #28]
 8003fd8:	3301      	adds	r3, #1
 8003fda:	61fb      	str	r3, [r7, #28]
 8003fdc:	69fb      	ldr	r3, [r7, #28]
 8003fde:	2b02      	cmp	r3, #2
 8003fe0:	dde5      	ble.n	8003fae <get_staticShifts+0x4a>
 8003fe2:	46c0      	nop			; (mov r8, r8)
 8003fe4:	46bd      	mov	sp, r7
 8003fe6:	b009      	add	sp, #36	; 0x24
 8003fe8:	bd90      	pop	{r4, r7, pc}
 8003fea:	46c0      	nop			; (mov r8, r8)
 8003fec:	2000014c 	.word	0x2000014c

08003ff0 <_IMUtask_updateData>:
 8003ff0:	b580      	push	{r7, lr}
 8003ff2:	af00      	add	r7, sp, #0
 8003ff4:	4a09      	ldr	r2, [pc, #36]	; (800401c <_IMUtask_updateData+0x2c>)
 8003ff6:	4b0a      	ldr	r3, [pc, #40]	; (8004020 <_IMUtask_updateData+0x30>)
 8003ff8:	0010      	movs	r0, r2
 8003ffa:	0019      	movs	r1, r3
 8003ffc:	234c      	movs	r3, #76	; 0x4c
 8003ffe:	001a      	movs	r2, r3
 8004000:	f004 fc1e 	bl	8008840 <memcpy>
 8004004:	4a07      	ldr	r2, [pc, #28]	; (8004024 <_IMUtask_updateData+0x34>)
 8004006:	4b08      	ldr	r3, [pc, #32]	; (8004028 <_IMUtask_updateData+0x38>)
 8004008:	0010      	movs	r0, r2
 800400a:	0019      	movs	r1, r3
 800400c:	2338      	movs	r3, #56	; 0x38
 800400e:	001a      	movs	r2, r3
 8004010:	f004 fc16 	bl	8008840 <memcpy>
 8004014:	46c0      	nop			; (mov r8, r8)
 8004016:	46bd      	mov	sp, r7
 8004018:	bd80      	pop	{r7, pc}
 800401a:	46c0      	nop			; (mov r8, r8)
 800401c:	20000100 	.word	0x20000100
 8004020:	200000b4 	.word	0x200000b4
 8004024:	20000184 	.word	0x20000184
 8004028:	2000014c 	.word	0x2000014c

0800402c <main>:
 800402c:	b580      	push	{r7, lr}
 800402e:	b092      	sub	sp, #72	; 0x48
 8004030:	af00      	add	r7, sp, #0
 8004032:	2300      	movs	r3, #0
 8004034:	647b      	str	r3, [r7, #68]	; 0x44
 8004036:	f000 fba7 	bl	8004788 <rcc_config>
 800403a:	f000 fbd9 	bl	80047f0 <gpio_config>
 800403e:	f000 fbeb 	bl	8004818 <exti_config>
 8004042:	f000 fbef 	bl	8004824 <usart_config>
 8004046:	f000 fc65 	bl	8004914 <i2c_config>
 800404a:	f000 fd5f 	bl	8004b0c <printf_config>
 800404e:	f7ff fa0f 	bl	8003470 <systick_config>
 8004052:	4b21      	ldr	r3, [pc, #132]	; (80040d8 <main+0xac>)
 8004054:	2224      	movs	r2, #36	; 0x24
 8004056:	2100      	movs	r1, #0
 8004058:	0018      	movs	r0, r3
 800405a:	f004 fbfa 	bl	8008852 <memset>
 800405e:	4b1f      	ldr	r3, [pc, #124]	; (80040dc <main+0xb0>)
 8004060:	224c      	movs	r2, #76	; 0x4c
 8004062:	2100      	movs	r1, #0
 8004064:	0018      	movs	r0, r3
 8004066:	f004 fbf4 	bl	8008852 <memset>
 800406a:	4b1d      	ldr	r3, [pc, #116]	; (80040e0 <main+0xb4>)
 800406c:	224c      	movs	r2, #76	; 0x4c
 800406e:	2100      	movs	r1, #0
 8004070:	0018      	movs	r0, r3
 8004072:	f004 fbee 	bl	8008852 <memset>
 8004076:	4b1b      	ldr	r3, [pc, #108]	; (80040e4 <main+0xb8>)
 8004078:	2238      	movs	r2, #56	; 0x38
 800407a:	2100      	movs	r1, #0
 800407c:	0018      	movs	r0, r3
 800407e:	f004 fbe8 	bl	8008852 <memset>
 8004082:	4b19      	ldr	r3, [pc, #100]	; (80040e8 <main+0xbc>)
 8004084:	2238      	movs	r2, #56	; 0x38
 8004086:	2100      	movs	r1, #0
 8004088:	0018      	movs	r0, r3
 800408a:	f004 fbe2 	bl	8008852 <memset>
 800408e:	003b      	movs	r3, r7
 8004090:	0018      	movs	r0, r3
 8004092:	2342      	movs	r3, #66	; 0x42
 8004094:	001a      	movs	r2, r3
 8004096:	2100      	movs	r1, #0
 8004098:	f004 fbdb 	bl	8008852 <memset>
 800409c:	f000 fedc 	bl	8004e58 <mpu9255_init>
 80040a0:	0003      	movs	r3, r0
 80040a2:	647b      	str	r3, [r7, #68]	; 0x44
 80040a4:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 80040a6:	4b11      	ldr	r3, [pc, #68]	; (80040ec <main+0xc0>)
 80040a8:	0011      	movs	r1, r2
 80040aa:	0018      	movs	r0, r3
 80040ac:	f001 fc08 	bl	80058c0 <xprintf>
 80040b0:	f7ff ff58 	bl	8003f64 <get_staticShifts>
 80040b4:	f7ff fcb8 	bl	8003a28 <IMU_updateDataAll>
 80040b8:	f7ff ff9a 	bl	8003ff0 <_IMUtask_updateData>
 80040bc:	f7ff fcb4 	bl	8003a28 <IMU_updateDataAll>
 80040c0:	f7ff ff96 	bl	8003ff0 <_IMUtask_updateData>
 80040c4:	003b      	movs	r3, r7
 80040c6:	0018      	movs	r0, r3
 80040c8:	f7fe ff2e 	bl	8002f28 <stateMsg_fill>
 80040cc:	003b      	movs	r3, r7
 80040ce:	0018      	movs	r0, r3
 80040d0:	f7ff f8de 	bl	8003290 <stateMsg_send>
 80040d4:	e7f2      	b.n	80040bc <main+0x90>
 80040d6:	46c0      	nop			; (mov r8, r8)
 80040d8:	20000090 	.word	0x20000090
 80040dc:	200000b4 	.word	0x200000b4
 80040e0:	20000100 	.word	0x20000100
 80040e4:	2000014c 	.word	0x2000014c
 80040e8:	20000184 	.word	0x20000184
 80040ec:	08009b68 	.word	0x08009b68

080040f0 <LL_RCC_HSI_Enable>:
 80040f0:	b580      	push	{r7, lr}
 80040f2:	af00      	add	r7, sp, #0
 80040f4:	4b04      	ldr	r3, [pc, #16]	; (8004108 <LL_RCC_HSI_Enable+0x18>)
 80040f6:	681a      	ldr	r2, [r3, #0]
 80040f8:	4b03      	ldr	r3, [pc, #12]	; (8004108 <LL_RCC_HSI_Enable+0x18>)
 80040fa:	2101      	movs	r1, #1
 80040fc:	430a      	orrs	r2, r1
 80040fe:	601a      	str	r2, [r3, #0]
 8004100:	46c0      	nop			; (mov r8, r8)
 8004102:	46bd      	mov	sp, r7
 8004104:	bd80      	pop	{r7, pc}
 8004106:	46c0      	nop			; (mov r8, r8)
 8004108:	40021000 	.word	0x40021000

0800410c <LL_RCC_HSI_IsReady>:
 800410c:	b580      	push	{r7, lr}
 800410e:	af00      	add	r7, sp, #0
 8004110:	4b05      	ldr	r3, [pc, #20]	; (8004128 <LL_RCC_HSI_IsReady+0x1c>)
 8004112:	681b      	ldr	r3, [r3, #0]
 8004114:	2202      	movs	r2, #2
 8004116:	4013      	ands	r3, r2
 8004118:	3b02      	subs	r3, #2
 800411a:	425a      	negs	r2, r3
 800411c:	4153      	adcs	r3, r2
 800411e:	b2db      	uxtb	r3, r3
 8004120:	0018      	movs	r0, r3
 8004122:	46bd      	mov	sp, r7
 8004124:	bd80      	pop	{r7, pc}
 8004126:	46c0      	nop			; (mov r8, r8)
 8004128:	40021000 	.word	0x40021000

0800412c <LL_RCC_SetSysClkSource>:
 800412c:	b580      	push	{r7, lr}
 800412e:	b082      	sub	sp, #8
 8004130:	af00      	add	r7, sp, #0
 8004132:	6078      	str	r0, [r7, #4]
 8004134:	4b06      	ldr	r3, [pc, #24]	; (8004150 <LL_RCC_SetSysClkSource+0x24>)
 8004136:	685b      	ldr	r3, [r3, #4]
 8004138:	2203      	movs	r2, #3
 800413a:	4393      	bics	r3, r2
 800413c:	0019      	movs	r1, r3
 800413e:	4b04      	ldr	r3, [pc, #16]	; (8004150 <LL_RCC_SetSysClkSource+0x24>)
 8004140:	687a      	ldr	r2, [r7, #4]
 8004142:	430a      	orrs	r2, r1
 8004144:	605a      	str	r2, [r3, #4]
 8004146:	46c0      	nop			; (mov r8, r8)
 8004148:	46bd      	mov	sp, r7
 800414a:	b002      	add	sp, #8
 800414c:	bd80      	pop	{r7, pc}
 800414e:	46c0      	nop			; (mov r8, r8)
 8004150:	40021000 	.word	0x40021000

08004154 <LL_RCC_GetSysClkSource>:
 8004154:	b580      	push	{r7, lr}
 8004156:	af00      	add	r7, sp, #0
 8004158:	4b03      	ldr	r3, [pc, #12]	; (8004168 <LL_RCC_GetSysClkSource+0x14>)
 800415a:	685b      	ldr	r3, [r3, #4]
 800415c:	220c      	movs	r2, #12
 800415e:	4013      	ands	r3, r2
 8004160:	0018      	movs	r0, r3
 8004162:	46bd      	mov	sp, r7
 8004164:	bd80      	pop	{r7, pc}
 8004166:	46c0      	nop			; (mov r8, r8)
 8004168:	40021000 	.word	0x40021000

0800416c <LL_RCC_SetAHBPrescaler>:
 800416c:	b580      	push	{r7, lr}
 800416e:	b082      	sub	sp, #8
 8004170:	af00      	add	r7, sp, #0
 8004172:	6078      	str	r0, [r7, #4]
 8004174:	4b06      	ldr	r3, [pc, #24]	; (8004190 <LL_RCC_SetAHBPrescaler+0x24>)
 8004176:	685b      	ldr	r3, [r3, #4]
 8004178:	22f0      	movs	r2, #240	; 0xf0
 800417a:	4393      	bics	r3, r2
 800417c:	0019      	movs	r1, r3
 800417e:	4b04      	ldr	r3, [pc, #16]	; (8004190 <LL_RCC_SetAHBPrescaler+0x24>)
 8004180:	687a      	ldr	r2, [r7, #4]
 8004182:	430a      	orrs	r2, r1
 8004184:	605a      	str	r2, [r3, #4]
 8004186:	46c0      	nop			; (mov r8, r8)
 8004188:	46bd      	mov	sp, r7
 800418a:	b002      	add	sp, #8
 800418c:	bd80      	pop	{r7, pc}
 800418e:	46c0      	nop			; (mov r8, r8)
 8004190:	40021000 	.word	0x40021000

08004194 <LL_RCC_SetAPB1Prescaler>:
 8004194:	b580      	push	{r7, lr}
 8004196:	b082      	sub	sp, #8
 8004198:	af00      	add	r7, sp, #0
 800419a:	6078      	str	r0, [r7, #4]
 800419c:	4b06      	ldr	r3, [pc, #24]	; (80041b8 <LL_RCC_SetAPB1Prescaler+0x24>)
 800419e:	685b      	ldr	r3, [r3, #4]
 80041a0:	4a06      	ldr	r2, [pc, #24]	; (80041bc <LL_RCC_SetAPB1Prescaler+0x28>)
 80041a2:	4013      	ands	r3, r2
 80041a4:	0019      	movs	r1, r3
 80041a6:	4b04      	ldr	r3, [pc, #16]	; (80041b8 <LL_RCC_SetAPB1Prescaler+0x24>)
 80041a8:	687a      	ldr	r2, [r7, #4]
 80041aa:	430a      	orrs	r2, r1
 80041ac:	605a      	str	r2, [r3, #4]
 80041ae:	46c0      	nop			; (mov r8, r8)
 80041b0:	46bd      	mov	sp, r7
 80041b2:	b002      	add	sp, #8
 80041b4:	bd80      	pop	{r7, pc}
 80041b6:	46c0      	nop			; (mov r8, r8)
 80041b8:	40021000 	.word	0x40021000
 80041bc:	fffff8ff 	.word	0xfffff8ff

080041c0 <LL_RCC_SetUSARTClockSource>:
 80041c0:	b580      	push	{r7, lr}
 80041c2:	b082      	sub	sp, #8
 80041c4:	af00      	add	r7, sp, #0
 80041c6:	6078      	str	r0, [r7, #4]
 80041c8:	4b09      	ldr	r3, [pc, #36]	; (80041f0 <LL_RCC_SetUSARTClockSource+0x30>)
 80041ca:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80041cc:	687a      	ldr	r2, [r7, #4]
 80041ce:	0e12      	lsrs	r2, r2, #24
 80041d0:	2103      	movs	r1, #3
 80041d2:	4091      	lsls	r1, r2
 80041d4:	000a      	movs	r2, r1
 80041d6:	43d2      	mvns	r2, r2
 80041d8:	401a      	ands	r2, r3
 80041da:	0011      	movs	r1, r2
 80041dc:	687b      	ldr	r3, [r7, #4]
 80041de:	021b      	lsls	r3, r3, #8
 80041e0:	0a1a      	lsrs	r2, r3, #8
 80041e2:	4b03      	ldr	r3, [pc, #12]	; (80041f0 <LL_RCC_SetUSARTClockSource+0x30>)
 80041e4:	430a      	orrs	r2, r1
 80041e6:	631a      	str	r2, [r3, #48]	; 0x30
 80041e8:	46c0      	nop			; (mov r8, r8)
 80041ea:	46bd      	mov	sp, r7
 80041ec:	b002      	add	sp, #8
 80041ee:	bd80      	pop	{r7, pc}
 80041f0:	40021000 	.word	0x40021000

080041f4 <LL_RCC_SetI2CClockSource>:
 80041f4:	b580      	push	{r7, lr}
 80041f6:	b082      	sub	sp, #8
 80041f8:	af00      	add	r7, sp, #0
 80041fa:	6078      	str	r0, [r7, #4]
 80041fc:	4b06      	ldr	r3, [pc, #24]	; (8004218 <LL_RCC_SetI2CClockSource+0x24>)
 80041fe:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8004200:	2210      	movs	r2, #16
 8004202:	4393      	bics	r3, r2
 8004204:	0019      	movs	r1, r3
 8004206:	4b04      	ldr	r3, [pc, #16]	; (8004218 <LL_RCC_SetI2CClockSource+0x24>)
 8004208:	687a      	ldr	r2, [r7, #4]
 800420a:	430a      	orrs	r2, r1
 800420c:	631a      	str	r2, [r3, #48]	; 0x30
 800420e:	46c0      	nop			; (mov r8, r8)
 8004210:	46bd      	mov	sp, r7
 8004212:	b002      	add	sp, #8
 8004214:	bd80      	pop	{r7, pc}
 8004216:	46c0      	nop			; (mov r8, r8)
 8004218:	40021000 	.word	0x40021000

0800421c <LL_RCC_PLL_Enable>:
 800421c:	b580      	push	{r7, lr}
 800421e:	af00      	add	r7, sp, #0
 8004220:	4b04      	ldr	r3, [pc, #16]	; (8004234 <LL_RCC_PLL_Enable+0x18>)
 8004222:	681a      	ldr	r2, [r3, #0]
 8004224:	4b03      	ldr	r3, [pc, #12]	; (8004234 <LL_RCC_PLL_Enable+0x18>)
 8004226:	2180      	movs	r1, #128	; 0x80
 8004228:	0449      	lsls	r1, r1, #17
 800422a:	430a      	orrs	r2, r1
 800422c:	601a      	str	r2, [r3, #0]
 800422e:	46c0      	nop			; (mov r8, r8)
 8004230:	46bd      	mov	sp, r7
 8004232:	bd80      	pop	{r7, pc}
 8004234:	40021000 	.word	0x40021000

08004238 <LL_RCC_PLL_IsReady>:
 8004238:	b580      	push	{r7, lr}
 800423a:	af00      	add	r7, sp, #0
 800423c:	4b07      	ldr	r3, [pc, #28]	; (800425c <LL_RCC_PLL_IsReady+0x24>)
 800423e:	681a      	ldr	r2, [r3, #0]
 8004240:	2380      	movs	r3, #128	; 0x80
 8004242:	049b      	lsls	r3, r3, #18
 8004244:	4013      	ands	r3, r2
 8004246:	22fe      	movs	r2, #254	; 0xfe
 8004248:	0612      	lsls	r2, r2, #24
 800424a:	4694      	mov	ip, r2
 800424c:	4463      	add	r3, ip
 800424e:	425a      	negs	r2, r3
 8004250:	4153      	adcs	r3, r2
 8004252:	b2db      	uxtb	r3, r3
 8004254:	0018      	movs	r0, r3
 8004256:	46bd      	mov	sp, r7
 8004258:	bd80      	pop	{r7, pc}
 800425a:	46c0      	nop			; (mov r8, r8)
 800425c:	40021000 	.word	0x40021000

08004260 <LL_RCC_PLL_ConfigDomain_SYS>:
 8004260:	b580      	push	{r7, lr}
 8004262:	b082      	sub	sp, #8
 8004264:	af00      	add	r7, sp, #0
 8004266:	6078      	str	r0, [r7, #4]
 8004268:	6039      	str	r1, [r7, #0]
 800426a:	4b0e      	ldr	r3, [pc, #56]	; (80042a4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800426c:	685b      	ldr	r3, [r3, #4]
 800426e:	4a0e      	ldr	r2, [pc, #56]	; (80042a8 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8004270:	4013      	ands	r3, r2
 8004272:	0019      	movs	r1, r3
 8004274:	687a      	ldr	r2, [r7, #4]
 8004276:	2380      	movs	r3, #128	; 0x80
 8004278:	025b      	lsls	r3, r3, #9
 800427a:	401a      	ands	r2, r3
 800427c:	683b      	ldr	r3, [r7, #0]
 800427e:	431a      	orrs	r2, r3
 8004280:	4b08      	ldr	r3, [pc, #32]	; (80042a4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8004282:	430a      	orrs	r2, r1
 8004284:	605a      	str	r2, [r3, #4]
 8004286:	4b07      	ldr	r3, [pc, #28]	; (80042a4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8004288:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800428a:	220f      	movs	r2, #15
 800428c:	4393      	bics	r3, r2
 800428e:	0019      	movs	r1, r3
 8004290:	687b      	ldr	r3, [r7, #4]
 8004292:	220f      	movs	r2, #15
 8004294:	401a      	ands	r2, r3
 8004296:	4b03      	ldr	r3, [pc, #12]	; (80042a4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8004298:	430a      	orrs	r2, r1
 800429a:	62da      	str	r2, [r3, #44]	; 0x2c
 800429c:	46c0      	nop			; (mov r8, r8)
 800429e:	46bd      	mov	sp, r7
 80042a0:	b002      	add	sp, #8
 80042a2:	bd80      	pop	{r7, pc}
 80042a4:	40021000 	.word	0x40021000
 80042a8:	ffc2ffff 	.word	0xffc2ffff

080042ac <LL_FLASH_SetLatency>:
 80042ac:	b580      	push	{r7, lr}
 80042ae:	b082      	sub	sp, #8
 80042b0:	af00      	add	r7, sp, #0
 80042b2:	6078      	str	r0, [r7, #4]
 80042b4:	4b06      	ldr	r3, [pc, #24]	; (80042d0 <LL_FLASH_SetLatency+0x24>)
 80042b6:	681b      	ldr	r3, [r3, #0]
 80042b8:	2201      	movs	r2, #1
 80042ba:	4393      	bics	r3, r2
 80042bc:	0019      	movs	r1, r3
 80042be:	4b04      	ldr	r3, [pc, #16]	; (80042d0 <LL_FLASH_SetLatency+0x24>)
 80042c0:	687a      	ldr	r2, [r7, #4]
 80042c2:	430a      	orrs	r2, r1
 80042c4:	601a      	str	r2, [r3, #0]
 80042c6:	46c0      	nop			; (mov r8, r8)
 80042c8:	46bd      	mov	sp, r7
 80042ca:	b002      	add	sp, #8
 80042cc:	bd80      	pop	{r7, pc}
 80042ce:	46c0      	nop			; (mov r8, r8)
 80042d0:	40022000 	.word	0x40022000

080042d4 <LL_AHB1_GRP1_EnableClock>:
 80042d4:	b580      	push	{r7, lr}
 80042d6:	b084      	sub	sp, #16
 80042d8:	af00      	add	r7, sp, #0
 80042da:	6078      	str	r0, [r7, #4]
 80042dc:	4b07      	ldr	r3, [pc, #28]	; (80042fc <LL_AHB1_GRP1_EnableClock+0x28>)
 80042de:	6959      	ldr	r1, [r3, #20]
 80042e0:	4b06      	ldr	r3, [pc, #24]	; (80042fc <LL_AHB1_GRP1_EnableClock+0x28>)
 80042e2:	687a      	ldr	r2, [r7, #4]
 80042e4:	430a      	orrs	r2, r1
 80042e6:	615a      	str	r2, [r3, #20]
 80042e8:	4b04      	ldr	r3, [pc, #16]	; (80042fc <LL_AHB1_GRP1_EnableClock+0x28>)
 80042ea:	695b      	ldr	r3, [r3, #20]
 80042ec:	687a      	ldr	r2, [r7, #4]
 80042ee:	4013      	ands	r3, r2
 80042f0:	60fb      	str	r3, [r7, #12]
 80042f2:	68fb      	ldr	r3, [r7, #12]
 80042f4:	46c0      	nop			; (mov r8, r8)
 80042f6:	46bd      	mov	sp, r7
 80042f8:	b004      	add	sp, #16
 80042fa:	bd80      	pop	{r7, pc}
 80042fc:	40021000 	.word	0x40021000

08004300 <LL_APB1_GRP1_EnableClock>:
 8004300:	b580      	push	{r7, lr}
 8004302:	b084      	sub	sp, #16
 8004304:	af00      	add	r7, sp, #0
 8004306:	6078      	str	r0, [r7, #4]
 8004308:	4b07      	ldr	r3, [pc, #28]	; (8004328 <LL_APB1_GRP1_EnableClock+0x28>)
 800430a:	69d9      	ldr	r1, [r3, #28]
 800430c:	4b06      	ldr	r3, [pc, #24]	; (8004328 <LL_APB1_GRP1_EnableClock+0x28>)
 800430e:	687a      	ldr	r2, [r7, #4]
 8004310:	430a      	orrs	r2, r1
 8004312:	61da      	str	r2, [r3, #28]
 8004314:	4b04      	ldr	r3, [pc, #16]	; (8004328 <LL_APB1_GRP1_EnableClock+0x28>)
 8004316:	69db      	ldr	r3, [r3, #28]
 8004318:	687a      	ldr	r2, [r7, #4]
 800431a:	4013      	ands	r3, r2
 800431c:	60fb      	str	r3, [r7, #12]
 800431e:	68fb      	ldr	r3, [r7, #12]
 8004320:	46c0      	nop			; (mov r8, r8)
 8004322:	46bd      	mov	sp, r7
 8004324:	b004      	add	sp, #16
 8004326:	bd80      	pop	{r7, pc}
 8004328:	40021000 	.word	0x40021000

0800432c <LL_APB1_GRP2_EnableClock>:
 800432c:	b580      	push	{r7, lr}
 800432e:	b084      	sub	sp, #16
 8004330:	af00      	add	r7, sp, #0
 8004332:	6078      	str	r0, [r7, #4]
 8004334:	4b07      	ldr	r3, [pc, #28]	; (8004354 <LL_APB1_GRP2_EnableClock+0x28>)
 8004336:	6999      	ldr	r1, [r3, #24]
 8004338:	4b06      	ldr	r3, [pc, #24]	; (8004354 <LL_APB1_GRP2_EnableClock+0x28>)
 800433a:	687a      	ldr	r2, [r7, #4]
 800433c:	430a      	orrs	r2, r1
 800433e:	619a      	str	r2, [r3, #24]
 8004340:	4b04      	ldr	r3, [pc, #16]	; (8004354 <LL_APB1_GRP2_EnableClock+0x28>)
 8004342:	699b      	ldr	r3, [r3, #24]
 8004344:	687a      	ldr	r2, [r7, #4]
 8004346:	4013      	ands	r3, r2
 8004348:	60fb      	str	r3, [r7, #12]
 800434a:	68fb      	ldr	r3, [r7, #12]
 800434c:	46c0      	nop			; (mov r8, r8)
 800434e:	46bd      	mov	sp, r7
 8004350:	b004      	add	sp, #16
 8004352:	bd80      	pop	{r7, pc}
 8004354:	40021000 	.word	0x40021000

08004358 <LL_GPIO_SetPinMode>:
 8004358:	b580      	push	{r7, lr}
 800435a:	b084      	sub	sp, #16
 800435c:	af00      	add	r7, sp, #0
 800435e:	60f8      	str	r0, [r7, #12]
 8004360:	60b9      	str	r1, [r7, #8]
 8004362:	607a      	str	r2, [r7, #4]
 8004364:	68fb      	ldr	r3, [r7, #12]
 8004366:	6819      	ldr	r1, [r3, #0]
 8004368:	68bb      	ldr	r3, [r7, #8]
 800436a:	68ba      	ldr	r2, [r7, #8]
 800436c:	435a      	muls	r2, r3
 800436e:	0013      	movs	r3, r2
 8004370:	005b      	lsls	r3, r3, #1
 8004372:	189b      	adds	r3, r3, r2
 8004374:	43db      	mvns	r3, r3
 8004376:	400b      	ands	r3, r1
 8004378:	001a      	movs	r2, r3
 800437a:	68bb      	ldr	r3, [r7, #8]
 800437c:	68b9      	ldr	r1, [r7, #8]
 800437e:	434b      	muls	r3, r1
 8004380:	6879      	ldr	r1, [r7, #4]
 8004382:	434b      	muls	r3, r1
 8004384:	431a      	orrs	r2, r3
 8004386:	68fb      	ldr	r3, [r7, #12]
 8004388:	601a      	str	r2, [r3, #0]
 800438a:	46c0      	nop			; (mov r8, r8)
 800438c:	46bd      	mov	sp, r7
 800438e:	b004      	add	sp, #16
 8004390:	bd80      	pop	{r7, pc}

08004392 <LL_GPIO_SetPinOutputType>:
 8004392:	b580      	push	{r7, lr}
 8004394:	b084      	sub	sp, #16
 8004396:	af00      	add	r7, sp, #0
 8004398:	60f8      	str	r0, [r7, #12]
 800439a:	60b9      	str	r1, [r7, #8]
 800439c:	607a      	str	r2, [r7, #4]
 800439e:	68fb      	ldr	r3, [r7, #12]
 80043a0:	685b      	ldr	r3, [r3, #4]
 80043a2:	68ba      	ldr	r2, [r7, #8]
 80043a4:	43d2      	mvns	r2, r2
 80043a6:	401a      	ands	r2, r3
 80043a8:	68bb      	ldr	r3, [r7, #8]
 80043aa:	6879      	ldr	r1, [r7, #4]
 80043ac:	434b      	muls	r3, r1
 80043ae:	431a      	orrs	r2, r3
 80043b0:	68fb      	ldr	r3, [r7, #12]
 80043b2:	605a      	str	r2, [r3, #4]
 80043b4:	46c0      	nop			; (mov r8, r8)
 80043b6:	46bd      	mov	sp, r7
 80043b8:	b004      	add	sp, #16
 80043ba:	bd80      	pop	{r7, pc}

080043bc <LL_GPIO_SetPinSpeed>:
 80043bc:	b580      	push	{r7, lr}
 80043be:	b084      	sub	sp, #16
 80043c0:	af00      	add	r7, sp, #0
 80043c2:	60f8      	str	r0, [r7, #12]
 80043c4:	60b9      	str	r1, [r7, #8]
 80043c6:	607a      	str	r2, [r7, #4]
 80043c8:	68fb      	ldr	r3, [r7, #12]
 80043ca:	6899      	ldr	r1, [r3, #8]
 80043cc:	68bb      	ldr	r3, [r7, #8]
 80043ce:	68ba      	ldr	r2, [r7, #8]
 80043d0:	435a      	muls	r2, r3
 80043d2:	0013      	movs	r3, r2
 80043d4:	005b      	lsls	r3, r3, #1
 80043d6:	189b      	adds	r3, r3, r2
 80043d8:	43db      	mvns	r3, r3
 80043da:	400b      	ands	r3, r1
 80043dc:	001a      	movs	r2, r3
 80043de:	68bb      	ldr	r3, [r7, #8]
 80043e0:	68b9      	ldr	r1, [r7, #8]
 80043e2:	434b      	muls	r3, r1
 80043e4:	6879      	ldr	r1, [r7, #4]
 80043e6:	434b      	muls	r3, r1
 80043e8:	431a      	orrs	r2, r3
 80043ea:	68fb      	ldr	r3, [r7, #12]
 80043ec:	609a      	str	r2, [r3, #8]
 80043ee:	46c0      	nop			; (mov r8, r8)
 80043f0:	46bd      	mov	sp, r7
 80043f2:	b004      	add	sp, #16
 80043f4:	bd80      	pop	{r7, pc}

080043f6 <LL_GPIO_SetPinPull>:
 80043f6:	b580      	push	{r7, lr}
 80043f8:	b084      	sub	sp, #16
 80043fa:	af00      	add	r7, sp, #0
 80043fc:	60f8      	str	r0, [r7, #12]
 80043fe:	60b9      	str	r1, [r7, #8]
 8004400:	607a      	str	r2, [r7, #4]
 8004402:	68fb      	ldr	r3, [r7, #12]
 8004404:	68d9      	ldr	r1, [r3, #12]
 8004406:	68bb      	ldr	r3, [r7, #8]
 8004408:	68ba      	ldr	r2, [r7, #8]
 800440a:	435a      	muls	r2, r3
 800440c:	0013      	movs	r3, r2
 800440e:	005b      	lsls	r3, r3, #1
 8004410:	189b      	adds	r3, r3, r2
 8004412:	43db      	mvns	r3, r3
 8004414:	400b      	ands	r3, r1
 8004416:	001a      	movs	r2, r3
 8004418:	68bb      	ldr	r3, [r7, #8]
 800441a:	68b9      	ldr	r1, [r7, #8]
 800441c:	434b      	muls	r3, r1
 800441e:	6879      	ldr	r1, [r7, #4]
 8004420:	434b      	muls	r3, r1
 8004422:	431a      	orrs	r2, r3
 8004424:	68fb      	ldr	r3, [r7, #12]
 8004426:	60da      	str	r2, [r3, #12]
 8004428:	46c0      	nop			; (mov r8, r8)
 800442a:	46bd      	mov	sp, r7
 800442c:	b004      	add	sp, #16
 800442e:	bd80      	pop	{r7, pc}

08004430 <LL_GPIO_SetAFPin_0_7>:
 8004430:	b580      	push	{r7, lr}
 8004432:	b084      	sub	sp, #16
 8004434:	af00      	add	r7, sp, #0
 8004436:	60f8      	str	r0, [r7, #12]
 8004438:	60b9      	str	r1, [r7, #8]
 800443a:	607a      	str	r2, [r7, #4]
 800443c:	68fb      	ldr	r3, [r7, #12]
 800443e:	6a19      	ldr	r1, [r3, #32]
 8004440:	68bb      	ldr	r3, [r7, #8]
 8004442:	68ba      	ldr	r2, [r7, #8]
 8004444:	4353      	muls	r3, r2
 8004446:	68ba      	ldr	r2, [r7, #8]
 8004448:	4353      	muls	r3, r2
 800444a:	68ba      	ldr	r2, [r7, #8]
 800444c:	435a      	muls	r2, r3
 800444e:	0013      	movs	r3, r2
 8004450:	011b      	lsls	r3, r3, #4
 8004452:	1a9b      	subs	r3, r3, r2
 8004454:	43db      	mvns	r3, r3
 8004456:	400b      	ands	r3, r1
 8004458:	001a      	movs	r2, r3
 800445a:	68bb      	ldr	r3, [r7, #8]
 800445c:	68b9      	ldr	r1, [r7, #8]
 800445e:	434b      	muls	r3, r1
 8004460:	68b9      	ldr	r1, [r7, #8]
 8004462:	434b      	muls	r3, r1
 8004464:	68b9      	ldr	r1, [r7, #8]
 8004466:	434b      	muls	r3, r1
 8004468:	6879      	ldr	r1, [r7, #4]
 800446a:	434b      	muls	r3, r1
 800446c:	431a      	orrs	r2, r3
 800446e:	68fb      	ldr	r3, [r7, #12]
 8004470:	621a      	str	r2, [r3, #32]
 8004472:	46c0      	nop			; (mov r8, r8)
 8004474:	46bd      	mov	sp, r7
 8004476:	b004      	add	sp, #16
 8004478:	bd80      	pop	{r7, pc}

0800447a <LL_GPIO_SetAFPin_8_15>:
 800447a:	b580      	push	{r7, lr}
 800447c:	b084      	sub	sp, #16
 800447e:	af00      	add	r7, sp, #0
 8004480:	60f8      	str	r0, [r7, #12]
 8004482:	60b9      	str	r1, [r7, #8]
 8004484:	607a      	str	r2, [r7, #4]
 8004486:	68fb      	ldr	r3, [r7, #12]
 8004488:	6a59      	ldr	r1, [r3, #36]	; 0x24
 800448a:	68bb      	ldr	r3, [r7, #8]
 800448c:	0a1b      	lsrs	r3, r3, #8
 800448e:	68ba      	ldr	r2, [r7, #8]
 8004490:	0a12      	lsrs	r2, r2, #8
 8004492:	4353      	muls	r3, r2
 8004494:	68ba      	ldr	r2, [r7, #8]
 8004496:	0a12      	lsrs	r2, r2, #8
 8004498:	4353      	muls	r3, r2
 800449a:	68ba      	ldr	r2, [r7, #8]
 800449c:	0a12      	lsrs	r2, r2, #8
 800449e:	435a      	muls	r2, r3
 80044a0:	0013      	movs	r3, r2
 80044a2:	011b      	lsls	r3, r3, #4
 80044a4:	1a9b      	subs	r3, r3, r2
 80044a6:	43db      	mvns	r3, r3
 80044a8:	400b      	ands	r3, r1
 80044aa:	001a      	movs	r2, r3
 80044ac:	68bb      	ldr	r3, [r7, #8]
 80044ae:	0a1b      	lsrs	r3, r3, #8
 80044b0:	68b9      	ldr	r1, [r7, #8]
 80044b2:	0a09      	lsrs	r1, r1, #8
 80044b4:	434b      	muls	r3, r1
 80044b6:	68b9      	ldr	r1, [r7, #8]
 80044b8:	0a09      	lsrs	r1, r1, #8
 80044ba:	434b      	muls	r3, r1
 80044bc:	68b9      	ldr	r1, [r7, #8]
 80044be:	0a09      	lsrs	r1, r1, #8
 80044c0:	434b      	muls	r3, r1
 80044c2:	6879      	ldr	r1, [r7, #4]
 80044c4:	434b      	muls	r3, r1
 80044c6:	431a      	orrs	r2, r3
 80044c8:	68fb      	ldr	r3, [r7, #12]
 80044ca:	625a      	str	r2, [r3, #36]	; 0x24
 80044cc:	46c0      	nop			; (mov r8, r8)
 80044ce:	46bd      	mov	sp, r7
 80044d0:	b004      	add	sp, #16
 80044d2:	bd80      	pop	{r7, pc}

080044d4 <LL_USART_Enable>:
 80044d4:	b580      	push	{r7, lr}
 80044d6:	b082      	sub	sp, #8
 80044d8:	af00      	add	r7, sp, #0
 80044da:	6078      	str	r0, [r7, #4]
 80044dc:	687b      	ldr	r3, [r7, #4]
 80044de:	681b      	ldr	r3, [r3, #0]
 80044e0:	2201      	movs	r2, #1
 80044e2:	431a      	orrs	r2, r3
 80044e4:	687b      	ldr	r3, [r7, #4]
 80044e6:	601a      	str	r2, [r3, #0]
 80044e8:	46c0      	nop			; (mov r8, r8)
 80044ea:	46bd      	mov	sp, r7
 80044ec:	b002      	add	sp, #8
 80044ee:	bd80      	pop	{r7, pc}

080044f0 <LL_USART_SetTransferDirection>:
 80044f0:	b580      	push	{r7, lr}
 80044f2:	b082      	sub	sp, #8
 80044f4:	af00      	add	r7, sp, #0
 80044f6:	6078      	str	r0, [r7, #4]
 80044f8:	6039      	str	r1, [r7, #0]
 80044fa:	687b      	ldr	r3, [r7, #4]
 80044fc:	681b      	ldr	r3, [r3, #0]
 80044fe:	220c      	movs	r2, #12
 8004500:	4393      	bics	r3, r2
 8004502:	001a      	movs	r2, r3
 8004504:	683b      	ldr	r3, [r7, #0]
 8004506:	431a      	orrs	r2, r3
 8004508:	687b      	ldr	r3, [r7, #4]
 800450a:	601a      	str	r2, [r3, #0]
 800450c:	46c0      	nop			; (mov r8, r8)
 800450e:	46bd      	mov	sp, r7
 8004510:	b002      	add	sp, #8
 8004512:	bd80      	pop	{r7, pc}

08004514 <LL_USART_SetParity>:
 8004514:	b580      	push	{r7, lr}
 8004516:	b082      	sub	sp, #8
 8004518:	af00      	add	r7, sp, #0
 800451a:	6078      	str	r0, [r7, #4]
 800451c:	6039      	str	r1, [r7, #0]
 800451e:	687b      	ldr	r3, [r7, #4]
 8004520:	681b      	ldr	r3, [r3, #0]
 8004522:	4a05      	ldr	r2, [pc, #20]	; (8004538 <LL_USART_SetParity+0x24>)
 8004524:	401a      	ands	r2, r3
 8004526:	683b      	ldr	r3, [r7, #0]
 8004528:	431a      	orrs	r2, r3
 800452a:	687b      	ldr	r3, [r7, #4]
 800452c:	601a      	str	r2, [r3, #0]
 800452e:	46c0      	nop			; (mov r8, r8)
 8004530:	46bd      	mov	sp, r7
 8004532:	b002      	add	sp, #8
 8004534:	bd80      	pop	{r7, pc}
 8004536:	46c0      	nop			; (mov r8, r8)
 8004538:	fffff9ff 	.word	0xfffff9ff

0800453c <LL_USART_SetDataWidth>:
 800453c:	b580      	push	{r7, lr}
 800453e:	b082      	sub	sp, #8
 8004540:	af00      	add	r7, sp, #0
 8004542:	6078      	str	r0, [r7, #4]
 8004544:	6039      	str	r1, [r7, #0]
 8004546:	687b      	ldr	r3, [r7, #4]
 8004548:	681b      	ldr	r3, [r3, #0]
 800454a:	4a05      	ldr	r2, [pc, #20]	; (8004560 <LL_USART_SetDataWidth+0x24>)
 800454c:	401a      	ands	r2, r3
 800454e:	683b      	ldr	r3, [r7, #0]
 8004550:	431a      	orrs	r2, r3
 8004552:	687b      	ldr	r3, [r7, #4]
 8004554:	601a      	str	r2, [r3, #0]
 8004556:	46c0      	nop			; (mov r8, r8)
 8004558:	46bd      	mov	sp, r7
 800455a:	b002      	add	sp, #8
 800455c:	bd80      	pop	{r7, pc}
 800455e:	46c0      	nop			; (mov r8, r8)
 8004560:	ffffefff 	.word	0xffffefff

08004564 <LL_USART_SetStopBitsLength>:
 8004564:	b580      	push	{r7, lr}
 8004566:	b082      	sub	sp, #8
 8004568:	af00      	add	r7, sp, #0
 800456a:	6078      	str	r0, [r7, #4]
 800456c:	6039      	str	r1, [r7, #0]
 800456e:	687b      	ldr	r3, [r7, #4]
 8004570:	685b      	ldr	r3, [r3, #4]
 8004572:	4a05      	ldr	r2, [pc, #20]	; (8004588 <LL_USART_SetStopBitsLength+0x24>)
 8004574:	401a      	ands	r2, r3
 8004576:	683b      	ldr	r3, [r7, #0]
 8004578:	431a      	orrs	r2, r3
 800457a:	687b      	ldr	r3, [r7, #4]
 800457c:	605a      	str	r2, [r3, #4]
 800457e:	46c0      	nop			; (mov r8, r8)
 8004580:	46bd      	mov	sp, r7
 8004582:	b002      	add	sp, #8
 8004584:	bd80      	pop	{r7, pc}
 8004586:	46c0      	nop			; (mov r8, r8)
 8004588:	ffffcfff 	.word	0xffffcfff

0800458c <LL_USART_SetTransferBitOrder>:
 800458c:	b580      	push	{r7, lr}
 800458e:	b082      	sub	sp, #8
 8004590:	af00      	add	r7, sp, #0
 8004592:	6078      	str	r0, [r7, #4]
 8004594:	6039      	str	r1, [r7, #0]
 8004596:	687b      	ldr	r3, [r7, #4]
 8004598:	685b      	ldr	r3, [r3, #4]
 800459a:	4a05      	ldr	r2, [pc, #20]	; (80045b0 <LL_USART_SetTransferBitOrder+0x24>)
 800459c:	401a      	ands	r2, r3
 800459e:	683b      	ldr	r3, [r7, #0]
 80045a0:	431a      	orrs	r2, r3
 80045a2:	687b      	ldr	r3, [r7, #4]
 80045a4:	605a      	str	r2, [r3, #4]
 80045a6:	46c0      	nop			; (mov r8, r8)
 80045a8:	46bd      	mov	sp, r7
 80045aa:	b002      	add	sp, #8
 80045ac:	bd80      	pop	{r7, pc}
 80045ae:	46c0      	nop			; (mov r8, r8)
 80045b0:	fff7ffff 	.word	0xfff7ffff

080045b4 <LL_USART_SetBaudRate>:
 80045b4:	b5b0      	push	{r4, r5, r7, lr}
 80045b6:	b084      	sub	sp, #16
 80045b8:	af00      	add	r7, sp, #0
 80045ba:	60f8      	str	r0, [r7, #12]
 80045bc:	60b9      	str	r1, [r7, #8]
 80045be:	607a      	str	r2, [r7, #4]
 80045c0:	603b      	str	r3, [r7, #0]
 80045c2:	2500      	movs	r5, #0
 80045c4:	2400      	movs	r4, #0
 80045c6:	687a      	ldr	r2, [r7, #4]
 80045c8:	2380      	movs	r3, #128	; 0x80
 80045ca:	021b      	lsls	r3, r3, #8
 80045cc:	429a      	cmp	r2, r3
 80045ce:	d117      	bne.n	8004600 <LL_USART_SetBaudRate+0x4c>
 80045d0:	68bb      	ldr	r3, [r7, #8]
 80045d2:	005a      	lsls	r2, r3, #1
 80045d4:	683b      	ldr	r3, [r7, #0]
 80045d6:	085b      	lsrs	r3, r3, #1
 80045d8:	18d3      	adds	r3, r2, r3
 80045da:	6839      	ldr	r1, [r7, #0]
 80045dc:	0018      	movs	r0, r3
 80045de:	f7fb fd93 	bl	8000108 <__udivsi3>
 80045e2:	0003      	movs	r3, r0
 80045e4:	b29b      	uxth	r3, r3
 80045e6:	001d      	movs	r5, r3
 80045e8:	4b0e      	ldr	r3, [pc, #56]	; (8004624 <LL_USART_SetBaudRate+0x70>)
 80045ea:	402b      	ands	r3, r5
 80045ec:	001c      	movs	r4, r3
 80045ee:	086b      	lsrs	r3, r5, #1
 80045f0:	b29b      	uxth	r3, r3
 80045f2:	001a      	movs	r2, r3
 80045f4:	2307      	movs	r3, #7
 80045f6:	4013      	ands	r3, r2
 80045f8:	431c      	orrs	r4, r3
 80045fa:	68fb      	ldr	r3, [r7, #12]
 80045fc:	60dc      	str	r4, [r3, #12]
 80045fe:	e00c      	b.n	800461a <LL_USART_SetBaudRate+0x66>
 8004600:	683b      	ldr	r3, [r7, #0]
 8004602:	085a      	lsrs	r2, r3, #1
 8004604:	68bb      	ldr	r3, [r7, #8]
 8004606:	18d3      	adds	r3, r2, r3
 8004608:	6839      	ldr	r1, [r7, #0]
 800460a:	0018      	movs	r0, r3
 800460c:	f7fb fd7c 	bl	8000108 <__udivsi3>
 8004610:	0003      	movs	r3, r0
 8004612:	b29b      	uxth	r3, r3
 8004614:	001a      	movs	r2, r3
 8004616:	68fb      	ldr	r3, [r7, #12]
 8004618:	60da      	str	r2, [r3, #12]
 800461a:	46c0      	nop			; (mov r8, r8)
 800461c:	46bd      	mov	sp, r7
 800461e:	b004      	add	sp, #16
 8004620:	bdb0      	pop	{r4, r5, r7, pc}
 8004622:	46c0      	nop			; (mov r8, r8)
 8004624:	0000fff0 	.word	0x0000fff0

08004628 <LL_USART_IsActiveFlag_TEACK>:
 8004628:	b580      	push	{r7, lr}
 800462a:	b082      	sub	sp, #8
 800462c:	af00      	add	r7, sp, #0
 800462e:	6078      	str	r0, [r7, #4]
 8004630:	687b      	ldr	r3, [r7, #4]
 8004632:	69da      	ldr	r2, [r3, #28]
 8004634:	2380      	movs	r3, #128	; 0x80
 8004636:	039b      	lsls	r3, r3, #14
 8004638:	4013      	ands	r3, r2
 800463a:	4a05      	ldr	r2, [pc, #20]	; (8004650 <LL_USART_IsActiveFlag_TEACK+0x28>)
 800463c:	4694      	mov	ip, r2
 800463e:	4463      	add	r3, ip
 8004640:	425a      	negs	r2, r3
 8004642:	4153      	adcs	r3, r2
 8004644:	b2db      	uxtb	r3, r3
 8004646:	0018      	movs	r0, r3
 8004648:	46bd      	mov	sp, r7
 800464a:	b002      	add	sp, #8
 800464c:	bd80      	pop	{r7, pc}
 800464e:	46c0      	nop			; (mov r8, r8)
 8004650:	ffe00000 	.word	0xffe00000

08004654 <LL_USART_IsActiveFlag_REACK>:
 8004654:	b580      	push	{r7, lr}
 8004656:	b082      	sub	sp, #8
 8004658:	af00      	add	r7, sp, #0
 800465a:	6078      	str	r0, [r7, #4]
 800465c:	687b      	ldr	r3, [r7, #4]
 800465e:	69da      	ldr	r2, [r3, #28]
 8004660:	2380      	movs	r3, #128	; 0x80
 8004662:	03db      	lsls	r3, r3, #15
 8004664:	4013      	ands	r3, r2
 8004666:	4a05      	ldr	r2, [pc, #20]	; (800467c <LL_USART_IsActiveFlag_REACK+0x28>)
 8004668:	4694      	mov	ip, r2
 800466a:	4463      	add	r3, ip
 800466c:	425a      	negs	r2, r3
 800466e:	4153      	adcs	r3, r2
 8004670:	b2db      	uxtb	r3, r3
 8004672:	0018      	movs	r0, r3
 8004674:	46bd      	mov	sp, r7
 8004676:	b002      	add	sp, #8
 8004678:	bd80      	pop	{r7, pc}
 800467a:	46c0      	nop			; (mov r8, r8)
 800467c:	ffc00000 	.word	0xffc00000

08004680 <LL_I2C_Enable>:
 8004680:	b580      	push	{r7, lr}
 8004682:	b082      	sub	sp, #8
 8004684:	af00      	add	r7, sp, #0
 8004686:	6078      	str	r0, [r7, #4]
 8004688:	687b      	ldr	r3, [r7, #4]
 800468a:	681b      	ldr	r3, [r3, #0]
 800468c:	2201      	movs	r2, #1
 800468e:	431a      	orrs	r2, r3
 8004690:	687b      	ldr	r3, [r7, #4]
 8004692:	601a      	str	r2, [r3, #0]
 8004694:	46c0      	nop			; (mov r8, r8)
 8004696:	46bd      	mov	sp, r7
 8004698:	b002      	add	sp, #8
 800469a:	bd80      	pop	{r7, pc}

0800469c <LL_I2C_Disable>:
 800469c:	b580      	push	{r7, lr}
 800469e:	b082      	sub	sp, #8
 80046a0:	af00      	add	r7, sp, #0
 80046a2:	6078      	str	r0, [r7, #4]
 80046a4:	687b      	ldr	r3, [r7, #4]
 80046a6:	681b      	ldr	r3, [r3, #0]
 80046a8:	2201      	movs	r2, #1
 80046aa:	4393      	bics	r3, r2
 80046ac:	001a      	movs	r2, r3
 80046ae:	687b      	ldr	r3, [r7, #4]
 80046b0:	601a      	str	r2, [r3, #0]
 80046b2:	46c0      	nop			; (mov r8, r8)
 80046b4:	46bd      	mov	sp, r7
 80046b6:	b002      	add	sp, #8
 80046b8:	bd80      	pop	{r7, pc}
	...

080046bc <LL_I2C_SetDigitalFilter>:
 80046bc:	b580      	push	{r7, lr}
 80046be:	b082      	sub	sp, #8
 80046c0:	af00      	add	r7, sp, #0
 80046c2:	6078      	str	r0, [r7, #4]
 80046c4:	6039      	str	r1, [r7, #0]
 80046c6:	687b      	ldr	r3, [r7, #4]
 80046c8:	681b      	ldr	r3, [r3, #0]
 80046ca:	4a05      	ldr	r2, [pc, #20]	; (80046e0 <LL_I2C_SetDigitalFilter+0x24>)
 80046cc:	401a      	ands	r2, r3
 80046ce:	683b      	ldr	r3, [r7, #0]
 80046d0:	021b      	lsls	r3, r3, #8
 80046d2:	431a      	orrs	r2, r3
 80046d4:	687b      	ldr	r3, [r7, #4]
 80046d6:	601a      	str	r2, [r3, #0]
 80046d8:	46c0      	nop			; (mov r8, r8)
 80046da:	46bd      	mov	sp, r7
 80046dc:	b002      	add	sp, #8
 80046de:	bd80      	pop	{r7, pc}
 80046e0:	fffff0ff 	.word	0xfffff0ff

080046e4 <LL_I2C_DisableAnalogFilter>:
 80046e4:	b580      	push	{r7, lr}
 80046e6:	b082      	sub	sp, #8
 80046e8:	af00      	add	r7, sp, #0
 80046ea:	6078      	str	r0, [r7, #4]
 80046ec:	687b      	ldr	r3, [r7, #4]
 80046ee:	681b      	ldr	r3, [r3, #0]
 80046f0:	2280      	movs	r2, #128	; 0x80
 80046f2:	0152      	lsls	r2, r2, #5
 80046f4:	431a      	orrs	r2, r3
 80046f6:	687b      	ldr	r3, [r7, #4]
 80046f8:	601a      	str	r2, [r3, #0]
 80046fa:	46c0      	nop			; (mov r8, r8)
 80046fc:	46bd      	mov	sp, r7
 80046fe:	b002      	add	sp, #8
 8004700:	bd80      	pop	{r7, pc}

08004702 <LL_I2C_DisableClockStretching>:
 8004702:	b580      	push	{r7, lr}
 8004704:	b082      	sub	sp, #8
 8004706:	af00      	add	r7, sp, #0
 8004708:	6078      	str	r0, [r7, #4]
 800470a:	687b      	ldr	r3, [r7, #4]
 800470c:	681b      	ldr	r3, [r3, #0]
 800470e:	2280      	movs	r2, #128	; 0x80
 8004710:	0292      	lsls	r2, r2, #10
 8004712:	431a      	orrs	r2, r3
 8004714:	687b      	ldr	r3, [r7, #4]
 8004716:	601a      	str	r2, [r3, #0]
 8004718:	46c0      	nop			; (mov r8, r8)
 800471a:	46bd      	mov	sp, r7
 800471c:	b002      	add	sp, #8
 800471e:	bd80      	pop	{r7, pc}

08004720 <LL_I2C_SetMasterAddressingMode>:
 8004720:	b580      	push	{r7, lr}
 8004722:	b082      	sub	sp, #8
 8004724:	af00      	add	r7, sp, #0
 8004726:	6078      	str	r0, [r7, #4]
 8004728:	6039      	str	r1, [r7, #0]
 800472a:	687b      	ldr	r3, [r7, #4]
 800472c:	685b      	ldr	r3, [r3, #4]
 800472e:	4a05      	ldr	r2, [pc, #20]	; (8004744 <LL_I2C_SetMasterAddressingMode+0x24>)
 8004730:	401a      	ands	r2, r3
 8004732:	683b      	ldr	r3, [r7, #0]
 8004734:	431a      	orrs	r2, r3
 8004736:	687b      	ldr	r3, [r7, #4]
 8004738:	605a      	str	r2, [r3, #4]
 800473a:	46c0      	nop			; (mov r8, r8)
 800473c:	46bd      	mov	sp, r7
 800473e:	b002      	add	sp, #8
 8004740:	bd80      	pop	{r7, pc}
 8004742:	46c0      	nop			; (mov r8, r8)
 8004744:	fffff7ff 	.word	0xfffff7ff

08004748 <LL_I2C_SetTiming>:
 8004748:	b580      	push	{r7, lr}
 800474a:	b082      	sub	sp, #8
 800474c:	af00      	add	r7, sp, #0
 800474e:	6078      	str	r0, [r7, #4]
 8004750:	6039      	str	r1, [r7, #0]
 8004752:	687b      	ldr	r3, [r7, #4]
 8004754:	683a      	ldr	r2, [r7, #0]
 8004756:	611a      	str	r2, [r3, #16]
 8004758:	46c0      	nop			; (mov r8, r8)
 800475a:	46bd      	mov	sp, r7
 800475c:	b002      	add	sp, #8
 800475e:	bd80      	pop	{r7, pc}

08004760 <LL_I2C_SetMode>:
 8004760:	b580      	push	{r7, lr}
 8004762:	b082      	sub	sp, #8
 8004764:	af00      	add	r7, sp, #0
 8004766:	6078      	str	r0, [r7, #4]
 8004768:	6039      	str	r1, [r7, #0]
 800476a:	687b      	ldr	r3, [r7, #4]
 800476c:	681b      	ldr	r3, [r3, #0]
 800476e:	4a05      	ldr	r2, [pc, #20]	; (8004784 <LL_I2C_SetMode+0x24>)
 8004770:	401a      	ands	r2, r3
 8004772:	683b      	ldr	r3, [r7, #0]
 8004774:	431a      	orrs	r2, r3
 8004776:	687b      	ldr	r3, [r7, #4]
 8004778:	601a      	str	r2, [r3, #0]
 800477a:	46c0      	nop			; (mov r8, r8)
 800477c:	46bd      	mov	sp, r7
 800477e:	b002      	add	sp, #8
 8004780:	bd80      	pop	{r7, pc}
 8004782:	46c0      	nop			; (mov r8, r8)
 8004784:	ffcfffff 	.word	0xffcfffff

08004788 <rcc_config>:
 8004788:	b580      	push	{r7, lr}
 800478a:	af00      	add	r7, sp, #0
 800478c:	2001      	movs	r0, #1
 800478e:	f7ff fd8d 	bl	80042ac <LL_FLASH_SetLatency>
 8004792:	f7ff fcad 	bl	80040f0 <LL_RCC_HSI_Enable>
 8004796:	46c0      	nop			; (mov r8, r8)
 8004798:	f7ff fcb8 	bl	800410c <LL_RCC_HSI_IsReady>
 800479c:	0003      	movs	r3, r0
 800479e:	2b01      	cmp	r3, #1
 80047a0:	d1fa      	bne.n	8004798 <rcc_config+0x10>
 80047a2:	23a0      	movs	r3, #160	; 0xa0
 80047a4:	039b      	lsls	r3, r3, #14
 80047a6:	0019      	movs	r1, r3
 80047a8:	2000      	movs	r0, #0
 80047aa:	f7ff fd59 	bl	8004260 <LL_RCC_PLL_ConfigDomain_SYS>
 80047ae:	f7ff fd35 	bl	800421c <LL_RCC_PLL_Enable>
 80047b2:	46c0      	nop			; (mov r8, r8)
 80047b4:	f7ff fd40 	bl	8004238 <LL_RCC_PLL_IsReady>
 80047b8:	0003      	movs	r3, r0
 80047ba:	2b01      	cmp	r3, #1
 80047bc:	d1fa      	bne.n	80047b4 <rcc_config+0x2c>
 80047be:	2000      	movs	r0, #0
 80047c0:	f7ff fcd4 	bl	800416c <LL_RCC_SetAHBPrescaler>
 80047c4:	2002      	movs	r0, #2
 80047c6:	f7ff fcb1 	bl	800412c <LL_RCC_SetSysClkSource>
 80047ca:	46c0      	nop			; (mov r8, r8)
 80047cc:	f7ff fcc2 	bl	8004154 <LL_RCC_GetSysClkSource>
 80047d0:	0003      	movs	r3, r0
 80047d2:	2b08      	cmp	r3, #8
 80047d4:	d1fa      	bne.n	80047cc <rcc_config+0x44>
 80047d6:	2000      	movs	r0, #0
 80047d8:	f7ff fcdc 	bl	8004194 <LL_RCC_SetAPB1Prescaler>
 80047dc:	4b02      	ldr	r3, [pc, #8]	; (80047e8 <rcc_config+0x60>)
 80047de:	4a03      	ldr	r2, [pc, #12]	; (80047ec <rcc_config+0x64>)
 80047e0:	601a      	str	r2, [r3, #0]
 80047e2:	46c0      	nop			; (mov r8, r8)
 80047e4:	46bd      	mov	sp, r7
 80047e6:	bd80      	pop	{r7, pc}
 80047e8:	20000008 	.word	0x20000008
 80047ec:	02dc6c00 	.word	0x02dc6c00

080047f0 <gpio_config>:
 80047f0:	b580      	push	{r7, lr}
 80047f2:	af00      	add	r7, sp, #0
 80047f4:	2380      	movs	r3, #128	; 0x80
 80047f6:	031b      	lsls	r3, r3, #12
 80047f8:	0018      	movs	r0, r3
 80047fa:	f7ff fd6b 	bl	80042d4 <LL_AHB1_GRP1_EnableClock>
 80047fe:	2380      	movs	r3, #128	; 0x80
 8004800:	005b      	lsls	r3, r3, #1
 8004802:	4804      	ldr	r0, [pc, #16]	; (8004814 <gpio_config+0x24>)
 8004804:	2201      	movs	r2, #1
 8004806:	0019      	movs	r1, r3
 8004808:	f7ff fda6 	bl	8004358 <LL_GPIO_SetPinMode>
 800480c:	46c0      	nop			; (mov r8, r8)
 800480e:	46bd      	mov	sp, r7
 8004810:	bd80      	pop	{r7, pc}
 8004812:	46c0      	nop			; (mov r8, r8)
 8004814:	48000800 	.word	0x48000800

08004818 <exti_config>:
 8004818:	b580      	push	{r7, lr}
 800481a:	af00      	add	r7, sp, #0
 800481c:	46c0      	nop			; (mov r8, r8)
 800481e:	46bd      	mov	sp, r7
 8004820:	bd80      	pop	{r7, pc}
	...

08004824 <usart_config>:
 8004824:	b580      	push	{r7, lr}
 8004826:	af00      	add	r7, sp, #0
 8004828:	2380      	movs	r3, #128	; 0x80
 800482a:	029b      	lsls	r3, r3, #10
 800482c:	0018      	movs	r0, r3
 800482e:	f7ff fd51 	bl	80042d4 <LL_AHB1_GRP1_EnableClock>
 8004832:	2380      	movs	r3, #128	; 0x80
 8004834:	0099      	lsls	r1, r3, #2
 8004836:	2390      	movs	r3, #144	; 0x90
 8004838:	05db      	lsls	r3, r3, #23
 800483a:	2202      	movs	r2, #2
 800483c:	0018      	movs	r0, r3
 800483e:	f7ff fd8b 	bl	8004358 <LL_GPIO_SetPinMode>
 8004842:	2380      	movs	r3, #128	; 0x80
 8004844:	0099      	lsls	r1, r3, #2
 8004846:	2390      	movs	r3, #144	; 0x90
 8004848:	05db      	lsls	r3, r3, #23
 800484a:	2201      	movs	r2, #1
 800484c:	0018      	movs	r0, r3
 800484e:	f7ff fe14 	bl	800447a <LL_GPIO_SetAFPin_8_15>
 8004852:	2380      	movs	r3, #128	; 0x80
 8004854:	0099      	lsls	r1, r3, #2
 8004856:	2390      	movs	r3, #144	; 0x90
 8004858:	05db      	lsls	r3, r3, #23
 800485a:	2203      	movs	r2, #3
 800485c:	0018      	movs	r0, r3
 800485e:	f7ff fdad 	bl	80043bc <LL_GPIO_SetPinSpeed>
 8004862:	2380      	movs	r3, #128	; 0x80
 8004864:	00d9      	lsls	r1, r3, #3
 8004866:	2390      	movs	r3, #144	; 0x90
 8004868:	05db      	lsls	r3, r3, #23
 800486a:	2202      	movs	r2, #2
 800486c:	0018      	movs	r0, r3
 800486e:	f7ff fd73 	bl	8004358 <LL_GPIO_SetPinMode>
 8004872:	2380      	movs	r3, #128	; 0x80
 8004874:	00d9      	lsls	r1, r3, #3
 8004876:	2390      	movs	r3, #144	; 0x90
 8004878:	05db      	lsls	r3, r3, #23
 800487a:	2201      	movs	r2, #1
 800487c:	0018      	movs	r0, r3
 800487e:	f7ff fdfc 	bl	800447a <LL_GPIO_SetAFPin_8_15>
 8004882:	2380      	movs	r3, #128	; 0x80
 8004884:	00d9      	lsls	r1, r3, #3
 8004886:	2390      	movs	r3, #144	; 0x90
 8004888:	05db      	lsls	r3, r3, #23
 800488a:	2203      	movs	r2, #3
 800488c:	0018      	movs	r0, r3
 800488e:	f7ff fd95 	bl	80043bc <LL_GPIO_SetPinSpeed>
 8004892:	2380      	movs	r3, #128	; 0x80
 8004894:	01db      	lsls	r3, r3, #7
 8004896:	0018      	movs	r0, r3
 8004898:	f7ff fd48 	bl	800432c <LL_APB1_GRP2_EnableClock>
 800489c:	2000      	movs	r0, #0
 800489e:	f7ff fc8f 	bl	80041c0 <LL_RCC_SetUSARTClockSource>
 80048a2:	4b1a      	ldr	r3, [pc, #104]	; (800490c <usart_config+0xe8>)
 80048a4:	210c      	movs	r1, #12
 80048a6:	0018      	movs	r0, r3
 80048a8:	f7ff fe22 	bl	80044f0 <LL_USART_SetTransferDirection>
 80048ac:	4b17      	ldr	r3, [pc, #92]	; (800490c <usart_config+0xe8>)
 80048ae:	2100      	movs	r1, #0
 80048b0:	0018      	movs	r0, r3
 80048b2:	f7ff fe2f 	bl	8004514 <LL_USART_SetParity>
 80048b6:	4b15      	ldr	r3, [pc, #84]	; (800490c <usart_config+0xe8>)
 80048b8:	2100      	movs	r1, #0
 80048ba:	0018      	movs	r0, r3
 80048bc:	f7ff fe3e 	bl	800453c <LL_USART_SetDataWidth>
 80048c0:	4b12      	ldr	r3, [pc, #72]	; (800490c <usart_config+0xe8>)
 80048c2:	2100      	movs	r1, #0
 80048c4:	0018      	movs	r0, r3
 80048c6:	f7ff fe4d 	bl	8004564 <LL_USART_SetStopBitsLength>
 80048ca:	4b10      	ldr	r3, [pc, #64]	; (800490c <usart_config+0xe8>)
 80048cc:	2100      	movs	r1, #0
 80048ce:	0018      	movs	r0, r3
 80048d0:	f7ff fe5c 	bl	800458c <LL_USART_SetTransferBitOrder>
 80048d4:	4b0e      	ldr	r3, [pc, #56]	; (8004910 <usart_config+0xec>)
 80048d6:	6819      	ldr	r1, [r3, #0]
 80048d8:	23e1      	movs	r3, #225	; 0xe1
 80048da:	025b      	lsls	r3, r3, #9
 80048dc:	480b      	ldr	r0, [pc, #44]	; (800490c <usart_config+0xe8>)
 80048de:	2200      	movs	r2, #0
 80048e0:	f7ff fe68 	bl	80045b4 <LL_USART_SetBaudRate>
 80048e4:	4b09      	ldr	r3, [pc, #36]	; (800490c <usart_config+0xe8>)
 80048e6:	0018      	movs	r0, r3
 80048e8:	f7ff fdf4 	bl	80044d4 <LL_USART_Enable>
 80048ec:	46c0      	nop			; (mov r8, r8)
 80048ee:	4b07      	ldr	r3, [pc, #28]	; (800490c <usart_config+0xe8>)
 80048f0:	0018      	movs	r0, r3
 80048f2:	f7ff fe99 	bl	8004628 <LL_USART_IsActiveFlag_TEACK>
 80048f6:	1e03      	subs	r3, r0, #0
 80048f8:	d0f9      	beq.n	80048ee <usart_config+0xca>
 80048fa:	4b04      	ldr	r3, [pc, #16]	; (800490c <usart_config+0xe8>)
 80048fc:	0018      	movs	r0, r3
 80048fe:	f7ff fea9 	bl	8004654 <LL_USART_IsActiveFlag_REACK>
 8004902:	1e03      	subs	r3, r0, #0
 8004904:	d0f3      	beq.n	80048ee <usart_config+0xca>
 8004906:	46c0      	nop			; (mov r8, r8)
 8004908:	46bd      	mov	sp, r7
 800490a:	bd80      	pop	{r7, pc}
 800490c:	40013800 	.word	0x40013800
 8004910:	20000008 	.word	0x20000008

08004914 <i2c_config>:
 8004914:	b580      	push	{r7, lr}
 8004916:	af00      	add	r7, sp, #0
 8004918:	2380      	movs	r3, #128	; 0x80
 800491a:	02db      	lsls	r3, r3, #11
 800491c:	0018      	movs	r0, r3
 800491e:	f7ff fcd9 	bl	80042d4 <LL_AHB1_GRP1_EnableClock>
 8004922:	4b36      	ldr	r3, [pc, #216]	; (80049fc <i2c_config+0xe8>)
 8004924:	2202      	movs	r2, #2
 8004926:	2140      	movs	r1, #64	; 0x40
 8004928:	0018      	movs	r0, r3
 800492a:	f7ff fd15 	bl	8004358 <LL_GPIO_SetPinMode>
 800492e:	4b33      	ldr	r3, [pc, #204]	; (80049fc <i2c_config+0xe8>)
 8004930:	2201      	movs	r2, #1
 8004932:	2140      	movs	r1, #64	; 0x40
 8004934:	0018      	movs	r0, r3
 8004936:	f7ff fd2c 	bl	8004392 <LL_GPIO_SetPinOutputType>
 800493a:	4b30      	ldr	r3, [pc, #192]	; (80049fc <i2c_config+0xe8>)
 800493c:	2201      	movs	r2, #1
 800493e:	2140      	movs	r1, #64	; 0x40
 8004940:	0018      	movs	r0, r3
 8004942:	f7ff fd58 	bl	80043f6 <LL_GPIO_SetPinPull>
 8004946:	4b2d      	ldr	r3, [pc, #180]	; (80049fc <i2c_config+0xe8>)
 8004948:	2201      	movs	r2, #1
 800494a:	2140      	movs	r1, #64	; 0x40
 800494c:	0018      	movs	r0, r3
 800494e:	f7ff fd6f 	bl	8004430 <LL_GPIO_SetAFPin_0_7>
 8004952:	4b2a      	ldr	r3, [pc, #168]	; (80049fc <i2c_config+0xe8>)
 8004954:	2203      	movs	r2, #3
 8004956:	2140      	movs	r1, #64	; 0x40
 8004958:	0018      	movs	r0, r3
 800495a:	f7ff fd2f 	bl	80043bc <LL_GPIO_SetPinSpeed>
 800495e:	4b27      	ldr	r3, [pc, #156]	; (80049fc <i2c_config+0xe8>)
 8004960:	2202      	movs	r2, #2
 8004962:	2180      	movs	r1, #128	; 0x80
 8004964:	0018      	movs	r0, r3
 8004966:	f7ff fcf7 	bl	8004358 <LL_GPIO_SetPinMode>
 800496a:	4b24      	ldr	r3, [pc, #144]	; (80049fc <i2c_config+0xe8>)
 800496c:	2201      	movs	r2, #1
 800496e:	2180      	movs	r1, #128	; 0x80
 8004970:	0018      	movs	r0, r3
 8004972:	f7ff fd0e 	bl	8004392 <LL_GPIO_SetPinOutputType>
 8004976:	4b21      	ldr	r3, [pc, #132]	; (80049fc <i2c_config+0xe8>)
 8004978:	2201      	movs	r2, #1
 800497a:	2180      	movs	r1, #128	; 0x80
 800497c:	0018      	movs	r0, r3
 800497e:	f7ff fd3a 	bl	80043f6 <LL_GPIO_SetPinPull>
 8004982:	4b1e      	ldr	r3, [pc, #120]	; (80049fc <i2c_config+0xe8>)
 8004984:	2201      	movs	r2, #1
 8004986:	2180      	movs	r1, #128	; 0x80
 8004988:	0018      	movs	r0, r3
 800498a:	f7ff fd51 	bl	8004430 <LL_GPIO_SetAFPin_0_7>
 800498e:	4b1b      	ldr	r3, [pc, #108]	; (80049fc <i2c_config+0xe8>)
 8004990:	2203      	movs	r2, #3
 8004992:	2180      	movs	r1, #128	; 0x80
 8004994:	0018      	movs	r0, r3
 8004996:	f7ff fd11 	bl	80043bc <LL_GPIO_SetPinSpeed>
 800499a:	2010      	movs	r0, #16
 800499c:	f7ff fc2a 	bl	80041f4 <LL_RCC_SetI2CClockSource>
 80049a0:	4b17      	ldr	r3, [pc, #92]	; (8004a00 <i2c_config+0xec>)
 80049a2:	0018      	movs	r0, r3
 80049a4:	f7ff fe7a 	bl	800469c <LL_I2C_Disable>
 80049a8:	2380      	movs	r3, #128	; 0x80
 80049aa:	039b      	lsls	r3, r3, #14
 80049ac:	0018      	movs	r0, r3
 80049ae:	f7ff fca7 	bl	8004300 <LL_APB1_GRP1_EnableClock>
 80049b2:	4b13      	ldr	r3, [pc, #76]	; (8004a00 <i2c_config+0xec>)
 80049b4:	0018      	movs	r0, r3
 80049b6:	f7ff fe95 	bl	80046e4 <LL_I2C_DisableAnalogFilter>
 80049ba:	4b11      	ldr	r3, [pc, #68]	; (8004a00 <i2c_config+0xec>)
 80049bc:	2101      	movs	r1, #1
 80049be:	0018      	movs	r0, r3
 80049c0:	f7ff fe7c 	bl	80046bc <LL_I2C_SetDigitalFilter>
 80049c4:	4a0f      	ldr	r2, [pc, #60]	; (8004a04 <i2c_config+0xf0>)
 80049c6:	4b0e      	ldr	r3, [pc, #56]	; (8004a00 <i2c_config+0xec>)
 80049c8:	0011      	movs	r1, r2
 80049ca:	0018      	movs	r0, r3
 80049cc:	f7ff febc 	bl	8004748 <LL_I2C_SetTiming>
 80049d0:	4b0b      	ldr	r3, [pc, #44]	; (8004a00 <i2c_config+0xec>)
 80049d2:	0018      	movs	r0, r3
 80049d4:	f7ff fe95 	bl	8004702 <LL_I2C_DisableClockStretching>
 80049d8:	4b09      	ldr	r3, [pc, #36]	; (8004a00 <i2c_config+0xec>)
 80049da:	2100      	movs	r1, #0
 80049dc:	0018      	movs	r0, r3
 80049de:	f7ff fe9f 	bl	8004720 <LL_I2C_SetMasterAddressingMode>
 80049e2:	4b07      	ldr	r3, [pc, #28]	; (8004a00 <i2c_config+0xec>)
 80049e4:	2100      	movs	r1, #0
 80049e6:	0018      	movs	r0, r3
 80049e8:	f7ff feba 	bl	8004760 <LL_I2C_SetMode>
 80049ec:	4b04      	ldr	r3, [pc, #16]	; (8004a00 <i2c_config+0xec>)
 80049ee:	0018      	movs	r0, r3
 80049f0:	f7ff fe46 	bl	8004680 <LL_I2C_Enable>
 80049f4:	46c0      	nop			; (mov r8, r8)
 80049f6:	46bd      	mov	sp, r7
 80049f8:	bd80      	pop	{r7, pc}
 80049fa:	46c0      	nop			; (mov r8, r8)
 80049fc:	48000400 	.word	0x48000400
 8004a00:	40005400 	.word	0x40005400
 8004a04:	50330309 	.word	0x50330309

08004a08 <LL_USART_IsActiveFlag_RXNE>:
 8004a08:	b580      	push	{r7, lr}
 8004a0a:	b082      	sub	sp, #8
 8004a0c:	af00      	add	r7, sp, #0
 8004a0e:	6078      	str	r0, [r7, #4]
 8004a10:	687b      	ldr	r3, [r7, #4]
 8004a12:	69db      	ldr	r3, [r3, #28]
 8004a14:	2220      	movs	r2, #32
 8004a16:	4013      	ands	r3, r2
 8004a18:	3b20      	subs	r3, #32
 8004a1a:	425a      	negs	r2, r3
 8004a1c:	4153      	adcs	r3, r2
 8004a1e:	b2db      	uxtb	r3, r3
 8004a20:	0018      	movs	r0, r3
 8004a22:	46bd      	mov	sp, r7
 8004a24:	b002      	add	sp, #8
 8004a26:	bd80      	pop	{r7, pc}

08004a28 <LL_USART_IsActiveFlag_TC>:
 8004a28:	b580      	push	{r7, lr}
 8004a2a:	b082      	sub	sp, #8
 8004a2c:	af00      	add	r7, sp, #0
 8004a2e:	6078      	str	r0, [r7, #4]
 8004a30:	687b      	ldr	r3, [r7, #4]
 8004a32:	69db      	ldr	r3, [r3, #28]
 8004a34:	2240      	movs	r2, #64	; 0x40
 8004a36:	4013      	ands	r3, r2
 8004a38:	3b40      	subs	r3, #64	; 0x40
 8004a3a:	425a      	negs	r2, r3
 8004a3c:	4153      	adcs	r3, r2
 8004a3e:	b2db      	uxtb	r3, r3
 8004a40:	0018      	movs	r0, r3
 8004a42:	46bd      	mov	sp, r7
 8004a44:	b002      	add	sp, #8
 8004a46:	bd80      	pop	{r7, pc}

08004a48 <LL_USART_IsActiveFlag_TXE>:
 8004a48:	b580      	push	{r7, lr}
 8004a4a:	b082      	sub	sp, #8
 8004a4c:	af00      	add	r7, sp, #0
 8004a4e:	6078      	str	r0, [r7, #4]
 8004a50:	687b      	ldr	r3, [r7, #4]
 8004a52:	69db      	ldr	r3, [r3, #28]
 8004a54:	2280      	movs	r2, #128	; 0x80
 8004a56:	4013      	ands	r3, r2
 8004a58:	3b80      	subs	r3, #128	; 0x80
 8004a5a:	425a      	negs	r2, r3
 8004a5c:	4153      	adcs	r3, r2
 8004a5e:	b2db      	uxtb	r3, r3
 8004a60:	0018      	movs	r0, r3
 8004a62:	46bd      	mov	sp, r7
 8004a64:	b002      	add	sp, #8
 8004a66:	bd80      	pop	{r7, pc}

08004a68 <LL_USART_ReceiveData8>:
 8004a68:	b580      	push	{r7, lr}
 8004a6a:	b082      	sub	sp, #8
 8004a6c:	af00      	add	r7, sp, #0
 8004a6e:	6078      	str	r0, [r7, #4]
 8004a70:	687b      	ldr	r3, [r7, #4]
 8004a72:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
 8004a74:	b29b      	uxth	r3, r3
 8004a76:	b2db      	uxtb	r3, r3
 8004a78:	0018      	movs	r0, r3
 8004a7a:	46bd      	mov	sp, r7
 8004a7c:	b002      	add	sp, #8
 8004a7e:	bd80      	pop	{r7, pc}

08004a80 <LL_USART_TransmitData8>:
 8004a80:	b580      	push	{r7, lr}
 8004a82:	b082      	sub	sp, #8
 8004a84:	af00      	add	r7, sp, #0
 8004a86:	6078      	str	r0, [r7, #4]
 8004a88:	000a      	movs	r2, r1
 8004a8a:	1cfb      	adds	r3, r7, #3
 8004a8c:	701a      	strb	r2, [r3, #0]
 8004a8e:	1cfb      	adds	r3, r7, #3
 8004a90:	781b      	ldrb	r3, [r3, #0]
 8004a92:	b29a      	uxth	r2, r3
 8004a94:	687b      	ldr	r3, [r7, #4]
 8004a96:	851a      	strh	r2, [r3, #40]	; 0x28
 8004a98:	46c0      	nop			; (mov r8, r8)
 8004a9a:	46bd      	mov	sp, r7
 8004a9c:	b002      	add	sp, #8
 8004a9e:	bd80      	pop	{r7, pc}

08004aa0 <usart_getc>:
 8004aa0:	b580      	push	{r7, lr}
 8004aa2:	af00      	add	r7, sp, #0
 8004aa4:	46c0      	nop			; (mov r8, r8)
 8004aa6:	4b07      	ldr	r3, [pc, #28]	; (8004ac4 <usart_getc+0x24>)
 8004aa8:	0018      	movs	r0, r3
 8004aaa:	f7ff ffad 	bl	8004a08 <LL_USART_IsActiveFlag_RXNE>
 8004aae:	1e03      	subs	r3, r0, #0
 8004ab0:	d0f9      	beq.n	8004aa6 <usart_getc+0x6>
 8004ab2:	4b04      	ldr	r3, [pc, #16]	; (8004ac4 <usart_getc+0x24>)
 8004ab4:	0018      	movs	r0, r3
 8004ab6:	f7ff ffd7 	bl	8004a68 <LL_USART_ReceiveData8>
 8004aba:	0003      	movs	r3, r0
 8004abc:	0018      	movs	r0, r3
 8004abe:	46bd      	mov	sp, r7
 8004ac0:	bd80      	pop	{r7, pc}
 8004ac2:	46c0      	nop			; (mov r8, r8)
 8004ac4:	40013800 	.word	0x40013800

08004ac8 <usart_putc>:
 8004ac8:	b580      	push	{r7, lr}
 8004aca:	b082      	sub	sp, #8
 8004acc:	af00      	add	r7, sp, #0
 8004ace:	0002      	movs	r2, r0
 8004ad0:	1dfb      	adds	r3, r7, #7
 8004ad2:	701a      	strb	r2, [r3, #0]
 8004ad4:	46c0      	nop			; (mov r8, r8)
 8004ad6:	4b0c      	ldr	r3, [pc, #48]	; (8004b08 <usart_putc+0x40>)
 8004ad8:	0018      	movs	r0, r3
 8004ada:	f7ff ffb5 	bl	8004a48 <LL_USART_IsActiveFlag_TXE>
 8004ade:	1e03      	subs	r3, r0, #0
 8004ae0:	d0f9      	beq.n	8004ad6 <usart_putc+0xe>
 8004ae2:	1dfb      	adds	r3, r7, #7
 8004ae4:	781b      	ldrb	r3, [r3, #0]
 8004ae6:	4a08      	ldr	r2, [pc, #32]	; (8004b08 <usart_putc+0x40>)
 8004ae8:	0019      	movs	r1, r3
 8004aea:	0010      	movs	r0, r2
 8004aec:	f7ff ffc8 	bl	8004a80 <LL_USART_TransmitData8>
 8004af0:	46c0      	nop			; (mov r8, r8)
 8004af2:	4b05      	ldr	r3, [pc, #20]	; (8004b08 <usart_putc+0x40>)
 8004af4:	0018      	movs	r0, r3
 8004af6:	f7ff ff97 	bl	8004a28 <LL_USART_IsActiveFlag_TC>
 8004afa:	1e03      	subs	r3, r0, #0
 8004afc:	d0f9      	beq.n	8004af2 <usart_putc+0x2a>
 8004afe:	46c0      	nop			; (mov r8, r8)
 8004b00:	46bd      	mov	sp, r7
 8004b02:	b002      	add	sp, #8
 8004b04:	bd80      	pop	{r7, pc}
 8004b06:	46c0      	nop			; (mov r8, r8)
 8004b08:	40013800 	.word	0x40013800

08004b0c <printf_config>:
 8004b0c:	b580      	push	{r7, lr}
 8004b0e:	af00      	add	r7, sp, #0
 8004b10:	4b04      	ldr	r3, [pc, #16]	; (8004b24 <printf_config+0x18>)
 8004b12:	4a05      	ldr	r2, [pc, #20]	; (8004b28 <printf_config+0x1c>)
 8004b14:	601a      	str	r2, [r3, #0]
 8004b16:	4b05      	ldr	r3, [pc, #20]	; (8004b2c <printf_config+0x20>)
 8004b18:	4a05      	ldr	r2, [pc, #20]	; (8004b30 <printf_config+0x24>)
 8004b1a:	601a      	str	r2, [r3, #0]
 8004b1c:	46c0      	nop			; (mov r8, r8)
 8004b1e:	46bd      	mov	sp, r7
 8004b20:	bd80      	pop	{r7, pc}
 8004b22:	46c0      	nop			; (mov r8, r8)
 8004b24:	200001f8 	.word	0x200001f8
 8004b28:	08004ac9 	.word	0x08004ac9
 8004b2c:	200001f4 	.word	0x200001f4
 8004b30:	08004aa1 	.word	0x08004aa1

08004b34 <LL_I2C_IsActiveFlag_TXIS>:
 8004b34:	b580      	push	{r7, lr}
 8004b36:	b082      	sub	sp, #8
 8004b38:	af00      	add	r7, sp, #0
 8004b3a:	6078      	str	r0, [r7, #4]
 8004b3c:	687b      	ldr	r3, [r7, #4]
 8004b3e:	699b      	ldr	r3, [r3, #24]
 8004b40:	2202      	movs	r2, #2
 8004b42:	4013      	ands	r3, r2
 8004b44:	3b02      	subs	r3, #2
 8004b46:	425a      	negs	r2, r3
 8004b48:	4153      	adcs	r3, r2
 8004b4a:	b2db      	uxtb	r3, r3
 8004b4c:	0018      	movs	r0, r3
 8004b4e:	46bd      	mov	sp, r7
 8004b50:	b002      	add	sp, #8
 8004b52:	bd80      	pop	{r7, pc}

08004b54 <LL_I2C_IsActiveFlag_RXNE>:
 8004b54:	b580      	push	{r7, lr}
 8004b56:	b082      	sub	sp, #8
 8004b58:	af00      	add	r7, sp, #0
 8004b5a:	6078      	str	r0, [r7, #4]
 8004b5c:	687b      	ldr	r3, [r7, #4]
 8004b5e:	699b      	ldr	r3, [r3, #24]
 8004b60:	2204      	movs	r2, #4
 8004b62:	4013      	ands	r3, r2
 8004b64:	3b04      	subs	r3, #4
 8004b66:	425a      	negs	r2, r3
 8004b68:	4153      	adcs	r3, r2
 8004b6a:	b2db      	uxtb	r3, r3
 8004b6c:	0018      	movs	r0, r3
 8004b6e:	46bd      	mov	sp, r7
 8004b70:	b002      	add	sp, #8
 8004b72:	bd80      	pop	{r7, pc}

08004b74 <LL_I2C_IsActiveFlag_TC>:
 8004b74:	b580      	push	{r7, lr}
 8004b76:	b082      	sub	sp, #8
 8004b78:	af00      	add	r7, sp, #0
 8004b7a:	6078      	str	r0, [r7, #4]
 8004b7c:	687b      	ldr	r3, [r7, #4]
 8004b7e:	699b      	ldr	r3, [r3, #24]
 8004b80:	2240      	movs	r2, #64	; 0x40
 8004b82:	4013      	ands	r3, r2
 8004b84:	3b40      	subs	r3, #64	; 0x40
 8004b86:	425a      	negs	r2, r3
 8004b88:	4153      	adcs	r3, r2
 8004b8a:	b2db      	uxtb	r3, r3
 8004b8c:	0018      	movs	r0, r3
 8004b8e:	46bd      	mov	sp, r7
 8004b90:	b002      	add	sp, #8
 8004b92:	bd80      	pop	{r7, pc}

08004b94 <LL_I2C_HandleTransfer>:
 8004b94:	b580      	push	{r7, lr}
 8004b96:	b084      	sub	sp, #16
 8004b98:	af00      	add	r7, sp, #0
 8004b9a:	60f8      	str	r0, [r7, #12]
 8004b9c:	60b9      	str	r1, [r7, #8]
 8004b9e:	607a      	str	r2, [r7, #4]
 8004ba0:	603b      	str	r3, [r7, #0]
 8004ba2:	68fb      	ldr	r3, [r7, #12]
 8004ba4:	685b      	ldr	r3, [r3, #4]
 8004ba6:	4a09      	ldr	r2, [pc, #36]	; (8004bcc <LL_I2C_HandleTransfer+0x38>)
 8004ba8:	401a      	ands	r2, r3
 8004baa:	68b9      	ldr	r1, [r7, #8]
 8004bac:	687b      	ldr	r3, [r7, #4]
 8004bae:	4319      	orrs	r1, r3
 8004bb0:	683b      	ldr	r3, [r7, #0]
 8004bb2:	041b      	lsls	r3, r3, #16
 8004bb4:	4319      	orrs	r1, r3
 8004bb6:	69bb      	ldr	r3, [r7, #24]
 8004bb8:	4319      	orrs	r1, r3
 8004bba:	69fb      	ldr	r3, [r7, #28]
 8004bbc:	430b      	orrs	r3, r1
 8004bbe:	431a      	orrs	r2, r3
 8004bc0:	68fb      	ldr	r3, [r7, #12]
 8004bc2:	605a      	str	r2, [r3, #4]
 8004bc4:	46c0      	nop			; (mov r8, r8)
 8004bc6:	46bd      	mov	sp, r7
 8004bc8:	b004      	add	sp, #16
 8004bca:	bd80      	pop	{r7, pc}
 8004bcc:	fc008000 	.word	0xfc008000

08004bd0 <LL_I2C_ReceiveData8>:
 8004bd0:	b580      	push	{r7, lr}
 8004bd2:	b082      	sub	sp, #8
 8004bd4:	af00      	add	r7, sp, #0
 8004bd6:	6078      	str	r0, [r7, #4]
 8004bd8:	687b      	ldr	r3, [r7, #4]
 8004bda:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8004bdc:	b2db      	uxtb	r3, r3
 8004bde:	0018      	movs	r0, r3
 8004be0:	46bd      	mov	sp, r7
 8004be2:	b002      	add	sp, #8
 8004be4:	bd80      	pop	{r7, pc}

08004be6 <LL_I2C_TransmitData8>:
 8004be6:	b580      	push	{r7, lr}
 8004be8:	b082      	sub	sp, #8
 8004bea:	af00      	add	r7, sp, #0
 8004bec:	6078      	str	r0, [r7, #4]
 8004bee:	000a      	movs	r2, r1
 8004bf0:	1cfb      	adds	r3, r7, #3
 8004bf2:	701a      	strb	r2, [r3, #0]
 8004bf4:	1cfb      	adds	r3, r7, #3
 8004bf6:	781a      	ldrb	r2, [r3, #0]
 8004bf8:	687b      	ldr	r3, [r7, #4]
 8004bfa:	629a      	str	r2, [r3, #40]	; 0x28
 8004bfc:	46c0      	nop			; (mov r8, r8)
 8004bfe:	46bd      	mov	sp, r7
 8004c00:	b002      	add	sp, #8
 8004c02:	bd80      	pop	{r7, pc}

08004c04 <mpu9255_WriteMulti>:
 8004c04:	b590      	push	{r4, r7, lr}
 8004c06:	b087      	sub	sp, #28
 8004c08:	af02      	add	r7, sp, #8
 8004c0a:	0004      	movs	r4, r0
 8004c0c:	0008      	movs	r0, r1
 8004c0e:	603a      	str	r2, [r7, #0]
 8004c10:	0019      	movs	r1, r3
 8004c12:	1dfb      	adds	r3, r7, #7
 8004c14:	1c22      	adds	r2, r4, #0
 8004c16:	701a      	strb	r2, [r3, #0]
 8004c18:	1dbb      	adds	r3, r7, #6
 8004c1a:	1c02      	adds	r2, r0, #0
 8004c1c:	701a      	strb	r2, [r3, #0]
 8004c1e:	1d7b      	adds	r3, r7, #5
 8004c20:	1c0a      	adds	r2, r1, #0
 8004c22:	701a      	strb	r2, [r3, #0]
 8004c24:	23fa      	movs	r3, #250	; 0xfa
 8004c26:	009b      	lsls	r3, r3, #2
 8004c28:	60fb      	str	r3, [r7, #12]
 8004c2a:	1dfb      	adds	r3, r7, #7
 8004c2c:	7819      	ldrb	r1, [r3, #0]
 8004c2e:	1d7b      	adds	r3, r7, #5
 8004c30:	781b      	ldrb	r3, [r3, #0]
 8004c32:	3301      	adds	r3, #1
 8004c34:	001a      	movs	r2, r3
 8004c36:	4833      	ldr	r0, [pc, #204]	; (8004d04 <mpu9255_WriteMulti+0x100>)
 8004c38:	2380      	movs	r3, #128	; 0x80
 8004c3a:	019b      	lsls	r3, r3, #6
 8004c3c:	9301      	str	r3, [sp, #4]
 8004c3e:	2380      	movs	r3, #128	; 0x80
 8004c40:	049b      	lsls	r3, r3, #18
 8004c42:	9300      	str	r3, [sp, #0]
 8004c44:	0013      	movs	r3, r2
 8004c46:	2200      	movs	r2, #0
 8004c48:	f7ff ffa4 	bl	8004b94 <LL_I2C_HandleTransfer>
 8004c4c:	46c0      	nop			; (mov r8, r8)
 8004c4e:	4b2d      	ldr	r3, [pc, #180]	; (8004d04 <mpu9255_WriteMulti+0x100>)
 8004c50:	0018      	movs	r0, r3
 8004c52:	f7ff ff6f 	bl	8004b34 <LL_I2C_IsActiveFlag_TXIS>
 8004c56:	1e03      	subs	r3, r0, #0
 8004c58:	d104      	bne.n	8004c64 <mpu9255_WriteMulti+0x60>
 8004c5a:	68fb      	ldr	r3, [r7, #12]
 8004c5c:	1e5a      	subs	r2, r3, #1
 8004c5e:	60fa      	str	r2, [r7, #12]
 8004c60:	2b00      	cmp	r3, #0
 8004c62:	dcf4      	bgt.n	8004c4e <mpu9255_WriteMulti+0x4a>
 8004c64:	68fb      	ldr	r3, [r7, #12]
 8004c66:	2b00      	cmp	r3, #0
 8004c68:	dc01      	bgt.n	8004c6e <mpu9255_WriteMulti+0x6a>
 8004c6a:	2303      	movs	r3, #3
 8004c6c:	e045      	b.n	8004cfa <mpu9255_WriteMulti+0xf6>
 8004c6e:	1dbb      	adds	r3, r7, #6
 8004c70:	781b      	ldrb	r3, [r3, #0]
 8004c72:	4a24      	ldr	r2, [pc, #144]	; (8004d04 <mpu9255_WriteMulti+0x100>)
 8004c74:	0019      	movs	r1, r3
 8004c76:	0010      	movs	r0, r2
 8004c78:	f7ff ffb5 	bl	8004be6 <LL_I2C_TransmitData8>
 8004c7c:	230b      	movs	r3, #11
 8004c7e:	18fb      	adds	r3, r7, r3
 8004c80:	2200      	movs	r2, #0
 8004c82:	701a      	strb	r2, [r3, #0]
 8004c84:	e020      	b.n	8004cc8 <mpu9255_WriteMulti+0xc4>
 8004c86:	46c0      	nop			; (mov r8, r8)
 8004c88:	4b1e      	ldr	r3, [pc, #120]	; (8004d04 <mpu9255_WriteMulti+0x100>)
 8004c8a:	0018      	movs	r0, r3
 8004c8c:	f7ff ff52 	bl	8004b34 <LL_I2C_IsActiveFlag_TXIS>
 8004c90:	1e03      	subs	r3, r0, #0
 8004c92:	d104      	bne.n	8004c9e <mpu9255_WriteMulti+0x9a>
 8004c94:	68fb      	ldr	r3, [r7, #12]
 8004c96:	1e5a      	subs	r2, r3, #1
 8004c98:	60fa      	str	r2, [r7, #12]
 8004c9a:	2b00      	cmp	r3, #0
 8004c9c:	dcf4      	bgt.n	8004c88 <mpu9255_WriteMulti+0x84>
 8004c9e:	68fb      	ldr	r3, [r7, #12]
 8004ca0:	2b00      	cmp	r3, #0
 8004ca2:	dc01      	bgt.n	8004ca8 <mpu9255_WriteMulti+0xa4>
 8004ca4:	2303      	movs	r3, #3
 8004ca6:	e028      	b.n	8004cfa <mpu9255_WriteMulti+0xf6>
 8004ca8:	240b      	movs	r4, #11
 8004caa:	193b      	adds	r3, r7, r4
 8004cac:	781b      	ldrb	r3, [r3, #0]
 8004cae:	683a      	ldr	r2, [r7, #0]
 8004cb0:	18d3      	adds	r3, r2, r3
 8004cb2:	781b      	ldrb	r3, [r3, #0]
 8004cb4:	4a13      	ldr	r2, [pc, #76]	; (8004d04 <mpu9255_WriteMulti+0x100>)
 8004cb6:	0019      	movs	r1, r3
 8004cb8:	0010      	movs	r0, r2
 8004cba:	f7ff ff94 	bl	8004be6 <LL_I2C_TransmitData8>
 8004cbe:	193b      	adds	r3, r7, r4
 8004cc0:	781a      	ldrb	r2, [r3, #0]
 8004cc2:	193b      	adds	r3, r7, r4
 8004cc4:	3201      	adds	r2, #1
 8004cc6:	701a      	strb	r2, [r3, #0]
 8004cc8:	230b      	movs	r3, #11
 8004cca:	18fa      	adds	r2, r7, r3
 8004ccc:	1d7b      	adds	r3, r7, #5
 8004cce:	7812      	ldrb	r2, [r2, #0]
 8004cd0:	781b      	ldrb	r3, [r3, #0]
 8004cd2:	429a      	cmp	r2, r3
 8004cd4:	d3d7      	bcc.n	8004c86 <mpu9255_WriteMulti+0x82>
 8004cd6:	46c0      	nop			; (mov r8, r8)
 8004cd8:	4b0a      	ldr	r3, [pc, #40]	; (8004d04 <mpu9255_WriteMulti+0x100>)
 8004cda:	0018      	movs	r0, r3
 8004cdc:	f7ff ff4a 	bl	8004b74 <LL_I2C_IsActiveFlag_TC>
 8004ce0:	1e03      	subs	r3, r0, #0
 8004ce2:	d004      	beq.n	8004cee <mpu9255_WriteMulti+0xea>
 8004ce4:	68fb      	ldr	r3, [r7, #12]
 8004ce6:	1e5a      	subs	r2, r3, #1
 8004ce8:	60fa      	str	r2, [r7, #12]
 8004cea:	2b00      	cmp	r3, #0
 8004cec:	dcf4      	bgt.n	8004cd8 <mpu9255_WriteMulti+0xd4>
 8004cee:	68fb      	ldr	r3, [r7, #12]
 8004cf0:	2b00      	cmp	r3, #0
 8004cf2:	dc01      	bgt.n	8004cf8 <mpu9255_WriteMulti+0xf4>
 8004cf4:	2303      	movs	r3, #3
 8004cf6:	e000      	b.n	8004cfa <mpu9255_WriteMulti+0xf6>
 8004cf8:	2300      	movs	r3, #0
 8004cfa:	0018      	movs	r0, r3
 8004cfc:	46bd      	mov	sp, r7
 8004cfe:	b005      	add	sp, #20
 8004d00:	bd90      	pop	{r4, r7, pc}
 8004d02:	46c0      	nop			; (mov r8, r8)
 8004d04:	40005400 	.word	0x40005400

08004d08 <mpu9255_ReadMulti>:
 8004d08:	b5b0      	push	{r4, r5, r7, lr}
 8004d0a:	b086      	sub	sp, #24
 8004d0c:	af02      	add	r7, sp, #8
 8004d0e:	0004      	movs	r4, r0
 8004d10:	0008      	movs	r0, r1
 8004d12:	603a      	str	r2, [r7, #0]
 8004d14:	0019      	movs	r1, r3
 8004d16:	1dfb      	adds	r3, r7, #7
 8004d18:	1c22      	adds	r2, r4, #0
 8004d1a:	701a      	strb	r2, [r3, #0]
 8004d1c:	1dbb      	adds	r3, r7, #6
 8004d1e:	1c02      	adds	r2, r0, #0
 8004d20:	701a      	strb	r2, [r3, #0]
 8004d22:	1d7b      	adds	r3, r7, #5
 8004d24:	1c0a      	adds	r2, r1, #0
 8004d26:	701a      	strb	r2, [r3, #0]
 8004d28:	23fa      	movs	r3, #250	; 0xfa
 8004d2a:	009b      	lsls	r3, r3, #2
 8004d2c:	60fb      	str	r3, [r7, #12]
 8004d2e:	1dbb      	adds	r3, r7, #6
 8004d30:	7819      	ldrb	r1, [r3, #0]
 8004d32:	1dfb      	adds	r3, r7, #7
 8004d34:	7818      	ldrb	r0, [r3, #0]
 8004d36:	2300      	movs	r3, #0
 8004d38:	2200      	movs	r2, #0
 8004d3a:	f7ff ff63 	bl	8004c04 <mpu9255_WriteMulti>
 8004d3e:	0003      	movs	r3, r0
 8004d40:	2b03      	cmp	r3, #3
 8004d42:	d101      	bne.n	8004d48 <mpu9255_ReadMulti+0x40>
 8004d44:	2303      	movs	r3, #3
 8004d46:	e04d      	b.n	8004de4 <mpu9255_ReadMulti+0xdc>
 8004d48:	1dfb      	adds	r3, r7, #7
 8004d4a:	7819      	ldrb	r1, [r3, #0]
 8004d4c:	1d7b      	adds	r3, r7, #5
 8004d4e:	781a      	ldrb	r2, [r3, #0]
 8004d50:	4826      	ldr	r0, [pc, #152]	; (8004dec <mpu9255_ReadMulti+0xe4>)
 8004d52:	2390      	movs	r3, #144	; 0x90
 8004d54:	019b      	lsls	r3, r3, #6
 8004d56:	9301      	str	r3, [sp, #4]
 8004d58:	2380      	movs	r3, #128	; 0x80
 8004d5a:	049b      	lsls	r3, r3, #18
 8004d5c:	9300      	str	r3, [sp, #0]
 8004d5e:	0013      	movs	r3, r2
 8004d60:	2200      	movs	r2, #0
 8004d62:	f7ff ff17 	bl	8004b94 <LL_I2C_HandleTransfer>
 8004d66:	230b      	movs	r3, #11
 8004d68:	18fb      	adds	r3, r7, r3
 8004d6a:	2200      	movs	r2, #0
 8004d6c:	701a      	strb	r2, [r3, #0]
 8004d6e:	e020      	b.n	8004db2 <mpu9255_ReadMulti+0xaa>
 8004d70:	46c0      	nop			; (mov r8, r8)
 8004d72:	4b1e      	ldr	r3, [pc, #120]	; (8004dec <mpu9255_ReadMulti+0xe4>)
 8004d74:	0018      	movs	r0, r3
 8004d76:	f7ff feed 	bl	8004b54 <LL_I2C_IsActiveFlag_RXNE>
 8004d7a:	1e03      	subs	r3, r0, #0
 8004d7c:	d104      	bne.n	8004d88 <mpu9255_ReadMulti+0x80>
 8004d7e:	68fb      	ldr	r3, [r7, #12]
 8004d80:	1e5a      	subs	r2, r3, #1
 8004d82:	60fa      	str	r2, [r7, #12]
 8004d84:	2b00      	cmp	r3, #0
 8004d86:	dcf4      	bgt.n	8004d72 <mpu9255_ReadMulti+0x6a>
 8004d88:	68fb      	ldr	r3, [r7, #12]
 8004d8a:	2b00      	cmp	r3, #0
 8004d8c:	dc01      	bgt.n	8004d92 <mpu9255_ReadMulti+0x8a>
 8004d8e:	2303      	movs	r3, #3
 8004d90:	e028      	b.n	8004de4 <mpu9255_ReadMulti+0xdc>
 8004d92:	250b      	movs	r5, #11
 8004d94:	197b      	adds	r3, r7, r5
 8004d96:	781b      	ldrb	r3, [r3, #0]
 8004d98:	683a      	ldr	r2, [r7, #0]
 8004d9a:	18d4      	adds	r4, r2, r3
 8004d9c:	4b13      	ldr	r3, [pc, #76]	; (8004dec <mpu9255_ReadMulti+0xe4>)
 8004d9e:	0018      	movs	r0, r3
 8004da0:	f7ff ff16 	bl	8004bd0 <LL_I2C_ReceiveData8>
 8004da4:	0003      	movs	r3, r0
 8004da6:	7023      	strb	r3, [r4, #0]
 8004da8:	197b      	adds	r3, r7, r5
 8004daa:	781a      	ldrb	r2, [r3, #0]
 8004dac:	197b      	adds	r3, r7, r5
 8004dae:	3201      	adds	r2, #1
 8004db0:	701a      	strb	r2, [r3, #0]
 8004db2:	230b      	movs	r3, #11
 8004db4:	18fa      	adds	r2, r7, r3
 8004db6:	1d7b      	adds	r3, r7, #5
 8004db8:	7812      	ldrb	r2, [r2, #0]
 8004dba:	781b      	ldrb	r3, [r3, #0]
 8004dbc:	429a      	cmp	r2, r3
 8004dbe:	d3d7      	bcc.n	8004d70 <mpu9255_ReadMulti+0x68>
 8004dc0:	46c0      	nop			; (mov r8, r8)
 8004dc2:	4b0a      	ldr	r3, [pc, #40]	; (8004dec <mpu9255_ReadMulti+0xe4>)
 8004dc4:	0018      	movs	r0, r3
 8004dc6:	f7ff fed5 	bl	8004b74 <LL_I2C_IsActiveFlag_TC>
 8004dca:	1e03      	subs	r3, r0, #0
 8004dcc:	d004      	beq.n	8004dd8 <mpu9255_ReadMulti+0xd0>
 8004dce:	68fb      	ldr	r3, [r7, #12]
 8004dd0:	1e5a      	subs	r2, r3, #1
 8004dd2:	60fa      	str	r2, [r7, #12]
 8004dd4:	2b00      	cmp	r3, #0
 8004dd6:	dcf4      	bgt.n	8004dc2 <mpu9255_ReadMulti+0xba>
 8004dd8:	68fb      	ldr	r3, [r7, #12]
 8004dda:	2b00      	cmp	r3, #0
 8004ddc:	dc01      	bgt.n	8004de2 <mpu9255_ReadMulti+0xda>
 8004dde:	2303      	movs	r3, #3
 8004de0:	e000      	b.n	8004de4 <mpu9255_ReadMulti+0xdc>
 8004de2:	2300      	movs	r3, #0
 8004de4:	0018      	movs	r0, r3
 8004de6:	46bd      	mov	sp, r7
 8004de8:	b004      	add	sp, #16
 8004dea:	bdb0      	pop	{r4, r5, r7, pc}
 8004dec:	40005400 	.word	0x40005400

08004df0 <mpu9255_WriteByte>:
 8004df0:	b590      	push	{r4, r7, lr}
 8004df2:	b083      	sub	sp, #12
 8004df4:	af00      	add	r7, sp, #0
 8004df6:	0004      	movs	r4, r0
 8004df8:	0008      	movs	r0, r1
 8004dfa:	0011      	movs	r1, r2
 8004dfc:	1dfb      	adds	r3, r7, #7
 8004dfe:	1c22      	adds	r2, r4, #0
 8004e00:	701a      	strb	r2, [r3, #0]
 8004e02:	1dbb      	adds	r3, r7, #6
 8004e04:	1c02      	adds	r2, r0, #0
 8004e06:	701a      	strb	r2, [r3, #0]
 8004e08:	1d7b      	adds	r3, r7, #5
 8004e0a:	1c0a      	adds	r2, r1, #0
 8004e0c:	701a      	strb	r2, [r3, #0]
 8004e0e:	1d7a      	adds	r2, r7, #5
 8004e10:	1dbb      	adds	r3, r7, #6
 8004e12:	7819      	ldrb	r1, [r3, #0]
 8004e14:	1dfb      	adds	r3, r7, #7
 8004e16:	7818      	ldrb	r0, [r3, #0]
 8004e18:	2301      	movs	r3, #1
 8004e1a:	f7ff fef3 	bl	8004c04 <mpu9255_WriteMulti>
 8004e1e:	0003      	movs	r3, r0
 8004e20:	0018      	movs	r0, r3
 8004e22:	46bd      	mov	sp, r7
 8004e24:	b003      	add	sp, #12
 8004e26:	bd90      	pop	{r4, r7, pc}

08004e28 <mpu9255_ReadByte>:
 8004e28:	b580      	push	{r7, lr}
 8004e2a:	b082      	sub	sp, #8
 8004e2c:	af00      	add	r7, sp, #0
 8004e2e:	603a      	str	r2, [r7, #0]
 8004e30:	1dfb      	adds	r3, r7, #7
 8004e32:	1c02      	adds	r2, r0, #0
 8004e34:	701a      	strb	r2, [r3, #0]
 8004e36:	1dbb      	adds	r3, r7, #6
 8004e38:	1c0a      	adds	r2, r1, #0
 8004e3a:	701a      	strb	r2, [r3, #0]
 8004e3c:	683a      	ldr	r2, [r7, #0]
 8004e3e:	1dbb      	adds	r3, r7, #6
 8004e40:	7819      	ldrb	r1, [r3, #0]
 8004e42:	1dfb      	adds	r3, r7, #7
 8004e44:	7818      	ldrb	r0, [r3, #0]
 8004e46:	2301      	movs	r3, #1
 8004e48:	f7ff ff5e 	bl	8004d08 <mpu9255_ReadMulti>
 8004e4c:	0003      	movs	r3, r0
 8004e4e:	0018      	movs	r0, r3
 8004e50:	46bd      	mov	sp, r7
 8004e52:	b002      	add	sp, #8
 8004e54:	bd80      	pop	{r7, pc}
	...

08004e58 <mpu9255_init>:
 8004e58:	b580      	push	{r7, lr}
 8004e5a:	b084      	sub	sp, #16
 8004e5c:	af00      	add	r7, sp, #0
 8004e5e:	2300      	movs	r3, #0
 8004e60:	60fb      	str	r3, [r7, #12]
 8004e62:	2280      	movs	r2, #128	; 0x80
 8004e64:	216b      	movs	r1, #107	; 0x6b
 8004e66:	20d0      	movs	r0, #208	; 0xd0
 8004e68:	f7ff ffc2 	bl	8004df0 <mpu9255_WriteByte>
 8004e6c:	0003      	movs	r3, r0
 8004e6e:	60fb      	str	r3, [r7, #12]
 8004e70:	68fb      	ldr	r3, [r7, #12]
 8004e72:	2b00      	cmp	r3, #0
 8004e74:	d000      	beq.n	8004e78 <mpu9255_init+0x20>
 8004e76:	e0f2      	b.n	800505e <mpu9255_init+0x206>
 8004e78:	2300      	movs	r3, #0
 8004e7a:	60bb      	str	r3, [r7, #8]
 8004e7c:	2300      	movs	r3, #0
 8004e7e:	607b      	str	r3, [r7, #4]
 8004e80:	e005      	b.n	8004e8e <mpu9255_init+0x36>
 8004e82:	68bb      	ldr	r3, [r7, #8]
 8004e84:	3301      	adds	r3, #1
 8004e86:	60bb      	str	r3, [r7, #8]
 8004e88:	687b      	ldr	r3, [r7, #4]
 8004e8a:	3301      	adds	r3, #1
 8004e8c:	607b      	str	r3, [r7, #4]
 8004e8e:	687b      	ldr	r3, [r7, #4]
 8004e90:	4a86      	ldr	r2, [pc, #536]	; (80050ac <mpu9255_init+0x254>)
 8004e92:	4293      	cmp	r3, r2
 8004e94:	ddf5      	ble.n	8004e82 <mpu9255_init+0x2a>
 8004e96:	2201      	movs	r2, #1
 8004e98:	2119      	movs	r1, #25
 8004e9a:	20d0      	movs	r0, #208	; 0xd0
 8004e9c:	f7ff ffa8 	bl	8004df0 <mpu9255_WriteByte>
 8004ea0:	0003      	movs	r3, r0
 8004ea2:	60fb      	str	r3, [r7, #12]
 8004ea4:	68fb      	ldr	r3, [r7, #12]
 8004ea6:	2b00      	cmp	r3, #0
 8004ea8:	d000      	beq.n	8004eac <mpu9255_init+0x54>
 8004eaa:	e0da      	b.n	8005062 <mpu9255_init+0x20a>
 8004eac:	2205      	movs	r2, #5
 8004eae:	211a      	movs	r1, #26
 8004eb0:	20d0      	movs	r0, #208	; 0xd0
 8004eb2:	f7ff ff9d 	bl	8004df0 <mpu9255_WriteByte>
 8004eb6:	0003      	movs	r3, r0
 8004eb8:	60fb      	str	r3, [r7, #12]
 8004eba:	68fb      	ldr	r3, [r7, #12]
 8004ebc:	2b00      	cmp	r3, #0
 8004ebe:	d000      	beq.n	8004ec2 <mpu9255_init+0x6a>
 8004ec0:	e0d1      	b.n	8005066 <mpu9255_init+0x20e>
 8004ec2:	2208      	movs	r2, #8
 8004ec4:	211c      	movs	r1, #28
 8004ec6:	20d0      	movs	r0, #208	; 0xd0
 8004ec8:	f7ff ff92 	bl	8004df0 <mpu9255_WriteByte>
 8004ecc:	0003      	movs	r3, r0
 8004ece:	60fb      	str	r3, [r7, #12]
 8004ed0:	68fb      	ldr	r3, [r7, #12]
 8004ed2:	2b00      	cmp	r3, #0
 8004ed4:	d000      	beq.n	8004ed8 <mpu9255_init+0x80>
 8004ed6:	e0c8      	b.n	800506a <mpu9255_init+0x212>
 8004ed8:	2204      	movs	r2, #4
 8004eda:	211d      	movs	r1, #29
 8004edc:	20d0      	movs	r0, #208	; 0xd0
 8004ede:	f7ff ff87 	bl	8004df0 <mpu9255_WriteByte>
 8004ee2:	0003      	movs	r3, r0
 8004ee4:	60fb      	str	r3, [r7, #12]
 8004ee6:	68fb      	ldr	r3, [r7, #12]
 8004ee8:	2b00      	cmp	r3, #0
 8004eea:	d000      	beq.n	8004eee <mpu9255_init+0x96>
 8004eec:	e0bf      	b.n	800506e <mpu9255_init+0x216>
 8004eee:	2200      	movs	r2, #0
 8004ef0:	2123      	movs	r1, #35	; 0x23
 8004ef2:	20d0      	movs	r0, #208	; 0xd0
 8004ef4:	f7ff ff7c 	bl	8004df0 <mpu9255_WriteByte>
 8004ef8:	0003      	movs	r3, r0
 8004efa:	60fb      	str	r3, [r7, #12]
 8004efc:	68fb      	ldr	r3, [r7, #12]
 8004efe:	2b00      	cmp	r3, #0
 8004f00:	d000      	beq.n	8004f04 <mpu9255_init+0xac>
 8004f02:	e0b6      	b.n	8005072 <mpu9255_init+0x21a>
 8004f04:	2200      	movs	r2, #0
 8004f06:	2138      	movs	r1, #56	; 0x38
 8004f08:	20d0      	movs	r0, #208	; 0xd0
 8004f0a:	f7ff ff71 	bl	8004df0 <mpu9255_WriteByte>
 8004f0e:	0003      	movs	r3, r0
 8004f10:	60fb      	str	r3, [r7, #12]
 8004f12:	68fb      	ldr	r3, [r7, #12]
 8004f14:	2b00      	cmp	r3, #0
 8004f16:	d000      	beq.n	8004f1a <mpu9255_init+0xc2>
 8004f18:	e0ad      	b.n	8005076 <mpu9255_init+0x21e>
 8004f1a:	2200      	movs	r2, #0
 8004f1c:	216a      	movs	r1, #106	; 0x6a
 8004f1e:	20d0      	movs	r0, #208	; 0xd0
 8004f20:	f7ff ff66 	bl	8004df0 <mpu9255_WriteByte>
 8004f24:	0003      	movs	r3, r0
 8004f26:	60fb      	str	r3, [r7, #12]
 8004f28:	68fb      	ldr	r3, [r7, #12]
 8004f2a:	2b00      	cmp	r3, #0
 8004f2c:	d000      	beq.n	8004f30 <mpu9255_init+0xd8>
 8004f2e:	e0a4      	b.n	800507a <mpu9255_init+0x222>
 8004f30:	2201      	movs	r2, #1
 8004f32:	216b      	movs	r1, #107	; 0x6b
 8004f34:	20d0      	movs	r0, #208	; 0xd0
 8004f36:	f7ff ff5b 	bl	8004df0 <mpu9255_WriteByte>
 8004f3a:	0003      	movs	r3, r0
 8004f3c:	60fb      	str	r3, [r7, #12]
 8004f3e:	68fb      	ldr	r3, [r7, #12]
 8004f40:	2b00      	cmp	r3, #0
 8004f42:	d000      	beq.n	8004f46 <mpu9255_init+0xee>
 8004f44:	e09b      	b.n	800507e <mpu9255_init+0x226>
 8004f46:	2200      	movs	r2, #0
 8004f48:	216c      	movs	r1, #108	; 0x6c
 8004f4a:	20d0      	movs	r0, #208	; 0xd0
 8004f4c:	f7ff ff50 	bl	8004df0 <mpu9255_WriteByte>
 8004f50:	0003      	movs	r3, r0
 8004f52:	60fb      	str	r3, [r7, #12]
 8004f54:	68fb      	ldr	r3, [r7, #12]
 8004f56:	2b00      	cmp	r3, #0
 8004f58:	d000      	beq.n	8004f5c <mpu9255_init+0x104>
 8004f5a:	e092      	b.n	8005082 <mpu9255_init+0x22a>
 8004f5c:	2210      	movs	r2, #16
 8004f5e:	211b      	movs	r1, #27
 8004f60:	20d0      	movs	r0, #208	; 0xd0
 8004f62:	f7ff ff45 	bl	8004df0 <mpu9255_WriteByte>
 8004f66:	0003      	movs	r3, r0
 8004f68:	60fb      	str	r3, [r7, #12]
 8004f6a:	68fb      	ldr	r3, [r7, #12]
 8004f6c:	2b00      	cmp	r3, #0
 8004f6e:	d000      	beq.n	8004f72 <mpu9255_init+0x11a>
 8004f70:	e089      	b.n	8005086 <mpu9255_init+0x22e>
 8004f72:	2202      	movs	r2, #2
 8004f74:	2137      	movs	r1, #55	; 0x37
 8004f76:	20d0      	movs	r0, #208	; 0xd0
 8004f78:	f7ff ff3a 	bl	8004df0 <mpu9255_WriteByte>
 8004f7c:	0003      	movs	r3, r0
 8004f7e:	60fb      	str	r3, [r7, #12]
 8004f80:	68fb      	ldr	r3, [r7, #12]
 8004f82:	2b00      	cmp	r3, #0
 8004f84:	d000      	beq.n	8004f88 <mpu9255_init+0x130>
 8004f86:	e080      	b.n	800508a <mpu9255_init+0x232>
 8004f88:	2216      	movs	r2, #22
 8004f8a:	210a      	movs	r1, #10
 8004f8c:	2018      	movs	r0, #24
 8004f8e:	f7ff ff2f 	bl	8004df0 <mpu9255_WriteByte>
 8004f92:	0003      	movs	r3, r0
 8004f94:	60fb      	str	r3, [r7, #12]
 8004f96:	68fb      	ldr	r3, [r7, #12]
 8004f98:	2b00      	cmp	r3, #0
 8004f9a:	d000      	beq.n	8004f9e <mpu9255_init+0x146>
 8004f9c:	e077      	b.n	800508e <mpu9255_init+0x236>
 8004f9e:	4b44      	ldr	r3, [pc, #272]	; (80050b0 <mpu9255_init+0x258>)
 8004fa0:	001a      	movs	r2, r3
 8004fa2:	2110      	movs	r1, #16
 8004fa4:	2018      	movs	r0, #24
 8004fa6:	f7ff ff3f 	bl	8004e28 <mpu9255_ReadByte>
 8004faa:	0003      	movs	r3, r0
 8004fac:	60fb      	str	r3, [r7, #12]
 8004fae:	68fb      	ldr	r3, [r7, #12]
 8004fb0:	2b00      	cmp	r3, #0
 8004fb2:	d000      	beq.n	8004fb6 <mpu9255_init+0x15e>
 8004fb4:	e06d      	b.n	8005092 <mpu9255_init+0x23a>
 8004fb6:	4b3f      	ldr	r3, [pc, #252]	; (80050b4 <mpu9255_init+0x25c>)
 8004fb8:	001a      	movs	r2, r3
 8004fba:	2111      	movs	r1, #17
 8004fbc:	2018      	movs	r0, #24
 8004fbe:	f7ff ff33 	bl	8004e28 <mpu9255_ReadByte>
 8004fc2:	0003      	movs	r3, r0
 8004fc4:	60fb      	str	r3, [r7, #12]
 8004fc6:	68fb      	ldr	r3, [r7, #12]
 8004fc8:	2b00      	cmp	r3, #0
 8004fca:	d164      	bne.n	8005096 <mpu9255_init+0x23e>
 8004fcc:	4b3a      	ldr	r3, [pc, #232]	; (80050b8 <mpu9255_init+0x260>)
 8004fce:	001a      	movs	r2, r3
 8004fd0:	2112      	movs	r1, #18
 8004fd2:	2018      	movs	r0, #24
 8004fd4:	f7ff ff28 	bl	8004e28 <mpu9255_ReadByte>
 8004fd8:	0003      	movs	r3, r0
 8004fda:	60fb      	str	r3, [r7, #12]
 8004fdc:	68fb      	ldr	r3, [r7, #12]
 8004fde:	2b00      	cmp	r3, #0
 8004fe0:	d15b      	bne.n	800509a <mpu9255_init+0x242>
 8004fe2:	2200      	movs	r2, #0
 8004fe4:	2137      	movs	r1, #55	; 0x37
 8004fe6:	20d0      	movs	r0, #208	; 0xd0
 8004fe8:	f7ff ff02 	bl	8004df0 <mpu9255_WriteByte>
 8004fec:	0003      	movs	r3, r0
 8004fee:	60fb      	str	r3, [r7, #12]
 8004ff0:	68fb      	ldr	r3, [r7, #12]
 8004ff2:	2b00      	cmp	r3, #0
 8004ff4:	d153      	bne.n	800509e <mpu9255_init+0x246>
 8004ff6:	4b2e      	ldr	r3, [pc, #184]	; (80050b0 <mpu9255_init+0x258>)
 8004ff8:	781b      	ldrb	r3, [r3, #0]
 8004ffa:	b25b      	sxtb	r3, r3
 8004ffc:	3380      	adds	r3, #128	; 0x80
 8004ffe:	0018      	movs	r0, r3
 8005000:	f7fb ffb0 	bl	8000f64 <__aeabi_i2f>
 8005004:	1c03      	adds	r3, r0, #0
 8005006:	2187      	movs	r1, #135	; 0x87
 8005008:	05c9      	lsls	r1, r1, #23
 800500a:	1c18      	adds	r0, r3, #0
 800500c:	f7fb fadc 	bl	80005c8 <__aeabi_fdiv>
 8005010:	1c03      	adds	r3, r0, #0
 8005012:	1c1a      	adds	r2, r3, #0
 8005014:	4b29      	ldr	r3, [pc, #164]	; (80050bc <mpu9255_init+0x264>)
 8005016:	62da      	str	r2, [r3, #44]	; 0x2c
 8005018:	4b26      	ldr	r3, [pc, #152]	; (80050b4 <mpu9255_init+0x25c>)
 800501a:	781b      	ldrb	r3, [r3, #0]
 800501c:	b25b      	sxtb	r3, r3
 800501e:	3380      	adds	r3, #128	; 0x80
 8005020:	0018      	movs	r0, r3
 8005022:	f7fb ff9f 	bl	8000f64 <__aeabi_i2f>
 8005026:	1c03      	adds	r3, r0, #0
 8005028:	2187      	movs	r1, #135	; 0x87
 800502a:	05c9      	lsls	r1, r1, #23
 800502c:	1c18      	adds	r0, r3, #0
 800502e:	f7fb facb 	bl	80005c8 <__aeabi_fdiv>
 8005032:	1c03      	adds	r3, r0, #0
 8005034:	1c1a      	adds	r2, r3, #0
 8005036:	4b21      	ldr	r3, [pc, #132]	; (80050bc <mpu9255_init+0x264>)
 8005038:	631a      	str	r2, [r3, #48]	; 0x30
 800503a:	4b1f      	ldr	r3, [pc, #124]	; (80050b8 <mpu9255_init+0x260>)
 800503c:	781b      	ldrb	r3, [r3, #0]
 800503e:	b25b      	sxtb	r3, r3
 8005040:	3380      	adds	r3, #128	; 0x80
 8005042:	0018      	movs	r0, r3
 8005044:	f7fb ff8e 	bl	8000f64 <__aeabi_i2f>
 8005048:	1c03      	adds	r3, r0, #0
 800504a:	2187      	movs	r1, #135	; 0x87
 800504c:	05c9      	lsls	r1, r1, #23
 800504e:	1c18      	adds	r0, r3, #0
 8005050:	f7fb faba 	bl	80005c8 <__aeabi_fdiv>
 8005054:	1c03      	adds	r3, r0, #0
 8005056:	1c1a      	adds	r2, r3, #0
 8005058:	4b18      	ldr	r3, [pc, #96]	; (80050bc <mpu9255_init+0x264>)
 800505a:	635a      	str	r2, [r3, #52]	; 0x34
 800505c:	e020      	b.n	80050a0 <mpu9255_init+0x248>
 800505e:	46c0      	nop			; (mov r8, r8)
 8005060:	e01e      	b.n	80050a0 <mpu9255_init+0x248>
 8005062:	46c0      	nop			; (mov r8, r8)
 8005064:	e01c      	b.n	80050a0 <mpu9255_init+0x248>
 8005066:	46c0      	nop			; (mov r8, r8)
 8005068:	e01a      	b.n	80050a0 <mpu9255_init+0x248>
 800506a:	46c0      	nop			; (mov r8, r8)
 800506c:	e018      	b.n	80050a0 <mpu9255_init+0x248>
 800506e:	46c0      	nop			; (mov r8, r8)
 8005070:	e016      	b.n	80050a0 <mpu9255_init+0x248>
 8005072:	46c0      	nop			; (mov r8, r8)
 8005074:	e014      	b.n	80050a0 <mpu9255_init+0x248>
 8005076:	46c0      	nop			; (mov r8, r8)
 8005078:	e012      	b.n	80050a0 <mpu9255_init+0x248>
 800507a:	46c0      	nop			; (mov r8, r8)
 800507c:	e010      	b.n	80050a0 <mpu9255_init+0x248>
 800507e:	46c0      	nop			; (mov r8, r8)
 8005080:	e00e      	b.n	80050a0 <mpu9255_init+0x248>
 8005082:	46c0      	nop			; (mov r8, r8)
 8005084:	e00c      	b.n	80050a0 <mpu9255_init+0x248>
 8005086:	46c0      	nop			; (mov r8, r8)
 8005088:	e00a      	b.n	80050a0 <mpu9255_init+0x248>
 800508a:	46c0      	nop			; (mov r8, r8)
 800508c:	e008      	b.n	80050a0 <mpu9255_init+0x248>
 800508e:	46c0      	nop			; (mov r8, r8)
 8005090:	e006      	b.n	80050a0 <mpu9255_init+0x248>
 8005092:	46c0      	nop			; (mov r8, r8)
 8005094:	e004      	b.n	80050a0 <mpu9255_init+0x248>
 8005096:	46c0      	nop			; (mov r8, r8)
 8005098:	e002      	b.n	80050a0 <mpu9255_init+0x248>
 800509a:	46c0      	nop			; (mov r8, r8)
 800509c:	e000      	b.n	80050a0 <mpu9255_init+0x248>
 800509e:	46c0      	nop			; (mov r8, r8)
 80050a0:	68fb      	ldr	r3, [r7, #12]
 80050a2:	0018      	movs	r0, r3
 80050a4:	46bd      	mov	sp, r7
 80050a6:	b004      	add	sp, #16
 80050a8:	bd80      	pop	{r7, pc}
 80050aa:	46c0      	nop			; (mov r8, r8)
 80050ac:	000f423f 	.word	0x000f423f
 80050b0:	200001c8 	.word	0x200001c8
 80050b4:	200001c9 	.word	0x200001c9
 80050b8:	200001ca 	.word	0x200001ca
 80050bc:	2000014c 	.word	0x2000014c

080050c0 <_swapBytesI16>:
 80050c0:	b580      	push	{r7, lr}
 80050c2:	b084      	sub	sp, #16
 80050c4:	af00      	add	r7, sp, #0
 80050c6:	0002      	movs	r2, r0
 80050c8:	1dbb      	adds	r3, r7, #6
 80050ca:	801a      	strh	r2, [r3, #0]
 80050cc:	1dbb      	adds	r3, r7, #6
 80050ce:	60fb      	str	r3, [r7, #12]
 80050d0:	210b      	movs	r1, #11
 80050d2:	187b      	adds	r3, r7, r1
 80050d4:	68fa      	ldr	r2, [r7, #12]
 80050d6:	7812      	ldrb	r2, [r2, #0]
 80050d8:	701a      	strb	r2, [r3, #0]
 80050da:	68fb      	ldr	r3, [r7, #12]
 80050dc:	785a      	ldrb	r2, [r3, #1]
 80050de:	68fb      	ldr	r3, [r7, #12]
 80050e0:	701a      	strb	r2, [r3, #0]
 80050e2:	68fb      	ldr	r3, [r7, #12]
 80050e4:	3301      	adds	r3, #1
 80050e6:	187a      	adds	r2, r7, r1
 80050e8:	7812      	ldrb	r2, [r2, #0]
 80050ea:	701a      	strb	r2, [r3, #0]
 80050ec:	1dbb      	adds	r3, r7, #6
 80050ee:	2200      	movs	r2, #0
 80050f0:	5e9b      	ldrsh	r3, [r3, r2]
 80050f2:	0018      	movs	r0, r3
 80050f4:	46bd      	mov	sp, r7
 80050f6:	b004      	add	sp, #16
 80050f8:	bd80      	pop	{r7, pc}

080050fa <mpu9255_readIMU>:
 80050fa:	b590      	push	{r4, r7, lr}
 80050fc:	b087      	sub	sp, #28
 80050fe:	af00      	add	r7, sp, #0
 8005100:	6078      	str	r0, [r7, #4]
 8005102:	6039      	str	r1, [r7, #0]
 8005104:	2300      	movs	r3, #0
 8005106:	617b      	str	r3, [r7, #20]
 8005108:	687a      	ldr	r2, [r7, #4]
 800510a:	2306      	movs	r3, #6
 800510c:	213b      	movs	r1, #59	; 0x3b
 800510e:	20d0      	movs	r0, #208	; 0xd0
 8005110:	f7ff fdfa 	bl	8004d08 <mpu9255_ReadMulti>
 8005114:	0003      	movs	r3, r0
 8005116:	617b      	str	r3, [r7, #20]
 8005118:	697b      	ldr	r3, [r7, #20]
 800511a:	2b00      	cmp	r3, #0
 800511c:	d13b      	bne.n	8005196 <mpu9255_readIMU+0x9c>
 800511e:	683a      	ldr	r2, [r7, #0]
 8005120:	2306      	movs	r3, #6
 8005122:	2143      	movs	r1, #67	; 0x43
 8005124:	20d0      	movs	r0, #208	; 0xd0
 8005126:	f7ff fdef 	bl	8004d08 <mpu9255_ReadMulti>
 800512a:	0003      	movs	r3, r0
 800512c:	617b      	str	r3, [r7, #20]
 800512e:	697b      	ldr	r3, [r7, #20]
 8005130:	2b00      	cmp	r3, #0
 8005132:	d132      	bne.n	800519a <mpu9255_readIMU+0xa0>
 8005134:	2300      	movs	r3, #0
 8005136:	613b      	str	r3, [r7, #16]
 8005138:	e011      	b.n	800515e <mpu9255_readIMU+0x64>
 800513a:	693b      	ldr	r3, [r7, #16]
 800513c:	005b      	lsls	r3, r3, #1
 800513e:	687a      	ldr	r2, [r7, #4]
 8005140:	18d3      	adds	r3, r2, r3
 8005142:	2100      	movs	r1, #0
 8005144:	5e59      	ldrsh	r1, [r3, r1]
 8005146:	693b      	ldr	r3, [r7, #16]
 8005148:	005b      	lsls	r3, r3, #1
 800514a:	687a      	ldr	r2, [r7, #4]
 800514c:	18d4      	adds	r4, r2, r3
 800514e:	0008      	movs	r0, r1
 8005150:	f7ff ffb6 	bl	80050c0 <_swapBytesI16>
 8005154:	0003      	movs	r3, r0
 8005156:	8023      	strh	r3, [r4, #0]
 8005158:	693b      	ldr	r3, [r7, #16]
 800515a:	3301      	adds	r3, #1
 800515c:	613b      	str	r3, [r7, #16]
 800515e:	693b      	ldr	r3, [r7, #16]
 8005160:	2b02      	cmp	r3, #2
 8005162:	ddea      	ble.n	800513a <mpu9255_readIMU+0x40>
 8005164:	2300      	movs	r3, #0
 8005166:	60fb      	str	r3, [r7, #12]
 8005168:	e011      	b.n	800518e <mpu9255_readIMU+0x94>
 800516a:	68fb      	ldr	r3, [r7, #12]
 800516c:	005b      	lsls	r3, r3, #1
 800516e:	683a      	ldr	r2, [r7, #0]
 8005170:	18d3      	adds	r3, r2, r3
 8005172:	2100      	movs	r1, #0
 8005174:	5e59      	ldrsh	r1, [r3, r1]
 8005176:	68fb      	ldr	r3, [r7, #12]
 8005178:	005b      	lsls	r3, r3, #1
 800517a:	683a      	ldr	r2, [r7, #0]
 800517c:	18d4      	adds	r4, r2, r3
 800517e:	0008      	movs	r0, r1
 8005180:	f7ff ff9e 	bl	80050c0 <_swapBytesI16>
 8005184:	0003      	movs	r3, r0
 8005186:	8023      	strh	r3, [r4, #0]
 8005188:	68fb      	ldr	r3, [r7, #12]
 800518a:	3301      	adds	r3, #1
 800518c:	60fb      	str	r3, [r7, #12]
 800518e:	68fb      	ldr	r3, [r7, #12]
 8005190:	2b02      	cmp	r3, #2
 8005192:	ddea      	ble.n	800516a <mpu9255_readIMU+0x70>
 8005194:	e002      	b.n	800519c <mpu9255_readIMU+0xa2>
 8005196:	46c0      	nop			; (mov r8, r8)
 8005198:	e000      	b.n	800519c <mpu9255_readIMU+0xa2>
 800519a:	46c0      	nop			; (mov r8, r8)
 800519c:	697b      	ldr	r3, [r7, #20]
 800519e:	0018      	movs	r0, r3
 80051a0:	46bd      	mov	sp, r7
 80051a2:	b007      	add	sp, #28
 80051a4:	bd90      	pop	{r4, r7, pc}

080051a6 <mpu9255_readCompass>:
 80051a6:	b590      	push	{r4, r7, lr}
 80051a8:	b085      	sub	sp, #20
 80051aa:	af00      	add	r7, sp, #0
 80051ac:	6078      	str	r0, [r7, #4]
 80051ae:	2300      	movs	r3, #0
 80051b0:	60fb      	str	r3, [r7, #12]
 80051b2:	2202      	movs	r2, #2
 80051b4:	2137      	movs	r1, #55	; 0x37
 80051b6:	20d0      	movs	r0, #208	; 0xd0
 80051b8:	f7ff fe1a 	bl	8004df0 <mpu9255_WriteByte>
 80051bc:	0003      	movs	r3, r0
 80051be:	60fb      	str	r3, [r7, #12]
 80051c0:	68fb      	ldr	r3, [r7, #12]
 80051c2:	2b00      	cmp	r3, #0
 80051c4:	d12b      	bne.n	800521e <mpu9255_readCompass+0x78>
 80051c6:	240b      	movs	r4, #11
 80051c8:	193b      	adds	r3, r7, r4
 80051ca:	001a      	movs	r2, r3
 80051cc:	2102      	movs	r1, #2
 80051ce:	2018      	movs	r0, #24
 80051d0:	f7ff fe2a 	bl	8004e28 <mpu9255_ReadByte>
 80051d4:	193b      	adds	r3, r7, r4
 80051d6:	001a      	movs	r2, r3
 80051d8:	2102      	movs	r1, #2
 80051da:	2018      	movs	r0, #24
 80051dc:	f7ff fe24 	bl	8004e28 <mpu9255_ReadByte>
 80051e0:	0003      	movs	r3, r0
 80051e2:	60fb      	str	r3, [r7, #12]
 80051e4:	68fb      	ldr	r3, [r7, #12]
 80051e6:	2b00      	cmp	r3, #0
 80051e8:	d11b      	bne.n	8005222 <mpu9255_readCompass+0x7c>
 80051ea:	230b      	movs	r3, #11
 80051ec:	18fb      	adds	r3, r7, r3
 80051ee:	781b      	ldrb	r3, [r3, #0]
 80051f0:	2b00      	cmp	r3, #0
 80051f2:	d018      	beq.n	8005226 <mpu9255_readCompass+0x80>
 80051f4:	687a      	ldr	r2, [r7, #4]
 80051f6:	2306      	movs	r3, #6
 80051f8:	2103      	movs	r1, #3
 80051fa:	2018      	movs	r0, #24
 80051fc:	f7ff fd84 	bl	8004d08 <mpu9255_ReadMulti>
 8005200:	0003      	movs	r3, r0
 8005202:	60fb      	str	r3, [r7, #12]
 8005204:	68fb      	ldr	r3, [r7, #12]
 8005206:	2b00      	cmp	r3, #0
 8005208:	d10f      	bne.n	800522a <mpu9255_readCompass+0x84>
 800520a:	230b      	movs	r3, #11
 800520c:	18fb      	adds	r3, r7, r3
 800520e:	001a      	movs	r2, r3
 8005210:	2109      	movs	r1, #9
 8005212:	2018      	movs	r0, #24
 8005214:	f7ff fe08 	bl	8004e28 <mpu9255_ReadByte>
 8005218:	0003      	movs	r3, r0
 800521a:	60fb      	str	r3, [r7, #12]
 800521c:	e006      	b.n	800522c <mpu9255_readCompass+0x86>
 800521e:	46c0      	nop			; (mov r8, r8)
 8005220:	e004      	b.n	800522c <mpu9255_readCompass+0x86>
 8005222:	46c0      	nop			; (mov r8, r8)
 8005224:	e002      	b.n	800522c <mpu9255_readCompass+0x86>
 8005226:	46c0      	nop			; (mov r8, r8)
 8005228:	e000      	b.n	800522c <mpu9255_readCompass+0x86>
 800522a:	46c0      	nop			; (mov r8, r8)
 800522c:	2200      	movs	r2, #0
 800522e:	2137      	movs	r1, #55	; 0x37
 8005230:	20d0      	movs	r0, #208	; 0xd0
 8005232:	f7ff fddd 	bl	8004df0 <mpu9255_WriteByte>
 8005236:	0003      	movs	r3, r0
 8005238:	60fb      	str	r3, [r7, #12]
 800523a:	68fb      	ldr	r3, [r7, #12]
 800523c:	2b00      	cmp	r3, #0
 800523e:	d000      	beq.n	8005242 <mpu9255_readCompass+0x9c>
 8005240:	e7f4      	b.n	800522c <mpu9255_readCompass+0x86>
 8005242:	68fb      	ldr	r3, [r7, #12]
 8005244:	0018      	movs	r0, r3
 8005246:	46bd      	mov	sp, r7
 8005248:	b005      	add	sp, #20
 800524a:	bd90      	pop	{r4, r7, pc}

0800524c <mpu9255_recalcAccel>:
 800524c:	b5b0      	push	{r4, r5, r7, lr}
 800524e:	b086      	sub	sp, #24
 8005250:	af00      	add	r7, sp, #0
 8005252:	6078      	str	r0, [r7, #4]
 8005254:	6039      	str	r1, [r7, #0]
 8005256:	2508      	movs	r5, #8
 8005258:	197b      	adds	r3, r7, r5
 800525a:	2200      	movs	r2, #0
 800525c:	601a      	str	r2, [r3, #0]
 800525e:	197b      	adds	r3, r7, r5
 8005260:	2200      	movs	r2, #0
 8005262:	605a      	str	r2, [r3, #4]
 8005264:	197b      	adds	r3, r7, r5
 8005266:	2200      	movs	r2, #0
 8005268:	609a      	str	r2, [r3, #8]
 800526a:	687b      	ldr	r3, [r7, #4]
 800526c:	2200      	movs	r2, #0
 800526e:	5e9b      	ldrsh	r3, [r3, r2]
 8005270:	0018      	movs	r0, r3
 8005272:	f7fb fe77 	bl	8000f64 <__aeabi_i2f>
 8005276:	1c03      	adds	r3, r0, #0
 8005278:	1c18      	adds	r0, r3, #0
 800527a:	f7fd fad5 	bl	8002828 <__aeabi_f2d>
 800527e:	4a42      	ldr	r2, [pc, #264]	; (8005388 <mpu9255_recalcAccel+0x13c>)
 8005280:	4b42      	ldr	r3, [pc, #264]	; (800538c <mpu9255_recalcAccel+0x140>)
 8005282:	f7fc fd17 	bl	8001cb4 <__aeabi_dmul>
 8005286:	0003      	movs	r3, r0
 8005288:	000c      	movs	r4, r1
 800528a:	0018      	movs	r0, r3
 800528c:	0021      	movs	r1, r4
 800528e:	2200      	movs	r2, #0
 8005290:	4b3f      	ldr	r3, [pc, #252]	; (8005390 <mpu9255_recalcAccel+0x144>)
 8005292:	f7fc fa0d 	bl	80016b0 <__aeabi_ddiv>
 8005296:	0003      	movs	r3, r0
 8005298:	000c      	movs	r4, r1
 800529a:	0018      	movs	r0, r3
 800529c:	0021      	movs	r1, r4
 800529e:	0002      	movs	r2, r0
 80052a0:	000b      	movs	r3, r1
 80052a2:	f7fb fee9 	bl	8001078 <__aeabi_dadd>
 80052a6:	0003      	movs	r3, r0
 80052a8:	000c      	movs	r4, r1
 80052aa:	0018      	movs	r0, r3
 80052ac:	0021      	movs	r1, r4
 80052ae:	f7fd fb0d 	bl	80028cc <__aeabi_d2f>
 80052b2:	1c02      	adds	r2, r0, #0
 80052b4:	197b      	adds	r3, r7, r5
 80052b6:	601a      	str	r2, [r3, #0]
 80052b8:	687b      	ldr	r3, [r7, #4]
 80052ba:	3302      	adds	r3, #2
 80052bc:	2200      	movs	r2, #0
 80052be:	5e9b      	ldrsh	r3, [r3, r2]
 80052c0:	0018      	movs	r0, r3
 80052c2:	f7fb fe4f 	bl	8000f64 <__aeabi_i2f>
 80052c6:	1c03      	adds	r3, r0, #0
 80052c8:	1c18      	adds	r0, r3, #0
 80052ca:	f7fd faad 	bl	8002828 <__aeabi_f2d>
 80052ce:	4a2e      	ldr	r2, [pc, #184]	; (8005388 <mpu9255_recalcAccel+0x13c>)
 80052d0:	4b2e      	ldr	r3, [pc, #184]	; (800538c <mpu9255_recalcAccel+0x140>)
 80052d2:	f7fc fcef 	bl	8001cb4 <__aeabi_dmul>
 80052d6:	0003      	movs	r3, r0
 80052d8:	000c      	movs	r4, r1
 80052da:	0018      	movs	r0, r3
 80052dc:	0021      	movs	r1, r4
 80052de:	2200      	movs	r2, #0
 80052e0:	4b2b      	ldr	r3, [pc, #172]	; (8005390 <mpu9255_recalcAccel+0x144>)
 80052e2:	f7fc f9e5 	bl	80016b0 <__aeabi_ddiv>
 80052e6:	0003      	movs	r3, r0
 80052e8:	000c      	movs	r4, r1
 80052ea:	0018      	movs	r0, r3
 80052ec:	0021      	movs	r1, r4
 80052ee:	0002      	movs	r2, r0
 80052f0:	000b      	movs	r3, r1
 80052f2:	f7fb fec1 	bl	8001078 <__aeabi_dadd>
 80052f6:	0003      	movs	r3, r0
 80052f8:	000c      	movs	r4, r1
 80052fa:	0018      	movs	r0, r3
 80052fc:	0021      	movs	r1, r4
 80052fe:	f7fd fae5 	bl	80028cc <__aeabi_d2f>
 8005302:	1c02      	adds	r2, r0, #0
 8005304:	197b      	adds	r3, r7, r5
 8005306:	605a      	str	r2, [r3, #4]
 8005308:	687b      	ldr	r3, [r7, #4]
 800530a:	3304      	adds	r3, #4
 800530c:	2200      	movs	r2, #0
 800530e:	5e9b      	ldrsh	r3, [r3, r2]
 8005310:	0018      	movs	r0, r3
 8005312:	f7fb fe27 	bl	8000f64 <__aeabi_i2f>
 8005316:	1c03      	adds	r3, r0, #0
 8005318:	1c18      	adds	r0, r3, #0
 800531a:	f7fd fa85 	bl	8002828 <__aeabi_f2d>
 800531e:	4a1a      	ldr	r2, [pc, #104]	; (8005388 <mpu9255_recalcAccel+0x13c>)
 8005320:	4b1a      	ldr	r3, [pc, #104]	; (800538c <mpu9255_recalcAccel+0x140>)
 8005322:	f7fc fcc7 	bl	8001cb4 <__aeabi_dmul>
 8005326:	0003      	movs	r3, r0
 8005328:	000c      	movs	r4, r1
 800532a:	0018      	movs	r0, r3
 800532c:	0021      	movs	r1, r4
 800532e:	2200      	movs	r2, #0
 8005330:	4b17      	ldr	r3, [pc, #92]	; (8005390 <mpu9255_recalcAccel+0x144>)
 8005332:	f7fc f9bd 	bl	80016b0 <__aeabi_ddiv>
 8005336:	0003      	movs	r3, r0
 8005338:	000c      	movs	r4, r1
 800533a:	0018      	movs	r0, r3
 800533c:	0021      	movs	r1, r4
 800533e:	0002      	movs	r2, r0
 8005340:	000b      	movs	r3, r1
 8005342:	f7fb fe99 	bl	8001078 <__aeabi_dadd>
 8005346:	0003      	movs	r3, r0
 8005348:	000c      	movs	r4, r1
 800534a:	0018      	movs	r0, r3
 800534c:	0021      	movs	r1, r4
 800534e:	f7fd fabd 	bl	80028cc <__aeabi_d2f>
 8005352:	1c02      	adds	r2, r0, #0
 8005354:	197b      	adds	r3, r7, r5
 8005356:	609a      	str	r2, [r3, #8]
 8005358:	2300      	movs	r3, #0
 800535a:	617b      	str	r3, [r7, #20]
 800535c:	e00c      	b.n	8005378 <mpu9255_recalcAccel+0x12c>
 800535e:	697b      	ldr	r3, [r7, #20]
 8005360:	009b      	lsls	r3, r3, #2
 8005362:	683a      	ldr	r2, [r7, #0]
 8005364:	18d3      	adds	r3, r2, r3
 8005366:	2208      	movs	r2, #8
 8005368:	18ba      	adds	r2, r7, r2
 800536a:	6979      	ldr	r1, [r7, #20]
 800536c:	0089      	lsls	r1, r1, #2
 800536e:	588a      	ldr	r2, [r1, r2]
 8005370:	601a      	str	r2, [r3, #0]
 8005372:	697b      	ldr	r3, [r7, #20]
 8005374:	3301      	adds	r3, #1
 8005376:	617b      	str	r3, [r7, #20]
 8005378:	697b      	ldr	r3, [r7, #20]
 800537a:	2b02      	cmp	r3, #2
 800537c:	ddef      	ble.n	800535e <mpu9255_recalcAccel+0x112>
 800537e:	46c0      	nop			; (mov r8, r8)
 8005380:	46bd      	mov	sp, r7
 8005382:	b006      	add	sp, #24
 8005384:	bdb0      	pop	{r4, r5, r7, pc}
 8005386:	46c0      	nop			; (mov r8, r8)
 8005388:	374bc6a8 	.word	0x374bc6a8
 800538c:	4023a189 	.word	0x4023a189
 8005390:	40d00000 	.word	0x40d00000

08005394 <mpu9255_recalcGyro>:
 8005394:	b590      	push	{r4, r7, lr}
 8005396:	b083      	sub	sp, #12
 8005398:	af00      	add	r7, sp, #0
 800539a:	6078      	str	r0, [r7, #4]
 800539c:	6039      	str	r1, [r7, #0]
 800539e:	687b      	ldr	r3, [r7, #4]
 80053a0:	2200      	movs	r2, #0
 80053a2:	5e9b      	ldrsh	r3, [r3, r2]
 80053a4:	0018      	movs	r0, r3
 80053a6:	f7fb fddd 	bl	8000f64 <__aeabi_i2f>
 80053aa:	1c03      	adds	r3, r0, #0
 80053ac:	1c18      	adds	r0, r3, #0
 80053ae:	f7fd fa3b 	bl	8002828 <__aeabi_f2d>
 80053b2:	4a3c      	ldr	r2, [pc, #240]	; (80054a4 <mpu9255_recalcGyro+0x110>)
 80053b4:	4b3c      	ldr	r3, [pc, #240]	; (80054a8 <mpu9255_recalcGyro+0x114>)
 80053b6:	f7fc fc7d 	bl	8001cb4 <__aeabi_dmul>
 80053ba:	0003      	movs	r3, r0
 80053bc:	000c      	movs	r4, r1
 80053be:	0018      	movs	r0, r3
 80053c0:	0021      	movs	r1, r4
 80053c2:	2200      	movs	r2, #0
 80053c4:	4b39      	ldr	r3, [pc, #228]	; (80054ac <mpu9255_recalcGyro+0x118>)
 80053c6:	f7fc f973 	bl	80016b0 <__aeabi_ddiv>
 80053ca:	0003      	movs	r3, r0
 80053cc:	000c      	movs	r4, r1
 80053ce:	0018      	movs	r0, r3
 80053d0:	0021      	movs	r1, r4
 80053d2:	0002      	movs	r2, r0
 80053d4:	000b      	movs	r3, r1
 80053d6:	f7fb fe4f 	bl	8001078 <__aeabi_dadd>
 80053da:	0003      	movs	r3, r0
 80053dc:	000c      	movs	r4, r1
 80053de:	0018      	movs	r0, r3
 80053e0:	0021      	movs	r1, r4
 80053e2:	f7fd fa73 	bl	80028cc <__aeabi_d2f>
 80053e6:	1c02      	adds	r2, r0, #0
 80053e8:	683b      	ldr	r3, [r7, #0]
 80053ea:	601a      	str	r2, [r3, #0]
 80053ec:	687b      	ldr	r3, [r7, #4]
 80053ee:	3302      	adds	r3, #2
 80053f0:	2200      	movs	r2, #0
 80053f2:	5e9b      	ldrsh	r3, [r3, r2]
 80053f4:	0018      	movs	r0, r3
 80053f6:	f7fb fdb5 	bl	8000f64 <__aeabi_i2f>
 80053fa:	1c03      	adds	r3, r0, #0
 80053fc:	1c18      	adds	r0, r3, #0
 80053fe:	f7fd fa13 	bl	8002828 <__aeabi_f2d>
 8005402:	4a28      	ldr	r2, [pc, #160]	; (80054a4 <mpu9255_recalcGyro+0x110>)
 8005404:	4b28      	ldr	r3, [pc, #160]	; (80054a8 <mpu9255_recalcGyro+0x114>)
 8005406:	f7fc fc55 	bl	8001cb4 <__aeabi_dmul>
 800540a:	0003      	movs	r3, r0
 800540c:	000c      	movs	r4, r1
 800540e:	0018      	movs	r0, r3
 8005410:	0021      	movs	r1, r4
 8005412:	2200      	movs	r2, #0
 8005414:	4b25      	ldr	r3, [pc, #148]	; (80054ac <mpu9255_recalcGyro+0x118>)
 8005416:	f7fc f94b 	bl	80016b0 <__aeabi_ddiv>
 800541a:	0003      	movs	r3, r0
 800541c:	000c      	movs	r4, r1
 800541e:	0018      	movs	r0, r3
 8005420:	0021      	movs	r1, r4
 8005422:	0002      	movs	r2, r0
 8005424:	000b      	movs	r3, r1
 8005426:	f7fb fe27 	bl	8001078 <__aeabi_dadd>
 800542a:	0003      	movs	r3, r0
 800542c:	000c      	movs	r4, r1
 800542e:	0019      	movs	r1, r3
 8005430:	0022      	movs	r2, r4
 8005432:	683b      	ldr	r3, [r7, #0]
 8005434:	1d1c      	adds	r4, r3, #4
 8005436:	0008      	movs	r0, r1
 8005438:	0011      	movs	r1, r2
 800543a:	f7fd fa47 	bl	80028cc <__aeabi_d2f>
 800543e:	1c03      	adds	r3, r0, #0
 8005440:	6023      	str	r3, [r4, #0]
 8005442:	687b      	ldr	r3, [r7, #4]
 8005444:	3304      	adds	r3, #4
 8005446:	2200      	movs	r2, #0
 8005448:	5e9b      	ldrsh	r3, [r3, r2]
 800544a:	0018      	movs	r0, r3
 800544c:	f7fb fd8a 	bl	8000f64 <__aeabi_i2f>
 8005450:	1c03      	adds	r3, r0, #0
 8005452:	1c18      	adds	r0, r3, #0
 8005454:	f7fd f9e8 	bl	8002828 <__aeabi_f2d>
 8005458:	4a12      	ldr	r2, [pc, #72]	; (80054a4 <mpu9255_recalcGyro+0x110>)
 800545a:	4b13      	ldr	r3, [pc, #76]	; (80054a8 <mpu9255_recalcGyro+0x114>)
 800545c:	f7fc fc2a 	bl	8001cb4 <__aeabi_dmul>
 8005460:	0003      	movs	r3, r0
 8005462:	000c      	movs	r4, r1
 8005464:	0018      	movs	r0, r3
 8005466:	0021      	movs	r1, r4
 8005468:	2200      	movs	r2, #0
 800546a:	4b10      	ldr	r3, [pc, #64]	; (80054ac <mpu9255_recalcGyro+0x118>)
 800546c:	f7fc f920 	bl	80016b0 <__aeabi_ddiv>
 8005470:	0003      	movs	r3, r0
 8005472:	000c      	movs	r4, r1
 8005474:	0018      	movs	r0, r3
 8005476:	0021      	movs	r1, r4
 8005478:	0002      	movs	r2, r0
 800547a:	000b      	movs	r3, r1
 800547c:	f7fb fdfc 	bl	8001078 <__aeabi_dadd>
 8005480:	0003      	movs	r3, r0
 8005482:	000c      	movs	r4, r1
 8005484:	0019      	movs	r1, r3
 8005486:	0022      	movs	r2, r4
 8005488:	683b      	ldr	r3, [r7, #0]
 800548a:	3308      	adds	r3, #8
 800548c:	001c      	movs	r4, r3
 800548e:	0008      	movs	r0, r1
 8005490:	0011      	movs	r1, r2
 8005492:	f7fd fa1b 	bl	80028cc <__aeabi_d2f>
 8005496:	1c03      	adds	r3, r0, #0
 8005498:	6023      	str	r3, [r4, #0]
 800549a:	46c0      	nop			; (mov r8, r8)
 800549c:	46bd      	mov	sp, r7
 800549e:	b003      	add	sp, #12
 80054a0:	bd90      	pop	{r4, r7, pc}
 80054a2:	46c0      	nop			; (mov r8, r8)
 80054a4:	54442d18 	.word	0x54442d18
 80054a8:	400921fb 	.word	0x400921fb
 80054ac:	40d70700 	.word	0x40d70700

080054b0 <mpu9255_recalcCompass>:
 80054b0:	b590      	push	{r4, r7, lr}
 80054b2:	b083      	sub	sp, #12
 80054b4:	af00      	add	r7, sp, #0
 80054b6:	6078      	str	r0, [r7, #4]
 80054b8:	6039      	str	r1, [r7, #0]
 80054ba:	687b      	ldr	r3, [r7, #4]
 80054bc:	2200      	movs	r2, #0
 80054be:	5e9b      	ldrsh	r3, [r3, r2]
 80054c0:	0018      	movs	r0, r3
 80054c2:	f7fb fd4f 	bl	8000f64 <__aeabi_i2f>
 80054c6:	1c02      	adds	r2, r0, #0
 80054c8:	4b17      	ldr	r3, [pc, #92]	; (8005528 <mpu9255_recalcCompass+0x78>)
 80054ca:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80054cc:	1c19      	adds	r1, r3, #0
 80054ce:	1c10      	adds	r0, r2, #0
 80054d0:	f7fb fa52 	bl	8000978 <__aeabi_fmul>
 80054d4:	1c03      	adds	r3, r0, #0
 80054d6:	1c1a      	adds	r2, r3, #0
 80054d8:	683b      	ldr	r3, [r7, #0]
 80054da:	601a      	str	r2, [r3, #0]
 80054dc:	687b      	ldr	r3, [r7, #4]
 80054de:	3302      	adds	r3, #2
 80054e0:	2200      	movs	r2, #0
 80054e2:	5e9b      	ldrsh	r3, [r3, r2]
 80054e4:	0018      	movs	r0, r3
 80054e6:	f7fb fd3d 	bl	8000f64 <__aeabi_i2f>
 80054ea:	4b0f      	ldr	r3, [pc, #60]	; (8005528 <mpu9255_recalcCompass+0x78>)
 80054ec:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80054ee:	683b      	ldr	r3, [r7, #0]
 80054f0:	1d1c      	adds	r4, r3, #4
 80054f2:	1c11      	adds	r1, r2, #0
 80054f4:	f7fb fa40 	bl	8000978 <__aeabi_fmul>
 80054f8:	1c03      	adds	r3, r0, #0
 80054fa:	6023      	str	r3, [r4, #0]
 80054fc:	687b      	ldr	r3, [r7, #4]
 80054fe:	3304      	adds	r3, #4
 8005500:	2200      	movs	r2, #0
 8005502:	5e9b      	ldrsh	r3, [r3, r2]
 8005504:	0018      	movs	r0, r3
 8005506:	f7fb fd2d 	bl	8000f64 <__aeabi_i2f>
 800550a:	4b07      	ldr	r3, [pc, #28]	; (8005528 <mpu9255_recalcCompass+0x78>)
 800550c:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 800550e:	683b      	ldr	r3, [r7, #0]
 8005510:	3308      	adds	r3, #8
 8005512:	001c      	movs	r4, r3
 8005514:	1c11      	adds	r1, r2, #0
 8005516:	f7fb fa2f 	bl	8000978 <__aeabi_fmul>
 800551a:	1c03      	adds	r3, r0, #0
 800551c:	6023      	str	r3, [r4, #0]
 800551e:	46c0      	nop			; (mov r8, r8)
 8005520:	46bd      	mov	sp, r7
 8005522:	b003      	add	sp, #12
 8005524:	bd90      	pop	{r4, r7, pc}
 8005526:	46c0      	nop			; (mov r8, r8)
 8005528:	2000014c 	.word	0x2000014c

0800552c <xputc>:
 800552c:	b580      	push	{r7, lr}
 800552e:	b082      	sub	sp, #8
 8005530:	af00      	add	r7, sp, #0
 8005532:	0002      	movs	r2, r0
 8005534:	1dfb      	adds	r3, r7, #7
 8005536:	701a      	strb	r2, [r3, #0]
 8005538:	1dfb      	adds	r3, r7, #7
 800553a:	781b      	ldrb	r3, [r3, #0]
 800553c:	2b0a      	cmp	r3, #10
 800553e:	d102      	bne.n	8005546 <xputc+0x1a>
 8005540:	200d      	movs	r0, #13
 8005542:	f7ff fff3 	bl	800552c <xputc>
 8005546:	4b0d      	ldr	r3, [pc, #52]	; (800557c <xputc+0x50>)
 8005548:	681b      	ldr	r3, [r3, #0]
 800554a:	2b00      	cmp	r3, #0
 800554c:	d008      	beq.n	8005560 <xputc+0x34>
 800554e:	4b0b      	ldr	r3, [pc, #44]	; (800557c <xputc+0x50>)
 8005550:	681b      	ldr	r3, [r3, #0]
 8005552:	1c59      	adds	r1, r3, #1
 8005554:	4a09      	ldr	r2, [pc, #36]	; (800557c <xputc+0x50>)
 8005556:	6011      	str	r1, [r2, #0]
 8005558:	1dfa      	adds	r2, r7, #7
 800555a:	7812      	ldrb	r2, [r2, #0]
 800555c:	701a      	strb	r2, [r3, #0]
 800555e:	e009      	b.n	8005574 <xputc+0x48>
 8005560:	4b07      	ldr	r3, [pc, #28]	; (8005580 <xputc+0x54>)
 8005562:	681b      	ldr	r3, [r3, #0]
 8005564:	2b00      	cmp	r3, #0
 8005566:	d005      	beq.n	8005574 <xputc+0x48>
 8005568:	4b05      	ldr	r3, [pc, #20]	; (8005580 <xputc+0x54>)
 800556a:	681b      	ldr	r3, [r3, #0]
 800556c:	1dfa      	adds	r2, r7, #7
 800556e:	7812      	ldrb	r2, [r2, #0]
 8005570:	0010      	movs	r0, r2
 8005572:	4798      	blx	r3
 8005574:	46bd      	mov	sp, r7
 8005576:	b002      	add	sp, #8
 8005578:	bd80      	pop	{r7, pc}
 800557a:	46c0      	nop			; (mov r8, r8)
 800557c:	200001cc 	.word	0x200001cc
 8005580:	200001f8 	.word	0x200001f8

08005584 <xputs>:
 8005584:	b580      	push	{r7, lr}
 8005586:	b082      	sub	sp, #8
 8005588:	af00      	add	r7, sp, #0
 800558a:	6078      	str	r0, [r7, #4]
 800558c:	e006      	b.n	800559c <xputs+0x18>
 800558e:	687b      	ldr	r3, [r7, #4]
 8005590:	1c5a      	adds	r2, r3, #1
 8005592:	607a      	str	r2, [r7, #4]
 8005594:	781b      	ldrb	r3, [r3, #0]
 8005596:	0018      	movs	r0, r3
 8005598:	f7ff ffc8 	bl	800552c <xputc>
 800559c:	687b      	ldr	r3, [r7, #4]
 800559e:	781b      	ldrb	r3, [r3, #0]
 80055a0:	2b00      	cmp	r3, #0
 80055a2:	d1f4      	bne.n	800558e <xputs+0xa>
 80055a4:	46c0      	nop			; (mov r8, r8)
 80055a6:	46bd      	mov	sp, r7
 80055a8:	b002      	add	sp, #8
 80055aa:	bd80      	pop	{r7, pc}

080055ac <xvprintf>:
 80055ac:	b590      	push	{r4, r7, lr}
 80055ae:	b093      	sub	sp, #76	; 0x4c
 80055b0:	af00      	add	r7, sp, #0
 80055b2:	6078      	str	r0, [r7, #4]
 80055b4:	6039      	str	r1, [r7, #0]
 80055b6:	687b      	ldr	r3, [r7, #4]
 80055b8:	1c5a      	adds	r2, r3, #1
 80055ba:	607a      	str	r2, [r7, #4]
 80055bc:	2133      	movs	r1, #51	; 0x33
 80055be:	187a      	adds	r2, r7, r1
 80055c0:	781b      	ldrb	r3, [r3, #0]
 80055c2:	7013      	strb	r3, [r2, #0]
 80055c4:	187b      	adds	r3, r7, r1
 80055c6:	781b      	ldrb	r3, [r3, #0]
 80055c8:	2b00      	cmp	r3, #0
 80055ca:	d100      	bne.n	80055ce <xvprintf+0x22>
 80055cc:	e16f      	b.n	80058ae <xvprintf+0x302>
 80055ce:	2333      	movs	r3, #51	; 0x33
 80055d0:	18fb      	adds	r3, r7, r3
 80055d2:	781b      	ldrb	r3, [r3, #0]
 80055d4:	2b25      	cmp	r3, #37	; 0x25
 80055d6:	d006      	beq.n	80055e6 <xvprintf+0x3a>
 80055d8:	2333      	movs	r3, #51	; 0x33
 80055da:	18fb      	adds	r3, r7, r3
 80055dc:	781b      	ldrb	r3, [r3, #0]
 80055de:	0018      	movs	r0, r3
 80055e0:	f7ff ffa4 	bl	800552c <xputc>
 80055e4:	e162      	b.n	80058ac <xvprintf+0x300>
 80055e6:	2300      	movs	r3, #0
 80055e8:	637b      	str	r3, [r7, #52]	; 0x34
 80055ea:	687b      	ldr	r3, [r7, #4]
 80055ec:	1c5a      	adds	r2, r3, #1
 80055ee:	607a      	str	r2, [r7, #4]
 80055f0:	2133      	movs	r1, #51	; 0x33
 80055f2:	187a      	adds	r2, r7, r1
 80055f4:	781b      	ldrb	r3, [r3, #0]
 80055f6:	7013      	strb	r3, [r2, #0]
 80055f8:	187b      	adds	r3, r7, r1
 80055fa:	781b      	ldrb	r3, [r3, #0]
 80055fc:	2b30      	cmp	r3, #48	; 0x30
 80055fe:	d109      	bne.n	8005614 <xvprintf+0x68>
 8005600:	2301      	movs	r3, #1
 8005602:	637b      	str	r3, [r7, #52]	; 0x34
 8005604:	687b      	ldr	r3, [r7, #4]
 8005606:	1c5a      	adds	r2, r3, #1
 8005608:	607a      	str	r2, [r7, #4]
 800560a:	2233      	movs	r2, #51	; 0x33
 800560c:	18ba      	adds	r2, r7, r2
 800560e:	781b      	ldrb	r3, [r3, #0]
 8005610:	7013      	strb	r3, [r2, #0]
 8005612:	e00d      	b.n	8005630 <xvprintf+0x84>
 8005614:	2333      	movs	r3, #51	; 0x33
 8005616:	18fb      	adds	r3, r7, r3
 8005618:	781b      	ldrb	r3, [r3, #0]
 800561a:	2b2d      	cmp	r3, #45	; 0x2d
 800561c:	d108      	bne.n	8005630 <xvprintf+0x84>
 800561e:	2302      	movs	r3, #2
 8005620:	637b      	str	r3, [r7, #52]	; 0x34
 8005622:	687b      	ldr	r3, [r7, #4]
 8005624:	1c5a      	adds	r2, r3, #1
 8005626:	607a      	str	r2, [r7, #4]
 8005628:	2233      	movs	r2, #51	; 0x33
 800562a:	18ba      	adds	r2, r7, r2
 800562c:	781b      	ldrb	r3, [r3, #0]
 800562e:	7013      	strb	r3, [r2, #0]
 8005630:	2300      	movs	r3, #0
 8005632:	63bb      	str	r3, [r7, #56]	; 0x38
 8005634:	e011      	b.n	800565a <xvprintf+0xae>
 8005636:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8005638:	0013      	movs	r3, r2
 800563a:	009b      	lsls	r3, r3, #2
 800563c:	189b      	adds	r3, r3, r2
 800563e:	005b      	lsls	r3, r3, #1
 8005640:	001a      	movs	r2, r3
 8005642:	2133      	movs	r1, #51	; 0x33
 8005644:	187b      	adds	r3, r7, r1
 8005646:	781b      	ldrb	r3, [r3, #0]
 8005648:	18d3      	adds	r3, r2, r3
 800564a:	3b30      	subs	r3, #48	; 0x30
 800564c:	63bb      	str	r3, [r7, #56]	; 0x38
 800564e:	687b      	ldr	r3, [r7, #4]
 8005650:	1c5a      	adds	r2, r3, #1
 8005652:	607a      	str	r2, [r7, #4]
 8005654:	187a      	adds	r2, r7, r1
 8005656:	781b      	ldrb	r3, [r3, #0]
 8005658:	7013      	strb	r3, [r2, #0]
 800565a:	2333      	movs	r3, #51	; 0x33
 800565c:	18fb      	adds	r3, r7, r3
 800565e:	781b      	ldrb	r3, [r3, #0]
 8005660:	2b2f      	cmp	r3, #47	; 0x2f
 8005662:	d904      	bls.n	800566e <xvprintf+0xc2>
 8005664:	2333      	movs	r3, #51	; 0x33
 8005666:	18fb      	adds	r3, r7, r3
 8005668:	781b      	ldrb	r3, [r3, #0]
 800566a:	2b39      	cmp	r3, #57	; 0x39
 800566c:	d9e3      	bls.n	8005636 <xvprintf+0x8a>
 800566e:	2333      	movs	r3, #51	; 0x33
 8005670:	18fb      	adds	r3, r7, r3
 8005672:	781b      	ldrb	r3, [r3, #0]
 8005674:	2b6c      	cmp	r3, #108	; 0x6c
 8005676:	d004      	beq.n	8005682 <xvprintf+0xd6>
 8005678:	2333      	movs	r3, #51	; 0x33
 800567a:	18fb      	adds	r3, r7, r3
 800567c:	781b      	ldrb	r3, [r3, #0]
 800567e:	2b4c      	cmp	r3, #76	; 0x4c
 8005680:	d10a      	bne.n	8005698 <xvprintf+0xec>
 8005682:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8005684:	2204      	movs	r2, #4
 8005686:	4313      	orrs	r3, r2
 8005688:	637b      	str	r3, [r7, #52]	; 0x34
 800568a:	687b      	ldr	r3, [r7, #4]
 800568c:	1c5a      	adds	r2, r3, #1
 800568e:	607a      	str	r2, [r7, #4]
 8005690:	2233      	movs	r2, #51	; 0x33
 8005692:	18ba      	adds	r2, r7, r2
 8005694:	781b      	ldrb	r3, [r3, #0]
 8005696:	7013      	strb	r3, [r2, #0]
 8005698:	2333      	movs	r3, #51	; 0x33
 800569a:	18fb      	adds	r3, r7, r3
 800569c:	781b      	ldrb	r3, [r3, #0]
 800569e:	2b00      	cmp	r3, #0
 80056a0:	d100      	bne.n	80056a4 <xvprintf+0xf8>
 80056a2:	e106      	b.n	80058b2 <xvprintf+0x306>
 80056a4:	2132      	movs	r1, #50	; 0x32
 80056a6:	187b      	adds	r3, r7, r1
 80056a8:	2233      	movs	r2, #51	; 0x33
 80056aa:	18ba      	adds	r2, r7, r2
 80056ac:	7812      	ldrb	r2, [r2, #0]
 80056ae:	701a      	strb	r2, [r3, #0]
 80056b0:	187b      	adds	r3, r7, r1
 80056b2:	781b      	ldrb	r3, [r3, #0]
 80056b4:	2b60      	cmp	r3, #96	; 0x60
 80056b6:	d905      	bls.n	80056c4 <xvprintf+0x118>
 80056b8:	2232      	movs	r2, #50	; 0x32
 80056ba:	18bb      	adds	r3, r7, r2
 80056bc:	18ba      	adds	r2, r7, r2
 80056be:	7812      	ldrb	r2, [r2, #0]
 80056c0:	3a20      	subs	r2, #32
 80056c2:	701a      	strb	r2, [r3, #0]
 80056c4:	2332      	movs	r3, #50	; 0x32
 80056c6:	18fb      	adds	r3, r7, r3
 80056c8:	781b      	ldrb	r3, [r3, #0]
 80056ca:	3b42      	subs	r3, #66	; 0x42
 80056cc:	2b16      	cmp	r3, #22
 80056ce:	d847      	bhi.n	8005760 <xvprintf+0x1b4>
 80056d0:	009a      	lsls	r2, r3, #2
 80056d2:	4b7a      	ldr	r3, [pc, #488]	; (80058bc <xvprintf+0x310>)
 80056d4:	18d3      	adds	r3, r2, r3
 80056d6:	681b      	ldr	r3, [r3, #0]
 80056d8:	469f      	mov	pc, r3
 80056da:	683b      	ldr	r3, [r7, #0]
 80056dc:	1d1a      	adds	r2, r3, #4
 80056de:	603a      	str	r2, [r7, #0]
 80056e0:	681b      	ldr	r3, [r3, #0]
 80056e2:	627b      	str	r3, [r7, #36]	; 0x24
 80056e4:	2300      	movs	r3, #0
 80056e6:	63fb      	str	r3, [r7, #60]	; 0x3c
 80056e8:	e002      	b.n	80056f0 <xvprintf+0x144>
 80056ea:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80056ec:	3301      	adds	r3, #1
 80056ee:	63fb      	str	r3, [r7, #60]	; 0x3c
 80056f0:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 80056f2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80056f4:	18d3      	adds	r3, r2, r3
 80056f6:	781b      	ldrb	r3, [r3, #0]
 80056f8:	2b00      	cmp	r3, #0
 80056fa:	d1f6      	bne.n	80056ea <xvprintf+0x13e>
 80056fc:	e002      	b.n	8005704 <xvprintf+0x158>
 80056fe:	2020      	movs	r0, #32
 8005700:	f7ff ff14 	bl	800552c <xputc>
 8005704:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8005706:	2202      	movs	r2, #2
 8005708:	4013      	ands	r3, r2
 800570a:	d105      	bne.n	8005718 <xvprintf+0x16c>
 800570c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800570e:	1c5a      	adds	r2, r3, #1
 8005710:	63fa      	str	r2, [r7, #60]	; 0x3c
 8005712:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8005714:	429a      	cmp	r2, r3
 8005716:	d8f2      	bhi.n	80056fe <xvprintf+0x152>
 8005718:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800571a:	0018      	movs	r0, r3
 800571c:	f7ff ff32 	bl	8005584 <xputs>
 8005720:	e002      	b.n	8005728 <xvprintf+0x17c>
 8005722:	2020      	movs	r0, #32
 8005724:	f7ff ff02 	bl	800552c <xputc>
 8005728:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800572a:	1c5a      	adds	r2, r3, #1
 800572c:	63fa      	str	r2, [r7, #60]	; 0x3c
 800572e:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8005730:	429a      	cmp	r2, r3
 8005732:	d8f6      	bhi.n	8005722 <xvprintf+0x176>
 8005734:	e0ba      	b.n	80058ac <xvprintf+0x300>
 8005736:	683b      	ldr	r3, [r7, #0]
 8005738:	1d1a      	adds	r2, r3, #4
 800573a:	603a      	str	r2, [r7, #0]
 800573c:	681b      	ldr	r3, [r3, #0]
 800573e:	b2db      	uxtb	r3, r3
 8005740:	0018      	movs	r0, r3
 8005742:	f7ff fef3 	bl	800552c <xputc>
 8005746:	e0b1      	b.n	80058ac <xvprintf+0x300>
 8005748:	2302      	movs	r3, #2
 800574a:	647b      	str	r3, [r7, #68]	; 0x44
 800574c:	e00f      	b.n	800576e <xvprintf+0x1c2>
 800574e:	2308      	movs	r3, #8
 8005750:	647b      	str	r3, [r7, #68]	; 0x44
 8005752:	e00c      	b.n	800576e <xvprintf+0x1c2>
 8005754:	230a      	movs	r3, #10
 8005756:	647b      	str	r3, [r7, #68]	; 0x44
 8005758:	e009      	b.n	800576e <xvprintf+0x1c2>
 800575a:	2310      	movs	r3, #16
 800575c:	647b      	str	r3, [r7, #68]	; 0x44
 800575e:	e006      	b.n	800576e <xvprintf+0x1c2>
 8005760:	2333      	movs	r3, #51	; 0x33
 8005762:	18fb      	adds	r3, r7, r3
 8005764:	781b      	ldrb	r3, [r3, #0]
 8005766:	0018      	movs	r0, r3
 8005768:	f7ff fee0 	bl	800552c <xputc>
 800576c:	e09e      	b.n	80058ac <xvprintf+0x300>
 800576e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8005770:	2204      	movs	r2, #4
 8005772:	4013      	ands	r3, r2
 8005774:	d005      	beq.n	8005782 <xvprintf+0x1d6>
 8005776:	683b      	ldr	r3, [r7, #0]
 8005778:	1d1a      	adds	r2, r3, #4
 800577a:	603a      	str	r2, [r7, #0]
 800577c:	681b      	ldr	r3, [r3, #0]
 800577e:	62fb      	str	r3, [r7, #44]	; 0x2c
 8005780:	e00e      	b.n	80057a0 <xvprintf+0x1f4>
 8005782:	2332      	movs	r3, #50	; 0x32
 8005784:	18fb      	adds	r3, r7, r3
 8005786:	781b      	ldrb	r3, [r3, #0]
 8005788:	2b44      	cmp	r3, #68	; 0x44
 800578a:	d104      	bne.n	8005796 <xvprintf+0x1ea>
 800578c:	683b      	ldr	r3, [r7, #0]
 800578e:	1d1a      	adds	r2, r3, #4
 8005790:	603a      	str	r2, [r7, #0]
 8005792:	681b      	ldr	r3, [r3, #0]
 8005794:	e003      	b.n	800579e <xvprintf+0x1f2>
 8005796:	683b      	ldr	r3, [r7, #0]
 8005798:	1d1a      	adds	r2, r3, #4
 800579a:	603a      	str	r2, [r7, #0]
 800579c:	681b      	ldr	r3, [r3, #0]
 800579e:	62fb      	str	r3, [r7, #44]	; 0x2c
 80057a0:	2332      	movs	r3, #50	; 0x32
 80057a2:	18fb      	adds	r3, r7, r3
 80057a4:	781b      	ldrb	r3, [r3, #0]
 80057a6:	2b44      	cmp	r3, #68	; 0x44
 80057a8:	d109      	bne.n	80057be <xvprintf+0x212>
 80057aa:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80057ac:	2b00      	cmp	r3, #0
 80057ae:	da06      	bge.n	80057be <xvprintf+0x212>
 80057b0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80057b2:	425b      	negs	r3, r3
 80057b4:	62fb      	str	r3, [r7, #44]	; 0x2c
 80057b6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80057b8:	2210      	movs	r2, #16
 80057ba:	4313      	orrs	r3, r2
 80057bc:	637b      	str	r3, [r7, #52]	; 0x34
 80057be:	2300      	movs	r3, #0
 80057c0:	643b      	str	r3, [r7, #64]	; 0x40
 80057c2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80057c4:	62bb      	str	r3, [r7, #40]	; 0x28
 80057c6:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80057c8:	6c79      	ldr	r1, [r7, #68]	; 0x44
 80057ca:	0018      	movs	r0, r3
 80057cc:	f7fa fd22 	bl	8000214 <__aeabi_uidivmod>
 80057d0:	000b      	movs	r3, r1
 80057d2:	001a      	movs	r2, r3
 80057d4:	2432      	movs	r4, #50	; 0x32
 80057d6:	193b      	adds	r3, r7, r4
 80057d8:	701a      	strb	r2, [r3, #0]
 80057da:	6c79      	ldr	r1, [r7, #68]	; 0x44
 80057dc:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 80057de:	f7fa fc93 	bl	8000108 <__udivsi3>
 80057e2:	0003      	movs	r3, r0
 80057e4:	62bb      	str	r3, [r7, #40]	; 0x28
 80057e6:	193b      	adds	r3, r7, r4
 80057e8:	781b      	ldrb	r3, [r3, #0]
 80057ea:	2b09      	cmp	r3, #9
 80057ec:	d90d      	bls.n	800580a <xvprintf+0x25e>
 80057ee:	2333      	movs	r3, #51	; 0x33
 80057f0:	18fb      	adds	r3, r7, r3
 80057f2:	781b      	ldrb	r3, [r3, #0]
 80057f4:	2b78      	cmp	r3, #120	; 0x78
 80057f6:	d101      	bne.n	80057fc <xvprintf+0x250>
 80057f8:	2327      	movs	r3, #39	; 0x27
 80057fa:	e000      	b.n	80057fe <xvprintf+0x252>
 80057fc:	2307      	movs	r3, #7
 80057fe:	2132      	movs	r1, #50	; 0x32
 8005800:	187a      	adds	r2, r7, r1
 8005802:	1879      	adds	r1, r7, r1
 8005804:	7809      	ldrb	r1, [r1, #0]
 8005806:	185b      	adds	r3, r3, r1
 8005808:	7013      	strb	r3, [r2, #0]
 800580a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800580c:	1c5a      	adds	r2, r3, #1
 800580e:	643a      	str	r2, [r7, #64]	; 0x40
 8005810:	2232      	movs	r2, #50	; 0x32
 8005812:	18ba      	adds	r2, r7, r2
 8005814:	7812      	ldrb	r2, [r2, #0]
 8005816:	3230      	adds	r2, #48	; 0x30
 8005818:	b2d1      	uxtb	r1, r2
 800581a:	220c      	movs	r2, #12
 800581c:	18ba      	adds	r2, r7, r2
 800581e:	54d1      	strb	r1, [r2, r3]
 8005820:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8005822:	2b00      	cmp	r3, #0
 8005824:	d002      	beq.n	800582c <xvprintf+0x280>
 8005826:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8005828:	2b17      	cmp	r3, #23
 800582a:	d9cc      	bls.n	80057c6 <xvprintf+0x21a>
 800582c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800582e:	2210      	movs	r2, #16
 8005830:	4013      	ands	r3, r2
 8005832:	d006      	beq.n	8005842 <xvprintf+0x296>
 8005834:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8005836:	1c5a      	adds	r2, r3, #1
 8005838:	643a      	str	r2, [r7, #64]	; 0x40
 800583a:	220c      	movs	r2, #12
 800583c:	18ba      	adds	r2, r7, r2
 800583e:	212d      	movs	r1, #45	; 0x2d
 8005840:	54d1      	strb	r1, [r2, r3]
 8005842:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8005844:	63fb      	str	r3, [r7, #60]	; 0x3c
 8005846:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8005848:	2201      	movs	r2, #1
 800584a:	4013      	ands	r3, r2
 800584c:	d001      	beq.n	8005852 <xvprintf+0x2a6>
 800584e:	2230      	movs	r2, #48	; 0x30
 8005850:	e000      	b.n	8005854 <xvprintf+0x2a8>
 8005852:	2220      	movs	r2, #32
 8005854:	2332      	movs	r3, #50	; 0x32
 8005856:	18fb      	adds	r3, r7, r3
 8005858:	701a      	strb	r2, [r3, #0]
 800585a:	e005      	b.n	8005868 <xvprintf+0x2bc>
 800585c:	2332      	movs	r3, #50	; 0x32
 800585e:	18fb      	adds	r3, r7, r3
 8005860:	781b      	ldrb	r3, [r3, #0]
 8005862:	0018      	movs	r0, r3
 8005864:	f7ff fe62 	bl	800552c <xputc>
 8005868:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800586a:	2202      	movs	r2, #2
 800586c:	4013      	ands	r3, r2
 800586e:	d105      	bne.n	800587c <xvprintf+0x2d0>
 8005870:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8005872:	1c5a      	adds	r2, r3, #1
 8005874:	63fa      	str	r2, [r7, #60]	; 0x3c
 8005876:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8005878:	429a      	cmp	r2, r3
 800587a:	d8ef      	bhi.n	800585c <xvprintf+0x2b0>
 800587c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800587e:	3b01      	subs	r3, #1
 8005880:	643b      	str	r3, [r7, #64]	; 0x40
 8005882:	230c      	movs	r3, #12
 8005884:	18fa      	adds	r2, r7, r3
 8005886:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8005888:	18d3      	adds	r3, r2, r3
 800588a:	781b      	ldrb	r3, [r3, #0]
 800588c:	0018      	movs	r0, r3
 800588e:	f7ff fe4d 	bl	800552c <xputc>
 8005892:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8005894:	2b00      	cmp	r3, #0
 8005896:	d1f1      	bne.n	800587c <xvprintf+0x2d0>
 8005898:	e002      	b.n	80058a0 <xvprintf+0x2f4>
 800589a:	2020      	movs	r0, #32
 800589c:	f7ff fe46 	bl	800552c <xputc>
 80058a0:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80058a2:	1c5a      	adds	r2, r3, #1
 80058a4:	63fa      	str	r2, [r7, #60]	; 0x3c
 80058a6:	6bba      	ldr	r2, [r7, #56]	; 0x38
 80058a8:	429a      	cmp	r2, r3
 80058aa:	d8f6      	bhi.n	800589a <xvprintf+0x2ee>
 80058ac:	e683      	b.n	80055b6 <xvprintf+0xa>
 80058ae:	46c0      	nop			; (mov r8, r8)
 80058b0:	e000      	b.n	80058b4 <xvprintf+0x308>
 80058b2:	46c0      	nop			; (mov r8, r8)
 80058b4:	46c0      	nop			; (mov r8, r8)
 80058b6:	46bd      	mov	sp, r7
 80058b8:	b013      	add	sp, #76	; 0x4c
 80058ba:	bd90      	pop	{r4, r7, pc}
 80058bc:	08009cbc 	.word	0x08009cbc

080058c0 <xprintf>:
 80058c0:	b40f      	push	{r0, r1, r2, r3}
 80058c2:	b580      	push	{r7, lr}
 80058c4:	b082      	sub	sp, #8
 80058c6:	af00      	add	r7, sp, #0
 80058c8:	2314      	movs	r3, #20
 80058ca:	18fb      	adds	r3, r7, r3
 80058cc:	607b      	str	r3, [r7, #4]
 80058ce:	687a      	ldr	r2, [r7, #4]
 80058d0:	693b      	ldr	r3, [r7, #16]
 80058d2:	0011      	movs	r1, r2
 80058d4:	0018      	movs	r0, r3
 80058d6:	f7ff fe69 	bl	80055ac <xvprintf>
 80058da:	46c0      	nop			; (mov r8, r8)
 80058dc:	46bd      	mov	sp, r7
 80058de:	b002      	add	sp, #8
 80058e0:	bc80      	pop	{r7}
 80058e2:	bc08      	pop	{r3}
 80058e4:	b004      	add	sp, #16
 80058e6:	4718      	bx	r3

080058e8 <MadgwickAHRSupdate>:
 80058e8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80058ea:	b0b9      	sub	sp, #228	; 0xe4
 80058ec:	af06      	add	r7, sp, #24
 80058ee:	62f8      	str	r0, [r7, #44]	; 0x2c
 80058f0:	62b9      	str	r1, [r7, #40]	; 0x28
 80058f2:	627a      	str	r2, [r7, #36]	; 0x24
 80058f4:	623b      	str	r3, [r7, #32]
 80058f6:	2100      	movs	r1, #0
 80058f8:	23cc      	movs	r3, #204	; 0xcc
 80058fa:	2220      	movs	r2, #32
 80058fc:	4694      	mov	ip, r2
 80058fe:	44bc      	add	ip, r7
 8005900:	4463      	add	r3, ip
 8005902:	6818      	ldr	r0, [r3, #0]
 8005904:	f7fa fc98 	bl	8000238 <__aeabi_fcmpeq>
 8005908:	1e03      	subs	r3, r0, #0
 800590a:	d041      	beq.n	8005990 <MadgwickAHRSupdate+0xa8>
 800590c:	2100      	movs	r1, #0
 800590e:	23d0      	movs	r3, #208	; 0xd0
 8005910:	2220      	movs	r2, #32
 8005912:	4694      	mov	ip, r2
 8005914:	44bc      	add	ip, r7
 8005916:	4463      	add	r3, ip
 8005918:	6818      	ldr	r0, [r3, #0]
 800591a:	f7fa fc8d 	bl	8000238 <__aeabi_fcmpeq>
 800591e:	1e03      	subs	r3, r0, #0
 8005920:	d036      	beq.n	8005990 <MadgwickAHRSupdate+0xa8>
 8005922:	2100      	movs	r1, #0
 8005924:	23d4      	movs	r3, #212	; 0xd4
 8005926:	2220      	movs	r2, #32
 8005928:	4694      	mov	ip, r2
 800592a:	44bc      	add	ip, r7
 800592c:	4463      	add	r3, ip
 800592e:	6818      	ldr	r0, [r3, #0]
 8005930:	f7fa fc82 	bl	8000238 <__aeabi_fcmpeq>
 8005934:	1e03      	subs	r3, r0, #0
 8005936:	d02b      	beq.n	8005990 <MadgwickAHRSupdate+0xa8>
 8005938:	6a3c      	ldr	r4, [r7, #32]
 800593a:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 800593c:	6ab9      	ldr	r1, [r7, #40]	; 0x28
 800593e:	6af8      	ldr	r0, [r7, #44]	; 0x2c
 8005940:	23dc      	movs	r3, #220	; 0xdc
 8005942:	2520      	movs	r5, #32
 8005944:	46ac      	mov	ip, r5
 8005946:	44bc      	add	ip, r7
 8005948:	4463      	add	r3, ip
 800594a:	681b      	ldr	r3, [r3, #0]
 800594c:	9304      	str	r3, [sp, #16]
 800594e:	23d8      	movs	r3, #216	; 0xd8
 8005950:	2520      	movs	r5, #32
 8005952:	46ac      	mov	ip, r5
 8005954:	44bc      	add	ip, r7
 8005956:	4463      	add	r3, ip
 8005958:	681b      	ldr	r3, [r3, #0]
 800595a:	9303      	str	r3, [sp, #12]
 800595c:	23c8      	movs	r3, #200	; 0xc8
 800595e:	2520      	movs	r5, #32
 8005960:	46ac      	mov	ip, r5
 8005962:	44bc      	add	ip, r7
 8005964:	4463      	add	r3, ip
 8005966:	681b      	ldr	r3, [r3, #0]
 8005968:	9302      	str	r3, [sp, #8]
 800596a:	23c4      	movs	r3, #196	; 0xc4
 800596c:	2520      	movs	r5, #32
 800596e:	46ac      	mov	ip, r5
 8005970:	44bc      	add	ip, r7
 8005972:	4463      	add	r3, ip
 8005974:	681b      	ldr	r3, [r3, #0]
 8005976:	9301      	str	r3, [sp, #4]
 8005978:	23c0      	movs	r3, #192	; 0xc0
 800597a:	2520      	movs	r5, #32
 800597c:	46ac      	mov	ip, r5
 800597e:	44bc      	add	ip, r7
 8005980:	4463      	add	r3, ip
 8005982:	681b      	ldr	r3, [r3, #0]
 8005984:	9300      	str	r3, [sp, #0]
 8005986:	1c23      	adds	r3, r4, #0
 8005988:	f001 fcda 	bl	8007340 <MadgwickAHRSupdateIMU>
 800598c:	f001 fccd 	bl	800732a <MadgwickAHRSupdate+0x1a42>
 8005990:	23d8      	movs	r3, #216	; 0xd8
 8005992:	2220      	movs	r2, #32
 8005994:	4694      	mov	ip, r2
 8005996:	44bc      	add	ip, r7
 8005998:	4463      	add	r3, ip
 800599a:	6819      	ldr	r1, [r3, #0]
 800599c:	20fe      	movs	r0, #254	; 0xfe
 800599e:	0580      	lsls	r0, r0, #22
 80059a0:	f7fa fe12 	bl	80005c8 <__aeabi_fdiv>
 80059a4:	1c03      	adds	r3, r0, #0
 80059a6:	2294      	movs	r2, #148	; 0x94
 80059a8:	2120      	movs	r1, #32
 80059aa:	468c      	mov	ip, r1
 80059ac:	44bc      	add	ip, r7
 80059ae:	4462      	add	r2, ip
 80059b0:	6013      	str	r3, [r2, #0]
 80059b2:	4bfb      	ldr	r3, [pc, #1004]	; (8005da0 <MadgwickAHRSupdate+0x4b8>)
 80059b4:	681b      	ldr	r3, [r3, #0]
 80059b6:	2280      	movs	r2, #128	; 0x80
 80059b8:	0612      	lsls	r2, r2, #24
 80059ba:	4053      	eors	r3, r2
 80059bc:	6ab9      	ldr	r1, [r7, #40]	; 0x28
 80059be:	1c18      	adds	r0, r3, #0
 80059c0:	f7fa ffda 	bl	8000978 <__aeabi_fmul>
 80059c4:	1c03      	adds	r3, r0, #0
 80059c6:	1c1c      	adds	r4, r3, #0
 80059c8:	4bf6      	ldr	r3, [pc, #984]	; (8005da4 <MadgwickAHRSupdate+0x4bc>)
 80059ca:	681b      	ldr	r3, [r3, #0]
 80059cc:	6a79      	ldr	r1, [r7, #36]	; 0x24
 80059ce:	1c18      	adds	r0, r3, #0
 80059d0:	f7fa ffd2 	bl	8000978 <__aeabi_fmul>
 80059d4:	1c03      	adds	r3, r0, #0
 80059d6:	1c19      	adds	r1, r3, #0
 80059d8:	1c20      	adds	r0, r4, #0
 80059da:	f7fb f8ff 	bl	8000bdc <__aeabi_fsub>
 80059de:	1c03      	adds	r3, r0, #0
 80059e0:	1c1c      	adds	r4, r3, #0
 80059e2:	4bf1      	ldr	r3, [pc, #964]	; (8005da8 <MadgwickAHRSupdate+0x4c0>)
 80059e4:	681b      	ldr	r3, [r3, #0]
 80059e6:	6a39      	ldr	r1, [r7, #32]
 80059e8:	1c18      	adds	r0, r3, #0
 80059ea:	f7fa ffc5 	bl	8000978 <__aeabi_fmul>
 80059ee:	1c03      	adds	r3, r0, #0
 80059f0:	1c19      	adds	r1, r3, #0
 80059f2:	1c20      	adds	r0, r4, #0
 80059f4:	f7fb f8f2 	bl	8000bdc <__aeabi_fsub>
 80059f8:	1c03      	adds	r3, r0, #0
 80059fa:	21fc      	movs	r1, #252	; 0xfc
 80059fc:	0589      	lsls	r1, r1, #22
 80059fe:	1c18      	adds	r0, r3, #0
 8005a00:	f7fa ffba 	bl	8000978 <__aeabi_fmul>
 8005a04:	1c03      	adds	r3, r0, #0
 8005a06:	22a4      	movs	r2, #164	; 0xa4
 8005a08:	2120      	movs	r1, #32
 8005a0a:	468c      	mov	ip, r1
 8005a0c:	44bc      	add	ip, r7
 8005a0e:	4462      	add	r2, ip
 8005a10:	6013      	str	r3, [r2, #0]
 8005a12:	4be6      	ldr	r3, [pc, #920]	; (8005dac <MadgwickAHRSupdate+0x4c4>)
 8005a14:	681b      	ldr	r3, [r3, #0]
 8005a16:	6ab9      	ldr	r1, [r7, #40]	; 0x28
 8005a18:	1c18      	adds	r0, r3, #0
 8005a1a:	f7fa ffad 	bl	8000978 <__aeabi_fmul>
 8005a1e:	1c03      	adds	r3, r0, #0
 8005a20:	1c1c      	adds	r4, r3, #0
 8005a22:	4be0      	ldr	r3, [pc, #896]	; (8005da4 <MadgwickAHRSupdate+0x4bc>)
 8005a24:	681b      	ldr	r3, [r3, #0]
 8005a26:	6a39      	ldr	r1, [r7, #32]
 8005a28:	1c18      	adds	r0, r3, #0
 8005a2a:	f7fa ffa5 	bl	8000978 <__aeabi_fmul>
 8005a2e:	1c03      	adds	r3, r0, #0
 8005a30:	1c19      	adds	r1, r3, #0
 8005a32:	1c20      	adds	r0, r4, #0
 8005a34:	f7fa fc2e 	bl	8000294 <__aeabi_fadd>
 8005a38:	1c03      	adds	r3, r0, #0
 8005a3a:	1c1c      	adds	r4, r3, #0
 8005a3c:	4bda      	ldr	r3, [pc, #872]	; (8005da8 <MadgwickAHRSupdate+0x4c0>)
 8005a3e:	681b      	ldr	r3, [r3, #0]
 8005a40:	6a79      	ldr	r1, [r7, #36]	; 0x24
 8005a42:	1c18      	adds	r0, r3, #0
 8005a44:	f7fa ff98 	bl	8000978 <__aeabi_fmul>
 8005a48:	1c03      	adds	r3, r0, #0
 8005a4a:	1c19      	adds	r1, r3, #0
 8005a4c:	1c20      	adds	r0, r4, #0
 8005a4e:	f7fb f8c5 	bl	8000bdc <__aeabi_fsub>
 8005a52:	1c03      	adds	r3, r0, #0
 8005a54:	21fc      	movs	r1, #252	; 0xfc
 8005a56:	0589      	lsls	r1, r1, #22
 8005a58:	1c18      	adds	r0, r3, #0
 8005a5a:	f7fa ff8d 	bl	8000978 <__aeabi_fmul>
 8005a5e:	1c03      	adds	r3, r0, #0
 8005a60:	22a0      	movs	r2, #160	; 0xa0
 8005a62:	2120      	movs	r1, #32
 8005a64:	468c      	mov	ip, r1
 8005a66:	44bc      	add	ip, r7
 8005a68:	4462      	add	r2, ip
 8005a6a:	6013      	str	r3, [r2, #0]
 8005a6c:	4bcf      	ldr	r3, [pc, #828]	; (8005dac <MadgwickAHRSupdate+0x4c4>)
 8005a6e:	681b      	ldr	r3, [r3, #0]
 8005a70:	6a79      	ldr	r1, [r7, #36]	; 0x24
 8005a72:	1c18      	adds	r0, r3, #0
 8005a74:	f7fa ff80 	bl	8000978 <__aeabi_fmul>
 8005a78:	1c03      	adds	r3, r0, #0
 8005a7a:	1c1c      	adds	r4, r3, #0
 8005a7c:	4bc8      	ldr	r3, [pc, #800]	; (8005da0 <MadgwickAHRSupdate+0x4b8>)
 8005a7e:	681b      	ldr	r3, [r3, #0]
 8005a80:	6a39      	ldr	r1, [r7, #32]
 8005a82:	1c18      	adds	r0, r3, #0
 8005a84:	f7fa ff78 	bl	8000978 <__aeabi_fmul>
 8005a88:	1c03      	adds	r3, r0, #0
 8005a8a:	1c19      	adds	r1, r3, #0
 8005a8c:	1c20      	adds	r0, r4, #0
 8005a8e:	f7fb f8a5 	bl	8000bdc <__aeabi_fsub>
 8005a92:	1c03      	adds	r3, r0, #0
 8005a94:	1c1c      	adds	r4, r3, #0
 8005a96:	4bc4      	ldr	r3, [pc, #784]	; (8005da8 <MadgwickAHRSupdate+0x4c0>)
 8005a98:	681b      	ldr	r3, [r3, #0]
 8005a9a:	6ab9      	ldr	r1, [r7, #40]	; 0x28
 8005a9c:	1c18      	adds	r0, r3, #0
 8005a9e:	f7fa ff6b 	bl	8000978 <__aeabi_fmul>
 8005aa2:	1c03      	adds	r3, r0, #0
 8005aa4:	1c19      	adds	r1, r3, #0
 8005aa6:	1c20      	adds	r0, r4, #0
 8005aa8:	f7fa fbf4 	bl	8000294 <__aeabi_fadd>
 8005aac:	1c03      	adds	r3, r0, #0
 8005aae:	21fc      	movs	r1, #252	; 0xfc
 8005ab0:	0589      	lsls	r1, r1, #22
 8005ab2:	1c18      	adds	r0, r3, #0
 8005ab4:	f7fa ff60 	bl	8000978 <__aeabi_fmul>
 8005ab8:	1c03      	adds	r3, r0, #0
 8005aba:	229c      	movs	r2, #156	; 0x9c
 8005abc:	2120      	movs	r1, #32
 8005abe:	468c      	mov	ip, r1
 8005ac0:	44bc      	add	ip, r7
 8005ac2:	4462      	add	r2, ip
 8005ac4:	6013      	str	r3, [r2, #0]
 8005ac6:	4bb9      	ldr	r3, [pc, #740]	; (8005dac <MadgwickAHRSupdate+0x4c4>)
 8005ac8:	681b      	ldr	r3, [r3, #0]
 8005aca:	6a39      	ldr	r1, [r7, #32]
 8005acc:	1c18      	adds	r0, r3, #0
 8005ace:	f7fa ff53 	bl	8000978 <__aeabi_fmul>
 8005ad2:	1c03      	adds	r3, r0, #0
 8005ad4:	1c1c      	adds	r4, r3, #0
 8005ad6:	4bb2      	ldr	r3, [pc, #712]	; (8005da0 <MadgwickAHRSupdate+0x4b8>)
 8005ad8:	681b      	ldr	r3, [r3, #0]
 8005ada:	6a79      	ldr	r1, [r7, #36]	; 0x24
 8005adc:	1c18      	adds	r0, r3, #0
 8005ade:	f7fa ff4b 	bl	8000978 <__aeabi_fmul>
 8005ae2:	1c03      	adds	r3, r0, #0
 8005ae4:	1c19      	adds	r1, r3, #0
 8005ae6:	1c20      	adds	r0, r4, #0
 8005ae8:	f7fa fbd4 	bl	8000294 <__aeabi_fadd>
 8005aec:	1c03      	adds	r3, r0, #0
 8005aee:	1c1c      	adds	r4, r3, #0
 8005af0:	4bac      	ldr	r3, [pc, #688]	; (8005da4 <MadgwickAHRSupdate+0x4bc>)
 8005af2:	681b      	ldr	r3, [r3, #0]
 8005af4:	6ab9      	ldr	r1, [r7, #40]	; 0x28
 8005af6:	1c18      	adds	r0, r3, #0
 8005af8:	f7fa ff3e 	bl	8000978 <__aeabi_fmul>
 8005afc:	1c03      	adds	r3, r0, #0
 8005afe:	1c19      	adds	r1, r3, #0
 8005b00:	1c20      	adds	r0, r4, #0
 8005b02:	f7fb f86b 	bl	8000bdc <__aeabi_fsub>
 8005b06:	1c03      	adds	r3, r0, #0
 8005b08:	21fc      	movs	r1, #252	; 0xfc
 8005b0a:	0589      	lsls	r1, r1, #22
 8005b0c:	1c18      	adds	r0, r3, #0
 8005b0e:	f7fa ff33 	bl	8000978 <__aeabi_fmul>
 8005b12:	1c03      	adds	r3, r0, #0
 8005b14:	2298      	movs	r2, #152	; 0x98
 8005b16:	2120      	movs	r1, #32
 8005b18:	468c      	mov	ip, r1
 8005b1a:	44bc      	add	ip, r7
 8005b1c:	4462      	add	r2, ip
 8005b1e:	6013      	str	r3, [r2, #0]
 8005b20:	2100      	movs	r1, #0
 8005b22:	23c0      	movs	r3, #192	; 0xc0
 8005b24:	2220      	movs	r2, #32
 8005b26:	4694      	mov	ip, r2
 8005b28:	44bc      	add	ip, r7
 8005b2a:	4463      	add	r3, ip
 8005b2c:	6818      	ldr	r0, [r3, #0]
 8005b2e:	f7fa fb83 	bl	8000238 <__aeabi_fcmpeq>
 8005b32:	1e03      	subs	r3, r0, #0
 8005b34:	d017      	beq.n	8005b66 <MadgwickAHRSupdate+0x27e>
 8005b36:	2100      	movs	r1, #0
 8005b38:	23c4      	movs	r3, #196	; 0xc4
 8005b3a:	2220      	movs	r2, #32
 8005b3c:	4694      	mov	ip, r2
 8005b3e:	44bc      	add	ip, r7
 8005b40:	4463      	add	r3, ip
 8005b42:	6818      	ldr	r0, [r3, #0]
 8005b44:	f7fa fb78 	bl	8000238 <__aeabi_fcmpeq>
 8005b48:	1e03      	subs	r3, r0, #0
 8005b4a:	d00c      	beq.n	8005b66 <MadgwickAHRSupdate+0x27e>
 8005b4c:	2100      	movs	r1, #0
 8005b4e:	23c8      	movs	r3, #200	; 0xc8
 8005b50:	2220      	movs	r2, #32
 8005b52:	4694      	mov	ip, r2
 8005b54:	44bc      	add	ip, r7
 8005b56:	4463      	add	r3, ip
 8005b58:	6818      	ldr	r0, [r3, #0]
 8005b5a:	f7fa fb6d 	bl	8000238 <__aeabi_fcmpeq>
 8005b5e:	1e03      	subs	r3, r0, #0
 8005b60:	d001      	beq.n	8005b66 <MadgwickAHRSupdate+0x27e>
 8005b62:	f001 fadf 	bl	8007124 <MadgwickAHRSupdate+0x183c>
 8005b66:	25c0      	movs	r5, #192	; 0xc0
 8005b68:	2020      	movs	r0, #32
 8005b6a:	183b      	adds	r3, r7, r0
 8005b6c:	195b      	adds	r3, r3, r5
 8005b6e:	6819      	ldr	r1, [r3, #0]
 8005b70:	183b      	adds	r3, r7, r0
 8005b72:	195b      	adds	r3, r3, r5
 8005b74:	6818      	ldr	r0, [r3, #0]
 8005b76:	f7fa feff 	bl	8000978 <__aeabi_fmul>
 8005b7a:	1c03      	adds	r3, r0, #0
 8005b7c:	1c1c      	adds	r4, r3, #0
 8005b7e:	26c4      	movs	r6, #196	; 0xc4
 8005b80:	2020      	movs	r0, #32
 8005b82:	183b      	adds	r3, r7, r0
 8005b84:	199b      	adds	r3, r3, r6
 8005b86:	6819      	ldr	r1, [r3, #0]
 8005b88:	183b      	adds	r3, r7, r0
 8005b8a:	199b      	adds	r3, r3, r6
 8005b8c:	6818      	ldr	r0, [r3, #0]
 8005b8e:	f7fa fef3 	bl	8000978 <__aeabi_fmul>
 8005b92:	1c03      	adds	r3, r0, #0
 8005b94:	1c19      	adds	r1, r3, #0
 8005b96:	1c20      	adds	r0, r4, #0
 8005b98:	f7fa fb7c 	bl	8000294 <__aeabi_fadd>
 8005b9c:	1c03      	adds	r3, r0, #0
 8005b9e:	1c1c      	adds	r4, r3, #0
 8005ba0:	23c8      	movs	r3, #200	; 0xc8
 8005ba2:	2020      	movs	r0, #32
 8005ba4:	183a      	adds	r2, r7, r0
 8005ba6:	18d2      	adds	r2, r2, r3
 8005ba8:	6811      	ldr	r1, [r2, #0]
 8005baa:	0002      	movs	r2, r0
 8005bac:	18ba      	adds	r2, r7, r2
 8005bae:	18d2      	adds	r2, r2, r3
 8005bb0:	6810      	ldr	r0, [r2, #0]
 8005bb2:	f7fa fee1 	bl	8000978 <__aeabi_fmul>
 8005bb6:	1c03      	adds	r3, r0, #0
 8005bb8:	1c19      	adds	r1, r3, #0
 8005bba:	1c20      	adds	r0, r4, #0
 8005bbc:	f7fa fb6a 	bl	8000294 <__aeabi_fadd>
 8005bc0:	1c03      	adds	r3, r0, #0
 8005bc2:	1c18      	adds	r0, r3, #0
 8005bc4:	f001 ffe8 	bl	8007b98 <invSqrt>
 8005bc8:	1c03      	adds	r3, r0, #0
 8005bca:	2490      	movs	r4, #144	; 0x90
 8005bcc:	2120      	movs	r1, #32
 8005bce:	187a      	adds	r2, r7, r1
 8005bd0:	1912      	adds	r2, r2, r4
 8005bd2:	6013      	str	r3, [r2, #0]
 8005bd4:	000b      	movs	r3, r1
 8005bd6:	187a      	adds	r2, r7, r1
 8005bd8:	1912      	adds	r2, r2, r4
 8005bda:	6811      	ldr	r1, [r2, #0]
 8005bdc:	18fb      	adds	r3, r7, r3
 8005bde:	195a      	adds	r2, r3, r5
 8005be0:	6810      	ldr	r0, [r2, #0]
 8005be2:	f7fa fec9 	bl	8000978 <__aeabi_fmul>
 8005be6:	1c03      	adds	r3, r0, #0
 8005be8:	2120      	movs	r1, #32
 8005bea:	187a      	adds	r2, r7, r1
 8005bec:	1952      	adds	r2, r2, r5
 8005bee:	6013      	str	r3, [r2, #0]
 8005bf0:	000d      	movs	r5, r1
 8005bf2:	197b      	adds	r3, r7, r5
 8005bf4:	191a      	adds	r2, r3, r4
 8005bf6:	6811      	ldr	r1, [r2, #0]
 8005bf8:	197b      	adds	r3, r7, r5
 8005bfa:	199a      	adds	r2, r3, r6
 8005bfc:	6810      	ldr	r0, [r2, #0]
 8005bfe:	f7fa febb 	bl	8000978 <__aeabi_fmul>
 8005c02:	1c03      	adds	r3, r0, #0
 8005c04:	197a      	adds	r2, r7, r5
 8005c06:	1992      	adds	r2, r2, r6
 8005c08:	6013      	str	r3, [r2, #0]
 8005c0a:	0022      	movs	r2, r4
 8005c0c:	197b      	adds	r3, r7, r5
 8005c0e:	1898      	adds	r0, r3, r2
 8005c10:	6801      	ldr	r1, [r0, #0]
 8005c12:	23c8      	movs	r3, #200	; 0xc8
 8005c14:	001c      	movs	r4, r3
 8005c16:	2220      	movs	r2, #32
 8005c18:	4694      	mov	ip, r2
 8005c1a:	44bc      	add	ip, r7
 8005c1c:	4463      	add	r3, ip
 8005c1e:	6818      	ldr	r0, [r3, #0]
 8005c20:	f7fa feaa 	bl	8000978 <__aeabi_fmul>
 8005c24:	1c03      	adds	r3, r0, #0
 8005c26:	0020      	movs	r0, r4
 8005c28:	197a      	adds	r2, r7, r5
 8005c2a:	1811      	adds	r1, r2, r0
 8005c2c:	600b      	str	r3, [r1, #0]
 8005c2e:	24cc      	movs	r4, #204	; 0xcc
 8005c30:	197b      	adds	r3, r7, r5
 8005c32:	191b      	adds	r3, r3, r4
 8005c34:	6819      	ldr	r1, [r3, #0]
 8005c36:	002e      	movs	r6, r5
 8005c38:	197b      	adds	r3, r7, r5
 8005c3a:	191b      	adds	r3, r3, r4
 8005c3c:	6818      	ldr	r0, [r3, #0]
 8005c3e:	f7fa fe9b 	bl	8000978 <__aeabi_fmul>
 8005c42:	1c03      	adds	r3, r0, #0
 8005c44:	1c1c      	adds	r4, r3, #0
 8005c46:	25d0      	movs	r5, #208	; 0xd0
 8005c48:	0030      	movs	r0, r6
 8005c4a:	183b      	adds	r3, r7, r0
 8005c4c:	195b      	adds	r3, r3, r5
 8005c4e:	6819      	ldr	r1, [r3, #0]
 8005c50:	183b      	adds	r3, r7, r0
 8005c52:	195b      	adds	r3, r3, r5
 8005c54:	6818      	ldr	r0, [r3, #0]
 8005c56:	f7fa fe8f 	bl	8000978 <__aeabi_fmul>
 8005c5a:	1c03      	adds	r3, r0, #0
 8005c5c:	1c19      	adds	r1, r3, #0
 8005c5e:	1c20      	adds	r0, r4, #0
 8005c60:	f7fa fb18 	bl	8000294 <__aeabi_fadd>
 8005c64:	1c03      	adds	r3, r0, #0
 8005c66:	1c1c      	adds	r4, r3, #0
 8005c68:	26d4      	movs	r6, #212	; 0xd4
 8005c6a:	2020      	movs	r0, #32
 8005c6c:	183b      	adds	r3, r7, r0
 8005c6e:	199b      	adds	r3, r3, r6
 8005c70:	6819      	ldr	r1, [r3, #0]
 8005c72:	183b      	adds	r3, r7, r0
 8005c74:	199b      	adds	r3, r3, r6
 8005c76:	6818      	ldr	r0, [r3, #0]
 8005c78:	f7fa fe7e 	bl	8000978 <__aeabi_fmul>
 8005c7c:	1c03      	adds	r3, r0, #0
 8005c7e:	1c19      	adds	r1, r3, #0
 8005c80:	1c20      	adds	r0, r4, #0
 8005c82:	f7fa fb07 	bl	8000294 <__aeabi_fadd>
 8005c86:	1c03      	adds	r3, r0, #0
 8005c88:	1c18      	adds	r0, r3, #0
 8005c8a:	f001 ff85 	bl	8007b98 <invSqrt>
 8005c8e:	1c03      	adds	r3, r0, #0
 8005c90:	2290      	movs	r2, #144	; 0x90
 8005c92:	2020      	movs	r0, #32
 8005c94:	1839      	adds	r1, r7, r0
 8005c96:	1889      	adds	r1, r1, r2
 8005c98:	600b      	str	r3, [r1, #0]
 8005c9a:	183b      	adds	r3, r7, r0
 8005c9c:	189b      	adds	r3, r3, r2
 8005c9e:	6819      	ldr	r1, [r3, #0]
 8005ca0:	24cc      	movs	r4, #204	; 0xcc
 8005ca2:	183b      	adds	r3, r7, r0
 8005ca4:	191b      	adds	r3, r3, r4
 8005ca6:	6818      	ldr	r0, [r3, #0]
 8005ca8:	f7fa fe66 	bl	8000978 <__aeabi_fmul>
 8005cac:	1c03      	adds	r3, r0, #0
 8005cae:	2020      	movs	r0, #32
 8005cb0:	183a      	adds	r2, r7, r0
 8005cb2:	1911      	adds	r1, r2, r4
 8005cb4:	600b      	str	r3, [r1, #0]
 8005cb6:	2290      	movs	r2, #144	; 0x90
 8005cb8:	183b      	adds	r3, r7, r0
 8005cba:	189b      	adds	r3, r3, r2
 8005cbc:	6819      	ldr	r1, [r3, #0]
 8005cbe:	183b      	adds	r3, r7, r0
 8005cc0:	195b      	adds	r3, r3, r5
 8005cc2:	6818      	ldr	r0, [r3, #0]
 8005cc4:	f7fa fe58 	bl	8000978 <__aeabi_fmul>
 8005cc8:	1c03      	adds	r3, r0, #0
 8005cca:	2020      	movs	r0, #32
 8005ccc:	183a      	adds	r2, r7, r0
 8005cce:	1951      	adds	r1, r2, r5
 8005cd0:	600b      	str	r3, [r1, #0]
 8005cd2:	2290      	movs	r2, #144	; 0x90
 8005cd4:	183b      	adds	r3, r7, r0
 8005cd6:	189b      	adds	r3, r3, r2
 8005cd8:	6819      	ldr	r1, [r3, #0]
 8005cda:	0002      	movs	r2, r0
 8005cdc:	18bb      	adds	r3, r7, r2
 8005cde:	199b      	adds	r3, r3, r6
 8005ce0:	6818      	ldr	r0, [r3, #0]
 8005ce2:	f7fa fe49 	bl	8000978 <__aeabi_fmul>
 8005ce6:	1c03      	adds	r3, r0, #0
 8005ce8:	2220      	movs	r2, #32
 8005cea:	18b9      	adds	r1, r7, r2
 8005cec:	1989      	adds	r1, r1, r6
 8005cee:	600b      	str	r3, [r1, #0]
 8005cf0:	4b2e      	ldr	r3, [pc, #184]	; (8005dac <MadgwickAHRSupdate+0x4c4>)
 8005cf2:	681b      	ldr	r3, [r3, #0]
 8005cf4:	1c19      	adds	r1, r3, #0
 8005cf6:	1c18      	adds	r0, r3, #0
 8005cf8:	f7fa facc 	bl	8000294 <__aeabi_fadd>
 8005cfc:	1c03      	adds	r3, r0, #0
 8005cfe:	1c19      	adds	r1, r3, #0
 8005d00:	2220      	movs	r2, #32
 8005d02:	18bb      	adds	r3, r7, r2
 8005d04:	191b      	adds	r3, r3, r4
 8005d06:	6818      	ldr	r0, [r3, #0]
 8005d08:	f7fa fe36 	bl	8000978 <__aeabi_fmul>
 8005d0c:	1c03      	adds	r3, r0, #0
 8005d0e:	218c      	movs	r1, #140	; 0x8c
 8005d10:	2220      	movs	r2, #32
 8005d12:	18b8      	adds	r0, r7, r2
 8005d14:	1840      	adds	r0, r0, r1
 8005d16:	6003      	str	r3, [r0, #0]
 8005d18:	4b24      	ldr	r3, [pc, #144]	; (8005dac <MadgwickAHRSupdate+0x4c4>)
 8005d1a:	681b      	ldr	r3, [r3, #0]
 8005d1c:	1c19      	adds	r1, r3, #0
 8005d1e:	1c18      	adds	r0, r3, #0
 8005d20:	f7fa fab8 	bl	8000294 <__aeabi_fadd>
 8005d24:	1c03      	adds	r3, r0, #0
 8005d26:	1c19      	adds	r1, r3, #0
 8005d28:	2220      	movs	r2, #32
 8005d2a:	18bb      	adds	r3, r7, r2
 8005d2c:	195b      	adds	r3, r3, r5
 8005d2e:	6818      	ldr	r0, [r3, #0]
 8005d30:	f7fa fe22 	bl	8000978 <__aeabi_fmul>
 8005d34:	1c03      	adds	r3, r0, #0
 8005d36:	2088      	movs	r0, #136	; 0x88
 8005d38:	2220      	movs	r2, #32
 8005d3a:	18b9      	adds	r1, r7, r2
 8005d3c:	1809      	adds	r1, r1, r0
 8005d3e:	600b      	str	r3, [r1, #0]
 8005d40:	4b1a      	ldr	r3, [pc, #104]	; (8005dac <MadgwickAHRSupdate+0x4c4>)
 8005d42:	681b      	ldr	r3, [r3, #0]
 8005d44:	1c19      	adds	r1, r3, #0
 8005d46:	1c18      	adds	r0, r3, #0
 8005d48:	f7fa faa4 	bl	8000294 <__aeabi_fadd>
 8005d4c:	1c03      	adds	r3, r0, #0
 8005d4e:	1c19      	adds	r1, r3, #0
 8005d50:	2220      	movs	r2, #32
 8005d52:	18bb      	adds	r3, r7, r2
 8005d54:	199b      	adds	r3, r3, r6
 8005d56:	6818      	ldr	r0, [r3, #0]
 8005d58:	f7fa fe0e 	bl	8000978 <__aeabi_fmul>
 8005d5c:	1c03      	adds	r3, r0, #0
 8005d5e:	2184      	movs	r1, #132	; 0x84
 8005d60:	2220      	movs	r2, #32
 8005d62:	18b8      	adds	r0, r7, r2
 8005d64:	1840      	adds	r0, r0, r1
 8005d66:	6003      	str	r3, [r0, #0]
 8005d68:	4b0d      	ldr	r3, [pc, #52]	; (8005da0 <MadgwickAHRSupdate+0x4b8>)
 8005d6a:	681b      	ldr	r3, [r3, #0]
 8005d6c:	1c19      	adds	r1, r3, #0
 8005d6e:	1c18      	adds	r0, r3, #0
 8005d70:	f7fa fa90 	bl	8000294 <__aeabi_fadd>
 8005d74:	1c03      	adds	r3, r0, #0
 8005d76:	1c19      	adds	r1, r3, #0
 8005d78:	2220      	movs	r2, #32
 8005d7a:	18bb      	adds	r3, r7, r2
 8005d7c:	191b      	adds	r3, r3, r4
 8005d7e:	6818      	ldr	r0, [r3, #0]
 8005d80:	f7fa fdfa 	bl	8000978 <__aeabi_fmul>
 8005d84:	1c03      	adds	r3, r0, #0
 8005d86:	2080      	movs	r0, #128	; 0x80
 8005d88:	2220      	movs	r2, #32
 8005d8a:	18b9      	adds	r1, r7, r2
 8005d8c:	180a      	adds	r2, r1, r0
 8005d8e:	6013      	str	r3, [r2, #0]
 8005d90:	4b06      	ldr	r3, [pc, #24]	; (8005dac <MadgwickAHRSupdate+0x4c4>)
 8005d92:	681b      	ldr	r3, [r3, #0]
 8005d94:	1c19      	adds	r1, r3, #0
 8005d96:	1c18      	adds	r0, r3, #0
 8005d98:	f7fa fa7c 	bl	8000294 <__aeabi_fadd>
 8005d9c:	e008      	b.n	8005db0 <MadgwickAHRSupdate+0x4c8>
 8005d9e:	46c0      	nop			; (mov r8, r8)
 8005da0:	200001d0 	.word	0x200001d0
 8005da4:	200001d4 	.word	0x200001d4
 8005da8:	200001d8 	.word	0x200001d8
 8005dac:	20000000 	.word	0x20000000
 8005db0:	1c03      	adds	r3, r0, #0
 8005db2:	219c      	movs	r1, #156	; 0x9c
 8005db4:	1878      	adds	r0, r7, r1
 8005db6:	6003      	str	r3, [r0, #0]
 8005db8:	4bfe      	ldr	r3, [pc, #1016]	; (80061b4 <MadgwickAHRSupdate+0x8cc>)
 8005dba:	681b      	ldr	r3, [r3, #0]
 8005dbc:	1c19      	adds	r1, r3, #0
 8005dbe:	1c18      	adds	r0, r3, #0
 8005dc0:	f7fa fa68 	bl	8000294 <__aeabi_fadd>
 8005dc4:	1c03      	adds	r3, r0, #0
 8005dc6:	2098      	movs	r0, #152	; 0x98
 8005dc8:	1839      	adds	r1, r7, r0
 8005dca:	600b      	str	r3, [r1, #0]
 8005dcc:	4bfa      	ldr	r3, [pc, #1000]	; (80061b8 <MadgwickAHRSupdate+0x8d0>)
 8005dce:	681b      	ldr	r3, [r3, #0]
 8005dd0:	1c19      	adds	r1, r3, #0
 8005dd2:	1c18      	adds	r0, r3, #0
 8005dd4:	f7fa fa5e 	bl	8000294 <__aeabi_fadd>
 8005dd8:	1c03      	adds	r3, r0, #0
 8005dda:	2094      	movs	r0, #148	; 0x94
 8005ddc:	1839      	adds	r1, r7, r0
 8005dde:	600b      	str	r3, [r1, #0]
 8005de0:	4bf6      	ldr	r3, [pc, #984]	; (80061bc <MadgwickAHRSupdate+0x8d4>)
 8005de2:	681b      	ldr	r3, [r3, #0]
 8005de4:	1c19      	adds	r1, r3, #0
 8005de6:	1c18      	adds	r0, r3, #0
 8005de8:	f7fa fa54 	bl	8000294 <__aeabi_fadd>
 8005dec:	1c03      	adds	r3, r0, #0
 8005dee:	2190      	movs	r1, #144	; 0x90
 8005df0:	1879      	adds	r1, r7, r1
 8005df2:	600b      	str	r3, [r1, #0]
 8005df4:	4bf2      	ldr	r3, [pc, #968]	; (80061c0 <MadgwickAHRSupdate+0x8d8>)
 8005df6:	681b      	ldr	r3, [r3, #0]
 8005df8:	1c19      	adds	r1, r3, #0
 8005dfa:	1c18      	adds	r0, r3, #0
 8005dfc:	f7fa fa4a 	bl	8000294 <__aeabi_fadd>
 8005e00:	1c03      	adds	r3, r0, #0
 8005e02:	1c1a      	adds	r2, r3, #0
 8005e04:	4bec      	ldr	r3, [pc, #944]	; (80061b8 <MadgwickAHRSupdate+0x8d0>)
 8005e06:	681b      	ldr	r3, [r3, #0]
 8005e08:	1c19      	adds	r1, r3, #0
 8005e0a:	1c10      	adds	r0, r2, #0
 8005e0c:	f7fa fdb4 	bl	8000978 <__aeabi_fmul>
 8005e10:	1c03      	adds	r3, r0, #0
 8005e12:	218c      	movs	r1, #140	; 0x8c
 8005e14:	1879      	adds	r1, r7, r1
 8005e16:	600b      	str	r3, [r1, #0]
 8005e18:	4be7      	ldr	r3, [pc, #924]	; (80061b8 <MadgwickAHRSupdate+0x8d0>)
 8005e1a:	681b      	ldr	r3, [r3, #0]
 8005e1c:	1c19      	adds	r1, r3, #0
 8005e1e:	1c18      	adds	r0, r3, #0
 8005e20:	f7fa fa38 	bl	8000294 <__aeabi_fadd>
 8005e24:	1c03      	adds	r3, r0, #0
 8005e26:	1c1a      	adds	r2, r3, #0
 8005e28:	4be4      	ldr	r3, [pc, #912]	; (80061bc <MadgwickAHRSupdate+0x8d4>)
 8005e2a:	681b      	ldr	r3, [r3, #0]
 8005e2c:	1c19      	adds	r1, r3, #0
 8005e2e:	1c10      	adds	r0, r2, #0
 8005e30:	f7fa fda2 	bl	8000978 <__aeabi_fmul>
 8005e34:	1c03      	adds	r3, r0, #0
 8005e36:	2188      	movs	r1, #136	; 0x88
 8005e38:	1879      	adds	r1, r7, r1
 8005e3a:	600b      	str	r3, [r1, #0]
 8005e3c:	4be0      	ldr	r3, [pc, #896]	; (80061c0 <MadgwickAHRSupdate+0x8d8>)
 8005e3e:	681a      	ldr	r2, [r3, #0]
 8005e40:	4bdf      	ldr	r3, [pc, #892]	; (80061c0 <MadgwickAHRSupdate+0x8d8>)
 8005e42:	681b      	ldr	r3, [r3, #0]
 8005e44:	1c19      	adds	r1, r3, #0
 8005e46:	1c10      	adds	r0, r2, #0
 8005e48:	f7fa fd96 	bl	8000978 <__aeabi_fmul>
 8005e4c:	1c03      	adds	r3, r0, #0
 8005e4e:	2184      	movs	r1, #132	; 0x84
 8005e50:	187a      	adds	r2, r7, r1
 8005e52:	6013      	str	r3, [r2, #0]
 8005e54:	4bda      	ldr	r3, [pc, #872]	; (80061c0 <MadgwickAHRSupdate+0x8d8>)
 8005e56:	681a      	ldr	r2, [r3, #0]
 8005e58:	4bd6      	ldr	r3, [pc, #856]	; (80061b4 <MadgwickAHRSupdate+0x8cc>)
 8005e5a:	681b      	ldr	r3, [r3, #0]
 8005e5c:	1c19      	adds	r1, r3, #0
 8005e5e:	1c10      	adds	r0, r2, #0
 8005e60:	f7fa fd8a 	bl	8000978 <__aeabi_fmul>
 8005e64:	1c03      	adds	r3, r0, #0
 8005e66:	2180      	movs	r1, #128	; 0x80
 8005e68:	1878      	adds	r0, r7, r1
 8005e6a:	6003      	str	r3, [r0, #0]
 8005e6c:	4bd4      	ldr	r3, [pc, #848]	; (80061c0 <MadgwickAHRSupdate+0x8d8>)
 8005e6e:	681a      	ldr	r2, [r3, #0]
 8005e70:	4bd1      	ldr	r3, [pc, #836]	; (80061b8 <MadgwickAHRSupdate+0x8d0>)
 8005e72:	681b      	ldr	r3, [r3, #0]
 8005e74:	1c19      	adds	r1, r3, #0
 8005e76:	1c10      	adds	r0, r2, #0
 8005e78:	f7fa fd7e 	bl	8000978 <__aeabi_fmul>
 8005e7c:	1c03      	adds	r3, r0, #0
 8005e7e:	67fb      	str	r3, [r7, #124]	; 0x7c
 8005e80:	4bcf      	ldr	r3, [pc, #828]	; (80061c0 <MadgwickAHRSupdate+0x8d8>)
 8005e82:	681a      	ldr	r2, [r3, #0]
 8005e84:	4bcd      	ldr	r3, [pc, #820]	; (80061bc <MadgwickAHRSupdate+0x8d4>)
 8005e86:	681b      	ldr	r3, [r3, #0]
 8005e88:	1c19      	adds	r1, r3, #0
 8005e8a:	1c10      	adds	r0, r2, #0
 8005e8c:	f7fa fd74 	bl	8000978 <__aeabi_fmul>
 8005e90:	1c03      	adds	r3, r0, #0
 8005e92:	67bb      	str	r3, [r7, #120]	; 0x78
 8005e94:	4bc7      	ldr	r3, [pc, #796]	; (80061b4 <MadgwickAHRSupdate+0x8cc>)
 8005e96:	681a      	ldr	r2, [r3, #0]
 8005e98:	4bc6      	ldr	r3, [pc, #792]	; (80061b4 <MadgwickAHRSupdate+0x8cc>)
 8005e9a:	681b      	ldr	r3, [r3, #0]
 8005e9c:	1c19      	adds	r1, r3, #0
 8005e9e:	1c10      	adds	r0, r2, #0
 8005ea0:	f7fa fd6a 	bl	8000978 <__aeabi_fmul>
 8005ea4:	1c03      	adds	r3, r0, #0
 8005ea6:	677b      	str	r3, [r7, #116]	; 0x74
 8005ea8:	4bc2      	ldr	r3, [pc, #776]	; (80061b4 <MadgwickAHRSupdate+0x8cc>)
 8005eaa:	681a      	ldr	r2, [r3, #0]
 8005eac:	4bc2      	ldr	r3, [pc, #776]	; (80061b8 <MadgwickAHRSupdate+0x8d0>)
 8005eae:	681b      	ldr	r3, [r3, #0]
 8005eb0:	1c19      	adds	r1, r3, #0
 8005eb2:	1c10      	adds	r0, r2, #0
 8005eb4:	f7fa fd60 	bl	8000978 <__aeabi_fmul>
 8005eb8:	1c03      	adds	r3, r0, #0
 8005eba:	673b      	str	r3, [r7, #112]	; 0x70
 8005ebc:	4bbd      	ldr	r3, [pc, #756]	; (80061b4 <MadgwickAHRSupdate+0x8cc>)
 8005ebe:	681a      	ldr	r2, [r3, #0]
 8005ec0:	4bbe      	ldr	r3, [pc, #760]	; (80061bc <MadgwickAHRSupdate+0x8d4>)
 8005ec2:	681b      	ldr	r3, [r3, #0]
 8005ec4:	1c19      	adds	r1, r3, #0
 8005ec6:	1c10      	adds	r0, r2, #0
 8005ec8:	f7fa fd56 	bl	8000978 <__aeabi_fmul>
 8005ecc:	1c03      	adds	r3, r0, #0
 8005ece:	66fb      	str	r3, [r7, #108]	; 0x6c
 8005ed0:	4bb9      	ldr	r3, [pc, #740]	; (80061b8 <MadgwickAHRSupdate+0x8d0>)
 8005ed2:	681a      	ldr	r2, [r3, #0]
 8005ed4:	4bb8      	ldr	r3, [pc, #736]	; (80061b8 <MadgwickAHRSupdate+0x8d0>)
 8005ed6:	681b      	ldr	r3, [r3, #0]
 8005ed8:	1c19      	adds	r1, r3, #0
 8005eda:	1c10      	adds	r0, r2, #0
 8005edc:	f7fa fd4c 	bl	8000978 <__aeabi_fmul>
 8005ee0:	1c03      	adds	r3, r0, #0
 8005ee2:	66bb      	str	r3, [r7, #104]	; 0x68
 8005ee4:	4bb4      	ldr	r3, [pc, #720]	; (80061b8 <MadgwickAHRSupdate+0x8d0>)
 8005ee6:	681a      	ldr	r2, [r3, #0]
 8005ee8:	4bb4      	ldr	r3, [pc, #720]	; (80061bc <MadgwickAHRSupdate+0x8d4>)
 8005eea:	681b      	ldr	r3, [r3, #0]
 8005eec:	1c19      	adds	r1, r3, #0
 8005eee:	1c10      	adds	r0, r2, #0
 8005ef0:	f7fa fd42 	bl	8000978 <__aeabi_fmul>
 8005ef4:	1c03      	adds	r3, r0, #0
 8005ef6:	667b      	str	r3, [r7, #100]	; 0x64
 8005ef8:	4bb0      	ldr	r3, [pc, #704]	; (80061bc <MadgwickAHRSupdate+0x8d4>)
 8005efa:	681a      	ldr	r2, [r3, #0]
 8005efc:	4baf      	ldr	r3, [pc, #700]	; (80061bc <MadgwickAHRSupdate+0x8d4>)
 8005efe:	681b      	ldr	r3, [r3, #0]
 8005f00:	1c19      	adds	r1, r3, #0
 8005f02:	1c10      	adds	r0, r2, #0
 8005f04:	f7fa fd38 	bl	8000978 <__aeabi_fmul>
 8005f08:	1c03      	adds	r3, r0, #0
 8005f0a:	663b      	str	r3, [r7, #96]	; 0x60
 8005f0c:	2184      	movs	r1, #132	; 0x84
 8005f0e:	187b      	adds	r3, r7, r1
 8005f10:	6819      	ldr	r1, [r3, #0]
 8005f12:	2220      	movs	r2, #32
 8005f14:	18bb      	adds	r3, r7, r2
 8005f16:	191b      	adds	r3, r3, r4
 8005f18:	6818      	ldr	r0, [r3, #0]
 8005f1a:	f7fa fd2d 	bl	8000978 <__aeabi_fmul>
 8005f1e:	1c03      	adds	r3, r0, #0
 8005f20:	1c1c      	adds	r4, r3, #0
 8005f22:	4ba6      	ldr	r3, [pc, #664]	; (80061bc <MadgwickAHRSupdate+0x8d4>)
 8005f24:	681b      	ldr	r3, [r3, #0]
 8005f26:	2088      	movs	r0, #136	; 0x88
 8005f28:	2220      	movs	r2, #32
 8005f2a:	18ba      	adds	r2, r7, r2
 8005f2c:	1812      	adds	r2, r2, r0
 8005f2e:	6811      	ldr	r1, [r2, #0]
 8005f30:	1c18      	adds	r0, r3, #0
 8005f32:	f7fa fd21 	bl	8000978 <__aeabi_fmul>
 8005f36:	1c03      	adds	r3, r0, #0
 8005f38:	1c19      	adds	r1, r3, #0
 8005f3a:	1c20      	adds	r0, r4, #0
 8005f3c:	f7fa fe4e 	bl	8000bdc <__aeabi_fsub>
 8005f40:	1c03      	adds	r3, r0, #0
 8005f42:	1c1c      	adds	r4, r3, #0
 8005f44:	4b9c      	ldr	r3, [pc, #624]	; (80061b8 <MadgwickAHRSupdate+0x8d0>)
 8005f46:	681b      	ldr	r3, [r3, #0]
 8005f48:	2184      	movs	r1, #132	; 0x84
 8005f4a:	2220      	movs	r2, #32
 8005f4c:	18b8      	adds	r0, r7, r2
 8005f4e:	1842      	adds	r2, r0, r1
 8005f50:	6811      	ldr	r1, [r2, #0]
 8005f52:	1c18      	adds	r0, r3, #0
 8005f54:	f7fa fd10 	bl	8000978 <__aeabi_fmul>
 8005f58:	1c03      	adds	r3, r0, #0
 8005f5a:	1c19      	adds	r1, r3, #0
 8005f5c:	1c20      	adds	r0, r4, #0
 8005f5e:	f7fa f999 	bl	8000294 <__aeabi_fadd>
 8005f62:	1c03      	adds	r3, r0, #0
 8005f64:	1c1c      	adds	r4, r3, #0
 8005f66:	6f79      	ldr	r1, [r7, #116]	; 0x74
 8005f68:	23cc      	movs	r3, #204	; 0xcc
 8005f6a:	2020      	movs	r0, #32
 8005f6c:	4684      	mov	ip, r0
 8005f6e:	44bc      	add	ip, r7
 8005f70:	4463      	add	r3, ip
 8005f72:	6818      	ldr	r0, [r3, #0]
 8005f74:	f7fa fd00 	bl	8000978 <__aeabi_fmul>
 8005f78:	1c03      	adds	r3, r0, #0
 8005f7a:	1c19      	adds	r1, r3, #0
 8005f7c:	1c20      	adds	r0, r4, #0
 8005f7e:	f7fa f989 	bl	8000294 <__aeabi_fadd>
 8005f82:	1c03      	adds	r3, r0, #0
 8005f84:	1c1c      	adds	r4, r3, #0
 8005f86:	2220      	movs	r2, #32
 8005f88:	18bb      	adds	r3, r7, r2
 8005f8a:	195b      	adds	r3, r3, r5
 8005f8c:	6819      	ldr	r1, [r3, #0]
 8005f8e:	2098      	movs	r0, #152	; 0x98
 8005f90:	183b      	adds	r3, r7, r0
 8005f92:	6818      	ldr	r0, [r3, #0]
 8005f94:	f7fa fcf0 	bl	8000978 <__aeabi_fmul>
 8005f98:	1c03      	adds	r3, r0, #0
 8005f9a:	1c1a      	adds	r2, r3, #0
 8005f9c:	4b86      	ldr	r3, [pc, #536]	; (80061b8 <MadgwickAHRSupdate+0x8d0>)
 8005f9e:	681b      	ldr	r3, [r3, #0]
 8005fa0:	1c19      	adds	r1, r3, #0
 8005fa2:	1c10      	adds	r0, r2, #0
 8005fa4:	f7fa fce8 	bl	8000978 <__aeabi_fmul>
 8005fa8:	1c03      	adds	r3, r0, #0
 8005faa:	1c19      	adds	r1, r3, #0
 8005fac:	1c20      	adds	r0, r4, #0
 8005fae:	f7fa f971 	bl	8000294 <__aeabi_fadd>
 8005fb2:	1c03      	adds	r3, r0, #0
 8005fb4:	1c1c      	adds	r4, r3, #0
 8005fb6:	2220      	movs	r2, #32
 8005fb8:	18bb      	adds	r3, r7, r2
 8005fba:	199b      	adds	r3, r3, r6
 8005fbc:	6819      	ldr	r1, [r3, #0]
 8005fbe:	2098      	movs	r0, #152	; 0x98
 8005fc0:	183b      	adds	r3, r7, r0
 8005fc2:	6818      	ldr	r0, [r3, #0]
 8005fc4:	f7fa fcd8 	bl	8000978 <__aeabi_fmul>
 8005fc8:	1c03      	adds	r3, r0, #0
 8005fca:	1c1a      	adds	r2, r3, #0
 8005fcc:	4b7b      	ldr	r3, [pc, #492]	; (80061bc <MadgwickAHRSupdate+0x8d4>)
 8005fce:	681b      	ldr	r3, [r3, #0]
 8005fd0:	1c19      	adds	r1, r3, #0
 8005fd2:	1c10      	adds	r0, r2, #0
 8005fd4:	f7fa fcd0 	bl	8000978 <__aeabi_fmul>
 8005fd8:	1c03      	adds	r3, r0, #0
 8005fda:	1c19      	adds	r1, r3, #0
 8005fdc:	1c20      	adds	r0, r4, #0
 8005fde:	f7fa f959 	bl	8000294 <__aeabi_fadd>
 8005fe2:	1c03      	adds	r3, r0, #0
 8005fe4:	1c1c      	adds	r4, r3, #0
 8005fe6:	6eb9      	ldr	r1, [r7, #104]	; 0x68
 8005fe8:	23cc      	movs	r3, #204	; 0xcc
 8005fea:	2020      	movs	r0, #32
 8005fec:	4684      	mov	ip, r0
 8005fee:	44bc      	add	ip, r7
 8005ff0:	4463      	add	r3, ip
 8005ff2:	6818      	ldr	r0, [r3, #0]
 8005ff4:	f7fa fcc0 	bl	8000978 <__aeabi_fmul>
 8005ff8:	1c03      	adds	r3, r0, #0
 8005ffa:	1c19      	adds	r1, r3, #0
 8005ffc:	1c20      	adds	r0, r4, #0
 8005ffe:	f7fa fded 	bl	8000bdc <__aeabi_fsub>
 8006002:	1c03      	adds	r3, r0, #0
 8006004:	1c1c      	adds	r4, r3, #0
 8006006:	6e39      	ldr	r1, [r7, #96]	; 0x60
 8006008:	23cc      	movs	r3, #204	; 0xcc
 800600a:	2020      	movs	r0, #32
 800600c:	4684      	mov	ip, r0
 800600e:	44bc      	add	ip, r7
 8006010:	4463      	add	r3, ip
 8006012:	6818      	ldr	r0, [r3, #0]
 8006014:	f7fa fcb0 	bl	8000978 <__aeabi_fmul>
 8006018:	1c03      	adds	r3, r0, #0
 800601a:	1c19      	adds	r1, r3, #0
 800601c:	1c20      	adds	r0, r4, #0
 800601e:	f7fa fddd 	bl	8000bdc <__aeabi_fsub>
 8006022:	1c03      	adds	r3, r0, #0
 8006024:	65fb      	str	r3, [r7, #92]	; 0x5c
 8006026:	4b65      	ldr	r3, [pc, #404]	; (80061bc <MadgwickAHRSupdate+0x8d4>)
 8006028:	681b      	ldr	r3, [r3, #0]
 800602a:	218c      	movs	r1, #140	; 0x8c
 800602c:	2220      	movs	r2, #32
 800602e:	18bc      	adds	r4, r7, r2
 8006030:	1864      	adds	r4, r4, r1
 8006032:	6821      	ldr	r1, [r4, #0]
 8006034:	1c18      	adds	r0, r3, #0
 8006036:	f7fa fc9f 	bl	8000978 <__aeabi_fmul>
 800603a:	1c03      	adds	r3, r0, #0
 800603c:	1c1c      	adds	r4, r3, #0
 800603e:	2184      	movs	r1, #132	; 0x84
 8006040:	187b      	adds	r3, r7, r1
 8006042:	6819      	ldr	r1, [r3, #0]
 8006044:	2220      	movs	r2, #32
 8006046:	18bb      	adds	r3, r7, r2
 8006048:	195b      	adds	r3, r3, r5
 800604a:	6818      	ldr	r0, [r3, #0]
 800604c:	f7fa fc94 	bl	8000978 <__aeabi_fmul>
 8006050:	1c03      	adds	r3, r0, #0
 8006052:	1c19      	adds	r1, r3, #0
 8006054:	1c20      	adds	r0, r4, #0
 8006056:	f7fa f91d 	bl	8000294 <__aeabi_fadd>
 800605a:	1c03      	adds	r3, r0, #0
 800605c:	1c1c      	adds	r4, r3, #0
 800605e:	4b55      	ldr	r3, [pc, #340]	; (80061b4 <MadgwickAHRSupdate+0x8cc>)
 8006060:	681b      	ldr	r3, [r3, #0]
 8006062:	2184      	movs	r1, #132	; 0x84
 8006064:	2220      	movs	r2, #32
 8006066:	18ba      	adds	r2, r7, r2
 8006068:	1852      	adds	r2, r2, r1
 800606a:	6811      	ldr	r1, [r2, #0]
 800606c:	1c18      	adds	r0, r3, #0
 800606e:	f7fa fc83 	bl	8000978 <__aeabi_fmul>
 8006072:	1c03      	adds	r3, r0, #0
 8006074:	1c19      	adds	r1, r3, #0
 8006076:	1c20      	adds	r0, r4, #0
 8006078:	f7fa fdb0 	bl	8000bdc <__aeabi_fsub>
 800607c:	1c03      	adds	r3, r0, #0
 800607e:	1c1c      	adds	r4, r3, #0
 8006080:	4b4d      	ldr	r3, [pc, #308]	; (80061b8 <MadgwickAHRSupdate+0x8d0>)
 8006082:	681b      	ldr	r3, [r3, #0]
 8006084:	2180      	movs	r1, #128	; 0x80
 8006086:	2220      	movs	r2, #32
 8006088:	18ba      	adds	r2, r7, r2
 800608a:	1852      	adds	r2, r2, r1
 800608c:	6811      	ldr	r1, [r2, #0]
 800608e:	1c18      	adds	r0, r3, #0
 8006090:	f7fa fc72 	bl	8000978 <__aeabi_fmul>
 8006094:	1c03      	adds	r3, r0, #0
 8006096:	1c19      	adds	r1, r3, #0
 8006098:	1c20      	adds	r0, r4, #0
 800609a:	f7fa f8fb 	bl	8000294 <__aeabi_fadd>
 800609e:	1c03      	adds	r3, r0, #0
 80060a0:	1c1c      	adds	r4, r3, #0
 80060a2:	6f79      	ldr	r1, [r7, #116]	; 0x74
 80060a4:	2320      	movs	r3, #32
 80060a6:	18fa      	adds	r2, r7, r3
 80060a8:	1953      	adds	r3, r2, r5
 80060aa:	6818      	ldr	r0, [r3, #0]
 80060ac:	f7fa fc64 	bl	8000978 <__aeabi_fmul>
 80060b0:	1c03      	adds	r3, r0, #0
 80060b2:	1c19      	adds	r1, r3, #0
 80060b4:	1c20      	adds	r0, r4, #0
 80060b6:	f7fa fd91 	bl	8000bdc <__aeabi_fsub>
 80060ba:	1c03      	adds	r3, r0, #0
 80060bc:	1c1c      	adds	r4, r3, #0
 80060be:	6eb9      	ldr	r1, [r7, #104]	; 0x68
 80060c0:	2320      	movs	r3, #32
 80060c2:	18fa      	adds	r2, r7, r3
 80060c4:	1953      	adds	r3, r2, r5
 80060c6:	6818      	ldr	r0, [r3, #0]
 80060c8:	f7fa fc56 	bl	8000978 <__aeabi_fmul>
 80060cc:	1c03      	adds	r3, r0, #0
 80060ce:	1c19      	adds	r1, r3, #0
 80060d0:	1c20      	adds	r0, r4, #0
 80060d2:	f7fa f8df 	bl	8000294 <__aeabi_fadd>
 80060d6:	1c03      	adds	r3, r0, #0
 80060d8:	1c1c      	adds	r4, r3, #0
 80060da:	2320      	movs	r3, #32
 80060dc:	18fa      	adds	r2, r7, r3
 80060de:	1993      	adds	r3, r2, r6
 80060e0:	6819      	ldr	r1, [r3, #0]
 80060e2:	2094      	movs	r0, #148	; 0x94
 80060e4:	1838      	adds	r0, r7, r0
 80060e6:	6800      	ldr	r0, [r0, #0]
 80060e8:	f7fa fc46 	bl	8000978 <__aeabi_fmul>
 80060ec:	1c03      	adds	r3, r0, #0
 80060ee:	1c1a      	adds	r2, r3, #0
 80060f0:	4b32      	ldr	r3, [pc, #200]	; (80061bc <MadgwickAHRSupdate+0x8d4>)
 80060f2:	681b      	ldr	r3, [r3, #0]
 80060f4:	1c19      	adds	r1, r3, #0
 80060f6:	1c10      	adds	r0, r2, #0
 80060f8:	f7fa fc3e 	bl	8000978 <__aeabi_fmul>
 80060fc:	1c03      	adds	r3, r0, #0
 80060fe:	1c19      	adds	r1, r3, #0
 8006100:	1c20      	adds	r0, r4, #0
 8006102:	f7fa f8c7 	bl	8000294 <__aeabi_fadd>
 8006106:	1c03      	adds	r3, r0, #0
 8006108:	1c1c      	adds	r4, r3, #0
 800610a:	6e39      	ldr	r1, [r7, #96]	; 0x60
 800610c:	2320      	movs	r3, #32
 800610e:	18f8      	adds	r0, r7, r3
 8006110:	1943      	adds	r3, r0, r5
 8006112:	6818      	ldr	r0, [r3, #0]
 8006114:	f7fa fc30 	bl	8000978 <__aeabi_fmul>
 8006118:	1c03      	adds	r3, r0, #0
 800611a:	1c19      	adds	r1, r3, #0
 800611c:	1c20      	adds	r0, r4, #0
 800611e:	f7fa fd5d 	bl	8000bdc <__aeabi_fsub>
 8006122:	1c03      	adds	r3, r0, #0
 8006124:	65bb      	str	r3, [r7, #88]	; 0x58
 8006126:	6df9      	ldr	r1, [r7, #92]	; 0x5c
 8006128:	6df8      	ldr	r0, [r7, #92]	; 0x5c
 800612a:	f7fa fc25 	bl	8000978 <__aeabi_fmul>
 800612e:	1c03      	adds	r3, r0, #0
 8006130:	1c1c      	adds	r4, r3, #0
 8006132:	6db9      	ldr	r1, [r7, #88]	; 0x58
 8006134:	6db8      	ldr	r0, [r7, #88]	; 0x58
 8006136:	f7fa fc1f 	bl	8000978 <__aeabi_fmul>
 800613a:	1c03      	adds	r3, r0, #0
 800613c:	1c19      	adds	r1, r3, #0
 800613e:	1c20      	adds	r0, r4, #0
 8006140:	f7fa f8a8 	bl	8000294 <__aeabi_fadd>
 8006144:	1c03      	adds	r3, r0, #0
 8006146:	1c18      	adds	r0, r3, #0
 8006148:	f7fc fb6e 	bl	8002828 <__aeabi_f2d>
 800614c:	0003      	movs	r3, r0
 800614e:	000c      	movs	r4, r1
 8006150:	0018      	movs	r0, r3
 8006152:	0021      	movs	r1, r4
 8006154:	f002 fd40 	bl	8008bd8 <sqrt>
 8006158:	0003      	movs	r3, r0
 800615a:	000c      	movs	r4, r1
 800615c:	0018      	movs	r0, r3
 800615e:	0021      	movs	r1, r4
 8006160:	f7fc fbb4 	bl	80028cc <__aeabi_d2f>
 8006164:	1c03      	adds	r3, r0, #0
 8006166:	657b      	str	r3, [r7, #84]	; 0x54
 8006168:	218c      	movs	r1, #140	; 0x8c
 800616a:	2420      	movs	r4, #32
 800616c:	46a4      	mov	ip, r4
 800616e:	44bc      	add	ip, r7
 8006170:	4461      	add	r1, ip
 8006172:	680b      	ldr	r3, [r1, #0]
 8006174:	2280      	movs	r2, #128	; 0x80
 8006176:	0612      	lsls	r2, r2, #24
 8006178:	405a      	eors	r2, r3
 800617a:	4b0f      	ldr	r3, [pc, #60]	; (80061b8 <MadgwickAHRSupdate+0x8d0>)
 800617c:	681b      	ldr	r3, [r3, #0]
 800617e:	1c19      	adds	r1, r3, #0
 8006180:	1c10      	adds	r0, r2, #0
 8006182:	f7fa fbf9 	bl	8000978 <__aeabi_fmul>
 8006186:	1c03      	adds	r3, r0, #0
 8006188:	1c1c      	adds	r4, r3, #0
 800618a:	4b0a      	ldr	r3, [pc, #40]	; (80061b4 <MadgwickAHRSupdate+0x8cc>)
 800618c:	681b      	ldr	r3, [r3, #0]
 800618e:	2088      	movs	r0, #136	; 0x88
 8006190:	2220      	movs	r2, #32
 8006192:	18ba      	adds	r2, r7, r2
 8006194:	1811      	adds	r1, r2, r0
 8006196:	6809      	ldr	r1, [r1, #0]
 8006198:	1c18      	adds	r0, r3, #0
 800619a:	f7fa fbed 	bl	8000978 <__aeabi_fmul>
 800619e:	1c03      	adds	r3, r0, #0
 80061a0:	1c19      	adds	r1, r3, #0
 80061a2:	1c20      	adds	r0, r4, #0
 80061a4:	f7fa f876 	bl	8000294 <__aeabi_fadd>
 80061a8:	1c03      	adds	r3, r0, #0
 80061aa:	1c1c      	adds	r4, r3, #0
 80061ac:	2184      	movs	r1, #132	; 0x84
 80061ae:	1878      	adds	r0, r7, r1
 80061b0:	e008      	b.n	80061c4 <MadgwickAHRSupdate+0x8dc>
 80061b2:	46c0      	nop			; (mov r8, r8)
 80061b4:	200001d0 	.word	0x200001d0
 80061b8:	200001d4 	.word	0x200001d4
 80061bc:	200001d8 	.word	0x200001d8
 80061c0:	20000000 	.word	0x20000000
 80061c4:	6801      	ldr	r1, [r0, #0]
 80061c6:	2320      	movs	r3, #32
 80061c8:	18fa      	adds	r2, r7, r3
 80061ca:	1990      	adds	r0, r2, r6
 80061cc:	6800      	ldr	r0, [r0, #0]
 80061ce:	f7fa fbd3 	bl	8000978 <__aeabi_fmul>
 80061d2:	1c03      	adds	r3, r0, #0
 80061d4:	1c19      	adds	r1, r3, #0
 80061d6:	1c20      	adds	r0, r4, #0
 80061d8:	f7fa f85c 	bl	8000294 <__aeabi_fadd>
 80061dc:	1c03      	adds	r3, r0, #0
 80061de:	1c1c      	adds	r4, r3, #0
 80061e0:	4bf9      	ldr	r3, [pc, #996]	; (80065c8 <MadgwickAHRSupdate+0xce0>)
 80061e2:	681b      	ldr	r3, [r3, #0]
 80061e4:	2180      	movs	r1, #128	; 0x80
 80061e6:	2220      	movs	r2, #32
 80061e8:	4694      	mov	ip, r2
 80061ea:	44bc      	add	ip, r7
 80061ec:	4461      	add	r1, ip
 80061ee:	6809      	ldr	r1, [r1, #0]
 80061f0:	1c18      	adds	r0, r3, #0
 80061f2:	f7fa fbc1 	bl	8000978 <__aeabi_fmul>
 80061f6:	1c03      	adds	r3, r0, #0
 80061f8:	1c19      	adds	r1, r3, #0
 80061fa:	1c20      	adds	r0, r4, #0
 80061fc:	f7fa f84a 	bl	8000294 <__aeabi_fadd>
 8006200:	1c03      	adds	r3, r0, #0
 8006202:	1c1c      	adds	r4, r3, #0
 8006204:	6f79      	ldr	r1, [r7, #116]	; 0x74
 8006206:	2320      	movs	r3, #32
 8006208:	18fa      	adds	r2, r7, r3
 800620a:	1990      	adds	r0, r2, r6
 800620c:	6800      	ldr	r0, [r0, #0]
 800620e:	f7fa fbb3 	bl	8000978 <__aeabi_fmul>
 8006212:	1c03      	adds	r3, r0, #0
 8006214:	1c19      	adds	r1, r3, #0
 8006216:	1c20      	adds	r0, r4, #0
 8006218:	f7fa fce0 	bl	8000bdc <__aeabi_fsub>
 800621c:	1c03      	adds	r3, r0, #0
 800621e:	1c1c      	adds	r4, r3, #0
 8006220:	2320      	movs	r3, #32
 8006222:	18fb      	adds	r3, r7, r3
 8006224:	1959      	adds	r1, r3, r5
 8006226:	6809      	ldr	r1, [r1, #0]
 8006228:	2394      	movs	r3, #148	; 0x94
 800622a:	18fb      	adds	r3, r7, r3
 800622c:	6818      	ldr	r0, [r3, #0]
 800622e:	f7fa fba3 	bl	8000978 <__aeabi_fmul>
 8006232:	1c03      	adds	r3, r0, #0
 8006234:	1c1a      	adds	r2, r3, #0
 8006236:	4be4      	ldr	r3, [pc, #912]	; (80065c8 <MadgwickAHRSupdate+0xce0>)
 8006238:	681b      	ldr	r3, [r3, #0]
 800623a:	1c19      	adds	r1, r3, #0
 800623c:	1c10      	adds	r0, r2, #0
 800623e:	f7fa fb9b 	bl	8000978 <__aeabi_fmul>
 8006242:	1c03      	adds	r3, r0, #0
 8006244:	1c19      	adds	r1, r3, #0
 8006246:	1c20      	adds	r0, r4, #0
 8006248:	f7fa f824 	bl	8000294 <__aeabi_fadd>
 800624c:	1c03      	adds	r3, r0, #0
 800624e:	1c1c      	adds	r4, r3, #0
 8006250:	6eb9      	ldr	r1, [r7, #104]	; 0x68
 8006252:	2520      	movs	r5, #32
 8006254:	197b      	adds	r3, r7, r5
 8006256:	1998      	adds	r0, r3, r6
 8006258:	6800      	ldr	r0, [r0, #0]
 800625a:	f7fa fb8d 	bl	8000978 <__aeabi_fmul>
 800625e:	1c03      	adds	r3, r0, #0
 8006260:	1c19      	adds	r1, r3, #0
 8006262:	1c20      	adds	r0, r4, #0
 8006264:	f7fa fcba 	bl	8000bdc <__aeabi_fsub>
 8006268:	1c03      	adds	r3, r0, #0
 800626a:	1c1c      	adds	r4, r3, #0
 800626c:	6e39      	ldr	r1, [r7, #96]	; 0x60
 800626e:	197b      	adds	r3, r7, r5
 8006270:	1998      	adds	r0, r3, r6
 8006272:	6800      	ldr	r0, [r0, #0]
 8006274:	f7fa fb80 	bl	8000978 <__aeabi_fmul>
 8006278:	1c03      	adds	r3, r0, #0
 800627a:	1c19      	adds	r1, r3, #0
 800627c:	1c20      	adds	r0, r4, #0
 800627e:	f7fa f809 	bl	8000294 <__aeabi_fadd>
 8006282:	1c03      	adds	r3, r0, #0
 8006284:	653b      	str	r3, [r7, #80]	; 0x50
 8006286:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8006288:	1c19      	adds	r1, r3, #0
 800628a:	1c18      	adds	r0, r3, #0
 800628c:	f7fa f802 	bl	8000294 <__aeabi_fadd>
 8006290:	1c03      	adds	r3, r0, #0
 8006292:	64fb      	str	r3, [r7, #76]	; 0x4c
 8006294:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 8006296:	1c19      	adds	r1, r3, #0
 8006298:	1c18      	adds	r0, r3, #0
 800629a:	f7f9 fffb 	bl	8000294 <__aeabi_fadd>
 800629e:	1c03      	adds	r3, r0, #0
 80062a0:	64bb      	str	r3, [r7, #72]	; 0x48
 80062a2:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80062a4:	1c19      	adds	r1, r3, #0
 80062a6:	1c18      	adds	r0, r3, #0
 80062a8:	f7f9 fff4 	bl	8000294 <__aeabi_fadd>
 80062ac:	1c03      	adds	r3, r0, #0
 80062ae:	647b      	str	r3, [r7, #68]	; 0x44
 80062b0:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 80062b2:	1c19      	adds	r1, r3, #0
 80062b4:	1c18      	adds	r0, r3, #0
 80062b6:	f7f9 ffed 	bl	8000294 <__aeabi_fadd>
 80062ba:	1c03      	adds	r3, r0, #0
 80062bc:	643b      	str	r3, [r7, #64]	; 0x40
 80062be:	2394      	movs	r3, #148	; 0x94
 80062c0:	18fb      	adds	r3, r7, r3
 80062c2:	681b      	ldr	r3, [r3, #0]
 80062c4:	2280      	movs	r2, #128	; 0x80
 80062c6:	0612      	lsls	r2, r2, #24
 80062c8:	0011      	movs	r1, r2
 80062ca:	4059      	eors	r1, r3
 80062cc:	000c      	movs	r4, r1
 80062ce:	6ff9      	ldr	r1, [r7, #124]	; 0x7c
 80062d0:	6ef8      	ldr	r0, [r7, #108]	; 0x6c
 80062d2:	f7fa fc83 	bl	8000bdc <__aeabi_fsub>
 80062d6:	1c03      	adds	r3, r0, #0
 80062d8:	1c19      	adds	r1, r3, #0
 80062da:	1c18      	adds	r0, r3, #0
 80062dc:	f7f9 ffda 	bl	8000294 <__aeabi_fadd>
 80062e0:	1c03      	adds	r3, r0, #0
 80062e2:	25c0      	movs	r5, #192	; 0xc0
 80062e4:	2620      	movs	r6, #32
 80062e6:	19ba      	adds	r2, r7, r6
 80062e8:	1951      	adds	r1, r2, r5
 80062ea:	6809      	ldr	r1, [r1, #0]
 80062ec:	1c18      	adds	r0, r3, #0
 80062ee:	f7fa fc75 	bl	8000bdc <__aeabi_fsub>
 80062f2:	1c03      	adds	r3, r0, #0
 80062f4:	1c19      	adds	r1, r3, #0
 80062f6:	1c20      	adds	r0, r4, #0
 80062f8:	f7fa fb3e 	bl	8000978 <__aeabi_fmul>
 80062fc:	1c03      	adds	r3, r0, #0
 80062fe:	1c1c      	adds	r4, r3, #0
 8006300:	6e79      	ldr	r1, [r7, #100]	; 0x64
 8006302:	2280      	movs	r2, #128	; 0x80
 8006304:	18bb      	adds	r3, r7, r2
 8006306:	6818      	ldr	r0, [r3, #0]
 8006308:	f7f9 ffc4 	bl	8000294 <__aeabi_fadd>
 800630c:	1c03      	adds	r3, r0, #0
 800630e:	1c19      	adds	r1, r3, #0
 8006310:	1c18      	adds	r0, r3, #0
 8006312:	f7f9 ffbf 	bl	8000294 <__aeabi_fadd>
 8006316:	1c03      	adds	r3, r0, #0
 8006318:	21c4      	movs	r1, #196	; 0xc4
 800631a:	2520      	movs	r5, #32
 800631c:	46ac      	mov	ip, r5
 800631e:	44bc      	add	ip, r7
 8006320:	4461      	add	r1, ip
 8006322:	6809      	ldr	r1, [r1, #0]
 8006324:	1c18      	adds	r0, r3, #0
 8006326:	f7fa fc59 	bl	8000bdc <__aeabi_fsub>
 800632a:	1c03      	adds	r3, r0, #0
 800632c:	2098      	movs	r0, #152	; 0x98
 800632e:	1838      	adds	r0, r7, r0
 8006330:	6801      	ldr	r1, [r0, #0]
 8006332:	1c18      	adds	r0, r3, #0
 8006334:	f7fa fb20 	bl	8000978 <__aeabi_fmul>
 8006338:	1c03      	adds	r3, r0, #0
 800633a:	1c19      	adds	r1, r3, #0
 800633c:	1c20      	adds	r0, r4, #0
 800633e:	f7f9 ffa9 	bl	8000294 <__aeabi_fadd>
 8006342:	1c03      	adds	r3, r0, #0
 8006344:	1c18      	adds	r0, r3, #0
 8006346:	f7fc fa6f 	bl	8002828 <__aeabi_f2d>
 800634a:	0004      	movs	r4, r0
 800634c:	000d      	movs	r5, r1
 800634e:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 8006350:	2280      	movs	r2, #128	; 0x80
 8006352:	0612      	lsls	r2, r2, #24
 8006354:	405a      	eors	r2, r3
 8006356:	4b9d      	ldr	r3, [pc, #628]	; (80065cc <MadgwickAHRSupdate+0xce4>)
 8006358:	681b      	ldr	r3, [r3, #0]
 800635a:	1c19      	adds	r1, r3, #0
 800635c:	1c10      	adds	r0, r2, #0
 800635e:	f7fa fb0b 	bl	8000978 <__aeabi_fmul>
 8006362:	1c03      	adds	r3, r0, #0
 8006364:	1c18      	adds	r0, r3, #0
 8006366:	f7fc fa5f 	bl	8002828 <__aeabi_f2d>
 800636a:	61b8      	str	r0, [r7, #24]
 800636c:	61f9      	str	r1, [r7, #28]
 800636e:	6cf8      	ldr	r0, [r7, #76]	; 0x4c
 8006370:	f7fc fa5a 	bl	8002828 <__aeabi_f2d>
 8006374:	6138      	str	r0, [r7, #16]
 8006376:	6179      	str	r1, [r7, #20]
 8006378:	6eb8      	ldr	r0, [r7, #104]	; 0x68
 800637a:	f7fc fa55 	bl	8002828 <__aeabi_f2d>
 800637e:	0002      	movs	r2, r0
 8006380:	000b      	movs	r3, r1
 8006382:	2000      	movs	r0, #0
 8006384:	4992      	ldr	r1, [pc, #584]	; (80065d0 <MadgwickAHRSupdate+0xce8>)
 8006386:	f7fb ff07 	bl	8002198 <__aeabi_dsub>
 800638a:	0002      	movs	r2, r0
 800638c:	000b      	movs	r3, r1
 800638e:	60ba      	str	r2, [r7, #8]
 8006390:	60fb      	str	r3, [r7, #12]
 8006392:	6e38      	ldr	r0, [r7, #96]	; 0x60
 8006394:	f7fc fa48 	bl	8002828 <__aeabi_f2d>
 8006398:	0002      	movs	r2, r0
 800639a:	000b      	movs	r3, r1
 800639c:	68b8      	ldr	r0, [r7, #8]
 800639e:	68f9      	ldr	r1, [r7, #12]
 80063a0:	f7fb fefa 	bl	8002198 <__aeabi_dsub>
 80063a4:	0002      	movs	r2, r0
 80063a6:	000b      	movs	r3, r1
 80063a8:	6938      	ldr	r0, [r7, #16]
 80063aa:	6979      	ldr	r1, [r7, #20]
 80063ac:	f7fb fc82 	bl	8001cb4 <__aeabi_dmul>
 80063b0:	0002      	movs	r2, r0
 80063b2:	000b      	movs	r3, r1
 80063b4:	613a      	str	r2, [r7, #16]
 80063b6:	617b      	str	r3, [r7, #20]
 80063b8:	6ff9      	ldr	r1, [r7, #124]	; 0x7c
 80063ba:	6ef8      	ldr	r0, [r7, #108]	; 0x6c
 80063bc:	f7fa fc0e 	bl	8000bdc <__aeabi_fsub>
 80063c0:	1c03      	adds	r3, r0, #0
 80063c2:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 80063c4:	1c18      	adds	r0, r3, #0
 80063c6:	f7fa fad7 	bl	8000978 <__aeabi_fmul>
 80063ca:	1c03      	adds	r3, r0, #0
 80063cc:	1c18      	adds	r0, r3, #0
 80063ce:	f7fc fa2b 	bl	8002828 <__aeabi_f2d>
 80063d2:	0002      	movs	r2, r0
 80063d4:	000b      	movs	r3, r1
 80063d6:	6938      	ldr	r0, [r7, #16]
 80063d8:	6979      	ldr	r1, [r7, #20]
 80063da:	f7fa fe4d 	bl	8001078 <__aeabi_dadd>
 80063de:	0002      	movs	r2, r0
 80063e0:	000b      	movs	r3, r1
 80063e2:	613a      	str	r2, [r7, #16]
 80063e4:	617b      	str	r3, [r7, #20]
 80063e6:	23cc      	movs	r3, #204	; 0xcc
 80063e8:	19b8      	adds	r0, r7, r6
 80063ea:	18c1      	adds	r1, r0, r3
 80063ec:	6808      	ldr	r0, [r1, #0]
 80063ee:	f7fc fa1b 	bl	8002828 <__aeabi_f2d>
 80063f2:	0002      	movs	r2, r0
 80063f4:	000b      	movs	r3, r1
 80063f6:	6938      	ldr	r0, [r7, #16]
 80063f8:	6979      	ldr	r1, [r7, #20]
 80063fa:	f7fb fecd 	bl	8002198 <__aeabi_dsub>
 80063fe:	0002      	movs	r2, r0
 8006400:	000b      	movs	r3, r1
 8006402:	69b8      	ldr	r0, [r7, #24]
 8006404:	69f9      	ldr	r1, [r7, #28]
 8006406:	f7fb fc55 	bl	8001cb4 <__aeabi_dmul>
 800640a:	0002      	movs	r2, r0
 800640c:	000b      	movs	r3, r1
 800640e:	0020      	movs	r0, r4
 8006410:	0029      	movs	r1, r5
 8006412:	f7fa fe31 	bl	8001078 <__aeabi_dadd>
 8006416:	0003      	movs	r3, r0
 8006418:	000c      	movs	r4, r1
 800641a:	0025      	movs	r5, r4
 800641c:	001c      	movs	r4, r3
 800641e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006420:	2280      	movs	r2, #128	; 0x80
 8006422:	0612      	lsls	r2, r2, #24
 8006424:	405a      	eors	r2, r3
 8006426:	4b68      	ldr	r3, [pc, #416]	; (80065c8 <MadgwickAHRSupdate+0xce0>)
 8006428:	681b      	ldr	r3, [r3, #0]
 800642a:	1c19      	adds	r1, r3, #0
 800642c:	1c10      	adds	r0, r2, #0
 800642e:	f7fa faa3 	bl	8000978 <__aeabi_fmul>
 8006432:	1c03      	adds	r3, r0, #0
 8006434:	1c1e      	adds	r6, r3, #0
 8006436:	4b67      	ldr	r3, [pc, #412]	; (80065d4 <MadgwickAHRSupdate+0xcec>)
 8006438:	681b      	ldr	r3, [r3, #0]
 800643a:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 800643c:	1c18      	adds	r0, r3, #0
 800643e:	f7fa fa9b 	bl	8000978 <__aeabi_fmul>
 8006442:	1c03      	adds	r3, r0, #0
 8006444:	1c19      	adds	r1, r3, #0
 8006446:	1c30      	adds	r0, r6, #0
 8006448:	f7f9 ff24 	bl	8000294 <__aeabi_fadd>
 800644c:	1c03      	adds	r3, r0, #0
 800644e:	1c1e      	adds	r6, r3, #0
 8006450:	6fb9      	ldr	r1, [r7, #120]	; 0x78
 8006452:	6f38      	ldr	r0, [r7, #112]	; 0x70
 8006454:	f7fa fbc2 	bl	8000bdc <__aeabi_fsub>
 8006458:	1c03      	adds	r3, r0, #0
 800645a:	6cf9      	ldr	r1, [r7, #76]	; 0x4c
 800645c:	1c18      	adds	r0, r3, #0
 800645e:	f7fa fa8b 	bl	8000978 <__aeabi_fmul>
 8006462:	1c03      	adds	r3, r0, #0
 8006464:	61bb      	str	r3, [r7, #24]
 8006466:	6e79      	ldr	r1, [r7, #100]	; 0x64
 8006468:	2280      	movs	r2, #128	; 0x80
 800646a:	18bb      	adds	r3, r7, r2
 800646c:	6818      	ldr	r0, [r3, #0]
 800646e:	f7f9 ff11 	bl	8000294 <__aeabi_fadd>
 8006472:	1c03      	adds	r3, r0, #0
 8006474:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 8006476:	1c18      	adds	r0, r3, #0
 8006478:	f7fa fa7e 	bl	8000978 <__aeabi_fmul>
 800647c:	1c03      	adds	r3, r0, #0
 800647e:	1c19      	adds	r1, r3, #0
 8006480:	69b8      	ldr	r0, [r7, #24]
 8006482:	f7f9 ff07 	bl	8000294 <__aeabi_fadd>
 8006486:	1c03      	adds	r3, r0, #0
 8006488:	22d0      	movs	r2, #208	; 0xd0
 800648a:	2120      	movs	r1, #32
 800648c:	1878      	adds	r0, r7, r1
 800648e:	1881      	adds	r1, r0, r2
 8006490:	6809      	ldr	r1, [r1, #0]
 8006492:	1c18      	adds	r0, r3, #0
 8006494:	f7fa fba2 	bl	8000bdc <__aeabi_fsub>
 8006498:	1c03      	adds	r3, r0, #0
 800649a:	1c19      	adds	r1, r3, #0
 800649c:	1c30      	adds	r0, r6, #0
 800649e:	f7fa fa6b 	bl	8000978 <__aeabi_fmul>
 80064a2:	1c03      	adds	r3, r0, #0
 80064a4:	1c18      	adds	r0, r3, #0
 80064a6:	f7fc f9bf 	bl	8002828 <__aeabi_f2d>
 80064aa:	0002      	movs	r2, r0
 80064ac:	000b      	movs	r3, r1
 80064ae:	0020      	movs	r0, r4
 80064b0:	0029      	movs	r1, r5
 80064b2:	f7fa fde1 	bl	8001078 <__aeabi_dadd>
 80064b6:	0003      	movs	r3, r0
 80064b8:	000c      	movs	r4, r1
 80064ba:	61bb      	str	r3, [r7, #24]
 80064bc:	61fc      	str	r4, [r7, #28]
 80064be:	4b43      	ldr	r3, [pc, #268]	; (80065cc <MadgwickAHRSupdate+0xce4>)
 80064c0:	681b      	ldr	r3, [r3, #0]
 80064c2:	6cf9      	ldr	r1, [r7, #76]	; 0x4c
 80064c4:	1c18      	adds	r0, r3, #0
 80064c6:	f7fa fa57 	bl	8000978 <__aeabi_fmul>
 80064ca:	1c03      	adds	r3, r0, #0
 80064cc:	1c18      	adds	r0, r3, #0
 80064ce:	f7fc f9ab 	bl	8002828 <__aeabi_f2d>
 80064d2:	6138      	str	r0, [r7, #16]
 80064d4:	6179      	str	r1, [r7, #20]
 80064d6:	6ef9      	ldr	r1, [r7, #108]	; 0x6c
 80064d8:	6ff8      	ldr	r0, [r7, #124]	; 0x7c
 80064da:	f7f9 fedb 	bl	8000294 <__aeabi_fadd>
 80064de:	1c03      	adds	r3, r0, #0
 80064e0:	6cf9      	ldr	r1, [r7, #76]	; 0x4c
 80064e2:	1c18      	adds	r0, r3, #0
 80064e4:	f7fa fa48 	bl	8000978 <__aeabi_fmul>
 80064e8:	1c03      	adds	r3, r0, #0
 80064ea:	1c18      	adds	r0, r3, #0
 80064ec:	f7fc f99c 	bl	8002828 <__aeabi_f2d>
 80064f0:	60b8      	str	r0, [r7, #8]
 80064f2:	60f9      	str	r1, [r7, #12]
 80064f4:	6cb8      	ldr	r0, [r7, #72]	; 0x48
 80064f6:	f7fc f997 	bl	8002828 <__aeabi_f2d>
 80064fa:	6038      	str	r0, [r7, #0]
 80064fc:	6079      	str	r1, [r7, #4]
 80064fe:	6f78      	ldr	r0, [r7, #116]	; 0x74
 8006500:	f7fc f992 	bl	8002828 <__aeabi_f2d>
 8006504:	0003      	movs	r3, r0
 8006506:	000c      	movs	r4, r1
 8006508:	001a      	movs	r2, r3
 800650a:	0023      	movs	r3, r4
 800650c:	2000      	movs	r0, #0
 800650e:	4930      	ldr	r1, [pc, #192]	; (80065d0 <MadgwickAHRSupdate+0xce8>)
 8006510:	f7fb fe42 	bl	8002198 <__aeabi_dsub>
 8006514:	0003      	movs	r3, r0
 8006516:	000c      	movs	r4, r1
 8006518:	0025      	movs	r5, r4
 800651a:	001c      	movs	r4, r3
 800651c:	6eb8      	ldr	r0, [r7, #104]	; 0x68
 800651e:	f7fc f983 	bl	8002828 <__aeabi_f2d>
 8006522:	0002      	movs	r2, r0
 8006524:	000b      	movs	r3, r1
 8006526:	0020      	movs	r0, r4
 8006528:	0029      	movs	r1, r5
 800652a:	f7fb fe35 	bl	8002198 <__aeabi_dsub>
 800652e:	0003      	movs	r3, r0
 8006530:	000c      	movs	r4, r1
 8006532:	001a      	movs	r2, r3
 8006534:	0023      	movs	r3, r4
 8006536:	6838      	ldr	r0, [r7, #0]
 8006538:	6879      	ldr	r1, [r7, #4]
 800653a:	f7fb fbbb 	bl	8001cb4 <__aeabi_dmul>
 800653e:	0003      	movs	r3, r0
 8006540:	000c      	movs	r4, r1
 8006542:	001a      	movs	r2, r3
 8006544:	0023      	movs	r3, r4
 8006546:	68b8      	ldr	r0, [r7, #8]
 8006548:	68f9      	ldr	r1, [r7, #12]
 800654a:	f7fa fd95 	bl	8001078 <__aeabi_dadd>
 800654e:	0003      	movs	r3, r0
 8006550:	000c      	movs	r4, r1
 8006552:	0025      	movs	r5, r4
 8006554:	001c      	movs	r4, r3
 8006556:	26d4      	movs	r6, #212	; 0xd4
 8006558:	2320      	movs	r3, #32
 800655a:	18fb      	adds	r3, r7, r3
 800655c:	1999      	adds	r1, r3, r6
 800655e:	6808      	ldr	r0, [r1, #0]
 8006560:	f7fc f962 	bl	8002828 <__aeabi_f2d>
 8006564:	0002      	movs	r2, r0
 8006566:	000b      	movs	r3, r1
 8006568:	0020      	movs	r0, r4
 800656a:	0029      	movs	r1, r5
 800656c:	f7fb fe14 	bl	8002198 <__aeabi_dsub>
 8006570:	0003      	movs	r3, r0
 8006572:	000c      	movs	r4, r1
 8006574:	001a      	movs	r2, r3
 8006576:	0023      	movs	r3, r4
 8006578:	6938      	ldr	r0, [r7, #16]
 800657a:	6979      	ldr	r1, [r7, #20]
 800657c:	f7fb fb9a 	bl	8001cb4 <__aeabi_dmul>
 8006580:	0003      	movs	r3, r0
 8006582:	000c      	movs	r4, r1
 8006584:	001a      	movs	r2, r3
 8006586:	0023      	movs	r3, r4
 8006588:	69b8      	ldr	r0, [r7, #24]
 800658a:	69f9      	ldr	r1, [r7, #28]
 800658c:	f7fa fd74 	bl	8001078 <__aeabi_dadd>
 8006590:	0003      	movs	r3, r0
 8006592:	000c      	movs	r4, r1
 8006594:	0018      	movs	r0, r3
 8006596:	0021      	movs	r1, r4
 8006598:	f7fc f998 	bl	80028cc <__aeabi_d2f>
 800659c:	1c03      	adds	r3, r0, #0
 800659e:	63fb      	str	r3, [r7, #60]	; 0x3c
 80065a0:	6ff9      	ldr	r1, [r7, #124]	; 0x7c
 80065a2:	6ef8      	ldr	r0, [r7, #108]	; 0x6c
 80065a4:	f7fa fb1a 	bl	8000bdc <__aeabi_fsub>
 80065a8:	1c03      	adds	r3, r0, #0
 80065aa:	1c19      	adds	r1, r3, #0
 80065ac:	1c18      	adds	r0, r3, #0
 80065ae:	f7f9 fe71 	bl	8000294 <__aeabi_fadd>
 80065b2:	1c03      	adds	r3, r0, #0
 80065b4:	25c0      	movs	r5, #192	; 0xc0
 80065b6:	2620      	movs	r6, #32
 80065b8:	19bc      	adds	r4, r7, r6
 80065ba:	1961      	adds	r1, r4, r5
 80065bc:	6809      	ldr	r1, [r1, #0]
 80065be:	1c18      	adds	r0, r3, #0
 80065c0:	f7fa fb0c 	bl	8000bdc <__aeabi_fsub>
 80065c4:	1c03      	adds	r3, r0, #0
 80065c6:	e007      	b.n	80065d8 <MadgwickAHRSupdate+0xcf0>
 80065c8:	200001d8 	.word	0x200001d8
 80065cc:	200001d4 	.word	0x200001d4
 80065d0:	3fe00000 	.word	0x3fe00000
 80065d4:	200001d0 	.word	0x200001d0
 80065d8:	2590      	movs	r5, #144	; 0x90
 80065da:	197c      	adds	r4, r7, r5
 80065dc:	6821      	ldr	r1, [r4, #0]
 80065de:	1c18      	adds	r0, r3, #0
 80065e0:	f7fa f9ca 	bl	8000978 <__aeabi_fmul>
 80065e4:	1c03      	adds	r3, r0, #0
 80065e6:	1c1c      	adds	r4, r3, #0
 80065e8:	6e79      	ldr	r1, [r7, #100]	; 0x64
 80065ea:	2280      	movs	r2, #128	; 0x80
 80065ec:	18bb      	adds	r3, r7, r2
 80065ee:	6818      	ldr	r0, [r3, #0]
 80065f0:	f7f9 fe50 	bl	8000294 <__aeabi_fadd>
 80065f4:	1c03      	adds	r3, r0, #0
 80065f6:	1c19      	adds	r1, r3, #0
 80065f8:	1c18      	adds	r0, r3, #0
 80065fa:	f7f9 fe4b 	bl	8000294 <__aeabi_fadd>
 80065fe:	1c03      	adds	r3, r0, #0
 8006600:	21c4      	movs	r1, #196	; 0xc4
 8006602:	19b8      	adds	r0, r7, r6
 8006604:	1840      	adds	r0, r0, r1
 8006606:	6801      	ldr	r1, [r0, #0]
 8006608:	1c18      	adds	r0, r3, #0
 800660a:	f7fa fae7 	bl	8000bdc <__aeabi_fsub>
 800660e:	1c03      	adds	r3, r0, #0
 8006610:	219c      	movs	r1, #156	; 0x9c
 8006612:	1879      	adds	r1, r7, r1
 8006614:	6809      	ldr	r1, [r1, #0]
 8006616:	1c18      	adds	r0, r3, #0
 8006618:	f7fa f9ae 	bl	8000978 <__aeabi_fmul>
 800661c:	1c03      	adds	r3, r0, #0
 800661e:	1c19      	adds	r1, r3, #0
 8006620:	1c20      	adds	r0, r4, #0
 8006622:	f7f9 fe37 	bl	8000294 <__aeabi_fadd>
 8006626:	1c03      	adds	r3, r0, #0
 8006628:	1c18      	adds	r0, r3, #0
 800662a:	f7fc f8fd 	bl	8002828 <__aeabi_f2d>
 800662e:	0004      	movs	r4, r0
 8006630:	000d      	movs	r5, r1
 8006632:	4bf8      	ldr	r3, [pc, #992]	; (8006a14 <MadgwickAHRSupdate+0x112c>)
 8006634:	681b      	ldr	r3, [r3, #0]
 8006636:	49f8      	ldr	r1, [pc, #992]	; (8006a18 <MadgwickAHRSupdate+0x1130>)
 8006638:	1c18      	adds	r0, r3, #0
 800663a:	f7fa f99d 	bl	8000978 <__aeabi_fmul>
 800663e:	1c03      	adds	r3, r0, #0
 8006640:	1c18      	adds	r0, r3, #0
 8006642:	f7fc f8f1 	bl	8002828 <__aeabi_f2d>
 8006646:	61b8      	str	r0, [r7, #24]
 8006648:	61f9      	str	r1, [r7, #28]
 800664a:	6f78      	ldr	r0, [r7, #116]	; 0x74
 800664c:	f7fc f8ec 	bl	8002828 <__aeabi_f2d>
 8006650:	0002      	movs	r2, r0
 8006652:	000b      	movs	r3, r1
 8006654:	2000      	movs	r0, #0
 8006656:	49f1      	ldr	r1, [pc, #964]	; (8006a1c <MadgwickAHRSupdate+0x1134>)
 8006658:	f7fb fd9e 	bl	8002198 <__aeabi_dsub>
 800665c:	0002      	movs	r2, r0
 800665e:	000b      	movs	r3, r1
 8006660:	613a      	str	r2, [r7, #16]
 8006662:	617b      	str	r3, [r7, #20]
 8006664:	6eb8      	ldr	r0, [r7, #104]	; 0x68
 8006666:	f7fc f8df 	bl	8002828 <__aeabi_f2d>
 800666a:	0002      	movs	r2, r0
 800666c:	000b      	movs	r3, r1
 800666e:	6938      	ldr	r0, [r7, #16]
 8006670:	6979      	ldr	r1, [r7, #20]
 8006672:	f7fb fd91 	bl	8002198 <__aeabi_dsub>
 8006676:	0002      	movs	r2, r0
 8006678:	000b      	movs	r3, r1
 800667a:	0010      	movs	r0, r2
 800667c:	0019      	movs	r1, r3
 800667e:	0002      	movs	r2, r0
 8006680:	000b      	movs	r3, r1
 8006682:	f7fa fcf9 	bl	8001078 <__aeabi_dadd>
 8006686:	0002      	movs	r2, r0
 8006688:	000b      	movs	r3, r1
 800668a:	613a      	str	r2, [r7, #16]
 800668c:	617b      	str	r3, [r7, #20]
 800668e:	20c8      	movs	r0, #200	; 0xc8
 8006690:	19bb      	adds	r3, r7, r6
 8006692:	1819      	adds	r1, r3, r0
 8006694:	6808      	ldr	r0, [r1, #0]
 8006696:	f7fc f8c7 	bl	8002828 <__aeabi_f2d>
 800669a:	0002      	movs	r2, r0
 800669c:	000b      	movs	r3, r1
 800669e:	6938      	ldr	r0, [r7, #16]
 80066a0:	6979      	ldr	r1, [r7, #20]
 80066a2:	f7fb fd79 	bl	8002198 <__aeabi_dsub>
 80066a6:	0002      	movs	r2, r0
 80066a8:	000b      	movs	r3, r1
 80066aa:	69b8      	ldr	r0, [r7, #24]
 80066ac:	69f9      	ldr	r1, [r7, #28]
 80066ae:	f7fb fb01 	bl	8001cb4 <__aeabi_dmul>
 80066b2:	0002      	movs	r2, r0
 80066b4:	000b      	movs	r3, r1
 80066b6:	0020      	movs	r0, r4
 80066b8:	0029      	movs	r1, r5
 80066ba:	f7fa fcdd 	bl	8001078 <__aeabi_dadd>
 80066be:	0003      	movs	r3, r0
 80066c0:	000c      	movs	r4, r1
 80066c2:	0025      	movs	r5, r4
 80066c4:	001c      	movs	r4, r3
 80066c6:	4bd6      	ldr	r3, [pc, #856]	; (8006a20 <MadgwickAHRSupdate+0x1138>)
 80066c8:	681b      	ldr	r3, [r3, #0]
 80066ca:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 80066cc:	1c18      	adds	r0, r3, #0
 80066ce:	f7fa f953 	bl	8000978 <__aeabi_fmul>
 80066d2:	1c03      	adds	r3, r0, #0
 80066d4:	1c18      	adds	r0, r3, #0
 80066d6:	f7fc f8a7 	bl	8002828 <__aeabi_f2d>
 80066da:	61b8      	str	r0, [r7, #24]
 80066dc:	61f9      	str	r1, [r7, #28]
 80066de:	6cf8      	ldr	r0, [r7, #76]	; 0x4c
 80066e0:	f7fc f8a2 	bl	8002828 <__aeabi_f2d>
 80066e4:	6138      	str	r0, [r7, #16]
 80066e6:	6179      	str	r1, [r7, #20]
 80066e8:	6eb8      	ldr	r0, [r7, #104]	; 0x68
 80066ea:	f7fc f89d 	bl	8002828 <__aeabi_f2d>
 80066ee:	0002      	movs	r2, r0
 80066f0:	000b      	movs	r3, r1
 80066f2:	2000      	movs	r0, #0
 80066f4:	49c9      	ldr	r1, [pc, #804]	; (8006a1c <MadgwickAHRSupdate+0x1134>)
 80066f6:	f7fb fd4f 	bl	8002198 <__aeabi_dsub>
 80066fa:	0002      	movs	r2, r0
 80066fc:	000b      	movs	r3, r1
 80066fe:	60ba      	str	r2, [r7, #8]
 8006700:	60fb      	str	r3, [r7, #12]
 8006702:	6e38      	ldr	r0, [r7, #96]	; 0x60
 8006704:	f7fc f890 	bl	8002828 <__aeabi_f2d>
 8006708:	0002      	movs	r2, r0
 800670a:	000b      	movs	r3, r1
 800670c:	68b8      	ldr	r0, [r7, #8]
 800670e:	68f9      	ldr	r1, [r7, #12]
 8006710:	f7fb fd42 	bl	8002198 <__aeabi_dsub>
 8006714:	0002      	movs	r2, r0
 8006716:	000b      	movs	r3, r1
 8006718:	6938      	ldr	r0, [r7, #16]
 800671a:	6979      	ldr	r1, [r7, #20]
 800671c:	f7fb faca 	bl	8001cb4 <__aeabi_dmul>
 8006720:	0002      	movs	r2, r0
 8006722:	000b      	movs	r3, r1
 8006724:	613a      	str	r2, [r7, #16]
 8006726:	617b      	str	r3, [r7, #20]
 8006728:	6ff9      	ldr	r1, [r7, #124]	; 0x7c
 800672a:	6ef8      	ldr	r0, [r7, #108]	; 0x6c
 800672c:	f7fa fa56 	bl	8000bdc <__aeabi_fsub>
 8006730:	1c03      	adds	r3, r0, #0
 8006732:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 8006734:	1c18      	adds	r0, r3, #0
 8006736:	f7fa f91f 	bl	8000978 <__aeabi_fmul>
 800673a:	1c03      	adds	r3, r0, #0
 800673c:	1c18      	adds	r0, r3, #0
 800673e:	f7fc f873 	bl	8002828 <__aeabi_f2d>
 8006742:	0002      	movs	r2, r0
 8006744:	000b      	movs	r3, r1
 8006746:	6938      	ldr	r0, [r7, #16]
 8006748:	6979      	ldr	r1, [r7, #20]
 800674a:	f7fa fc95 	bl	8001078 <__aeabi_dadd>
 800674e:	0002      	movs	r2, r0
 8006750:	000b      	movs	r3, r1
 8006752:	613a      	str	r2, [r7, #16]
 8006754:	617b      	str	r3, [r7, #20]
 8006756:	23cc      	movs	r3, #204	; 0xcc
 8006758:	19b9      	adds	r1, r7, r6
 800675a:	18c9      	adds	r1, r1, r3
 800675c:	6808      	ldr	r0, [r1, #0]
 800675e:	f7fc f863 	bl	8002828 <__aeabi_f2d>
 8006762:	0002      	movs	r2, r0
 8006764:	000b      	movs	r3, r1
 8006766:	6938      	ldr	r0, [r7, #16]
 8006768:	6979      	ldr	r1, [r7, #20]
 800676a:	f7fb fd15 	bl	8002198 <__aeabi_dsub>
 800676e:	0002      	movs	r2, r0
 8006770:	000b      	movs	r3, r1
 8006772:	69b8      	ldr	r0, [r7, #24]
 8006774:	69f9      	ldr	r1, [r7, #28]
 8006776:	f7fb fa9d 	bl	8001cb4 <__aeabi_dmul>
 800677a:	0002      	movs	r2, r0
 800677c:	000b      	movs	r3, r1
 800677e:	0020      	movs	r0, r4
 8006780:	0029      	movs	r1, r5
 8006782:	f7fa fc79 	bl	8001078 <__aeabi_dadd>
 8006786:	0003      	movs	r3, r0
 8006788:	000c      	movs	r4, r1
 800678a:	0025      	movs	r5, r4
 800678c:	001c      	movs	r4, r3
 800678e:	4ba5      	ldr	r3, [pc, #660]	; (8006a24 <MadgwickAHRSupdate+0x113c>)
 8006790:	681b      	ldr	r3, [r3, #0]
 8006792:	6cf9      	ldr	r1, [r7, #76]	; 0x4c
 8006794:	1c18      	adds	r0, r3, #0
 8006796:	f7fa f8ef 	bl	8000978 <__aeabi_fmul>
 800679a:	1c03      	adds	r3, r0, #0
 800679c:	1c1e      	adds	r6, r3, #0
 800679e:	4ba2      	ldr	r3, [pc, #648]	; (8006a28 <MadgwickAHRSupdate+0x1140>)
 80067a0:	681b      	ldr	r3, [r3, #0]
 80067a2:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 80067a4:	1c18      	adds	r0, r3, #0
 80067a6:	f7fa f8e7 	bl	8000978 <__aeabi_fmul>
 80067aa:	1c03      	adds	r3, r0, #0
 80067ac:	1c19      	adds	r1, r3, #0
 80067ae:	1c30      	adds	r0, r6, #0
 80067b0:	f7f9 fd70 	bl	8000294 <__aeabi_fadd>
 80067b4:	1c03      	adds	r3, r0, #0
 80067b6:	1c1e      	adds	r6, r3, #0
 80067b8:	6fb9      	ldr	r1, [r7, #120]	; 0x78
 80067ba:	6f38      	ldr	r0, [r7, #112]	; 0x70
 80067bc:	f7fa fa0e 	bl	8000bdc <__aeabi_fsub>
 80067c0:	1c03      	adds	r3, r0, #0
 80067c2:	6cf9      	ldr	r1, [r7, #76]	; 0x4c
 80067c4:	1c18      	adds	r0, r3, #0
 80067c6:	f7fa f8d7 	bl	8000978 <__aeabi_fmul>
 80067ca:	1c03      	adds	r3, r0, #0
 80067cc:	61bb      	str	r3, [r7, #24]
 80067ce:	6e79      	ldr	r1, [r7, #100]	; 0x64
 80067d0:	2280      	movs	r2, #128	; 0x80
 80067d2:	18bb      	adds	r3, r7, r2
 80067d4:	6818      	ldr	r0, [r3, #0]
 80067d6:	f7f9 fd5d 	bl	8000294 <__aeabi_fadd>
 80067da:	1c03      	adds	r3, r0, #0
 80067dc:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 80067de:	1c18      	adds	r0, r3, #0
 80067e0:	f7fa f8ca 	bl	8000978 <__aeabi_fmul>
 80067e4:	1c03      	adds	r3, r0, #0
 80067e6:	1c19      	adds	r1, r3, #0
 80067e8:	69b8      	ldr	r0, [r7, #24]
 80067ea:	f7f9 fd53 	bl	8000294 <__aeabi_fadd>
 80067ee:	1c03      	adds	r3, r0, #0
 80067f0:	22d0      	movs	r2, #208	; 0xd0
 80067f2:	2120      	movs	r1, #32
 80067f4:	1879      	adds	r1, r7, r1
 80067f6:	1889      	adds	r1, r1, r2
 80067f8:	6809      	ldr	r1, [r1, #0]
 80067fa:	1c18      	adds	r0, r3, #0
 80067fc:	f7fa f9ee 	bl	8000bdc <__aeabi_fsub>
 8006800:	1c03      	adds	r3, r0, #0
 8006802:	1c19      	adds	r1, r3, #0
 8006804:	1c30      	adds	r0, r6, #0
 8006806:	f7fa f8b7 	bl	8000978 <__aeabi_fmul>
 800680a:	1c03      	adds	r3, r0, #0
 800680c:	1c18      	adds	r0, r3, #0
 800680e:	f7fc f80b 	bl	8002828 <__aeabi_f2d>
 8006812:	0002      	movs	r2, r0
 8006814:	000b      	movs	r3, r1
 8006816:	0020      	movs	r0, r4
 8006818:	0029      	movs	r1, r5
 800681a:	f7fa fc2d 	bl	8001078 <__aeabi_dadd>
 800681e:	0003      	movs	r3, r0
 8006820:	000c      	movs	r4, r1
 8006822:	61bb      	str	r3, [r7, #24]
 8006824:	61fc      	str	r4, [r7, #28]
 8006826:	4b7e      	ldr	r3, [pc, #504]	; (8006a20 <MadgwickAHRSupdate+0x1138>)
 8006828:	681b      	ldr	r3, [r3, #0]
 800682a:	6cf9      	ldr	r1, [r7, #76]	; 0x4c
 800682c:	1c18      	adds	r0, r3, #0
 800682e:	f7fa f8a3 	bl	8000978 <__aeabi_fmul>
 8006832:	1c03      	adds	r3, r0, #0
 8006834:	1c1c      	adds	r4, r3, #0
 8006836:	4b77      	ldr	r3, [pc, #476]	; (8006a14 <MadgwickAHRSupdate+0x112c>)
 8006838:	681b      	ldr	r3, [r3, #0]
 800683a:	6c39      	ldr	r1, [r7, #64]	; 0x40
 800683c:	1c18      	adds	r0, r3, #0
 800683e:	f7fa f89b 	bl	8000978 <__aeabi_fmul>
 8006842:	1c03      	adds	r3, r0, #0
 8006844:	1c19      	adds	r1, r3, #0
 8006846:	1c20      	adds	r0, r4, #0
 8006848:	f7fa f9c8 	bl	8000bdc <__aeabi_fsub>
 800684c:	1c03      	adds	r3, r0, #0
 800684e:	1c18      	adds	r0, r3, #0
 8006850:	f7fb ffea 	bl	8002828 <__aeabi_f2d>
 8006854:	6138      	str	r0, [r7, #16]
 8006856:	6179      	str	r1, [r7, #20]
 8006858:	6ef9      	ldr	r1, [r7, #108]	; 0x6c
 800685a:	6ff8      	ldr	r0, [r7, #124]	; 0x7c
 800685c:	f7f9 fd1a 	bl	8000294 <__aeabi_fadd>
 8006860:	1c03      	adds	r3, r0, #0
 8006862:	6cf9      	ldr	r1, [r7, #76]	; 0x4c
 8006864:	1c18      	adds	r0, r3, #0
 8006866:	f7fa f887 	bl	8000978 <__aeabi_fmul>
 800686a:	1c03      	adds	r3, r0, #0
 800686c:	1c18      	adds	r0, r3, #0
 800686e:	f7fb ffdb 	bl	8002828 <__aeabi_f2d>
 8006872:	60b8      	str	r0, [r7, #8]
 8006874:	60f9      	str	r1, [r7, #12]
 8006876:	6cb8      	ldr	r0, [r7, #72]	; 0x48
 8006878:	f7fb ffd6 	bl	8002828 <__aeabi_f2d>
 800687c:	6038      	str	r0, [r7, #0]
 800687e:	6079      	str	r1, [r7, #4]
 8006880:	6f78      	ldr	r0, [r7, #116]	; 0x74
 8006882:	f7fb ffd1 	bl	8002828 <__aeabi_f2d>
 8006886:	0003      	movs	r3, r0
 8006888:	000c      	movs	r4, r1
 800688a:	001a      	movs	r2, r3
 800688c:	0023      	movs	r3, r4
 800688e:	2000      	movs	r0, #0
 8006890:	4962      	ldr	r1, [pc, #392]	; (8006a1c <MadgwickAHRSupdate+0x1134>)
 8006892:	f7fb fc81 	bl	8002198 <__aeabi_dsub>
 8006896:	0003      	movs	r3, r0
 8006898:	000c      	movs	r4, r1
 800689a:	0025      	movs	r5, r4
 800689c:	001c      	movs	r4, r3
 800689e:	6eb8      	ldr	r0, [r7, #104]	; 0x68
 80068a0:	f7fb ffc2 	bl	8002828 <__aeabi_f2d>
 80068a4:	0002      	movs	r2, r0
 80068a6:	000b      	movs	r3, r1
 80068a8:	0020      	movs	r0, r4
 80068aa:	0029      	movs	r1, r5
 80068ac:	f7fb fc74 	bl	8002198 <__aeabi_dsub>
 80068b0:	0003      	movs	r3, r0
 80068b2:	000c      	movs	r4, r1
 80068b4:	001a      	movs	r2, r3
 80068b6:	0023      	movs	r3, r4
 80068b8:	6838      	ldr	r0, [r7, #0]
 80068ba:	6879      	ldr	r1, [r7, #4]
 80068bc:	f7fb f9fa 	bl	8001cb4 <__aeabi_dmul>
 80068c0:	0003      	movs	r3, r0
 80068c2:	000c      	movs	r4, r1
 80068c4:	001a      	movs	r2, r3
 80068c6:	0023      	movs	r3, r4
 80068c8:	68b8      	ldr	r0, [r7, #8]
 80068ca:	68f9      	ldr	r1, [r7, #12]
 80068cc:	f7fa fbd4 	bl	8001078 <__aeabi_dadd>
 80068d0:	0003      	movs	r3, r0
 80068d2:	000c      	movs	r4, r1
 80068d4:	0025      	movs	r5, r4
 80068d6:	001c      	movs	r4, r3
 80068d8:	26d4      	movs	r6, #212	; 0xd4
 80068da:	2320      	movs	r3, #32
 80068dc:	18fb      	adds	r3, r7, r3
 80068de:	1999      	adds	r1, r3, r6
 80068e0:	6808      	ldr	r0, [r1, #0]
 80068e2:	f7fb ffa1 	bl	8002828 <__aeabi_f2d>
 80068e6:	0002      	movs	r2, r0
 80068e8:	000b      	movs	r3, r1
 80068ea:	0020      	movs	r0, r4
 80068ec:	0029      	movs	r1, r5
 80068ee:	f7fb fc53 	bl	8002198 <__aeabi_dsub>
 80068f2:	0003      	movs	r3, r0
 80068f4:	000c      	movs	r4, r1
 80068f6:	001a      	movs	r2, r3
 80068f8:	0023      	movs	r3, r4
 80068fa:	6938      	ldr	r0, [r7, #16]
 80068fc:	6979      	ldr	r1, [r7, #20]
 80068fe:	f7fb f9d9 	bl	8001cb4 <__aeabi_dmul>
 8006902:	0003      	movs	r3, r0
 8006904:	000c      	movs	r4, r1
 8006906:	001a      	movs	r2, r3
 8006908:	0023      	movs	r3, r4
 800690a:	69b8      	ldr	r0, [r7, #24]
 800690c:	69f9      	ldr	r1, [r7, #28]
 800690e:	f7fa fbb3 	bl	8001078 <__aeabi_dadd>
 8006912:	0003      	movs	r3, r0
 8006914:	000c      	movs	r4, r1
 8006916:	0018      	movs	r0, r3
 8006918:	0021      	movs	r1, r4
 800691a:	f7fb ffd7 	bl	80028cc <__aeabi_d2f>
 800691e:	1c03      	adds	r3, r0, #0
 8006920:	63bb      	str	r3, [r7, #56]	; 0x38
 8006922:	249c      	movs	r4, #156	; 0x9c
 8006924:	193c      	adds	r4, r7, r4
 8006926:	6823      	ldr	r3, [r4, #0]
 8006928:	2280      	movs	r2, #128	; 0x80
 800692a:	0612      	lsls	r2, r2, #24
 800692c:	0011      	movs	r1, r2
 800692e:	4059      	eors	r1, r3
 8006930:	000c      	movs	r4, r1
 8006932:	6ff9      	ldr	r1, [r7, #124]	; 0x7c
 8006934:	6ef8      	ldr	r0, [r7, #108]	; 0x6c
 8006936:	f7fa f951 	bl	8000bdc <__aeabi_fsub>
 800693a:	1c03      	adds	r3, r0, #0
 800693c:	1c19      	adds	r1, r3, #0
 800693e:	1c18      	adds	r0, r3, #0
 8006940:	f7f9 fca8 	bl	8000294 <__aeabi_fadd>
 8006944:	1c03      	adds	r3, r0, #0
 8006946:	25c0      	movs	r5, #192	; 0xc0
 8006948:	2620      	movs	r6, #32
 800694a:	19b9      	adds	r1, r7, r6
 800694c:	1949      	adds	r1, r1, r5
 800694e:	6809      	ldr	r1, [r1, #0]
 8006950:	1c18      	adds	r0, r3, #0
 8006952:	f7fa f943 	bl	8000bdc <__aeabi_fsub>
 8006956:	1c03      	adds	r3, r0, #0
 8006958:	1c19      	adds	r1, r3, #0
 800695a:	1c20      	adds	r0, r4, #0
 800695c:	f7fa f80c 	bl	8000978 <__aeabi_fmul>
 8006960:	1c03      	adds	r3, r0, #0
 8006962:	1c1c      	adds	r4, r3, #0
 8006964:	6e79      	ldr	r1, [r7, #100]	; 0x64
 8006966:	2280      	movs	r2, #128	; 0x80
 8006968:	18bb      	adds	r3, r7, r2
 800696a:	6818      	ldr	r0, [r3, #0]
 800696c:	f7f9 fc92 	bl	8000294 <__aeabi_fadd>
 8006970:	1c03      	adds	r3, r0, #0
 8006972:	1c19      	adds	r1, r3, #0
 8006974:	1c18      	adds	r0, r3, #0
 8006976:	f7f9 fc8d 	bl	8000294 <__aeabi_fadd>
 800697a:	1c03      	adds	r3, r0, #0
 800697c:	21c4      	movs	r1, #196	; 0xc4
 800697e:	19b8      	adds	r0, r7, r6
 8006980:	1840      	adds	r0, r0, r1
 8006982:	6801      	ldr	r1, [r0, #0]
 8006984:	1c18      	adds	r0, r3, #0
 8006986:	f7fa f929 	bl	8000bdc <__aeabi_fsub>
 800698a:	1c03      	adds	r3, r0, #0
 800698c:	2590      	movs	r5, #144	; 0x90
 800698e:	197d      	adds	r5, r7, r5
 8006990:	6829      	ldr	r1, [r5, #0]
 8006992:	1c18      	adds	r0, r3, #0
 8006994:	f7f9 fff0 	bl	8000978 <__aeabi_fmul>
 8006998:	1c03      	adds	r3, r0, #0
 800699a:	1c19      	adds	r1, r3, #0
 800699c:	1c20      	adds	r0, r4, #0
 800699e:	f7f9 fc79 	bl	8000294 <__aeabi_fadd>
 80069a2:	1c03      	adds	r3, r0, #0
 80069a4:	1c18      	adds	r0, r3, #0
 80069a6:	f7fb ff3f 	bl	8002828 <__aeabi_f2d>
 80069aa:	0004      	movs	r4, r0
 80069ac:	000d      	movs	r5, r1
 80069ae:	4b1d      	ldr	r3, [pc, #116]	; (8006a24 <MadgwickAHRSupdate+0x113c>)
 80069b0:	681b      	ldr	r3, [r3, #0]
 80069b2:	4919      	ldr	r1, [pc, #100]	; (8006a18 <MadgwickAHRSupdate+0x1130>)
 80069b4:	1c18      	adds	r0, r3, #0
 80069b6:	f7f9 ffdf 	bl	8000978 <__aeabi_fmul>
 80069ba:	1c03      	adds	r3, r0, #0
 80069bc:	1c18      	adds	r0, r3, #0
 80069be:	f7fb ff33 	bl	8002828 <__aeabi_f2d>
 80069c2:	61b8      	str	r0, [r7, #24]
 80069c4:	61f9      	str	r1, [r7, #28]
 80069c6:	6f78      	ldr	r0, [r7, #116]	; 0x74
 80069c8:	f7fb ff2e 	bl	8002828 <__aeabi_f2d>
 80069cc:	0002      	movs	r2, r0
 80069ce:	000b      	movs	r3, r1
 80069d0:	2000      	movs	r0, #0
 80069d2:	4912      	ldr	r1, [pc, #72]	; (8006a1c <MadgwickAHRSupdate+0x1134>)
 80069d4:	f7fb fbe0 	bl	8002198 <__aeabi_dsub>
 80069d8:	0002      	movs	r2, r0
 80069da:	000b      	movs	r3, r1
 80069dc:	613a      	str	r2, [r7, #16]
 80069de:	617b      	str	r3, [r7, #20]
 80069e0:	6eb8      	ldr	r0, [r7, #104]	; 0x68
 80069e2:	f7fb ff21 	bl	8002828 <__aeabi_f2d>
 80069e6:	0002      	movs	r2, r0
 80069e8:	000b      	movs	r3, r1
 80069ea:	6938      	ldr	r0, [r7, #16]
 80069ec:	6979      	ldr	r1, [r7, #20]
 80069ee:	f7fb fbd3 	bl	8002198 <__aeabi_dsub>
 80069f2:	0002      	movs	r2, r0
 80069f4:	000b      	movs	r3, r1
 80069f6:	0010      	movs	r0, r2
 80069f8:	0019      	movs	r1, r3
 80069fa:	0002      	movs	r2, r0
 80069fc:	000b      	movs	r3, r1
 80069fe:	f7fa fb3b 	bl	8001078 <__aeabi_dadd>
 8006a02:	0002      	movs	r2, r0
 8006a04:	000b      	movs	r3, r1
 8006a06:	613a      	str	r2, [r7, #16]
 8006a08:	617b      	str	r3, [r7, #20]
 8006a0a:	20c8      	movs	r0, #200	; 0xc8
 8006a0c:	2120      	movs	r1, #32
 8006a0e:	468c      	mov	ip, r1
 8006a10:	e00c      	b.n	8006a2c <MadgwickAHRSupdate+0x1144>
 8006a12:	46c0      	nop			; (mov r8, r8)
 8006a14:	200001d0 	.word	0x200001d0
 8006a18:	c0800000 	.word	0xc0800000
 8006a1c:	3fe00000 	.word	0x3fe00000
 8006a20:	200001d8 	.word	0x200001d8
 8006a24:	200001d4 	.word	0x200001d4
 8006a28:	20000000 	.word	0x20000000
 8006a2c:	44bc      	add	ip, r7
 8006a2e:	4460      	add	r0, ip
 8006a30:	6800      	ldr	r0, [r0, #0]
 8006a32:	f7fb fef9 	bl	8002828 <__aeabi_f2d>
 8006a36:	0002      	movs	r2, r0
 8006a38:	000b      	movs	r3, r1
 8006a3a:	6938      	ldr	r0, [r7, #16]
 8006a3c:	6979      	ldr	r1, [r7, #20]
 8006a3e:	f7fb fbab 	bl	8002198 <__aeabi_dsub>
 8006a42:	0002      	movs	r2, r0
 8006a44:	000b      	movs	r3, r1
 8006a46:	69b8      	ldr	r0, [r7, #24]
 8006a48:	69f9      	ldr	r1, [r7, #28]
 8006a4a:	f7fb f933 	bl	8001cb4 <__aeabi_dmul>
 8006a4e:	0002      	movs	r2, r0
 8006a50:	000b      	movs	r3, r1
 8006a52:	0020      	movs	r0, r4
 8006a54:	0029      	movs	r1, r5
 8006a56:	f7fa fb0f 	bl	8001078 <__aeabi_dadd>
 8006a5a:	0003      	movs	r3, r0
 8006a5c:	000c      	movs	r4, r1
 8006a5e:	0025      	movs	r5, r4
 8006a60:	001c      	movs	r4, r3
 8006a62:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8006a64:	2280      	movs	r2, #128	; 0x80
 8006a66:	0612      	lsls	r2, r2, #24
 8006a68:	405a      	eors	r2, r3
 8006a6a:	4bf7      	ldr	r3, [pc, #988]	; (8006e48 <MadgwickAHRSupdate+0x1560>)
 8006a6c:	681b      	ldr	r3, [r3, #0]
 8006a6e:	1c19      	adds	r1, r3, #0
 8006a70:	1c10      	adds	r0, r2, #0
 8006a72:	f7f9 ff81 	bl	8000978 <__aeabi_fmul>
 8006a76:	1c03      	adds	r3, r0, #0
 8006a78:	1c1e      	adds	r6, r3, #0
 8006a7a:	4bf4      	ldr	r3, [pc, #976]	; (8006e4c <MadgwickAHRSupdate+0x1564>)
 8006a7c:	681b      	ldr	r3, [r3, #0]
 8006a7e:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 8006a80:	1c18      	adds	r0, r3, #0
 8006a82:	f7f9 ff79 	bl	8000978 <__aeabi_fmul>
 8006a86:	1c03      	adds	r3, r0, #0
 8006a88:	1c19      	adds	r1, r3, #0
 8006a8a:	1c30      	adds	r0, r6, #0
 8006a8c:	f7fa f8a6 	bl	8000bdc <__aeabi_fsub>
 8006a90:	1c03      	adds	r3, r0, #0
 8006a92:	1c18      	adds	r0, r3, #0
 8006a94:	f7fb fec8 	bl	8002828 <__aeabi_f2d>
 8006a98:	61b8      	str	r0, [r7, #24]
 8006a9a:	61f9      	str	r1, [r7, #28]
 8006a9c:	6cf8      	ldr	r0, [r7, #76]	; 0x4c
 8006a9e:	f7fb fec3 	bl	8002828 <__aeabi_f2d>
 8006aa2:	6138      	str	r0, [r7, #16]
 8006aa4:	6179      	str	r1, [r7, #20]
 8006aa6:	6eb8      	ldr	r0, [r7, #104]	; 0x68
 8006aa8:	f7fb febe 	bl	8002828 <__aeabi_f2d>
 8006aac:	0002      	movs	r2, r0
 8006aae:	000b      	movs	r3, r1
 8006ab0:	2000      	movs	r0, #0
 8006ab2:	49e7      	ldr	r1, [pc, #924]	; (8006e50 <MadgwickAHRSupdate+0x1568>)
 8006ab4:	f7fb fb70 	bl	8002198 <__aeabi_dsub>
 8006ab8:	0002      	movs	r2, r0
 8006aba:	000b      	movs	r3, r1
 8006abc:	60ba      	str	r2, [r7, #8]
 8006abe:	60fb      	str	r3, [r7, #12]
 8006ac0:	6e38      	ldr	r0, [r7, #96]	; 0x60
 8006ac2:	f7fb feb1 	bl	8002828 <__aeabi_f2d>
 8006ac6:	0002      	movs	r2, r0
 8006ac8:	000b      	movs	r3, r1
 8006aca:	68b8      	ldr	r0, [r7, #8]
 8006acc:	68f9      	ldr	r1, [r7, #12]
 8006ace:	f7fb fb63 	bl	8002198 <__aeabi_dsub>
 8006ad2:	0002      	movs	r2, r0
 8006ad4:	000b      	movs	r3, r1
 8006ad6:	6938      	ldr	r0, [r7, #16]
 8006ad8:	6979      	ldr	r1, [r7, #20]
 8006ada:	f7fb f8eb 	bl	8001cb4 <__aeabi_dmul>
 8006ade:	0002      	movs	r2, r0
 8006ae0:	000b      	movs	r3, r1
 8006ae2:	613a      	str	r2, [r7, #16]
 8006ae4:	617b      	str	r3, [r7, #20]
 8006ae6:	6ff9      	ldr	r1, [r7, #124]	; 0x7c
 8006ae8:	6ef8      	ldr	r0, [r7, #108]	; 0x6c
 8006aea:	f7fa f877 	bl	8000bdc <__aeabi_fsub>
 8006aee:	1c03      	adds	r3, r0, #0
 8006af0:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 8006af2:	1c18      	adds	r0, r3, #0
 8006af4:	f7f9 ff40 	bl	8000978 <__aeabi_fmul>
 8006af8:	1c03      	adds	r3, r0, #0
 8006afa:	1c18      	adds	r0, r3, #0
 8006afc:	f7fb fe94 	bl	8002828 <__aeabi_f2d>
 8006b00:	0002      	movs	r2, r0
 8006b02:	000b      	movs	r3, r1
 8006b04:	6938      	ldr	r0, [r7, #16]
 8006b06:	6979      	ldr	r1, [r7, #20]
 8006b08:	f7fa fab6 	bl	8001078 <__aeabi_dadd>
 8006b0c:	0002      	movs	r2, r0
 8006b0e:	000b      	movs	r3, r1
 8006b10:	613a      	str	r2, [r7, #16]
 8006b12:	617b      	str	r3, [r7, #20]
 8006b14:	23cc      	movs	r3, #204	; 0xcc
 8006b16:	2620      	movs	r6, #32
 8006b18:	19b9      	adds	r1, r7, r6
 8006b1a:	18c8      	adds	r0, r1, r3
 8006b1c:	6800      	ldr	r0, [r0, #0]
 8006b1e:	f7fb fe83 	bl	8002828 <__aeabi_f2d>
 8006b22:	0002      	movs	r2, r0
 8006b24:	000b      	movs	r3, r1
 8006b26:	6938      	ldr	r0, [r7, #16]
 8006b28:	6979      	ldr	r1, [r7, #20]
 8006b2a:	f7fb fb35 	bl	8002198 <__aeabi_dsub>
 8006b2e:	0002      	movs	r2, r0
 8006b30:	000b      	movs	r3, r1
 8006b32:	69b8      	ldr	r0, [r7, #24]
 8006b34:	69f9      	ldr	r1, [r7, #28]
 8006b36:	f7fb f8bd 	bl	8001cb4 <__aeabi_dmul>
 8006b3a:	0002      	movs	r2, r0
 8006b3c:	000b      	movs	r3, r1
 8006b3e:	0020      	movs	r0, r4
 8006b40:	0029      	movs	r1, r5
 8006b42:	f7fa fa99 	bl	8001078 <__aeabi_dadd>
 8006b46:	0003      	movs	r3, r0
 8006b48:	000c      	movs	r4, r1
 8006b4a:	0025      	movs	r5, r4
 8006b4c:	001c      	movs	r4, r3
 8006b4e:	4bc1      	ldr	r3, [pc, #772]	; (8006e54 <MadgwickAHRSupdate+0x156c>)
 8006b50:	681b      	ldr	r3, [r3, #0]
 8006b52:	6cf9      	ldr	r1, [r7, #76]	; 0x4c
 8006b54:	1c18      	adds	r0, r3, #0
 8006b56:	f7f9 ff0f 	bl	8000978 <__aeabi_fmul>
 8006b5a:	1c03      	adds	r3, r0, #0
 8006b5c:	1c1e      	adds	r6, r3, #0
 8006b5e:	4bbe      	ldr	r3, [pc, #760]	; (8006e58 <MadgwickAHRSupdate+0x1570>)
 8006b60:	681b      	ldr	r3, [r3, #0]
 8006b62:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 8006b64:	1c18      	adds	r0, r3, #0
 8006b66:	f7f9 ff07 	bl	8000978 <__aeabi_fmul>
 8006b6a:	1c03      	adds	r3, r0, #0
 8006b6c:	1c19      	adds	r1, r3, #0
 8006b6e:	1c30      	adds	r0, r6, #0
 8006b70:	f7f9 fb90 	bl	8000294 <__aeabi_fadd>
 8006b74:	1c03      	adds	r3, r0, #0
 8006b76:	1c1e      	adds	r6, r3, #0
 8006b78:	6fb9      	ldr	r1, [r7, #120]	; 0x78
 8006b7a:	6f38      	ldr	r0, [r7, #112]	; 0x70
 8006b7c:	f7fa f82e 	bl	8000bdc <__aeabi_fsub>
 8006b80:	1c03      	adds	r3, r0, #0
 8006b82:	6cf9      	ldr	r1, [r7, #76]	; 0x4c
 8006b84:	1c18      	adds	r0, r3, #0
 8006b86:	f7f9 fef7 	bl	8000978 <__aeabi_fmul>
 8006b8a:	1c03      	adds	r3, r0, #0
 8006b8c:	61bb      	str	r3, [r7, #24]
 8006b8e:	6e79      	ldr	r1, [r7, #100]	; 0x64
 8006b90:	2280      	movs	r2, #128	; 0x80
 8006b92:	18bb      	adds	r3, r7, r2
 8006b94:	6818      	ldr	r0, [r3, #0]
 8006b96:	f7f9 fb7d 	bl	8000294 <__aeabi_fadd>
 8006b9a:	1c03      	adds	r3, r0, #0
 8006b9c:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 8006b9e:	1c18      	adds	r0, r3, #0
 8006ba0:	f7f9 feea 	bl	8000978 <__aeabi_fmul>
 8006ba4:	1c03      	adds	r3, r0, #0
 8006ba6:	1c19      	adds	r1, r3, #0
 8006ba8:	69b8      	ldr	r0, [r7, #24]
 8006baa:	f7f9 fb73 	bl	8000294 <__aeabi_fadd>
 8006bae:	1c03      	adds	r3, r0, #0
 8006bb0:	22d0      	movs	r2, #208	; 0xd0
 8006bb2:	2120      	movs	r1, #32
 8006bb4:	1878      	adds	r0, r7, r1
 8006bb6:	1880      	adds	r0, r0, r2
 8006bb8:	6801      	ldr	r1, [r0, #0]
 8006bba:	1c18      	adds	r0, r3, #0
 8006bbc:	f7fa f80e 	bl	8000bdc <__aeabi_fsub>
 8006bc0:	1c03      	adds	r3, r0, #0
 8006bc2:	1c19      	adds	r1, r3, #0
 8006bc4:	1c30      	adds	r0, r6, #0
 8006bc6:	f7f9 fed7 	bl	8000978 <__aeabi_fmul>
 8006bca:	1c03      	adds	r3, r0, #0
 8006bcc:	1c18      	adds	r0, r3, #0
 8006bce:	f7fb fe2b 	bl	8002828 <__aeabi_f2d>
 8006bd2:	0002      	movs	r2, r0
 8006bd4:	000b      	movs	r3, r1
 8006bd6:	0020      	movs	r0, r4
 8006bd8:	0029      	movs	r1, r5
 8006bda:	f7fa fa4d 	bl	8001078 <__aeabi_dadd>
 8006bde:	0003      	movs	r3, r0
 8006be0:	000c      	movs	r4, r1
 8006be2:	61bb      	str	r3, [r7, #24]
 8006be4:	61fc      	str	r4, [r7, #28]
 8006be6:	4b99      	ldr	r3, [pc, #612]	; (8006e4c <MadgwickAHRSupdate+0x1564>)
 8006be8:	681b      	ldr	r3, [r3, #0]
 8006bea:	6cf9      	ldr	r1, [r7, #76]	; 0x4c
 8006bec:	1c18      	adds	r0, r3, #0
 8006bee:	f7f9 fec3 	bl	8000978 <__aeabi_fmul>
 8006bf2:	1c03      	adds	r3, r0, #0
 8006bf4:	1c1c      	adds	r4, r3, #0
 8006bf6:	4b94      	ldr	r3, [pc, #592]	; (8006e48 <MadgwickAHRSupdate+0x1560>)
 8006bf8:	681b      	ldr	r3, [r3, #0]
 8006bfa:	6c39      	ldr	r1, [r7, #64]	; 0x40
 8006bfc:	1c18      	adds	r0, r3, #0
 8006bfe:	f7f9 febb 	bl	8000978 <__aeabi_fmul>
 8006c02:	1c03      	adds	r3, r0, #0
 8006c04:	1c19      	adds	r1, r3, #0
 8006c06:	1c20      	adds	r0, r4, #0
 8006c08:	f7f9 ffe8 	bl	8000bdc <__aeabi_fsub>
 8006c0c:	1c03      	adds	r3, r0, #0
 8006c0e:	1c18      	adds	r0, r3, #0
 8006c10:	f7fb fe0a 	bl	8002828 <__aeabi_f2d>
 8006c14:	6138      	str	r0, [r7, #16]
 8006c16:	6179      	str	r1, [r7, #20]
 8006c18:	6ef9      	ldr	r1, [r7, #108]	; 0x6c
 8006c1a:	6ff8      	ldr	r0, [r7, #124]	; 0x7c
 8006c1c:	f7f9 fb3a 	bl	8000294 <__aeabi_fadd>
 8006c20:	1c03      	adds	r3, r0, #0
 8006c22:	6cf9      	ldr	r1, [r7, #76]	; 0x4c
 8006c24:	1c18      	adds	r0, r3, #0
 8006c26:	f7f9 fea7 	bl	8000978 <__aeabi_fmul>
 8006c2a:	1c03      	adds	r3, r0, #0
 8006c2c:	1c18      	adds	r0, r3, #0
 8006c2e:	f7fb fdfb 	bl	8002828 <__aeabi_f2d>
 8006c32:	60b8      	str	r0, [r7, #8]
 8006c34:	60f9      	str	r1, [r7, #12]
 8006c36:	6cb8      	ldr	r0, [r7, #72]	; 0x48
 8006c38:	f7fb fdf6 	bl	8002828 <__aeabi_f2d>
 8006c3c:	6038      	str	r0, [r7, #0]
 8006c3e:	6079      	str	r1, [r7, #4]
 8006c40:	6f78      	ldr	r0, [r7, #116]	; 0x74
 8006c42:	f7fb fdf1 	bl	8002828 <__aeabi_f2d>
 8006c46:	0003      	movs	r3, r0
 8006c48:	000c      	movs	r4, r1
 8006c4a:	001a      	movs	r2, r3
 8006c4c:	0023      	movs	r3, r4
 8006c4e:	2000      	movs	r0, #0
 8006c50:	497f      	ldr	r1, [pc, #508]	; (8006e50 <MadgwickAHRSupdate+0x1568>)
 8006c52:	f7fb faa1 	bl	8002198 <__aeabi_dsub>
 8006c56:	0003      	movs	r3, r0
 8006c58:	000c      	movs	r4, r1
 8006c5a:	0025      	movs	r5, r4
 8006c5c:	001c      	movs	r4, r3
 8006c5e:	6eb8      	ldr	r0, [r7, #104]	; 0x68
 8006c60:	f7fb fde2 	bl	8002828 <__aeabi_f2d>
 8006c64:	0002      	movs	r2, r0
 8006c66:	000b      	movs	r3, r1
 8006c68:	0020      	movs	r0, r4
 8006c6a:	0029      	movs	r1, r5
 8006c6c:	f7fb fa94 	bl	8002198 <__aeabi_dsub>
 8006c70:	0003      	movs	r3, r0
 8006c72:	000c      	movs	r4, r1
 8006c74:	001a      	movs	r2, r3
 8006c76:	0023      	movs	r3, r4
 8006c78:	6838      	ldr	r0, [r7, #0]
 8006c7a:	6879      	ldr	r1, [r7, #4]
 8006c7c:	f7fb f81a 	bl	8001cb4 <__aeabi_dmul>
 8006c80:	0003      	movs	r3, r0
 8006c82:	000c      	movs	r4, r1
 8006c84:	001a      	movs	r2, r3
 8006c86:	0023      	movs	r3, r4
 8006c88:	68b8      	ldr	r0, [r7, #8]
 8006c8a:	68f9      	ldr	r1, [r7, #12]
 8006c8c:	f7fa f9f4 	bl	8001078 <__aeabi_dadd>
 8006c90:	0003      	movs	r3, r0
 8006c92:	000c      	movs	r4, r1
 8006c94:	0025      	movs	r5, r4
 8006c96:	001c      	movs	r4, r3
 8006c98:	26d4      	movs	r6, #212	; 0xd4
 8006c9a:	2320      	movs	r3, #32
 8006c9c:	18f9      	adds	r1, r7, r3
 8006c9e:	1988      	adds	r0, r1, r6
 8006ca0:	6800      	ldr	r0, [r0, #0]
 8006ca2:	f7fb fdc1 	bl	8002828 <__aeabi_f2d>
 8006ca6:	0002      	movs	r2, r0
 8006ca8:	000b      	movs	r3, r1
 8006caa:	0020      	movs	r0, r4
 8006cac:	0029      	movs	r1, r5
 8006cae:	f7fb fa73 	bl	8002198 <__aeabi_dsub>
 8006cb2:	0003      	movs	r3, r0
 8006cb4:	000c      	movs	r4, r1
 8006cb6:	001a      	movs	r2, r3
 8006cb8:	0023      	movs	r3, r4
 8006cba:	6938      	ldr	r0, [r7, #16]
 8006cbc:	6979      	ldr	r1, [r7, #20]
 8006cbe:	f7fa fff9 	bl	8001cb4 <__aeabi_dmul>
 8006cc2:	0003      	movs	r3, r0
 8006cc4:	000c      	movs	r4, r1
 8006cc6:	001a      	movs	r2, r3
 8006cc8:	0023      	movs	r3, r4
 8006cca:	69b8      	ldr	r0, [r7, #24]
 8006ccc:	69f9      	ldr	r1, [r7, #28]
 8006cce:	f7fa f9d3 	bl	8001078 <__aeabi_dadd>
 8006cd2:	0003      	movs	r3, r0
 8006cd4:	000c      	movs	r4, r1
 8006cd6:	0018      	movs	r0, r3
 8006cd8:	0021      	movs	r1, r4
 8006cda:	f7fb fdf7 	bl	80028cc <__aeabi_d2f>
 8006cde:	1c03      	adds	r3, r0, #0
 8006ce0:	637b      	str	r3, [r7, #52]	; 0x34
 8006ce2:	6ff9      	ldr	r1, [r7, #124]	; 0x7c
 8006ce4:	6ef8      	ldr	r0, [r7, #108]	; 0x6c
 8006ce6:	f7f9 ff79 	bl	8000bdc <__aeabi_fsub>
 8006cea:	1c03      	adds	r3, r0, #0
 8006cec:	1c19      	adds	r1, r3, #0
 8006cee:	1c18      	adds	r0, r3, #0
 8006cf0:	f7f9 fad0 	bl	8000294 <__aeabi_fadd>
 8006cf4:	1c03      	adds	r3, r0, #0
 8006cf6:	25c0      	movs	r5, #192	; 0xc0
 8006cf8:	2620      	movs	r6, #32
 8006cfa:	19bc      	adds	r4, r7, r6
 8006cfc:	1960      	adds	r0, r4, r5
 8006cfe:	6801      	ldr	r1, [r0, #0]
 8006d00:	1c18      	adds	r0, r3, #0
 8006d02:	f7f9 ff6b 	bl	8000bdc <__aeabi_fsub>
 8006d06:	1c03      	adds	r3, r0, #0
 8006d08:	2098      	movs	r0, #152	; 0x98
 8006d0a:	1838      	adds	r0, r7, r0
 8006d0c:	6801      	ldr	r1, [r0, #0]
 8006d0e:	1c18      	adds	r0, r3, #0
 8006d10:	f7f9 fe32 	bl	8000978 <__aeabi_fmul>
 8006d14:	1c03      	adds	r3, r0, #0
 8006d16:	1c1c      	adds	r4, r3, #0
 8006d18:	6e79      	ldr	r1, [r7, #100]	; 0x64
 8006d1a:	2280      	movs	r2, #128	; 0x80
 8006d1c:	18b8      	adds	r0, r7, r2
 8006d1e:	6800      	ldr	r0, [r0, #0]
 8006d20:	f7f9 fab8 	bl	8000294 <__aeabi_fadd>
 8006d24:	1c03      	adds	r3, r0, #0
 8006d26:	1c19      	adds	r1, r3, #0
 8006d28:	1c18      	adds	r0, r3, #0
 8006d2a:	f7f9 fab3 	bl	8000294 <__aeabi_fadd>
 8006d2e:	1c03      	adds	r3, r0, #0
 8006d30:	21c4      	movs	r1, #196	; 0xc4
 8006d32:	2020      	movs	r0, #32
 8006d34:	4684      	mov	ip, r0
 8006d36:	44bc      	add	ip, r7
 8006d38:	4461      	add	r1, ip
 8006d3a:	6809      	ldr	r1, [r1, #0]
 8006d3c:	1c18      	adds	r0, r3, #0
 8006d3e:	f7f9 ff4d 	bl	8000bdc <__aeabi_fsub>
 8006d42:	1c03      	adds	r3, r0, #0
 8006d44:	2194      	movs	r1, #148	; 0x94
 8006d46:	1879      	adds	r1, r7, r1
 8006d48:	6809      	ldr	r1, [r1, #0]
 8006d4a:	1c18      	adds	r0, r3, #0
 8006d4c:	f7f9 fe14 	bl	8000978 <__aeabi_fmul>
 8006d50:	1c03      	adds	r3, r0, #0
 8006d52:	1c19      	adds	r1, r3, #0
 8006d54:	1c20      	adds	r0, r4, #0
 8006d56:	f7f9 fa9d 	bl	8000294 <__aeabi_fadd>
 8006d5a:	1c03      	adds	r3, r0, #0
 8006d5c:	1c18      	adds	r0, r3, #0
 8006d5e:	f7fb fd63 	bl	8002828 <__aeabi_f2d>
 8006d62:	0004      	movs	r4, r0
 8006d64:	000d      	movs	r5, r1
 8006d66:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8006d68:	2280      	movs	r2, #128	; 0x80
 8006d6a:	0612      	lsls	r2, r2, #24
 8006d6c:	405a      	eors	r2, r3
 8006d6e:	4b3a      	ldr	r3, [pc, #232]	; (8006e58 <MadgwickAHRSupdate+0x1570>)
 8006d70:	681b      	ldr	r3, [r3, #0]
 8006d72:	1c19      	adds	r1, r3, #0
 8006d74:	1c10      	adds	r0, r2, #0
 8006d76:	f7f9 fdff 	bl	8000978 <__aeabi_fmul>
 8006d7a:	1c03      	adds	r3, r0, #0
 8006d7c:	1c1e      	adds	r6, r3, #0
 8006d7e:	4b35      	ldr	r3, [pc, #212]	; (8006e54 <MadgwickAHRSupdate+0x156c>)
 8006d80:	681b      	ldr	r3, [r3, #0]
 8006d82:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 8006d84:	1c18      	adds	r0, r3, #0
 8006d86:	f7f9 fdf7 	bl	8000978 <__aeabi_fmul>
 8006d8a:	1c03      	adds	r3, r0, #0
 8006d8c:	1c19      	adds	r1, r3, #0
 8006d8e:	1c30      	adds	r0, r6, #0
 8006d90:	f7f9 fa80 	bl	8000294 <__aeabi_fadd>
 8006d94:	1c03      	adds	r3, r0, #0
 8006d96:	1c18      	adds	r0, r3, #0
 8006d98:	f7fb fd46 	bl	8002828 <__aeabi_f2d>
 8006d9c:	61b8      	str	r0, [r7, #24]
 8006d9e:	61f9      	str	r1, [r7, #28]
 8006da0:	6cf8      	ldr	r0, [r7, #76]	; 0x4c
 8006da2:	f7fb fd41 	bl	8002828 <__aeabi_f2d>
 8006da6:	6138      	str	r0, [r7, #16]
 8006da8:	6179      	str	r1, [r7, #20]
 8006daa:	6eb8      	ldr	r0, [r7, #104]	; 0x68
 8006dac:	f7fb fd3c 	bl	8002828 <__aeabi_f2d>
 8006db0:	0002      	movs	r2, r0
 8006db2:	000b      	movs	r3, r1
 8006db4:	2000      	movs	r0, #0
 8006db6:	4926      	ldr	r1, [pc, #152]	; (8006e50 <MadgwickAHRSupdate+0x1568>)
 8006db8:	f7fb f9ee 	bl	8002198 <__aeabi_dsub>
 8006dbc:	0002      	movs	r2, r0
 8006dbe:	000b      	movs	r3, r1
 8006dc0:	60ba      	str	r2, [r7, #8]
 8006dc2:	60fb      	str	r3, [r7, #12]
 8006dc4:	6e38      	ldr	r0, [r7, #96]	; 0x60
 8006dc6:	f7fb fd2f 	bl	8002828 <__aeabi_f2d>
 8006dca:	0002      	movs	r2, r0
 8006dcc:	000b      	movs	r3, r1
 8006dce:	68b8      	ldr	r0, [r7, #8]
 8006dd0:	68f9      	ldr	r1, [r7, #12]
 8006dd2:	f7fb f9e1 	bl	8002198 <__aeabi_dsub>
 8006dd6:	0002      	movs	r2, r0
 8006dd8:	000b      	movs	r3, r1
 8006dda:	6938      	ldr	r0, [r7, #16]
 8006ddc:	6979      	ldr	r1, [r7, #20]
 8006dde:	f7fa ff69 	bl	8001cb4 <__aeabi_dmul>
 8006de2:	0002      	movs	r2, r0
 8006de4:	000b      	movs	r3, r1
 8006de6:	613a      	str	r2, [r7, #16]
 8006de8:	617b      	str	r3, [r7, #20]
 8006dea:	6ff9      	ldr	r1, [r7, #124]	; 0x7c
 8006dec:	6ef8      	ldr	r0, [r7, #108]	; 0x6c
 8006dee:	f7f9 fef5 	bl	8000bdc <__aeabi_fsub>
 8006df2:	1c03      	adds	r3, r0, #0
 8006df4:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 8006df6:	1c18      	adds	r0, r3, #0
 8006df8:	f7f9 fdbe 	bl	8000978 <__aeabi_fmul>
 8006dfc:	1c03      	adds	r3, r0, #0
 8006dfe:	1c18      	adds	r0, r3, #0
 8006e00:	f7fb fd12 	bl	8002828 <__aeabi_f2d>
 8006e04:	0002      	movs	r2, r0
 8006e06:	000b      	movs	r3, r1
 8006e08:	6938      	ldr	r0, [r7, #16]
 8006e0a:	6979      	ldr	r1, [r7, #20]
 8006e0c:	f7fa f934 	bl	8001078 <__aeabi_dadd>
 8006e10:	0002      	movs	r2, r0
 8006e12:	000b      	movs	r3, r1
 8006e14:	613a      	str	r2, [r7, #16]
 8006e16:	617b      	str	r3, [r7, #20]
 8006e18:	23cc      	movs	r3, #204	; 0xcc
 8006e1a:	2120      	movs	r1, #32
 8006e1c:	468c      	mov	ip, r1
 8006e1e:	44bc      	add	ip, r7
 8006e20:	4463      	add	r3, ip
 8006e22:	6818      	ldr	r0, [r3, #0]
 8006e24:	f7fb fd00 	bl	8002828 <__aeabi_f2d>
 8006e28:	0002      	movs	r2, r0
 8006e2a:	000b      	movs	r3, r1
 8006e2c:	6938      	ldr	r0, [r7, #16]
 8006e2e:	6979      	ldr	r1, [r7, #20]
 8006e30:	f7fb f9b2 	bl	8002198 <__aeabi_dsub>
 8006e34:	0002      	movs	r2, r0
 8006e36:	000b      	movs	r3, r1
 8006e38:	69b8      	ldr	r0, [r7, #24]
 8006e3a:	69f9      	ldr	r1, [r7, #28]
 8006e3c:	f7fa ff3a 	bl	8001cb4 <__aeabi_dmul>
 8006e40:	0002      	movs	r2, r0
 8006e42:	000b      	movs	r3, r1
 8006e44:	0020      	movs	r0, r4
 8006e46:	e009      	b.n	8006e5c <MadgwickAHRSupdate+0x1574>
 8006e48:	200001d4 	.word	0x200001d4
 8006e4c:	20000000 	.word	0x20000000
 8006e50:	3fe00000 	.word	0x3fe00000
 8006e54:	200001d0 	.word	0x200001d0
 8006e58:	200001d8 	.word	0x200001d8
 8006e5c:	0029      	movs	r1, r5
 8006e5e:	f7fa f90b 	bl	8001078 <__aeabi_dadd>
 8006e62:	0003      	movs	r3, r0
 8006e64:	000c      	movs	r4, r1
 8006e66:	0025      	movs	r5, r4
 8006e68:	001c      	movs	r4, r3
 8006e6a:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006e6c:	2280      	movs	r2, #128	; 0x80
 8006e6e:	0612      	lsls	r2, r2, #24
 8006e70:	405a      	eors	r2, r3
 8006e72:	4bfc      	ldr	r3, [pc, #1008]	; (8007264 <MadgwickAHRSupdate+0x197c>)
 8006e74:	681b      	ldr	r3, [r3, #0]
 8006e76:	1c19      	adds	r1, r3, #0
 8006e78:	1c10      	adds	r0, r2, #0
 8006e7a:	f7f9 fd7d 	bl	8000978 <__aeabi_fmul>
 8006e7e:	1c03      	adds	r3, r0, #0
 8006e80:	1c1e      	adds	r6, r3, #0
 8006e82:	4bf9      	ldr	r3, [pc, #996]	; (8007268 <MadgwickAHRSupdate+0x1980>)
 8006e84:	681b      	ldr	r3, [r3, #0]
 8006e86:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 8006e88:	1c18      	adds	r0, r3, #0
 8006e8a:	f7f9 fd75 	bl	8000978 <__aeabi_fmul>
 8006e8e:	1c03      	adds	r3, r0, #0
 8006e90:	1c19      	adds	r1, r3, #0
 8006e92:	1c30      	adds	r0, r6, #0
 8006e94:	f7f9 f9fe 	bl	8000294 <__aeabi_fadd>
 8006e98:	1c03      	adds	r3, r0, #0
 8006e9a:	1c1e      	adds	r6, r3, #0
 8006e9c:	6fb9      	ldr	r1, [r7, #120]	; 0x78
 8006e9e:	6f38      	ldr	r0, [r7, #112]	; 0x70
 8006ea0:	f7f9 fe9c 	bl	8000bdc <__aeabi_fsub>
 8006ea4:	1c03      	adds	r3, r0, #0
 8006ea6:	6cf9      	ldr	r1, [r7, #76]	; 0x4c
 8006ea8:	1c18      	adds	r0, r3, #0
 8006eaa:	f7f9 fd65 	bl	8000978 <__aeabi_fmul>
 8006eae:	1c03      	adds	r3, r0, #0
 8006eb0:	61bb      	str	r3, [r7, #24]
 8006eb2:	6e79      	ldr	r1, [r7, #100]	; 0x64
 8006eb4:	2280      	movs	r2, #128	; 0x80
 8006eb6:	18ba      	adds	r2, r7, r2
 8006eb8:	6810      	ldr	r0, [r2, #0]
 8006eba:	f7f9 f9eb 	bl	8000294 <__aeabi_fadd>
 8006ebe:	1c03      	adds	r3, r0, #0
 8006ec0:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 8006ec2:	1c18      	adds	r0, r3, #0
 8006ec4:	f7f9 fd58 	bl	8000978 <__aeabi_fmul>
 8006ec8:	1c03      	adds	r3, r0, #0
 8006eca:	1c19      	adds	r1, r3, #0
 8006ecc:	69b8      	ldr	r0, [r7, #24]
 8006ece:	f7f9 f9e1 	bl	8000294 <__aeabi_fadd>
 8006ed2:	1c03      	adds	r3, r0, #0
 8006ed4:	22d0      	movs	r2, #208	; 0xd0
 8006ed6:	2120      	movs	r1, #32
 8006ed8:	1879      	adds	r1, r7, r1
 8006eda:	1889      	adds	r1, r1, r2
 8006edc:	6809      	ldr	r1, [r1, #0]
 8006ede:	1c18      	adds	r0, r3, #0
 8006ee0:	f7f9 fe7c 	bl	8000bdc <__aeabi_fsub>
 8006ee4:	1c03      	adds	r3, r0, #0
 8006ee6:	1c19      	adds	r1, r3, #0
 8006ee8:	1c30      	adds	r0, r6, #0
 8006eea:	f7f9 fd45 	bl	8000978 <__aeabi_fmul>
 8006eee:	1c03      	adds	r3, r0, #0
 8006ef0:	1c18      	adds	r0, r3, #0
 8006ef2:	f7fb fc99 	bl	8002828 <__aeabi_f2d>
 8006ef6:	0002      	movs	r2, r0
 8006ef8:	000b      	movs	r3, r1
 8006efa:	0020      	movs	r0, r4
 8006efc:	0029      	movs	r1, r5
 8006efe:	f7fa f8bb 	bl	8001078 <__aeabi_dadd>
 8006f02:	0003      	movs	r3, r0
 8006f04:	000c      	movs	r4, r1
 8006f06:	61bb      	str	r3, [r7, #24]
 8006f08:	61fc      	str	r4, [r7, #28]
 8006f0a:	4bd8      	ldr	r3, [pc, #864]	; (800726c <MadgwickAHRSupdate+0x1984>)
 8006f0c:	681b      	ldr	r3, [r3, #0]
 8006f0e:	6cf9      	ldr	r1, [r7, #76]	; 0x4c
 8006f10:	1c18      	adds	r0, r3, #0
 8006f12:	f7f9 fd31 	bl	8000978 <__aeabi_fmul>
 8006f16:	1c03      	adds	r3, r0, #0
 8006f18:	1c18      	adds	r0, r3, #0
 8006f1a:	f7fb fc85 	bl	8002828 <__aeabi_f2d>
 8006f1e:	6138      	str	r0, [r7, #16]
 8006f20:	6179      	str	r1, [r7, #20]
 8006f22:	6ef9      	ldr	r1, [r7, #108]	; 0x6c
 8006f24:	6ff8      	ldr	r0, [r7, #124]	; 0x7c
 8006f26:	f7f9 f9b5 	bl	8000294 <__aeabi_fadd>
 8006f2a:	1c03      	adds	r3, r0, #0
 8006f2c:	6cf9      	ldr	r1, [r7, #76]	; 0x4c
 8006f2e:	1c18      	adds	r0, r3, #0
 8006f30:	f7f9 fd22 	bl	8000978 <__aeabi_fmul>
 8006f34:	1c03      	adds	r3, r0, #0
 8006f36:	1c18      	adds	r0, r3, #0
 8006f38:	f7fb fc76 	bl	8002828 <__aeabi_f2d>
 8006f3c:	60b8      	str	r0, [r7, #8]
 8006f3e:	60f9      	str	r1, [r7, #12]
 8006f40:	6cb8      	ldr	r0, [r7, #72]	; 0x48
 8006f42:	f7fb fc71 	bl	8002828 <__aeabi_f2d>
 8006f46:	6038      	str	r0, [r7, #0]
 8006f48:	6079      	str	r1, [r7, #4]
 8006f4a:	6f78      	ldr	r0, [r7, #116]	; 0x74
 8006f4c:	f7fb fc6c 	bl	8002828 <__aeabi_f2d>
 8006f50:	0003      	movs	r3, r0
 8006f52:	000c      	movs	r4, r1
 8006f54:	001a      	movs	r2, r3
 8006f56:	0023      	movs	r3, r4
 8006f58:	2000      	movs	r0, #0
 8006f5a:	49c5      	ldr	r1, [pc, #788]	; (8007270 <MadgwickAHRSupdate+0x1988>)
 8006f5c:	f7fb f91c 	bl	8002198 <__aeabi_dsub>
 8006f60:	0003      	movs	r3, r0
 8006f62:	000c      	movs	r4, r1
 8006f64:	0025      	movs	r5, r4
 8006f66:	001c      	movs	r4, r3
 8006f68:	6eb8      	ldr	r0, [r7, #104]	; 0x68
 8006f6a:	f7fb fc5d 	bl	8002828 <__aeabi_f2d>
 8006f6e:	0002      	movs	r2, r0
 8006f70:	000b      	movs	r3, r1
 8006f72:	0020      	movs	r0, r4
 8006f74:	0029      	movs	r1, r5
 8006f76:	f7fb f90f 	bl	8002198 <__aeabi_dsub>
 8006f7a:	0003      	movs	r3, r0
 8006f7c:	000c      	movs	r4, r1
 8006f7e:	001a      	movs	r2, r3
 8006f80:	0023      	movs	r3, r4
 8006f82:	6838      	ldr	r0, [r7, #0]
 8006f84:	6879      	ldr	r1, [r7, #4]
 8006f86:	f7fa fe95 	bl	8001cb4 <__aeabi_dmul>
 8006f8a:	0003      	movs	r3, r0
 8006f8c:	000c      	movs	r4, r1
 8006f8e:	001a      	movs	r2, r3
 8006f90:	0023      	movs	r3, r4
 8006f92:	68b8      	ldr	r0, [r7, #8]
 8006f94:	68f9      	ldr	r1, [r7, #12]
 8006f96:	f7fa f86f 	bl	8001078 <__aeabi_dadd>
 8006f9a:	0003      	movs	r3, r0
 8006f9c:	000c      	movs	r4, r1
 8006f9e:	0025      	movs	r5, r4
 8006fa0:	001c      	movs	r4, r3
 8006fa2:	26d4      	movs	r6, #212	; 0xd4
 8006fa4:	2320      	movs	r3, #32
 8006fa6:	18fa      	adds	r2, r7, r3
 8006fa8:	1991      	adds	r1, r2, r6
 8006faa:	6808      	ldr	r0, [r1, #0]
 8006fac:	f7fb fc3c 	bl	8002828 <__aeabi_f2d>
 8006fb0:	0002      	movs	r2, r0
 8006fb2:	000b      	movs	r3, r1
 8006fb4:	0020      	movs	r0, r4
 8006fb6:	0029      	movs	r1, r5
 8006fb8:	f7fb f8ee 	bl	8002198 <__aeabi_dsub>
 8006fbc:	0003      	movs	r3, r0
 8006fbe:	000c      	movs	r4, r1
 8006fc0:	001a      	movs	r2, r3
 8006fc2:	0023      	movs	r3, r4
 8006fc4:	6938      	ldr	r0, [r7, #16]
 8006fc6:	6979      	ldr	r1, [r7, #20]
 8006fc8:	f7fa fe74 	bl	8001cb4 <__aeabi_dmul>
 8006fcc:	0003      	movs	r3, r0
 8006fce:	000c      	movs	r4, r1
 8006fd0:	001a      	movs	r2, r3
 8006fd2:	0023      	movs	r3, r4
 8006fd4:	69b8      	ldr	r0, [r7, #24]
 8006fd6:	69f9      	ldr	r1, [r7, #28]
 8006fd8:	f7fa f84e 	bl	8001078 <__aeabi_dadd>
 8006fdc:	0003      	movs	r3, r0
 8006fde:	000c      	movs	r4, r1
 8006fe0:	0018      	movs	r0, r3
 8006fe2:	0021      	movs	r1, r4
 8006fe4:	f7fb fc72 	bl	80028cc <__aeabi_d2f>
 8006fe8:	1c03      	adds	r3, r0, #0
 8006fea:	633b      	str	r3, [r7, #48]	; 0x30
 8006fec:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8006fee:	6bf8      	ldr	r0, [r7, #60]	; 0x3c
 8006ff0:	f7f9 fcc2 	bl	8000978 <__aeabi_fmul>
 8006ff4:	1c03      	adds	r3, r0, #0
 8006ff6:	1c1c      	adds	r4, r3, #0
 8006ff8:	6bb9      	ldr	r1, [r7, #56]	; 0x38
 8006ffa:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 8006ffc:	f7f9 fcbc 	bl	8000978 <__aeabi_fmul>
 8007000:	1c03      	adds	r3, r0, #0
 8007002:	1c19      	adds	r1, r3, #0
 8007004:	1c20      	adds	r0, r4, #0
 8007006:	f7f9 f945 	bl	8000294 <__aeabi_fadd>
 800700a:	1c03      	adds	r3, r0, #0
 800700c:	1c1c      	adds	r4, r3, #0
 800700e:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8007010:	6b78      	ldr	r0, [r7, #52]	; 0x34
 8007012:	f7f9 fcb1 	bl	8000978 <__aeabi_fmul>
 8007016:	1c03      	adds	r3, r0, #0
 8007018:	1c19      	adds	r1, r3, #0
 800701a:	1c20      	adds	r0, r4, #0
 800701c:	f7f9 f93a 	bl	8000294 <__aeabi_fadd>
 8007020:	1c03      	adds	r3, r0, #0
 8007022:	1c1c      	adds	r4, r3, #0
 8007024:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8007026:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8007028:	f7f9 fca6 	bl	8000978 <__aeabi_fmul>
 800702c:	1c03      	adds	r3, r0, #0
 800702e:	1c19      	adds	r1, r3, #0
 8007030:	1c20      	adds	r0, r4, #0
 8007032:	f7f9 f92f 	bl	8000294 <__aeabi_fadd>
 8007036:	1c03      	adds	r3, r0, #0
 8007038:	1c18      	adds	r0, r3, #0
 800703a:	f000 fdad 	bl	8007b98 <invSqrt>
 800703e:	1c03      	adds	r3, r0, #0
 8007040:	2290      	movs	r2, #144	; 0x90
 8007042:	0014      	movs	r4, r2
 8007044:	2120      	movs	r1, #32
 8007046:	468c      	mov	ip, r1
 8007048:	44bc      	add	ip, r7
 800704a:	4462      	add	r2, ip
 800704c:	6013      	str	r3, [r2, #0]
 800704e:	2620      	movs	r6, #32
 8007050:	19bb      	adds	r3, r7, r6
 8007052:	191b      	adds	r3, r3, r4
 8007054:	6819      	ldr	r1, [r3, #0]
 8007056:	6bf8      	ldr	r0, [r7, #60]	; 0x3c
 8007058:	f7f9 fc8e 	bl	8000978 <__aeabi_fmul>
 800705c:	1c03      	adds	r3, r0, #0
 800705e:	63fb      	str	r3, [r7, #60]	; 0x3c
 8007060:	19bb      	adds	r3, r7, r6
 8007062:	191b      	adds	r3, r3, r4
 8007064:	6819      	ldr	r1, [r3, #0]
 8007066:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 8007068:	f7f9 fc86 	bl	8000978 <__aeabi_fmul>
 800706c:	1c03      	adds	r3, r0, #0
 800706e:	63bb      	str	r3, [r7, #56]	; 0x38
 8007070:	19bb      	adds	r3, r7, r6
 8007072:	191b      	adds	r3, r3, r4
 8007074:	6819      	ldr	r1, [r3, #0]
 8007076:	6b78      	ldr	r0, [r7, #52]	; 0x34
 8007078:	f7f9 fc7e 	bl	8000978 <__aeabi_fmul>
 800707c:	1c03      	adds	r3, r0, #0
 800707e:	637b      	str	r3, [r7, #52]	; 0x34
 8007080:	19bb      	adds	r3, r7, r6
 8007082:	191b      	adds	r3, r3, r4
 8007084:	6819      	ldr	r1, [r3, #0]
 8007086:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8007088:	f7f9 fc76 	bl	8000978 <__aeabi_fmul>
 800708c:	1c03      	adds	r3, r0, #0
 800708e:	633b      	str	r3, [r7, #48]	; 0x30
 8007090:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8007092:	24dc      	movs	r4, #220	; 0xdc
 8007094:	19bb      	adds	r3, r7, r6
 8007096:	191b      	adds	r3, r3, r4
 8007098:	6818      	ldr	r0, [r3, #0]
 800709a:	f7f9 fc6d 	bl	8000978 <__aeabi_fmul>
 800709e:	1c03      	adds	r3, r0, #0
 80070a0:	1c19      	adds	r1, r3, #0
 80070a2:	25a4      	movs	r5, #164	; 0xa4
 80070a4:	19bb      	adds	r3, r7, r6
 80070a6:	195b      	adds	r3, r3, r5
 80070a8:	6818      	ldr	r0, [r3, #0]
 80070aa:	f7f9 fd97 	bl	8000bdc <__aeabi_fsub>
 80070ae:	1c03      	adds	r3, r0, #0
 80070b0:	19ba      	adds	r2, r7, r6
 80070b2:	1952      	adds	r2, r2, r5
 80070b4:	6013      	str	r3, [r2, #0]
 80070b6:	6bb9      	ldr	r1, [r7, #56]	; 0x38
 80070b8:	19bb      	adds	r3, r7, r6
 80070ba:	191b      	adds	r3, r3, r4
 80070bc:	6818      	ldr	r0, [r3, #0]
 80070be:	f7f9 fc5b 	bl	8000978 <__aeabi_fmul>
 80070c2:	1c03      	adds	r3, r0, #0
 80070c4:	1c19      	adds	r1, r3, #0
 80070c6:	25a0      	movs	r5, #160	; 0xa0
 80070c8:	19bb      	adds	r3, r7, r6
 80070ca:	195b      	adds	r3, r3, r5
 80070cc:	6818      	ldr	r0, [r3, #0]
 80070ce:	f7f9 fd85 	bl	8000bdc <__aeabi_fsub>
 80070d2:	1c03      	adds	r3, r0, #0
 80070d4:	19ba      	adds	r2, r7, r6
 80070d6:	1952      	adds	r2, r2, r5
 80070d8:	6013      	str	r3, [r2, #0]
 80070da:	6b79      	ldr	r1, [r7, #52]	; 0x34
 80070dc:	19bb      	adds	r3, r7, r6
 80070de:	191b      	adds	r3, r3, r4
 80070e0:	6818      	ldr	r0, [r3, #0]
 80070e2:	f7f9 fc49 	bl	8000978 <__aeabi_fmul>
 80070e6:	1c03      	adds	r3, r0, #0
 80070e8:	1c19      	adds	r1, r3, #0
 80070ea:	259c      	movs	r5, #156	; 0x9c
 80070ec:	19bb      	adds	r3, r7, r6
 80070ee:	195b      	adds	r3, r3, r5
 80070f0:	6818      	ldr	r0, [r3, #0]
 80070f2:	f7f9 fd73 	bl	8000bdc <__aeabi_fsub>
 80070f6:	1c03      	adds	r3, r0, #0
 80070f8:	19ba      	adds	r2, r7, r6
 80070fa:	1952      	adds	r2, r2, r5
 80070fc:	6013      	str	r3, [r2, #0]
 80070fe:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8007100:	0035      	movs	r5, r6
 8007102:	19bb      	adds	r3, r7, r6
 8007104:	191b      	adds	r3, r3, r4
 8007106:	6818      	ldr	r0, [r3, #0]
 8007108:	f7f9 fc36 	bl	8000978 <__aeabi_fmul>
 800710c:	1c03      	adds	r3, r0, #0
 800710e:	1c19      	adds	r1, r3, #0
 8007110:	2498      	movs	r4, #152	; 0x98
 8007112:	197b      	adds	r3, r7, r5
 8007114:	191b      	adds	r3, r3, r4
 8007116:	6818      	ldr	r0, [r3, #0]
 8007118:	f7f9 fd60 	bl	8000bdc <__aeabi_fsub>
 800711c:	1c03      	adds	r3, r0, #0
 800711e:	197a      	adds	r2, r7, r5
 8007120:	1912      	adds	r2, r2, r4
 8007122:	6013      	str	r3, [r2, #0]
 8007124:	2494      	movs	r4, #148	; 0x94
 8007126:	2520      	movs	r5, #32
 8007128:	197b      	adds	r3, r7, r5
 800712a:	191b      	adds	r3, r3, r4
 800712c:	6819      	ldr	r1, [r3, #0]
 800712e:	20fe      	movs	r0, #254	; 0xfe
 8007130:	0580      	lsls	r0, r0, #22
 8007132:	f7f9 fa49 	bl	80005c8 <__aeabi_fdiv>
 8007136:	1c03      	adds	r3, r0, #0
 8007138:	22a4      	movs	r2, #164	; 0xa4
 800713a:	2120      	movs	r1, #32
 800713c:	468c      	mov	ip, r1
 800713e:	44bc      	add	ip, r7
 8007140:	4462      	add	r2, ip
 8007142:	6811      	ldr	r1, [r2, #0]
 8007144:	1c18      	adds	r0, r3, #0
 8007146:	f7f9 fc17 	bl	8000978 <__aeabi_fmul>
 800714a:	1c03      	adds	r3, r0, #0
 800714c:	1c1a      	adds	r2, r3, #0
 800714e:	4b45      	ldr	r3, [pc, #276]	; (8007264 <MadgwickAHRSupdate+0x197c>)
 8007150:	681b      	ldr	r3, [r3, #0]
 8007152:	1c19      	adds	r1, r3, #0
 8007154:	1c10      	adds	r0, r2, #0
 8007156:	f7f9 f89d 	bl	8000294 <__aeabi_fadd>
 800715a:	1c03      	adds	r3, r0, #0
 800715c:	1c1a      	adds	r2, r3, #0
 800715e:	4b41      	ldr	r3, [pc, #260]	; (8007264 <MadgwickAHRSupdate+0x197c>)
 8007160:	601a      	str	r2, [r3, #0]
 8007162:	197b      	adds	r3, r7, r5
 8007164:	191b      	adds	r3, r3, r4
 8007166:	6819      	ldr	r1, [r3, #0]
 8007168:	20fe      	movs	r0, #254	; 0xfe
 800716a:	0580      	lsls	r0, r0, #22
 800716c:	f7f9 fa2c 	bl	80005c8 <__aeabi_fdiv>
 8007170:	1c03      	adds	r3, r0, #0
 8007172:	22a0      	movs	r2, #160	; 0xa0
 8007174:	2120      	movs	r1, #32
 8007176:	468c      	mov	ip, r1
 8007178:	44bc      	add	ip, r7
 800717a:	4462      	add	r2, ip
 800717c:	6811      	ldr	r1, [r2, #0]
 800717e:	1c18      	adds	r0, r3, #0
 8007180:	f7f9 fbfa 	bl	8000978 <__aeabi_fmul>
 8007184:	1c03      	adds	r3, r0, #0
 8007186:	1c1a      	adds	r2, r3, #0
 8007188:	4b38      	ldr	r3, [pc, #224]	; (800726c <MadgwickAHRSupdate+0x1984>)
 800718a:	681b      	ldr	r3, [r3, #0]
 800718c:	1c19      	adds	r1, r3, #0
 800718e:	1c10      	adds	r0, r2, #0
 8007190:	f7f9 f880 	bl	8000294 <__aeabi_fadd>
 8007194:	1c03      	adds	r3, r0, #0
 8007196:	1c1a      	adds	r2, r3, #0
 8007198:	4b34      	ldr	r3, [pc, #208]	; (800726c <MadgwickAHRSupdate+0x1984>)
 800719a:	601a      	str	r2, [r3, #0]
 800719c:	197b      	adds	r3, r7, r5
 800719e:	191b      	adds	r3, r3, r4
 80071a0:	6819      	ldr	r1, [r3, #0]
 80071a2:	20fe      	movs	r0, #254	; 0xfe
 80071a4:	0580      	lsls	r0, r0, #22
 80071a6:	f7f9 fa0f 	bl	80005c8 <__aeabi_fdiv>
 80071aa:	1c03      	adds	r3, r0, #0
 80071ac:	229c      	movs	r2, #156	; 0x9c
 80071ae:	2120      	movs	r1, #32
 80071b0:	468c      	mov	ip, r1
 80071b2:	44bc      	add	ip, r7
 80071b4:	4462      	add	r2, ip
 80071b6:	6811      	ldr	r1, [r2, #0]
 80071b8:	1c18      	adds	r0, r3, #0
 80071ba:	f7f9 fbdd 	bl	8000978 <__aeabi_fmul>
 80071be:	1c03      	adds	r3, r0, #0
 80071c0:	1c1a      	adds	r2, r3, #0
 80071c2:	4b29      	ldr	r3, [pc, #164]	; (8007268 <MadgwickAHRSupdate+0x1980>)
 80071c4:	681b      	ldr	r3, [r3, #0]
 80071c6:	1c19      	adds	r1, r3, #0
 80071c8:	1c10      	adds	r0, r2, #0
 80071ca:	f7f9 f863 	bl	8000294 <__aeabi_fadd>
 80071ce:	1c03      	adds	r3, r0, #0
 80071d0:	1c1a      	adds	r2, r3, #0
 80071d2:	4b25      	ldr	r3, [pc, #148]	; (8007268 <MadgwickAHRSupdate+0x1980>)
 80071d4:	601a      	str	r2, [r3, #0]
 80071d6:	197b      	adds	r3, r7, r5
 80071d8:	191b      	adds	r3, r3, r4
 80071da:	6819      	ldr	r1, [r3, #0]
 80071dc:	20fe      	movs	r0, #254	; 0xfe
 80071de:	0580      	lsls	r0, r0, #22
 80071e0:	f7f9 f9f2 	bl	80005c8 <__aeabi_fdiv>
 80071e4:	1c03      	adds	r3, r0, #0
 80071e6:	2298      	movs	r2, #152	; 0x98
 80071e8:	2120      	movs	r1, #32
 80071ea:	468c      	mov	ip, r1
 80071ec:	44bc      	add	ip, r7
 80071ee:	4462      	add	r2, ip
 80071f0:	6811      	ldr	r1, [r2, #0]
 80071f2:	1c18      	adds	r0, r3, #0
 80071f4:	f7f9 fbc0 	bl	8000978 <__aeabi_fmul>
 80071f8:	1c03      	adds	r3, r0, #0
 80071fa:	1c1a      	adds	r2, r3, #0
 80071fc:	4b1d      	ldr	r3, [pc, #116]	; (8007274 <MadgwickAHRSupdate+0x198c>)
 80071fe:	681b      	ldr	r3, [r3, #0]
 8007200:	1c19      	adds	r1, r3, #0
 8007202:	1c10      	adds	r0, r2, #0
 8007204:	f7f9 f846 	bl	8000294 <__aeabi_fadd>
 8007208:	1c03      	adds	r3, r0, #0
 800720a:	1c1a      	adds	r2, r3, #0
 800720c:	4b19      	ldr	r3, [pc, #100]	; (8007274 <MadgwickAHRSupdate+0x198c>)
 800720e:	601a      	str	r2, [r3, #0]
 8007210:	4b14      	ldr	r3, [pc, #80]	; (8007264 <MadgwickAHRSupdate+0x197c>)
 8007212:	681a      	ldr	r2, [r3, #0]
 8007214:	4b13      	ldr	r3, [pc, #76]	; (8007264 <MadgwickAHRSupdate+0x197c>)
 8007216:	681b      	ldr	r3, [r3, #0]
 8007218:	1c19      	adds	r1, r3, #0
 800721a:	1c10      	adds	r0, r2, #0
 800721c:	f7f9 fbac 	bl	8000978 <__aeabi_fmul>
 8007220:	1c03      	adds	r3, r0, #0
 8007222:	1c1c      	adds	r4, r3, #0
 8007224:	4b11      	ldr	r3, [pc, #68]	; (800726c <MadgwickAHRSupdate+0x1984>)
 8007226:	681a      	ldr	r2, [r3, #0]
 8007228:	4b10      	ldr	r3, [pc, #64]	; (800726c <MadgwickAHRSupdate+0x1984>)
 800722a:	681b      	ldr	r3, [r3, #0]
 800722c:	1c19      	adds	r1, r3, #0
 800722e:	1c10      	adds	r0, r2, #0
 8007230:	f7f9 fba2 	bl	8000978 <__aeabi_fmul>
 8007234:	1c03      	adds	r3, r0, #0
 8007236:	1c19      	adds	r1, r3, #0
 8007238:	1c20      	adds	r0, r4, #0
 800723a:	f7f9 f82b 	bl	8000294 <__aeabi_fadd>
 800723e:	1c03      	adds	r3, r0, #0
 8007240:	1c1c      	adds	r4, r3, #0
 8007242:	4b09      	ldr	r3, [pc, #36]	; (8007268 <MadgwickAHRSupdate+0x1980>)
 8007244:	681a      	ldr	r2, [r3, #0]
 8007246:	4b08      	ldr	r3, [pc, #32]	; (8007268 <MadgwickAHRSupdate+0x1980>)
 8007248:	681b      	ldr	r3, [r3, #0]
 800724a:	1c19      	adds	r1, r3, #0
 800724c:	1c10      	adds	r0, r2, #0
 800724e:	f7f9 fb93 	bl	8000978 <__aeabi_fmul>
 8007252:	1c03      	adds	r3, r0, #0
 8007254:	1c19      	adds	r1, r3, #0
 8007256:	1c20      	adds	r0, r4, #0
 8007258:	f7f9 f81c 	bl	8000294 <__aeabi_fadd>
 800725c:	1c03      	adds	r3, r0, #0
 800725e:	1c1c      	adds	r4, r3, #0
 8007260:	e00a      	b.n	8007278 <MadgwickAHRSupdate+0x1990>
 8007262:	46c0      	nop			; (mov r8, r8)
 8007264:	20000000 	.word	0x20000000
 8007268:	200001d4 	.word	0x200001d4
 800726c:	200001d0 	.word	0x200001d0
 8007270:	3fe00000 	.word	0x3fe00000
 8007274:	200001d8 	.word	0x200001d8
 8007278:	4b2d      	ldr	r3, [pc, #180]	; (8007330 <MadgwickAHRSupdate+0x1a48>)
 800727a:	681a      	ldr	r2, [r3, #0]
 800727c:	4b2c      	ldr	r3, [pc, #176]	; (8007330 <MadgwickAHRSupdate+0x1a48>)
 800727e:	681b      	ldr	r3, [r3, #0]
 8007280:	1c19      	adds	r1, r3, #0
 8007282:	1c10      	adds	r0, r2, #0
 8007284:	f7f9 fb78 	bl	8000978 <__aeabi_fmul>
 8007288:	1c03      	adds	r3, r0, #0
 800728a:	1c19      	adds	r1, r3, #0
 800728c:	1c20      	adds	r0, r4, #0
 800728e:	f7f9 f801 	bl	8000294 <__aeabi_fadd>
 8007292:	1c03      	adds	r3, r0, #0
 8007294:	1c18      	adds	r0, r3, #0
 8007296:	f000 fc7f 	bl	8007b98 <invSqrt>
 800729a:	1c03      	adds	r3, r0, #0
 800729c:	2490      	movs	r4, #144	; 0x90
 800729e:	197a      	adds	r2, r7, r5
 80072a0:	1912      	adds	r2, r2, r4
 80072a2:	6013      	str	r3, [r2, #0]
 80072a4:	4b23      	ldr	r3, [pc, #140]	; (8007334 <MadgwickAHRSupdate+0x1a4c>)
 80072a6:	681b      	ldr	r3, [r3, #0]
 80072a8:	197a      	adds	r2, r7, r5
 80072aa:	1912      	adds	r2, r2, r4
 80072ac:	6811      	ldr	r1, [r2, #0]
 80072ae:	1c18      	adds	r0, r3, #0
 80072b0:	f7f9 fb62 	bl	8000978 <__aeabi_fmul>
 80072b4:	1c03      	adds	r3, r0, #0
 80072b6:	1c1a      	adds	r2, r3, #0
 80072b8:	4b1e      	ldr	r3, [pc, #120]	; (8007334 <MadgwickAHRSupdate+0x1a4c>)
 80072ba:	601a      	str	r2, [r3, #0]
 80072bc:	4b1e      	ldr	r3, [pc, #120]	; (8007338 <MadgwickAHRSupdate+0x1a50>)
 80072be:	681b      	ldr	r3, [r3, #0]
 80072c0:	197a      	adds	r2, r7, r5
 80072c2:	1912      	adds	r2, r2, r4
 80072c4:	6811      	ldr	r1, [r2, #0]
 80072c6:	1c18      	adds	r0, r3, #0
 80072c8:	f7f9 fb56 	bl	8000978 <__aeabi_fmul>
 80072cc:	1c03      	adds	r3, r0, #0
 80072ce:	1c1a      	adds	r2, r3, #0
 80072d0:	4b19      	ldr	r3, [pc, #100]	; (8007338 <MadgwickAHRSupdate+0x1a50>)
 80072d2:	601a      	str	r2, [r3, #0]
 80072d4:	4b19      	ldr	r3, [pc, #100]	; (800733c <MadgwickAHRSupdate+0x1a54>)
 80072d6:	681b      	ldr	r3, [r3, #0]
 80072d8:	197a      	adds	r2, r7, r5
 80072da:	1912      	adds	r2, r2, r4
 80072dc:	6811      	ldr	r1, [r2, #0]
 80072de:	1c18      	adds	r0, r3, #0
 80072e0:	f7f9 fb4a 	bl	8000978 <__aeabi_fmul>
 80072e4:	1c03      	adds	r3, r0, #0
 80072e6:	1c1a      	adds	r2, r3, #0
 80072e8:	4b14      	ldr	r3, [pc, #80]	; (800733c <MadgwickAHRSupdate+0x1a54>)
 80072ea:	601a      	str	r2, [r3, #0]
 80072ec:	4b10      	ldr	r3, [pc, #64]	; (8007330 <MadgwickAHRSupdate+0x1a48>)
 80072ee:	681b      	ldr	r3, [r3, #0]
 80072f0:	197a      	adds	r2, r7, r5
 80072f2:	1912      	adds	r2, r2, r4
 80072f4:	6811      	ldr	r1, [r2, #0]
 80072f6:	1c18      	adds	r0, r3, #0
 80072f8:	f7f9 fb3e 	bl	8000978 <__aeabi_fmul>
 80072fc:	1c03      	adds	r3, r0, #0
 80072fe:	1c1a      	adds	r2, r3, #0
 8007300:	4b0b      	ldr	r3, [pc, #44]	; (8007330 <MadgwickAHRSupdate+0x1a48>)
 8007302:	601a      	str	r2, [r3, #0]
 8007304:	4b0b      	ldr	r3, [pc, #44]	; (8007334 <MadgwickAHRSupdate+0x1a4c>)
 8007306:	681a      	ldr	r2, [r3, #0]
 8007308:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800730a:	601a      	str	r2, [r3, #0]
 800730c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800730e:	3304      	adds	r3, #4
 8007310:	4a09      	ldr	r2, [pc, #36]	; (8007338 <MadgwickAHRSupdate+0x1a50>)
 8007312:	6812      	ldr	r2, [r2, #0]
 8007314:	601a      	str	r2, [r3, #0]
 8007316:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8007318:	3308      	adds	r3, #8
 800731a:	4a08      	ldr	r2, [pc, #32]	; (800733c <MadgwickAHRSupdate+0x1a54>)
 800731c:	6812      	ldr	r2, [r2, #0]
 800731e:	601a      	str	r2, [r3, #0]
 8007320:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8007322:	330c      	adds	r3, #12
 8007324:	4a02      	ldr	r2, [pc, #8]	; (8007330 <MadgwickAHRSupdate+0x1a48>)
 8007326:	6812      	ldr	r2, [r2, #0]
 8007328:	601a      	str	r2, [r3, #0]
 800732a:	46bd      	mov	sp, r7
 800732c:	b033      	add	sp, #204	; 0xcc
 800732e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007330:	200001d8 	.word	0x200001d8
 8007334:	20000000 	.word	0x20000000
 8007338:	200001d0 	.word	0x200001d0
 800733c:	200001d4 	.word	0x200001d4

08007340 <MadgwickAHRSupdateIMU>:
 8007340:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007342:	b09d      	sub	sp, #116	; 0x74
 8007344:	af00      	add	r7, sp, #0
 8007346:	60f8      	str	r0, [r7, #12]
 8007348:	60b9      	str	r1, [r7, #8]
 800734a:	607a      	str	r2, [r7, #4]
 800734c:	603b      	str	r3, [r7, #0]
 800734e:	238c      	movs	r3, #140	; 0x8c
 8007350:	2208      	movs	r2, #8
 8007352:	4694      	mov	ip, r2
 8007354:	44bc      	add	ip, r7
 8007356:	4463      	add	r3, ip
 8007358:	6819      	ldr	r1, [r3, #0]
 800735a:	20fe      	movs	r0, #254	; 0xfe
 800735c:	0580      	lsls	r0, r0, #22
 800735e:	f7f9 f933 	bl	80005c8 <__aeabi_fdiv>
 8007362:	1c03      	adds	r3, r0, #0
 8007364:	65fb      	str	r3, [r7, #92]	; 0x5c
 8007366:	4bfa      	ldr	r3, [pc, #1000]	; (8007750 <MadgwickAHRSupdateIMU+0x410>)
 8007368:	681b      	ldr	r3, [r3, #0]
 800736a:	2280      	movs	r2, #128	; 0x80
 800736c:	0612      	lsls	r2, r2, #24
 800736e:	4053      	eors	r3, r2
 8007370:	68b9      	ldr	r1, [r7, #8]
 8007372:	1c18      	adds	r0, r3, #0
 8007374:	f7f9 fb00 	bl	8000978 <__aeabi_fmul>
 8007378:	1c03      	adds	r3, r0, #0
 800737a:	1c1c      	adds	r4, r3, #0
 800737c:	4bf5      	ldr	r3, [pc, #980]	; (8007754 <MadgwickAHRSupdateIMU+0x414>)
 800737e:	681b      	ldr	r3, [r3, #0]
 8007380:	6879      	ldr	r1, [r7, #4]
 8007382:	1c18      	adds	r0, r3, #0
 8007384:	f7f9 faf8 	bl	8000978 <__aeabi_fmul>
 8007388:	1c03      	adds	r3, r0, #0
 800738a:	1c19      	adds	r1, r3, #0
 800738c:	1c20      	adds	r0, r4, #0
 800738e:	f7f9 fc25 	bl	8000bdc <__aeabi_fsub>
 8007392:	1c03      	adds	r3, r0, #0
 8007394:	1c1c      	adds	r4, r3, #0
 8007396:	4bf0      	ldr	r3, [pc, #960]	; (8007758 <MadgwickAHRSupdateIMU+0x418>)
 8007398:	681b      	ldr	r3, [r3, #0]
 800739a:	6839      	ldr	r1, [r7, #0]
 800739c:	1c18      	adds	r0, r3, #0
 800739e:	f7f9 faeb 	bl	8000978 <__aeabi_fmul>
 80073a2:	1c03      	adds	r3, r0, #0
 80073a4:	1c19      	adds	r1, r3, #0
 80073a6:	1c20      	adds	r0, r4, #0
 80073a8:	f7f9 fc18 	bl	8000bdc <__aeabi_fsub>
 80073ac:	1c03      	adds	r3, r0, #0
 80073ae:	21fc      	movs	r1, #252	; 0xfc
 80073b0:	0589      	lsls	r1, r1, #22
 80073b2:	1c18      	adds	r0, r3, #0
 80073b4:	f7f9 fae0 	bl	8000978 <__aeabi_fmul>
 80073b8:	1c03      	adds	r3, r0, #0
 80073ba:	66fb      	str	r3, [r7, #108]	; 0x6c
 80073bc:	4be7      	ldr	r3, [pc, #924]	; (800775c <MadgwickAHRSupdateIMU+0x41c>)
 80073be:	681b      	ldr	r3, [r3, #0]
 80073c0:	68b9      	ldr	r1, [r7, #8]
 80073c2:	1c18      	adds	r0, r3, #0
 80073c4:	f7f9 fad8 	bl	8000978 <__aeabi_fmul>
 80073c8:	1c03      	adds	r3, r0, #0
 80073ca:	1c1c      	adds	r4, r3, #0
 80073cc:	4be1      	ldr	r3, [pc, #900]	; (8007754 <MadgwickAHRSupdateIMU+0x414>)
 80073ce:	681b      	ldr	r3, [r3, #0]
 80073d0:	6839      	ldr	r1, [r7, #0]
 80073d2:	1c18      	adds	r0, r3, #0
 80073d4:	f7f9 fad0 	bl	8000978 <__aeabi_fmul>
 80073d8:	1c03      	adds	r3, r0, #0
 80073da:	1c19      	adds	r1, r3, #0
 80073dc:	1c20      	adds	r0, r4, #0
 80073de:	f7f8 ff59 	bl	8000294 <__aeabi_fadd>
 80073e2:	1c03      	adds	r3, r0, #0
 80073e4:	1c1c      	adds	r4, r3, #0
 80073e6:	4bdc      	ldr	r3, [pc, #880]	; (8007758 <MadgwickAHRSupdateIMU+0x418>)
 80073e8:	681b      	ldr	r3, [r3, #0]
 80073ea:	6879      	ldr	r1, [r7, #4]
 80073ec:	1c18      	adds	r0, r3, #0
 80073ee:	f7f9 fac3 	bl	8000978 <__aeabi_fmul>
 80073f2:	1c03      	adds	r3, r0, #0
 80073f4:	1c19      	adds	r1, r3, #0
 80073f6:	1c20      	adds	r0, r4, #0
 80073f8:	f7f9 fbf0 	bl	8000bdc <__aeabi_fsub>
 80073fc:	1c03      	adds	r3, r0, #0
 80073fe:	21fc      	movs	r1, #252	; 0xfc
 8007400:	0589      	lsls	r1, r1, #22
 8007402:	1c18      	adds	r0, r3, #0
 8007404:	f7f9 fab8 	bl	8000978 <__aeabi_fmul>
 8007408:	1c03      	adds	r3, r0, #0
 800740a:	66bb      	str	r3, [r7, #104]	; 0x68
 800740c:	4bd3      	ldr	r3, [pc, #844]	; (800775c <MadgwickAHRSupdateIMU+0x41c>)
 800740e:	681b      	ldr	r3, [r3, #0]
 8007410:	6879      	ldr	r1, [r7, #4]
 8007412:	1c18      	adds	r0, r3, #0
 8007414:	f7f9 fab0 	bl	8000978 <__aeabi_fmul>
 8007418:	1c03      	adds	r3, r0, #0
 800741a:	1c1c      	adds	r4, r3, #0
 800741c:	4bcc      	ldr	r3, [pc, #816]	; (8007750 <MadgwickAHRSupdateIMU+0x410>)
 800741e:	681b      	ldr	r3, [r3, #0]
 8007420:	6839      	ldr	r1, [r7, #0]
 8007422:	1c18      	adds	r0, r3, #0
 8007424:	f7f9 faa8 	bl	8000978 <__aeabi_fmul>
 8007428:	1c03      	adds	r3, r0, #0
 800742a:	1c19      	adds	r1, r3, #0
 800742c:	1c20      	adds	r0, r4, #0
 800742e:	f7f9 fbd5 	bl	8000bdc <__aeabi_fsub>
 8007432:	1c03      	adds	r3, r0, #0
 8007434:	1c1c      	adds	r4, r3, #0
 8007436:	4bc8      	ldr	r3, [pc, #800]	; (8007758 <MadgwickAHRSupdateIMU+0x418>)
 8007438:	681b      	ldr	r3, [r3, #0]
 800743a:	68b9      	ldr	r1, [r7, #8]
 800743c:	1c18      	adds	r0, r3, #0
 800743e:	f7f9 fa9b 	bl	8000978 <__aeabi_fmul>
 8007442:	1c03      	adds	r3, r0, #0
 8007444:	1c19      	adds	r1, r3, #0
 8007446:	1c20      	adds	r0, r4, #0
 8007448:	f7f8 ff24 	bl	8000294 <__aeabi_fadd>
 800744c:	1c03      	adds	r3, r0, #0
 800744e:	21fc      	movs	r1, #252	; 0xfc
 8007450:	0589      	lsls	r1, r1, #22
 8007452:	1c18      	adds	r0, r3, #0
 8007454:	f7f9 fa90 	bl	8000978 <__aeabi_fmul>
 8007458:	1c03      	adds	r3, r0, #0
 800745a:	667b      	str	r3, [r7, #100]	; 0x64
 800745c:	4bbf      	ldr	r3, [pc, #764]	; (800775c <MadgwickAHRSupdateIMU+0x41c>)
 800745e:	681b      	ldr	r3, [r3, #0]
 8007460:	6839      	ldr	r1, [r7, #0]
 8007462:	1c18      	adds	r0, r3, #0
 8007464:	f7f9 fa88 	bl	8000978 <__aeabi_fmul>
 8007468:	1c03      	adds	r3, r0, #0
 800746a:	1c1c      	adds	r4, r3, #0
 800746c:	4bb8      	ldr	r3, [pc, #736]	; (8007750 <MadgwickAHRSupdateIMU+0x410>)
 800746e:	681b      	ldr	r3, [r3, #0]
 8007470:	6879      	ldr	r1, [r7, #4]
 8007472:	1c18      	adds	r0, r3, #0
 8007474:	f7f9 fa80 	bl	8000978 <__aeabi_fmul>
 8007478:	1c03      	adds	r3, r0, #0
 800747a:	1c19      	adds	r1, r3, #0
 800747c:	1c20      	adds	r0, r4, #0
 800747e:	f7f8 ff09 	bl	8000294 <__aeabi_fadd>
 8007482:	1c03      	adds	r3, r0, #0
 8007484:	1c1c      	adds	r4, r3, #0
 8007486:	4bb3      	ldr	r3, [pc, #716]	; (8007754 <MadgwickAHRSupdateIMU+0x414>)
 8007488:	681b      	ldr	r3, [r3, #0]
 800748a:	68b9      	ldr	r1, [r7, #8]
 800748c:	1c18      	adds	r0, r3, #0
 800748e:	f7f9 fa73 	bl	8000978 <__aeabi_fmul>
 8007492:	1c03      	adds	r3, r0, #0
 8007494:	1c19      	adds	r1, r3, #0
 8007496:	1c20      	adds	r0, r4, #0
 8007498:	f7f9 fba0 	bl	8000bdc <__aeabi_fsub>
 800749c:	1c03      	adds	r3, r0, #0
 800749e:	21fc      	movs	r1, #252	; 0xfc
 80074a0:	0589      	lsls	r1, r1, #22
 80074a2:	1c18      	adds	r0, r3, #0
 80074a4:	f7f9 fa68 	bl	8000978 <__aeabi_fmul>
 80074a8:	1c03      	adds	r3, r0, #0
 80074aa:	663b      	str	r3, [r7, #96]	; 0x60
 80074ac:	2100      	movs	r1, #0
 80074ae:	2380      	movs	r3, #128	; 0x80
 80074b0:	2208      	movs	r2, #8
 80074b2:	4694      	mov	ip, r2
 80074b4:	44bc      	add	ip, r7
 80074b6:	4463      	add	r3, ip
 80074b8:	6818      	ldr	r0, [r3, #0]
 80074ba:	f7f8 febd 	bl	8000238 <__aeabi_fcmpeq>
 80074be:	1e03      	subs	r3, r0, #0
 80074c0:	d016      	beq.n	80074f0 <MadgwickAHRSupdateIMU+0x1b0>
 80074c2:	2100      	movs	r1, #0
 80074c4:	2384      	movs	r3, #132	; 0x84
 80074c6:	2208      	movs	r2, #8
 80074c8:	4694      	mov	ip, r2
 80074ca:	44bc      	add	ip, r7
 80074cc:	4463      	add	r3, ip
 80074ce:	6818      	ldr	r0, [r3, #0]
 80074d0:	f7f8 feb2 	bl	8000238 <__aeabi_fcmpeq>
 80074d4:	1e03      	subs	r3, r0, #0
 80074d6:	d00b      	beq.n	80074f0 <MadgwickAHRSupdateIMU+0x1b0>
 80074d8:	2100      	movs	r1, #0
 80074da:	2388      	movs	r3, #136	; 0x88
 80074dc:	2208      	movs	r2, #8
 80074de:	4694      	mov	ip, r2
 80074e0:	44bc      	add	ip, r7
 80074e2:	4463      	add	r3, ip
 80074e4:	6818      	ldr	r0, [r3, #0]
 80074e6:	f7f8 fea7 	bl	8000238 <__aeabi_fcmpeq>
 80074ea:	1e03      	subs	r3, r0, #0
 80074ec:	d000      	beq.n	80074f0 <MadgwickAHRSupdateIMU+0x1b0>
 80074ee:	e278      	b.n	80079e2 <MadgwickAHRSupdateIMU+0x6a2>
 80074f0:	2580      	movs	r5, #128	; 0x80
 80074f2:	2008      	movs	r0, #8
 80074f4:	183b      	adds	r3, r7, r0
 80074f6:	195b      	adds	r3, r3, r5
 80074f8:	6819      	ldr	r1, [r3, #0]
 80074fa:	183b      	adds	r3, r7, r0
 80074fc:	195b      	adds	r3, r3, r5
 80074fe:	6818      	ldr	r0, [r3, #0]
 8007500:	f7f9 fa3a 	bl	8000978 <__aeabi_fmul>
 8007504:	1c03      	adds	r3, r0, #0
 8007506:	1c1c      	adds	r4, r3, #0
 8007508:	2684      	movs	r6, #132	; 0x84
 800750a:	2008      	movs	r0, #8
 800750c:	183b      	adds	r3, r7, r0
 800750e:	199b      	adds	r3, r3, r6
 8007510:	6819      	ldr	r1, [r3, #0]
 8007512:	183b      	adds	r3, r7, r0
 8007514:	199b      	adds	r3, r3, r6
 8007516:	6818      	ldr	r0, [r3, #0]
 8007518:	f7f9 fa2e 	bl	8000978 <__aeabi_fmul>
 800751c:	1c03      	adds	r3, r0, #0
 800751e:	1c19      	adds	r1, r3, #0
 8007520:	1c20      	adds	r0, r4, #0
 8007522:	f7f8 feb7 	bl	8000294 <__aeabi_fadd>
 8007526:	1c03      	adds	r3, r0, #0
 8007528:	1c1c      	adds	r4, r3, #0
 800752a:	2388      	movs	r3, #136	; 0x88
 800752c:	2008      	movs	r0, #8
 800752e:	183a      	adds	r2, r7, r0
 8007530:	18d2      	adds	r2, r2, r3
 8007532:	6811      	ldr	r1, [r2, #0]
 8007534:	183a      	adds	r2, r7, r0
 8007536:	18d2      	adds	r2, r2, r3
 8007538:	6810      	ldr	r0, [r2, #0]
 800753a:	f7f9 fa1d 	bl	8000978 <__aeabi_fmul>
 800753e:	1c03      	adds	r3, r0, #0
 8007540:	1c19      	adds	r1, r3, #0
 8007542:	1c20      	adds	r0, r4, #0
 8007544:	f7f8 fea6 	bl	8000294 <__aeabi_fadd>
 8007548:	1c03      	adds	r3, r0, #0
 800754a:	1c18      	adds	r0, r3, #0
 800754c:	f000 fb24 	bl	8007b98 <invSqrt>
 8007550:	1c03      	adds	r3, r0, #0
 8007552:	65bb      	str	r3, [r7, #88]	; 0x58
 8007554:	6db9      	ldr	r1, [r7, #88]	; 0x58
 8007556:	2408      	movs	r4, #8
 8007558:	193b      	adds	r3, r7, r4
 800755a:	195a      	adds	r2, r3, r5
 800755c:	6810      	ldr	r0, [r2, #0]
 800755e:	f7f9 fa0b 	bl	8000978 <__aeabi_fmul>
 8007562:	1c03      	adds	r3, r0, #0
 8007564:	193a      	adds	r2, r7, r4
 8007566:	1952      	adds	r2, r2, r5
 8007568:	6013      	str	r3, [r2, #0]
 800756a:	6db9      	ldr	r1, [r7, #88]	; 0x58
 800756c:	193b      	adds	r3, r7, r4
 800756e:	199a      	adds	r2, r3, r6
 8007570:	6810      	ldr	r0, [r2, #0]
 8007572:	f7f9 fa01 	bl	8000978 <__aeabi_fmul>
 8007576:	1c03      	adds	r3, r0, #0
 8007578:	193a      	adds	r2, r7, r4
 800757a:	1992      	adds	r2, r2, r6
 800757c:	6013      	str	r3, [r2, #0]
 800757e:	6db9      	ldr	r1, [r7, #88]	; 0x58
 8007580:	2388      	movs	r3, #136	; 0x88
 8007582:	001c      	movs	r4, r3
 8007584:	2208      	movs	r2, #8
 8007586:	4694      	mov	ip, r2
 8007588:	44bc      	add	ip, r7
 800758a:	4463      	add	r3, ip
 800758c:	6818      	ldr	r0, [r3, #0]
 800758e:	f7f9 f9f3 	bl	8000978 <__aeabi_fmul>
 8007592:	1c03      	adds	r3, r0, #0
 8007594:	2208      	movs	r2, #8
 8007596:	18ba      	adds	r2, r7, r2
 8007598:	1912      	adds	r2, r2, r4
 800759a:	6013      	str	r3, [r2, #0]
 800759c:	4b6f      	ldr	r3, [pc, #444]	; (800775c <MadgwickAHRSupdateIMU+0x41c>)
 800759e:	681b      	ldr	r3, [r3, #0]
 80075a0:	1c19      	adds	r1, r3, #0
 80075a2:	1c18      	adds	r0, r3, #0
 80075a4:	f7f8 fe76 	bl	8000294 <__aeabi_fadd>
 80075a8:	1c03      	adds	r3, r0, #0
 80075aa:	657b      	str	r3, [r7, #84]	; 0x54
 80075ac:	4b68      	ldr	r3, [pc, #416]	; (8007750 <MadgwickAHRSupdateIMU+0x410>)
 80075ae:	681b      	ldr	r3, [r3, #0]
 80075b0:	1c19      	adds	r1, r3, #0
 80075b2:	1c18      	adds	r0, r3, #0
 80075b4:	f7f8 fe6e 	bl	8000294 <__aeabi_fadd>
 80075b8:	1c03      	adds	r3, r0, #0
 80075ba:	653b      	str	r3, [r7, #80]	; 0x50
 80075bc:	4b65      	ldr	r3, [pc, #404]	; (8007754 <MadgwickAHRSupdateIMU+0x414>)
 80075be:	681b      	ldr	r3, [r3, #0]
 80075c0:	1c19      	adds	r1, r3, #0
 80075c2:	1c18      	adds	r0, r3, #0
 80075c4:	f7f8 fe66 	bl	8000294 <__aeabi_fadd>
 80075c8:	1c03      	adds	r3, r0, #0
 80075ca:	64fb      	str	r3, [r7, #76]	; 0x4c
 80075cc:	4b62      	ldr	r3, [pc, #392]	; (8007758 <MadgwickAHRSupdateIMU+0x418>)
 80075ce:	681b      	ldr	r3, [r3, #0]
 80075d0:	1c19      	adds	r1, r3, #0
 80075d2:	1c18      	adds	r0, r3, #0
 80075d4:	f7f8 fe5e 	bl	8000294 <__aeabi_fadd>
 80075d8:	1c03      	adds	r3, r0, #0
 80075da:	64bb      	str	r3, [r7, #72]	; 0x48
 80075dc:	4b5f      	ldr	r3, [pc, #380]	; (800775c <MadgwickAHRSupdateIMU+0x41c>)
 80075de:	681b      	ldr	r3, [r3, #0]
 80075e0:	2181      	movs	r1, #129	; 0x81
 80075e2:	05c9      	lsls	r1, r1, #23
 80075e4:	1c18      	adds	r0, r3, #0
 80075e6:	f7f9 f9c7 	bl	8000978 <__aeabi_fmul>
 80075ea:	1c03      	adds	r3, r0, #0
 80075ec:	647b      	str	r3, [r7, #68]	; 0x44
 80075ee:	4b58      	ldr	r3, [pc, #352]	; (8007750 <MadgwickAHRSupdateIMU+0x410>)
 80075f0:	681b      	ldr	r3, [r3, #0]
 80075f2:	2181      	movs	r1, #129	; 0x81
 80075f4:	05c9      	lsls	r1, r1, #23
 80075f6:	1c18      	adds	r0, r3, #0
 80075f8:	f7f9 f9be 	bl	8000978 <__aeabi_fmul>
 80075fc:	1c03      	adds	r3, r0, #0
 80075fe:	643b      	str	r3, [r7, #64]	; 0x40
 8007600:	4b54      	ldr	r3, [pc, #336]	; (8007754 <MadgwickAHRSupdateIMU+0x414>)
 8007602:	681b      	ldr	r3, [r3, #0]
 8007604:	2181      	movs	r1, #129	; 0x81
 8007606:	05c9      	lsls	r1, r1, #23
 8007608:	1c18      	adds	r0, r3, #0
 800760a:	f7f9 f9b5 	bl	8000978 <__aeabi_fmul>
 800760e:	1c03      	adds	r3, r0, #0
 8007610:	63fb      	str	r3, [r7, #60]	; 0x3c
 8007612:	4b4f      	ldr	r3, [pc, #316]	; (8007750 <MadgwickAHRSupdateIMU+0x410>)
 8007614:	681b      	ldr	r3, [r3, #0]
 8007616:	2182      	movs	r1, #130	; 0x82
 8007618:	05c9      	lsls	r1, r1, #23
 800761a:	1c18      	adds	r0, r3, #0
 800761c:	f7f9 f9ac 	bl	8000978 <__aeabi_fmul>
 8007620:	1c03      	adds	r3, r0, #0
 8007622:	63bb      	str	r3, [r7, #56]	; 0x38
 8007624:	4b4b      	ldr	r3, [pc, #300]	; (8007754 <MadgwickAHRSupdateIMU+0x414>)
 8007626:	681b      	ldr	r3, [r3, #0]
 8007628:	2182      	movs	r1, #130	; 0x82
 800762a:	05c9      	lsls	r1, r1, #23
 800762c:	1c18      	adds	r0, r3, #0
 800762e:	f7f9 f9a3 	bl	8000978 <__aeabi_fmul>
 8007632:	1c03      	adds	r3, r0, #0
 8007634:	637b      	str	r3, [r7, #52]	; 0x34
 8007636:	4b49      	ldr	r3, [pc, #292]	; (800775c <MadgwickAHRSupdateIMU+0x41c>)
 8007638:	681a      	ldr	r2, [r3, #0]
 800763a:	4b48      	ldr	r3, [pc, #288]	; (800775c <MadgwickAHRSupdateIMU+0x41c>)
 800763c:	681b      	ldr	r3, [r3, #0]
 800763e:	1c19      	adds	r1, r3, #0
 8007640:	1c10      	adds	r0, r2, #0
 8007642:	f7f9 f999 	bl	8000978 <__aeabi_fmul>
 8007646:	1c03      	adds	r3, r0, #0
 8007648:	633b      	str	r3, [r7, #48]	; 0x30
 800764a:	4b41      	ldr	r3, [pc, #260]	; (8007750 <MadgwickAHRSupdateIMU+0x410>)
 800764c:	681a      	ldr	r2, [r3, #0]
 800764e:	4b40      	ldr	r3, [pc, #256]	; (8007750 <MadgwickAHRSupdateIMU+0x410>)
 8007650:	681b      	ldr	r3, [r3, #0]
 8007652:	1c19      	adds	r1, r3, #0
 8007654:	1c10      	adds	r0, r2, #0
 8007656:	f7f9 f98f 	bl	8000978 <__aeabi_fmul>
 800765a:	1c03      	adds	r3, r0, #0
 800765c:	62fb      	str	r3, [r7, #44]	; 0x2c
 800765e:	4b3d      	ldr	r3, [pc, #244]	; (8007754 <MadgwickAHRSupdateIMU+0x414>)
 8007660:	681a      	ldr	r2, [r3, #0]
 8007662:	4b3c      	ldr	r3, [pc, #240]	; (8007754 <MadgwickAHRSupdateIMU+0x414>)
 8007664:	681b      	ldr	r3, [r3, #0]
 8007666:	1c19      	adds	r1, r3, #0
 8007668:	1c10      	adds	r0, r2, #0
 800766a:	f7f9 f985 	bl	8000978 <__aeabi_fmul>
 800766e:	1c03      	adds	r3, r0, #0
 8007670:	62bb      	str	r3, [r7, #40]	; 0x28
 8007672:	4b39      	ldr	r3, [pc, #228]	; (8007758 <MadgwickAHRSupdateIMU+0x418>)
 8007674:	681a      	ldr	r2, [r3, #0]
 8007676:	4b38      	ldr	r3, [pc, #224]	; (8007758 <MadgwickAHRSupdateIMU+0x418>)
 8007678:	681b      	ldr	r3, [r3, #0]
 800767a:	1c19      	adds	r1, r3, #0
 800767c:	1c10      	adds	r0, r2, #0
 800767e:	f7f9 f97b 	bl	8000978 <__aeabi_fmul>
 8007682:	1c03      	adds	r3, r0, #0
 8007684:	627b      	str	r3, [r7, #36]	; 0x24
 8007686:	6ab9      	ldr	r1, [r7, #40]	; 0x28
 8007688:	6c78      	ldr	r0, [r7, #68]	; 0x44
 800768a:	f7f9 f975 	bl	8000978 <__aeabi_fmul>
 800768e:	1c03      	adds	r3, r0, #0
 8007690:	1c1c      	adds	r4, r3, #0
 8007692:	2308      	movs	r3, #8
 8007694:	18fa      	adds	r2, r7, r3
 8007696:	1952      	adds	r2, r2, r5
 8007698:	6811      	ldr	r1, [r2, #0]
 800769a:	6cf8      	ldr	r0, [r7, #76]	; 0x4c
 800769c:	f7f9 f96c 	bl	8000978 <__aeabi_fmul>
 80076a0:	1c03      	adds	r3, r0, #0
 80076a2:	1c19      	adds	r1, r3, #0
 80076a4:	1c20      	adds	r0, r4, #0
 80076a6:	f7f8 fdf5 	bl	8000294 <__aeabi_fadd>
 80076aa:	1c03      	adds	r3, r0, #0
 80076ac:	1c1c      	adds	r4, r3, #0
 80076ae:	6af9      	ldr	r1, [r7, #44]	; 0x2c
 80076b0:	6c78      	ldr	r0, [r7, #68]	; 0x44
 80076b2:	f7f9 f961 	bl	8000978 <__aeabi_fmul>
 80076b6:	1c03      	adds	r3, r0, #0
 80076b8:	1c19      	adds	r1, r3, #0
 80076ba:	1c20      	adds	r0, r4, #0
 80076bc:	f7f8 fdea 	bl	8000294 <__aeabi_fadd>
 80076c0:	1c03      	adds	r3, r0, #0
 80076c2:	1c1c      	adds	r4, r3, #0
 80076c4:	2308      	movs	r3, #8
 80076c6:	18f9      	adds	r1, r7, r3
 80076c8:	198a      	adds	r2, r1, r6
 80076ca:	6811      	ldr	r1, [r2, #0]
 80076cc:	6d38      	ldr	r0, [r7, #80]	; 0x50
 80076ce:	f7f9 f953 	bl	8000978 <__aeabi_fmul>
 80076d2:	1c03      	adds	r3, r0, #0
 80076d4:	1c19      	adds	r1, r3, #0
 80076d6:	1c20      	adds	r0, r4, #0
 80076d8:	f7f9 fa80 	bl	8000bdc <__aeabi_fsub>
 80076dc:	1c03      	adds	r3, r0, #0
 80076de:	623b      	str	r3, [r7, #32]
 80076e0:	6a79      	ldr	r1, [r7, #36]	; 0x24
 80076e2:	6c38      	ldr	r0, [r7, #64]	; 0x40
 80076e4:	f7f9 f948 	bl	8000978 <__aeabi_fmul>
 80076e8:	1c03      	adds	r3, r0, #0
 80076ea:	1c1c      	adds	r4, r3, #0
 80076ec:	2308      	movs	r3, #8
 80076ee:	18f9      	adds	r1, r7, r3
 80076f0:	194a      	adds	r2, r1, r5
 80076f2:	6811      	ldr	r1, [r2, #0]
 80076f4:	6cb8      	ldr	r0, [r7, #72]	; 0x48
 80076f6:	f7f9 f93f 	bl	8000978 <__aeabi_fmul>
 80076fa:	1c03      	adds	r3, r0, #0
 80076fc:	1c19      	adds	r1, r3, #0
 80076fe:	1c20      	adds	r0, r4, #0
 8007700:	f7f9 fa6c 	bl	8000bdc <__aeabi_fsub>
 8007704:	1c03      	adds	r3, r0, #0
 8007706:	1c1c      	adds	r4, r3, #0
 8007708:	2181      	movs	r1, #129	; 0x81
 800770a:	05c9      	lsls	r1, r1, #23
 800770c:	6b38      	ldr	r0, [r7, #48]	; 0x30
 800770e:	f7f9 f933 	bl	8000978 <__aeabi_fmul>
 8007712:	1c03      	adds	r3, r0, #0
 8007714:	1c1a      	adds	r2, r3, #0
 8007716:	4b0e      	ldr	r3, [pc, #56]	; (8007750 <MadgwickAHRSupdateIMU+0x410>)
 8007718:	681b      	ldr	r3, [r3, #0]
 800771a:	1c19      	adds	r1, r3, #0
 800771c:	1c10      	adds	r0, r2, #0
 800771e:	f7f9 f92b 	bl	8000978 <__aeabi_fmul>
 8007722:	1c03      	adds	r3, r0, #0
 8007724:	1c19      	adds	r1, r3, #0
 8007726:	1c20      	adds	r0, r4, #0
 8007728:	f7f8 fdb4 	bl	8000294 <__aeabi_fadd>
 800772c:	1c03      	adds	r3, r0, #0
 800772e:	1c1c      	adds	r4, r3, #0
 8007730:	2308      	movs	r3, #8
 8007732:	18f9      	adds	r1, r7, r3
 8007734:	198a      	adds	r2, r1, r6
 8007736:	6811      	ldr	r1, [r2, #0]
 8007738:	6d78      	ldr	r0, [r7, #84]	; 0x54
 800773a:	f7f9 f91d 	bl	8000978 <__aeabi_fmul>
 800773e:	1c03      	adds	r3, r0, #0
 8007740:	1c19      	adds	r1, r3, #0
 8007742:	1c20      	adds	r0, r4, #0
 8007744:	f7f9 fa4a 	bl	8000bdc <__aeabi_fsub>
 8007748:	1c03      	adds	r3, r0, #0
 800774a:	6c39      	ldr	r1, [r7, #64]	; 0x40
 800774c:	1c18      	adds	r0, r3, #0
 800774e:	e007      	b.n	8007760 <MadgwickAHRSupdateIMU+0x420>
 8007750:	200001d0 	.word	0x200001d0
 8007754:	200001d4 	.word	0x200001d4
 8007758:	200001d8 	.word	0x200001d8
 800775c:	20000000 	.word	0x20000000
 8007760:	f7f9 fa3c 	bl	8000bdc <__aeabi_fsub>
 8007764:	1c03      	adds	r3, r0, #0
 8007766:	1c1c      	adds	r4, r3, #0
 8007768:	6af9      	ldr	r1, [r7, #44]	; 0x2c
 800776a:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 800776c:	f7f9 f904 	bl	8000978 <__aeabi_fmul>
 8007770:	1c03      	adds	r3, r0, #0
 8007772:	1c19      	adds	r1, r3, #0
 8007774:	1c20      	adds	r0, r4, #0
 8007776:	f7f8 fd8d 	bl	8000294 <__aeabi_fadd>
 800777a:	1c03      	adds	r3, r0, #0
 800777c:	1c1c      	adds	r4, r3, #0
 800777e:	6ab9      	ldr	r1, [r7, #40]	; 0x28
 8007780:	6bb8      	ldr	r0, [r7, #56]	; 0x38
 8007782:	f7f9 f8f9 	bl	8000978 <__aeabi_fmul>
 8007786:	1c03      	adds	r3, r0, #0
 8007788:	1c19      	adds	r1, r3, #0
 800778a:	1c20      	adds	r0, r4, #0
 800778c:	f7f8 fd82 	bl	8000294 <__aeabi_fadd>
 8007790:	1c03      	adds	r3, r0, #0
 8007792:	1c1c      	adds	r4, r3, #0
 8007794:	2388      	movs	r3, #136	; 0x88
 8007796:	2208      	movs	r2, #8
 8007798:	18b9      	adds	r1, r7, r2
 800779a:	18ca      	adds	r2, r1, r3
 800779c:	6811      	ldr	r1, [r2, #0]
 800779e:	6c38      	ldr	r0, [r7, #64]	; 0x40
 80077a0:	f7f9 f8ea 	bl	8000978 <__aeabi_fmul>
 80077a4:	1c03      	adds	r3, r0, #0
 80077a6:	1c19      	adds	r1, r3, #0
 80077a8:	1c20      	adds	r0, r4, #0
 80077aa:	f7f8 fd73 	bl	8000294 <__aeabi_fadd>
 80077ae:	1c03      	adds	r3, r0, #0
 80077b0:	61fb      	str	r3, [r7, #28]
 80077b2:	2181      	movs	r1, #129	; 0x81
 80077b4:	05c9      	lsls	r1, r1, #23
 80077b6:	6b38      	ldr	r0, [r7, #48]	; 0x30
 80077b8:	f7f9 f8de 	bl	8000978 <__aeabi_fmul>
 80077bc:	1c03      	adds	r3, r0, #0
 80077be:	1c1a      	adds	r2, r3, #0
 80077c0:	4bf1      	ldr	r3, [pc, #964]	; (8007b88 <MadgwickAHRSupdateIMU+0x848>)
 80077c2:	681b      	ldr	r3, [r3, #0]
 80077c4:	1c19      	adds	r1, r3, #0
 80077c6:	1c10      	adds	r0, r2, #0
 80077c8:	f7f9 f8d6 	bl	8000978 <__aeabi_fmul>
 80077cc:	1c03      	adds	r3, r0, #0
 80077ce:	1c1c      	adds	r4, r3, #0
 80077d0:	2308      	movs	r3, #8
 80077d2:	18fa      	adds	r2, r7, r3
 80077d4:	1952      	adds	r2, r2, r5
 80077d6:	6811      	ldr	r1, [r2, #0]
 80077d8:	6d78      	ldr	r0, [r7, #84]	; 0x54
 80077da:	f7f9 f8cd 	bl	8000978 <__aeabi_fmul>
 80077de:	1c03      	adds	r3, r0, #0
 80077e0:	1c19      	adds	r1, r3, #0
 80077e2:	1c20      	adds	r0, r4, #0
 80077e4:	f7f8 fd56 	bl	8000294 <__aeabi_fadd>
 80077e8:	1c03      	adds	r3, r0, #0
 80077ea:	1c1c      	adds	r4, r3, #0
 80077ec:	6a79      	ldr	r1, [r7, #36]	; 0x24
 80077ee:	6bf8      	ldr	r0, [r7, #60]	; 0x3c
 80077f0:	f7f9 f8c2 	bl	8000978 <__aeabi_fmul>
 80077f4:	1c03      	adds	r3, r0, #0
 80077f6:	1c19      	adds	r1, r3, #0
 80077f8:	1c20      	adds	r0, r4, #0
 80077fa:	f7f8 fd4b 	bl	8000294 <__aeabi_fadd>
 80077fe:	1c03      	adds	r3, r0, #0
 8007800:	1c1c      	adds	r4, r3, #0
 8007802:	2308      	movs	r3, #8
 8007804:	18fa      	adds	r2, r7, r3
 8007806:	1992      	adds	r2, r2, r6
 8007808:	6811      	ldr	r1, [r2, #0]
 800780a:	6cb8      	ldr	r0, [r7, #72]	; 0x48
 800780c:	f7f9 f8b4 	bl	8000978 <__aeabi_fmul>
 8007810:	1c03      	adds	r3, r0, #0
 8007812:	1c19      	adds	r1, r3, #0
 8007814:	1c20      	adds	r0, r4, #0
 8007816:	f7f9 f9e1 	bl	8000bdc <__aeabi_fsub>
 800781a:	1c03      	adds	r3, r0, #0
 800781c:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 800781e:	1c18      	adds	r0, r3, #0
 8007820:	f7f9 f9dc 	bl	8000bdc <__aeabi_fsub>
 8007824:	1c03      	adds	r3, r0, #0
 8007826:	1c1c      	adds	r4, r3, #0
 8007828:	6af9      	ldr	r1, [r7, #44]	; 0x2c
 800782a:	6b78      	ldr	r0, [r7, #52]	; 0x34
 800782c:	f7f9 f8a4 	bl	8000978 <__aeabi_fmul>
 8007830:	1c03      	adds	r3, r0, #0
 8007832:	1c19      	adds	r1, r3, #0
 8007834:	1c20      	adds	r0, r4, #0
 8007836:	f7f8 fd2d 	bl	8000294 <__aeabi_fadd>
 800783a:	1c03      	adds	r3, r0, #0
 800783c:	1c1c      	adds	r4, r3, #0
 800783e:	6ab9      	ldr	r1, [r7, #40]	; 0x28
 8007840:	6b78      	ldr	r0, [r7, #52]	; 0x34
 8007842:	f7f9 f899 	bl	8000978 <__aeabi_fmul>
 8007846:	1c03      	adds	r3, r0, #0
 8007848:	1c19      	adds	r1, r3, #0
 800784a:	1c20      	adds	r0, r4, #0
 800784c:	f7f8 fd22 	bl	8000294 <__aeabi_fadd>
 8007850:	1c03      	adds	r3, r0, #0
 8007852:	1c1c      	adds	r4, r3, #0
 8007854:	2388      	movs	r3, #136	; 0x88
 8007856:	2208      	movs	r2, #8
 8007858:	4694      	mov	ip, r2
 800785a:	44bc      	add	ip, r7
 800785c:	4463      	add	r3, ip
 800785e:	6819      	ldr	r1, [r3, #0]
 8007860:	6bf8      	ldr	r0, [r7, #60]	; 0x3c
 8007862:	f7f9 f889 	bl	8000978 <__aeabi_fmul>
 8007866:	1c03      	adds	r3, r0, #0
 8007868:	1c19      	adds	r1, r3, #0
 800786a:	1c20      	adds	r0, r4, #0
 800786c:	f7f8 fd12 	bl	8000294 <__aeabi_fadd>
 8007870:	1c03      	adds	r3, r0, #0
 8007872:	61bb      	str	r3, [r7, #24]
 8007874:	2181      	movs	r1, #129	; 0x81
 8007876:	05c9      	lsls	r1, r1, #23
 8007878:	6af8      	ldr	r0, [r7, #44]	; 0x2c
 800787a:	f7f9 f87d 	bl	8000978 <__aeabi_fmul>
 800787e:	1c03      	adds	r3, r0, #0
 8007880:	1c1a      	adds	r2, r3, #0
 8007882:	4bc2      	ldr	r3, [pc, #776]	; (8007b8c <MadgwickAHRSupdateIMU+0x84c>)
 8007884:	681b      	ldr	r3, [r3, #0]
 8007886:	1c19      	adds	r1, r3, #0
 8007888:	1c10      	adds	r0, r2, #0
 800788a:	f7f9 f875 	bl	8000978 <__aeabi_fmul>
 800788e:	1c03      	adds	r3, r0, #0
 8007890:	1c1c      	adds	r4, r3, #0
 8007892:	2308      	movs	r3, #8
 8007894:	18fa      	adds	r2, r7, r3
 8007896:	1953      	adds	r3, r2, r5
 8007898:	6819      	ldr	r1, [r3, #0]
 800789a:	6d38      	ldr	r0, [r7, #80]	; 0x50
 800789c:	f7f9 f86c 	bl	8000978 <__aeabi_fmul>
 80078a0:	1c03      	adds	r3, r0, #0
 80078a2:	1c19      	adds	r1, r3, #0
 80078a4:	1c20      	adds	r0, r4, #0
 80078a6:	f7f9 f999 	bl	8000bdc <__aeabi_fsub>
 80078aa:	1c03      	adds	r3, r0, #0
 80078ac:	1c1c      	adds	r4, r3, #0
 80078ae:	2181      	movs	r1, #129	; 0x81
 80078b0:	05c9      	lsls	r1, r1, #23
 80078b2:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 80078b4:	f7f9 f860 	bl	8000978 <__aeabi_fmul>
 80078b8:	1c03      	adds	r3, r0, #0
 80078ba:	1c1a      	adds	r2, r3, #0
 80078bc:	4bb3      	ldr	r3, [pc, #716]	; (8007b8c <MadgwickAHRSupdateIMU+0x84c>)
 80078be:	681b      	ldr	r3, [r3, #0]
 80078c0:	1c19      	adds	r1, r3, #0
 80078c2:	1c10      	adds	r0, r2, #0
 80078c4:	f7f9 f858 	bl	8000978 <__aeabi_fmul>
 80078c8:	1c03      	adds	r3, r0, #0
 80078ca:	1c19      	adds	r1, r3, #0
 80078cc:	1c20      	adds	r0, r4, #0
 80078ce:	f7f8 fce1 	bl	8000294 <__aeabi_fadd>
 80078d2:	1c03      	adds	r3, r0, #0
 80078d4:	1c1c      	adds	r4, r3, #0
 80078d6:	2508      	movs	r5, #8
 80078d8:	197b      	adds	r3, r7, r5
 80078da:	199b      	adds	r3, r3, r6
 80078dc:	6819      	ldr	r1, [r3, #0]
 80078de:	6cf8      	ldr	r0, [r7, #76]	; 0x4c
 80078e0:	f7f9 f84a 	bl	8000978 <__aeabi_fmul>
 80078e4:	1c03      	adds	r3, r0, #0
 80078e6:	1c19      	adds	r1, r3, #0
 80078e8:	1c20      	adds	r0, r4, #0
 80078ea:	f7f9 f977 	bl	8000bdc <__aeabi_fsub>
 80078ee:	1c03      	adds	r3, r0, #0
 80078f0:	617b      	str	r3, [r7, #20]
 80078f2:	6a39      	ldr	r1, [r7, #32]
 80078f4:	6a38      	ldr	r0, [r7, #32]
 80078f6:	f7f9 f83f 	bl	8000978 <__aeabi_fmul>
 80078fa:	1c03      	adds	r3, r0, #0
 80078fc:	1c1c      	adds	r4, r3, #0
 80078fe:	69f9      	ldr	r1, [r7, #28]
 8007900:	69f8      	ldr	r0, [r7, #28]
 8007902:	f7f9 f839 	bl	8000978 <__aeabi_fmul>
 8007906:	1c03      	adds	r3, r0, #0
 8007908:	1c19      	adds	r1, r3, #0
 800790a:	1c20      	adds	r0, r4, #0
 800790c:	f7f8 fcc2 	bl	8000294 <__aeabi_fadd>
 8007910:	1c03      	adds	r3, r0, #0
 8007912:	1c1c      	adds	r4, r3, #0
 8007914:	69b9      	ldr	r1, [r7, #24]
 8007916:	69b8      	ldr	r0, [r7, #24]
 8007918:	f7f9 f82e 	bl	8000978 <__aeabi_fmul>
 800791c:	1c03      	adds	r3, r0, #0
 800791e:	1c19      	adds	r1, r3, #0
 8007920:	1c20      	adds	r0, r4, #0
 8007922:	f7f8 fcb7 	bl	8000294 <__aeabi_fadd>
 8007926:	1c03      	adds	r3, r0, #0
 8007928:	1c1c      	adds	r4, r3, #0
 800792a:	6979      	ldr	r1, [r7, #20]
 800792c:	6978      	ldr	r0, [r7, #20]
 800792e:	f7f9 f823 	bl	8000978 <__aeabi_fmul>
 8007932:	1c03      	adds	r3, r0, #0
 8007934:	1c19      	adds	r1, r3, #0
 8007936:	1c20      	adds	r0, r4, #0
 8007938:	f7f8 fcac 	bl	8000294 <__aeabi_fadd>
 800793c:	1c03      	adds	r3, r0, #0
 800793e:	1c18      	adds	r0, r3, #0
 8007940:	f000 f92a 	bl	8007b98 <invSqrt>
 8007944:	1c03      	adds	r3, r0, #0
 8007946:	65bb      	str	r3, [r7, #88]	; 0x58
 8007948:	6db9      	ldr	r1, [r7, #88]	; 0x58
 800794a:	6a38      	ldr	r0, [r7, #32]
 800794c:	f7f9 f814 	bl	8000978 <__aeabi_fmul>
 8007950:	1c03      	adds	r3, r0, #0
 8007952:	623b      	str	r3, [r7, #32]
 8007954:	6db9      	ldr	r1, [r7, #88]	; 0x58
 8007956:	69f8      	ldr	r0, [r7, #28]
 8007958:	f7f9 f80e 	bl	8000978 <__aeabi_fmul>
 800795c:	1c03      	adds	r3, r0, #0
 800795e:	61fb      	str	r3, [r7, #28]
 8007960:	6db9      	ldr	r1, [r7, #88]	; 0x58
 8007962:	69b8      	ldr	r0, [r7, #24]
 8007964:	f7f9 f808 	bl	8000978 <__aeabi_fmul>
 8007968:	1c03      	adds	r3, r0, #0
 800796a:	61bb      	str	r3, [r7, #24]
 800796c:	6db9      	ldr	r1, [r7, #88]	; 0x58
 800796e:	6978      	ldr	r0, [r7, #20]
 8007970:	f7f9 f802 	bl	8000978 <__aeabi_fmul>
 8007974:	1c03      	adds	r3, r0, #0
 8007976:	617b      	str	r3, [r7, #20]
 8007978:	6a39      	ldr	r1, [r7, #32]
 800797a:	2490      	movs	r4, #144	; 0x90
 800797c:	197b      	adds	r3, r7, r5
 800797e:	191b      	adds	r3, r3, r4
 8007980:	6818      	ldr	r0, [r3, #0]
 8007982:	f7f8 fff9 	bl	8000978 <__aeabi_fmul>
 8007986:	1c03      	adds	r3, r0, #0
 8007988:	1c19      	adds	r1, r3, #0
 800798a:	6ef8      	ldr	r0, [r7, #108]	; 0x6c
 800798c:	f7f9 f926 	bl	8000bdc <__aeabi_fsub>
 8007990:	1c03      	adds	r3, r0, #0
 8007992:	66fb      	str	r3, [r7, #108]	; 0x6c
 8007994:	69f9      	ldr	r1, [r7, #28]
 8007996:	197b      	adds	r3, r7, r5
 8007998:	191b      	adds	r3, r3, r4
 800799a:	6818      	ldr	r0, [r3, #0]
 800799c:	f7f8 ffec 	bl	8000978 <__aeabi_fmul>
 80079a0:	1c03      	adds	r3, r0, #0
 80079a2:	1c19      	adds	r1, r3, #0
 80079a4:	6eb8      	ldr	r0, [r7, #104]	; 0x68
 80079a6:	f7f9 f919 	bl	8000bdc <__aeabi_fsub>
 80079aa:	1c03      	adds	r3, r0, #0
 80079ac:	66bb      	str	r3, [r7, #104]	; 0x68
 80079ae:	69b9      	ldr	r1, [r7, #24]
 80079b0:	197b      	adds	r3, r7, r5
 80079b2:	191b      	adds	r3, r3, r4
 80079b4:	6818      	ldr	r0, [r3, #0]
 80079b6:	f7f8 ffdf 	bl	8000978 <__aeabi_fmul>
 80079ba:	1c03      	adds	r3, r0, #0
 80079bc:	1c19      	adds	r1, r3, #0
 80079be:	6e78      	ldr	r0, [r7, #100]	; 0x64
 80079c0:	f7f9 f90c 	bl	8000bdc <__aeabi_fsub>
 80079c4:	1c03      	adds	r3, r0, #0
 80079c6:	667b      	str	r3, [r7, #100]	; 0x64
 80079c8:	6979      	ldr	r1, [r7, #20]
 80079ca:	197b      	adds	r3, r7, r5
 80079cc:	191b      	adds	r3, r3, r4
 80079ce:	6818      	ldr	r0, [r3, #0]
 80079d0:	f7f8 ffd2 	bl	8000978 <__aeabi_fmul>
 80079d4:	1c03      	adds	r3, r0, #0
 80079d6:	1c19      	adds	r1, r3, #0
 80079d8:	6e38      	ldr	r0, [r7, #96]	; 0x60
 80079da:	f7f9 f8ff 	bl	8000bdc <__aeabi_fsub>
 80079de:	1c03      	adds	r3, r0, #0
 80079e0:	663b      	str	r3, [r7, #96]	; 0x60
 80079e2:	6df9      	ldr	r1, [r7, #92]	; 0x5c
 80079e4:	20fe      	movs	r0, #254	; 0xfe
 80079e6:	0580      	lsls	r0, r0, #22
 80079e8:	f7f8 fdee 	bl	80005c8 <__aeabi_fdiv>
 80079ec:	1c03      	adds	r3, r0, #0
 80079ee:	6ef9      	ldr	r1, [r7, #108]	; 0x6c
 80079f0:	1c18      	adds	r0, r3, #0
 80079f2:	f7f8 ffc1 	bl	8000978 <__aeabi_fmul>
 80079f6:	1c03      	adds	r3, r0, #0
 80079f8:	1c1a      	adds	r2, r3, #0
 80079fa:	4b65      	ldr	r3, [pc, #404]	; (8007b90 <MadgwickAHRSupdateIMU+0x850>)
 80079fc:	681b      	ldr	r3, [r3, #0]
 80079fe:	1c19      	adds	r1, r3, #0
 8007a00:	1c10      	adds	r0, r2, #0
 8007a02:	f7f8 fc47 	bl	8000294 <__aeabi_fadd>
 8007a06:	1c03      	adds	r3, r0, #0
 8007a08:	1c1a      	adds	r2, r3, #0
 8007a0a:	4b61      	ldr	r3, [pc, #388]	; (8007b90 <MadgwickAHRSupdateIMU+0x850>)
 8007a0c:	601a      	str	r2, [r3, #0]
 8007a0e:	6df9      	ldr	r1, [r7, #92]	; 0x5c
 8007a10:	20fe      	movs	r0, #254	; 0xfe
 8007a12:	0580      	lsls	r0, r0, #22
 8007a14:	f7f8 fdd8 	bl	80005c8 <__aeabi_fdiv>
 8007a18:	1c03      	adds	r3, r0, #0
 8007a1a:	6eb9      	ldr	r1, [r7, #104]	; 0x68
 8007a1c:	1c18      	adds	r0, r3, #0
 8007a1e:	f7f8 ffab 	bl	8000978 <__aeabi_fmul>
 8007a22:	1c03      	adds	r3, r0, #0
 8007a24:	1c1a      	adds	r2, r3, #0
 8007a26:	4b5b      	ldr	r3, [pc, #364]	; (8007b94 <MadgwickAHRSupdateIMU+0x854>)
 8007a28:	681b      	ldr	r3, [r3, #0]
 8007a2a:	1c19      	adds	r1, r3, #0
 8007a2c:	1c10      	adds	r0, r2, #0
 8007a2e:	f7f8 fc31 	bl	8000294 <__aeabi_fadd>
 8007a32:	1c03      	adds	r3, r0, #0
 8007a34:	1c1a      	adds	r2, r3, #0
 8007a36:	4b57      	ldr	r3, [pc, #348]	; (8007b94 <MadgwickAHRSupdateIMU+0x854>)
 8007a38:	601a      	str	r2, [r3, #0]
 8007a3a:	6df9      	ldr	r1, [r7, #92]	; 0x5c
 8007a3c:	20fe      	movs	r0, #254	; 0xfe
 8007a3e:	0580      	lsls	r0, r0, #22
 8007a40:	f7f8 fdc2 	bl	80005c8 <__aeabi_fdiv>
 8007a44:	1c03      	adds	r3, r0, #0
 8007a46:	6e79      	ldr	r1, [r7, #100]	; 0x64
 8007a48:	1c18      	adds	r0, r3, #0
 8007a4a:	f7f8 ff95 	bl	8000978 <__aeabi_fmul>
 8007a4e:	1c03      	adds	r3, r0, #0
 8007a50:	1c1a      	adds	r2, r3, #0
 8007a52:	4b4d      	ldr	r3, [pc, #308]	; (8007b88 <MadgwickAHRSupdateIMU+0x848>)
 8007a54:	681b      	ldr	r3, [r3, #0]
 8007a56:	1c19      	adds	r1, r3, #0
 8007a58:	1c10      	adds	r0, r2, #0
 8007a5a:	f7f8 fc1b 	bl	8000294 <__aeabi_fadd>
 8007a5e:	1c03      	adds	r3, r0, #0
 8007a60:	1c1a      	adds	r2, r3, #0
 8007a62:	4b49      	ldr	r3, [pc, #292]	; (8007b88 <MadgwickAHRSupdateIMU+0x848>)
 8007a64:	601a      	str	r2, [r3, #0]
 8007a66:	6df9      	ldr	r1, [r7, #92]	; 0x5c
 8007a68:	20fe      	movs	r0, #254	; 0xfe
 8007a6a:	0580      	lsls	r0, r0, #22
 8007a6c:	f7f8 fdac 	bl	80005c8 <__aeabi_fdiv>
 8007a70:	1c03      	adds	r3, r0, #0
 8007a72:	6e39      	ldr	r1, [r7, #96]	; 0x60
 8007a74:	1c18      	adds	r0, r3, #0
 8007a76:	f7f8 ff7f 	bl	8000978 <__aeabi_fmul>
 8007a7a:	1c03      	adds	r3, r0, #0
 8007a7c:	1c1a      	adds	r2, r3, #0
 8007a7e:	4b43      	ldr	r3, [pc, #268]	; (8007b8c <MadgwickAHRSupdateIMU+0x84c>)
 8007a80:	681b      	ldr	r3, [r3, #0]
 8007a82:	1c19      	adds	r1, r3, #0
 8007a84:	1c10      	adds	r0, r2, #0
 8007a86:	f7f8 fc05 	bl	8000294 <__aeabi_fadd>
 8007a8a:	1c03      	adds	r3, r0, #0
 8007a8c:	1c1a      	adds	r2, r3, #0
 8007a8e:	4b3f      	ldr	r3, [pc, #252]	; (8007b8c <MadgwickAHRSupdateIMU+0x84c>)
 8007a90:	601a      	str	r2, [r3, #0]
 8007a92:	4b3f      	ldr	r3, [pc, #252]	; (8007b90 <MadgwickAHRSupdateIMU+0x850>)
 8007a94:	681a      	ldr	r2, [r3, #0]
 8007a96:	4b3e      	ldr	r3, [pc, #248]	; (8007b90 <MadgwickAHRSupdateIMU+0x850>)
 8007a98:	681b      	ldr	r3, [r3, #0]
 8007a9a:	1c19      	adds	r1, r3, #0
 8007a9c:	1c10      	adds	r0, r2, #0
 8007a9e:	f7f8 ff6b 	bl	8000978 <__aeabi_fmul>
 8007aa2:	1c03      	adds	r3, r0, #0
 8007aa4:	1c1c      	adds	r4, r3, #0
 8007aa6:	4b3b      	ldr	r3, [pc, #236]	; (8007b94 <MadgwickAHRSupdateIMU+0x854>)
 8007aa8:	681a      	ldr	r2, [r3, #0]
 8007aaa:	4b3a      	ldr	r3, [pc, #232]	; (8007b94 <MadgwickAHRSupdateIMU+0x854>)
 8007aac:	681b      	ldr	r3, [r3, #0]
 8007aae:	1c19      	adds	r1, r3, #0
 8007ab0:	1c10      	adds	r0, r2, #0
 8007ab2:	f7f8 ff61 	bl	8000978 <__aeabi_fmul>
 8007ab6:	1c03      	adds	r3, r0, #0
 8007ab8:	1c19      	adds	r1, r3, #0
 8007aba:	1c20      	adds	r0, r4, #0
 8007abc:	f7f8 fbea 	bl	8000294 <__aeabi_fadd>
 8007ac0:	1c03      	adds	r3, r0, #0
 8007ac2:	1c1c      	adds	r4, r3, #0
 8007ac4:	4b30      	ldr	r3, [pc, #192]	; (8007b88 <MadgwickAHRSupdateIMU+0x848>)
 8007ac6:	681a      	ldr	r2, [r3, #0]
 8007ac8:	4b2f      	ldr	r3, [pc, #188]	; (8007b88 <MadgwickAHRSupdateIMU+0x848>)
 8007aca:	681b      	ldr	r3, [r3, #0]
 8007acc:	1c19      	adds	r1, r3, #0
 8007ace:	1c10      	adds	r0, r2, #0
 8007ad0:	f7f8 ff52 	bl	8000978 <__aeabi_fmul>
 8007ad4:	1c03      	adds	r3, r0, #0
 8007ad6:	1c19      	adds	r1, r3, #0
 8007ad8:	1c20      	adds	r0, r4, #0
 8007ada:	f7f8 fbdb 	bl	8000294 <__aeabi_fadd>
 8007ade:	1c03      	adds	r3, r0, #0
 8007ae0:	1c1c      	adds	r4, r3, #0
 8007ae2:	4b2a      	ldr	r3, [pc, #168]	; (8007b8c <MadgwickAHRSupdateIMU+0x84c>)
 8007ae4:	681a      	ldr	r2, [r3, #0]
 8007ae6:	4b29      	ldr	r3, [pc, #164]	; (8007b8c <MadgwickAHRSupdateIMU+0x84c>)
 8007ae8:	681b      	ldr	r3, [r3, #0]
 8007aea:	1c19      	adds	r1, r3, #0
 8007aec:	1c10      	adds	r0, r2, #0
 8007aee:	f7f8 ff43 	bl	8000978 <__aeabi_fmul>
 8007af2:	1c03      	adds	r3, r0, #0
 8007af4:	1c19      	adds	r1, r3, #0
 8007af6:	1c20      	adds	r0, r4, #0
 8007af8:	f7f8 fbcc 	bl	8000294 <__aeabi_fadd>
 8007afc:	1c03      	adds	r3, r0, #0
 8007afe:	1c18      	adds	r0, r3, #0
 8007b00:	f000 f84a 	bl	8007b98 <invSqrt>
 8007b04:	1c03      	adds	r3, r0, #0
 8007b06:	65bb      	str	r3, [r7, #88]	; 0x58
 8007b08:	4b21      	ldr	r3, [pc, #132]	; (8007b90 <MadgwickAHRSupdateIMU+0x850>)
 8007b0a:	681b      	ldr	r3, [r3, #0]
 8007b0c:	6db9      	ldr	r1, [r7, #88]	; 0x58
 8007b0e:	1c18      	adds	r0, r3, #0
 8007b10:	f7f8 ff32 	bl	8000978 <__aeabi_fmul>
 8007b14:	1c03      	adds	r3, r0, #0
 8007b16:	1c1a      	adds	r2, r3, #0
 8007b18:	4b1d      	ldr	r3, [pc, #116]	; (8007b90 <MadgwickAHRSupdateIMU+0x850>)
 8007b1a:	601a      	str	r2, [r3, #0]
 8007b1c:	4b1d      	ldr	r3, [pc, #116]	; (8007b94 <MadgwickAHRSupdateIMU+0x854>)
 8007b1e:	681b      	ldr	r3, [r3, #0]
 8007b20:	6db9      	ldr	r1, [r7, #88]	; 0x58
 8007b22:	1c18      	adds	r0, r3, #0
 8007b24:	f7f8 ff28 	bl	8000978 <__aeabi_fmul>
 8007b28:	1c03      	adds	r3, r0, #0
 8007b2a:	1c1a      	adds	r2, r3, #0
 8007b2c:	4b19      	ldr	r3, [pc, #100]	; (8007b94 <MadgwickAHRSupdateIMU+0x854>)
 8007b2e:	601a      	str	r2, [r3, #0]
 8007b30:	4b15      	ldr	r3, [pc, #84]	; (8007b88 <MadgwickAHRSupdateIMU+0x848>)
 8007b32:	681b      	ldr	r3, [r3, #0]
 8007b34:	6db9      	ldr	r1, [r7, #88]	; 0x58
 8007b36:	1c18      	adds	r0, r3, #0
 8007b38:	f7f8 ff1e 	bl	8000978 <__aeabi_fmul>
 8007b3c:	1c03      	adds	r3, r0, #0
 8007b3e:	1c1a      	adds	r2, r3, #0
 8007b40:	4b11      	ldr	r3, [pc, #68]	; (8007b88 <MadgwickAHRSupdateIMU+0x848>)
 8007b42:	601a      	str	r2, [r3, #0]
 8007b44:	4b11      	ldr	r3, [pc, #68]	; (8007b8c <MadgwickAHRSupdateIMU+0x84c>)
 8007b46:	681b      	ldr	r3, [r3, #0]
 8007b48:	6db9      	ldr	r1, [r7, #88]	; 0x58
 8007b4a:	1c18      	adds	r0, r3, #0
 8007b4c:	f7f8 ff14 	bl	8000978 <__aeabi_fmul>
 8007b50:	1c03      	adds	r3, r0, #0
 8007b52:	1c1a      	adds	r2, r3, #0
 8007b54:	4b0d      	ldr	r3, [pc, #52]	; (8007b8c <MadgwickAHRSupdateIMU+0x84c>)
 8007b56:	601a      	str	r2, [r3, #0]
 8007b58:	4b0d      	ldr	r3, [pc, #52]	; (8007b90 <MadgwickAHRSupdateIMU+0x850>)
 8007b5a:	681a      	ldr	r2, [r3, #0]
 8007b5c:	68fb      	ldr	r3, [r7, #12]
 8007b5e:	601a      	str	r2, [r3, #0]
 8007b60:	68fb      	ldr	r3, [r7, #12]
 8007b62:	3304      	adds	r3, #4
 8007b64:	4a0b      	ldr	r2, [pc, #44]	; (8007b94 <MadgwickAHRSupdateIMU+0x854>)
 8007b66:	6812      	ldr	r2, [r2, #0]
 8007b68:	601a      	str	r2, [r3, #0]
 8007b6a:	68fb      	ldr	r3, [r7, #12]
 8007b6c:	3308      	adds	r3, #8
 8007b6e:	4a06      	ldr	r2, [pc, #24]	; (8007b88 <MadgwickAHRSupdateIMU+0x848>)
 8007b70:	6812      	ldr	r2, [r2, #0]
 8007b72:	601a      	str	r2, [r3, #0]
 8007b74:	68fb      	ldr	r3, [r7, #12]
 8007b76:	330c      	adds	r3, #12
 8007b78:	4a04      	ldr	r2, [pc, #16]	; (8007b8c <MadgwickAHRSupdateIMU+0x84c>)
 8007b7a:	6812      	ldr	r2, [r2, #0]
 8007b7c:	601a      	str	r2, [r3, #0]
 8007b7e:	46c0      	nop			; (mov r8, r8)
 8007b80:	46bd      	mov	sp, r7
 8007b82:	b01d      	add	sp, #116	; 0x74
 8007b84:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007b86:	46c0      	nop			; (mov r8, r8)
 8007b88:	200001d4 	.word	0x200001d4
 8007b8c:	200001d8 	.word	0x200001d8
 8007b90:	20000000 	.word	0x20000000
 8007b94:	200001d0 	.word	0x200001d0

08007b98 <invSqrt>:
 8007b98:	b580      	push	{r7, lr}
 8007b9a:	b084      	sub	sp, #16
 8007b9c:	af00      	add	r7, sp, #0
 8007b9e:	6078      	str	r0, [r7, #4]
 8007ba0:	1d3b      	adds	r3, r7, #4
 8007ba2:	681b      	ldr	r3, [r3, #0]
 8007ba4:	085b      	lsrs	r3, r3, #1
 8007ba6:	4a12      	ldr	r2, [pc, #72]	; (8007bf0 <invSqrt+0x58>)
 8007ba8:	1ad3      	subs	r3, r2, r3
 8007baa:	60bb      	str	r3, [r7, #8]
 8007bac:	2308      	movs	r3, #8
 8007bae:	18fb      	adds	r3, r7, r3
 8007bb0:	681b      	ldr	r3, [r3, #0]
 8007bb2:	60fb      	str	r3, [r7, #12]
 8007bb4:	687b      	ldr	r3, [r7, #4]
 8007bb6:	490f      	ldr	r1, [pc, #60]	; (8007bf4 <invSqrt+0x5c>)
 8007bb8:	1c18      	adds	r0, r3, #0
 8007bba:	f7f8 fedd 	bl	8000978 <__aeabi_fmul>
 8007bbe:	1c03      	adds	r3, r0, #0
 8007bc0:	68f9      	ldr	r1, [r7, #12]
 8007bc2:	1c18      	adds	r0, r3, #0
 8007bc4:	f7f8 fed8 	bl	8000978 <__aeabi_fmul>
 8007bc8:	1c03      	adds	r3, r0, #0
 8007bca:	68f9      	ldr	r1, [r7, #12]
 8007bcc:	1c18      	adds	r0, r3, #0
 8007bce:	f7f8 fed3 	bl	8000978 <__aeabi_fmul>
 8007bd2:	1c03      	adds	r3, r0, #0
 8007bd4:	1c19      	adds	r1, r3, #0
 8007bd6:	4808      	ldr	r0, [pc, #32]	; (8007bf8 <invSqrt+0x60>)
 8007bd8:	f7f9 f800 	bl	8000bdc <__aeabi_fsub>
 8007bdc:	1c03      	adds	r3, r0, #0
 8007bde:	68f9      	ldr	r1, [r7, #12]
 8007be0:	1c18      	adds	r0, r3, #0
 8007be2:	f7f8 fec9 	bl	8000978 <__aeabi_fmul>
 8007be6:	1c03      	adds	r3, r0, #0
 8007be8:	1c18      	adds	r0, r3, #0
 8007bea:	46bd      	mov	sp, r7
 8007bec:	b004      	add	sp, #16
 8007bee:	bd80      	pop	{r7, pc}
 8007bf0:	5f1f1412 	.word	0x5f1f1412
 8007bf4:	3f36d312 	.word	0x3f36d312
 8007bf8:	3fd851ff 	.word	0x3fd851ff

08007bfc <MahonyAHRSupdateIMU>:
 8007bfc:	b590      	push	{r4, r7, lr}
 8007bfe:	b091      	sub	sp, #68	; 0x44
 8007c00:	af00      	add	r7, sp, #0
 8007c02:	60f8      	str	r0, [r7, #12]
 8007c04:	60b9      	str	r1, [r7, #8]
 8007c06:	607a      	str	r2, [r7, #4]
 8007c08:	603b      	str	r3, [r7, #0]
 8007c0a:	6df9      	ldr	r1, [r7, #92]	; 0x5c
 8007c0c:	20fe      	movs	r0, #254	; 0xfe
 8007c0e:	0580      	lsls	r0, r0, #22
 8007c10:	f7f8 fcda 	bl	80005c8 <__aeabi_fdiv>
 8007c14:	1c03      	adds	r3, r0, #0
 8007c16:	63fb      	str	r3, [r7, #60]	; 0x3c
 8007c18:	2100      	movs	r1, #0
 8007c1a:	6d38      	ldr	r0, [r7, #80]	; 0x50
 8007c1c:	f7f8 fb0c 	bl	8000238 <__aeabi_fcmpeq>
 8007c20:	1e03      	subs	r3, r0, #0
 8007c22:	d00c      	beq.n	8007c3e <MahonyAHRSupdateIMU+0x42>
 8007c24:	2100      	movs	r1, #0
 8007c26:	6d78      	ldr	r0, [r7, #84]	; 0x54
 8007c28:	f7f8 fb06 	bl	8000238 <__aeabi_fcmpeq>
 8007c2c:	1e03      	subs	r3, r0, #0
 8007c2e:	d006      	beq.n	8007c3e <MahonyAHRSupdateIMU+0x42>
 8007c30:	2100      	movs	r1, #0
 8007c32:	6db8      	ldr	r0, [r7, #88]	; 0x58
 8007c34:	f7f8 fb00 	bl	8000238 <__aeabi_fcmpeq>
 8007c38:	1e03      	subs	r3, r0, #0
 8007c3a:	d000      	beq.n	8007c3e <MahonyAHRSupdateIMU+0x42>
 8007c3c:	e160      	b.n	8007f00 <MahonyAHRSupdateIMU+0x304>
 8007c3e:	6d39      	ldr	r1, [r7, #80]	; 0x50
 8007c40:	6d38      	ldr	r0, [r7, #80]	; 0x50
 8007c42:	f7f8 fe99 	bl	8000978 <__aeabi_fmul>
 8007c46:	1c03      	adds	r3, r0, #0
 8007c48:	1c1c      	adds	r4, r3, #0
 8007c4a:	6d79      	ldr	r1, [r7, #84]	; 0x54
 8007c4c:	6d78      	ldr	r0, [r7, #84]	; 0x54
 8007c4e:	f7f8 fe93 	bl	8000978 <__aeabi_fmul>
 8007c52:	1c03      	adds	r3, r0, #0
 8007c54:	1c19      	adds	r1, r3, #0
 8007c56:	1c20      	adds	r0, r4, #0
 8007c58:	f7f8 fb1c 	bl	8000294 <__aeabi_fadd>
 8007c5c:	1c03      	adds	r3, r0, #0
 8007c5e:	1c1c      	adds	r4, r3, #0
 8007c60:	6db9      	ldr	r1, [r7, #88]	; 0x58
 8007c62:	6db8      	ldr	r0, [r7, #88]	; 0x58
 8007c64:	f7f8 fe88 	bl	8000978 <__aeabi_fmul>
 8007c68:	1c03      	adds	r3, r0, #0
 8007c6a:	1c19      	adds	r1, r3, #0
 8007c6c:	1c20      	adds	r0, r4, #0
 8007c6e:	f7f8 fb11 	bl	8000294 <__aeabi_fadd>
 8007c72:	1c03      	adds	r3, r0, #0
 8007c74:	1c18      	adds	r0, r3, #0
 8007c76:	f000 faad 	bl	80081d4 <invSqrt>
 8007c7a:	1c03      	adds	r3, r0, #0
 8007c7c:	63bb      	str	r3, [r7, #56]	; 0x38
 8007c7e:	6bb9      	ldr	r1, [r7, #56]	; 0x38
 8007c80:	6d38      	ldr	r0, [r7, #80]	; 0x50
 8007c82:	f7f8 fe79 	bl	8000978 <__aeabi_fmul>
 8007c86:	1c03      	adds	r3, r0, #0
 8007c88:	653b      	str	r3, [r7, #80]	; 0x50
 8007c8a:	6bb9      	ldr	r1, [r7, #56]	; 0x38
 8007c8c:	6d78      	ldr	r0, [r7, #84]	; 0x54
 8007c8e:	f7f8 fe73 	bl	8000978 <__aeabi_fmul>
 8007c92:	1c03      	adds	r3, r0, #0
 8007c94:	657b      	str	r3, [r7, #84]	; 0x54
 8007c96:	6bb9      	ldr	r1, [r7, #56]	; 0x38
 8007c98:	6db8      	ldr	r0, [r7, #88]	; 0x58
 8007c9a:	f7f8 fe6d 	bl	8000978 <__aeabi_fmul>
 8007c9e:	1c03      	adds	r3, r0, #0
 8007ca0:	65bb      	str	r3, [r7, #88]	; 0x58
 8007ca2:	4b7b      	ldr	r3, [pc, #492]	; (8007e90 <MahonyAHRSupdateIMU+0x294>)
 8007ca4:	681a      	ldr	r2, [r3, #0]
 8007ca6:	4b7b      	ldr	r3, [pc, #492]	; (8007e94 <MahonyAHRSupdateIMU+0x298>)
 8007ca8:	681b      	ldr	r3, [r3, #0]
 8007caa:	1c19      	adds	r1, r3, #0
 8007cac:	1c10      	adds	r0, r2, #0
 8007cae:	f7f8 fe63 	bl	8000978 <__aeabi_fmul>
 8007cb2:	1c03      	adds	r3, r0, #0
 8007cb4:	1c1c      	adds	r4, r3, #0
 8007cb6:	4b78      	ldr	r3, [pc, #480]	; (8007e98 <MahonyAHRSupdateIMU+0x29c>)
 8007cb8:	681a      	ldr	r2, [r3, #0]
 8007cba:	4b78      	ldr	r3, [pc, #480]	; (8007e9c <MahonyAHRSupdateIMU+0x2a0>)
 8007cbc:	681b      	ldr	r3, [r3, #0]
 8007cbe:	1c19      	adds	r1, r3, #0
 8007cc0:	1c10      	adds	r0, r2, #0
 8007cc2:	f7f8 fe59 	bl	8000978 <__aeabi_fmul>
 8007cc6:	1c03      	adds	r3, r0, #0
 8007cc8:	1c19      	adds	r1, r3, #0
 8007cca:	1c20      	adds	r0, r4, #0
 8007ccc:	f7f8 ff86 	bl	8000bdc <__aeabi_fsub>
 8007cd0:	1c03      	adds	r3, r0, #0
 8007cd2:	637b      	str	r3, [r7, #52]	; 0x34
 8007cd4:	4b70      	ldr	r3, [pc, #448]	; (8007e98 <MahonyAHRSupdateIMU+0x29c>)
 8007cd6:	681a      	ldr	r2, [r3, #0]
 8007cd8:	4b6d      	ldr	r3, [pc, #436]	; (8007e90 <MahonyAHRSupdateIMU+0x294>)
 8007cda:	681b      	ldr	r3, [r3, #0]
 8007cdc:	1c19      	adds	r1, r3, #0
 8007cde:	1c10      	adds	r0, r2, #0
 8007ce0:	f7f8 fe4a 	bl	8000978 <__aeabi_fmul>
 8007ce4:	1c03      	adds	r3, r0, #0
 8007ce6:	1c1c      	adds	r4, r3, #0
 8007ce8:	4b6c      	ldr	r3, [pc, #432]	; (8007e9c <MahonyAHRSupdateIMU+0x2a0>)
 8007cea:	681a      	ldr	r2, [r3, #0]
 8007cec:	4b69      	ldr	r3, [pc, #420]	; (8007e94 <MahonyAHRSupdateIMU+0x298>)
 8007cee:	681b      	ldr	r3, [r3, #0]
 8007cf0:	1c19      	adds	r1, r3, #0
 8007cf2:	1c10      	adds	r0, r2, #0
 8007cf4:	f7f8 fe40 	bl	8000978 <__aeabi_fmul>
 8007cf8:	1c03      	adds	r3, r0, #0
 8007cfa:	1c19      	adds	r1, r3, #0
 8007cfc:	1c20      	adds	r0, r4, #0
 8007cfe:	f7f8 fac9 	bl	8000294 <__aeabi_fadd>
 8007d02:	1c03      	adds	r3, r0, #0
 8007d04:	633b      	str	r3, [r7, #48]	; 0x30
 8007d06:	4b64      	ldr	r3, [pc, #400]	; (8007e98 <MahonyAHRSupdateIMU+0x29c>)
 8007d08:	681a      	ldr	r2, [r3, #0]
 8007d0a:	4b63      	ldr	r3, [pc, #396]	; (8007e98 <MahonyAHRSupdateIMU+0x29c>)
 8007d0c:	681b      	ldr	r3, [r3, #0]
 8007d0e:	1c19      	adds	r1, r3, #0
 8007d10:	1c10      	adds	r0, r2, #0
 8007d12:	f7f8 fe31 	bl	8000978 <__aeabi_fmul>
 8007d16:	1c03      	adds	r3, r0, #0
 8007d18:	21fc      	movs	r1, #252	; 0xfc
 8007d1a:	0589      	lsls	r1, r1, #22
 8007d1c:	1c18      	adds	r0, r3, #0
 8007d1e:	f7f8 ff5d 	bl	8000bdc <__aeabi_fsub>
 8007d22:	1c03      	adds	r3, r0, #0
 8007d24:	1c1c      	adds	r4, r3, #0
 8007d26:	4b5b      	ldr	r3, [pc, #364]	; (8007e94 <MahonyAHRSupdateIMU+0x298>)
 8007d28:	681a      	ldr	r2, [r3, #0]
 8007d2a:	4b5a      	ldr	r3, [pc, #360]	; (8007e94 <MahonyAHRSupdateIMU+0x298>)
 8007d2c:	681b      	ldr	r3, [r3, #0]
 8007d2e:	1c19      	adds	r1, r3, #0
 8007d30:	1c10      	adds	r0, r2, #0
 8007d32:	f7f8 fe21 	bl	8000978 <__aeabi_fmul>
 8007d36:	1c03      	adds	r3, r0, #0
 8007d38:	1c19      	adds	r1, r3, #0
 8007d3a:	1c20      	adds	r0, r4, #0
 8007d3c:	f7f8 faaa 	bl	8000294 <__aeabi_fadd>
 8007d40:	1c03      	adds	r3, r0, #0
 8007d42:	62fb      	str	r3, [r7, #44]	; 0x2c
 8007d44:	6af9      	ldr	r1, [r7, #44]	; 0x2c
 8007d46:	6d78      	ldr	r0, [r7, #84]	; 0x54
 8007d48:	f7f8 fe16 	bl	8000978 <__aeabi_fmul>
 8007d4c:	1c03      	adds	r3, r0, #0
 8007d4e:	1c1c      	adds	r4, r3, #0
 8007d50:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8007d52:	6db8      	ldr	r0, [r7, #88]	; 0x58
 8007d54:	f7f8 fe10 	bl	8000978 <__aeabi_fmul>
 8007d58:	1c03      	adds	r3, r0, #0
 8007d5a:	1c19      	adds	r1, r3, #0
 8007d5c:	1c20      	adds	r0, r4, #0
 8007d5e:	f7f8 ff3d 	bl	8000bdc <__aeabi_fsub>
 8007d62:	1c03      	adds	r3, r0, #0
 8007d64:	62bb      	str	r3, [r7, #40]	; 0x28
 8007d66:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8007d68:	6db8      	ldr	r0, [r7, #88]	; 0x58
 8007d6a:	f7f8 fe05 	bl	8000978 <__aeabi_fmul>
 8007d6e:	1c03      	adds	r3, r0, #0
 8007d70:	1c1c      	adds	r4, r3, #0
 8007d72:	6af9      	ldr	r1, [r7, #44]	; 0x2c
 8007d74:	6d38      	ldr	r0, [r7, #80]	; 0x50
 8007d76:	f7f8 fdff 	bl	8000978 <__aeabi_fmul>
 8007d7a:	1c03      	adds	r3, r0, #0
 8007d7c:	1c19      	adds	r1, r3, #0
 8007d7e:	1c20      	adds	r0, r4, #0
 8007d80:	f7f8 ff2c 	bl	8000bdc <__aeabi_fsub>
 8007d84:	1c03      	adds	r3, r0, #0
 8007d86:	627b      	str	r3, [r7, #36]	; 0x24
 8007d88:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8007d8a:	6d38      	ldr	r0, [r7, #80]	; 0x50
 8007d8c:	f7f8 fdf4 	bl	8000978 <__aeabi_fmul>
 8007d90:	1c03      	adds	r3, r0, #0
 8007d92:	1c1c      	adds	r4, r3, #0
 8007d94:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8007d96:	6d78      	ldr	r0, [r7, #84]	; 0x54
 8007d98:	f7f8 fdee 	bl	8000978 <__aeabi_fmul>
 8007d9c:	1c03      	adds	r3, r0, #0
 8007d9e:	1c19      	adds	r1, r3, #0
 8007da0:	1c20      	adds	r0, r4, #0
 8007da2:	f7f8 ff1b 	bl	8000bdc <__aeabi_fsub>
 8007da6:	1c03      	adds	r3, r0, #0
 8007da8:	623b      	str	r3, [r7, #32]
 8007daa:	2100      	movs	r1, #0
 8007dac:	6e78      	ldr	r0, [r7, #100]	; 0x64
 8007dae:	f7f8 fa5d 	bl	800026c <__aeabi_fcmpgt>
 8007db2:	1e03      	subs	r3, r0, #0
 8007db4:	d07a      	beq.n	8007eac <MahonyAHRSupdateIMU+0x2b0>
 8007db6:	6ab9      	ldr	r1, [r7, #40]	; 0x28
 8007db8:	6e78      	ldr	r0, [r7, #100]	; 0x64
 8007dba:	f7f8 fddd 	bl	8000978 <__aeabi_fmul>
 8007dbe:	1c03      	adds	r3, r0, #0
 8007dc0:	1c1c      	adds	r4, r3, #0
 8007dc2:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8007dc4:	20fe      	movs	r0, #254	; 0xfe
 8007dc6:	0580      	lsls	r0, r0, #22
 8007dc8:	f7f8 fbfe 	bl	80005c8 <__aeabi_fdiv>
 8007dcc:	1c03      	adds	r3, r0, #0
 8007dce:	1c19      	adds	r1, r3, #0
 8007dd0:	1c20      	adds	r0, r4, #0
 8007dd2:	f7f8 fdd1 	bl	8000978 <__aeabi_fmul>
 8007dd6:	1c03      	adds	r3, r0, #0
 8007dd8:	1c1a      	adds	r2, r3, #0
 8007dda:	4b31      	ldr	r3, [pc, #196]	; (8007ea0 <MahonyAHRSupdateIMU+0x2a4>)
 8007ddc:	681b      	ldr	r3, [r3, #0]
 8007dde:	1c19      	adds	r1, r3, #0
 8007de0:	1c10      	adds	r0, r2, #0
 8007de2:	f7f8 fa57 	bl	8000294 <__aeabi_fadd>
 8007de6:	1c03      	adds	r3, r0, #0
 8007de8:	1c1a      	adds	r2, r3, #0
 8007dea:	4b2d      	ldr	r3, [pc, #180]	; (8007ea0 <MahonyAHRSupdateIMU+0x2a4>)
 8007dec:	601a      	str	r2, [r3, #0]
 8007dee:	6a79      	ldr	r1, [r7, #36]	; 0x24
 8007df0:	6e78      	ldr	r0, [r7, #100]	; 0x64
 8007df2:	f7f8 fdc1 	bl	8000978 <__aeabi_fmul>
 8007df6:	1c03      	adds	r3, r0, #0
 8007df8:	1c1c      	adds	r4, r3, #0
 8007dfa:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8007dfc:	20fe      	movs	r0, #254	; 0xfe
 8007dfe:	0580      	lsls	r0, r0, #22
 8007e00:	f7f8 fbe2 	bl	80005c8 <__aeabi_fdiv>
 8007e04:	1c03      	adds	r3, r0, #0
 8007e06:	1c19      	adds	r1, r3, #0
 8007e08:	1c20      	adds	r0, r4, #0
 8007e0a:	f7f8 fdb5 	bl	8000978 <__aeabi_fmul>
 8007e0e:	1c03      	adds	r3, r0, #0
 8007e10:	1c1a      	adds	r2, r3, #0
 8007e12:	4b24      	ldr	r3, [pc, #144]	; (8007ea4 <MahonyAHRSupdateIMU+0x2a8>)
 8007e14:	681b      	ldr	r3, [r3, #0]
 8007e16:	1c19      	adds	r1, r3, #0
 8007e18:	1c10      	adds	r0, r2, #0
 8007e1a:	f7f8 fa3b 	bl	8000294 <__aeabi_fadd>
 8007e1e:	1c03      	adds	r3, r0, #0
 8007e20:	1c1a      	adds	r2, r3, #0
 8007e22:	4b20      	ldr	r3, [pc, #128]	; (8007ea4 <MahonyAHRSupdateIMU+0x2a8>)
 8007e24:	601a      	str	r2, [r3, #0]
 8007e26:	6a39      	ldr	r1, [r7, #32]
 8007e28:	6e78      	ldr	r0, [r7, #100]	; 0x64
 8007e2a:	f7f8 fda5 	bl	8000978 <__aeabi_fmul>
 8007e2e:	1c03      	adds	r3, r0, #0
 8007e30:	1c1c      	adds	r4, r3, #0
 8007e32:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8007e34:	20fe      	movs	r0, #254	; 0xfe
 8007e36:	0580      	lsls	r0, r0, #22
 8007e38:	f7f8 fbc6 	bl	80005c8 <__aeabi_fdiv>
 8007e3c:	1c03      	adds	r3, r0, #0
 8007e3e:	1c19      	adds	r1, r3, #0
 8007e40:	1c20      	adds	r0, r4, #0
 8007e42:	f7f8 fd99 	bl	8000978 <__aeabi_fmul>
 8007e46:	1c03      	adds	r3, r0, #0
 8007e48:	1c1a      	adds	r2, r3, #0
 8007e4a:	4b17      	ldr	r3, [pc, #92]	; (8007ea8 <MahonyAHRSupdateIMU+0x2ac>)
 8007e4c:	681b      	ldr	r3, [r3, #0]
 8007e4e:	1c19      	adds	r1, r3, #0
 8007e50:	1c10      	adds	r0, r2, #0
 8007e52:	f7f8 fa1f 	bl	8000294 <__aeabi_fadd>
 8007e56:	1c03      	adds	r3, r0, #0
 8007e58:	1c1a      	adds	r2, r3, #0
 8007e5a:	4b13      	ldr	r3, [pc, #76]	; (8007ea8 <MahonyAHRSupdateIMU+0x2ac>)
 8007e5c:	601a      	str	r2, [r3, #0]
 8007e5e:	4b10      	ldr	r3, [pc, #64]	; (8007ea0 <MahonyAHRSupdateIMU+0x2a4>)
 8007e60:	681b      	ldr	r3, [r3, #0]
 8007e62:	1c19      	adds	r1, r3, #0
 8007e64:	68b8      	ldr	r0, [r7, #8]
 8007e66:	f7f8 fa15 	bl	8000294 <__aeabi_fadd>
 8007e6a:	1c03      	adds	r3, r0, #0
 8007e6c:	60bb      	str	r3, [r7, #8]
 8007e6e:	4b0d      	ldr	r3, [pc, #52]	; (8007ea4 <MahonyAHRSupdateIMU+0x2a8>)
 8007e70:	681b      	ldr	r3, [r3, #0]
 8007e72:	1c19      	adds	r1, r3, #0
 8007e74:	6878      	ldr	r0, [r7, #4]
 8007e76:	f7f8 fa0d 	bl	8000294 <__aeabi_fadd>
 8007e7a:	1c03      	adds	r3, r0, #0
 8007e7c:	607b      	str	r3, [r7, #4]
 8007e7e:	4b0a      	ldr	r3, [pc, #40]	; (8007ea8 <MahonyAHRSupdateIMU+0x2ac>)
 8007e80:	681b      	ldr	r3, [r3, #0]
 8007e82:	1c19      	adds	r1, r3, #0
 8007e84:	6838      	ldr	r0, [r7, #0]
 8007e86:	f7f8 fa05 	bl	8000294 <__aeabi_fadd>
 8007e8a:	1c03      	adds	r3, r0, #0
 8007e8c:	603b      	str	r3, [r7, #0]
 8007e8e:	e016      	b.n	8007ebe <MahonyAHRSupdateIMU+0x2c2>
 8007e90:	200001dc 	.word	0x200001dc
 8007e94:	200001e4 	.word	0x200001e4
 8007e98:	20000004 	.word	0x20000004
 8007e9c:	200001e0 	.word	0x200001e0
 8007ea0:	200001e8 	.word	0x200001e8
 8007ea4:	200001ec 	.word	0x200001ec
 8007ea8:	200001f0 	.word	0x200001f0
 8007eac:	4bc2      	ldr	r3, [pc, #776]	; (80081b8 <MahonyAHRSupdateIMU+0x5bc>)
 8007eae:	2200      	movs	r2, #0
 8007eb0:	601a      	str	r2, [r3, #0]
 8007eb2:	4bc2      	ldr	r3, [pc, #776]	; (80081bc <MahonyAHRSupdateIMU+0x5c0>)
 8007eb4:	2200      	movs	r2, #0
 8007eb6:	601a      	str	r2, [r3, #0]
 8007eb8:	4bc1      	ldr	r3, [pc, #772]	; (80081c0 <MahonyAHRSupdateIMU+0x5c4>)
 8007eba:	2200      	movs	r2, #0
 8007ebc:	601a      	str	r2, [r3, #0]
 8007ebe:	6ab9      	ldr	r1, [r7, #40]	; 0x28
 8007ec0:	6e38      	ldr	r0, [r7, #96]	; 0x60
 8007ec2:	f7f8 fd59 	bl	8000978 <__aeabi_fmul>
 8007ec6:	1c03      	adds	r3, r0, #0
 8007ec8:	1c19      	adds	r1, r3, #0
 8007eca:	68b8      	ldr	r0, [r7, #8]
 8007ecc:	f7f8 f9e2 	bl	8000294 <__aeabi_fadd>
 8007ed0:	1c03      	adds	r3, r0, #0
 8007ed2:	60bb      	str	r3, [r7, #8]
 8007ed4:	6a79      	ldr	r1, [r7, #36]	; 0x24
 8007ed6:	6e38      	ldr	r0, [r7, #96]	; 0x60
 8007ed8:	f7f8 fd4e 	bl	8000978 <__aeabi_fmul>
 8007edc:	1c03      	adds	r3, r0, #0
 8007ede:	1c19      	adds	r1, r3, #0
 8007ee0:	6878      	ldr	r0, [r7, #4]
 8007ee2:	f7f8 f9d7 	bl	8000294 <__aeabi_fadd>
 8007ee6:	1c03      	adds	r3, r0, #0
 8007ee8:	607b      	str	r3, [r7, #4]
 8007eea:	6a39      	ldr	r1, [r7, #32]
 8007eec:	6e38      	ldr	r0, [r7, #96]	; 0x60
 8007eee:	f7f8 fd43 	bl	8000978 <__aeabi_fmul>
 8007ef2:	1c03      	adds	r3, r0, #0
 8007ef4:	1c19      	adds	r1, r3, #0
 8007ef6:	6838      	ldr	r0, [r7, #0]
 8007ef8:	f7f8 f9cc 	bl	8000294 <__aeabi_fadd>
 8007efc:	1c03      	adds	r3, r0, #0
 8007efe:	603b      	str	r3, [r7, #0]
 8007f00:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8007f02:	20fe      	movs	r0, #254	; 0xfe
 8007f04:	0580      	lsls	r0, r0, #22
 8007f06:	f7f8 fb5f 	bl	80005c8 <__aeabi_fdiv>
 8007f0a:	1c03      	adds	r3, r0, #0
 8007f0c:	21fc      	movs	r1, #252	; 0xfc
 8007f0e:	0589      	lsls	r1, r1, #22
 8007f10:	1c18      	adds	r0, r3, #0
 8007f12:	f7f8 fd31 	bl	8000978 <__aeabi_fmul>
 8007f16:	1c03      	adds	r3, r0, #0
 8007f18:	1c19      	adds	r1, r3, #0
 8007f1a:	68b8      	ldr	r0, [r7, #8]
 8007f1c:	f7f8 fd2c 	bl	8000978 <__aeabi_fmul>
 8007f20:	1c03      	adds	r3, r0, #0
 8007f22:	60bb      	str	r3, [r7, #8]
 8007f24:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8007f26:	20fe      	movs	r0, #254	; 0xfe
 8007f28:	0580      	lsls	r0, r0, #22
 8007f2a:	f7f8 fb4d 	bl	80005c8 <__aeabi_fdiv>
 8007f2e:	1c03      	adds	r3, r0, #0
 8007f30:	21fc      	movs	r1, #252	; 0xfc
 8007f32:	0589      	lsls	r1, r1, #22
 8007f34:	1c18      	adds	r0, r3, #0
 8007f36:	f7f8 fd1f 	bl	8000978 <__aeabi_fmul>
 8007f3a:	1c03      	adds	r3, r0, #0
 8007f3c:	1c19      	adds	r1, r3, #0
 8007f3e:	6878      	ldr	r0, [r7, #4]
 8007f40:	f7f8 fd1a 	bl	8000978 <__aeabi_fmul>
 8007f44:	1c03      	adds	r3, r0, #0
 8007f46:	607b      	str	r3, [r7, #4]
 8007f48:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
 8007f4a:	20fe      	movs	r0, #254	; 0xfe
 8007f4c:	0580      	lsls	r0, r0, #22
 8007f4e:	f7f8 fb3b 	bl	80005c8 <__aeabi_fdiv>
 8007f52:	1c03      	adds	r3, r0, #0
 8007f54:	21fc      	movs	r1, #252	; 0xfc
 8007f56:	0589      	lsls	r1, r1, #22
 8007f58:	1c18      	adds	r0, r3, #0
 8007f5a:	f7f8 fd0d 	bl	8000978 <__aeabi_fmul>
 8007f5e:	1c03      	adds	r3, r0, #0
 8007f60:	1c19      	adds	r1, r3, #0
 8007f62:	6838      	ldr	r0, [r7, #0]
 8007f64:	f7f8 fd08 	bl	8000978 <__aeabi_fmul>
 8007f68:	1c03      	adds	r3, r0, #0
 8007f6a:	603b      	str	r3, [r7, #0]
 8007f6c:	4b95      	ldr	r3, [pc, #596]	; (80081c4 <MahonyAHRSupdateIMU+0x5c8>)
 8007f6e:	681b      	ldr	r3, [r3, #0]
 8007f70:	61fb      	str	r3, [r7, #28]
 8007f72:	4b95      	ldr	r3, [pc, #596]	; (80081c8 <MahonyAHRSupdateIMU+0x5cc>)
 8007f74:	681b      	ldr	r3, [r3, #0]
 8007f76:	61bb      	str	r3, [r7, #24]
 8007f78:	4b94      	ldr	r3, [pc, #592]	; (80081cc <MahonyAHRSupdateIMU+0x5d0>)
 8007f7a:	681b      	ldr	r3, [r3, #0]
 8007f7c:	617b      	str	r3, [r7, #20]
 8007f7e:	69bb      	ldr	r3, [r7, #24]
 8007f80:	2280      	movs	r2, #128	; 0x80
 8007f82:	0612      	lsls	r2, r2, #24
 8007f84:	4053      	eors	r3, r2
 8007f86:	68b9      	ldr	r1, [r7, #8]
 8007f88:	1c18      	adds	r0, r3, #0
 8007f8a:	f7f8 fcf5 	bl	8000978 <__aeabi_fmul>
 8007f8e:	1c03      	adds	r3, r0, #0
 8007f90:	1c1c      	adds	r4, r3, #0
 8007f92:	6879      	ldr	r1, [r7, #4]
 8007f94:	6978      	ldr	r0, [r7, #20]
 8007f96:	f7f8 fcef 	bl	8000978 <__aeabi_fmul>
 8007f9a:	1c03      	adds	r3, r0, #0
 8007f9c:	1c19      	adds	r1, r3, #0
 8007f9e:	1c20      	adds	r0, r4, #0
 8007fa0:	f7f8 fe1c 	bl	8000bdc <__aeabi_fsub>
 8007fa4:	1c03      	adds	r3, r0, #0
 8007fa6:	1c1c      	adds	r4, r3, #0
 8007fa8:	4b89      	ldr	r3, [pc, #548]	; (80081d0 <MahonyAHRSupdateIMU+0x5d4>)
 8007faa:	681b      	ldr	r3, [r3, #0]
 8007fac:	6839      	ldr	r1, [r7, #0]
 8007fae:	1c18      	adds	r0, r3, #0
 8007fb0:	f7f8 fce2 	bl	8000978 <__aeabi_fmul>
 8007fb4:	1c03      	adds	r3, r0, #0
 8007fb6:	1c19      	adds	r1, r3, #0
 8007fb8:	1c20      	adds	r0, r4, #0
 8007fba:	f7f8 fe0f 	bl	8000bdc <__aeabi_fsub>
 8007fbe:	1c03      	adds	r3, r0, #0
 8007fc0:	1c1a      	adds	r2, r3, #0
 8007fc2:	4b80      	ldr	r3, [pc, #512]	; (80081c4 <MahonyAHRSupdateIMU+0x5c8>)
 8007fc4:	681b      	ldr	r3, [r3, #0]
 8007fc6:	1c19      	adds	r1, r3, #0
 8007fc8:	1c10      	adds	r0, r2, #0
 8007fca:	f7f8 f963 	bl	8000294 <__aeabi_fadd>
 8007fce:	1c03      	adds	r3, r0, #0
 8007fd0:	1c1a      	adds	r2, r3, #0
 8007fd2:	4b7c      	ldr	r3, [pc, #496]	; (80081c4 <MahonyAHRSupdateIMU+0x5c8>)
 8007fd4:	601a      	str	r2, [r3, #0]
 8007fd6:	68b9      	ldr	r1, [r7, #8]
 8007fd8:	69f8      	ldr	r0, [r7, #28]
 8007fda:	f7f8 fccd 	bl	8000978 <__aeabi_fmul>
 8007fde:	1c03      	adds	r3, r0, #0
 8007fe0:	1c1c      	adds	r4, r3, #0
 8007fe2:	6839      	ldr	r1, [r7, #0]
 8007fe4:	6978      	ldr	r0, [r7, #20]
 8007fe6:	f7f8 fcc7 	bl	8000978 <__aeabi_fmul>
 8007fea:	1c03      	adds	r3, r0, #0
 8007fec:	1c19      	adds	r1, r3, #0
 8007fee:	1c20      	adds	r0, r4, #0
 8007ff0:	f7f8 f950 	bl	8000294 <__aeabi_fadd>
 8007ff4:	1c03      	adds	r3, r0, #0
 8007ff6:	1c1c      	adds	r4, r3, #0
 8007ff8:	4b75      	ldr	r3, [pc, #468]	; (80081d0 <MahonyAHRSupdateIMU+0x5d4>)
 8007ffa:	681b      	ldr	r3, [r3, #0]
 8007ffc:	6879      	ldr	r1, [r7, #4]
 8007ffe:	1c18      	adds	r0, r3, #0
 8008000:	f7f8 fcba 	bl	8000978 <__aeabi_fmul>
 8008004:	1c03      	adds	r3, r0, #0
 8008006:	1c19      	adds	r1, r3, #0
 8008008:	1c20      	adds	r0, r4, #0
 800800a:	f7f8 fde7 	bl	8000bdc <__aeabi_fsub>
 800800e:	1c03      	adds	r3, r0, #0
 8008010:	1c1a      	adds	r2, r3, #0
 8008012:	4b6d      	ldr	r3, [pc, #436]	; (80081c8 <MahonyAHRSupdateIMU+0x5cc>)
 8008014:	681b      	ldr	r3, [r3, #0]
 8008016:	1c19      	adds	r1, r3, #0
 8008018:	1c10      	adds	r0, r2, #0
 800801a:	f7f8 f93b 	bl	8000294 <__aeabi_fadd>
 800801e:	1c03      	adds	r3, r0, #0
 8008020:	1c1a      	adds	r2, r3, #0
 8008022:	4b69      	ldr	r3, [pc, #420]	; (80081c8 <MahonyAHRSupdateIMU+0x5cc>)
 8008024:	601a      	str	r2, [r3, #0]
 8008026:	6879      	ldr	r1, [r7, #4]
 8008028:	69f8      	ldr	r0, [r7, #28]
 800802a:	f7f8 fca5 	bl	8000978 <__aeabi_fmul>
 800802e:	1c03      	adds	r3, r0, #0
 8008030:	1c1c      	adds	r4, r3, #0
 8008032:	6839      	ldr	r1, [r7, #0]
 8008034:	69b8      	ldr	r0, [r7, #24]
 8008036:	f7f8 fc9f 	bl	8000978 <__aeabi_fmul>
 800803a:	1c03      	adds	r3, r0, #0
 800803c:	1c19      	adds	r1, r3, #0
 800803e:	1c20      	adds	r0, r4, #0
 8008040:	f7f8 fdcc 	bl	8000bdc <__aeabi_fsub>
 8008044:	1c03      	adds	r3, r0, #0
 8008046:	1c1c      	adds	r4, r3, #0
 8008048:	4b61      	ldr	r3, [pc, #388]	; (80081d0 <MahonyAHRSupdateIMU+0x5d4>)
 800804a:	681b      	ldr	r3, [r3, #0]
 800804c:	68b9      	ldr	r1, [r7, #8]
 800804e:	1c18      	adds	r0, r3, #0
 8008050:	f7f8 fc92 	bl	8000978 <__aeabi_fmul>
 8008054:	1c03      	adds	r3, r0, #0
 8008056:	1c19      	adds	r1, r3, #0
 8008058:	1c20      	adds	r0, r4, #0
 800805a:	f7f8 f91b 	bl	8000294 <__aeabi_fadd>
 800805e:	1c03      	adds	r3, r0, #0
 8008060:	1c1a      	adds	r2, r3, #0
 8008062:	4b5a      	ldr	r3, [pc, #360]	; (80081cc <MahonyAHRSupdateIMU+0x5d0>)
 8008064:	681b      	ldr	r3, [r3, #0]
 8008066:	1c19      	adds	r1, r3, #0
 8008068:	1c10      	adds	r0, r2, #0
 800806a:	f7f8 f913 	bl	8000294 <__aeabi_fadd>
 800806e:	1c03      	adds	r3, r0, #0
 8008070:	1c1a      	adds	r2, r3, #0
 8008072:	4b56      	ldr	r3, [pc, #344]	; (80081cc <MahonyAHRSupdateIMU+0x5d0>)
 8008074:	601a      	str	r2, [r3, #0]
 8008076:	6839      	ldr	r1, [r7, #0]
 8008078:	69f8      	ldr	r0, [r7, #28]
 800807a:	f7f8 fc7d 	bl	8000978 <__aeabi_fmul>
 800807e:	1c03      	adds	r3, r0, #0
 8008080:	1c1c      	adds	r4, r3, #0
 8008082:	6879      	ldr	r1, [r7, #4]
 8008084:	69b8      	ldr	r0, [r7, #24]
 8008086:	f7f8 fc77 	bl	8000978 <__aeabi_fmul>
 800808a:	1c03      	adds	r3, r0, #0
 800808c:	1c19      	adds	r1, r3, #0
 800808e:	1c20      	adds	r0, r4, #0
 8008090:	f7f8 f900 	bl	8000294 <__aeabi_fadd>
 8008094:	1c03      	adds	r3, r0, #0
 8008096:	1c1c      	adds	r4, r3, #0
 8008098:	68b9      	ldr	r1, [r7, #8]
 800809a:	6978      	ldr	r0, [r7, #20]
 800809c:	f7f8 fc6c 	bl	8000978 <__aeabi_fmul>
 80080a0:	1c03      	adds	r3, r0, #0
 80080a2:	1c19      	adds	r1, r3, #0
 80080a4:	1c20      	adds	r0, r4, #0
 80080a6:	f7f8 fd99 	bl	8000bdc <__aeabi_fsub>
 80080aa:	1c03      	adds	r3, r0, #0
 80080ac:	1c1a      	adds	r2, r3, #0
 80080ae:	4b48      	ldr	r3, [pc, #288]	; (80081d0 <MahonyAHRSupdateIMU+0x5d4>)
 80080b0:	681b      	ldr	r3, [r3, #0]
 80080b2:	1c19      	adds	r1, r3, #0
 80080b4:	1c10      	adds	r0, r2, #0
 80080b6:	f7f8 f8ed 	bl	8000294 <__aeabi_fadd>
 80080ba:	1c03      	adds	r3, r0, #0
 80080bc:	1c1a      	adds	r2, r3, #0
 80080be:	4b44      	ldr	r3, [pc, #272]	; (80081d0 <MahonyAHRSupdateIMU+0x5d4>)
 80080c0:	601a      	str	r2, [r3, #0]
 80080c2:	4b40      	ldr	r3, [pc, #256]	; (80081c4 <MahonyAHRSupdateIMU+0x5c8>)
 80080c4:	681a      	ldr	r2, [r3, #0]
 80080c6:	4b3f      	ldr	r3, [pc, #252]	; (80081c4 <MahonyAHRSupdateIMU+0x5c8>)
 80080c8:	681b      	ldr	r3, [r3, #0]
 80080ca:	1c19      	adds	r1, r3, #0
 80080cc:	1c10      	adds	r0, r2, #0
 80080ce:	f7f8 fc53 	bl	8000978 <__aeabi_fmul>
 80080d2:	1c03      	adds	r3, r0, #0
 80080d4:	1c1c      	adds	r4, r3, #0
 80080d6:	4b3c      	ldr	r3, [pc, #240]	; (80081c8 <MahonyAHRSupdateIMU+0x5cc>)
 80080d8:	681a      	ldr	r2, [r3, #0]
 80080da:	4b3b      	ldr	r3, [pc, #236]	; (80081c8 <MahonyAHRSupdateIMU+0x5cc>)
 80080dc:	681b      	ldr	r3, [r3, #0]
 80080de:	1c19      	adds	r1, r3, #0
 80080e0:	1c10      	adds	r0, r2, #0
 80080e2:	f7f8 fc49 	bl	8000978 <__aeabi_fmul>
 80080e6:	1c03      	adds	r3, r0, #0
 80080e8:	1c19      	adds	r1, r3, #0
 80080ea:	1c20      	adds	r0, r4, #0
 80080ec:	f7f8 f8d2 	bl	8000294 <__aeabi_fadd>
 80080f0:	1c03      	adds	r3, r0, #0
 80080f2:	1c1c      	adds	r4, r3, #0
 80080f4:	4b35      	ldr	r3, [pc, #212]	; (80081cc <MahonyAHRSupdateIMU+0x5d0>)
 80080f6:	681a      	ldr	r2, [r3, #0]
 80080f8:	4b34      	ldr	r3, [pc, #208]	; (80081cc <MahonyAHRSupdateIMU+0x5d0>)
 80080fa:	681b      	ldr	r3, [r3, #0]
 80080fc:	1c19      	adds	r1, r3, #0
 80080fe:	1c10      	adds	r0, r2, #0
 8008100:	f7f8 fc3a 	bl	8000978 <__aeabi_fmul>
 8008104:	1c03      	adds	r3, r0, #0
 8008106:	1c19      	adds	r1, r3, #0
 8008108:	1c20      	adds	r0, r4, #0
 800810a:	f7f8 f8c3 	bl	8000294 <__aeabi_fadd>
 800810e:	1c03      	adds	r3, r0, #0
 8008110:	1c1c      	adds	r4, r3, #0
 8008112:	4b2f      	ldr	r3, [pc, #188]	; (80081d0 <MahonyAHRSupdateIMU+0x5d4>)
 8008114:	681a      	ldr	r2, [r3, #0]
 8008116:	4b2e      	ldr	r3, [pc, #184]	; (80081d0 <MahonyAHRSupdateIMU+0x5d4>)
 8008118:	681b      	ldr	r3, [r3, #0]
 800811a:	1c19      	adds	r1, r3, #0
 800811c:	1c10      	adds	r0, r2, #0
 800811e:	f7f8 fc2b 	bl	8000978 <__aeabi_fmul>
 8008122:	1c03      	adds	r3, r0, #0
 8008124:	1c19      	adds	r1, r3, #0
 8008126:	1c20      	adds	r0, r4, #0
 8008128:	f7f8 f8b4 	bl	8000294 <__aeabi_fadd>
 800812c:	1c03      	adds	r3, r0, #0
 800812e:	1c18      	adds	r0, r3, #0
 8008130:	f000 f850 	bl	80081d4 <invSqrt>
 8008134:	1c03      	adds	r3, r0, #0
 8008136:	63bb      	str	r3, [r7, #56]	; 0x38
 8008138:	4b22      	ldr	r3, [pc, #136]	; (80081c4 <MahonyAHRSupdateIMU+0x5c8>)
 800813a:	681b      	ldr	r3, [r3, #0]
 800813c:	6bb9      	ldr	r1, [r7, #56]	; 0x38
 800813e:	1c18      	adds	r0, r3, #0
 8008140:	f7f8 fc1a 	bl	8000978 <__aeabi_fmul>
 8008144:	1c03      	adds	r3, r0, #0
 8008146:	1c1a      	adds	r2, r3, #0
 8008148:	4b1e      	ldr	r3, [pc, #120]	; (80081c4 <MahonyAHRSupdateIMU+0x5c8>)
 800814a:	601a      	str	r2, [r3, #0]
 800814c:	4b1e      	ldr	r3, [pc, #120]	; (80081c8 <MahonyAHRSupdateIMU+0x5cc>)
 800814e:	681b      	ldr	r3, [r3, #0]
 8008150:	6bb9      	ldr	r1, [r7, #56]	; 0x38
 8008152:	1c18      	adds	r0, r3, #0
 8008154:	f7f8 fc10 	bl	8000978 <__aeabi_fmul>
 8008158:	1c03      	adds	r3, r0, #0
 800815a:	1c1a      	adds	r2, r3, #0
 800815c:	4b1a      	ldr	r3, [pc, #104]	; (80081c8 <MahonyAHRSupdateIMU+0x5cc>)
 800815e:	601a      	str	r2, [r3, #0]
 8008160:	4b1a      	ldr	r3, [pc, #104]	; (80081cc <MahonyAHRSupdateIMU+0x5d0>)
 8008162:	681b      	ldr	r3, [r3, #0]
 8008164:	6bb9      	ldr	r1, [r7, #56]	; 0x38
 8008166:	1c18      	adds	r0, r3, #0
 8008168:	f7f8 fc06 	bl	8000978 <__aeabi_fmul>
 800816c:	1c03      	adds	r3, r0, #0
 800816e:	1c1a      	adds	r2, r3, #0
 8008170:	4b16      	ldr	r3, [pc, #88]	; (80081cc <MahonyAHRSupdateIMU+0x5d0>)
 8008172:	601a      	str	r2, [r3, #0]
 8008174:	4b16      	ldr	r3, [pc, #88]	; (80081d0 <MahonyAHRSupdateIMU+0x5d4>)
 8008176:	681b      	ldr	r3, [r3, #0]
 8008178:	6bb9      	ldr	r1, [r7, #56]	; 0x38
 800817a:	1c18      	adds	r0, r3, #0
 800817c:	f7f8 fbfc 	bl	8000978 <__aeabi_fmul>
 8008180:	1c03      	adds	r3, r0, #0
 8008182:	1c1a      	adds	r2, r3, #0
 8008184:	4b12      	ldr	r3, [pc, #72]	; (80081d0 <MahonyAHRSupdateIMU+0x5d4>)
 8008186:	601a      	str	r2, [r3, #0]
 8008188:	4b0e      	ldr	r3, [pc, #56]	; (80081c4 <MahonyAHRSupdateIMU+0x5c8>)
 800818a:	681a      	ldr	r2, [r3, #0]
 800818c:	68fb      	ldr	r3, [r7, #12]
 800818e:	601a      	str	r2, [r3, #0]
 8008190:	68fb      	ldr	r3, [r7, #12]
 8008192:	3304      	adds	r3, #4
 8008194:	4a0c      	ldr	r2, [pc, #48]	; (80081c8 <MahonyAHRSupdateIMU+0x5cc>)
 8008196:	6812      	ldr	r2, [r2, #0]
 8008198:	601a      	str	r2, [r3, #0]
 800819a:	68fb      	ldr	r3, [r7, #12]
 800819c:	3308      	adds	r3, #8
 800819e:	4a0b      	ldr	r2, [pc, #44]	; (80081cc <MahonyAHRSupdateIMU+0x5d0>)
 80081a0:	6812      	ldr	r2, [r2, #0]
 80081a2:	601a      	str	r2, [r3, #0]
 80081a4:	68fb      	ldr	r3, [r7, #12]
 80081a6:	330c      	adds	r3, #12
 80081a8:	4a09      	ldr	r2, [pc, #36]	; (80081d0 <MahonyAHRSupdateIMU+0x5d4>)
 80081aa:	6812      	ldr	r2, [r2, #0]
 80081ac:	601a      	str	r2, [r3, #0]
 80081ae:	46c0      	nop			; (mov r8, r8)
 80081b0:	46bd      	mov	sp, r7
 80081b2:	b011      	add	sp, #68	; 0x44
 80081b4:	bd90      	pop	{r4, r7, pc}
 80081b6:	46c0      	nop			; (mov r8, r8)
 80081b8:	200001e8 	.word	0x200001e8
 80081bc:	200001ec 	.word	0x200001ec
 80081c0:	200001f0 	.word	0x200001f0
 80081c4:	20000004 	.word	0x20000004
 80081c8:	200001dc 	.word	0x200001dc
 80081cc:	200001e0 	.word	0x200001e0
 80081d0:	200001e4 	.word	0x200001e4

080081d4 <invSqrt>:
 80081d4:	b580      	push	{r7, lr}
 80081d6:	b086      	sub	sp, #24
 80081d8:	af00      	add	r7, sp, #0
 80081da:	6078      	str	r0, [r7, #4]
 80081dc:	21fc      	movs	r1, #252	; 0xfc
 80081de:	0589      	lsls	r1, r1, #22
 80081e0:	6878      	ldr	r0, [r7, #4]
 80081e2:	f7f8 fbc9 	bl	8000978 <__aeabi_fmul>
 80081e6:	1c03      	adds	r3, r0, #0
 80081e8:	617b      	str	r3, [r7, #20]
 80081ea:	687b      	ldr	r3, [r7, #4]
 80081ec:	613b      	str	r3, [r7, #16]
 80081ee:	2310      	movs	r3, #16
 80081f0:	18fb      	adds	r3, r7, r3
 80081f2:	681b      	ldr	r3, [r3, #0]
 80081f4:	60fb      	str	r3, [r7, #12]
 80081f6:	68fb      	ldr	r3, [r7, #12]
 80081f8:	105b      	asrs	r3, r3, #1
 80081fa:	4a13      	ldr	r2, [pc, #76]	; (8008248 <invSqrt+0x74>)
 80081fc:	1ad3      	subs	r3, r2, r3
 80081fe:	60fb      	str	r3, [r7, #12]
 8008200:	230c      	movs	r3, #12
 8008202:	18fb      	adds	r3, r7, r3
 8008204:	681b      	ldr	r3, [r3, #0]
 8008206:	613b      	str	r3, [r7, #16]
 8008208:	693b      	ldr	r3, [r7, #16]
 800820a:	6979      	ldr	r1, [r7, #20]
 800820c:	1c18      	adds	r0, r3, #0
 800820e:	f7f8 fbb3 	bl	8000978 <__aeabi_fmul>
 8008212:	1c03      	adds	r3, r0, #0
 8008214:	1c1a      	adds	r2, r3, #0
 8008216:	693b      	ldr	r3, [r7, #16]
 8008218:	1c19      	adds	r1, r3, #0
 800821a:	1c10      	adds	r0, r2, #0
 800821c:	f7f8 fbac 	bl	8000978 <__aeabi_fmul>
 8008220:	1c03      	adds	r3, r0, #0
 8008222:	1c19      	adds	r1, r3, #0
 8008224:	20ff      	movs	r0, #255	; 0xff
 8008226:	0580      	lsls	r0, r0, #22
 8008228:	f7f8 fcd8 	bl	8000bdc <__aeabi_fsub>
 800822c:	1c03      	adds	r3, r0, #0
 800822e:	1c1a      	adds	r2, r3, #0
 8008230:	693b      	ldr	r3, [r7, #16]
 8008232:	1c19      	adds	r1, r3, #0
 8008234:	1c10      	adds	r0, r2, #0
 8008236:	f7f8 fb9f 	bl	8000978 <__aeabi_fmul>
 800823a:	1c03      	adds	r3, r0, #0
 800823c:	613b      	str	r3, [r7, #16]
 800823e:	693b      	ldr	r3, [r7, #16]
 8008240:	1c18      	adds	r0, r3, #0
 8008242:	46bd      	mov	sp, r7
 8008244:	b006      	add	sp, #24
 8008246:	bd80      	pop	{r7, pc}
 8008248:	5f3759df 	.word	0x5f3759df

0800824c <quat_mult>:
 800824c:	b5b0      	push	{r4, r5, r7, lr}
 800824e:	b086      	sub	sp, #24
 8008250:	af00      	add	r7, sp, #0
 8008252:	60f8      	str	r0, [r7, #12]
 8008254:	60b9      	str	r1, [r7, #8]
 8008256:	607a      	str	r2, [r7, #4]
 8008258:	2317      	movs	r3, #23
 800825a:	18fb      	adds	r3, r7, r3
 800825c:	2200      	movs	r2, #0
 800825e:	701a      	strb	r2, [r3, #0]
 8008260:	e015      	b.n	800828e <quat_mult+0x42>
 8008262:	2517      	movs	r5, #23
 8008264:	197b      	adds	r3, r7, r5
 8008266:	781b      	ldrb	r3, [r3, #0]
 8008268:	009b      	lsls	r3, r3, #2
 800826a:	68fa      	ldr	r2, [r7, #12]
 800826c:	18d3      	adds	r3, r2, r3
 800826e:	6818      	ldr	r0, [r3, #0]
 8008270:	197b      	adds	r3, r7, r5
 8008272:	781b      	ldrb	r3, [r3, #0]
 8008274:	009b      	lsls	r3, r3, #2
 8008276:	687a      	ldr	r2, [r7, #4]
 8008278:	18d4      	adds	r4, r2, r3
 800827a:	68b9      	ldr	r1, [r7, #8]
 800827c:	f7f8 fb7c 	bl	8000978 <__aeabi_fmul>
 8008280:	1c03      	adds	r3, r0, #0
 8008282:	6023      	str	r3, [r4, #0]
 8008284:	197b      	adds	r3, r7, r5
 8008286:	781a      	ldrb	r2, [r3, #0]
 8008288:	197b      	adds	r3, r7, r5
 800828a:	3201      	adds	r2, #1
 800828c:	701a      	strb	r2, [r3, #0]
 800828e:	2317      	movs	r3, #23
 8008290:	18fb      	adds	r3, r7, r3
 8008292:	781b      	ldrb	r3, [r3, #0]
 8008294:	2b03      	cmp	r3, #3
 8008296:	d9e4      	bls.n	8008262 <quat_mult+0x16>
 8008298:	46c0      	nop			; (mov r8, r8)
 800829a:	46bd      	mov	sp, r7
 800829c:	b006      	add	sp, #24
 800829e:	bdb0      	pop	{r4, r5, r7, pc}

080082a0 <quat_abs>:
 80082a0:	b5b0      	push	{r4, r5, r7, lr}
 80082a2:	b084      	sub	sp, #16
 80082a4:	af00      	add	r7, sp, #0
 80082a6:	6078      	str	r0, [r7, #4]
 80082a8:	2300      	movs	r3, #0
 80082aa:	60fb      	str	r3, [r7, #12]
 80082ac:	2300      	movs	r3, #0
 80082ae:	60bb      	str	r3, [r7, #8]
 80082b0:	e024      	b.n	80082fc <quat_abs+0x5c>
 80082b2:	68bb      	ldr	r3, [r7, #8]
 80082b4:	009b      	lsls	r3, r3, #2
 80082b6:	687a      	ldr	r2, [r7, #4]
 80082b8:	18d3      	adds	r3, r2, r3
 80082ba:	681b      	ldr	r3, [r3, #0]
 80082bc:	1c18      	adds	r0, r3, #0
 80082be:	f7fa fab3 	bl	8002828 <__aeabi_f2d>
 80082c2:	2300      	movs	r3, #0
 80082c4:	2480      	movs	r4, #128	; 0x80
 80082c6:	05e4      	lsls	r4, r4, #23
 80082c8:	001a      	movs	r2, r3
 80082ca:	0023      	movs	r3, r4
 80082cc:	f000 faca 	bl	8008864 <pow>
 80082d0:	0004      	movs	r4, r0
 80082d2:	000d      	movs	r5, r1
 80082d4:	68f8      	ldr	r0, [r7, #12]
 80082d6:	f7fa faa7 	bl	8002828 <__aeabi_f2d>
 80082da:	0002      	movs	r2, r0
 80082dc:	000b      	movs	r3, r1
 80082de:	0020      	movs	r0, r4
 80082e0:	0029      	movs	r1, r5
 80082e2:	f7f8 fec9 	bl	8001078 <__aeabi_dadd>
 80082e6:	0003      	movs	r3, r0
 80082e8:	000c      	movs	r4, r1
 80082ea:	0018      	movs	r0, r3
 80082ec:	0021      	movs	r1, r4
 80082ee:	f7fa faed 	bl	80028cc <__aeabi_d2f>
 80082f2:	1c03      	adds	r3, r0, #0
 80082f4:	60fb      	str	r3, [r7, #12]
 80082f6:	68bb      	ldr	r3, [r7, #8]
 80082f8:	3301      	adds	r3, #1
 80082fa:	60bb      	str	r3, [r7, #8]
 80082fc:	68bb      	ldr	r3, [r7, #8]
 80082fe:	2b03      	cmp	r3, #3
 8008300:	ddd7      	ble.n	80082b2 <quat_abs+0x12>
 8008302:	68f8      	ldr	r0, [r7, #12]
 8008304:	f7fa fa90 	bl	8002828 <__aeabi_f2d>
 8008308:	0003      	movs	r3, r0
 800830a:	000c      	movs	r4, r1
 800830c:	0018      	movs	r0, r3
 800830e:	0021      	movs	r1, r4
 8008310:	f000 fc62 	bl	8008bd8 <sqrt>
 8008314:	0003      	movs	r3, r0
 8008316:	000c      	movs	r4, r1
 8008318:	0018      	movs	r0, r3
 800831a:	0021      	movs	r1, r4
 800831c:	f7fa fad6 	bl	80028cc <__aeabi_d2f>
 8008320:	1c03      	adds	r3, r0, #0
 8008322:	1c18      	adds	r0, r3, #0
 8008324:	46bd      	mov	sp, r7
 8008326:	b004      	add	sp, #16
 8008328:	bdb0      	pop	{r4, r5, r7, pc}

0800832a <quat_normalize>:
 800832a:	b580      	push	{r7, lr}
 800832c:	b082      	sub	sp, #8
 800832e:	af00      	add	r7, sp, #0
 8008330:	6078      	str	r0, [r7, #4]
 8008332:	6039      	str	r1, [r7, #0]
 8008334:	687b      	ldr	r3, [r7, #4]
 8008336:	0018      	movs	r0, r3
 8008338:	f7ff ffb2 	bl	80082a0 <quat_abs>
 800833c:	1c03      	adds	r3, r0, #0
 800833e:	1c19      	adds	r1, r3, #0
 8008340:	20fe      	movs	r0, #254	; 0xfe
 8008342:	0580      	lsls	r0, r0, #22
 8008344:	f7f8 f940 	bl	80005c8 <__aeabi_fdiv>
 8008348:	1c03      	adds	r3, r0, #0
 800834a:	1c19      	adds	r1, r3, #0
 800834c:	683a      	ldr	r2, [r7, #0]
 800834e:	687b      	ldr	r3, [r7, #4]
 8008350:	0018      	movs	r0, r3
 8008352:	f7ff ff7b 	bl	800824c <quat_mult>
 8008356:	46c0      	nop			; (mov r8, r8)
 8008358:	46bd      	mov	sp, r7
 800835a:	b002      	add	sp, #8
 800835c:	bd80      	pop	{r7, pc}

0800835e <quat_invert>:
 800835e:	b590      	push	{r4, r7, lr}
 8008360:	b089      	sub	sp, #36	; 0x24
 8008362:	af00      	add	r7, sp, #0
 8008364:	6078      	str	r0, [r7, #4]
 8008366:	6039      	str	r1, [r7, #0]
 8008368:	687b      	ldr	r3, [r7, #4]
 800836a:	681a      	ldr	r2, [r3, #0]
 800836c:	683b      	ldr	r3, [r7, #0]
 800836e:	601a      	str	r2, [r3, #0]
 8008370:	2301      	movs	r3, #1
 8008372:	61fb      	str	r3, [r7, #28]
 8008374:	e00f      	b.n	8008396 <quat_invert+0x38>
 8008376:	69fb      	ldr	r3, [r7, #28]
 8008378:	009b      	lsls	r3, r3, #2
 800837a:	687a      	ldr	r2, [r7, #4]
 800837c:	18d3      	adds	r3, r2, r3
 800837e:	681a      	ldr	r2, [r3, #0]
 8008380:	69fb      	ldr	r3, [r7, #28]
 8008382:	009b      	lsls	r3, r3, #2
 8008384:	6839      	ldr	r1, [r7, #0]
 8008386:	18cb      	adds	r3, r1, r3
 8008388:	2180      	movs	r1, #128	; 0x80
 800838a:	0609      	lsls	r1, r1, #24
 800838c:	404a      	eors	r2, r1
 800838e:	601a      	str	r2, [r3, #0]
 8008390:	69fb      	ldr	r3, [r7, #28]
 8008392:	3301      	adds	r3, #1
 8008394:	61fb      	str	r3, [r7, #28]
 8008396:	69fb      	ldr	r3, [r7, #28]
 8008398:	2b03      	cmp	r3, #3
 800839a:	ddec      	ble.n	8008376 <quat_invert+0x18>
 800839c:	2408      	movs	r4, #8
 800839e:	193b      	adds	r3, r7, r4
 80083a0:	0018      	movs	r0, r3
 80083a2:	2310      	movs	r3, #16
 80083a4:	001a      	movs	r2, r3
 80083a6:	2100      	movs	r1, #0
 80083a8:	f000 fa53 	bl	8008852 <memset>
 80083ac:	193a      	adds	r2, r7, r4
 80083ae:	683b      	ldr	r3, [r7, #0]
 80083b0:	0011      	movs	r1, r2
 80083b2:	0018      	movs	r0, r3
 80083b4:	f7ff ffb9 	bl	800832a <quat_normalize>
 80083b8:	2300      	movs	r3, #0
 80083ba:	61bb      	str	r3, [r7, #24]
 80083bc:	e00c      	b.n	80083d8 <quat_invert+0x7a>
 80083be:	69bb      	ldr	r3, [r7, #24]
 80083c0:	009b      	lsls	r3, r3, #2
 80083c2:	683a      	ldr	r2, [r7, #0]
 80083c4:	18d3      	adds	r3, r2, r3
 80083c6:	2208      	movs	r2, #8
 80083c8:	18ba      	adds	r2, r7, r2
 80083ca:	69b9      	ldr	r1, [r7, #24]
 80083cc:	0089      	lsls	r1, r1, #2
 80083ce:	588a      	ldr	r2, [r1, r2]
 80083d0:	601a      	str	r2, [r3, #0]
 80083d2:	69bb      	ldr	r3, [r7, #24]
 80083d4:	3301      	adds	r3, #1
 80083d6:	61bb      	str	r3, [r7, #24]
 80083d8:	69bb      	ldr	r3, [r7, #24]
 80083da:	2b03      	cmp	r3, #3
 80083dc:	ddef      	ble.n	80083be <quat_invert+0x60>
 80083de:	46c0      	nop			; (mov r8, r8)
 80083e0:	46bd      	mov	sp, r7
 80083e2:	b009      	add	sp, #36	; 0x24
 80083e4:	bd90      	pop	{r4, r7, pc}

080083e6 <quat_mult_by_quat>:
 80083e6:	b5b0      	push	{r4, r5, r7, lr}
 80083e8:	b08a      	sub	sp, #40	; 0x28
 80083ea:	af00      	add	r7, sp, #0
 80083ec:	60f8      	str	r0, [r7, #12]
 80083ee:	60b9      	str	r1, [r7, #8]
 80083f0:	607a      	str	r2, [r7, #4]
 80083f2:	2514      	movs	r5, #20
 80083f4:	197b      	adds	r3, r7, r5
 80083f6:	0018      	movs	r0, r3
 80083f8:	2310      	movs	r3, #16
 80083fa:	001a      	movs	r2, r3
 80083fc:	2100      	movs	r1, #0
 80083fe:	f000 fa28 	bl	8008852 <memset>
 8008402:	68fb      	ldr	r3, [r7, #12]
 8008404:	681a      	ldr	r2, [r3, #0]
 8008406:	68bb      	ldr	r3, [r7, #8]
 8008408:	681b      	ldr	r3, [r3, #0]
 800840a:	1c19      	adds	r1, r3, #0
 800840c:	1c10      	adds	r0, r2, #0
 800840e:	f7f8 fab3 	bl	8000978 <__aeabi_fmul>
 8008412:	1c03      	adds	r3, r0, #0
 8008414:	1c1c      	adds	r4, r3, #0
 8008416:	68fb      	ldr	r3, [r7, #12]
 8008418:	3304      	adds	r3, #4
 800841a:	681a      	ldr	r2, [r3, #0]
 800841c:	68bb      	ldr	r3, [r7, #8]
 800841e:	3304      	adds	r3, #4
 8008420:	681b      	ldr	r3, [r3, #0]
 8008422:	1c19      	adds	r1, r3, #0
 8008424:	1c10      	adds	r0, r2, #0
 8008426:	f7f8 faa7 	bl	8000978 <__aeabi_fmul>
 800842a:	1c03      	adds	r3, r0, #0
 800842c:	1c19      	adds	r1, r3, #0
 800842e:	1c20      	adds	r0, r4, #0
 8008430:	f7f8 fbd4 	bl	8000bdc <__aeabi_fsub>
 8008434:	1c03      	adds	r3, r0, #0
 8008436:	1c1c      	adds	r4, r3, #0
 8008438:	68fb      	ldr	r3, [r7, #12]
 800843a:	3308      	adds	r3, #8
 800843c:	681a      	ldr	r2, [r3, #0]
 800843e:	68bb      	ldr	r3, [r7, #8]
 8008440:	3308      	adds	r3, #8
 8008442:	681b      	ldr	r3, [r3, #0]
 8008444:	1c19      	adds	r1, r3, #0
 8008446:	1c10      	adds	r0, r2, #0
 8008448:	f7f8 fa96 	bl	8000978 <__aeabi_fmul>
 800844c:	1c03      	adds	r3, r0, #0
 800844e:	1c19      	adds	r1, r3, #0
 8008450:	1c20      	adds	r0, r4, #0
 8008452:	f7f8 fbc3 	bl	8000bdc <__aeabi_fsub>
 8008456:	1c03      	adds	r3, r0, #0
 8008458:	1c1c      	adds	r4, r3, #0
 800845a:	68fb      	ldr	r3, [r7, #12]
 800845c:	330c      	adds	r3, #12
 800845e:	681a      	ldr	r2, [r3, #0]
 8008460:	68bb      	ldr	r3, [r7, #8]
 8008462:	330c      	adds	r3, #12
 8008464:	681b      	ldr	r3, [r3, #0]
 8008466:	1c19      	adds	r1, r3, #0
 8008468:	1c10      	adds	r0, r2, #0
 800846a:	f7f8 fa85 	bl	8000978 <__aeabi_fmul>
 800846e:	1c03      	adds	r3, r0, #0
 8008470:	1c19      	adds	r1, r3, #0
 8008472:	1c20      	adds	r0, r4, #0
 8008474:	f7f8 fbb2 	bl	8000bdc <__aeabi_fsub>
 8008478:	1c03      	adds	r3, r0, #0
 800847a:	1c1a      	adds	r2, r3, #0
 800847c:	197b      	adds	r3, r7, r5
 800847e:	601a      	str	r2, [r3, #0]
 8008480:	68fb      	ldr	r3, [r7, #12]
 8008482:	681a      	ldr	r2, [r3, #0]
 8008484:	68bb      	ldr	r3, [r7, #8]
 8008486:	3304      	adds	r3, #4
 8008488:	681b      	ldr	r3, [r3, #0]
 800848a:	1c19      	adds	r1, r3, #0
 800848c:	1c10      	adds	r0, r2, #0
 800848e:	f7f8 fa73 	bl	8000978 <__aeabi_fmul>
 8008492:	1c03      	adds	r3, r0, #0
 8008494:	1c1c      	adds	r4, r3, #0
 8008496:	68fb      	ldr	r3, [r7, #12]
 8008498:	3304      	adds	r3, #4
 800849a:	681a      	ldr	r2, [r3, #0]
 800849c:	68bb      	ldr	r3, [r7, #8]
 800849e:	681b      	ldr	r3, [r3, #0]
 80084a0:	1c19      	adds	r1, r3, #0
 80084a2:	1c10      	adds	r0, r2, #0
 80084a4:	f7f8 fa68 	bl	8000978 <__aeabi_fmul>
 80084a8:	1c03      	adds	r3, r0, #0
 80084aa:	1c19      	adds	r1, r3, #0
 80084ac:	1c20      	adds	r0, r4, #0
 80084ae:	f7f7 fef1 	bl	8000294 <__aeabi_fadd>
 80084b2:	1c03      	adds	r3, r0, #0
 80084b4:	1c1c      	adds	r4, r3, #0
 80084b6:	68fb      	ldr	r3, [r7, #12]
 80084b8:	3308      	adds	r3, #8
 80084ba:	681a      	ldr	r2, [r3, #0]
 80084bc:	68bb      	ldr	r3, [r7, #8]
 80084be:	330c      	adds	r3, #12
 80084c0:	681b      	ldr	r3, [r3, #0]
 80084c2:	1c19      	adds	r1, r3, #0
 80084c4:	1c10      	adds	r0, r2, #0
 80084c6:	f7f8 fa57 	bl	8000978 <__aeabi_fmul>
 80084ca:	1c03      	adds	r3, r0, #0
 80084cc:	1c19      	adds	r1, r3, #0
 80084ce:	1c20      	adds	r0, r4, #0
 80084d0:	f7f7 fee0 	bl	8000294 <__aeabi_fadd>
 80084d4:	1c03      	adds	r3, r0, #0
 80084d6:	1c1c      	adds	r4, r3, #0
 80084d8:	68fb      	ldr	r3, [r7, #12]
 80084da:	330c      	adds	r3, #12
 80084dc:	681a      	ldr	r2, [r3, #0]
 80084de:	68bb      	ldr	r3, [r7, #8]
 80084e0:	3308      	adds	r3, #8
 80084e2:	681b      	ldr	r3, [r3, #0]
 80084e4:	1c19      	adds	r1, r3, #0
 80084e6:	1c10      	adds	r0, r2, #0
 80084e8:	f7f8 fa46 	bl	8000978 <__aeabi_fmul>
 80084ec:	1c03      	adds	r3, r0, #0
 80084ee:	1c19      	adds	r1, r3, #0
 80084f0:	1c20      	adds	r0, r4, #0
 80084f2:	f7f8 fb73 	bl	8000bdc <__aeabi_fsub>
 80084f6:	1c03      	adds	r3, r0, #0
 80084f8:	1c1a      	adds	r2, r3, #0
 80084fa:	197b      	adds	r3, r7, r5
 80084fc:	605a      	str	r2, [r3, #4]
 80084fe:	68fb      	ldr	r3, [r7, #12]
 8008500:	681a      	ldr	r2, [r3, #0]
 8008502:	68bb      	ldr	r3, [r7, #8]
 8008504:	3308      	adds	r3, #8
 8008506:	681b      	ldr	r3, [r3, #0]
 8008508:	1c19      	adds	r1, r3, #0
 800850a:	1c10      	adds	r0, r2, #0
 800850c:	f7f8 fa34 	bl	8000978 <__aeabi_fmul>
 8008510:	1c03      	adds	r3, r0, #0
 8008512:	1c1c      	adds	r4, r3, #0
 8008514:	68fb      	ldr	r3, [r7, #12]
 8008516:	3304      	adds	r3, #4
 8008518:	681a      	ldr	r2, [r3, #0]
 800851a:	68bb      	ldr	r3, [r7, #8]
 800851c:	330c      	adds	r3, #12
 800851e:	681b      	ldr	r3, [r3, #0]
 8008520:	1c19      	adds	r1, r3, #0
 8008522:	1c10      	adds	r0, r2, #0
 8008524:	f7f8 fa28 	bl	8000978 <__aeabi_fmul>
 8008528:	1c03      	adds	r3, r0, #0
 800852a:	1c19      	adds	r1, r3, #0
 800852c:	1c20      	adds	r0, r4, #0
 800852e:	f7f8 fb55 	bl	8000bdc <__aeabi_fsub>
 8008532:	1c03      	adds	r3, r0, #0
 8008534:	1c1c      	adds	r4, r3, #0
 8008536:	68fb      	ldr	r3, [r7, #12]
 8008538:	3308      	adds	r3, #8
 800853a:	681a      	ldr	r2, [r3, #0]
 800853c:	68bb      	ldr	r3, [r7, #8]
 800853e:	681b      	ldr	r3, [r3, #0]
 8008540:	1c19      	adds	r1, r3, #0
 8008542:	1c10      	adds	r0, r2, #0
 8008544:	f7f8 fa18 	bl	8000978 <__aeabi_fmul>
 8008548:	1c03      	adds	r3, r0, #0
 800854a:	1c19      	adds	r1, r3, #0
 800854c:	1c20      	adds	r0, r4, #0
 800854e:	f7f7 fea1 	bl	8000294 <__aeabi_fadd>
 8008552:	1c03      	adds	r3, r0, #0
 8008554:	1c1c      	adds	r4, r3, #0
 8008556:	68fb      	ldr	r3, [r7, #12]
 8008558:	330c      	adds	r3, #12
 800855a:	681a      	ldr	r2, [r3, #0]
 800855c:	68bb      	ldr	r3, [r7, #8]
 800855e:	3304      	adds	r3, #4
 8008560:	681b      	ldr	r3, [r3, #0]
 8008562:	1c19      	adds	r1, r3, #0
 8008564:	1c10      	adds	r0, r2, #0
 8008566:	f7f8 fa07 	bl	8000978 <__aeabi_fmul>
 800856a:	1c03      	adds	r3, r0, #0
 800856c:	1c19      	adds	r1, r3, #0
 800856e:	1c20      	adds	r0, r4, #0
 8008570:	f7f7 fe90 	bl	8000294 <__aeabi_fadd>
 8008574:	1c03      	adds	r3, r0, #0
 8008576:	1c1a      	adds	r2, r3, #0
 8008578:	197b      	adds	r3, r7, r5
 800857a:	609a      	str	r2, [r3, #8]
 800857c:	68fb      	ldr	r3, [r7, #12]
 800857e:	681a      	ldr	r2, [r3, #0]
 8008580:	68bb      	ldr	r3, [r7, #8]
 8008582:	330c      	adds	r3, #12
 8008584:	681b      	ldr	r3, [r3, #0]
 8008586:	1c19      	adds	r1, r3, #0
 8008588:	1c10      	adds	r0, r2, #0
 800858a:	f7f8 f9f5 	bl	8000978 <__aeabi_fmul>
 800858e:	1c03      	adds	r3, r0, #0
 8008590:	1c1c      	adds	r4, r3, #0
 8008592:	68fb      	ldr	r3, [r7, #12]
 8008594:	3304      	adds	r3, #4
 8008596:	681a      	ldr	r2, [r3, #0]
 8008598:	68bb      	ldr	r3, [r7, #8]
 800859a:	3308      	adds	r3, #8
 800859c:	681b      	ldr	r3, [r3, #0]
 800859e:	1c19      	adds	r1, r3, #0
 80085a0:	1c10      	adds	r0, r2, #0
 80085a2:	f7f8 f9e9 	bl	8000978 <__aeabi_fmul>
 80085a6:	1c03      	adds	r3, r0, #0
 80085a8:	1c19      	adds	r1, r3, #0
 80085aa:	1c20      	adds	r0, r4, #0
 80085ac:	f7f7 fe72 	bl	8000294 <__aeabi_fadd>
 80085b0:	1c03      	adds	r3, r0, #0
 80085b2:	1c1c      	adds	r4, r3, #0
 80085b4:	68fb      	ldr	r3, [r7, #12]
 80085b6:	3308      	adds	r3, #8
 80085b8:	681a      	ldr	r2, [r3, #0]
 80085ba:	68bb      	ldr	r3, [r7, #8]
 80085bc:	3304      	adds	r3, #4
 80085be:	681b      	ldr	r3, [r3, #0]
 80085c0:	1c19      	adds	r1, r3, #0
 80085c2:	1c10      	adds	r0, r2, #0
 80085c4:	f7f8 f9d8 	bl	8000978 <__aeabi_fmul>
 80085c8:	1c03      	adds	r3, r0, #0
 80085ca:	1c19      	adds	r1, r3, #0
 80085cc:	1c20      	adds	r0, r4, #0
 80085ce:	f7f8 fb05 	bl	8000bdc <__aeabi_fsub>
 80085d2:	1c03      	adds	r3, r0, #0
 80085d4:	1c1c      	adds	r4, r3, #0
 80085d6:	68fb      	ldr	r3, [r7, #12]
 80085d8:	330c      	adds	r3, #12
 80085da:	681a      	ldr	r2, [r3, #0]
 80085dc:	68bb      	ldr	r3, [r7, #8]
 80085de:	681b      	ldr	r3, [r3, #0]
 80085e0:	1c19      	adds	r1, r3, #0
 80085e2:	1c10      	adds	r0, r2, #0
 80085e4:	f7f8 f9c8 	bl	8000978 <__aeabi_fmul>
 80085e8:	1c03      	adds	r3, r0, #0
 80085ea:	1c19      	adds	r1, r3, #0
 80085ec:	1c20      	adds	r0, r4, #0
 80085ee:	f7f7 fe51 	bl	8000294 <__aeabi_fadd>
 80085f2:	1c03      	adds	r3, r0, #0
 80085f4:	1c1a      	adds	r2, r3, #0
 80085f6:	197b      	adds	r3, r7, r5
 80085f8:	60da      	str	r2, [r3, #12]
 80085fa:	2300      	movs	r3, #0
 80085fc:	627b      	str	r3, [r7, #36]	; 0x24
 80085fe:	e00c      	b.n	800861a <quat_mult_by_quat+0x234>
 8008600:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8008602:	009b      	lsls	r3, r3, #2
 8008604:	687a      	ldr	r2, [r7, #4]
 8008606:	18d3      	adds	r3, r2, r3
 8008608:	2214      	movs	r2, #20
 800860a:	18ba      	adds	r2, r7, r2
 800860c:	6a79      	ldr	r1, [r7, #36]	; 0x24
 800860e:	0089      	lsls	r1, r1, #2
 8008610:	588a      	ldr	r2, [r1, r2]
 8008612:	601a      	str	r2, [r3, #0]
 8008614:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8008616:	3301      	adds	r3, #1
 8008618:	627b      	str	r3, [r7, #36]	; 0x24
 800861a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800861c:	2b03      	cmp	r3, #3
 800861e:	ddef      	ble.n	8008600 <quat_mult_by_quat+0x21a>
 8008620:	46c0      	nop			; (mov r8, r8)
 8008622:	46bd      	mov	sp, r7
 8008624:	b00a      	add	sp, #40	; 0x28
 8008626:	bdb0      	pop	{r4, r5, r7, pc}

08008628 <quat_mult_by_vect>:
 8008628:	b5b0      	push	{r4, r5, r7, lr}
 800862a:	b08e      	sub	sp, #56	; 0x38
 800862c:	af00      	add	r7, sp, #0
 800862e:	60f8      	str	r0, [r7, #12]
 8008630:	60b9      	str	r1, [r7, #8]
 8008632:	607a      	str	r2, [r7, #4]
 8008634:	2424      	movs	r4, #36	; 0x24
 8008636:	193b      	adds	r3, r7, r4
 8008638:	2200      	movs	r2, #0
 800863a:	601a      	str	r2, [r3, #0]
 800863c:	68bb      	ldr	r3, [r7, #8]
 800863e:	681a      	ldr	r2, [r3, #0]
 8008640:	193b      	adds	r3, r7, r4
 8008642:	605a      	str	r2, [r3, #4]
 8008644:	68bb      	ldr	r3, [r7, #8]
 8008646:	685a      	ldr	r2, [r3, #4]
 8008648:	193b      	adds	r3, r7, r4
 800864a:	609a      	str	r2, [r3, #8]
 800864c:	68bb      	ldr	r3, [r7, #8]
 800864e:	689a      	ldr	r2, [r3, #8]
 8008650:	193b      	adds	r3, r7, r4
 8008652:	60da      	str	r2, [r3, #12]
 8008654:	2514      	movs	r5, #20
 8008656:	197b      	adds	r3, r7, r5
 8008658:	0018      	movs	r0, r3
 800865a:	2310      	movs	r3, #16
 800865c:	001a      	movs	r2, r3
 800865e:	2100      	movs	r1, #0
 8008660:	f000 f8f7 	bl	8008852 <memset>
 8008664:	197a      	adds	r2, r7, r5
 8008666:	1939      	adds	r1, r7, r4
 8008668:	68fb      	ldr	r3, [r7, #12]
 800866a:	0018      	movs	r0, r3
 800866c:	f7ff febb 	bl	80083e6 <quat_mult_by_quat>
 8008670:	2300      	movs	r3, #0
 8008672:	637b      	str	r3, [r7, #52]	; 0x34
 8008674:	e00c      	b.n	8008690 <quat_mult_by_vect+0x68>
 8008676:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8008678:	009b      	lsls	r3, r3, #2
 800867a:	687a      	ldr	r2, [r7, #4]
 800867c:	18d3      	adds	r3, r2, r3
 800867e:	2214      	movs	r2, #20
 8008680:	18ba      	adds	r2, r7, r2
 8008682:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8008684:	0089      	lsls	r1, r1, #2
 8008686:	588a      	ldr	r2, [r1, r2]
 8008688:	601a      	str	r2, [r3, #0]
 800868a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800868c:	3301      	adds	r3, #1
 800868e:	637b      	str	r3, [r7, #52]	; 0x34
 8008690:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8008692:	2b03      	cmp	r3, #3
 8008694:	ddef      	ble.n	8008676 <quat_mult_by_vect+0x4e>
 8008696:	46c0      	nop			; (mov r8, r8)
 8008698:	46bd      	mov	sp, r7
 800869a:	b00e      	add	sp, #56	; 0x38
 800869c:	bdb0      	pop	{r4, r5, r7, pc}

0800869e <vect_rotate>:
 800869e:	b5f0      	push	{r4, r5, r6, r7, lr}
 80086a0:	b097      	sub	sp, #92	; 0x5c
 80086a2:	af00      	add	r7, sp, #0
 80086a4:	60f8      	str	r0, [r7, #12]
 80086a6:	60b9      	str	r1, [r7, #8]
 80086a8:	607a      	str	r2, [r7, #4]
 80086aa:	2344      	movs	r3, #68	; 0x44
 80086ac:	18fb      	adds	r3, r7, r3
 80086ae:	0018      	movs	r0, r3
 80086b0:	2310      	movs	r3, #16
 80086b2:	001a      	movs	r2, r3
 80086b4:	2100      	movs	r1, #0
 80086b6:	f000 f8cc 	bl	8008852 <memset>
 80086ba:	2434      	movs	r4, #52	; 0x34
 80086bc:	193b      	adds	r3, r7, r4
 80086be:	0018      	movs	r0, r3
 80086c0:	2310      	movs	r3, #16
 80086c2:	001a      	movs	r2, r3
 80086c4:	2100      	movs	r1, #0
 80086c6:	f000 f8c4 	bl	8008852 <memset>
 80086ca:	193a      	adds	r2, r7, r4
 80086cc:	68bb      	ldr	r3, [r7, #8]
 80086ce:	0011      	movs	r1, r2
 80086d0:	0018      	movs	r0, r3
 80086d2:	f7ff fe2a 	bl	800832a <quat_normalize>
 80086d6:	2524      	movs	r5, #36	; 0x24
 80086d8:	197b      	adds	r3, r7, r5
 80086da:	0018      	movs	r0, r3
 80086dc:	2310      	movs	r3, #16
 80086de:	001a      	movs	r2, r3
 80086e0:	2100      	movs	r1, #0
 80086e2:	f000 f8b6 	bl	8008852 <memset>
 80086e6:	197a      	adds	r2, r7, r5
 80086e8:	68f9      	ldr	r1, [r7, #12]
 80086ea:	193b      	adds	r3, r7, r4
 80086ec:	0018      	movs	r0, r3
 80086ee:	f7ff ff9b 	bl	8008628 <quat_mult_by_vect>
 80086f2:	2614      	movs	r6, #20
 80086f4:	19bb      	adds	r3, r7, r6
 80086f6:	0018      	movs	r0, r3
 80086f8:	2310      	movs	r3, #16
 80086fa:	001a      	movs	r2, r3
 80086fc:	2100      	movs	r1, #0
 80086fe:	f000 f8a8 	bl	8008852 <memset>
 8008702:	19ba      	adds	r2, r7, r6
 8008704:	193b      	adds	r3, r7, r4
 8008706:	0011      	movs	r1, r2
 8008708:	0018      	movs	r0, r3
 800870a:	f7ff fe28 	bl	800835e <quat_invert>
 800870e:	2344      	movs	r3, #68	; 0x44
 8008710:	18fa      	adds	r2, r7, r3
 8008712:	19b9      	adds	r1, r7, r6
 8008714:	197b      	adds	r3, r7, r5
 8008716:	0018      	movs	r0, r3
 8008718:	f7ff fe65 	bl	80083e6 <quat_mult_by_quat>
 800871c:	2300      	movs	r3, #0
 800871e:	657b      	str	r3, [r7, #84]	; 0x54
 8008720:	e00d      	b.n	800873e <vect_rotate+0xa0>
 8008722:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8008724:	1c59      	adds	r1, r3, #1
 8008726:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8008728:	009b      	lsls	r3, r3, #2
 800872a:	687a      	ldr	r2, [r7, #4]
 800872c:	18d3      	adds	r3, r2, r3
 800872e:	2244      	movs	r2, #68	; 0x44
 8008730:	18ba      	adds	r2, r7, r2
 8008732:	0089      	lsls	r1, r1, #2
 8008734:	588a      	ldr	r2, [r1, r2]
 8008736:	601a      	str	r2, [r3, #0]
 8008738:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 800873a:	3301      	adds	r3, #1
 800873c:	657b      	str	r3, [r7, #84]	; 0x54
 800873e:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8008740:	2b02      	cmp	r3, #2
 8008742:	ddee      	ble.n	8008722 <vect_rotate+0x84>
 8008744:	46c0      	nop			; (mov r8, r8)
 8008746:	46bd      	mov	sp, r7
 8008748:	b017      	add	sp, #92	; 0x5c
 800874a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800874c <SystemInit>:
 800874c:	b580      	push	{r7, lr}
 800874e:	af00      	add	r7, sp, #0
 8008750:	4b1a      	ldr	r3, [pc, #104]	; (80087bc <SystemInit+0x70>)
 8008752:	681a      	ldr	r2, [r3, #0]
 8008754:	4b19      	ldr	r3, [pc, #100]	; (80087bc <SystemInit+0x70>)
 8008756:	2101      	movs	r1, #1
 8008758:	430a      	orrs	r2, r1
 800875a:	601a      	str	r2, [r3, #0]
 800875c:	4b17      	ldr	r3, [pc, #92]	; (80087bc <SystemInit+0x70>)
 800875e:	685a      	ldr	r2, [r3, #4]
 8008760:	4b16      	ldr	r3, [pc, #88]	; (80087bc <SystemInit+0x70>)
 8008762:	4917      	ldr	r1, [pc, #92]	; (80087c0 <SystemInit+0x74>)
 8008764:	400a      	ands	r2, r1
 8008766:	605a      	str	r2, [r3, #4]
 8008768:	4b14      	ldr	r3, [pc, #80]	; (80087bc <SystemInit+0x70>)
 800876a:	681a      	ldr	r2, [r3, #0]
 800876c:	4b13      	ldr	r3, [pc, #76]	; (80087bc <SystemInit+0x70>)
 800876e:	4915      	ldr	r1, [pc, #84]	; (80087c4 <SystemInit+0x78>)
 8008770:	400a      	ands	r2, r1
 8008772:	601a      	str	r2, [r3, #0]
 8008774:	4b11      	ldr	r3, [pc, #68]	; (80087bc <SystemInit+0x70>)
 8008776:	681a      	ldr	r2, [r3, #0]
 8008778:	4b10      	ldr	r3, [pc, #64]	; (80087bc <SystemInit+0x70>)
 800877a:	4913      	ldr	r1, [pc, #76]	; (80087c8 <SystemInit+0x7c>)
 800877c:	400a      	ands	r2, r1
 800877e:	601a      	str	r2, [r3, #0]
 8008780:	4b0e      	ldr	r3, [pc, #56]	; (80087bc <SystemInit+0x70>)
 8008782:	685a      	ldr	r2, [r3, #4]
 8008784:	4b0d      	ldr	r3, [pc, #52]	; (80087bc <SystemInit+0x70>)
 8008786:	4911      	ldr	r1, [pc, #68]	; (80087cc <SystemInit+0x80>)
 8008788:	400a      	ands	r2, r1
 800878a:	605a      	str	r2, [r3, #4]
 800878c:	4b0b      	ldr	r3, [pc, #44]	; (80087bc <SystemInit+0x70>)
 800878e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8008790:	4b0a      	ldr	r3, [pc, #40]	; (80087bc <SystemInit+0x70>)
 8008792:	210f      	movs	r1, #15
 8008794:	438a      	bics	r2, r1
 8008796:	62da      	str	r2, [r3, #44]	; 0x2c
 8008798:	4b08      	ldr	r3, [pc, #32]	; (80087bc <SystemInit+0x70>)
 800879a:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 800879c:	4b07      	ldr	r3, [pc, #28]	; (80087bc <SystemInit+0x70>)
 800879e:	490c      	ldr	r1, [pc, #48]	; (80087d0 <SystemInit+0x84>)
 80087a0:	400a      	ands	r2, r1
 80087a2:	631a      	str	r2, [r3, #48]	; 0x30
 80087a4:	4b05      	ldr	r3, [pc, #20]	; (80087bc <SystemInit+0x70>)
 80087a6:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 80087a8:	4b04      	ldr	r3, [pc, #16]	; (80087bc <SystemInit+0x70>)
 80087aa:	2101      	movs	r1, #1
 80087ac:	438a      	bics	r2, r1
 80087ae:	635a      	str	r2, [r3, #52]	; 0x34
 80087b0:	4b02      	ldr	r3, [pc, #8]	; (80087bc <SystemInit+0x70>)
 80087b2:	2200      	movs	r2, #0
 80087b4:	609a      	str	r2, [r3, #8]
 80087b6:	46c0      	nop			; (mov r8, r8)
 80087b8:	46bd      	mov	sp, r7
 80087ba:	bd80      	pop	{r7, pc}
 80087bc:	40021000 	.word	0x40021000
 80087c0:	f8ffb80c 	.word	0xf8ffb80c
 80087c4:	fef6ffff 	.word	0xfef6ffff
 80087c8:	fffbffff 	.word	0xfffbffff
 80087cc:	ffc0ffff 	.word	0xffc0ffff
 80087d0:	fffffeac 	.word	0xfffffeac

080087d4 <NMI_Handler>:
 80087d4:	b580      	push	{r7, lr}
 80087d6:	af00      	add	r7, sp, #0
 80087d8:	46c0      	nop			; (mov r8, r8)
 80087da:	46bd      	mov	sp, r7
 80087dc:	bd80      	pop	{r7, pc}

080087de <HardFault_Handler>:
 80087de:	b580      	push	{r7, lr}
 80087e0:	af00      	add	r7, sp, #0
 80087e2:	e7fe      	b.n	80087e2 <HardFault_Handler+0x4>

080087e4 <SVC_Handler>:
 80087e4:	b580      	push	{r7, lr}
 80087e6:	af00      	add	r7, sp, #0
 80087e8:	46c0      	nop			; (mov r8, r8)
 80087ea:	46bd      	mov	sp, r7
 80087ec:	bd80      	pop	{r7, pc}

080087ee <PendSV_Handler>:
 80087ee:	b580      	push	{r7, lr}
 80087f0:	af00      	add	r7, sp, #0
 80087f2:	46c0      	nop			; (mov r8, r8)
 80087f4:	46bd      	mov	sp, r7
 80087f6:	bd80      	pop	{r7, pc}

080087f8 <__libc_init_array>:
 80087f8:	b570      	push	{r4, r5, r6, lr}
 80087fa:	2600      	movs	r6, #0
 80087fc:	4d0c      	ldr	r5, [pc, #48]	; (8008830 <__libc_init_array+0x38>)
 80087fe:	4c0d      	ldr	r4, [pc, #52]	; (8008834 <__libc_init_array+0x3c>)
 8008800:	1b64      	subs	r4, r4, r5
 8008802:	10a4      	asrs	r4, r4, #2
 8008804:	42a6      	cmp	r6, r4
 8008806:	d109      	bne.n	800881c <__libc_init_array+0x24>
 8008808:	2600      	movs	r6, #0
 800880a:	f001 f99f 	bl	8009b4c <_init>
 800880e:	4d0a      	ldr	r5, [pc, #40]	; (8008838 <__libc_init_array+0x40>)
 8008810:	4c0a      	ldr	r4, [pc, #40]	; (800883c <__libc_init_array+0x44>)
 8008812:	1b64      	subs	r4, r4, r5
 8008814:	10a4      	asrs	r4, r4, #2
 8008816:	42a6      	cmp	r6, r4
 8008818:	d105      	bne.n	8008826 <__libc_init_array+0x2e>
 800881a:	bd70      	pop	{r4, r5, r6, pc}
 800881c:	00b3      	lsls	r3, r6, #2
 800881e:	58eb      	ldr	r3, [r5, r3]
 8008820:	4798      	blx	r3
 8008822:	3601      	adds	r6, #1
 8008824:	e7ee      	b.n	8008804 <__libc_init_array+0xc>
 8008826:	00b3      	lsls	r3, r6, #2
 8008828:	58eb      	ldr	r3, [r5, r3]
 800882a:	4798      	blx	r3
 800882c:	3601      	adds	r6, #1
 800882e:	e7f2      	b.n	8008816 <__libc_init_array+0x1e>
 8008830:	08009d38 	.word	0x08009d38
 8008834:	08009d38 	.word	0x08009d38
 8008838:	08009d38 	.word	0x08009d38
 800883c:	08009d3c 	.word	0x08009d3c

08008840 <memcpy>:
 8008840:	2300      	movs	r3, #0
 8008842:	b510      	push	{r4, lr}
 8008844:	429a      	cmp	r2, r3
 8008846:	d100      	bne.n	800884a <memcpy+0xa>
 8008848:	bd10      	pop	{r4, pc}
 800884a:	5ccc      	ldrb	r4, [r1, r3]
 800884c:	54c4      	strb	r4, [r0, r3]
 800884e:	3301      	adds	r3, #1
 8008850:	e7f8      	b.n	8008844 <memcpy+0x4>

08008852 <memset>:
 8008852:	0003      	movs	r3, r0
 8008854:	1812      	adds	r2, r2, r0
 8008856:	4293      	cmp	r3, r2
 8008858:	d100      	bne.n	800885c <memset+0xa>
 800885a:	4770      	bx	lr
 800885c:	7019      	strb	r1, [r3, #0]
 800885e:	3301      	adds	r3, #1
 8008860:	e7f9      	b.n	8008856 <memset+0x4>
	...

08008864 <pow>:
 8008864:	b5f0      	push	{r4, r5, r6, r7, lr}
 8008866:	4657      	mov	r7, sl
 8008868:	464e      	mov	r6, r9
 800886a:	46de      	mov	lr, fp
 800886c:	4645      	mov	r5, r8
 800886e:	b5e0      	push	{r5, r6, r7, lr}
 8008870:	b08f      	sub	sp, #60	; 0x3c
 8008872:	001d      	movs	r5, r3
 8008874:	0006      	movs	r6, r0
 8008876:	000f      	movs	r7, r1
 8008878:	0014      	movs	r4, r2
 800887a:	f000 fa0d 	bl	8008c98 <__ieee754_pow>
 800887e:	4bce      	ldr	r3, [pc, #824]	; (8008bb8 <pow+0x354>)
 8008880:	9000      	str	r0, [sp, #0]
 8008882:	9101      	str	r1, [sp, #4]
 8008884:	469a      	mov	sl, r3
 8008886:	781b      	ldrb	r3, [r3, #0]
 8008888:	b25b      	sxtb	r3, r3
 800888a:	4699      	mov	r9, r3
 800888c:	3301      	adds	r3, #1
 800888e:	d03e      	beq.n	800890e <pow+0xaa>
 8008890:	0022      	movs	r2, r4
 8008892:	002b      	movs	r3, r5
 8008894:	0020      	movs	r0, r4
 8008896:	0029      	movs	r1, r5
 8008898:	f7fa fa00 	bl	8002c9c <__aeabi_dcmpun>
 800889c:	4683      	mov	fp, r0
 800889e:	2800      	cmp	r0, #0
 80088a0:	d135      	bne.n	800890e <pow+0xaa>
 80088a2:	0032      	movs	r2, r6
 80088a4:	003b      	movs	r3, r7
 80088a6:	0030      	movs	r0, r6
 80088a8:	0039      	movs	r1, r7
 80088aa:	f7fa f9f7 	bl	8002c9c <__aeabi_dcmpun>
 80088ae:	2200      	movs	r2, #0
 80088b0:	9003      	str	r0, [sp, #12]
 80088b2:	2800      	cmp	r0, #0
 80088b4:	d000      	beq.n	80088b8 <pow+0x54>
 80088b6:	e06f      	b.n	8008998 <pow+0x134>
 80088b8:	2300      	movs	r3, #0
 80088ba:	0030      	movs	r0, r6
 80088bc:	0039      	movs	r1, r7
 80088be:	f7fa f8b7 	bl	8002a30 <__aeabi_dcmpeq>
 80088c2:	2800      	cmp	r0, #0
 80088c4:	d02c      	beq.n	8008920 <pow+0xbc>
 80088c6:	2200      	movs	r2, #0
 80088c8:	2300      	movs	r3, #0
 80088ca:	0020      	movs	r0, r4
 80088cc:	0029      	movs	r1, r5
 80088ce:	f7fa f8af 	bl	8002a30 <__aeabi_dcmpeq>
 80088d2:	4683      	mov	fp, r0
 80088d4:	2800      	cmp	r0, #0
 80088d6:	d100      	bne.n	80088da <pow+0x76>
 80088d8:	e092      	b.n	8008a00 <pow+0x19c>
 80088da:	ab04      	add	r3, sp, #16
 80088dc:	4698      	mov	r8, r3
 80088de:	2301      	movs	r3, #1
 80088e0:	4642      	mov	r2, r8
 80088e2:	9304      	str	r3, [sp, #16]
 80088e4:	4bb5      	ldr	r3, [pc, #724]	; (8008bbc <pow+0x358>)
 80088e6:	6053      	str	r3, [r2, #4]
 80088e8:	4643      	mov	r3, r8
 80088ea:	9a03      	ldr	r2, [sp, #12]
 80088ec:	611c      	str	r4, [r3, #16]
 80088ee:	615d      	str	r5, [r3, #20]
 80088f0:	621a      	str	r2, [r3, #32]
 80088f2:	609e      	str	r6, [r3, #8]
 80088f4:	60df      	str	r7, [r3, #12]
 80088f6:	4642      	mov	r2, r8
 80088f8:	2300      	movs	r3, #0
 80088fa:	2400      	movs	r4, #0
 80088fc:	6193      	str	r3, [r2, #24]
 80088fe:	61d4      	str	r4, [r2, #28]
 8008900:	464b      	mov	r3, r9
 8008902:	2b00      	cmp	r3, #0
 8008904:	d067      	beq.n	80089d6 <pow+0x172>
 8008906:	2300      	movs	r3, #0
 8008908:	4cad      	ldr	r4, [pc, #692]	; (8008bc0 <pow+0x35c>)
 800890a:	9300      	str	r3, [sp, #0]
 800890c:	9401      	str	r4, [sp, #4]
 800890e:	9800      	ldr	r0, [sp, #0]
 8008910:	9901      	ldr	r1, [sp, #4]
 8008912:	b00f      	add	sp, #60	; 0x3c
 8008914:	bc3c      	pop	{r2, r3, r4, r5}
 8008916:	4690      	mov	r8, r2
 8008918:	4699      	mov	r9, r3
 800891a:	46a2      	mov	sl, r4
 800891c:	46ab      	mov	fp, r5
 800891e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008920:	9800      	ldr	r0, [sp, #0]
 8008922:	9901      	ldr	r1, [sp, #4]
 8008924:	f000 fffa 	bl	800991c <finite>
 8008928:	4681      	mov	r9, r0
 800892a:	2800      	cmp	r0, #0
 800892c:	d100      	bne.n	8008930 <pow+0xcc>
 800892e:	e09a      	b.n	8008a66 <pow+0x202>
 8008930:	9800      	ldr	r0, [sp, #0]
 8008932:	9901      	ldr	r1, [sp, #4]
 8008934:	2200      	movs	r2, #0
 8008936:	2300      	movs	r3, #0
 8008938:	f7fa f87a 	bl	8002a30 <__aeabi_dcmpeq>
 800893c:	2800      	cmp	r0, #0
 800893e:	d0e6      	beq.n	800890e <pow+0xaa>
 8008940:	0030      	movs	r0, r6
 8008942:	0039      	movs	r1, r7
 8008944:	f000 ffea 	bl	800991c <finite>
 8008948:	2800      	cmp	r0, #0
 800894a:	d0e0      	beq.n	800890e <pow+0xaa>
 800894c:	0020      	movs	r0, r4
 800894e:	0029      	movs	r1, r5
 8008950:	f000 ffe4 	bl	800991c <finite>
 8008954:	2800      	cmp	r0, #0
 8008956:	d0da      	beq.n	800890e <pow+0xaa>
 8008958:	ab04      	add	r3, sp, #16
 800895a:	4698      	mov	r8, r3
 800895c:	2304      	movs	r3, #4
 800895e:	4642      	mov	r2, r8
 8008960:	9304      	str	r3, [sp, #16]
 8008962:	4b96      	ldr	r3, [pc, #600]	; (8008bbc <pow+0x358>)
 8008964:	6114      	str	r4, [r2, #16]
 8008966:	6155      	str	r5, [r2, #20]
 8008968:	6053      	str	r3, [r2, #4]
 800896a:	2300      	movs	r3, #0
 800896c:	2400      	movs	r4, #0
 800896e:	6213      	str	r3, [r2, #32]
 8008970:	2300      	movs	r3, #0
 8008972:	6193      	str	r3, [r2, #24]
 8008974:	61d4      	str	r4, [r2, #28]
 8008976:	4653      	mov	r3, sl
 8008978:	781b      	ldrb	r3, [r3, #0]
 800897a:	6096      	str	r6, [r2, #8]
 800897c:	60d7      	str	r7, [r2, #12]
 800897e:	b25b      	sxtb	r3, r3
 8008980:	2b02      	cmp	r3, #2
 8008982:	d004      	beq.n	800898e <pow+0x12a>
 8008984:	4640      	mov	r0, r8
 8008986:	f000 ffd3 	bl	8009930 <matherr>
 800898a:	2800      	cmp	r0, #0
 800898c:	d129      	bne.n	80089e2 <pow+0x17e>
 800898e:	f001 f8d7 	bl	8009b40 <__errno>
 8008992:	2322      	movs	r3, #34	; 0x22
 8008994:	6003      	str	r3, [r0, #0]
 8008996:	e024      	b.n	80089e2 <pow+0x17e>
 8008998:	2300      	movs	r3, #0
 800899a:	0020      	movs	r0, r4
 800899c:	0029      	movs	r1, r5
 800899e:	f7fa f847 	bl	8002a30 <__aeabi_dcmpeq>
 80089a2:	2800      	cmp	r0, #0
 80089a4:	d0b3      	beq.n	800890e <pow+0xaa>
 80089a6:	ab04      	add	r3, sp, #16
 80089a8:	4698      	mov	r8, r3
 80089aa:	2301      	movs	r3, #1
 80089ac:	4642      	mov	r2, r8
 80089ae:	9304      	str	r3, [sp, #16]
 80089b0:	4b82      	ldr	r3, [pc, #520]	; (8008bbc <pow+0x358>)
 80089b2:	4641      	mov	r1, r8
 80089b4:	6053      	str	r3, [r2, #4]
 80089b6:	4643      	mov	r3, r8
 80089b8:	465a      	mov	r2, fp
 80089ba:	621a      	str	r2, [r3, #32]
 80089bc:	2200      	movs	r2, #0
 80089be:	609e      	str	r6, [r3, #8]
 80089c0:	60df      	str	r7, [r3, #12]
 80089c2:	611c      	str	r4, [r3, #16]
 80089c4:	615d      	str	r5, [r3, #20]
 80089c6:	4b7e      	ldr	r3, [pc, #504]	; (8008bc0 <pow+0x35c>)
 80089c8:	618a      	str	r2, [r1, #24]
 80089ca:	61cb      	str	r3, [r1, #28]
 80089cc:	9200      	str	r2, [sp, #0]
 80089ce:	9301      	str	r3, [sp, #4]
 80089d0:	464b      	mov	r3, r9
 80089d2:	2b02      	cmp	r3, #2
 80089d4:	d09b      	beq.n	800890e <pow+0xaa>
 80089d6:	4640      	mov	r0, r8
 80089d8:	f000 ffaa 	bl	8009930 <matherr>
 80089dc:	2800      	cmp	r0, #0
 80089de:	d100      	bne.n	80089e2 <pow+0x17e>
 80089e0:	e08a      	b.n	8008af8 <pow+0x294>
 80089e2:	4643      	mov	r3, r8
 80089e4:	6a1b      	ldr	r3, [r3, #32]
 80089e6:	2b00      	cmp	r3, #0
 80089e8:	d004      	beq.n	80089f4 <pow+0x190>
 80089ea:	f001 f8a9 	bl	8009b40 <__errno>
 80089ee:	4643      	mov	r3, r8
 80089f0:	6a1b      	ldr	r3, [r3, #32]
 80089f2:	6003      	str	r3, [r0, #0]
 80089f4:	4643      	mov	r3, r8
 80089f6:	69dc      	ldr	r4, [r3, #28]
 80089f8:	699b      	ldr	r3, [r3, #24]
 80089fa:	9300      	str	r3, [sp, #0]
 80089fc:	9401      	str	r4, [sp, #4]
 80089fe:	e786      	b.n	800890e <pow+0xaa>
 8008a00:	0020      	movs	r0, r4
 8008a02:	0029      	movs	r1, r5
 8008a04:	f000 ff8a 	bl	800991c <finite>
 8008a08:	2800      	cmp	r0, #0
 8008a0a:	d100      	bne.n	8008a0e <pow+0x1aa>
 8008a0c:	e77f      	b.n	800890e <pow+0xaa>
 8008a0e:	2200      	movs	r2, #0
 8008a10:	2300      	movs	r3, #0
 8008a12:	0020      	movs	r0, r4
 8008a14:	0029      	movs	r1, r5
 8008a16:	f7fa f811 	bl	8002a3c <__aeabi_dcmplt>
 8008a1a:	2800      	cmp	r0, #0
 8008a1c:	d100      	bne.n	8008a20 <pow+0x1bc>
 8008a1e:	e776      	b.n	800890e <pow+0xaa>
 8008a20:	ab04      	add	r3, sp, #16
 8008a22:	4698      	mov	r8, r3
 8008a24:	2301      	movs	r3, #1
 8008a26:	4642      	mov	r2, r8
 8008a28:	9304      	str	r3, [sp, #16]
 8008a2a:	4b64      	ldr	r3, [pc, #400]	; (8008bbc <pow+0x358>)
 8008a2c:	6053      	str	r3, [r2, #4]
 8008a2e:	4643      	mov	r3, r8
 8008a30:	465a      	mov	r2, fp
 8008a32:	609e      	str	r6, [r3, #8]
 8008a34:	60df      	str	r7, [r3, #12]
 8008a36:	621a      	str	r2, [r3, #32]
 8008a38:	611c      	str	r4, [r3, #16]
 8008a3a:	615d      	str	r5, [r3, #20]
 8008a3c:	4653      	mov	r3, sl
 8008a3e:	781b      	ldrb	r3, [r3, #0]
 8008a40:	b25b      	sxtb	r3, r3
 8008a42:	2b00      	cmp	r3, #0
 8008a44:	d05d      	beq.n	8008b02 <pow+0x29e>
 8008a46:	2000      	movs	r0, #0
 8008a48:	4642      	mov	r2, r8
 8008a4a:	495e      	ldr	r1, [pc, #376]	; (8008bc4 <pow+0x360>)
 8008a4c:	6190      	str	r0, [r2, #24]
 8008a4e:	61d1      	str	r1, [r2, #28]
 8008a50:	2b02      	cmp	r3, #2
 8008a52:	d15b      	bne.n	8008b0c <pow+0x2a8>
 8008a54:	f001 f874 	bl	8009b40 <__errno>
 8008a58:	2321      	movs	r3, #33	; 0x21
 8008a5a:	6003      	str	r3, [r0, #0]
 8008a5c:	4643      	mov	r3, r8
 8008a5e:	6a1b      	ldr	r3, [r3, #32]
 8008a60:	2b00      	cmp	r3, #0
 8008a62:	d0c7      	beq.n	80089f4 <pow+0x190>
 8008a64:	e7c1      	b.n	80089ea <pow+0x186>
 8008a66:	0030      	movs	r0, r6
 8008a68:	0039      	movs	r1, r7
 8008a6a:	f000 ff57 	bl	800991c <finite>
 8008a6e:	2800      	cmp	r0, #0
 8008a70:	d100      	bne.n	8008a74 <pow+0x210>
 8008a72:	e75d      	b.n	8008930 <pow+0xcc>
 8008a74:	0020      	movs	r0, r4
 8008a76:	0029      	movs	r1, r5
 8008a78:	f000 ff50 	bl	800991c <finite>
 8008a7c:	2800      	cmp	r0, #0
 8008a7e:	d100      	bne.n	8008a82 <pow+0x21e>
 8008a80:	e756      	b.n	8008930 <pow+0xcc>
 8008a82:	9800      	ldr	r0, [sp, #0]
 8008a84:	9901      	ldr	r1, [sp, #4]
 8008a86:	4653      	mov	r3, sl
 8008a88:	781b      	ldrb	r3, [r3, #0]
 8008a8a:	0002      	movs	r2, r0
 8008a8c:	b25b      	sxtb	r3, r3
 8008a8e:	469b      	mov	fp, r3
 8008a90:	000b      	movs	r3, r1
 8008a92:	f7fa f903 	bl	8002c9c <__aeabi_dcmpun>
 8008a96:	ab04      	add	r3, sp, #16
 8008a98:	4698      	mov	r8, r3
 8008a9a:	2800      	cmp	r0, #0
 8008a9c:	d162      	bne.n	8008b64 <pow+0x300>
 8008a9e:	2303      	movs	r3, #3
 8008aa0:	4642      	mov	r2, r8
 8008aa2:	9304      	str	r3, [sp, #16]
 8008aa4:	4b45      	ldr	r3, [pc, #276]	; (8008bbc <pow+0x358>)
 8008aa6:	6114      	str	r4, [r2, #16]
 8008aa8:	6155      	str	r5, [r2, #20]
 8008aaa:	6053      	str	r3, [r2, #4]
 8008aac:	6210      	str	r0, [r2, #32]
 8008aae:	6096      	str	r6, [r2, #8]
 8008ab0:	60d7      	str	r7, [r2, #12]
 8008ab2:	4b45      	ldr	r3, [pc, #276]	; (8008bc8 <pow+0x364>)
 8008ab4:	0020      	movs	r0, r4
 8008ab6:	0029      	movs	r1, r5
 8008ab8:	2200      	movs	r2, #0
 8008aba:	f7f9 f8fb 	bl	8001cb4 <__aeabi_dmul>
 8008abe:	465b      	mov	r3, fp
 8008ac0:	0004      	movs	r4, r0
 8008ac2:	000d      	movs	r5, r1
 8008ac4:	2b00      	cmp	r3, #0
 8008ac6:	d127      	bne.n	8008b18 <pow+0x2b4>
 8008ac8:	22e0      	movs	r2, #224	; 0xe0
 8008aca:	4641      	mov	r1, r8
 8008acc:	4b3f      	ldr	r3, [pc, #252]	; (8008bcc <pow+0x368>)
 8008ace:	0612      	lsls	r2, r2, #24
 8008ad0:	618a      	str	r2, [r1, #24]
 8008ad2:	61cb      	str	r3, [r1, #28]
 8008ad4:	0030      	movs	r0, r6
 8008ad6:	2200      	movs	r2, #0
 8008ad8:	2300      	movs	r3, #0
 8008ada:	0039      	movs	r1, r7
 8008adc:	f7f9 ffae 	bl	8002a3c <__aeabi_dcmplt>
 8008ae0:	2800      	cmp	r0, #0
 8008ae2:	d12a      	bne.n	8008b3a <pow+0x2d6>
 8008ae4:	4640      	mov	r0, r8
 8008ae6:	f000 ff23 	bl	8009930 <matherr>
 8008aea:	2800      	cmp	r0, #0
 8008aec:	d1b6      	bne.n	8008a5c <pow+0x1f8>
 8008aee:	f001 f827 	bl	8009b40 <__errno>
 8008af2:	2322      	movs	r3, #34	; 0x22
 8008af4:	6003      	str	r3, [r0, #0]
 8008af6:	e7b1      	b.n	8008a5c <pow+0x1f8>
 8008af8:	f001 f822 	bl	8009b40 <__errno>
 8008afc:	2321      	movs	r3, #33	; 0x21
 8008afe:	6003      	str	r3, [r0, #0]
 8008b00:	e76f      	b.n	80089e2 <pow+0x17e>
 8008b02:	4642      	mov	r2, r8
 8008b04:	2300      	movs	r3, #0
 8008b06:	2400      	movs	r4, #0
 8008b08:	6193      	str	r3, [r2, #24]
 8008b0a:	61d4      	str	r4, [r2, #28]
 8008b0c:	4640      	mov	r0, r8
 8008b0e:	f000 ff0f 	bl	8009930 <matherr>
 8008b12:	2800      	cmp	r0, #0
 8008b14:	d1a2      	bne.n	8008a5c <pow+0x1f8>
 8008b16:	e79d      	b.n	8008a54 <pow+0x1f0>
 8008b18:	2200      	movs	r2, #0
 8008b1a:	4641      	mov	r1, r8
 8008b1c:	4b2c      	ldr	r3, [pc, #176]	; (8008bd0 <pow+0x36c>)
 8008b1e:	0030      	movs	r0, r6
 8008b20:	618a      	str	r2, [r1, #24]
 8008b22:	61cb      	str	r3, [r1, #28]
 8008b24:	2200      	movs	r2, #0
 8008b26:	2300      	movs	r3, #0
 8008b28:	0039      	movs	r1, r7
 8008b2a:	f7f9 ff87 	bl	8002a3c <__aeabi_dcmplt>
 8008b2e:	2800      	cmp	r0, #0
 8008b30:	d135      	bne.n	8008b9e <pow+0x33a>
 8008b32:	465b      	mov	r3, fp
 8008b34:	2b02      	cmp	r3, #2
 8008b36:	d0da      	beq.n	8008aee <pow+0x28a>
 8008b38:	e7d4      	b.n	8008ae4 <pow+0x280>
 8008b3a:	0020      	movs	r0, r4
 8008b3c:	0029      	movs	r1, r5
 8008b3e:	f000 feff 	bl	8009940 <rint>
 8008b42:	0022      	movs	r2, r4
 8008b44:	002b      	movs	r3, r5
 8008b46:	f7f9 ff73 	bl	8002a30 <__aeabi_dcmpeq>
 8008b4a:	2800      	cmp	r0, #0
 8008b4c:	d105      	bne.n	8008b5a <pow+0x2f6>
 8008b4e:	22e0      	movs	r2, #224	; 0xe0
 8008b50:	4b20      	ldr	r3, [pc, #128]	; (8008bd4 <pow+0x370>)
 8008b52:	0612      	lsls	r2, r2, #24
 8008b54:	4641      	mov	r1, r8
 8008b56:	618a      	str	r2, [r1, #24]
 8008b58:	61cb      	str	r3, [r1, #28]
 8008b5a:	4653      	mov	r3, sl
 8008b5c:	781b      	ldrb	r3, [r3, #0]
 8008b5e:	b25b      	sxtb	r3, r3
 8008b60:	469b      	mov	fp, r3
 8008b62:	e7e6      	b.n	8008b32 <pow+0x2ce>
 8008b64:	2301      	movs	r3, #1
 8008b66:	4642      	mov	r2, r8
 8008b68:	9304      	str	r3, [sp, #16]
 8008b6a:	4b14      	ldr	r3, [pc, #80]	; (8008bbc <pow+0x358>)
 8008b6c:	6053      	str	r3, [r2, #4]
 8008b6e:	4643      	mov	r3, r8
 8008b70:	464a      	mov	r2, r9
 8008b72:	609e      	str	r6, [r3, #8]
 8008b74:	60df      	str	r7, [r3, #12]
 8008b76:	621a      	str	r2, [r3, #32]
 8008b78:	611c      	str	r4, [r3, #16]
 8008b7a:	615d      	str	r5, [r3, #20]
 8008b7c:	465b      	mov	r3, fp
 8008b7e:	2b00      	cmp	r3, #0
 8008b80:	d0bf      	beq.n	8008b02 <pow+0x29e>
 8008b82:	2300      	movs	r3, #0
 8008b84:	2200      	movs	r2, #0
 8008b86:	0019      	movs	r1, r3
 8008b88:	0010      	movs	r0, r2
 8008b8a:	f7f8 fd91 	bl	80016b0 <__aeabi_ddiv>
 8008b8e:	4643      	mov	r3, r8
 8008b90:	6198      	str	r0, [r3, #24]
 8008b92:	61d9      	str	r1, [r3, #28]
 8008b94:	465b      	mov	r3, fp
 8008b96:	2b02      	cmp	r3, #2
 8008b98:	d100      	bne.n	8008b9c <pow+0x338>
 8008b9a:	e75b      	b.n	8008a54 <pow+0x1f0>
 8008b9c:	e7b6      	b.n	8008b0c <pow+0x2a8>
 8008b9e:	0020      	movs	r0, r4
 8008ba0:	0029      	movs	r1, r5
 8008ba2:	f000 fecd 	bl	8009940 <rint>
 8008ba6:	0022      	movs	r2, r4
 8008ba8:	002b      	movs	r3, r5
 8008baa:	f7f9 ff41 	bl	8002a30 <__aeabi_dcmpeq>
 8008bae:	2800      	cmp	r0, #0
 8008bb0:	d1d3      	bne.n	8008b5a <pow+0x2f6>
 8008bb2:	2200      	movs	r2, #0
 8008bb4:	4b03      	ldr	r3, [pc, #12]	; (8008bc4 <pow+0x360>)
 8008bb6:	e7cd      	b.n	8008b54 <pow+0x2f0>
 8008bb8:	20000070 	.word	0x20000070
 8008bbc:	08009d18 	.word	0x08009d18
 8008bc0:	3ff00000 	.word	0x3ff00000
 8008bc4:	fff00000 	.word	0xfff00000
 8008bc8:	3fe00000 	.word	0x3fe00000
 8008bcc:	47efffff 	.word	0x47efffff
 8008bd0:	7ff00000 	.word	0x7ff00000
 8008bd4:	c7efffff 	.word	0xc7efffff

08008bd8 <sqrt>:
 8008bd8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8008bda:	4647      	mov	r7, r8
 8008bdc:	46ce      	mov	lr, r9
 8008bde:	b580      	push	{r7, lr}
 8008be0:	b08d      	sub	sp, #52	; 0x34
 8008be2:	0004      	movs	r4, r0
 8008be4:	000d      	movs	r5, r1
 8008be6:	f000 fdbd 	bl	8009764 <__ieee754_sqrt>
 8008bea:	4b29      	ldr	r3, [pc, #164]	; (8008c90 <sqrt+0xb8>)
 8008bec:	0006      	movs	r6, r0
 8008bee:	781b      	ldrb	r3, [r3, #0]
 8008bf0:	000f      	movs	r7, r1
 8008bf2:	b25b      	sxtb	r3, r3
 8008bf4:	4698      	mov	r8, r3
 8008bf6:	3301      	adds	r3, #1
 8008bf8:	d010      	beq.n	8008c1c <sqrt+0x44>
 8008bfa:	0022      	movs	r2, r4
 8008bfc:	002b      	movs	r3, r5
 8008bfe:	0020      	movs	r0, r4
 8008c00:	0029      	movs	r1, r5
 8008c02:	f7fa f84b 	bl	8002c9c <__aeabi_dcmpun>
 8008c06:	4681      	mov	r9, r0
 8008c08:	2800      	cmp	r0, #0
 8008c0a:	d107      	bne.n	8008c1c <sqrt+0x44>
 8008c0c:	2200      	movs	r2, #0
 8008c0e:	2300      	movs	r3, #0
 8008c10:	0020      	movs	r0, r4
 8008c12:	0029      	movs	r1, r5
 8008c14:	f7f9 ff12 	bl	8002a3c <__aeabi_dcmplt>
 8008c18:	2800      	cmp	r0, #0
 8008c1a:	d106      	bne.n	8008c2a <sqrt+0x52>
 8008c1c:	0030      	movs	r0, r6
 8008c1e:	0039      	movs	r1, r7
 8008c20:	b00d      	add	sp, #52	; 0x34
 8008c22:	bc0c      	pop	{r2, r3}
 8008c24:	4690      	mov	r8, r2
 8008c26:	4699      	mov	r9, r3
 8008c28:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008c2a:	2301      	movs	r3, #1
 8008c2c:	9302      	str	r3, [sp, #8]
 8008c2e:	4b19      	ldr	r3, [pc, #100]	; (8008c94 <sqrt+0xbc>)
 8008c30:	9406      	str	r4, [sp, #24]
 8008c32:	9507      	str	r5, [sp, #28]
 8008c34:	9303      	str	r3, [sp, #12]
 8008c36:	464b      	mov	r3, r9
 8008c38:	930a      	str	r3, [sp, #40]	; 0x28
 8008c3a:	4643      	mov	r3, r8
 8008c3c:	9404      	str	r4, [sp, #16]
 8008c3e:	9505      	str	r5, [sp, #20]
 8008c40:	2b00      	cmp	r3, #0
 8008c42:	d015      	beq.n	8008c70 <sqrt+0x98>
 8008c44:	2300      	movs	r3, #0
 8008c46:	2200      	movs	r2, #0
 8008c48:	0019      	movs	r1, r3
 8008c4a:	0010      	movs	r0, r2
 8008c4c:	f7f8 fd30 	bl	80016b0 <__aeabi_ddiv>
 8008c50:	4643      	mov	r3, r8
 8008c52:	9008      	str	r0, [sp, #32]
 8008c54:	9109      	str	r1, [sp, #36]	; 0x24
 8008c56:	2b02      	cmp	r3, #2
 8008c58:	d10e      	bne.n	8008c78 <sqrt+0xa0>
 8008c5a:	f000 ff71 	bl	8009b40 <__errno>
 8008c5e:	2321      	movs	r3, #33	; 0x21
 8008c60:	6003      	str	r3, [r0, #0]
 8008c62:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8008c64:	9301      	str	r3, [sp, #4]
 8008c66:	2b00      	cmp	r3, #0
 8008c68:	d10c      	bne.n	8008c84 <sqrt+0xac>
 8008c6a:	9e08      	ldr	r6, [sp, #32]
 8008c6c:	9f09      	ldr	r7, [sp, #36]	; 0x24
 8008c6e:	e7d5      	b.n	8008c1c <sqrt+0x44>
 8008c70:	2300      	movs	r3, #0
 8008c72:	2400      	movs	r4, #0
 8008c74:	9308      	str	r3, [sp, #32]
 8008c76:	9409      	str	r4, [sp, #36]	; 0x24
 8008c78:	a802      	add	r0, sp, #8
 8008c7a:	f000 fe59 	bl	8009930 <matherr>
 8008c7e:	2800      	cmp	r0, #0
 8008c80:	d1ef      	bne.n	8008c62 <sqrt+0x8a>
 8008c82:	e7ea      	b.n	8008c5a <sqrt+0x82>
 8008c84:	f000 ff5c 	bl	8009b40 <__errno>
 8008c88:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8008c8a:	9301      	str	r3, [sp, #4]
 8008c8c:	6003      	str	r3, [r0, #0]
 8008c8e:	e7ec      	b.n	8008c6a <sqrt+0x92>
 8008c90:	20000070 	.word	0x20000070
 8008c94:	08009d1c 	.word	0x08009d1c

08008c98 <__ieee754_pow>:
 8008c98:	b5f0      	push	{r4, r5, r6, r7, lr}
 8008c9a:	4657      	mov	r7, sl
 8008c9c:	46de      	mov	lr, fp
 8008c9e:	464e      	mov	r6, r9
 8008ca0:	4645      	mov	r5, r8
 8008ca2:	005c      	lsls	r4, r3, #1
 8008ca4:	0864      	lsrs	r4, r4, #1
 8008ca6:	b5e0      	push	{r5, r6, r7, lr}
 8008ca8:	4698      	mov	r8, r3
 8008caa:	001f      	movs	r7, r3
 8008cac:	0023      	movs	r3, r4
 8008cae:	b093      	sub	sp, #76	; 0x4c
 8008cb0:	4683      	mov	fp, r0
 8008cb2:	468a      	mov	sl, r1
 8008cb4:	0016      	movs	r6, r2
 8008cb6:	4313      	orrs	r3, r2
 8008cb8:	d00c      	beq.n	8008cd4 <__ieee754_pow+0x3c>
 8008cba:	4b7d      	ldr	r3, [pc, #500]	; (8008eb0 <__ieee754_pow+0x218>)
 8008cbc:	004d      	lsls	r5, r1, #1
 8008cbe:	9102      	str	r1, [sp, #8]
 8008cc0:	4681      	mov	r9, r0
 8008cc2:	086d      	lsrs	r5, r5, #1
 8008cc4:	429d      	cmp	r5, r3
 8008cc6:	dd12      	ble.n	8008cee <__ieee754_pow+0x56>
 8008cc8:	4b7a      	ldr	r3, [pc, #488]	; (8008eb4 <__ieee754_pow+0x21c>)
 8008cca:	469c      	mov	ip, r3
 8008ccc:	465b      	mov	r3, fp
 8008cce:	4465      	add	r5, ip
 8008cd0:	431d      	orrs	r5, r3
 8008cd2:	d161      	bne.n	8008d98 <__ieee754_pow+0x100>
 8008cd4:	2300      	movs	r3, #0
 8008cd6:	4c78      	ldr	r4, [pc, #480]	; (8008eb8 <__ieee754_pow+0x220>)
 8008cd8:	9300      	str	r3, [sp, #0]
 8008cda:	9401      	str	r4, [sp, #4]
 8008cdc:	9800      	ldr	r0, [sp, #0]
 8008cde:	9901      	ldr	r1, [sp, #4]
 8008ce0:	b013      	add	sp, #76	; 0x4c
 8008ce2:	bc3c      	pop	{r2, r3, r4, r5}
 8008ce4:	4690      	mov	r8, r2
 8008ce6:	4699      	mov	r9, r3
 8008ce8:	46a2      	mov	sl, r4
 8008cea:	46ab      	mov	fp, r5
 8008cec:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008cee:	429d      	cmp	r5, r3
 8008cf0:	d050      	beq.n	8008d94 <__ieee754_pow+0xfc>
 8008cf2:	429c      	cmp	r4, r3
 8008cf4:	dce8      	bgt.n	8008cc8 <__ieee754_pow+0x30>
 8008cf6:	4b6e      	ldr	r3, [pc, #440]	; (8008eb0 <__ieee754_pow+0x218>)
 8008cf8:	429c      	cmp	r4, r3
 8008cfa:	d06b      	beq.n	8008dd4 <__ieee754_pow+0x13c>
 8008cfc:	2300      	movs	r3, #0
 8008cfe:	9304      	str	r3, [sp, #16]
 8008d00:	4653      	mov	r3, sl
 8008d02:	2b00      	cmp	r3, #0
 8008d04:	db69      	blt.n	8008dda <__ieee754_pow+0x142>
 8008d06:	2a00      	cmp	r2, #0
 8008d08:	d110      	bne.n	8008d2c <__ieee754_pow+0x94>
 8008d0a:	4b69      	ldr	r3, [pc, #420]	; (8008eb0 <__ieee754_pow+0x218>)
 8008d0c:	429c      	cmp	r4, r3
 8008d0e:	d04c      	beq.n	8008daa <__ieee754_pow+0x112>
 8008d10:	4b69      	ldr	r3, [pc, #420]	; (8008eb8 <__ieee754_pow+0x220>)
 8008d12:	429c      	cmp	r4, r3
 8008d14:	d100      	bne.n	8008d18 <__ieee754_pow+0x80>
 8008d16:	e0a3      	b.n	8008e60 <__ieee754_pow+0x1c8>
 8008d18:	2380      	movs	r3, #128	; 0x80
 8008d1a:	05db      	lsls	r3, r3, #23
 8008d1c:	4598      	cmp	r8, r3
 8008d1e:	d100      	bne.n	8008d22 <__ieee754_pow+0x8a>
 8008d20:	e0bc      	b.n	8008e9c <__ieee754_pow+0x204>
 8008d22:	4b66      	ldr	r3, [pc, #408]	; (8008ebc <__ieee754_pow+0x224>)
 8008d24:	4598      	cmp	r8, r3
 8008d26:	d101      	bne.n	8008d2c <__ieee754_pow+0x94>
 8008d28:	f000 fbd6 	bl	80094d8 <__ieee754_pow+0x840>
 8008d2c:	4658      	mov	r0, fp
 8008d2e:	4651      	mov	r1, sl
 8008d30:	f000 fdf0 	bl	8009914 <fabs>
 8008d34:	464b      	mov	r3, r9
 8008d36:	9000      	str	r0, [sp, #0]
 8008d38:	9101      	str	r1, [sp, #4]
 8008d3a:	2b00      	cmp	r3, #0
 8008d3c:	d107      	bne.n	8008d4e <__ieee754_pow+0xb6>
 8008d3e:	2d00      	cmp	r5, #0
 8008d40:	d067      	beq.n	8008e12 <__ieee754_pow+0x17a>
 8008d42:	4653      	mov	r3, sl
 8008d44:	4a5c      	ldr	r2, [pc, #368]	; (8008eb8 <__ieee754_pow+0x220>)
 8008d46:	009b      	lsls	r3, r3, #2
 8008d48:	089b      	lsrs	r3, r3, #2
 8008d4a:	4293      	cmp	r3, r2
 8008d4c:	d061      	beq.n	8008e12 <__ieee754_pow+0x17a>
 8008d4e:	4653      	mov	r3, sl
 8008d50:	0fdb      	lsrs	r3, r3, #31
 8008d52:	3b01      	subs	r3, #1
 8008d54:	4699      	mov	r9, r3
 8008d56:	464a      	mov	r2, r9
 8008d58:	9b04      	ldr	r3, [sp, #16]
 8008d5a:	4313      	orrs	r3, r2
 8008d5c:	d100      	bne.n	8008d60 <__ieee754_pow+0xc8>
 8008d5e:	e090      	b.n	8008e82 <__ieee754_pow+0x1ea>
 8008d60:	4b57      	ldr	r3, [pc, #348]	; (8008ec0 <__ieee754_pow+0x228>)
 8008d62:	429c      	cmp	r4, r3
 8008d64:	dc00      	bgt.n	8008d68 <__ieee754_pow+0xd0>
 8008d66:	e0bb      	b.n	8008ee0 <__ieee754_pow+0x248>
 8008d68:	4b56      	ldr	r3, [pc, #344]	; (8008ec4 <__ieee754_pow+0x22c>)
 8008d6a:	429c      	cmp	r4, r3
 8008d6c:	dc01      	bgt.n	8008d72 <__ieee754_pow+0xda>
 8008d6e:	f000 fc10 	bl	8009592 <__ieee754_pow+0x8fa>
 8008d72:	4b55      	ldr	r3, [pc, #340]	; (8008ec8 <__ieee754_pow+0x230>)
 8008d74:	429d      	cmp	r5, r3
 8008d76:	dc01      	bgt.n	8008d7c <__ieee754_pow+0xe4>
 8008d78:	f000 fc04 	bl	8009584 <__ieee754_pow+0x8ec>
 8008d7c:	4643      	mov	r3, r8
 8008d7e:	2b00      	cmp	r3, #0
 8008d80:	dd23      	ble.n	8008dca <__ieee754_pow+0x132>
 8008d82:	4a52      	ldr	r2, [pc, #328]	; (8008ecc <__ieee754_pow+0x234>)
 8008d84:	4b52      	ldr	r3, [pc, #328]	; (8008ed0 <__ieee754_pow+0x238>)
 8008d86:	0010      	movs	r0, r2
 8008d88:	0019      	movs	r1, r3
 8008d8a:	f7f8 ff93 	bl	8001cb4 <__aeabi_dmul>
 8008d8e:	9000      	str	r0, [sp, #0]
 8008d90:	9101      	str	r1, [sp, #4]
 8008d92:	e7a3      	b.n	8008cdc <__ieee754_pow+0x44>
 8008d94:	2800      	cmp	r0, #0
 8008d96:	d005      	beq.n	8008da4 <__ieee754_pow+0x10c>
 8008d98:	484e      	ldr	r0, [pc, #312]	; (8008ed4 <__ieee754_pow+0x23c>)
 8008d9a:	f000 fdcb 	bl	8009934 <nan>
 8008d9e:	9000      	str	r0, [sp, #0]
 8008da0:	9101      	str	r1, [sp, #4]
 8008da2:	e79b      	b.n	8008cdc <__ieee754_pow+0x44>
 8008da4:	42ac      	cmp	r4, r5
 8008da6:	dcf7      	bgt.n	8008d98 <__ieee754_pow+0x100>
 8008da8:	e7a5      	b.n	8008cf6 <__ieee754_pow+0x5e>
 8008daa:	465a      	mov	r2, fp
 8008dac:	4b41      	ldr	r3, [pc, #260]	; (8008eb4 <__ieee754_pow+0x21c>)
 8008dae:	18eb      	adds	r3, r5, r3
 8008db0:	4313      	orrs	r3, r2
 8008db2:	d100      	bne.n	8008db6 <__ieee754_pow+0x11e>
 8008db4:	e78e      	b.n	8008cd4 <__ieee754_pow+0x3c>
 8008db6:	4b44      	ldr	r3, [pc, #272]	; (8008ec8 <__ieee754_pow+0x230>)
 8008db8:	429d      	cmp	r5, r3
 8008dba:	dc00      	bgt.n	8008dbe <__ieee754_pow+0x126>
 8008dbc:	e399      	b.n	80094f2 <__ieee754_pow+0x85a>
 8008dbe:	4643      	mov	r3, r8
 8008dc0:	9600      	str	r6, [sp, #0]
 8008dc2:	9701      	str	r7, [sp, #4]
 8008dc4:	2b00      	cmp	r3, #0
 8008dc6:	db00      	blt.n	8008dca <__ieee754_pow+0x132>
 8008dc8:	e788      	b.n	8008cdc <__ieee754_pow+0x44>
 8008dca:	2300      	movs	r3, #0
 8008dcc:	2400      	movs	r4, #0
 8008dce:	9300      	str	r3, [sp, #0]
 8008dd0:	9401      	str	r4, [sp, #4]
 8008dd2:	e783      	b.n	8008cdc <__ieee754_pow+0x44>
 8008dd4:	2a00      	cmp	r2, #0
 8008dd6:	d091      	beq.n	8008cfc <__ieee754_pow+0x64>
 8008dd8:	e776      	b.n	8008cc8 <__ieee754_pow+0x30>
 8008dda:	4b3f      	ldr	r3, [pc, #252]	; (8008ed8 <__ieee754_pow+0x240>)
 8008ddc:	429c      	cmp	r4, r3
 8008dde:	dc3c      	bgt.n	8008e5a <__ieee754_pow+0x1c2>
 8008de0:	4b39      	ldr	r3, [pc, #228]	; (8008ec8 <__ieee754_pow+0x230>)
 8008de2:	429c      	cmp	r4, r3
 8008de4:	dd8f      	ble.n	8008d06 <__ieee754_pow+0x6e>
 8008de6:	493d      	ldr	r1, [pc, #244]	; (8008edc <__ieee754_pow+0x244>)
 8008de8:	1523      	asrs	r3, r4, #20
 8008dea:	468c      	mov	ip, r1
 8008dec:	4463      	add	r3, ip
 8008dee:	2b14      	cmp	r3, #20
 8008df0:	dc00      	bgt.n	8008df4 <__ieee754_pow+0x15c>
 8008df2:	e3b2      	b.n	800955a <__ieee754_pow+0x8c2>
 8008df4:	2134      	movs	r1, #52	; 0x34
 8008df6:	1acb      	subs	r3, r1, r3
 8008df8:	0031      	movs	r1, r6
 8008dfa:	40d9      	lsrs	r1, r3
 8008dfc:	0008      	movs	r0, r1
 8008dfe:	4098      	lsls	r0, r3
 8008e00:	4290      	cmp	r0, r2
 8008e02:	d000      	beq.n	8008e06 <__ieee754_pow+0x16e>
 8008e04:	e77f      	b.n	8008d06 <__ieee754_pow+0x6e>
 8008e06:	2301      	movs	r3, #1
 8008e08:	4019      	ands	r1, r3
 8008e0a:	3301      	adds	r3, #1
 8008e0c:	1a5b      	subs	r3, r3, r1
 8008e0e:	9304      	str	r3, [sp, #16]
 8008e10:	e779      	b.n	8008d06 <__ieee754_pow+0x6e>
 8008e12:	4643      	mov	r3, r8
 8008e14:	2b00      	cmp	r3, #0
 8008e16:	da07      	bge.n	8008e28 <__ieee754_pow+0x190>
 8008e18:	9a00      	ldr	r2, [sp, #0]
 8008e1a:	9b01      	ldr	r3, [sp, #4]
 8008e1c:	2000      	movs	r0, #0
 8008e1e:	4926      	ldr	r1, [pc, #152]	; (8008eb8 <__ieee754_pow+0x220>)
 8008e20:	f7f8 fc46 	bl	80016b0 <__aeabi_ddiv>
 8008e24:	9000      	str	r0, [sp, #0]
 8008e26:	9101      	str	r1, [sp, #4]
 8008e28:	9b02      	ldr	r3, [sp, #8]
 8008e2a:	2b00      	cmp	r3, #0
 8008e2c:	db00      	blt.n	8008e30 <__ieee754_pow+0x198>
 8008e2e:	e755      	b.n	8008cdc <__ieee754_pow+0x44>
 8008e30:	4b20      	ldr	r3, [pc, #128]	; (8008eb4 <__ieee754_pow+0x21c>)
 8008e32:	469c      	mov	ip, r3
 8008e34:	9b04      	ldr	r3, [sp, #16]
 8008e36:	4465      	add	r5, ip
 8008e38:	431d      	orrs	r5, r3
 8008e3a:	d101      	bne.n	8008e40 <__ieee754_pow+0x1a8>
 8008e3c:	f000 fc0e 	bl	800965c <__ieee754_pow+0x9c4>
 8008e40:	9b04      	ldr	r3, [sp, #16]
 8008e42:	2b01      	cmp	r3, #1
 8008e44:	d000      	beq.n	8008e48 <__ieee754_pow+0x1b0>
 8008e46:	e749      	b.n	8008cdc <__ieee754_pow+0x44>
 8008e48:	9c00      	ldr	r4, [sp, #0]
 8008e4a:	9d01      	ldr	r5, [sp, #4]
 8008e4c:	2180      	movs	r1, #128	; 0x80
 8008e4e:	0022      	movs	r2, r4
 8008e50:	0609      	lsls	r1, r1, #24
 8008e52:	186b      	adds	r3, r5, r1
 8008e54:	9200      	str	r2, [sp, #0]
 8008e56:	9301      	str	r3, [sp, #4]
 8008e58:	e740      	b.n	8008cdc <__ieee754_pow+0x44>
 8008e5a:	2302      	movs	r3, #2
 8008e5c:	9304      	str	r3, [sp, #16]
 8008e5e:	e752      	b.n	8008d06 <__ieee754_pow+0x6e>
 8008e60:	4658      	mov	r0, fp
 8008e62:	4651      	mov	r1, sl
 8008e64:	4643      	mov	r3, r8
 8008e66:	9000      	str	r0, [sp, #0]
 8008e68:	9101      	str	r1, [sp, #4]
 8008e6a:	2b00      	cmp	r3, #0
 8008e6c:	db00      	blt.n	8008e70 <__ieee754_pow+0x1d8>
 8008e6e:	e735      	b.n	8008cdc <__ieee754_pow+0x44>
 8008e70:	465a      	mov	r2, fp
 8008e72:	4653      	mov	r3, sl
 8008e74:	2000      	movs	r0, #0
 8008e76:	4910      	ldr	r1, [pc, #64]	; (8008eb8 <__ieee754_pow+0x220>)
 8008e78:	f7f8 fc1a 	bl	80016b0 <__aeabi_ddiv>
 8008e7c:	9000      	str	r0, [sp, #0]
 8008e7e:	9101      	str	r1, [sp, #4]
 8008e80:	e72c      	b.n	8008cdc <__ieee754_pow+0x44>
 8008e82:	465a      	mov	r2, fp
 8008e84:	4653      	mov	r3, sl
 8008e86:	4658      	mov	r0, fp
 8008e88:	4651      	mov	r1, sl
 8008e8a:	f7f9 f985 	bl	8002198 <__aeabi_dsub>
 8008e8e:	0002      	movs	r2, r0
 8008e90:	000b      	movs	r3, r1
 8008e92:	f7f8 fc0d 	bl	80016b0 <__aeabi_ddiv>
 8008e96:	9000      	str	r0, [sp, #0]
 8008e98:	9101      	str	r1, [sp, #4]
 8008e9a:	e71f      	b.n	8008cdc <__ieee754_pow+0x44>
 8008e9c:	465a      	mov	r2, fp
 8008e9e:	4653      	mov	r3, sl
 8008ea0:	4658      	mov	r0, fp
 8008ea2:	4651      	mov	r1, sl
 8008ea4:	f7f8 ff06 	bl	8001cb4 <__aeabi_dmul>
 8008ea8:	9000      	str	r0, [sp, #0]
 8008eaa:	9101      	str	r1, [sp, #4]
 8008eac:	e716      	b.n	8008cdc <__ieee754_pow+0x44>
 8008eae:	46c0      	nop			; (mov r8, r8)
 8008eb0:	7ff00000 	.word	0x7ff00000
 8008eb4:	c0100000 	.word	0xc0100000
 8008eb8:	3ff00000 	.word	0x3ff00000
 8008ebc:	3fe00000 	.word	0x3fe00000
 8008ec0:	41e00000 	.word	0x41e00000
 8008ec4:	43f00000 	.word	0x43f00000
 8008ec8:	3fefffff 	.word	0x3fefffff
 8008ecc:	8800759c 	.word	0x8800759c
 8008ed0:	7e37e43c 	.word	0x7e37e43c
 8008ed4:	08009d20 	.word	0x08009d20
 8008ed8:	433fffff 	.word	0x433fffff
 8008edc:	fffffc01 	.word	0xfffffc01
 8008ee0:	4be4      	ldr	r3, [pc, #912]	; (8009274 <__ieee754_pow+0x5dc>)
 8008ee2:	2200      	movs	r2, #0
 8008ee4:	429d      	cmp	r5, r3
 8008ee6:	dc0a      	bgt.n	8008efe <__ieee754_pow+0x266>
 8008ee8:	9800      	ldr	r0, [sp, #0]
 8008eea:	9901      	ldr	r1, [sp, #4]
 8008eec:	2200      	movs	r2, #0
 8008eee:	4be2      	ldr	r3, [pc, #904]	; (8009278 <__ieee754_pow+0x5e0>)
 8008ef0:	f7f8 fee0 	bl	8001cb4 <__aeabi_dmul>
 8008ef4:	2235      	movs	r2, #53	; 0x35
 8008ef6:	000d      	movs	r5, r1
 8008ef8:	9000      	str	r0, [sp, #0]
 8008efa:	9101      	str	r1, [sp, #4]
 8008efc:	4252      	negs	r2, r2
 8008efe:	49df      	ldr	r1, [pc, #892]	; (800927c <__ieee754_pow+0x5e4>)
 8008f00:	152b      	asrs	r3, r5, #20
 8008f02:	468c      	mov	ip, r1
 8008f04:	4463      	add	r3, ip
 8008f06:	4698      	mov	r8, r3
 8008f08:	032d      	lsls	r5, r5, #12
 8008f0a:	4cdd      	ldr	r4, [pc, #884]	; (8009280 <__ieee754_pow+0x5e8>)
 8008f0c:	4bdd      	ldr	r3, [pc, #884]	; (8009284 <__ieee754_pow+0x5ec>)
 8008f0e:	0b2d      	lsrs	r5, r5, #12
 8008f10:	4490      	add	r8, r2
 8008f12:	432c      	orrs	r4, r5
 8008f14:	429d      	cmp	r5, r3
 8008f16:	dd0a      	ble.n	8008f2e <__ieee754_pow+0x296>
 8008f18:	4bdb      	ldr	r3, [pc, #876]	; (8009288 <__ieee754_pow+0x5f0>)
 8008f1a:	429d      	cmp	r5, r3
 8008f1c:	dc01      	bgt.n	8008f22 <__ieee754_pow+0x28a>
 8008f1e:	f000 fc01 	bl	8009724 <__ieee754_pow+0xa8c>
 8008f22:	2301      	movs	r3, #1
 8008f24:	469c      	mov	ip, r3
 8008f26:	4bd9      	ldr	r3, [pc, #868]	; (800928c <__ieee754_pow+0x5f4>)
 8008f28:	44e0      	add	r8, ip
 8008f2a:	469c      	mov	ip, r3
 8008f2c:	4464      	add	r4, ip
 8008f2e:	2200      	movs	r2, #0
 8008f30:	2300      	movs	r3, #0
 8008f32:	920e      	str	r2, [sp, #56]	; 0x38
 8008f34:	930f      	str	r3, [sp, #60]	; 0x3c
 8008f36:	9210      	str	r2, [sp, #64]	; 0x40
 8008f38:	9311      	str	r3, [sp, #68]	; 0x44
 8008f3a:	2200      	movs	r2, #0
 8008f3c:	2500      	movs	r5, #0
 8008f3e:	4bd0      	ldr	r3, [pc, #832]	; (8009280 <__ieee754_pow+0x5e8>)
 8008f40:	9206      	str	r2, [sp, #24]
 8008f42:	9307      	str	r3, [sp, #28]
 8008f44:	9800      	ldr	r0, [sp, #0]
 8008f46:	9901      	ldr	r1, [sp, #4]
 8008f48:	9a06      	ldr	r2, [sp, #24]
 8008f4a:	9b07      	ldr	r3, [sp, #28]
 8008f4c:	0021      	movs	r1, r4
 8008f4e:	9008      	str	r0, [sp, #32]
 8008f50:	9109      	str	r1, [sp, #36]	; 0x24
 8008f52:	f7f9 f921 	bl	8002198 <__aeabi_dsub>
 8008f56:	9a06      	ldr	r2, [sp, #24]
 8008f58:	9b07      	ldr	r3, [sp, #28]
 8008f5a:	900a      	str	r0, [sp, #40]	; 0x28
 8008f5c:	910b      	str	r1, [sp, #44]	; 0x2c
 8008f5e:	9808      	ldr	r0, [sp, #32]
 8008f60:	9909      	ldr	r1, [sp, #36]	; 0x24
 8008f62:	f7f8 f889 	bl	8001078 <__aeabi_dadd>
 8008f66:	0002      	movs	r2, r0
 8008f68:	000b      	movs	r3, r1
 8008f6a:	2000      	movs	r0, #0
 8008f6c:	49c4      	ldr	r1, [pc, #784]	; (8009280 <__ieee754_pow+0x5e8>)
 8008f6e:	f7f8 fb9f 	bl	80016b0 <__aeabi_ddiv>
 8008f72:	000a      	movs	r2, r1
 8008f74:	0001      	movs	r1, r0
 8008f76:	0013      	movs	r3, r2
 8008f78:	910c      	str	r1, [sp, #48]	; 0x30
 8008f7a:	920d      	str	r2, [sp, #52]	; 0x34
 8008f7c:	0002      	movs	r2, r0
 8008f7e:	980a      	ldr	r0, [sp, #40]	; 0x28
 8008f80:	990b      	ldr	r1, [sp, #44]	; 0x2c
 8008f82:	f7f8 fe97 	bl	8001cb4 <__aeabi_dmul>
 8008f86:	000a      	movs	r2, r1
 8008f88:	0001      	movs	r1, r0
 8008f8a:	0013      	movs	r3, r2
 8008f8c:	9102      	str	r1, [sp, #8]
 8008f8e:	9203      	str	r2, [sp, #12]
 8008f90:	2200      	movs	r2, #0
 8008f92:	9200      	str	r2, [sp, #0]
 8008f94:	9301      	str	r3, [sp, #4]
 8008f96:	2380      	movs	r3, #128	; 0x80
 8008f98:	1064      	asrs	r4, r4, #1
 8008f9a:	059b      	lsls	r3, r3, #22
 8008f9c:	4323      	orrs	r3, r4
 8008f9e:	2480      	movs	r4, #128	; 0x80
 8008fa0:	0324      	lsls	r4, r4, #12
 8008fa2:	46a4      	mov	ip, r4
 8008fa4:	2000      	movs	r0, #0
 8008fa6:	4463      	add	r3, ip
 8008fa8:	1959      	adds	r1, r3, r5
 8008faa:	0004      	movs	r4, r0
 8008fac:	000d      	movs	r5, r1
 8008fae:	0002      	movs	r2, r0
 8008fb0:	000b      	movs	r3, r1
 8008fb2:	9800      	ldr	r0, [sp, #0]
 8008fb4:	9901      	ldr	r1, [sp, #4]
 8008fb6:	f7f8 fe7d 	bl	8001cb4 <__aeabi_dmul>
 8008fba:	0002      	movs	r2, r0
 8008fbc:	000b      	movs	r3, r1
 8008fbe:	980a      	ldr	r0, [sp, #40]	; 0x28
 8008fc0:	990b      	ldr	r1, [sp, #44]	; 0x2c
 8008fc2:	f7f9 f8e9 	bl	8002198 <__aeabi_dsub>
 8008fc6:	9a06      	ldr	r2, [sp, #24]
 8008fc8:	9b07      	ldr	r3, [sp, #28]
 8008fca:	900a      	str	r0, [sp, #40]	; 0x28
 8008fcc:	910b      	str	r1, [sp, #44]	; 0x2c
 8008fce:	0020      	movs	r0, r4
 8008fd0:	0029      	movs	r1, r5
 8008fd2:	f7f9 f8e1 	bl	8002198 <__aeabi_dsub>
 8008fd6:	0002      	movs	r2, r0
 8008fd8:	000b      	movs	r3, r1
 8008fda:	9808      	ldr	r0, [sp, #32]
 8008fdc:	9909      	ldr	r1, [sp, #36]	; 0x24
 8008fde:	f7f9 f8db 	bl	8002198 <__aeabi_dsub>
 8008fe2:	9a00      	ldr	r2, [sp, #0]
 8008fe4:	9b01      	ldr	r3, [sp, #4]
 8008fe6:	f7f8 fe65 	bl	8001cb4 <__aeabi_dmul>
 8008fea:	0002      	movs	r2, r0
 8008fec:	000b      	movs	r3, r1
 8008fee:	980a      	ldr	r0, [sp, #40]	; 0x28
 8008ff0:	990b      	ldr	r1, [sp, #44]	; 0x2c
 8008ff2:	f7f9 f8d1 	bl	8002198 <__aeabi_dsub>
 8008ff6:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8008ff8:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8008ffa:	f7f8 fe5b 	bl	8001cb4 <__aeabi_dmul>
 8008ffe:	9c02      	ldr	r4, [sp, #8]
 8009000:	9d03      	ldr	r5, [sp, #12]
 8009002:	9008      	str	r0, [sp, #32]
 8009004:	9109      	str	r1, [sp, #36]	; 0x24
 8009006:	0022      	movs	r2, r4
 8009008:	002b      	movs	r3, r5
 800900a:	0020      	movs	r0, r4
 800900c:	0029      	movs	r1, r5
 800900e:	f7f8 fe51 	bl	8001cb4 <__aeabi_dmul>
 8009012:	0004      	movs	r4, r0
 8009014:	000d      	movs	r5, r1
 8009016:	4a9e      	ldr	r2, [pc, #632]	; (8009290 <__ieee754_pow+0x5f8>)
 8009018:	4b9e      	ldr	r3, [pc, #632]	; (8009294 <__ieee754_pow+0x5fc>)
 800901a:	f7f8 fe4b 	bl	8001cb4 <__aeabi_dmul>
 800901e:	4a9e      	ldr	r2, [pc, #632]	; (8009298 <__ieee754_pow+0x600>)
 8009020:	4b9e      	ldr	r3, [pc, #632]	; (800929c <__ieee754_pow+0x604>)
 8009022:	f7f8 f829 	bl	8001078 <__aeabi_dadd>
 8009026:	0022      	movs	r2, r4
 8009028:	002b      	movs	r3, r5
 800902a:	f7f8 fe43 	bl	8001cb4 <__aeabi_dmul>
 800902e:	4a9c      	ldr	r2, [pc, #624]	; (80092a0 <__ieee754_pow+0x608>)
 8009030:	4b9c      	ldr	r3, [pc, #624]	; (80092a4 <__ieee754_pow+0x60c>)
 8009032:	f7f8 f821 	bl	8001078 <__aeabi_dadd>
 8009036:	0022      	movs	r2, r4
 8009038:	002b      	movs	r3, r5
 800903a:	f7f8 fe3b 	bl	8001cb4 <__aeabi_dmul>
 800903e:	4a9a      	ldr	r2, [pc, #616]	; (80092a8 <__ieee754_pow+0x610>)
 8009040:	4b9a      	ldr	r3, [pc, #616]	; (80092ac <__ieee754_pow+0x614>)
 8009042:	f7f8 f819 	bl	8001078 <__aeabi_dadd>
 8009046:	0022      	movs	r2, r4
 8009048:	002b      	movs	r3, r5
 800904a:	f7f8 fe33 	bl	8001cb4 <__aeabi_dmul>
 800904e:	4a98      	ldr	r2, [pc, #608]	; (80092b0 <__ieee754_pow+0x618>)
 8009050:	4b98      	ldr	r3, [pc, #608]	; (80092b4 <__ieee754_pow+0x61c>)
 8009052:	f7f8 f811 	bl	8001078 <__aeabi_dadd>
 8009056:	0022      	movs	r2, r4
 8009058:	002b      	movs	r3, r5
 800905a:	f7f8 fe2b 	bl	8001cb4 <__aeabi_dmul>
 800905e:	4a96      	ldr	r2, [pc, #600]	; (80092b8 <__ieee754_pow+0x620>)
 8009060:	4b96      	ldr	r3, [pc, #600]	; (80092bc <__ieee754_pow+0x624>)
 8009062:	f7f8 f809 	bl	8001078 <__aeabi_dadd>
 8009066:	0022      	movs	r2, r4
 8009068:	9006      	str	r0, [sp, #24]
 800906a:	9107      	str	r1, [sp, #28]
 800906c:	002b      	movs	r3, r5
 800906e:	0020      	movs	r0, r4
 8009070:	0029      	movs	r1, r5
 8009072:	f7f8 fe1f 	bl	8001cb4 <__aeabi_dmul>
 8009076:	0002      	movs	r2, r0
 8009078:	000b      	movs	r3, r1
 800907a:	9806      	ldr	r0, [sp, #24]
 800907c:	9907      	ldr	r1, [sp, #28]
 800907e:	f7f8 fe19 	bl	8001cb4 <__aeabi_dmul>
 8009082:	9a00      	ldr	r2, [sp, #0]
 8009084:	9b01      	ldr	r3, [sp, #4]
 8009086:	0004      	movs	r4, r0
 8009088:	000d      	movs	r5, r1
 800908a:	9802      	ldr	r0, [sp, #8]
 800908c:	9903      	ldr	r1, [sp, #12]
 800908e:	f7f7 fff3 	bl	8001078 <__aeabi_dadd>
 8009092:	9a08      	ldr	r2, [sp, #32]
 8009094:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8009096:	f7f8 fe0d 	bl	8001cb4 <__aeabi_dmul>
 800909a:	0022      	movs	r2, r4
 800909c:	002b      	movs	r3, r5
 800909e:	f7f7 ffeb 	bl	8001078 <__aeabi_dadd>
 80090a2:	9c00      	ldr	r4, [sp, #0]
 80090a4:	9d01      	ldr	r5, [sp, #4]
 80090a6:	900a      	str	r0, [sp, #40]	; 0x28
 80090a8:	910b      	str	r1, [sp, #44]	; 0x2c
 80090aa:	0022      	movs	r2, r4
 80090ac:	002b      	movs	r3, r5
 80090ae:	0020      	movs	r0, r4
 80090b0:	0029      	movs	r1, r5
 80090b2:	f7f8 fdff 	bl	8001cb4 <__aeabi_dmul>
 80090b6:	2200      	movs	r2, #0
 80090b8:	4b81      	ldr	r3, [pc, #516]	; (80092c0 <__ieee754_pow+0x628>)
 80090ba:	0004      	movs	r4, r0
 80090bc:	000d      	movs	r5, r1
 80090be:	f7f7 ffdb 	bl	8001078 <__aeabi_dadd>
 80090c2:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80090c4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80090c6:	f7f7 ffd7 	bl	8001078 <__aeabi_dadd>
 80090ca:	2200      	movs	r2, #0
 80090cc:	000b      	movs	r3, r1
 80090ce:	0011      	movs	r1, r2
 80090d0:	001a      	movs	r2, r3
 80090d2:	9106      	str	r1, [sp, #24]
 80090d4:	9207      	str	r2, [sp, #28]
 80090d6:	000a      	movs	r2, r1
 80090d8:	9800      	ldr	r0, [sp, #0]
 80090da:	9901      	ldr	r1, [sp, #4]
 80090dc:	f7f8 fdea 	bl	8001cb4 <__aeabi_dmul>
 80090e0:	2200      	movs	r2, #0
 80090e2:	900c      	str	r0, [sp, #48]	; 0x30
 80090e4:	910d      	str	r1, [sp, #52]	; 0x34
 80090e6:	9806      	ldr	r0, [sp, #24]
 80090e8:	9907      	ldr	r1, [sp, #28]
 80090ea:	4b75      	ldr	r3, [pc, #468]	; (80092c0 <__ieee754_pow+0x628>)
 80090ec:	f7f9 f854 	bl	8002198 <__aeabi_dsub>
 80090f0:	0022      	movs	r2, r4
 80090f2:	002b      	movs	r3, r5
 80090f4:	f7f9 f850 	bl	8002198 <__aeabi_dsub>
 80090f8:	0002      	movs	r2, r0
 80090fa:	000b      	movs	r3, r1
 80090fc:	980a      	ldr	r0, [sp, #40]	; 0x28
 80090fe:	990b      	ldr	r1, [sp, #44]	; 0x2c
 8009100:	f7f9 f84a 	bl	8002198 <__aeabi_dsub>
 8009104:	9a02      	ldr	r2, [sp, #8]
 8009106:	9b03      	ldr	r3, [sp, #12]
 8009108:	f7f8 fdd4 	bl	8001cb4 <__aeabi_dmul>
 800910c:	9a06      	ldr	r2, [sp, #24]
 800910e:	9b07      	ldr	r3, [sp, #28]
 8009110:	0004      	movs	r4, r0
 8009112:	000d      	movs	r5, r1
 8009114:	9808      	ldr	r0, [sp, #32]
 8009116:	9909      	ldr	r1, [sp, #36]	; 0x24
 8009118:	f7f8 fdcc 	bl	8001cb4 <__aeabi_dmul>
 800911c:	0002      	movs	r2, r0
 800911e:	000b      	movs	r3, r1
 8009120:	0020      	movs	r0, r4
 8009122:	0029      	movs	r1, r5
 8009124:	f7f7 ffa8 	bl	8001078 <__aeabi_dadd>
 8009128:	0004      	movs	r4, r0
 800912a:	000d      	movs	r5, r1
 800912c:	0002      	movs	r2, r0
 800912e:	000b      	movs	r3, r1
 8009130:	980c      	ldr	r0, [sp, #48]	; 0x30
 8009132:	990d      	ldr	r1, [sp, #52]	; 0x34
 8009134:	f7f7 ffa0 	bl	8001078 <__aeabi_dadd>
 8009138:	2200      	movs	r2, #0
 800913a:	0010      	movs	r0, r2
 800913c:	22e0      	movs	r2, #224	; 0xe0
 800913e:	4b61      	ldr	r3, [pc, #388]	; (80092c4 <__ieee754_pow+0x62c>)
 8009140:	0612      	lsls	r2, r2, #24
 8009142:	9000      	str	r0, [sp, #0]
 8009144:	9101      	str	r1, [sp, #4]
 8009146:	f7f8 fdb5 	bl	8001cb4 <__aeabi_dmul>
 800914a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800914c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800914e:	9002      	str	r0, [sp, #8]
 8009150:	9103      	str	r1, [sp, #12]
 8009152:	9800      	ldr	r0, [sp, #0]
 8009154:	9901      	ldr	r1, [sp, #4]
 8009156:	f7f9 f81f 	bl	8002198 <__aeabi_dsub>
 800915a:	0002      	movs	r2, r0
 800915c:	000b      	movs	r3, r1
 800915e:	0020      	movs	r0, r4
 8009160:	0029      	movs	r1, r5
 8009162:	f7f9 f819 	bl	8002198 <__aeabi_dsub>
 8009166:	4a58      	ldr	r2, [pc, #352]	; (80092c8 <__ieee754_pow+0x630>)
 8009168:	4b56      	ldr	r3, [pc, #344]	; (80092c4 <__ieee754_pow+0x62c>)
 800916a:	f7f8 fda3 	bl	8001cb4 <__aeabi_dmul>
 800916e:	4a57      	ldr	r2, [pc, #348]	; (80092cc <__ieee754_pow+0x634>)
 8009170:	0004      	movs	r4, r0
 8009172:	000d      	movs	r5, r1
 8009174:	9800      	ldr	r0, [sp, #0]
 8009176:	9901      	ldr	r1, [sp, #4]
 8009178:	4b55      	ldr	r3, [pc, #340]	; (80092d0 <__ieee754_pow+0x638>)
 800917a:	f7f8 fd9b 	bl	8001cb4 <__aeabi_dmul>
 800917e:	0002      	movs	r2, r0
 8009180:	000b      	movs	r3, r1
 8009182:	0020      	movs	r0, r4
 8009184:	0029      	movs	r1, r5
 8009186:	f7f7 ff77 	bl	8001078 <__aeabi_dadd>
 800918a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800918c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800918e:	f7f7 ff73 	bl	8001078 <__aeabi_dadd>
 8009192:	9006      	str	r0, [sp, #24]
 8009194:	9107      	str	r1, [sp, #28]
 8009196:	4640      	mov	r0, r8
 8009198:	f7f9 fd9c 	bl	8002cd4 <__aeabi_i2d>
 800919c:	9a06      	ldr	r2, [sp, #24]
 800919e:	9b07      	ldr	r3, [sp, #28]
 80091a0:	0004      	movs	r4, r0
 80091a2:	000d      	movs	r5, r1
 80091a4:	9802      	ldr	r0, [sp, #8]
 80091a6:	9903      	ldr	r1, [sp, #12]
 80091a8:	f7f7 ff66 	bl	8001078 <__aeabi_dadd>
 80091ac:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 80091ae:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80091b0:	f7f7 ff62 	bl	8001078 <__aeabi_dadd>
 80091b4:	0022      	movs	r2, r4
 80091b6:	002b      	movs	r3, r5
 80091b8:	f7f7 ff5e 	bl	8001078 <__aeabi_dadd>
 80091bc:	2000      	movs	r0, #0
 80091be:	0022      	movs	r2, r4
 80091c0:	002b      	movs	r3, r5
 80091c2:	9000      	str	r0, [sp, #0]
 80091c4:	9101      	str	r1, [sp, #4]
 80091c6:	f7f8 ffe7 	bl	8002198 <__aeabi_dsub>
 80091ca:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 80091cc:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80091ce:	f7f8 ffe3 	bl	8002198 <__aeabi_dsub>
 80091d2:	9a02      	ldr	r2, [sp, #8]
 80091d4:	9b03      	ldr	r3, [sp, #12]
 80091d6:	f7f8 ffdf 	bl	8002198 <__aeabi_dsub>
 80091da:	0002      	movs	r2, r0
 80091dc:	000b      	movs	r3, r1
 80091de:	9806      	ldr	r0, [sp, #24]
 80091e0:	9907      	ldr	r1, [sp, #28]
 80091e2:	f7f8 ffd9 	bl	8002198 <__aeabi_dsub>
 80091e6:	9006      	str	r0, [sp, #24]
 80091e8:	9107      	str	r1, [sp, #28]
 80091ea:	464a      	mov	r2, r9
 80091ec:	9b04      	ldr	r3, [sp, #16]
 80091ee:	3b01      	subs	r3, #1
 80091f0:	4313      	orrs	r3, r2
 80091f2:	d100      	bne.n	80091f6 <__ieee754_pow+0x55e>
 80091f4:	e188      	b.n	8009508 <__ieee754_pow+0x870>
 80091f6:	2300      	movs	r3, #0
 80091f8:	4c21      	ldr	r4, [pc, #132]	; (8009280 <__ieee754_pow+0x5e8>)
 80091fa:	9302      	str	r3, [sp, #8]
 80091fc:	9403      	str	r4, [sp, #12]
 80091fe:	2200      	movs	r2, #0
 8009200:	003b      	movs	r3, r7
 8009202:	0030      	movs	r0, r6
 8009204:	0039      	movs	r1, r7
 8009206:	0014      	movs	r4, r2
 8009208:	f7f8 ffc6 	bl	8002198 <__aeabi_dsub>
 800920c:	9a00      	ldr	r2, [sp, #0]
 800920e:	9b01      	ldr	r3, [sp, #4]
 8009210:	f7f8 fd50 	bl	8001cb4 <__aeabi_dmul>
 8009214:	0032      	movs	r2, r6
 8009216:	003b      	movs	r3, r7
 8009218:	9004      	str	r0, [sp, #16]
 800921a:	9105      	str	r1, [sp, #20]
 800921c:	9806      	ldr	r0, [sp, #24]
 800921e:	9907      	ldr	r1, [sp, #28]
 8009220:	f7f8 fd48 	bl	8001cb4 <__aeabi_dmul>
 8009224:	0002      	movs	r2, r0
 8009226:	000b      	movs	r3, r1
 8009228:	9804      	ldr	r0, [sp, #16]
 800922a:	9905      	ldr	r1, [sp, #20]
 800922c:	f7f7 ff24 	bl	8001078 <__aeabi_dadd>
 8009230:	003d      	movs	r5, r7
 8009232:	0006      	movs	r6, r0
 8009234:	000f      	movs	r7, r1
 8009236:	9800      	ldr	r0, [sp, #0]
 8009238:	9901      	ldr	r1, [sp, #4]
 800923a:	0022      	movs	r2, r4
 800923c:	002b      	movs	r3, r5
 800923e:	9604      	str	r6, [sp, #16]
 8009240:	9705      	str	r7, [sp, #20]
 8009242:	f7f8 fd37 	bl	8001cb4 <__aeabi_dmul>
 8009246:	0002      	movs	r2, r0
 8009248:	000b      	movs	r3, r1
 800924a:	0030      	movs	r0, r6
 800924c:	0039      	movs	r1, r7
 800924e:	9200      	str	r2, [sp, #0]
 8009250:	9301      	str	r3, [sp, #4]
 8009252:	f7f7 ff11 	bl	8001078 <__aeabi_dadd>
 8009256:	4b1f      	ldr	r3, [pc, #124]	; (80092d4 <__ieee754_pow+0x63c>)
 8009258:	0004      	movs	r4, r0
 800925a:	000d      	movs	r5, r1
 800925c:	468b      	mov	fp, r1
 800925e:	0002      	movs	r2, r0
 8009260:	4299      	cmp	r1, r3
 8009262:	dc00      	bgt.n	8009266 <__ieee754_pow+0x5ce>
 8009264:	e155      	b.n	8009512 <__ieee754_pow+0x87a>
 8009266:	4b1c      	ldr	r3, [pc, #112]	; (80092d8 <__ieee754_pow+0x640>)
 8009268:	18cb      	adds	r3, r1, r3
 800926a:	4303      	orrs	r3, r0
 800926c:	d000      	beq.n	8009270 <__ieee754_pow+0x5d8>
 800926e:	e1fb      	b.n	8009668 <__ieee754_pow+0x9d0>
 8009270:	e034      	b.n	80092dc <__ieee754_pow+0x644>
 8009272:	46c0      	nop			; (mov r8, r8)
 8009274:	000fffff 	.word	0x000fffff
 8009278:	43400000 	.word	0x43400000
 800927c:	fffffc01 	.word	0xfffffc01
 8009280:	3ff00000 	.word	0x3ff00000
 8009284:	0003988e 	.word	0x0003988e
 8009288:	000bb679 	.word	0x000bb679
 800928c:	fff00000 	.word	0xfff00000
 8009290:	4a454eef 	.word	0x4a454eef
 8009294:	3fca7e28 	.word	0x3fca7e28
 8009298:	93c9db65 	.word	0x93c9db65
 800929c:	3fcd864a 	.word	0x3fcd864a
 80092a0:	a91d4101 	.word	0xa91d4101
 80092a4:	3fd17460 	.word	0x3fd17460
 80092a8:	518f264d 	.word	0x518f264d
 80092ac:	3fd55555 	.word	0x3fd55555
 80092b0:	db6fabff 	.word	0xdb6fabff
 80092b4:	3fdb6db6 	.word	0x3fdb6db6
 80092b8:	33333303 	.word	0x33333303
 80092bc:	3fe33333 	.word	0x3fe33333
 80092c0:	40080000 	.word	0x40080000
 80092c4:	3feec709 	.word	0x3feec709
 80092c8:	dc3a03fd 	.word	0xdc3a03fd
 80092cc:	145b01f5 	.word	0x145b01f5
 80092d0:	be3e2fe0 	.word	0xbe3e2fe0
 80092d4:	408fffff 	.word	0x408fffff
 80092d8:	bf700000 	.word	0xbf700000
 80092dc:	9804      	ldr	r0, [sp, #16]
 80092de:	9905      	ldr	r1, [sp, #20]
 80092e0:	4ae8      	ldr	r2, [pc, #928]	; (8009684 <__ieee754_pow+0x9ec>)
 80092e2:	4be9      	ldr	r3, [pc, #932]	; (8009688 <__ieee754_pow+0x9f0>)
 80092e4:	f7f7 fec8 	bl	8001078 <__aeabi_dadd>
 80092e8:	9a00      	ldr	r2, [sp, #0]
 80092ea:	9b01      	ldr	r3, [sp, #4]
 80092ec:	0006      	movs	r6, r0
 80092ee:	000f      	movs	r7, r1
 80092f0:	0020      	movs	r0, r4
 80092f2:	0029      	movs	r1, r5
 80092f4:	f7f8 ff50 	bl	8002198 <__aeabi_dsub>
 80092f8:	0002      	movs	r2, r0
 80092fa:	000b      	movs	r3, r1
 80092fc:	0030      	movs	r0, r6
 80092fe:	0039      	movs	r1, r7
 8009300:	f7f9 fbb0 	bl	8002a64 <__aeabi_dcmpgt>
 8009304:	46aa      	mov	sl, r5
 8009306:	2800      	cmp	r0, #0
 8009308:	d000      	beq.n	800930c <__ieee754_pow+0x674>
 800930a:	e1ad      	b.n	8009668 <__ieee754_pow+0x9d0>
 800930c:	2480      	movs	r4, #128	; 0x80
 800930e:	4adf      	ldr	r2, [pc, #892]	; (800968c <__ieee754_pow+0x9f4>)
 8009310:	4653      	mov	r3, sl
 8009312:	4694      	mov	ip, r2
 8009314:	0364      	lsls	r4, r4, #13
 8009316:	0022      	movs	r2, r4
 8009318:	151b      	asrs	r3, r3, #20
 800931a:	4463      	add	r3, ip
 800931c:	411a      	asrs	r2, r3
 800931e:	0013      	movs	r3, r2
 8009320:	49db      	ldr	r1, [pc, #876]	; (8009690 <__ieee754_pow+0x9f8>)
 8009322:	445b      	add	r3, fp
 8009324:	005a      	lsls	r2, r3, #1
 8009326:	001e      	movs	r6, r3
 8009328:	031b      	lsls	r3, r3, #12
 800932a:	468c      	mov	ip, r1
 800932c:	0b1b      	lsrs	r3, r3, #12
 800932e:	4323      	orrs	r3, r4
 8009330:	2414      	movs	r4, #20
 8009332:	0d52      	lsrs	r2, r2, #21
 8009334:	4dd7      	ldr	r5, [pc, #860]	; (8009694 <__ieee754_pow+0x9fc>)
 8009336:	4462      	add	r2, ip
 8009338:	4115      	asrs	r5, r2
 800933a:	1aa2      	subs	r2, r4, r2
 800933c:	4113      	asrs	r3, r2
 800933e:	4699      	mov	r9, r3
 8009340:	465b      	mov	r3, fp
 8009342:	43ae      	bics	r6, r5
 8009344:	2000      	movs	r0, #0
 8009346:	0031      	movs	r1, r6
 8009348:	2b00      	cmp	r3, #0
 800934a:	da02      	bge.n	8009352 <__ieee754_pow+0x6ba>
 800934c:	464b      	mov	r3, r9
 800934e:	425b      	negs	r3, r3
 8009350:	4699      	mov	r9, r3
 8009352:	0002      	movs	r2, r0
 8009354:	000b      	movs	r3, r1
 8009356:	9800      	ldr	r0, [sp, #0]
 8009358:	9901      	ldr	r1, [sp, #4]
 800935a:	f7f8 ff1d 	bl	8002198 <__aeabi_dsub>
 800935e:	464b      	mov	r3, r9
 8009360:	051b      	lsls	r3, r3, #20
 8009362:	9000      	str	r0, [sp, #0]
 8009364:	9101      	str	r1, [sp, #4]
 8009366:	0002      	movs	r2, r0
 8009368:	4698      	mov	r8, r3
 800936a:	000b      	movs	r3, r1
 800936c:	9804      	ldr	r0, [sp, #16]
 800936e:	9905      	ldr	r1, [sp, #20]
 8009370:	f7f7 fe82 	bl	8001078 <__aeabi_dadd>
 8009374:	000d      	movs	r5, r1
 8009376:	2400      	movs	r4, #0
 8009378:	2200      	movs	r2, #0
 800937a:	4bc7      	ldr	r3, [pc, #796]	; (8009698 <__ieee754_pow+0xa00>)
 800937c:	0020      	movs	r0, r4
 800937e:	0029      	movs	r1, r5
 8009380:	f7f8 fc98 	bl	8001cb4 <__aeabi_dmul>
 8009384:	9a00      	ldr	r2, [sp, #0]
 8009386:	9b01      	ldr	r3, [sp, #4]
 8009388:	9006      	str	r0, [sp, #24]
 800938a:	9107      	str	r1, [sp, #28]
 800938c:	0020      	movs	r0, r4
 800938e:	0029      	movs	r1, r5
 8009390:	f7f8 ff02 	bl	8002198 <__aeabi_dsub>
 8009394:	0002      	movs	r2, r0
 8009396:	000b      	movs	r3, r1
 8009398:	9804      	ldr	r0, [sp, #16]
 800939a:	9905      	ldr	r1, [sp, #20]
 800939c:	f7f8 fefc 	bl	8002198 <__aeabi_dsub>
 80093a0:	4abe      	ldr	r2, [pc, #760]	; (800969c <__ieee754_pow+0xa04>)
 80093a2:	4bbf      	ldr	r3, [pc, #764]	; (80096a0 <__ieee754_pow+0xa08>)
 80093a4:	f7f8 fc86 	bl	8001cb4 <__aeabi_dmul>
 80093a8:	4abe      	ldr	r2, [pc, #760]	; (80096a4 <__ieee754_pow+0xa0c>)
 80093aa:	0006      	movs	r6, r0
 80093ac:	000f      	movs	r7, r1
 80093ae:	4bbe      	ldr	r3, [pc, #760]	; (80096a8 <__ieee754_pow+0xa10>)
 80093b0:	0020      	movs	r0, r4
 80093b2:	0029      	movs	r1, r5
 80093b4:	f7f8 fc7e 	bl	8001cb4 <__aeabi_dmul>
 80093b8:	0002      	movs	r2, r0
 80093ba:	000b      	movs	r3, r1
 80093bc:	0030      	movs	r0, r6
 80093be:	0039      	movs	r1, r7
 80093c0:	f7f7 fe5a 	bl	8001078 <__aeabi_dadd>
 80093c4:	0004      	movs	r4, r0
 80093c6:	000d      	movs	r5, r1
 80093c8:	0002      	movs	r2, r0
 80093ca:	000b      	movs	r3, r1
 80093cc:	9806      	ldr	r0, [sp, #24]
 80093ce:	9907      	ldr	r1, [sp, #28]
 80093d0:	f7f7 fe52 	bl	8001078 <__aeabi_dadd>
 80093d4:	9a06      	ldr	r2, [sp, #24]
 80093d6:	9b07      	ldr	r3, [sp, #28]
 80093d8:	0006      	movs	r6, r0
 80093da:	000f      	movs	r7, r1
 80093dc:	f7f8 fedc 	bl	8002198 <__aeabi_dsub>
 80093e0:	0002      	movs	r2, r0
 80093e2:	000b      	movs	r3, r1
 80093e4:	0020      	movs	r0, r4
 80093e6:	0029      	movs	r1, r5
 80093e8:	f7f8 fed6 	bl	8002198 <__aeabi_dsub>
 80093ec:	0032      	movs	r2, r6
 80093ee:	9000      	str	r0, [sp, #0]
 80093f0:	9101      	str	r1, [sp, #4]
 80093f2:	003b      	movs	r3, r7
 80093f4:	0030      	movs	r0, r6
 80093f6:	0039      	movs	r1, r7
 80093f8:	f7f8 fc5c 	bl	8001cb4 <__aeabi_dmul>
 80093fc:	0004      	movs	r4, r0
 80093fe:	000d      	movs	r5, r1
 8009400:	4aaa      	ldr	r2, [pc, #680]	; (80096ac <__ieee754_pow+0xa14>)
 8009402:	4bab      	ldr	r3, [pc, #684]	; (80096b0 <__ieee754_pow+0xa18>)
 8009404:	f7f8 fc56 	bl	8001cb4 <__aeabi_dmul>
 8009408:	4aaa      	ldr	r2, [pc, #680]	; (80096b4 <__ieee754_pow+0xa1c>)
 800940a:	4bab      	ldr	r3, [pc, #684]	; (80096b8 <__ieee754_pow+0xa20>)
 800940c:	f7f8 fec4 	bl	8002198 <__aeabi_dsub>
 8009410:	0022      	movs	r2, r4
 8009412:	002b      	movs	r3, r5
 8009414:	f7f8 fc4e 	bl	8001cb4 <__aeabi_dmul>
 8009418:	4aa8      	ldr	r2, [pc, #672]	; (80096bc <__ieee754_pow+0xa24>)
 800941a:	4ba9      	ldr	r3, [pc, #676]	; (80096c0 <__ieee754_pow+0xa28>)
 800941c:	f7f7 fe2c 	bl	8001078 <__aeabi_dadd>
 8009420:	0022      	movs	r2, r4
 8009422:	002b      	movs	r3, r5
 8009424:	f7f8 fc46 	bl	8001cb4 <__aeabi_dmul>
 8009428:	4aa6      	ldr	r2, [pc, #664]	; (80096c4 <__ieee754_pow+0xa2c>)
 800942a:	4ba7      	ldr	r3, [pc, #668]	; (80096c8 <__ieee754_pow+0xa30>)
 800942c:	f7f8 feb4 	bl	8002198 <__aeabi_dsub>
 8009430:	0022      	movs	r2, r4
 8009432:	002b      	movs	r3, r5
 8009434:	f7f8 fc3e 	bl	8001cb4 <__aeabi_dmul>
 8009438:	4aa4      	ldr	r2, [pc, #656]	; (80096cc <__ieee754_pow+0xa34>)
 800943a:	4ba5      	ldr	r3, [pc, #660]	; (80096d0 <__ieee754_pow+0xa38>)
 800943c:	f7f7 fe1c 	bl	8001078 <__aeabi_dadd>
 8009440:	0022      	movs	r2, r4
 8009442:	002b      	movs	r3, r5
 8009444:	f7f8 fc36 	bl	8001cb4 <__aeabi_dmul>
 8009448:	0002      	movs	r2, r0
 800944a:	000b      	movs	r3, r1
 800944c:	0030      	movs	r0, r6
 800944e:	0039      	movs	r1, r7
 8009450:	f7f8 fea2 	bl	8002198 <__aeabi_dsub>
 8009454:	0004      	movs	r4, r0
 8009456:	000d      	movs	r5, r1
 8009458:	0002      	movs	r2, r0
 800945a:	000b      	movs	r3, r1
 800945c:	0030      	movs	r0, r6
 800945e:	0039      	movs	r1, r7
 8009460:	f7f8 fc28 	bl	8001cb4 <__aeabi_dmul>
 8009464:	2380      	movs	r3, #128	; 0x80
 8009466:	9004      	str	r0, [sp, #16]
 8009468:	9105      	str	r1, [sp, #20]
 800946a:	2200      	movs	r2, #0
 800946c:	05db      	lsls	r3, r3, #23
 800946e:	0020      	movs	r0, r4
 8009470:	0029      	movs	r1, r5
 8009472:	f7f8 fe91 	bl	8002198 <__aeabi_dsub>
 8009476:	0002      	movs	r2, r0
 8009478:	000b      	movs	r3, r1
 800947a:	9804      	ldr	r0, [sp, #16]
 800947c:	9905      	ldr	r1, [sp, #20]
 800947e:	f7f8 f917 	bl	80016b0 <__aeabi_ddiv>
 8009482:	9a00      	ldr	r2, [sp, #0]
 8009484:	9b01      	ldr	r3, [sp, #4]
 8009486:	0004      	movs	r4, r0
 8009488:	000d      	movs	r5, r1
 800948a:	0030      	movs	r0, r6
 800948c:	0039      	movs	r1, r7
 800948e:	f7f8 fc11 	bl	8001cb4 <__aeabi_dmul>
 8009492:	9a00      	ldr	r2, [sp, #0]
 8009494:	9b01      	ldr	r3, [sp, #4]
 8009496:	f7f7 fdef 	bl	8001078 <__aeabi_dadd>
 800949a:	0002      	movs	r2, r0
 800949c:	000b      	movs	r3, r1
 800949e:	0020      	movs	r0, r4
 80094a0:	0029      	movs	r1, r5
 80094a2:	f7f8 fe79 	bl	8002198 <__aeabi_dsub>
 80094a6:	0032      	movs	r2, r6
 80094a8:	003b      	movs	r3, r7
 80094aa:	f7f8 fe75 	bl	8002198 <__aeabi_dsub>
 80094ae:	0002      	movs	r2, r0
 80094b0:	000b      	movs	r3, r1
 80094b2:	2000      	movs	r0, #0
 80094b4:	4987      	ldr	r1, [pc, #540]	; (80096d4 <__ieee754_pow+0xa3c>)
 80094b6:	f7f8 fe6f 	bl	8002198 <__aeabi_dsub>
 80094ba:	4643      	mov	r3, r8
 80094bc:	185b      	adds	r3, r3, r1
 80094be:	151a      	asrs	r2, r3, #20
 80094c0:	2a00      	cmp	r2, #0
 80094c2:	dc00      	bgt.n	80094c6 <__ieee754_pow+0x82e>
 80094c4:	e13f      	b.n	8009746 <__ieee754_pow+0xaae>
 80094c6:	0019      	movs	r1, r3
 80094c8:	9a02      	ldr	r2, [sp, #8]
 80094ca:	9b03      	ldr	r3, [sp, #12]
 80094cc:	f7f8 fbf2 	bl	8001cb4 <__aeabi_dmul>
 80094d0:	9000      	str	r0, [sp, #0]
 80094d2:	9101      	str	r1, [sp, #4]
 80094d4:	f7ff fc02 	bl	8008cdc <__ieee754_pow+0x44>
 80094d8:	4653      	mov	r3, sl
 80094da:	2b00      	cmp	r3, #0
 80094dc:	da01      	bge.n	80094e2 <__ieee754_pow+0x84a>
 80094de:	f7ff fc25 	bl	8008d2c <__ieee754_pow+0x94>
 80094e2:	4658      	mov	r0, fp
 80094e4:	4651      	mov	r1, sl
 80094e6:	f000 f93d 	bl	8009764 <__ieee754_sqrt>
 80094ea:	9000      	str	r0, [sp, #0]
 80094ec:	9101      	str	r1, [sp, #4]
 80094ee:	f7ff fbf5 	bl	8008cdc <__ieee754_pow+0x44>
 80094f2:	4643      	mov	r3, r8
 80094f4:	2b00      	cmp	r3, #0
 80094f6:	db00      	blt.n	80094fa <__ieee754_pow+0x862>
 80094f8:	e467      	b.n	8008dca <__ieee754_pow+0x132>
 80094fa:	2380      	movs	r3, #128	; 0x80
 80094fc:	061b      	lsls	r3, r3, #24
 80094fe:	18fb      	adds	r3, r7, r3
 8009500:	9600      	str	r6, [sp, #0]
 8009502:	9301      	str	r3, [sp, #4]
 8009504:	f7ff fbea 	bl	8008cdc <__ieee754_pow+0x44>
 8009508:	2300      	movs	r3, #0
 800950a:	4c73      	ldr	r4, [pc, #460]	; (80096d8 <__ieee754_pow+0xa40>)
 800950c:	9302      	str	r3, [sp, #8]
 800950e:	9403      	str	r4, [sp, #12]
 8009510:	e675      	b.n	80091fe <__ieee754_pow+0x566>
 8009512:	004b      	lsls	r3, r1, #1
 8009514:	085b      	lsrs	r3, r3, #1
 8009516:	469a      	mov	sl, r3
 8009518:	4b70      	ldr	r3, [pc, #448]	; (80096dc <__ieee754_pow+0xa44>)
 800951a:	459a      	cmp	sl, r3
 800951c:	dc00      	bgt.n	8009520 <__ieee754_pow+0x888>
 800951e:	e0f9      	b.n	8009714 <__ieee754_pow+0xa7c>
 8009520:	4b6f      	ldr	r3, [pc, #444]	; (80096e0 <__ieee754_pow+0xa48>)
 8009522:	445b      	add	r3, fp
 8009524:	431a      	orrs	r2, r3
 8009526:	d10a      	bne.n	800953e <__ieee754_pow+0x8a6>
 8009528:	9a00      	ldr	r2, [sp, #0]
 800952a:	9b01      	ldr	r3, [sp, #4]
 800952c:	f7f8 fe34 	bl	8002198 <__aeabi_dsub>
 8009530:	9a04      	ldr	r2, [sp, #16]
 8009532:	9b05      	ldr	r3, [sp, #20]
 8009534:	f7f9 faa0 	bl	8002a78 <__aeabi_dcmpge>
 8009538:	2800      	cmp	r0, #0
 800953a:	d100      	bne.n	800953e <__ieee754_pow+0x8a6>
 800953c:	e6e6      	b.n	800930c <__ieee754_pow+0x674>
 800953e:	9802      	ldr	r0, [sp, #8]
 8009540:	9903      	ldr	r1, [sp, #12]
 8009542:	4a68      	ldr	r2, [pc, #416]	; (80096e4 <__ieee754_pow+0xa4c>)
 8009544:	4b68      	ldr	r3, [pc, #416]	; (80096e8 <__ieee754_pow+0xa50>)
 8009546:	f7f8 fbb5 	bl	8001cb4 <__aeabi_dmul>
 800954a:	4a66      	ldr	r2, [pc, #408]	; (80096e4 <__ieee754_pow+0xa4c>)
 800954c:	4b66      	ldr	r3, [pc, #408]	; (80096e8 <__ieee754_pow+0xa50>)
 800954e:	f7f8 fbb1 	bl	8001cb4 <__aeabi_dmul>
 8009552:	9000      	str	r0, [sp, #0]
 8009554:	9101      	str	r1, [sp, #4]
 8009556:	f7ff fbc1 	bl	8008cdc <__ieee754_pow+0x44>
 800955a:	2a00      	cmp	r2, #0
 800955c:	d001      	beq.n	8009562 <__ieee754_pow+0x8ca>
 800955e:	f7ff fbe5 	bl	8008d2c <__ieee754_pow+0x94>
 8009562:	3214      	adds	r2, #20
 8009564:	1ad3      	subs	r3, r2, r3
 8009566:	0022      	movs	r2, r4
 8009568:	411a      	asrs	r2, r3
 800956a:	0011      	movs	r1, r2
 800956c:	4099      	lsls	r1, r3
 800956e:	42a1      	cmp	r1, r4
 8009570:	d001      	beq.n	8009576 <__ieee754_pow+0x8de>
 8009572:	f7ff fbcd 	bl	8008d10 <__ieee754_pow+0x78>
 8009576:	2301      	movs	r3, #1
 8009578:	401a      	ands	r2, r3
 800957a:	18db      	adds	r3, r3, r3
 800957c:	1a9b      	subs	r3, r3, r2
 800957e:	9304      	str	r3, [sp, #16]
 8009580:	f7ff fbc6 	bl	8008d10 <__ieee754_pow+0x78>
 8009584:	4643      	mov	r3, r8
 8009586:	2b00      	cmp	r3, #0
 8009588:	db01      	blt.n	800958e <__ieee754_pow+0x8f6>
 800958a:	f7ff fc1e 	bl	8008dca <__ieee754_pow+0x132>
 800958e:	f7ff fbf8 	bl	8008d82 <__ieee754_pow+0xea>
 8009592:	4b56      	ldr	r3, [pc, #344]	; (80096ec <__ieee754_pow+0xa54>)
 8009594:	429d      	cmp	r5, r3
 8009596:	ddf5      	ble.n	8009584 <__ieee754_pow+0x8ec>
 8009598:	4b4e      	ldr	r3, [pc, #312]	; (80096d4 <__ieee754_pow+0xa3c>)
 800959a:	429d      	cmp	r5, r3
 800959c:	dd01      	ble.n	80095a2 <__ieee754_pow+0x90a>
 800959e:	f7ff fbed 	bl	8008d7c <__ieee754_pow+0xe4>
 80095a2:	9800      	ldr	r0, [sp, #0]
 80095a4:	9901      	ldr	r1, [sp, #4]
 80095a6:	2200      	movs	r2, #0
 80095a8:	4b4a      	ldr	r3, [pc, #296]	; (80096d4 <__ieee754_pow+0xa3c>)
 80095aa:	f7f8 fdf5 	bl	8002198 <__aeabi_dsub>
 80095ae:	22c0      	movs	r2, #192	; 0xc0
 80095b0:	4b4f      	ldr	r3, [pc, #316]	; (80096f0 <__ieee754_pow+0xa58>)
 80095b2:	05d2      	lsls	r2, r2, #23
 80095b4:	0004      	movs	r4, r0
 80095b6:	000d      	movs	r5, r1
 80095b8:	f7f8 fb7c 	bl	8001cb4 <__aeabi_dmul>
 80095bc:	4a4d      	ldr	r2, [pc, #308]	; (80096f4 <__ieee754_pow+0xa5c>)
 80095be:	9002      	str	r0, [sp, #8]
 80095c0:	9103      	str	r1, [sp, #12]
 80095c2:	4b4d      	ldr	r3, [pc, #308]	; (80096f8 <__ieee754_pow+0xa60>)
 80095c4:	0020      	movs	r0, r4
 80095c6:	0029      	movs	r1, r5
 80095c8:	f7f8 fb74 	bl	8001cb4 <__aeabi_dmul>
 80095cc:	2200      	movs	r2, #0
 80095ce:	9000      	str	r0, [sp, #0]
 80095d0:	9101      	str	r1, [sp, #4]
 80095d2:	4b4a      	ldr	r3, [pc, #296]	; (80096fc <__ieee754_pow+0xa64>)
 80095d4:	0020      	movs	r0, r4
 80095d6:	0029      	movs	r1, r5
 80095d8:	f7f8 fb6c 	bl	8001cb4 <__aeabi_dmul>
 80095dc:	0002      	movs	r2, r0
 80095de:	000b      	movs	r3, r1
 80095e0:	4847      	ldr	r0, [pc, #284]	; (8009700 <__ieee754_pow+0xa68>)
 80095e2:	4948      	ldr	r1, [pc, #288]	; (8009704 <__ieee754_pow+0xa6c>)
 80095e4:	f7f8 fdd8 	bl	8002198 <__aeabi_dsub>
 80095e8:	0022      	movs	r2, r4
 80095ea:	002b      	movs	r3, r5
 80095ec:	f7f8 fb62 	bl	8001cb4 <__aeabi_dmul>
 80095f0:	0002      	movs	r2, r0
 80095f2:	000b      	movs	r3, r1
 80095f4:	2000      	movs	r0, #0
 80095f6:	4944      	ldr	r1, [pc, #272]	; (8009708 <__ieee754_pow+0xa70>)
 80095f8:	f7f8 fdce 	bl	8002198 <__aeabi_dsub>
 80095fc:	0022      	movs	r2, r4
 80095fe:	9006      	str	r0, [sp, #24]
 8009600:	9107      	str	r1, [sp, #28]
 8009602:	002b      	movs	r3, r5
 8009604:	0020      	movs	r0, r4
 8009606:	0029      	movs	r1, r5
 8009608:	f7f8 fb54 	bl	8001cb4 <__aeabi_dmul>
 800960c:	0002      	movs	r2, r0
 800960e:	000b      	movs	r3, r1
 8009610:	9806      	ldr	r0, [sp, #24]
 8009612:	9907      	ldr	r1, [sp, #28]
 8009614:	f7f8 fb4e 	bl	8001cb4 <__aeabi_dmul>
 8009618:	4a1a      	ldr	r2, [pc, #104]	; (8009684 <__ieee754_pow+0x9ec>)
 800961a:	4b35      	ldr	r3, [pc, #212]	; (80096f0 <__ieee754_pow+0xa58>)
 800961c:	f7f8 fb4a 	bl	8001cb4 <__aeabi_dmul>
 8009620:	0002      	movs	r2, r0
 8009622:	000b      	movs	r3, r1
 8009624:	9800      	ldr	r0, [sp, #0]
 8009626:	9901      	ldr	r1, [sp, #4]
 8009628:	f7f8 fdb6 	bl	8002198 <__aeabi_dsub>
 800962c:	0002      	movs	r2, r0
 800962e:	000b      	movs	r3, r1
 8009630:	0004      	movs	r4, r0
 8009632:	000d      	movs	r5, r1
 8009634:	9802      	ldr	r0, [sp, #8]
 8009636:	9903      	ldr	r1, [sp, #12]
 8009638:	f7f7 fd1e 	bl	8001078 <__aeabi_dadd>
 800963c:	9a02      	ldr	r2, [sp, #8]
 800963e:	9b03      	ldr	r3, [sp, #12]
 8009640:	2000      	movs	r0, #0
 8009642:	9000      	str	r0, [sp, #0]
 8009644:	9101      	str	r1, [sp, #4]
 8009646:	f7f8 fda7 	bl	8002198 <__aeabi_dsub>
 800964a:	0002      	movs	r2, r0
 800964c:	000b      	movs	r3, r1
 800964e:	0020      	movs	r0, r4
 8009650:	0029      	movs	r1, r5
 8009652:	f7f8 fda1 	bl	8002198 <__aeabi_dsub>
 8009656:	9006      	str	r0, [sp, #24]
 8009658:	9107      	str	r1, [sp, #28]
 800965a:	e5c6      	b.n	80091ea <__ieee754_pow+0x552>
 800965c:	9800      	ldr	r0, [sp, #0]
 800965e:	9901      	ldr	r1, [sp, #4]
 8009660:	0002      	movs	r2, r0
 8009662:	000b      	movs	r3, r1
 8009664:	f7ff fc11 	bl	8008e8a <__ieee754_pow+0x1f2>
 8009668:	4a28      	ldr	r2, [pc, #160]	; (800970c <__ieee754_pow+0xa74>)
 800966a:	4b29      	ldr	r3, [pc, #164]	; (8009710 <__ieee754_pow+0xa78>)
 800966c:	9802      	ldr	r0, [sp, #8]
 800966e:	9903      	ldr	r1, [sp, #12]
 8009670:	f7f8 fb20 	bl	8001cb4 <__aeabi_dmul>
 8009674:	4a25      	ldr	r2, [pc, #148]	; (800970c <__ieee754_pow+0xa74>)
 8009676:	4b26      	ldr	r3, [pc, #152]	; (8009710 <__ieee754_pow+0xa78>)
 8009678:	f7f8 fb1c 	bl	8001cb4 <__aeabi_dmul>
 800967c:	9000      	str	r0, [sp, #0]
 800967e:	9101      	str	r1, [sp, #4]
 8009680:	f7ff fb2c 	bl	8008cdc <__ieee754_pow+0x44>
 8009684:	652b82fe 	.word	0x652b82fe
 8009688:	3c971547 	.word	0x3c971547
 800968c:	fffffc02 	.word	0xfffffc02
 8009690:	fffffc01 	.word	0xfffffc01
 8009694:	000fffff 	.word	0x000fffff
 8009698:	3fe62e43 	.word	0x3fe62e43
 800969c:	fefa39ef 	.word	0xfefa39ef
 80096a0:	3fe62e42 	.word	0x3fe62e42
 80096a4:	0ca86c39 	.word	0x0ca86c39
 80096a8:	be205c61 	.word	0xbe205c61
 80096ac:	72bea4d0 	.word	0x72bea4d0
 80096b0:	3e663769 	.word	0x3e663769
 80096b4:	c5d26bf1 	.word	0xc5d26bf1
 80096b8:	3ebbbd41 	.word	0x3ebbbd41
 80096bc:	af25de2c 	.word	0xaf25de2c
 80096c0:	3f11566a 	.word	0x3f11566a
 80096c4:	16bebd93 	.word	0x16bebd93
 80096c8:	3f66c16c 	.word	0x3f66c16c
 80096cc:	5555553e 	.word	0x5555553e
 80096d0:	3fc55555 	.word	0x3fc55555
 80096d4:	3ff00000 	.word	0x3ff00000
 80096d8:	bff00000 	.word	0xbff00000
 80096dc:	4090cbff 	.word	0x4090cbff
 80096e0:	3f6f3400 	.word	0x3f6f3400
 80096e4:	c2f8f359 	.word	0xc2f8f359
 80096e8:	01a56e1f 	.word	0x01a56e1f
 80096ec:	3feffffe 	.word	0x3feffffe
 80096f0:	3ff71547 	.word	0x3ff71547
 80096f4:	f85ddf44 	.word	0xf85ddf44
 80096f8:	3e54ae0b 	.word	0x3e54ae0b
 80096fc:	3fd00000 	.word	0x3fd00000
 8009700:	55555555 	.word	0x55555555
 8009704:	3fd55555 	.word	0x3fd55555
 8009708:	3fe00000 	.word	0x3fe00000
 800970c:	8800759c 	.word	0x8800759c
 8009710:	7e37e43c 	.word	0x7e37e43c
 8009714:	2200      	movs	r2, #0
 8009716:	4b0e      	ldr	r3, [pc, #56]	; (8009750 <__ieee754_pow+0xab8>)
 8009718:	4690      	mov	r8, r2
 800971a:	4691      	mov	r9, r2
 800971c:	459a      	cmp	sl, r3
 800971e:	dc00      	bgt.n	8009722 <__ieee754_pow+0xa8a>
 8009720:	e629      	b.n	8009376 <__ieee754_pow+0x6de>
 8009722:	e5f3      	b.n	800930c <__ieee754_pow+0x674>
 8009724:	2280      	movs	r2, #128	; 0x80
 8009726:	4b0b      	ldr	r3, [pc, #44]	; (8009754 <__ieee754_pow+0xabc>)
 8009728:	05d2      	lsls	r2, r2, #23
 800972a:	920e      	str	r2, [sp, #56]	; 0x38
 800972c:	930f      	str	r3, [sp, #60]	; 0x3c
 800972e:	4a0a      	ldr	r2, [pc, #40]	; (8009758 <__ieee754_pow+0xac0>)
 8009730:	4b0a      	ldr	r3, [pc, #40]	; (800975c <__ieee754_pow+0xac4>)
 8009732:	2580      	movs	r5, #128	; 0x80
 8009734:	9210      	str	r2, [sp, #64]	; 0x40
 8009736:	9311      	str	r3, [sp, #68]	; 0x44
 8009738:	2200      	movs	r2, #0
 800973a:	4b09      	ldr	r3, [pc, #36]	; (8009760 <__ieee754_pow+0xac8>)
 800973c:	02ed      	lsls	r5, r5, #11
 800973e:	9206      	str	r2, [sp, #24]
 8009740:	9307      	str	r3, [sp, #28]
 8009742:	f7ff fbff 	bl	8008f44 <__ieee754_pow+0x2ac>
 8009746:	464a      	mov	r2, r9
 8009748:	f000 f98a 	bl	8009a60 <scalbn>
 800974c:	e6bc      	b.n	80094c8 <__ieee754_pow+0x830>
 800974e:	46c0      	nop			; (mov r8, r8)
 8009750:	3fe00000 	.word	0x3fe00000
 8009754:	3fe2b803 	.word	0x3fe2b803
 8009758:	43cfd006 	.word	0x43cfd006
 800975c:	3e4cfdeb 	.word	0x3e4cfdeb
 8009760:	3ff80000 	.word	0x3ff80000

08009764 <__ieee754_sqrt>:
 8009764:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8009766:	4647      	mov	r7, r8
 8009768:	46ce      	mov	lr, r9
 800976a:	4b67      	ldr	r3, [pc, #412]	; (8009908 <__ieee754_sqrt+0x1a4>)
 800976c:	b580      	push	{r7, lr}
 800976e:	000a      	movs	r2, r1
 8009770:	000f      	movs	r7, r1
 8009772:	0019      	movs	r1, r3
 8009774:	0005      	movs	r5, r0
 8009776:	4039      	ands	r1, r7
 8009778:	4299      	cmp	r1, r3
 800977a:	d100      	bne.n	800977e <__ieee754_sqrt+0x1a>
 800977c:	e09b      	b.n	80098b6 <__ieee754_sqrt+0x152>
 800977e:	0004      	movs	r4, r0
 8009780:	0001      	movs	r1, r0
 8009782:	2f00      	cmp	r7, #0
 8009784:	dd69      	ble.n	800985a <__ieee754_sqrt+0xf6>
 8009786:	153f      	asrs	r7, r7, #20
 8009788:	d100      	bne.n	800978c <__ieee754_sqrt+0x28>
 800978a:	e0b4      	b.n	80098f6 <__ieee754_sqrt+0x192>
 800978c:	4b5f      	ldr	r3, [pc, #380]	; (800990c <__ieee754_sqrt+0x1a8>)
 800978e:	0312      	lsls	r2, r2, #12
 8009790:	469c      	mov	ip, r3
 8009792:	2380      	movs	r3, #128	; 0x80
 8009794:	0b12      	lsrs	r2, r2, #12
 8009796:	035b      	lsls	r3, r3, #13
 8009798:	4313      	orrs	r3, r2
 800979a:	005b      	lsls	r3, r3, #1
 800979c:	0fca      	lsrs	r2, r1, #31
 800979e:	4467      	add	r7, ip
 80097a0:	189b      	adds	r3, r3, r2
 80097a2:	004a      	lsls	r2, r1, #1
 80097a4:	07f8      	lsls	r0, r7, #31
 80097a6:	d503      	bpl.n	80097b0 <__ieee754_sqrt+0x4c>
 80097a8:	0fd2      	lsrs	r2, r2, #31
 80097aa:	005b      	lsls	r3, r3, #1
 80097ac:	189b      	adds	r3, r3, r2
 80097ae:	008a      	lsls	r2, r1, #2
 80097b0:	1079      	asrs	r1, r7, #1
 80097b2:	468c      	mov	ip, r1
 80097b4:	2100      	movs	r1, #0
 80097b6:	2080      	movs	r0, #128	; 0x80
 80097b8:	2416      	movs	r4, #22
 80097ba:	4689      	mov	r9, r1
 80097bc:	0380      	lsls	r0, r0, #14
 80097be:	180d      	adds	r5, r1, r0
 80097c0:	429d      	cmp	r5, r3
 80097c2:	dc02      	bgt.n	80097ca <__ieee754_sqrt+0x66>
 80097c4:	1829      	adds	r1, r5, r0
 80097c6:	1b5b      	subs	r3, r3, r5
 80097c8:	4481      	add	r9, r0
 80097ca:	0fd5      	lsrs	r5, r2, #31
 80097cc:	005b      	lsls	r3, r3, #1
 80097ce:	3c01      	subs	r4, #1
 80097d0:	195b      	adds	r3, r3, r5
 80097d2:	0052      	lsls	r2, r2, #1
 80097d4:	0840      	lsrs	r0, r0, #1
 80097d6:	2c00      	cmp	r4, #0
 80097d8:	d1f1      	bne.n	80097be <__ieee754_sqrt+0x5a>
 80097da:	2000      	movs	r0, #0
 80097dc:	4680      	mov	r8, r0
 80097de:	2080      	movs	r0, #128	; 0x80
 80097e0:	2520      	movs	r5, #32
 80097e2:	2700      	movs	r7, #0
 80097e4:	0600      	lsls	r0, r0, #24
 80097e6:	e009      	b.n	80097fc <__ieee754_sqrt+0x98>
 80097e8:	428b      	cmp	r3, r1
 80097ea:	d05c      	beq.n	80098a6 <__ieee754_sqrt+0x142>
 80097ec:	0fd4      	lsrs	r4, r2, #31
 80097ee:	005b      	lsls	r3, r3, #1
 80097f0:	3d01      	subs	r5, #1
 80097f2:	18e3      	adds	r3, r4, r3
 80097f4:	0052      	lsls	r2, r2, #1
 80097f6:	0840      	lsrs	r0, r0, #1
 80097f8:	2d00      	cmp	r5, #0
 80097fa:	d016      	beq.n	800982a <__ieee754_sqrt+0xc6>
 80097fc:	19c4      	adds	r4, r0, r7
 80097fe:	428b      	cmp	r3, r1
 8009800:	ddf2      	ble.n	80097e8 <__ieee754_sqrt+0x84>
 8009802:	1827      	adds	r7, r4, r0
 8009804:	000e      	movs	r6, r1
 8009806:	2c00      	cmp	r4, #0
 8009808:	db49      	blt.n	800989e <__ieee754_sqrt+0x13a>
 800980a:	1a5b      	subs	r3, r3, r1
 800980c:	42a2      	cmp	r2, r4
 800980e:	4189      	sbcs	r1, r1
 8009810:	4249      	negs	r1, r1
 8009812:	1a5b      	subs	r3, r3, r1
 8009814:	1b12      	subs	r2, r2, r4
 8009816:	0fd4      	lsrs	r4, r2, #31
 8009818:	005b      	lsls	r3, r3, #1
 800981a:	3d01      	subs	r5, #1
 800981c:	4480      	add	r8, r0
 800981e:	0031      	movs	r1, r6
 8009820:	18e3      	adds	r3, r4, r3
 8009822:	0052      	lsls	r2, r2, #1
 8009824:	0840      	lsrs	r0, r0, #1
 8009826:	2d00      	cmp	r5, #0
 8009828:	d1e8      	bne.n	80097fc <__ieee754_sqrt+0x98>
 800982a:	4313      	orrs	r3, r2
 800982c:	d14e      	bne.n	80098cc <__ieee754_sqrt+0x168>
 800982e:	4643      	mov	r3, r8
 8009830:	085b      	lsrs	r3, r3, #1
 8009832:	4937      	ldr	r1, [pc, #220]	; (8009910 <__ieee754_sqrt+0x1ac>)
 8009834:	464a      	mov	r2, r9
 8009836:	4688      	mov	r8, r1
 8009838:	4649      	mov	r1, r9
 800983a:	1052      	asrs	r2, r2, #1
 800983c:	4442      	add	r2, r8
 800983e:	07c9      	lsls	r1, r1, #31
 8009840:	d502      	bpl.n	8009848 <__ieee754_sqrt+0xe4>
 8009842:	2180      	movs	r1, #128	; 0x80
 8009844:	0609      	lsls	r1, r1, #24
 8009846:	430b      	orrs	r3, r1
 8009848:	4661      	mov	r1, ip
 800984a:	050f      	lsls	r7, r1, #20
 800984c:	18bd      	adds	r5, r7, r2
 800984e:	0018      	movs	r0, r3
 8009850:	0029      	movs	r1, r5
 8009852:	bc0c      	pop	{r2, r3}
 8009854:	4690      	mov	r8, r2
 8009856:	4699      	mov	r9, r3
 8009858:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800985a:	007b      	lsls	r3, r7, #1
 800985c:	085b      	lsrs	r3, r3, #1
 800985e:	4303      	orrs	r3, r0
 8009860:	0039      	movs	r1, r7
 8009862:	2b00      	cmp	r3, #0
 8009864:	d0f5      	beq.n	8009852 <__ieee754_sqrt+0xee>
 8009866:	2f00      	cmp	r7, #0
 8009868:	d13c      	bne.n	80098e4 <__ieee754_sqrt+0x180>
 800986a:	0ae3      	lsrs	r3, r4, #11
 800986c:	3a15      	subs	r2, #21
 800986e:	0564      	lsls	r4, r4, #21
 8009870:	2b00      	cmp	r3, #0
 8009872:	d0fa      	beq.n	800986a <__ieee754_sqrt+0x106>
 8009874:	2080      	movs	r0, #128	; 0x80
 8009876:	0340      	lsls	r0, r0, #13
 8009878:	4203      	tst	r3, r0
 800987a:	d13f      	bne.n	80098fc <__ieee754_sqrt+0x198>
 800987c:	2700      	movs	r7, #0
 800987e:	e000      	b.n	8009882 <__ieee754_sqrt+0x11e>
 8009880:	000f      	movs	r7, r1
 8009882:	005b      	lsls	r3, r3, #1
 8009884:	1c79      	adds	r1, r7, #1
 8009886:	4203      	tst	r3, r0
 8009888:	d0fa      	beq.n	8009880 <__ieee754_sqrt+0x11c>
 800988a:	0025      	movs	r5, r4
 800988c:	2020      	movs	r0, #32
 800988e:	408d      	lsls	r5, r1
 8009890:	1a40      	subs	r0, r0, r1
 8009892:	0029      	movs	r1, r5
 8009894:	1bd7      	subs	r7, r2, r7
 8009896:	0022      	movs	r2, r4
 8009898:	40c2      	lsrs	r2, r0
 800989a:	431a      	orrs	r2, r3
 800989c:	e776      	b.n	800978c <__ieee754_sqrt+0x28>
 800989e:	43fe      	mvns	r6, r7
 80098a0:	0ff6      	lsrs	r6, r6, #31
 80098a2:	198e      	adds	r6, r1, r6
 80098a4:	e7b1      	b.n	800980a <__ieee754_sqrt+0xa6>
 80098a6:	4294      	cmp	r4, r2
 80098a8:	d8a0      	bhi.n	80097ec <__ieee754_sqrt+0x88>
 80098aa:	1827      	adds	r7, r4, r0
 80098ac:	2c00      	cmp	r4, #0
 80098ae:	dbf6      	blt.n	800989e <__ieee754_sqrt+0x13a>
 80098b0:	001e      	movs	r6, r3
 80098b2:	2300      	movs	r3, #0
 80098b4:	e7ae      	b.n	8009814 <__ieee754_sqrt+0xb0>
 80098b6:	0002      	movs	r2, r0
 80098b8:	003b      	movs	r3, r7
 80098ba:	0028      	movs	r0, r5
 80098bc:	0039      	movs	r1, r7
 80098be:	f7f8 f9f9 	bl	8001cb4 <__aeabi_dmul>
 80098c2:	002a      	movs	r2, r5
 80098c4:	003b      	movs	r3, r7
 80098c6:	f7f7 fbd7 	bl	8001078 <__aeabi_dadd>
 80098ca:	e7c2      	b.n	8009852 <__ieee754_sqrt+0xee>
 80098cc:	4643      	mov	r3, r8
 80098ce:	3301      	adds	r3, #1
 80098d0:	d003      	beq.n	80098da <__ieee754_sqrt+0x176>
 80098d2:	4643      	mov	r3, r8
 80098d4:	3301      	adds	r3, #1
 80098d6:	085b      	lsrs	r3, r3, #1
 80098d8:	e7ab      	b.n	8009832 <__ieee754_sqrt+0xce>
 80098da:	2301      	movs	r3, #1
 80098dc:	4698      	mov	r8, r3
 80098de:	2300      	movs	r3, #0
 80098e0:	44c1      	add	r9, r8
 80098e2:	e7a6      	b.n	8009832 <__ieee754_sqrt+0xce>
 80098e4:	003b      	movs	r3, r7
 80098e6:	0002      	movs	r2, r0
 80098e8:	f7f8 fc56 	bl	8002198 <__aeabi_dsub>
 80098ec:	0002      	movs	r2, r0
 80098ee:	000b      	movs	r3, r1
 80098f0:	f7f7 fede 	bl	80016b0 <__aeabi_ddiv>
 80098f4:	e7ad      	b.n	8009852 <__ieee754_sqrt+0xee>
 80098f6:	0013      	movs	r3, r2
 80098f8:	2200      	movs	r2, #0
 80098fa:	e7bb      	b.n	8009874 <__ieee754_sqrt+0x110>
 80098fc:	2701      	movs	r7, #1
 80098fe:	0021      	movs	r1, r4
 8009900:	2020      	movs	r0, #32
 8009902:	427f      	negs	r7, r7
 8009904:	e7c6      	b.n	8009894 <__ieee754_sqrt+0x130>
 8009906:	46c0      	nop			; (mov r8, r8)
 8009908:	7ff00000 	.word	0x7ff00000
 800990c:	fffffc01 	.word	0xfffffc01
 8009910:	3fe00000 	.word	0x3fe00000

08009914 <fabs>:
 8009914:	0049      	lsls	r1, r1, #1
 8009916:	084b      	lsrs	r3, r1, #1
 8009918:	0019      	movs	r1, r3
 800991a:	4770      	bx	lr

0800991c <finite>:
 800991c:	4b03      	ldr	r3, [pc, #12]	; (800992c <finite+0x10>)
 800991e:	0048      	lsls	r0, r1, #1
 8009920:	469c      	mov	ip, r3
 8009922:	0840      	lsrs	r0, r0, #1
 8009924:	4460      	add	r0, ip
 8009926:	0fc0      	lsrs	r0, r0, #31
 8009928:	4770      	bx	lr
 800992a:	46c0      	nop			; (mov r8, r8)
 800992c:	80100000 	.word	0x80100000

08009930 <matherr>:
 8009930:	2000      	movs	r0, #0
 8009932:	4770      	bx	lr

08009934 <nan>:
 8009934:	2000      	movs	r0, #0
 8009936:	4901      	ldr	r1, [pc, #4]	; (800993c <nan+0x8>)
 8009938:	4770      	bx	lr
 800993a:	46c0      	nop			; (mov r8, r8)
 800993c:	7ff80000 	.word	0x7ff80000

08009940 <rint>:
 8009940:	b5f0      	push	{r4, r5, r6, r7, lr}
 8009942:	46c6      	mov	lr, r8
 8009944:	b500      	push	{lr}
 8009946:	0fcb      	lsrs	r3, r1, #31
 8009948:	4698      	mov	r8, r3
 800994a:	4a40      	ldr	r2, [pc, #256]	; (8009a4c <rint+0x10c>)
 800994c:	004b      	lsls	r3, r1, #1
 800994e:	0d5b      	lsrs	r3, r3, #21
 8009950:	189a      	adds	r2, r3, r2
 8009952:	b082      	sub	sp, #8
 8009954:	000d      	movs	r5, r1
 8009956:	0004      	movs	r4, r0
 8009958:	2a13      	cmp	r2, #19
 800995a:	dc2f      	bgt.n	80099bc <rint+0x7c>
 800995c:	2a00      	cmp	r2, #0
 800995e:	db49      	blt.n	80099f4 <rint+0xb4>
 8009960:	4f3b      	ldr	r7, [pc, #236]	; (8009a50 <rint+0x110>)
 8009962:	4117      	asrs	r7, r2
 8009964:	003e      	movs	r6, r7
 8009966:	400e      	ands	r6, r1
 8009968:	4306      	orrs	r6, r0
 800996a:	d023      	beq.n	80099b4 <rint+0x74>
 800996c:	087f      	lsrs	r7, r7, #1
 800996e:	0039      	movs	r1, r7
 8009970:	4029      	ands	r1, r5
 8009972:	430c      	orrs	r4, r1
 8009974:	d00a      	beq.n	800998c <rint+0x4c>
 8009976:	4937      	ldr	r1, [pc, #220]	; (8009a54 <rint+0x114>)
 8009978:	43bd      	bics	r5, r7
 800997a:	468c      	mov	ip, r1
 800997c:	4463      	add	r3, ip
 800997e:	425c      	negs	r4, r3
 8009980:	415c      	adcs	r4, r3
 8009982:	2380      	movs	r3, #128	; 0x80
 8009984:	02db      	lsls	r3, r3, #11
 8009986:	4113      	asrs	r3, r2
 8009988:	07e4      	lsls	r4, r4, #31
 800998a:	431d      	orrs	r5, r3
 800998c:	4641      	mov	r1, r8
 800998e:	00ce      	lsls	r6, r1, #3
 8009990:	4931      	ldr	r1, [pc, #196]	; (8009a58 <rint+0x118>)
 8009992:	002b      	movs	r3, r5
 8009994:	198e      	adds	r6, r1, r6
 8009996:	0022      	movs	r2, r4
 8009998:	6834      	ldr	r4, [r6, #0]
 800999a:	6875      	ldr	r5, [r6, #4]
 800999c:	0020      	movs	r0, r4
 800999e:	0029      	movs	r1, r5
 80099a0:	f7f7 fb6a 	bl	8001078 <__aeabi_dadd>
 80099a4:	9000      	str	r0, [sp, #0]
 80099a6:	9101      	str	r1, [sp, #4]
 80099a8:	9800      	ldr	r0, [sp, #0]
 80099aa:	9901      	ldr	r1, [sp, #4]
 80099ac:	0022      	movs	r2, r4
 80099ae:	002b      	movs	r3, r5
 80099b0:	f7f8 fbf2 	bl	8002198 <__aeabi_dsub>
 80099b4:	b002      	add	sp, #8
 80099b6:	bc04      	pop	{r2}
 80099b8:	4690      	mov	r8, r2
 80099ba:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80099bc:	2a33      	cmp	r2, #51	; 0x33
 80099be:	dd08      	ble.n	80099d2 <rint+0x92>
 80099c0:	2380      	movs	r3, #128	; 0x80
 80099c2:	00db      	lsls	r3, r3, #3
 80099c4:	429a      	cmp	r2, r3
 80099c6:	d1f5      	bne.n	80099b4 <rint+0x74>
 80099c8:	0002      	movs	r2, r0
 80099ca:	000b      	movs	r3, r1
 80099cc:	f7f7 fb54 	bl	8001078 <__aeabi_dadd>
 80099d0:	e7f0      	b.n	80099b4 <rint+0x74>
 80099d2:	4a22      	ldr	r2, [pc, #136]	; (8009a5c <rint+0x11c>)
 80099d4:	4694      	mov	ip, r2
 80099d6:	2201      	movs	r2, #1
 80099d8:	4463      	add	r3, ip
 80099da:	4252      	negs	r2, r2
 80099dc:	40da      	lsrs	r2, r3
 80099de:	4202      	tst	r2, r0
 80099e0:	d0e8      	beq.n	80099b4 <rint+0x74>
 80099e2:	0852      	lsrs	r2, r2, #1
 80099e4:	4202      	tst	r2, r0
 80099e6:	d0d1      	beq.n	800998c <rint+0x4c>
 80099e8:	4394      	bics	r4, r2
 80099ea:	2280      	movs	r2, #128	; 0x80
 80099ec:	05d2      	lsls	r2, r2, #23
 80099ee:	411a      	asrs	r2, r3
 80099f0:	4314      	orrs	r4, r2
 80099f2:	e7cb      	b.n	800998c <rint+0x4c>
 80099f4:	004b      	lsls	r3, r1, #1
 80099f6:	085b      	lsrs	r3, r3, #1
 80099f8:	4303      	orrs	r3, r0
 80099fa:	d0db      	beq.n	80099b4 <rint+0x74>
 80099fc:	030b      	lsls	r3, r1, #12
 80099fe:	0b1b      	lsrs	r3, r3, #12
 8009a00:	431c      	orrs	r4, r3
 8009a02:	4263      	negs	r3, r4
 8009a04:	4323      	orrs	r3, r4
 8009a06:	2480      	movs	r4, #128	; 0x80
 8009a08:	0c4d      	lsrs	r5, r1, #17
 8009a0a:	0324      	lsls	r4, r4, #12
 8009a0c:	0b1b      	lsrs	r3, r3, #12
 8009a0e:	4023      	ands	r3, r4
 8009a10:	046d      	lsls	r5, r5, #17
 8009a12:	432b      	orrs	r3, r5
 8009a14:	0019      	movs	r1, r3
 8009a16:	4643      	mov	r3, r8
 8009a18:	00da      	lsls	r2, r3, #3
 8009a1a:	4b0f      	ldr	r3, [pc, #60]	; (8009a58 <rint+0x118>)
 8009a1c:	189b      	adds	r3, r3, r2
 8009a1e:	681c      	ldr	r4, [r3, #0]
 8009a20:	685d      	ldr	r5, [r3, #4]
 8009a22:	0002      	movs	r2, r0
 8009a24:	000b      	movs	r3, r1
 8009a26:	0020      	movs	r0, r4
 8009a28:	0029      	movs	r1, r5
 8009a2a:	f7f7 fb25 	bl	8001078 <__aeabi_dadd>
 8009a2e:	9000      	str	r0, [sp, #0]
 8009a30:	9101      	str	r1, [sp, #4]
 8009a32:	9800      	ldr	r0, [sp, #0]
 8009a34:	9901      	ldr	r1, [sp, #4]
 8009a36:	0022      	movs	r2, r4
 8009a38:	002b      	movs	r3, r5
 8009a3a:	f7f8 fbad 	bl	8002198 <__aeabi_dsub>
 8009a3e:	4642      	mov	r2, r8
 8009a40:	004b      	lsls	r3, r1, #1
 8009a42:	085b      	lsrs	r3, r3, #1
 8009a44:	07d6      	lsls	r6, r2, #31
 8009a46:	4333      	orrs	r3, r6
 8009a48:	0019      	movs	r1, r3
 8009a4a:	e7b3      	b.n	80099b4 <rint+0x74>
 8009a4c:	fffffc01 	.word	0xfffffc01
 8009a50:	000fffff 	.word	0x000fffff
 8009a54:	fffffbee 	.word	0xfffffbee
 8009a58:	08009d28 	.word	0x08009d28
 8009a5c:	fffffbed 	.word	0xfffffbed

08009a60 <scalbn>:
 8009a60:	004b      	lsls	r3, r1, #1
 8009a62:	b570      	push	{r4, r5, r6, lr}
 8009a64:	0d5b      	lsrs	r3, r3, #21
 8009a66:	0014      	movs	r4, r2
 8009a68:	000a      	movs	r2, r1
 8009a6a:	2b00      	cmp	r3, #0
 8009a6c:	d11a      	bne.n	8009aa4 <scalbn+0x44>
 8009a6e:	004b      	lsls	r3, r1, #1
 8009a70:	085b      	lsrs	r3, r3, #1
 8009a72:	4303      	orrs	r3, r0
 8009a74:	d015      	beq.n	8009aa2 <scalbn+0x42>
 8009a76:	4b23      	ldr	r3, [pc, #140]	; (8009b04 <scalbn+0xa4>)
 8009a78:	2200      	movs	r2, #0
 8009a7a:	f7f8 f91b 	bl	8001cb4 <__aeabi_dmul>
 8009a7e:	4b22      	ldr	r3, [pc, #136]	; (8009b08 <scalbn+0xa8>)
 8009a80:	429c      	cmp	r4, r3
 8009a82:	db2d      	blt.n	8009ae0 <scalbn+0x80>
 8009a84:	000a      	movs	r2, r1
 8009a86:	004b      	lsls	r3, r1, #1
 8009a88:	0d5b      	lsrs	r3, r3, #21
 8009a8a:	3b36      	subs	r3, #54	; 0x36
 8009a8c:	4d1f      	ldr	r5, [pc, #124]	; (8009b0c <scalbn+0xac>)
 8009a8e:	18e3      	adds	r3, r4, r3
 8009a90:	42ab      	cmp	r3, r5
 8009a92:	dc2a      	bgt.n	8009aea <scalbn+0x8a>
 8009a94:	2b00      	cmp	r3, #0
 8009a96:	dd0d      	ble.n	8009ab4 <scalbn+0x54>
 8009a98:	4c1d      	ldr	r4, [pc, #116]	; (8009b10 <scalbn+0xb0>)
 8009a9a:	051b      	lsls	r3, r3, #20
 8009a9c:	4022      	ands	r2, r4
 8009a9e:	431a      	orrs	r2, r3
 8009aa0:	0011      	movs	r1, r2
 8009aa2:	bd70      	pop	{r4, r5, r6, pc}
 8009aa4:	4d1b      	ldr	r5, [pc, #108]	; (8009b14 <scalbn+0xb4>)
 8009aa6:	42ab      	cmp	r3, r5
 8009aa8:	d1f0      	bne.n	8009a8c <scalbn+0x2c>
 8009aaa:	0002      	movs	r2, r0
 8009aac:	000b      	movs	r3, r1
 8009aae:	f7f7 fae3 	bl	8001078 <__aeabi_dadd>
 8009ab2:	e7f6      	b.n	8009aa2 <scalbn+0x42>
 8009ab4:	001d      	movs	r5, r3
 8009ab6:	3535      	adds	r5, #53	; 0x35
 8009ab8:	da19      	bge.n	8009aee <scalbn+0x8e>
 8009aba:	4b17      	ldr	r3, [pc, #92]	; (8009b18 <scalbn+0xb8>)
 8009abc:	0002      	movs	r2, r0
 8009abe:	429c      	cmp	r4, r3
 8009ac0:	dd09      	ble.n	8009ad6 <scalbn+0x76>
 8009ac2:	000b      	movs	r3, r1
 8009ac4:	4815      	ldr	r0, [pc, #84]	; (8009b1c <scalbn+0xbc>)
 8009ac6:	4916      	ldr	r1, [pc, #88]	; (8009b20 <scalbn+0xc0>)
 8009ac8:	f000 f832 	bl	8009b30 <copysign>
 8009acc:	4a13      	ldr	r2, [pc, #76]	; (8009b1c <scalbn+0xbc>)
 8009ace:	4b14      	ldr	r3, [pc, #80]	; (8009b20 <scalbn+0xc0>)
 8009ad0:	f7f8 f8f0 	bl	8001cb4 <__aeabi_dmul>
 8009ad4:	e7e5      	b.n	8009aa2 <scalbn+0x42>
 8009ad6:	000b      	movs	r3, r1
 8009ad8:	4812      	ldr	r0, [pc, #72]	; (8009b24 <scalbn+0xc4>)
 8009ada:	4913      	ldr	r1, [pc, #76]	; (8009b28 <scalbn+0xc8>)
 8009adc:	f000 f828 	bl	8009b30 <copysign>
 8009ae0:	4a10      	ldr	r2, [pc, #64]	; (8009b24 <scalbn+0xc4>)
 8009ae2:	4b11      	ldr	r3, [pc, #68]	; (8009b28 <scalbn+0xc8>)
 8009ae4:	f7f8 f8e6 	bl	8001cb4 <__aeabi_dmul>
 8009ae8:	e7db      	b.n	8009aa2 <scalbn+0x42>
 8009aea:	0002      	movs	r2, r0
 8009aec:	e7e9      	b.n	8009ac2 <scalbn+0x62>
 8009aee:	4c08      	ldr	r4, [pc, #32]	; (8009b10 <scalbn+0xb0>)
 8009af0:	3336      	adds	r3, #54	; 0x36
 8009af2:	4022      	ands	r2, r4
 8009af4:	051b      	lsls	r3, r3, #20
 8009af6:	4313      	orrs	r3, r2
 8009af8:	0019      	movs	r1, r3
 8009afa:	2200      	movs	r2, #0
 8009afc:	4b0b      	ldr	r3, [pc, #44]	; (8009b2c <scalbn+0xcc>)
 8009afe:	f7f8 f8d9 	bl	8001cb4 <__aeabi_dmul>
 8009b02:	e7ce      	b.n	8009aa2 <scalbn+0x42>
 8009b04:	43500000 	.word	0x43500000
 8009b08:	ffff3cb0 	.word	0xffff3cb0
 8009b0c:	000007fe 	.word	0x000007fe
 8009b10:	800fffff 	.word	0x800fffff
 8009b14:	000007ff 	.word	0x000007ff
 8009b18:	0000c350 	.word	0x0000c350
 8009b1c:	8800759c 	.word	0x8800759c
 8009b20:	7e37e43c 	.word	0x7e37e43c
 8009b24:	c2f8f359 	.word	0xc2f8f359
 8009b28:	01a56e1f 	.word	0x01a56e1f
 8009b2c:	3c900000 	.word	0x3c900000

08009b30 <copysign>:
 8009b30:	b530      	push	{r4, r5, lr}
 8009b32:	004a      	lsls	r2, r1, #1
 8009b34:	0fdb      	lsrs	r3, r3, #31
 8009b36:	07db      	lsls	r3, r3, #31
 8009b38:	0852      	lsrs	r2, r2, #1
 8009b3a:	431a      	orrs	r2, r3
 8009b3c:	0011      	movs	r1, r2
 8009b3e:	bd30      	pop	{r4, r5, pc}

08009b40 <__errno>:
 8009b40:	4b01      	ldr	r3, [pc, #4]	; (8009b48 <__errno+0x8>)
 8009b42:	6818      	ldr	r0, [r3, #0]
 8009b44:	4770      	bx	lr
 8009b46:	46c0      	nop			; (mov r8, r8)
 8009b48:	2000000c 	.word	0x2000000c

08009b4c <_init>:
 8009b4c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8009b4e:	46c0      	nop			; (mov r8, r8)
 8009b50:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8009b52:	bc08      	pop	{r3}
 8009b54:	469e      	mov	lr, r3
 8009b56:	4770      	bx	lr

08009b58 <_fini>:
 8009b58:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8009b5a:	46c0      	nop			; (mov r8, r8)
 8009b5c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8009b5e:	bc08      	pop	{r3}
 8009b60:	469e      	mov	lr, r3
 8009b62:	4770      	bx	lr
