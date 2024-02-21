	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"memory.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.global	set_value
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	set_value, %function
set_value:
.LFB0:
	.file 1 "memory.c"
	.loc 1 28 59
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	.loc 1 29 6
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	.loc 1 29 14
	ldrb	r2, [r7, #7]
	strb	r2, [r3]
	.loc 1 30 1
	nop
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE0:
	.size	set_value, .-set_value
	.align	1
	.global	clear_value
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	clear_value, %function
clear_value:
.LFB1:
	.loc 1 32 49
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 33 3
	movs	r2, #0
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	set_value
	.loc 1 34 1
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE1:
	.size	clear_value, .-clear_value
	.align	1
	.global	get_value
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	get_value, %function
get_value:
.LFB2:
	.loc 1 36 47
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 37 13
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 38 1
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE2:
	.size	get_value, .-get_value
	.align	1
	.global	set_all
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	set_all, %function
set_all:
.LFB3:
	.loc 1 40 56
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	.loc 1 42 9
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 42 3
	b	.L6
.L7:
	.loc 1 43 5 discriminator 3
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #12]
	bl	set_value
	.loc 1 42 25 discriminator 3
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L6:
	.loc 1 42 3 discriminator 1
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L7
	.loc 1 45 1
	nop
	nop
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE3:
	.size	set_all, .-set_all
	.align	1
	.global	clear_all
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	clear_all, %function
clear_all:
.LFB4:
	.loc 1 47 46
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 48 3
	ldr	r2, [r7]
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	set_all
	.loc 1 49 1
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE4:
	.size	clear_all, .-clear_all
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x16a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF8
	.byte	0xc
	.4byte	.LASF9
	.4byte	.LASF10
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x1
	.byte	0x2f
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a
	.uleb128 0x3
	.ascii	"ptr\000"
	.byte	0x1
	.byte	0x2f
	.byte	0x17
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x4
	.4byte	.LASF0
	.byte	0x1
	.byte	0x2f
	.byte	0x29
	.4byte	0x67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x60
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x1
	.byte	0x28
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf
	.uleb128 0x3
	.ascii	"ptr\000"
	.byte	0x1
	.byte	0x28
	.byte	0x15
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x1
	.byte	0x28
	.byte	0x1f
	.4byte	0x60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x4
	.4byte	.LASF0
	.byte	0x1
	.byte	0x28
	.byte	0x33
	.4byte	0x67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.ascii	"i\000"
	.byte	0x1
	.byte	0x29
	.byte	0x10
	.4byte	0x67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.4byte	0x60
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf8
	.uleb128 0x3
	.ascii	"ptr\000"
	.byte	0x1
	.byte	0x24
	.byte	0x17
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x1
	.byte	0x24
	.byte	0x29
	.4byte	0x67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12d
	.uleb128 0x3
	.ascii	"ptr\000"
	.byte	0x1
	.byte	0x20
	.byte	0x19
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x1
	.byte	0x20
	.byte	0x2b
	.4byte	0x67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.ascii	"ptr\000"
	.byte	0x1
	.byte	0x1c
	.byte	0x17
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x1
	.byte	0x1c
	.byte	0x29
	.4byte	0x67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x1
	.byte	0x1c
	.byte	0x35
	.4byte	0x60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF8:
	.ascii	"GNU C99 10.3.1 20210621 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -march=ar"
	.ascii	"mv7e-m+fp -g -O0 -std=c99\000"
.LASF3:
	.ascii	"clear_all\000"
.LASF10:
	.ascii	"/home/poorna/ese-coursera-course1/assessments/m2/sr"
	.ascii	"c\000"
.LASF2:
	.ascii	"unsigned int\000"
.LASF11:
	.ascii	"get_value\000"
.LASF5:
	.ascii	"value\000"
.LASF4:
	.ascii	"set_all\000"
.LASF6:
	.ascii	"index\000"
.LASF12:
	.ascii	"set_value\000"
.LASF0:
	.ascii	"size\000"
.LASF7:
	.ascii	"clear_value\000"
.LASF9:
	.ascii	"memory.c\000"
.LASF1:
	.ascii	"char\000"
	.ident	"GCC: (15:10.3-2021.07-4) 10.3.1 20210621 (release)"
