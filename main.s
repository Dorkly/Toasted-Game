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
	.file	"main.c"
	.text
	.align	2
	.global	goToIntro
	.type	goToIntro, %function
goToIntro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r0, .L2
	ldr	r3, .L2+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L2+8
	mov	lr, pc
	bx	r3
	ldr	r2, .L2+12
	ldr	r3, .L2+16
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, lr}
	bx	lr
.L3:
	.align	2
.L2:
	.word	IntroBitmap
	.word	drawFullscreenImage3
	.word	waitForVBlank
	.word	intro
	.word	state
	.size	goToIntro, .-goToIntro
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L5
	mov	lr, pc
	bx	r3
	ldr	r3, .L5+4
	mov	lr, pc
	bx	r3
	mov	r1, #2244608
	mov	r2, #11008
	ldr	r0, .L5+8
	sub	r1, r1, #3104
	add	r2, r2, #17
	mov	r3, #1
	ldr	ip, .L5+12
	mov	lr, pc
	bx	ip
	mov	r2, #67108864
	mov	r3, #1024
	add	r1, r2, #256
	add	r3, r3, #3
	ldrh	r1, [r1, #48]
	strh	r3, [r2, #0]	@ movhi
	ldr	r3, .L5+16
	strh	r1, [r3, #0]	@ movhi
	ldmfd	sp!, {r4, lr}
	b	goToIntro
.L6:
	.align	2
.L5:
	.word	setupSounds
	.word	setupInterrupts
	.word	IntroSong
	.word	playSoundA
	.word	buttons
	.size	initialize, .-initialize
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
	bl	initialize
	mov	r7, #67108864
	ldr	sl, .L10
	ldr	r6, .L10+4
	ldr	r8, .L10+8
	ldr	r5, .L10+12
	mov	r4, r7
	add	r7, r7, #256
.L8:
	ldrh	r3, [r6, #0]
	strh	r3, [sl, #0]	@ movhi
	ldrh	r3, [r7, #48]
	strh	r3, [r6, #0]	@ movhi
	ldr	ip, [r8, #0]
	mov	lr, pc
	bx	ip
	ldr	r3, [r5, #0]
	add	r1, r3, r3, lsr #31
	ldrh	r2, [r5, #4]
	mov	r3, r3, asl #16
	mov	r1, r1, asl #15
	mov	r3, r3, lsr #16
	mov	r1, r1, lsr #16
	strh	r3, [r4, #16]	@ movhi
	strh	r2, [r4, #18]	@ movhi
	strh	r1, [r4, #20]	@ movhi
	strh	r2, [r4, #22]	@ movhi
	b	.L8
.L11:
	.align	2
.L10:
	.word	oldButtons
	.word	buttons
	.word	state
	.word	.LANCHOR0
	.size	main, .-main
	.align	2
	.global	goToStart
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #2244608
	mov	r2, #11008
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	ip, .L13
	sub	r1, r1, #3104
	add	r2, r2, #17
	mov	r3, #1
	ldr	r0, .L13+4
	mov	r5, #372
	mov	lr, pc
	bx	ip
	add	r5, r5, #1
	ldr	r0, .L13+8
	ldr	r3, .L13+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L13+16
	mov	r0, #40
	mov	r1, #90
	ldr	r2, .L13+20
	mov	r3, r5
	mov	lr, pc
	bx	r4
	mov	r0, #40
	mov	r1, r0
	ldr	r2, .L13+24
	mov	r3, #0
	mov	lr, pc
	bx	r4
	mov	r0, #50
	mov	r1, #40
	ldr	r2, .L13+28
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r2, .L13+32
	mov	r0, #50
	mov	r1, #79
	mov	r3, r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L13+36
	mov	lr, pc
	bx	r3
	ldr	r2, .L13+40
	ldr	r3, .L13+44
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	playSoundA
	.word	IntroSong
	.word	SplashBitmap
	.word	drawFullscreenImage3
	.word	drawString4
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	waitForVBlank
	.word	start
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	lose
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L17
	ldrh	r3, [r3, #0]
	tst	r3, #8
	ldr	r3, .L17+4
	mov	r2, #0
	str	r2, [r3, #0]
	bxeq	lr
	ldr	r3, .L17+8
	ldrh	r3, [r3, #0]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L18:
	.align	2
.L17:
	.word	oldButtons
	.word	loser
	.word	buttons
	.size	lose, .-lose
	.align	2
	.global	win
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L21
	ldrh	r3, [r3, #0]
	tst	r3, #8
	ldr	r3, .L21+4
	mov	r2, #0
	str	r2, [r3, #0]
	bxeq	lr
	ldr	r3, .L21+8
	ldrh	r3, [r3, #0]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L22:
	.align	2
.L21:
	.word	oldButtons
	.word	winner
	.word	buttons
	.size	win, .-win
	.align	2
	.global	instructions
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L25
	ldrh	r3, [r3, #0]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L25+4
	ldrh	r3, [r3, #0]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L26:
	.align	2
.L25:
	.word	oldButtons
	.word	buttons
	.size	instructions, .-instructions
	.align	2
	.global	intro
	.type	intro, %function
intro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L30
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L30+4
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L27
	ldr	r3, .L30+8
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L29
.L27:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L29:
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L31:
	.align	2
.L30:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	intro, .-intro
	.align	2
	.global	goToInstructions
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r0, .L33
	ldr	r3, .L33+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L33+8
	mov	lr, pc
	bx	r3
	ldr	r2, .L33+12
	ldr	r3, .L33+16
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	InstructionsBitmap
	.word	drawFullscreenImage3
	.word	waitForVBlank
	.word	instructions
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	goToGame
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #2244608
	stmfd	sp!, {r4, r5, r6, lr}
	mov	ip, #768	@ movhi
	mov	r5, #67108864
	add	r1, r1, #5760
	mov	r2, #11008
	add	r1, r1, #55
	add	r2, r2, #17
	mov	r3, #1
	ldr	r0, .L36
	strh	ip, [r5, #0]	@ movhi
	ldr	ip, .L36+4
	mov	lr, pc
	bx	ip
	ldr	r0, .L36+8
	ldr	r3, .L36+12
	mov	lr, pc
	bx	r3
	mov	r6, #100663296
	mov	ip, #24064	@ movhi
	ldr	r4, .L36+16
	strh	ip, [r5, #8]	@ movhi
	mov	r0, #3
	ldr	r1, .L36+20
	mov	r2, r6
	mov	r3, #384
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L36+24
	add	r2, r6, #61440
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	ip, #23552
	add	ip, ip, #4
	strh	ip, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r1, .L36+28
	add	r2, r6, #16384
	mov	r3, #2096
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L36+32
	add	r2, r6, #57344
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L36+36
	add	r2, r6, #65536
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	ldr	r1, .L36+40
	add	r2, r2, #512
	mov	r0, #3
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L36+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+48
	mov	r2, #0
	str	r2, [r3, #0]
	str	r2, [r3, #8]
	mov	r1, #80
	mov	r2, #90
	str	r2, [r3, #12]
	str	r1, [r3, #4]
	ldr	r2, .L36+52
	ldr	r3, .L36+56
	str	r2, [r3, #0]
	mov	r3, #4864	@ movhi
	strh	r3, [r5, #0]	@ movhi
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	MainSong
	.word	playSoundA
	.word	bgPal
	.word	loadPalette
	.word	DMANow
	.word	countersTiles
	.word	countersMap
	.word	bgTiles
	.word	bgMap
	.word	spritesheetTiles
	.word	spritesheetPal
	.word	hideSprites
	.word	.LANCHOR0
	.word	game
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	pause
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L43
	stmfd	sp!, {r4, lr}
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L39
	ldr	r2, .L43+4
	ldrh	r2, [r2, #0]
	tst	r2, #8
	beq	.L41
.L39:
	tst	r3, #4
	beq	.L38
	ldr	r3, .L43+4
	ldrh	r3, [r3, #0]
	tst	r3, #4
	beq	.L42
.L38:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L42:
	ldmfd	sp!, {r4, lr}
	b	goToStart
.L41:
	ldr	r3, .L43+8
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r4, lr}
	b	goToGame
.L44:
	.align	2
.L43:
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
	.size	pause, .-pause
	.align	2
	.global	start
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L50
	ldr	r3, .L50+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4, #0]
	tst	r3, #8
	beq	.L46
	ldr	r2, .L50+8
	ldrh	r2, [r2, #0]
	tst	r2, #8
	beq	.L48
.L46:
	tst	r3, #4
	beq	.L45
	ldr	r3, .L50+8
	ldrh	r3, [r3, #0]
	tst	r3, #4
	beq	.L49
.L45:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L49:
	ldmfd	sp!, {r4, lr}
	b	goToInstructions
.L48:
	bl	goToGame
	ldr	r3, .L50+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4, #0]
	b	.L46
.L51:
	.align	2
.L50:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	initGame
	.size	start, .-start
	.align	2
	.global	goToPause
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #2375680
	mov	ip, #1024
	stmfd	sp!, {r3, r4, r5, lr}
	add	ip, ip, #3
	mov	lr, #67108864
	add	r1, r1, #16000
	mov	r2, #11008
	strh	ip, [lr, #0]	@ movhi
	add	r1, r1, #39
	ldr	ip, .L53
	add	r2, r2, #17
	mov	r3, #1
	ldr	r0, .L53+4
	mov	r4, #32512
	mov	lr, pc
	bx	ip
	add	r4, r4, #255
	ldr	r0, .L53+8
	ldr	r3, .L53+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L53+16
	mov	r0, #120
	mov	r1, #60
	ldr	r2, .L53+20
	mov	r3, r4
	mov	lr, pc
	bx	r5
	mov	r0, #130
	mov	r1, #60
	ldr	r2, .L53+24
	mov	r3, r4
	mov	lr, pc
	bx	r5
	ldr	r2, .L53+28
	mov	r0, #140
	mov	r1, #60
	mov	r3, r4
	mov	lr, pc
	bx	r5
	ldr	r3, .L53+32
	mov	lr, pc
	bx	r3
	ldr	r2, .L53+36
	ldr	r3, .L53+40
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L54:
	.align	2
.L53:
	.word	playSoundA
	.word	PauseSong
	.word	PauseBitmap
	.word	drawFullscreenImage3
	.word	drawString4
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	waitForVBlank
	.word	pause
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	goToWin
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #2113536
	mov	ip, #1024
	stmfd	sp!, {r4, lr}
	add	ip, ip, #3
	mov	lr, #67108864
	add	r1, r1, #10368
	mov	r2, #11008
	strh	ip, [lr, #0]	@ movhi
	add	r1, r1, #40
	ldr	ip, .L56
	add	r2, r2, #17
	mov	r3, #1
	ldr	r0, .L56+4
	mov	lr, pc
	bx	ip
	ldr	r0, .L56+8
	ldr	r3, .L56+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L56+16
	mov	r0, #120
	mov	r1, #60
	ldr	r2, .L56+20
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r2, .L56+24
	mov	r0, #130
	mov	r1, #60
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L56+28
	mov	lr, pc
	bx	r3
	ldr	r2, .L56+32
	ldr	r3, .L56+36
	str	r2, [r3, #0]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L57:
	.align	2
.L56:
	.word	playSoundA
	.word	WinSong
	.word	WinBitmap
	.word	drawFullscreenImage3
	.word	drawString4
	.word	.LC7
	.word	.LC8
	.word	waitForVBlank
	.word	win
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	goToLose
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #1024
	stmfd	sp!, {r3, r4, r5, lr}
	add	ip, ip, #3
	mov	lr, #67108864
	mov	r1, #12713984
	mov	r2, #44032
	strh	ip, [lr, #0]	@ movhi
	add	r1, r1, #40960
	ldr	ip, .L59
	add	r2, r2, #68
	mov	r3, #1
	ldr	r0, .L59+4
	mov	r4, #32512
	mov	lr, pc
	bx	ip
	add	r4, r4, #255
	ldr	r0, .L59+8
	ldr	r3, .L59+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L59+16
	mov	r0, #120
	mov	r1, #80
	ldr	r2, .L59+20
	mov	r3, r4
	mov	lr, pc
	bx	r5
	ldr	r2, .L59+24
	mov	r0, #140
	mov	r1, #80
	mov	r3, r4
	mov	lr, pc
	bx	r5
	ldr	r3, .L59+28
	mov	lr, pc
	bx	r3
	ldr	r2, .L59+32
	ldr	r3, .L59+36
	str	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L60:
	.align	2
.L59:
	.word	playSoundA
	.word	LoseSong
	.word	LoseBitmap
	.word	drawFullscreenImage3
	.word	drawString4
	.word	.LC9
	.word	.LC10
	.word	waitForVBlank
	.word	lose
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L70
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	add	r3, r3, #256
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L62
	ldr	r3, .L70+12
	ldr	r1, [r3, #0]
	ldr	r2, [r3, #8]
	add	r1, r1, #1
	add	r2, r2, #1
	str	r1, [r3, #0]
	str	r2, [r3, #8]
.L62:
	mov	r3, #67108864
	add	r3, r3, #256
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L63
	ldr	r3, .L70+12
	ldr	r1, [r3, #0]
	ldr	r2, [r3, #8]
	sub	r1, r1, #1
	sub	r2, r2, #1
	str	r1, [r3, #0]
	str	r2, [r3, #8]
.L63:
	ldr	r3, .L70+16
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L64
	ldr	r3, .L70+20
	ldrh	r3, [r3, #0]
	tst	r3, #8
	beq	.L67
.L64:
	ldr	r3, .L70+24
	ldr	r3, [r3, #0]
	cmp	r3, #1
	beq	.L68
	ldr	r3, .L70+28
	ldr	r3, [r3, #0]
	cmp	r3, #3
	bgt	.L69
	ldmfd	sp!, {r4, lr}
	bx	lr
.L69:
	ldmfd	sp!, {r4, lr}
	b	goToLose
.L67:
	ldr	r3, .L70+32
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r4, lr}
	b	goToPause
.L68:
	ldmfd	sp!, {r4, lr}
	b	goToWin
.L71:
	.align	2
.L70:
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	.LANCHOR0
	.word	oldButtons
	.word	buttons
	.word	winner
	.word	loser
	.word	pauseSound
	.size	game, .-game
	.global	hOff
	.global	vOff
	.global	h1Off
	.global	v1Off
	.global	h2Off
	.global	v2Off
	.global	timer
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	soundA,32,4
	.comm	soundB,32,4
	.comm	state,4,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	" Start\000"
	.space	1
.LC1:
	.ascii	"ENTER \000"
	.space	1
.LC2:
	.ascii	"SPACE \000"
	.space	1
.LC3:
	.ascii	"Instructions\000"
	.space	3
.LC4:
	.ascii	"Getting Some Zs\000"
.LC5:
	.ascii	"Enter- return to game\000"
	.space	2
.LC6:
	.ascii	"Space- return to start\000"
	.space	1
.LC7:
	.ascii	"You Won!\000"
	.space	3
.LC8:
	.ascii	"Enter to Play again :D\000"
	.space	1
.LC9:
	.ascii	"Your too dirty :(\000"
	.space	2
.LC10:
	.ascii	"Enter to restart\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.type	h1Off, %object
	.size	h1Off, 4
h1Off:
	.space	4
	.type	v1Off, %object
	.size	v1Off, 4
v1Off:
	.space	4
	.type	h2Off, %object
	.size	h2Off, 4
h2Off:
	.space	4
	.type	v2Off, %object
	.size	v2Off, 4
v2Off:
	.space	4
	.type	timer, %object
	.size	timer, 4
timer:
	.space	4
	.ident	"GCC: (devkitARM release 31) 4.5.0"
