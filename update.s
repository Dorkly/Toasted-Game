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
	.file	"update.c"
	.global	__aeabi_idivmod
	.text
	.align	2
	.global	updateBagel
	.type	updateBagel, %function
updateBagel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L20
	sub	sp, sp, #16
	ldr	r5, [r0, #40]
	smull	r2, r3, r5, r3
	mov	r2, r5, asr #31
	add	r3, r3, r5
	ldr	r1, [r0, #88]
	rsb	r3, r2, r3, asr #4
	rsb	r3, r3, r3, asl #4
	ldr	r2, [r0, #44]
	add	r1, r1, #1
	cmp	r5, r3, asl #1
	mov	r3, #0
	mov	r4, r0
	str	r1, [r0, #88]
	str	r2, [r0, #48]
	str	r3, [r0, #44]
	bne	.L2
	ldr	r0, [r0, #92]
	ldr	r1, [r4, #96]
	add	r0, r0, #1
	ldr	r3, .L20+4
	mov	lr, pc
	bx	r3
	str	r1, [r4, #92]
.L2:
	ldr	r3, .L20+8
	ldrh	r3, [r3, #0]
	add	r5, r5, #1
	tst	r3, #256
	str	r5, [r4, #40]
	beq	.L3
	ldr	r3, .L20+12
	ldrh	r3, [r3, #0]
	ands	r3, r3, #256
	beq	.L18
.L3:
	ldr	r2, [r4, #84]
	cmp	r2, #0
	beq	.L15
	ldr	r1, [r4, #88]
	cmp	r1, #0
	cmpne	r1, #25
	ldrne	ip, [r4, #28]
	beq	.L19
.L7:
	ldr	r3, [r4, #16]
	cmp	r1, #50
	add	ip, ip, r3
	moveq	r1, #0
	mov	r3, ip
	str	ip, [r4, #16]
	streq	r1, [r4, #44]
	streq	r1, [r4, #28]
	beq	.L10
	cmp	r1, #100
	moveq	r1, #1
	moveq	r0, #0
	streq	r0, [r4, #88]
	streq	r1, [r4, #28]
	streq	r1, [r4, #44]
.L10:
	cmp	r2, #0
	beq	.L16
	ldr	lr, [r4, #12]
	ldr	r5, .L20+16
	add	r0, r5, #12
	ldmia	r0, {r0, r1}	@ phole ldm
	ldr	r2, [r5, #36]
	ldr	r3, [r5, #32]
	str	lr, [sp, #0]
	str	ip, [sp, #4]
	ldr	ip, [r4, #36]
	str	ip, [sp, #8]
	ldr	ip, [r4, #32]
	mov	r0, r0, asr #8
	str	ip, [sp, #12]
	mov	r1, r1, asr #8
	ldr	ip, .L20+20
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L15
	ldr	r3, .L20+24
	ldr	r1, [r3, #0]
	cmp	r1, #0
	beq	.L13
	ldr	r2, .L20+28
	ldr	r2, [r2, #0]
.L14:
	mov	r1, #1
	str	r1, [r3, #0]
	ldr	r3, [r4, #16]
	b	.L5
.L15:
	ldr	r3, [r4, #16]
.L16:
	ldr	r2, .L20+28
	ldr	r2, [r2, #0]
.L5:
	ldr	r1, .L20+32
	ldr	r0, [r4, #12]
	ldr	r1, [r1, #0]
	rsb	r3, r2, r3
	rsb	r2, r1, r0
	stmib	r4, {r2, r3}	@ phole stm
	add	sp, sp, #16
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L19:
	ldr	r3, [r4, #44]
	cmp	r3, #1
	ldreq	ip, [r4, #28]
	ldrne	ip, [r4, #28]
	rsbeq	ip, ip, #0
	moveq	r3, #2
	rsbne	ip, ip, #0
	streq	ip, [r4, #28]
	streq	r3, [r4, #44]
	strne	ip, [r4, #28]
	b	.L7
.L18:
	mov	r1, #14528
	mov	r2, #11008
	str	r3, [r4, #84]
	ldr	r0, .L20+36
	add	r1, r1, #61
	add	r2, r2, #17
	ldr	ip, .L20+40
	mov	lr, pc
	bx	ip
	b	.L3
.L13:
	ldr	ip, .L20+44
	ldr	r8, .L20+48
	ldr	r6, [ip, #0]
	ldr	r0, .L20+52
	add	r8, r8, r6, asl #5
	ldr	r7, [r0, #0]
	str	r1, [r8, #24]
	mov	r1, #20
	ldr	r2, [r5, #20]
	str	r1, [r5, #16]
	ldr	r1, .L20+28
	add	r6, r6, #1
	add	r7, r7, #1
	str	r6, [ip, #0]
	str	r7, [r0, #0]
	str	r2, [r1, #0]
	b	.L14
.L21:
	.align	2
.L20:
	.word	-2004318071
	.word	__aeabi_idivmod
	.word	oldButtons
	.word	buttons
	.word	toast
	.word	collision
	.word	safe
	.word	hOff
	.word	vOff
	.word	Crunch
	.word	playSoundB
	.word	hurt
	.word	heart
	.word	loser
	.size	updateBagel, .-updateBagel
	.align	2
	.global	updateSoap
	.type	updateSoap, %function
updateSoap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L24
	ldr	r2, [r3, #88]
	add	r2, r2, #1
	cmp	r2, #29
	str	r2, [r3, #88]
	movgt	r2, #1
	strgt	r2, [r3, #84]
	ldr	r2, .L24+4
	ldr	r1, [r2, #0]
	ldr	r2, .L24+8
	ldr	ip, [r3, #12]
	ldr	r0, [r3, #16]
	ldr	r2, [r2, #0]
	rsb	r1, r1, ip
	rsb	r2, r2, r0
	stmib	r3, {r1, r2}	@ phole stm
	bx	lr
.L25:
	.align	2
.L24:
	.word	soap
	.word	vOff
	.word	hOff
	.size	updateSoap, .-updateSoap
	.align	2
	.global	updateSink
	.type	updateSink, %function
updateSink:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L28
	ldr	r2, [r3, #88]
	add	r2, r2, #1
	cmp	r2, #49
	str	r2, [r3, #88]
	movgt	r2, #1
	strgt	r2, [r3, #84]
	ldr	r2, .L28+4
	ldr	r1, [r2, #0]
	ldr	r2, .L28+8
	ldr	ip, [r3, #12]
	ldr	r0, [r3, #16]
	ldr	r2, [r2, #0]
	rsb	r1, r1, ip
	rsb	r2, r2, r0
	stmib	r3, {r1, r2}	@ phole stm
	bx	lr
.L29:
	.align	2
.L28:
	.word	sink
	.word	vOff
	.word	hOff
	.size	updateSink, .-updateSink
	.align	2
	.global	updateToaster
	.type	updateToaster, %function
updateToaster:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L32
	ldr	r2, [r3, #88]
	add	r2, r2, #1
	cmp	r2, #500
	str	r2, [r3, #88]
	movge	r2, #1
	strge	r2, [r3, #84]
	ldr	r2, .L32+4
	ldr	r1, [r2, #0]
	ldr	r2, .L32+8
	ldr	ip, [r3, #12]
	ldr	r0, [r3, #16]
	ldr	r2, [r2, #0]
	rsb	r1, r1, ip
	rsb	r2, r2, r0
	stmib	r3, {r1, r2}	@ phole stm
	bx	lr
.L33:
	.align	2
.L32:
	.word	toaster
	.word	vOff
	.word	hOff
	.size	updateToaster, .-updateToaster
	.align	2
	.global	animateToast
	.type	animateToast, %function
animateToast:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r4, .L38
	ldr	r3, .L38+4
	ldr	r5, [r4, #40]
	smull	r2, r3, r5, r3
	mov	r2, r5, asr #31
	rsb	r3, r2, r3, asr #3
	add	r3, r3, r3, asl #2
	ldr	r2, [r4, #44]
	cmp	r5, r3, asl #2
	mov	r3, #0
	str	r2, [r4, #48]
	str	r3, [r4, #44]
	bne	.L35
	add	r0, r4, #92
	ldmia	r0, {r0, r1}	@ phole ldm
	add	r0, r0, #1
	ldr	r3, .L38+8
	mov	lr, pc
	bx	r3
	str	r1, [r4, #92]
.L35:
	mov	r3, #67108864
	add	r3, r3, #256
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L38
	moveq	r2, #2
	streq	r2, [r3, #44]
	mov	r3, #67108864
	add	r3, r3, #256
	ldrh	r3, [r3, #48]
	tst	r3, #16
	add	r5, r5, #1
	moveq	r3, #1
	str	r5, [r4, #40]
	streq	r3, [r4, #44]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	toast
	.word	1717986919
	.word	__aeabi_idivmod
	.size	animateToast, .-animateToast
	.align	2
	.global	updateToast
	.type	updateToast, %function
updateToast:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r6, .L74
	sub	sp, sp, #20
	ldr	r3, [r6, #0]
	cmp	r3, #0
	ldrne	r2, .L74+4
	ldreq	r3, .L74+4
	ldrne	r3, [r2, #0]
	ldr	r4, .L74+8
	ldreq	r3, [r3, #0]
	addne	r3, r3, #1
	strne	r3, [r2, #0]
	ldr	r0, [r4, #24]
	cmp	r3, #0
	ldr	ip, [r4, #52]
	movgt	r3, #0
	add	r0, ip, r0
	strgt	r3, [r6, #0]
	ldr	r2, [r4, #16]
	ldr	ip, .L74+12
	ldr	r8, [r4, #28]
	ldr	r5, .L74+16
	mov	r3, #67108864
	ldr	r1, [r4, #12]
	add	r3, r3, #256
	ldrh	r9, [r3, #48]
	add	r2, r8, r2
	ldr	sl, [ip, #0]
	ldr	ip, [r5, #0]
	add	r1, r0, r1
	mov	r3, r2, asr #8
	rsb	sl, sl, r1, asr #8
	rsb	r7, ip, r3
	tst	r9, #32
	str	r0, [r4, #24]
	str	r1, [r4, #12]
	str	r2, [r4, #16]
	str	sl, [r4, #4]
	str	r7, [r4, #8]
	ldrne	r0, [r4, #32]
	bne	.L45
	cmp	r3, #0
	subgt	r2, r2, r8, asl #8
	strgt	r2, [r4, #16]
	cmp	ip, #0
	ble	.L65
	ldr	r0, [r4, #32]
	add	r3, r0, r0, lsr #31
	add	r7, r7, r3, asr #1
	ldr	r3, .L74+8
	cmp	r7, #119
	ldrgt	r2, [r3, #16]
	suble	ip, ip, #1
	ldrle	r2, [r3, #16]
	strle	ip, [r5, #0]
	movgt	r3, r2, asr #8
	movle	r3, r2, asr #8
.L45:
	mov	r1, #67108864
	add	r1, r1, #256
	ldrh	r1, [r1, #48]
	tst	r1, #16
	bne	.L49
	rsb	r1, r0, #600
	cmp	r1, r3
	ldrgt	r3, [r4, #28]
	addgt	r2, r2, r3, asl #8
	ldr	r3, [r5, #0]
	strgt	r2, [r4, #16]
	cmp	r3, #272
	bge	.L66
	ldr	r2, [r4, #8]
	add	r1, r0, r0, lsr #31
	add	r2, r2, r1, asr #1
	cmp	r2, #120
	ldr	r2, .L74+8
	addgt	r1, r3, #1
	ldrgt	r3, [r2, #16]
	ldrgt	r2, .L74+16
	ldrle	r3, [r2, #16]
	strgt	r1, [r2, #0]
	movle	r3, r3, asr #8
	movgt	r3, r3, asr #8
.L49:
	ldr	r1, [r4, #36]
	ldr	ip, [r4, #12]
	add	ip, r1, ip, asr #8
	ldr	r2, .L74+20
	add	r3, r3, ip, asl #9
	add	r0, r3, r0
	add	r0, r2, r0, asl #1
	ldrh	r0, [r0, #-2]
	cmp	r0, #0
	ldr	r0, .L74+8
	beq	.L53
	mov	r3, r3, asl #1
	ldrh	r3, [r2, r3]
	cmp	r3, #0
	bne	.L67
.L53:
	ldr	r3, .L74+24
	ldrh	r3, [r3, #0]
	tst	r3, #1
	beq	.L54
	ldr	r3, .L74+28
	ldrh	r3, [r3, #0]
	ands	r3, r3, #1
	beq	.L68
.L54:
	ldr	r3, .L74+32
	ldr	r2, [r3, #84]
	cmp	r2, #0
	bne	.L55
	ldr	r0, [r4, #12]
	mov	r0, r0, asr #8
.L56:
	ldr	r8, .L74+36
	ldr	r3, [r8, #84]
	cmp	r3, #0
	bne	.L69
.L59:
	ldr	r6, .L74+40
	ldr	r3, [r6, #84]
	cmp	r3, #0
	bne	.L70
.L62:
	cmp	r0, #255
	ble	.L64
	ldr	r3, .L74+44
	ldr	r2, .L74+48
	ldr	r1, [r3, #0]
	ldr	r6, .L74+52
	ldr	ip, [r2, #0]
	add	r6, r6, r1, asl #5
	ldr	r0, [r4, #20]
	add	r1, r1, #1
	add	ip, ip, #1
	mov	r7, #0
	str	r1, [r3, #0]
	mov	r3, #20
	str	r7, [r6, #24]
	str	ip, [r2, #0]
	str	r3, [r4, #16]
	str	r0, [r5, #0]
.L64:
	add	sp, sp, #20
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	animateToast
.L55:
	ldr	r1, [r4, #16]
	ldr	ip, [r4, #32]
	ldr	r2, [r3, #16]
	mov	r1, r1, asr #8
	sub	ip, ip, #1
	add	ip, ip, r1
	add	r0, r2, #5
	cmp	ip, r0
	ldr	r7, .L74+8
	ble	.L71
	ldr	r0, [r7, #12]
	ldr	ip, [r7, #36]
	ldr	r3, [r3, #12]
	mov	r0, r0, asr #8
	sub	ip, ip, #1
	add	ip, ip, r0
	add	r3, r3, #5
	cmp	ip, r3
	ble	.L56
	cmp	r1, r2
	bge	.L56
	ldr	ip, [r6, #0]
	cmp	ip, #0
	beq	.L72
.L58:
	ldr	r0, [r4, #12]
	mov	r3, #1
	str	r3, [r6, #0]
	mov	r0, r0, asr #8
	b	.L56
.L71:
	ldr	r8, .L74+36
	ldr	r3, [r8, #84]
	ldr	r0, [r7, #12]
	cmp	r3, #0
	mov	r0, r0, asr #8
	beq	.L59
.L69:
	ldr	ip, [r8, #36]
	add	r7, r8, #12
	ldmia	r7, {r7, lr}	@ phole ldm
	ldr	r1, [r4, #16]
	ldr	r8, [r8, #32]
	ldr	r3, [r4, #32]
	str	ip, [sp, #8]
	ldr	r2, [r4, #36]
	mov	r1, r1, asr #8
	stmia	sp, {r7, lr}	@ phole stm
	str	r8, [sp, #12]
	ldr	ip, .L74+56
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldr	r3, .L74+8
	beq	.L73
	ldr	r2, [r6, #0]
	cmp	r2, #0
	bne	.L61
	ldr	r0, .L74+44
	ldr	r1, .L74+48
	ldr	ip, [r0, #0]
	ldr	sl, .L74+52
	ldr	r8, [r1, #0]
	add	sl, sl, ip, asl #5
	ldr	r7, [r3, #20]
	add	ip, ip, #1
	add	r8, r8, #1
	str	r2, [sl, #24]
	mov	r2, #20
	str	ip, [r0, #0]
	str	r8, [r1, #0]
	str	r2, [r3, #16]
	str	r7, [r5, #0]
.L61:
	mov	r3, #1
	str	r3, [r6, #0]
	ldr	r6, .L74+40
	ldr	r3, [r6, #84]
	ldr	r0, [r4, #12]
	cmp	r3, #0
	mov	r0, r0, asr #8
	beq	.L62
.L70:
	ldr	ip, [r6, #36]
	add	r7, r6, #12
	ldmia	r7, {r7, lr}	@ phole ldm
	ldr	r8, [r6, #32]
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #36]
	mov	r1, r1, asr #8
	ldr	r3, [r4, #32]
	str	ip, [sp, #8]
	stmia	sp, {r7, lr}	@ phole stm
	str	r8, [sp, #12]
	ldr	ip, .L74+56
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldrne	r2, .L74+60
	ldr	r3, .L74+8
	ldrne	r1, [r2, #0]
	ldrne	r0, [r3, #12]
	ldreq	r0, [r3, #12]
	addne	r1, r1, #1
	movne	r3, #0
	moveq	r0, r0, asr #8
	strne	r3, [r6, #84]
	strne	r1, [r2, #0]
	movne	r0, r0, asr #8
	b	.L62
.L68:
	ldr	r2, [r4, #60]
	cmp	r2, #1
	ldr	r7, .L74+8
	bgt	.L54
	ldr	ip, [r7, #68]
	mov	r2, #11008
	rsb	ip, ip, #0
	str	ip, [r7, #24]
	ldr	r0, .L74+64
	mov	r1, #3536
	add	r2, r2, #17
	ldr	ip, .L74+68
	mov	lr, pc
	bx	ip
	ldr	r3, [r7, #60]
	add	r3, r3, #1
	str	r3, [r7, #60]
	b	.L54
.L67:
	ldr	r3, [r0, #0]
	rsb	r1, r1, r3
	mov	r1, r1, asl #8
	mov	r3, #0
	str	r3, [r0, #24]
	str	r1, [r0, #12]
	str	r3, [r0, #60]
	b	.L53
.L66:
	ldr	r3, [r4, #16]
	mov	r3, r3, asr #8
	b	.L49
.L73:
	ldr	r0, [r3, #12]
	mov	r0, r0, asr #8
	b	.L59
.L65:
	ldr	r2, [r4, #16]
	ldr	r0, [r4, #32]
	mov	r3, r2, asr #8
	b	.L45
.L72:
	ldr	r8, .L74+44
	ldr	sl, .L74+48
	ldr	fp, [r8, #0]
	ldr	lr, [sl, #0]
	ldr	r9, .L74+52
	add	lr, lr, #1
	add	r9, r9, fp, asl #5
	mov	r1, #6784
	mov	r2, #11008
	add	fp, fp, #1
	mov	r3, ip
	add	r2, r2, #17
	str	ip, [r9, #24]
	ldr	r0, .L74+72
	add	r1, r1, #51
	str	fp, [r8, #0]
	str	lr, [sl, #0]
	ldr	ip, .L74+68
	mov	lr, pc
	bx	ip
	ldr	r3, [r7, #20]
	mov	r2, #20
	str	r2, [r7, #16]
	str	r3, [r5, #0]
	b	.L58
.L75:
	.align	2
.L74:
	.word	safe
	.word	safeTimer
	.word	toast
	.word	vOff
	.word	hOff
	.word	collisionmapBitmap
	.word	oldButtons
	.word	buttons
	.word	sink
	.word	soap
	.word	toaster
	.word	hurt
	.word	loser
	.word	heart
	.word	collision
	.word	winner
	.word	Jump
	.word	playSoundB
	.word	Water_c1
	.size	updateToast, .-updateToast
	.align	2
	.global	updateGame
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	bl	updateToast
	bl	updateSink
	bl	updateSoap
	bl	updateToaster
	ldr	r5, .L79
	mov	r4, #0
.L77:
	add	r0, r4, r4, asl #1
	add	r0, r4, r0, asl #2
	add	r0, r5, r0, asl #3
	add	r4, r4, #1
	bl	updateBagel
	cmp	r4, #5
	bne	.L77
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L80:
	.align	2
.L79:
	.word	bagel
	.size	updateGame, .-updateGame
	.align	2
	.global	checkPoint1
	.type	checkPoint1, %function
checkPoint1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L82
	mov	r1, #20
	ldr	r2, [r3, #20]
	str	r1, [r3, #16]
	ldr	r3, .L82+4
	str	r2, [r3, #0]
	bx	lr
.L83:
	.align	2
.L82:
	.word	toast
	.word	hOff
	.size	checkPoint1, .-checkPoint1
	.align	2
	.global	checkPoint2
	.type	checkPoint2, %function
checkPoint2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L85
	ldr	r2, [r3, #16]
	ldr	r3, .L85+4
	sub	r2, r2, #10
	str	r2, [r3, #16]
	bx	lr
.L86:
	.align	2
.L85:
	.word	sink
	.word	toast
	.size	checkPoint2, .-checkPoint2
	.comm	loser,4,4
	.comm	winner,4,4
	.comm	safe,4,4
	.comm	safeTimer,4,4
	.comm	soundA,32,4
	.comm	soundB,32,4
	.comm	hurt,4,4
	.ident	"GCC: (devkitARM release 31) 4.5.0"
