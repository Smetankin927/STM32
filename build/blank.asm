
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       0000010c  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             000005f8  0800010c  0800010c  0001010c  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000004  08000704  08000704  00010704  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000708  08000708  00010708  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000710  08000710  00010710  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             0000042c  20000000  08000714  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000040  2000042c  08000b40  0002042c  2**2  ALLOC
  7 ._user_heap_stack 00000604  2000046c  08000b40  0002046c  2**0  ALLOC
  8 .ARM.attributes   00000029  00000000  00000000  0002042c  2**0  CONTENTS, READONLY
  9 .debug_info       00000b93  00000000  00000000  00020455  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     0000034b  00000000  00000000  00020fe8  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        00000714  00000000  00000000  00021333  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    00000108  00000000  00000000  00021a47  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     000000d8  00000000  00000000  00021b4f  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       000004a1  00000000  00000000  00021c27  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        000004d6  00000000  00000000  000220c8  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          0000007f  00000000  00000000  0002259e  2**0  CONTENTS, READONLY
 17 .debug_frame      00000538  00000000  00000000  00022620  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

0800010c <__do_global_dtors_aux>:
 800010c:	b510      	push	{r4, lr}
 800010e:	4c05      	ldr	r4, [pc, #20]	; (8000124 <__do_global_dtors_aux+0x18>)
 8000110:	7823      	ldrb	r3, [r4, #0]
 8000112:	b933      	cbnz	r3, 8000122 <__do_global_dtors_aux+0x16>
 8000114:	4b04      	ldr	r3, [pc, #16]	; (8000128 <__do_global_dtors_aux+0x1c>)
 8000116:	b113      	cbz	r3, 800011e <__do_global_dtors_aux+0x12>
 8000118:	4804      	ldr	r0, [pc, #16]	; (800012c <__do_global_dtors_aux+0x20>)
 800011a:	f3af 8000 	nop.w
 800011e:	2301      	movs	r3, #1
 8000120:	7023      	strb	r3, [r4, #0]
 8000122:	bd10      	pop	{r4, pc}
 8000124:	2000042c 	.word	0x2000042c
 8000128:	00000000 	.word	0x00000000
 800012c:	080006ec 	.word	0x080006ec

08000130 <frame_dummy>:
 8000130:	b508      	push	{r3, lr}
 8000132:	4b03      	ldr	r3, [pc, #12]	; (8000140 <frame_dummy+0x10>)
 8000134:	b11b      	cbz	r3, 800013e <frame_dummy+0xe>
 8000136:	4903      	ldr	r1, [pc, #12]	; (8000144 <frame_dummy+0x14>)
 8000138:	4803      	ldr	r0, [pc, #12]	; (8000148 <frame_dummy+0x18>)
 800013a:	f3af 8000 	nop.w
 800013e:	bd08      	pop	{r3, pc}
 8000140:	00000000 	.word	0x00000000
 8000144:	20000430 	.word	0x20000430
 8000148:	080006ec 	.word	0x080006ec

0800014c <Reset_Handler>:
 800014c:	2100      	movs	r1, #0
 800014e:	e003      	b.n	8000158 <LoopCopyDataInit>

08000150 <CopyDataInit>:
 8000150:	4b0b      	ldr	r3, [pc, #44]	; (8000180 <LoopFillZerobss+0x14>)
 8000152:	585b      	ldr	r3, [r3, r1]
 8000154:	5043      	str	r3, [r0, r1]
 8000156:	3104      	adds	r1, #4

08000158 <LoopCopyDataInit>:
 8000158:	480a      	ldr	r0, [pc, #40]	; (8000184 <LoopFillZerobss+0x18>)
 800015a:	4b0b      	ldr	r3, [pc, #44]	; (8000188 <LoopFillZerobss+0x1c>)
 800015c:	1842      	adds	r2, r0, r1
 800015e:	429a      	cmp	r2, r3
 8000160:	d3f6      	bcc.n	8000150 <CopyDataInit>
 8000162:	4a0a      	ldr	r2, [pc, #40]	; (800018c <LoopFillZerobss+0x20>)
 8000164:	e002      	b.n	800016c <LoopFillZerobss>

08000166 <FillZerobss>:
 8000166:	2300      	movs	r3, #0
 8000168:	f842 3b04 	str.w	r3, [r2], #4

0800016c <LoopFillZerobss>:
 800016c:	4b08      	ldr	r3, [pc, #32]	; (8000190 <LoopFillZerobss+0x24>)
 800016e:	429a      	cmp	r2, r3
 8000170:	d3f9      	bcc.n	8000166 <FillZerobss>
 8000172:	f000 f9bf 	bl	80004f4 <SystemInit>
 8000176:	f000 fa07 	bl	8000588 <__libc_init_array>
 800017a:	f000 f999 	bl	80004b0 <main>
 800017e:	4770      	bx	lr
 8000180:	08000714 	.word	0x08000714
 8000184:	20000000 	.word	0x20000000
 8000188:	2000042c 	.word	0x2000042c
 800018c:	2000042c 	.word	0x2000042c
 8000190:	2000046c 	.word	0x2000046c

08000194 <ADC1_2_IRQHandler>:
 8000194:	e7fe      	b.n	8000194 <ADC1_2_IRQHandler>
	...

08000198 <LL_RCC_HSE_Enable>:
 8000198:	b480      	push	{r7}
 800019a:	af00      	add	r7, sp, #0
 800019c:	4b04      	ldr	r3, [pc, #16]	; (80001b0 <LL_RCC_HSE_Enable+0x18>)
 800019e:	681b      	ldr	r3, [r3, #0]
 80001a0:	4a03      	ldr	r2, [pc, #12]	; (80001b0 <LL_RCC_HSE_Enable+0x18>)
 80001a2:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80001a6:	6013      	str	r3, [r2, #0]
 80001a8:	bf00      	nop
 80001aa:	46bd      	mov	sp, r7
 80001ac:	bc80      	pop	{r7}
 80001ae:	4770      	bx	lr
 80001b0:	40021000 	.word	0x40021000

080001b4 <LL_RCC_HSE_IsReady>:
 80001b4:	b480      	push	{r7}
 80001b6:	af00      	add	r7, sp, #0
 80001b8:	4b06      	ldr	r3, [pc, #24]	; (80001d4 <LL_RCC_HSE_IsReady+0x20>)
 80001ba:	681b      	ldr	r3, [r3, #0]
 80001bc:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80001c0:	f5b3 3f00 	cmp.w	r3, #131072	; 0x20000
 80001c4:	bf0c      	ite	eq
 80001c6:	2301      	moveq	r3, #1
 80001c8:	2300      	movne	r3, #0
 80001ca:	b2db      	uxtb	r3, r3
 80001cc:	4618      	mov	r0, r3
 80001ce:	46bd      	mov	sp, r7
 80001d0:	bc80      	pop	{r7}
 80001d2:	4770      	bx	lr
 80001d4:	40021000 	.word	0x40021000

080001d8 <LL_RCC_SetSysClkSource>:
 80001d8:	b480      	push	{r7}
 80001da:	b083      	sub	sp, #12
 80001dc:	af00      	add	r7, sp, #0
 80001de:	6078      	str	r0, [r7, #4]
 80001e0:	4b06      	ldr	r3, [pc, #24]	; (80001fc <LL_RCC_SetSysClkSource+0x24>)
 80001e2:	685b      	ldr	r3, [r3, #4]
 80001e4:	f023 0203 	bic.w	r2, r3, #3
 80001e8:	4904      	ldr	r1, [pc, #16]	; (80001fc <LL_RCC_SetSysClkSource+0x24>)
 80001ea:	687b      	ldr	r3, [r7, #4]
 80001ec:	4313      	orrs	r3, r2
 80001ee:	604b      	str	r3, [r1, #4]
 80001f0:	bf00      	nop
 80001f2:	370c      	adds	r7, #12
 80001f4:	46bd      	mov	sp, r7
 80001f6:	bc80      	pop	{r7}
 80001f8:	4770      	bx	lr
 80001fa:	bf00      	nop
 80001fc:	40021000 	.word	0x40021000

08000200 <LL_RCC_GetSysClkSource>:
 8000200:	b480      	push	{r7}
 8000202:	af00      	add	r7, sp, #0
 8000204:	4b03      	ldr	r3, [pc, #12]	; (8000214 <LL_RCC_GetSysClkSource+0x14>)
 8000206:	685b      	ldr	r3, [r3, #4]
 8000208:	f003 030c 	and.w	r3, r3, #12
 800020c:	4618      	mov	r0, r3
 800020e:	46bd      	mov	sp, r7
 8000210:	bc80      	pop	{r7}
 8000212:	4770      	bx	lr
 8000214:	40021000 	.word	0x40021000

08000218 <LL_RCC_SetAHBPrescaler>:
 8000218:	b480      	push	{r7}
 800021a:	b083      	sub	sp, #12
 800021c:	af00      	add	r7, sp, #0
 800021e:	6078      	str	r0, [r7, #4]
 8000220:	4b06      	ldr	r3, [pc, #24]	; (800023c <LL_RCC_SetAHBPrescaler+0x24>)
 8000222:	685b      	ldr	r3, [r3, #4]
 8000224:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
 8000228:	4904      	ldr	r1, [pc, #16]	; (800023c <LL_RCC_SetAHBPrescaler+0x24>)
 800022a:	687b      	ldr	r3, [r7, #4]
 800022c:	4313      	orrs	r3, r2
 800022e:	604b      	str	r3, [r1, #4]
 8000230:	bf00      	nop
 8000232:	370c      	adds	r7, #12
 8000234:	46bd      	mov	sp, r7
 8000236:	bc80      	pop	{r7}
 8000238:	4770      	bx	lr
 800023a:	bf00      	nop
 800023c:	40021000 	.word	0x40021000

08000240 <LL_RCC_SetAPB2Prescaler>:
 8000240:	b480      	push	{r7}
 8000242:	b083      	sub	sp, #12
 8000244:	af00      	add	r7, sp, #0
 8000246:	6078      	str	r0, [r7, #4]
 8000248:	4b06      	ldr	r3, [pc, #24]	; (8000264 <LL_RCC_SetAPB2Prescaler+0x24>)
 800024a:	685b      	ldr	r3, [r3, #4]
 800024c:	f423 5260 	bic.w	r2, r3, #14336	; 0x3800
 8000250:	4904      	ldr	r1, [pc, #16]	; (8000264 <LL_RCC_SetAPB2Prescaler+0x24>)
 8000252:	687b      	ldr	r3, [r7, #4]
 8000254:	4313      	orrs	r3, r2
 8000256:	604b      	str	r3, [r1, #4]
 8000258:	bf00      	nop
 800025a:	370c      	adds	r7, #12
 800025c:	46bd      	mov	sp, r7
 800025e:	bc80      	pop	{r7}
 8000260:	4770      	bx	lr
 8000262:	bf00      	nop
 8000264:	40021000 	.word	0x40021000

08000268 <LL_RCC_PLL_Enable>:
 8000268:	b480      	push	{r7}
 800026a:	af00      	add	r7, sp, #0
 800026c:	4b04      	ldr	r3, [pc, #16]	; (8000280 <LL_RCC_PLL_Enable+0x18>)
 800026e:	681b      	ldr	r3, [r3, #0]
 8000270:	4a03      	ldr	r2, [pc, #12]	; (8000280 <LL_RCC_PLL_Enable+0x18>)
 8000272:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8000276:	6013      	str	r3, [r2, #0]
 8000278:	bf00      	nop
 800027a:	46bd      	mov	sp, r7
 800027c:	bc80      	pop	{r7}
 800027e:	4770      	bx	lr
 8000280:	40021000 	.word	0x40021000

08000284 <LL_RCC_PLL_IsReady>:
 8000284:	b480      	push	{r7}
 8000286:	af00      	add	r7, sp, #0
 8000288:	4b06      	ldr	r3, [pc, #24]	; (80002a4 <LL_RCC_PLL_IsReady+0x20>)
 800028a:	681b      	ldr	r3, [r3, #0]
 800028c:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000290:	f1b3 7f00 	cmp.w	r3, #33554432	; 0x2000000
 8000294:	bf0c      	ite	eq
 8000296:	2301      	moveq	r3, #1
 8000298:	2300      	movne	r3, #0
 800029a:	b2db      	uxtb	r3, r3
 800029c:	4618      	mov	r0, r3
 800029e:	46bd      	mov	sp, r7
 80002a0:	bc80      	pop	{r7}
 80002a2:	4770      	bx	lr
 80002a4:	40021000 	.word	0x40021000

080002a8 <LL_RCC_PLL_ConfigDomain_SYS>:
 80002a8:	b480      	push	{r7}
 80002aa:	b083      	sub	sp, #12
 80002ac:	af00      	add	r7, sp, #0
 80002ae:	6078      	str	r0, [r7, #4]
 80002b0:	6039      	str	r1, [r7, #0]
 80002b2:	4b08      	ldr	r3, [pc, #32]	; (80002d4 <LL_RCC_PLL_ConfigDomain_SYS+0x2c>)
 80002b4:	685b      	ldr	r3, [r3, #4]
 80002b6:	f423 127c 	bic.w	r2, r3, #4128768	; 0x3f0000
 80002ba:	687b      	ldr	r3, [r7, #4]
 80002bc:	f403 3140 	and.w	r1, r3, #196608	; 0x30000
 80002c0:	683b      	ldr	r3, [r7, #0]
 80002c2:	430b      	orrs	r3, r1
 80002c4:	4903      	ldr	r1, [pc, #12]	; (80002d4 <LL_RCC_PLL_ConfigDomain_SYS+0x2c>)
 80002c6:	4313      	orrs	r3, r2
 80002c8:	604b      	str	r3, [r1, #4]
 80002ca:	bf00      	nop
 80002cc:	370c      	adds	r7, #12
 80002ce:	46bd      	mov	sp, r7
 80002d0:	bc80      	pop	{r7}
 80002d2:	4770      	bx	lr
 80002d4:	40021000 	.word	0x40021000

080002d8 <LL_FLASH_SetLatency>:
 80002d8:	b480      	push	{r7}
 80002da:	b083      	sub	sp, #12
 80002dc:	af00      	add	r7, sp, #0
 80002de:	6078      	str	r0, [r7, #4]
 80002e0:	4b06      	ldr	r3, [pc, #24]	; (80002fc <LL_FLASH_SetLatency+0x24>)
 80002e2:	681b      	ldr	r3, [r3, #0]
 80002e4:	f023 0207 	bic.w	r2, r3, #7
 80002e8:	4904      	ldr	r1, [pc, #16]	; (80002fc <LL_FLASH_SetLatency+0x24>)
 80002ea:	687b      	ldr	r3, [r7, #4]
 80002ec:	4313      	orrs	r3, r2
 80002ee:	600b      	str	r3, [r1, #0]
 80002f0:	bf00      	nop
 80002f2:	370c      	adds	r7, #12
 80002f4:	46bd      	mov	sp, r7
 80002f6:	bc80      	pop	{r7}
 80002f8:	4770      	bx	lr
 80002fa:	bf00      	nop
 80002fc:	40022000 	.word	0x40022000

08000300 <LL_APB2_GRP1_EnableClock>:
 8000300:	b480      	push	{r7}
 8000302:	b085      	sub	sp, #20
 8000304:	af00      	add	r7, sp, #0
 8000306:	6078      	str	r0, [r7, #4]
 8000308:	4b08      	ldr	r3, [pc, #32]	; (800032c <LL_APB2_GRP1_EnableClock+0x2c>)
 800030a:	699a      	ldr	r2, [r3, #24]
 800030c:	4907      	ldr	r1, [pc, #28]	; (800032c <LL_APB2_GRP1_EnableClock+0x2c>)
 800030e:	687b      	ldr	r3, [r7, #4]
 8000310:	4313      	orrs	r3, r2
 8000312:	618b      	str	r3, [r1, #24]
 8000314:	4b05      	ldr	r3, [pc, #20]	; (800032c <LL_APB2_GRP1_EnableClock+0x2c>)
 8000316:	699a      	ldr	r2, [r3, #24]
 8000318:	687b      	ldr	r3, [r7, #4]
 800031a:	4013      	ands	r3, r2
 800031c:	60fb      	str	r3, [r7, #12]
 800031e:	68fb      	ldr	r3, [r7, #12]
 8000320:	bf00      	nop
 8000322:	3714      	adds	r7, #20
 8000324:	46bd      	mov	sp, r7
 8000326:	bc80      	pop	{r7}
 8000328:	4770      	bx	lr
 800032a:	bf00      	nop
 800032c:	40021000 	.word	0x40021000

08000330 <LL_GPIO_SetPinMode>:
 8000330:	b490      	push	{r4, r7}
 8000332:	b088      	sub	sp, #32
 8000334:	af00      	add	r7, sp, #0
 8000336:	60f8      	str	r0, [r7, #12]
 8000338:	60b9      	str	r1, [r7, #8]
 800033a:	607a      	str	r2, [r7, #4]
 800033c:	68fb      	ldr	r3, [r7, #12]
 800033e:	461a      	mov	r2, r3
 8000340:	68bb      	ldr	r3, [r7, #8]
 8000342:	0e1b      	lsrs	r3, r3, #24
 8000344:	4413      	add	r3, r2
 8000346:	461c      	mov	r4, r3
 8000348:	6822      	ldr	r2, [r4, #0]
 800034a:	68bb      	ldr	r3, [r7, #8]
 800034c:	617b      	str	r3, [r7, #20]
 800034e:	697b      	ldr	r3, [r7, #20]
 8000350:	fa93 f3a3 	rbit	r3, r3
 8000354:	613b      	str	r3, [r7, #16]
 8000356:	693b      	ldr	r3, [r7, #16]
 8000358:	fab3 f383 	clz	r3, r3
 800035c:	009b      	lsls	r3, r3, #2
 800035e:	210f      	movs	r1, #15
 8000360:	fa01 f303 	lsl.w	r3, r1, r3
 8000364:	43db      	mvns	r3, r3
 8000366:	401a      	ands	r2, r3
 8000368:	68bb      	ldr	r3, [r7, #8]
 800036a:	61fb      	str	r3, [r7, #28]
 800036c:	69fb      	ldr	r3, [r7, #28]
 800036e:	fa93 f3a3 	rbit	r3, r3
 8000372:	61bb      	str	r3, [r7, #24]
 8000374:	69bb      	ldr	r3, [r7, #24]
 8000376:	fab3 f383 	clz	r3, r3
 800037a:	009b      	lsls	r3, r3, #2
 800037c:	6879      	ldr	r1, [r7, #4]
 800037e:	fa01 f303 	lsl.w	r3, r1, r3
 8000382:	4313      	orrs	r3, r2
 8000384:	6023      	str	r3, [r4, #0]
 8000386:	bf00      	nop
 8000388:	3720      	adds	r7, #32
 800038a:	46bd      	mov	sp, r7
 800038c:	bc90      	pop	{r4, r7}
 800038e:	4770      	bx	lr

08000390 <LL_GPIO_SetPinOutputType>:
 8000390:	b490      	push	{r4, r7}
 8000392:	b088      	sub	sp, #32
 8000394:	af00      	add	r7, sp, #0
 8000396:	60f8      	str	r0, [r7, #12]
 8000398:	60b9      	str	r1, [r7, #8]
 800039a:	607a      	str	r2, [r7, #4]
 800039c:	68fb      	ldr	r3, [r7, #12]
 800039e:	461a      	mov	r2, r3
 80003a0:	68bb      	ldr	r3, [r7, #8]
 80003a2:	0e1b      	lsrs	r3, r3, #24
 80003a4:	4413      	add	r3, r2
 80003a6:	461c      	mov	r4, r3
 80003a8:	6822      	ldr	r2, [r4, #0]
 80003aa:	68bb      	ldr	r3, [r7, #8]
 80003ac:	617b      	str	r3, [r7, #20]
 80003ae:	697b      	ldr	r3, [r7, #20]
 80003b0:	fa93 f3a3 	rbit	r3, r3
 80003b4:	613b      	str	r3, [r7, #16]
 80003b6:	693b      	ldr	r3, [r7, #16]
 80003b8:	fab3 f383 	clz	r3, r3
 80003bc:	009b      	lsls	r3, r3, #2
 80003be:	2104      	movs	r1, #4
 80003c0:	fa01 f303 	lsl.w	r3, r1, r3
 80003c4:	43db      	mvns	r3, r3
 80003c6:	401a      	ands	r2, r3
 80003c8:	68bb      	ldr	r3, [r7, #8]
 80003ca:	61fb      	str	r3, [r7, #28]
 80003cc:	69fb      	ldr	r3, [r7, #28]
 80003ce:	fa93 f3a3 	rbit	r3, r3
 80003d2:	61bb      	str	r3, [r7, #24]
 80003d4:	69bb      	ldr	r3, [r7, #24]
 80003d6:	fab3 f383 	clz	r3, r3
 80003da:	009b      	lsls	r3, r3, #2
 80003dc:	6879      	ldr	r1, [r7, #4]
 80003de:	fa01 f303 	lsl.w	r3, r1, r3
 80003e2:	4313      	orrs	r3, r2
 80003e4:	6023      	str	r3, [r4, #0]
 80003e6:	bf00      	nop
 80003e8:	3720      	adds	r7, #32
 80003ea:	46bd      	mov	sp, r7
 80003ec:	bc90      	pop	{r4, r7}
 80003ee:	4770      	bx	lr

080003f0 <LL_GPIO_SetOutputPin>:
 80003f0:	b480      	push	{r7}
 80003f2:	b083      	sub	sp, #12
 80003f4:	af00      	add	r7, sp, #0
 80003f6:	6078      	str	r0, [r7, #4]
 80003f8:	6039      	str	r1, [r7, #0]
 80003fa:	683b      	ldr	r3, [r7, #0]
 80003fc:	0a1b      	lsrs	r3, r3, #8
 80003fe:	b29a      	uxth	r2, r3
 8000400:	687b      	ldr	r3, [r7, #4]
 8000402:	611a      	str	r2, [r3, #16]
 8000404:	bf00      	nop
 8000406:	370c      	adds	r7, #12
 8000408:	46bd      	mov	sp, r7
 800040a:	bc80      	pop	{r7}
 800040c:	4770      	bx	lr

0800040e <LL_GPIO_ResetOutputPin>:
 800040e:	b480      	push	{r7}
 8000410:	b083      	sub	sp, #12
 8000412:	af00      	add	r7, sp, #0
 8000414:	6078      	str	r0, [r7, #4]
 8000416:	6039      	str	r1, [r7, #0]
 8000418:	683b      	ldr	r3, [r7, #0]
 800041a:	0a1b      	lsrs	r3, r3, #8
 800041c:	b29a      	uxth	r2, r3
 800041e:	687b      	ldr	r3, [r7, #4]
 8000420:	615a      	str	r2, [r3, #20]
 8000422:	bf00      	nop
 8000424:	370c      	adds	r7, #12
 8000426:	46bd      	mov	sp, r7
 8000428:	bc80      	pop	{r7}
 800042a:	4770      	bx	lr

0800042c <rcc_config>:
 800042c:	b580      	push	{r7, lr}
 800042e:	af00      	add	r7, sp, #0
 8000430:	2001      	movs	r0, #1
 8000432:	f7ff ff51 	bl	80002d8 <LL_FLASH_SetLatency>
 8000436:	f7ff feaf 	bl	8000198 <LL_RCC_HSE_Enable>
 800043a:	bf00      	nop
 800043c:	f7ff feba 	bl	80001b4 <LL_RCC_HSE_IsReady>
 8000440:	4603      	mov	r3, r0
 8000442:	2b01      	cmp	r3, #1
 8000444:	d1fa      	bne.n	800043c <rcc_config+0x10>
 8000446:	f44f 1120 	mov.w	r1, #2621440	; 0x280000
 800044a:	f44f 3040 	mov.w	r0, #196608	; 0x30000
 800044e:	f7ff ff2b 	bl	80002a8 <LL_RCC_PLL_ConfigDomain_SYS>
 8000452:	f7ff ff09 	bl	8000268 <LL_RCC_PLL_Enable>
 8000456:	bf00      	nop
 8000458:	f7ff ff14 	bl	8000284 <LL_RCC_PLL_IsReady>
 800045c:	4603      	mov	r3, r0
 800045e:	2b01      	cmp	r3, #1
 8000460:	d1fa      	bne.n	8000458 <rcc_config+0x2c>
 8000462:	2002      	movs	r0, #2
 8000464:	f7ff feb8 	bl	80001d8 <LL_RCC_SetSysClkSource>
 8000468:	2000      	movs	r0, #0
 800046a:	f7ff fed5 	bl	8000218 <LL_RCC_SetAHBPrescaler>
 800046e:	bf00      	nop
 8000470:	f7ff fec6 	bl	8000200 <LL_RCC_GetSysClkSource>
 8000474:	4603      	mov	r3, r0
 8000476:	2b08      	cmp	r3, #8
 8000478:	d1fa      	bne.n	8000470 <rcc_config+0x44>
 800047a:	2000      	movs	r0, #0
 800047c:	f7ff fee0 	bl	8000240 <LL_RCC_SetAPB2Prescaler>
 8000480:	bf00      	nop
 8000482:	bd80      	pop	{r7, pc}

08000484 <gpio_config>:
 8000484:	b580      	push	{r7, lr}
 8000486:	af00      	add	r7, sp, #0
 8000488:	2010      	movs	r0, #16
 800048a:	f7ff ff39 	bl	8000300 <LL_APB2_GRP1_EnableClock>
 800048e:	2201      	movs	r2, #1
 8000490:	4905      	ldr	r1, [pc, #20]	; (80004a8 <gpio_config+0x24>)
 8000492:	4806      	ldr	r0, [pc, #24]	; (80004ac <gpio_config+0x28>)
 8000494:	f7ff ff4c 	bl	8000330 <LL_GPIO_SetPinMode>
 8000498:	2200      	movs	r2, #0
 800049a:	4903      	ldr	r1, [pc, #12]	; (80004a8 <gpio_config+0x24>)
 800049c:	4803      	ldr	r0, [pc, #12]	; (80004ac <gpio_config+0x28>)
 800049e:	f7ff ff77 	bl	8000390 <LL_GPIO_SetPinOutputType>
 80004a2:	bf00      	nop
 80004a4:	bd80      	pop	{r7, pc}
 80004a6:	bf00      	nop
 80004a8:	04200020 	.word	0x04200020
 80004ac:	40011000 	.word	0x40011000

080004b0 <main>:
 80004b0:	b580      	push	{r7, lr}
 80004b2:	b082      	sub	sp, #8
 80004b4:	af00      	add	r7, sp, #0
 80004b6:	f7ff ffb9 	bl	800042c <rcc_config>
 80004ba:	f7ff ffe3 	bl	8000484 <gpio_config>
 80004be:	490a      	ldr	r1, [pc, #40]	; (80004e8 <main+0x38>)
 80004c0:	480a      	ldr	r0, [pc, #40]	; (80004ec <main+0x3c>)
 80004c2:	f7ff ff95 	bl	80003f0 <LL_GPIO_SetOutputPin>
 80004c6:	2300      	movs	r3, #0
 80004c8:	607b      	str	r3, [r7, #4]
 80004ca:	e003      	b.n	80004d4 <main+0x24>
 80004cc:	bf00      	nop
 80004ce:	687b      	ldr	r3, [r7, #4]
 80004d0:	3301      	adds	r3, #1
 80004d2:	607b      	str	r3, [r7, #4]
 80004d4:	687b      	ldr	r3, [r7, #4]
 80004d6:	4a06      	ldr	r2, [pc, #24]	; (80004f0 <main+0x40>)
 80004d8:	4293      	cmp	r3, r2
 80004da:	ddf7      	ble.n	80004cc <main+0x1c>
 80004dc:	4902      	ldr	r1, [pc, #8]	; (80004e8 <main+0x38>)
 80004de:	4803      	ldr	r0, [pc, #12]	; (80004ec <main+0x3c>)
 80004e0:	f7ff ff95 	bl	800040e <LL_GPIO_ResetOutputPin>
 80004e4:	e7eb      	b.n	80004be <main+0xe>
 80004e6:	bf00      	nop
 80004e8:	04200020 	.word	0x04200020
 80004ec:	40011000 	.word	0x40011000
 80004f0:	0016e35f 	.word	0x0016e35f

080004f4 <SystemInit>:
 80004f4:	b480      	push	{r7}
 80004f6:	af00      	add	r7, sp, #0
 80004f8:	4b15      	ldr	r3, [pc, #84]	; (8000550 <SystemInit+0x5c>)
 80004fa:	681b      	ldr	r3, [r3, #0]
 80004fc:	4a14      	ldr	r2, [pc, #80]	; (8000550 <SystemInit+0x5c>)
 80004fe:	f043 0301 	orr.w	r3, r3, #1
 8000502:	6013      	str	r3, [r2, #0]
 8000504:	4b12      	ldr	r3, [pc, #72]	; (8000550 <SystemInit+0x5c>)
 8000506:	685a      	ldr	r2, [r3, #4]
 8000508:	4911      	ldr	r1, [pc, #68]	; (8000550 <SystemInit+0x5c>)
 800050a:	4b12      	ldr	r3, [pc, #72]	; (8000554 <SystemInit+0x60>)
 800050c:	4013      	ands	r3, r2
 800050e:	604b      	str	r3, [r1, #4]
 8000510:	4b0f      	ldr	r3, [pc, #60]	; (8000550 <SystemInit+0x5c>)
 8000512:	681b      	ldr	r3, [r3, #0]
 8000514:	4a0e      	ldr	r2, [pc, #56]	; (8000550 <SystemInit+0x5c>)
 8000516:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
 800051a:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 800051e:	6013      	str	r3, [r2, #0]
 8000520:	4b0b      	ldr	r3, [pc, #44]	; (8000550 <SystemInit+0x5c>)
 8000522:	681b      	ldr	r3, [r3, #0]
 8000524:	4a0a      	ldr	r2, [pc, #40]	; (8000550 <SystemInit+0x5c>)
 8000526:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 800052a:	6013      	str	r3, [r2, #0]
 800052c:	4b08      	ldr	r3, [pc, #32]	; (8000550 <SystemInit+0x5c>)
 800052e:	685b      	ldr	r3, [r3, #4]
 8000530:	4a07      	ldr	r2, [pc, #28]	; (8000550 <SystemInit+0x5c>)
 8000532:	f423 03fe 	bic.w	r3, r3, #8323072	; 0x7f0000
 8000536:	6053      	str	r3, [r2, #4]
 8000538:	4b05      	ldr	r3, [pc, #20]	; (8000550 <SystemInit+0x5c>)
 800053a:	f44f 021f 	mov.w	r2, #10420224	; 0x9f0000
 800053e:	609a      	str	r2, [r3, #8]
 8000540:	4b05      	ldr	r3, [pc, #20]	; (8000558 <SystemInit+0x64>)
 8000542:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8000546:	609a      	str	r2, [r3, #8]
 8000548:	bf00      	nop
 800054a:	46bd      	mov	sp, r7
 800054c:	bc80      	pop	{r7}
 800054e:	4770      	bx	lr
 8000550:	40021000 	.word	0x40021000
 8000554:	f8ff0000 	.word	0xf8ff0000
 8000558:	e000ed00 	.word	0xe000ed00

0800055c <NMI_Handler>:
 800055c:	b480      	push	{r7}
 800055e:	af00      	add	r7, sp, #0
 8000560:	bf00      	nop
 8000562:	46bd      	mov	sp, r7
 8000564:	bc80      	pop	{r7}
 8000566:	4770      	bx	lr

08000568 <HardFault_Handler>:
 8000568:	b480      	push	{r7}
 800056a:	af00      	add	r7, sp, #0
 800056c:	e7fe      	b.n	800056c <HardFault_Handler+0x4>

0800056e <SVC_Handler>:
 800056e:	b480      	push	{r7}
 8000570:	af00      	add	r7, sp, #0
 8000572:	bf00      	nop
 8000574:	46bd      	mov	sp, r7
 8000576:	bc80      	pop	{r7}
 8000578:	4770      	bx	lr

0800057a <PendSV_Handler>:
 800057a:	b480      	push	{r7}
 800057c:	af00      	add	r7, sp, #0
 800057e:	bf00      	nop
 8000580:	46bd      	mov	sp, r7
 8000582:	bc80      	pop	{r7}
 8000584:	4770      	bx	lr
	...

08000588 <__libc_init_array>:
 8000588:	b570      	push	{r4, r5, r6, lr}
 800058a:	4e0d      	ldr	r6, [pc, #52]	; (80005c0 <__libc_init_array+0x38>)
 800058c:	4d0d      	ldr	r5, [pc, #52]	; (80005c4 <__libc_init_array+0x3c>)
 800058e:	1b76      	subs	r6, r6, r5
 8000590:	10b6      	asrs	r6, r6, #2
 8000592:	d006      	beq.n	80005a2 <__libc_init_array+0x1a>
 8000594:	2400      	movs	r4, #0
 8000596:	3401      	adds	r4, #1
 8000598:	f855 3b04 	ldr.w	r3, [r5], #4
 800059c:	4798      	blx	r3
 800059e:	42a6      	cmp	r6, r4
 80005a0:	d1f9      	bne.n	8000596 <__libc_init_array+0xe>
 80005a2:	4e09      	ldr	r6, [pc, #36]	; (80005c8 <__libc_init_array+0x40>)
 80005a4:	4d09      	ldr	r5, [pc, #36]	; (80005cc <__libc_init_array+0x44>)
 80005a6:	f000 f8a1 	bl	80006ec <_init>
 80005aa:	1b76      	subs	r6, r6, r5
 80005ac:	10b6      	asrs	r6, r6, #2
 80005ae:	d006      	beq.n	80005be <__libc_init_array+0x36>
 80005b0:	2400      	movs	r4, #0
 80005b2:	3401      	adds	r4, #1
 80005b4:	f855 3b04 	ldr.w	r3, [r5], #4
 80005b8:	4798      	blx	r3
 80005ba:	42a6      	cmp	r6, r4
 80005bc:	d1f9      	bne.n	80005b2 <__libc_init_array+0x2a>
 80005be:	bd70      	pop	{r4, r5, r6, pc}
 80005c0:	08000708 	.word	0x08000708
 80005c4:	08000708 	.word	0x08000708
 80005c8:	08000710 	.word	0x08000710
 80005cc:	08000708 	.word	0x08000708

080005d0 <register_fini>:
 80005d0:	4b02      	ldr	r3, [pc, #8]	; (80005dc <register_fini+0xc>)
 80005d2:	b113      	cbz	r3, 80005da <register_fini+0xa>
 80005d4:	4802      	ldr	r0, [pc, #8]	; (80005e0 <register_fini+0x10>)
 80005d6:	f000 b805 	b.w	80005e4 <atexit>
 80005da:	4770      	bx	lr
 80005dc:	00000000 	.word	0x00000000
 80005e0:	080005f1 	.word	0x080005f1

080005e4 <atexit>:
 80005e4:	2300      	movs	r3, #0
 80005e6:	4601      	mov	r1, r0
 80005e8:	461a      	mov	r2, r3
 80005ea:	4618      	mov	r0, r3
 80005ec:	f000 b81e 	b.w	800062c <__register_exitproc>

080005f0 <__libc_fini_array>:
 80005f0:	b538      	push	{r3, r4, r5, lr}
 80005f2:	4c0a      	ldr	r4, [pc, #40]	; (800061c <__libc_fini_array+0x2c>)
 80005f4:	4d0a      	ldr	r5, [pc, #40]	; (8000620 <__libc_fini_array+0x30>)
 80005f6:	1b64      	subs	r4, r4, r5
 80005f8:	10a4      	asrs	r4, r4, #2
 80005fa:	d00a      	beq.n	8000612 <__libc_fini_array+0x22>
 80005fc:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8000600:	3b01      	subs	r3, #1
 8000602:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8000606:	3c01      	subs	r4, #1
 8000608:	f855 3904 	ldr.w	r3, [r5], #-4
 800060c:	4798      	blx	r3
 800060e:	2c00      	cmp	r4, #0
 8000610:	d1f9      	bne.n	8000606 <__libc_fini_array+0x16>
 8000612:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000616:	f000 b86f 	b.w	80006f8 <_fini>
 800061a:	bf00      	nop
 800061c:	08000714 	.word	0x08000714
 8000620:	08000710 	.word	0x08000710

08000624 <__retarget_lock_acquire_recursive>:
 8000624:	4770      	bx	lr
 8000626:	bf00      	nop

08000628 <__retarget_lock_release_recursive>:
 8000628:	4770      	bx	lr
 800062a:	bf00      	nop

0800062c <__register_exitproc>:
 800062c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000630:	4d2b      	ldr	r5, [pc, #172]	; (80006e0 <__register_exitproc+0xb4>)
 8000632:	4606      	mov	r6, r0
 8000634:	6828      	ldr	r0, [r5, #0]
 8000636:	4698      	mov	r8, r3
 8000638:	460f      	mov	r7, r1
 800063a:	4691      	mov	r9, r2
 800063c:	f7ff fff2 	bl	8000624 <__retarget_lock_acquire_recursive>
 8000640:	4b28      	ldr	r3, [pc, #160]	; (80006e4 <__register_exitproc+0xb8>)
 8000642:	681c      	ldr	r4, [r3, #0]
 8000644:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8000648:	2b00      	cmp	r3, #0
 800064a:	d03d      	beq.n	80006c8 <__register_exitproc+0x9c>
 800064c:	685a      	ldr	r2, [r3, #4]
 800064e:	2a1f      	cmp	r2, #31
 8000650:	dc0d      	bgt.n	800066e <__register_exitproc+0x42>
 8000652:	f102 0c01 	add.w	ip, r2, #1
 8000656:	bb16      	cbnz	r6, 800069e <__register_exitproc+0x72>
 8000658:	3202      	adds	r2, #2
 800065a:	f8c3 c004 	str.w	ip, [r3, #4]
 800065e:	6828      	ldr	r0, [r5, #0]
 8000660:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8000664:	f7ff ffe0 	bl	8000628 <__retarget_lock_release_recursive>
 8000668:	2000      	movs	r0, #0
 800066a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800066e:	4b1e      	ldr	r3, [pc, #120]	; (80006e8 <__register_exitproc+0xbc>)
 8000670:	b37b      	cbz	r3, 80006d2 <__register_exitproc+0xa6>
 8000672:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8000676:	f3af 8000 	nop.w
 800067a:	4603      	mov	r3, r0
 800067c:	b348      	cbz	r0, 80006d2 <__register_exitproc+0xa6>
 800067e:	2000      	movs	r0, #0
 8000680:	f8d4 1148 	ldr.w	r1, [r4, #328]	; 0x148
 8000684:	f04f 0c01 	mov.w	ip, #1
 8000688:	e9c3 1000 	strd	r1, r0, [r3]
 800068c:	4602      	mov	r2, r0
 800068e:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8000692:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8000696:	f8c3 018c 	str.w	r0, [r3, #396]	; 0x18c
 800069a:	2e00      	cmp	r6, #0
 800069c:	d0dc      	beq.n	8000658 <__register_exitproc+0x2c>
 800069e:	2101      	movs	r1, #1
 80006a0:	eb03 0482 	add.w	r4, r3, r2, lsl #2
 80006a4:	f8c4 9088 	str.w	r9, [r4, #136]	; 0x88
 80006a8:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 80006ac:	4091      	lsls	r1, r2
 80006ae:	4308      	orrs	r0, r1
 80006b0:	2e02      	cmp	r6, #2
 80006b2:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 80006b6:	f8c4 8108 	str.w	r8, [r4, #264]	; 0x108
 80006ba:	d1cd      	bne.n	8000658 <__register_exitproc+0x2c>
 80006bc:	f8d3 018c 	ldr.w	r0, [r3, #396]	; 0x18c
 80006c0:	4301      	orrs	r1, r0
 80006c2:	f8c3 118c 	str.w	r1, [r3, #396]	; 0x18c
 80006c6:	e7c7      	b.n	8000658 <__register_exitproc+0x2c>
 80006c8:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 80006cc:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 80006d0:	e7bc      	b.n	800064c <__register_exitproc+0x20>
 80006d2:	6828      	ldr	r0, [r5, #0]
 80006d4:	f7ff ffa8 	bl	8000628 <__retarget_lock_release_recursive>
 80006d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80006dc:	e7c5      	b.n	800066a <__register_exitproc+0x3e>
 80006de:	bf00      	nop
 80006e0:	20000428 	.word	0x20000428
 80006e4:	08000704 	.word	0x08000704
 80006e8:	00000000 	.word	0x00000000

080006ec <_init>:
 80006ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80006ee:	bf00      	nop
 80006f0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80006f2:	bc08      	pop	{r3}
 80006f4:	469e      	mov	lr, r3
 80006f6:	4770      	bx	lr

080006f8 <_fini>:
 80006f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80006fa:	bf00      	nop
 80006fc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80006fe:	bc08      	pop	{r3}
 8000700:	469e      	mov	lr, r3
 8000702:	4770      	bx	lr
