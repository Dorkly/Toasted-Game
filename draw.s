	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"draw.c"
	.text
	.align	2
	.global	initToast
	.type	initToast, %function
initToast:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
	mov	r1, #1
	mov	ip, #16
	str	r4, [sp, #-4]!
	str	ip, [r3, #32]
	str	ip, [r3, #36]
	str	r1, [r3, #24]
	mov	ip, #49920
	str	r1, [r3, #28]
	str	r1, [r3, #84]
	mov	r1, #5
	str	ip, [r3, #12]
	str	r1, [r3, #88]
	mov	ip, #5120
	mov	r1, #1024
	mov	r2, #0
	mov	r0, #2
	mov	r4, #217
	str	ip, [r3, #16]
	str	r1, [r3, #68]
	mov	ip, #40
	mov	r1, #2048
	str	r4, [r3, #0]
	str	ip, [r3, #52]
	str	r0, [r3, #56]
	str	r2, [r3, #44]
	str	r2, [r3, #80]
	str	r2, [r3, #60]
	str	r2, [r3, #20]
	str	r1, [r3, #64]
	str	r2, [r3, #40]
	str	r2, [r3, #92]
	str	r0, [r3, #96]
	ldmfd	sp!, {r4}
	bx	lr
.L3:
	.align	2
.L2:
	.word	toast
	.size	initToast, .-initToast
	.align	2
	.global	initBagel
	.type	initBagel, %function
initBagel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L8
	stmfd	sp!, {r4, r5, r6, r7}
	mov	ip, #80
	mov	r4, #16
	mvn	r7, #0
	mov	r0, #1
	mov	r6, #200
	mov	r1, r2
	mov	r5, #2
.L5:
	add	r2, r2, #1
	cmp	r2, #5
	str	ip, [r3, #16]
	str	r4, [r3, #32]
	str	r4, [r3, #36]
	str	r7, [r3, #24]
	str	r0, [r3, #28]
	str	r6, [r3, #12]
	str	r0, [r3, #84]
	str	r1, [r3, #44]
	str	r0, [r3, #88]
	str	r2, [r3, #80]
	str	r1, [r3, #40]
	str	r1, [r3, #92]
	str	r5, [r3, #96]
	add	ip, ip, #130
	add	r3, r3, #104
	bne	.L5
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L9:
	.align	2
.L8:
	.word	bagel
	.size	initBagel, .-initBagel
	.align	2
	.global	initSink
	.type	initSink, %function
initSink:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L11
	mov	r0, #163
	mov	r1, #64
	mov	r2, #0
	str	r0, [r3, #12]
	mov	r0, #230
	str	r0, [r3, #16]
	str	r1, [r3, #32]
	str	r1, [r3, #36]
	str	r2, [r3, #84]
	str	r2, [r3, #88]
	bx	lr
.L12:
	.align	2
.L11:
	.word	sink
	.size	initSink, .-initSink
	.align	2
	.global	initSoap
	.type	initSoap, %function
initSoap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L14
	mov	r3, #200
	str	r3, [r4, #12]
	ldr	r3, .L14+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L14+8
	smull	r2, r3, r0, r3
	mov	r2, r0, asr #31
	rsb	r3, r2, r3, asr #4
	add	r3, r3, r3, asl #2
	rsb	r3, r3, r3, asl #4
	sub	r0, r0, r3, asl #1
	mov	r2, #16
	mov	r3, #0
	add	r0, r0, #21
	str	r0, [r4, #16]
	str	r2, [r4, #32]
	str	r2, [r4, #36]
	str	r3, [r4, #84]
	str	r3, [r4, #88]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	soap
	.word	rand
	.word	458129845
	.size	initSoap, .-initSoap
	.align	2
	.global	initToaster
	.type	initToaster, %function
initToaster:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L17
	mov	r0, #180
	mov	r1, #32
	mov	r2, #0
	str	r0, [r3, #12]
	mov	r0, #400
	str	r0, [r3, #16]
	str	r1, [r3, #36]
	str	r1, [r3, #32]
	str	r2, [r3, #84]
	str	r2, [r3, #88]
	bx	lr
.L18:
	.align	2
.L17:
	.word	toaster
	.size	initToaster, .-initToaster
	.align	2
	.global	initHeart
	.type	initHeart, %function
initHeart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L22
	stmfd	sp!, {r4, r5, r6, r7, r8}
	ldr	r7, [r3, #0]
	ldr	r3, .L22+4
	ldr	r8, [r3, #0]
	ldr	r3, .L22+8
	mov	r2, #0
	rsb	r7, r7, #80
	mov	r0, #16
	mov	r6, #80
	mov	r5, #1
.L20:
	mov	r1, r2, asl #4
	add	r4, r2, #20
	add	r2, r2, #1
	rsb	ip, r8, r1
	cmp	r2, #4
	str	r0, [r3, #0]
	str	r0, [r3, #-4]
	str	r6, [r3, #12]
	str	r1, [r3, #16]
	str	r5, [r3, #20]
	str	r4, [r3, #24]
	stmib	r3, {r7, ip}	@ phole stm
	add	r3, r3, #32
	bne	.L20
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L23:
	.align	2
.L22:
	.word	vOff
	.word	hOff
	.word	heart+4
	.size	initHeart, .-initHeart
	.align	2
	.global	initGame
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	initToast
	bl	initBagel
	ldr	r3, .L25
	mov	r1, #163
	mov	r4, #0
	mov	r2, #64
	str	r1, [r3, #12]
	mov	r1, #230
	str	r1, [r3, #16]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r4, [r3, #84]
	str	r4, [r3, #88]
	bl	initSoap
	ldr	r3, .L25+4
	mov	r1, #180
	mov	r2, #32
	str	r1, [r3, #12]
	mov	r1, #400
	str	r1, [r3, #16]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r4, [r3, #84]
	str	r4, [r3, #88]
	ldmfd	sp!, {r4, lr}
	b	initHeart
.L26:
	.align	2
.L25:
	.word	sink
	.word	toaster
	.size	initGame, .-initGame
	.align	2
	.global	drawHeart
	.type	drawHeart, %function
drawHeart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L32
	mov	ip, #4288
	ldr	r1, .L32+4
	stmfd	sp!, {r4, r5, r6}
	add	ip, ip, #5
	add	r4, r3, #128
.L30:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L28
	ldr	r5, [r3, #12]
	ldr	r0, [r3, #28]
	mov	r5, r5, asl #23
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
	mov	r0, r0, asl #3
	mov	r5, r5, lsr #23
	add	r2, r1, r0
	orr	r5, r5, #16384
	strh	r6, [r1, r0]	@ movhi
	strh	r5, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
.L29:
	add	r3, r3, #32
	cmp	r3, r4
	bne	.L30
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L28:
	ldr	r2, [r3, #28]
	mov	r0, #512	@ movhi
	mov	r2, r2, asl #3
	strh	r0, [r1, r2]	@ movhi
	b	.L29
.L33:
	.align	2
.L32:
	.word	heart
	.word	shadowOAM
	.size	drawHeart, .-drawHeart
	.align	2
	.global	drawToast
	.type	drawToast, %function
drawToast:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L35
	stmfd	sp!, {r4, r5}
	ldr	ip, [r3, #8]
	ldr	r2, [r3, #80]
	ldr	r5, [r3, #92]
	ldr	r0, [r3, #44]
	ldr	r1, .L35+4
	mov	ip, ip, asl #23
	ldrb	r4, [r3, #4]	@ zero_extendqisi2
	mov	r2, r2, asl #3
	mov	ip, ip, lsr #23
	add	r0, r0, r5, asl #5
	add	r3, r1, r2
	orr	ip, ip, #16384
	mov	r0, r0, asl #1
	strh	r4, [r1, r2]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	ldmfd	sp!, {r4, r5}
	bx	lr
.L36:
	.align	2
.L35:
	.word	toast
	.word	shadowOAM
	.size	drawToast, .-drawToast
	.align	2
	.global	drawSink
	.type	drawSink, %function
drawSink:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L41
	ldr	r2, [r3, #84]
	cmp	r2, #0
	bne	.L40
	ldr	r3, .L41+4
	mov	r2, #512	@ movhi
	strh	r2, [r3, #40]	@ movhi
	bx	lr
.L40:
	ldr	r1, [r3, #8]
	mov	r1, r1, asl #23
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	ldr	r2, .L41+4
	mvn	r1, r1, lsr #5
	mov	r3, #4096
	mvn	r1, r1, lsr #18
	add	r3, r3, #24
	strh	r0, [r2, #40]	@ movhi
	strh	r1, [r2, #42]	@ movhi
	strh	r3, [r2, #44]	@ movhi
	bx	lr
.L42:
	.align	2
.L41:
	.word	sink
	.word	shadowOAM
	.size	drawSink, .-drawSink
	.align	2
	.global	drawSoap
	.type	drawSoap, %function
drawSoap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L47
	ldr	r2, [r3, #84]
	cmp	r2, #0
	bne	.L46
	ldr	r3, .L47+4
	mov	r2, #512	@ movhi
	strh	r2, [r3, #48]	@ movhi
	bx	lr
.L46:
	ldr	r0, [r3, #8]
	mov	r0, r0, asl #23
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldr	r2, .L47+4
	mov	r3, r0, lsr #23
	orr	r3, r3, #16384
	strh	r3, [r2, #50]	@ movhi
	mov	r3, #16	@ movhi
	strh	r1, [r2, #48]	@ movhi
	strh	r3, [r2, #52]	@ movhi
	bx	lr
.L48:
	.align	2
.L47:
	.word	soap
	.word	shadowOAM
	.size	drawSoap, .-drawSoap
	.align	2
	.global	drawBagel
	.type	drawBagel, %function
drawBagel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}
	ldr	r3, .L54
	ldr	r2, .L54+4
	add	ip, r3, #520
.L52:
	ldr	r1, [r3, #-8]
	cmp	r1, #0
	beq	.L50
	ldr	r5, [r3, #-84]
	ldr	r4, [r3, #-48]
	ldr	r1, [r3, #0]
	ldr	r0, [r3, #-12]
	mov	r5, r5, asl #23
	add	r4, r4, #4
	ldrb	r6, [r3, #-88]	@ zero_extendqisi2
	mov	r0, r0, asl #3
	add	r4, r4, r1, asl #5
	mov	r5, r5, lsr #23
	add	r1, r2, r0
	orr	r5, r5, #16384
	mov	r4, r4, asl #1
	strh	r6, [r2, r0]	@ movhi
	strh	r5, [r1, #2]	@ movhi
	strh	r4, [r1, #4]	@ movhi
.L51:
	add	r3, r3, #104
	cmp	r3, ip
	bne	.L52
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L50:
	ldr	r4, [r3, #-84]
	ldr	r0, [r3, #-12]
	ldrb	r5, [r3, #-88]	@ zero_extendqisi2
	mov	r4, r4, asl #23
	mov	r0, r0, asl #3
	mov	r4, r4, lsr #23
	add	r1, r2, r0
	orr	r4, r4, #16384
	strh	r5, [r2, r0]	@ movhi
	mov	r0, #19	@ movhi
	strh	r4, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	b	.L51
.L55:
	.align	2
.L54:
	.word	bagel+92
	.word	shadowOAM
	.size	drawBagel, .-drawBagel
	.align	2
	.global	drawToaster
	.type	drawToaster, %function
drawToaster:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L60
	ldr	r2, [r3, #84]
	cmp	r2, #0
	bne	.L59
	ldr	r3, .L60+4
	mov	r2, #512	@ movhi
	strh	r2, [r3, #56]	@ movhi
	bx	lr
.L59:
	ldr	r0, [r3, #8]
	mov	r0, r0, asl #23
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldr	r2, .L60+4
	mvn	r3, r0, lsr #6
	mvn	r3, r3, lsr #17
	strh	r3, [r2, #58]	@ movhi
	mov	r3, #4288	@ movhi
	strh	r1, [r2, #56]	@ movhi
	strh	r3, [r2, #60]	@ movhi
	bx	lr
.L61:
	.align	2
.L60:
	.word	toaster
	.word	shadowOAM
	.size	drawToaster, .-drawToaster
	.align	2
	.global	drawGame
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	bl	drawToast
	bl	drawBagel
	bl	drawSink
	bl	drawSoap
	bl	drawToaster
	bl	drawHeart
	ldr	r3, .L63
	mov	lr, pc
	bx	r3
	mov	r0, #3
	ldr	r1, .L63+4
	mov	r2, #117440512
	mov	r3, #512
	ldr	ip, .L63+8
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r3, lr}
	bx	lr
.L64:
	.align	2
.L63:
	.word	waitForVBlank
	.word	shadowOAM
	.word	DMANow
	.size	drawGame, .-drawGame
	.comm	toast,104,4
	.comm	bagel,520,4
	.comm	sink,104,4
	.comm	soap,104,4
	.comm	toaster,104,4
	.comm	heart,128,4
	.ident	"GCC: (devkitARM release 31) 4.5.0"
