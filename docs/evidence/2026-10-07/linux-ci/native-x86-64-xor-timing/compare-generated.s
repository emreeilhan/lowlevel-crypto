	.text
	.file	"ct_compare.c"
	.file	0 "/home/runner/work/lowlevel-crypto/lowlevel-crypto" "05-constant-time/ct_compare.c" md5 0x5aaf433055182d0be33fc3fd5d2b005a
	.file	1 "05-constant-time/../include" "lab_status.h" md5 0xdf6d340501e8ba3ccb72a16d75d9200e
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xe1865d9fe29fe1b5ced550b7ba458f9e
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x256fcabbefa27ca8cf5e6d37525e6e16
	.file	4 "/usr/include" "stdint.h" md5 0xbfb03fa9c46a839e35c32b929fbdbb8e
	.globl	compare_full_scan               # -- Begin function compare_full_scan
	.p2align	4, 0x90
	.type	compare_full_scan,@function
compare_full_scan:                      # @compare_full_scan
.Lfunc_begin0:
	.loc	0 8 0                           # 05-constant-time/ct_compare.c:8:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	#DEBUG_VALUE: validate_compare:a <- $rdi
	#DEBUG_VALUE: validate_compare:b <- $rsi
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- $rcx
	movl	$1, %eax
.Ltmp0:
	.loc	0 3 15 prologue_end             # 05-constant-time/ct_compare.c:3:15
	testq	%rcx, %rcx
	.loc	0 3 23 is_stmt 0                # 05-constant-time/ct_compare.c:3:23
	je	.LBB0_21
.Ltmp1:
# %bb.1:
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	#DEBUG_VALUE: validate_compare:a <- $rdi
	#DEBUG_VALUE: validate_compare:b <- $rsi
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- $rcx
	.loc	0 3 34                          # 05-constant-time/ct_compare.c:3:34
	testq	%rdx, %rdx
	.loc	0 3 39                          # 05-constant-time/ct_compare.c:3:39
	je	.LBB0_2
.Ltmp2:
# %bb.3:
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	#DEBUG_VALUE: validate_compare:a <- $rdi
	#DEBUG_VALUE: validate_compare:b <- $rsi
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- $rcx
	.loc	0 3 45                          # 05-constant-time/ct_compare.c:3:45
	testq	%rdi, %rdi
	.loc	0 3 53                          # 05-constant-time/ct_compare.c:3:53
	je	.LBB0_21
.Ltmp3:
# %bb.4:
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	#DEBUG_VALUE: validate_compare:a <- $rdi
	#DEBUG_VALUE: validate_compare:b <- $rsi
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- $rcx
	testq	%rsi, %rsi
	je	.LBB0_21
.Ltmp4:
# %bb.5:
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	#DEBUG_VALUE: validate_compare:a <- $rdi
	#DEBUG_VALUE: validate_compare:b <- $rsi
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:a <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:an <- 1
	#DEBUG_VALUE: lab_ranges_overlap:b <- $rdi
	#DEBUG_VALUE: lab_ranges_overlap:bn <- $rdx
	#DEBUG_VALUE: lab_ranges_overlap:aa <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rdi
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rdi
	#DEBUG_VALUE: lab_ranges_overlap:aa <- $rcx
	.loc	1 18 15 is_stmt 1               # 05-constant-time/../include/lab_status.h:18:15
	movq	%rcx, %rax
	subq	%rdi, %rax
	.loc	1 18 12 is_stmt 0               # 05-constant-time/../include/lab_status.h:18:12
	xorl	%r8d, %r8d
	cmpq	%rdx, %rax
	setae	%r8b
	xorl	%eax, %eax
	.loc	1 18 15                         # 05-constant-time/../include/lab_status.h:18:15
	cmpq	%rdi, %rcx
	.loc	1 18 12                         # 05-constant-time/../include/lab_status.h:18:12
	setne	%al
	cmovbel	%eax, %r8d
	movl	$4, %eax
.Ltmp5:
	.loc	0 4 62 is_stmt 1                # 05-constant-time/ct_compare.c:4:62
	cmpb	$1, %r8b
	jne	.LBB0_21
.Ltmp6:
# %bb.6:
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	#DEBUG_VALUE: validate_compare:a <- $rdi
	#DEBUG_VALUE: validate_compare:b <- $rsi
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:a <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:an <- 1
	#DEBUG_VALUE: lab_ranges_overlap:b <- $rsi
	#DEBUG_VALUE: lab_ranges_overlap:bn <- $rdx
	#DEBUG_VALUE: lab_ranges_overlap:aa <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rsi
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rsi
	.loc	1 18 15                         # 05-constant-time/../include/lab_status.h:18:15
	movq	%rcx, %r8
	subq	%rsi, %r8
	.loc	1 18 12 is_stmt 0               # 05-constant-time/../include/lab_status.h:18:12
	xorl	%r9d, %r9d
	cmpq	%rdx, %r8
	setae	%r9b
	xorl	%r8d, %r8d
	.loc	1 18 15                         # 05-constant-time/../include/lab_status.h:18:15
	cmpq	%rsi, %rcx
	.loc	1 18 12                         # 05-constant-time/../include/lab_status.h:18:12
	setne	%r8b
	cmovbel	%r8d, %r9d
.Ltmp7:
	.loc	0 4 9 is_stmt 1                 # 05-constant-time/ct_compare.c:4:9
	cmpb	$1, %r9b
	#DEBUG_VALUE: lab_ranges_overlap:aa <- $rcx
	jne	.LBB0_21
.Ltmp8:
# %bb.7:
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	.loc	0 12 5                          # 05-constant-time/ct_compare.c:12:5
	cmpq	$8, %rdx
	jae	.LBB0_10
.Ltmp9:
# %bb.8:
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	.loc	0 0 5 is_stmt 0                 # 05-constant-time/ct_compare.c:0:5
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	jmp	.LBB0_9
.Ltmp10:
.LBB0_2:
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	#DEBUG_VALUE: validate_compare:a <- $rdi
	#DEBUG_VALUE: validate_compare:b <- $rsi
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- $rcx
	movb	$1, %al
.Ltmp11:
.LBB0_20:
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	.loc	0 13 12 is_stmt 1               # 05-constant-time/ct_compare.c:13:12
	movb	%al, (%rcx)
	xorl	%eax, %eax
.Ltmp12:
.LBB0_21:
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	.loc	0 15 1                          # 05-constant-time/ct_compare.c:15:1
	retq
.Ltmp13:
.LBB0_10:
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	.loc	0 12 5                          # 05-constant-time/ct_compare.c:12:5
	cmpq	$32, %rdx
	jae	.LBB0_12
.Ltmp14:
# %bb.11:
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	.loc	0 0 5 is_stmt 0                 # 05-constant-time/ct_compare.c:0:5
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	jmp	.LBB0_16
.Ltmp15:
.LBB0_12:
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	.loc	0 12 5                          # 05-constant-time/ct_compare.c:12:5
	movq	%rdx, %rax
	andq	$-32, %rax
	pxor	%xmm0, %xmm0
	xorl	%r8d, %r8d
	pxor	%xmm1, %xmm1
.Ltmp16:
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	.loc	0 12 65                         # 05-constant-time/ct_compare.c:12:65
	movdqu	(%rdi,%r8), %xmm2
	movdqu	16(%rdi,%r8), %xmm3
	.loc	0 12 72                         # 05-constant-time/ct_compare.c:12:72
	movdqu	(%rsi,%r8), %xmm4
	.loc	0 12 70                         # 05-constant-time/ct_compare.c:12:70
	pxor	%xmm2, %xmm4
	.loc	0 12 52                         # 05-constant-time/ct_compare.c:12:52
	por	%xmm4, %xmm0
	.loc	0 12 72                         # 05-constant-time/ct_compare.c:12:72
	movdqu	16(%rsi,%r8), %xmm2
	.loc	0 12 70                         # 05-constant-time/ct_compare.c:12:70
	pxor	%xmm3, %xmm2
	.loc	0 12 52                         # 05-constant-time/ct_compare.c:12:52
	por	%xmm2, %xmm1
	.loc	0 12 36                         # 05-constant-time/ct_compare.c:12:36
	addq	$32, %r8
	cmpq	%r8, %rax
	jne	.LBB0_13
.Ltmp17:
# %bb.14:
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	.loc	0 12 5                          # 05-constant-time/ct_compare.c:12:5
	por	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	por	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$16, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrlw	$8, %xmm1
	por	%xmm0, %xmm1
	movd	%xmm1, %r8d
	cmpq	%rdx, %rax
	je	.LBB0_19
.Ltmp18:
# %bb.15:
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	testb	$24, %dl
	je	.LBB0_9
.Ltmp19:
.LBB0_16:
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	.loc	0 0 5                           # 05-constant-time/ct_compare.c:0:5
	movq	%rax, %r9
	.loc	0 12 5                          # 05-constant-time/ct_compare.c:12:5
	movq	%rdx, %rax
	andq	$-8, %rax
	movzbl	%r8b, %r8d
	movd	%r8d, %xmm0
.Ltmp20:
	.p2align	4, 0x90
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	.loc	0 12 72                         # 05-constant-time/ct_compare.c:12:72
	movq	(%rsi,%r9), %r8
	.loc	0 12 70                         # 05-constant-time/ct_compare.c:12:70
	xorq	(%rdi,%r9), %r8
	movq	%r8, %xmm1
	.loc	0 12 52                         # 05-constant-time/ct_compare.c:12:52
	por	%xmm1, %xmm0
	.loc	0 12 36                         # 05-constant-time/ct_compare.c:12:36
	addq	$8, %r9
	cmpq	%r9, %rax
	jne	.LBB0_17
.Ltmp21:
# %bb.18:
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	.loc	0 12 5                          # 05-constant-time/ct_compare.c:12:5
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$16, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrlw	$8, %xmm1
	por	%xmm0, %xmm1
	movd	%xmm1, %r8d
	cmpq	%rdx, %rax
	je	.LBB0_19
.Ltmp22:
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	#DEBUG_VALUE: i <- $rax
	#DEBUG_VALUE: compare_full_scan:difference <- undef
	.loc	0 12 72                         # 05-constant-time/ct_compare.c:12:72
	movzbl	(%rsi,%rax), %r9d
	.loc	0 12 70                         # 05-constant-time/ct_compare.c:12:70
	xorb	(%rdi,%rax), %r9b
	.loc	0 12 52                         # 05-constant-time/ct_compare.c:12:52
	orb	%r9b, %r8b
.Ltmp23:
	#DEBUG_VALUE: compare_full_scan:difference <- $r8b
	.loc	0 12 36                         # 05-constant-time/ct_compare.c:12:36
	incq	%rax
.Ltmp24:
	#DEBUG_VALUE: i <- $rax
	.loc	0 12 26                         # 05-constant-time/ct_compare.c:12:26
	cmpq	%rax, %rdx
.Ltmp25:
	.loc	0 12 5                          # 05-constant-time/ct_compare.c:12:5
	jne	.LBB0_9
.Ltmp26:
.LBB0_19:
	#DEBUG_VALUE: compare_full_scan:a <- $rdi
	#DEBUG_VALUE: compare_full_scan:b <- $rsi
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- $rcx
	.loc	0 13 25 is_stmt 1               # 05-constant-time/ct_compare.c:13:25
	testb	%r8b, %r8b
	sete	%al
	jmp	.LBB0_20
.Ltmp27:
.Lfunc_end0:
	.size	compare_full_scan, .Lfunc_end0-compare_full_scan
	.cfi_endproc
	.file	5 "/usr/lib/llvm-18/lib/clang/18/include" "__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
                                        # -- End function
	.globl	compare_early_exit              # -- Begin function compare_early_exit
	.p2align	4, 0x90
	.type	compare_early_exit,@function
compare_early_exit:                     # @compare_early_exit
.Lfunc_begin1:
	.loc	0 16 0                          # 05-constant-time/ct_compare.c:16:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: compare_early_exit:a <- $rdi
	#DEBUG_VALUE: compare_early_exit:b <- $rsi
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- $rcx
	#DEBUG_VALUE: validate_compare:a <- $rdi
	#DEBUG_VALUE: validate_compare:b <- $rsi
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- $rcx
	movl	$1, %eax
.Ltmp28:
	.loc	0 3 15 prologue_end             # 05-constant-time/ct_compare.c:3:15
	testq	%rcx, %rcx
	.loc	0 3 23 is_stmt 0                # 05-constant-time/ct_compare.c:3:23
	je	.LBB1_11
.Ltmp29:
# %bb.1:
	#DEBUG_VALUE: compare_early_exit:a <- $rdi
	#DEBUG_VALUE: compare_early_exit:b <- $rsi
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- $rcx
	#DEBUG_VALUE: validate_compare:a <- $rdi
	#DEBUG_VALUE: validate_compare:b <- $rsi
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- $rcx
	.loc	0 0 23                          # 05-constant-time/ct_compare.c:0:23
	movb	$1, %r8b
	.loc	0 3 34                          # 05-constant-time/ct_compare.c:3:34
	testq	%rdx, %rdx
	.loc	0 3 39                          # 05-constant-time/ct_compare.c:3:39
	je	.LBB1_10
.Ltmp30:
# %bb.2:
	#DEBUG_VALUE: compare_early_exit:a <- $rdi
	#DEBUG_VALUE: compare_early_exit:b <- $rsi
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- $rcx
	#DEBUG_VALUE: validate_compare:a <- $rdi
	#DEBUG_VALUE: validate_compare:b <- $rsi
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- $rcx
	.loc	0 3 45                          # 05-constant-time/ct_compare.c:3:45
	testq	%rdi, %rdi
	.loc	0 3 53                          # 05-constant-time/ct_compare.c:3:53
	je	.LBB1_11
.Ltmp31:
# %bb.3:
	#DEBUG_VALUE: compare_early_exit:a <- $rdi
	#DEBUG_VALUE: compare_early_exit:b <- $rsi
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- $rcx
	#DEBUG_VALUE: validate_compare:a <- $rdi
	#DEBUG_VALUE: validate_compare:b <- $rsi
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- $rcx
	testq	%rsi, %rsi
	je	.LBB1_11
.Ltmp32:
# %bb.4:
	#DEBUG_VALUE: compare_early_exit:a <- $rdi
	#DEBUG_VALUE: compare_early_exit:b <- $rsi
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- $rcx
	#DEBUG_VALUE: validate_compare:a <- $rdi
	#DEBUG_VALUE: validate_compare:b <- $rsi
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:a <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:an <- 1
	#DEBUG_VALUE: lab_ranges_overlap:b <- $rdi
	#DEBUG_VALUE: lab_ranges_overlap:bn <- $rdx
	#DEBUG_VALUE: lab_ranges_overlap:aa <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rdi
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rdi
	#DEBUG_VALUE: lab_ranges_overlap:aa <- $rcx
	.loc	1 18 15 is_stmt 1               # 05-constant-time/../include/lab_status.h:18:15
	movq	%rcx, %rax
	subq	%rdi, %rax
	.loc	1 18 12 is_stmt 0               # 05-constant-time/../include/lab_status.h:18:12
	xorl	%r9d, %r9d
	cmpq	%rdx, %rax
	setae	%r9b
	xorl	%eax, %eax
	.loc	1 18 15                         # 05-constant-time/../include/lab_status.h:18:15
	cmpq	%rdi, %rcx
	.loc	1 18 12                         # 05-constant-time/../include/lab_status.h:18:12
	setne	%al
	cmovbel	%eax, %r9d
	movl	$4, %eax
.Ltmp33:
	.loc	0 4 62 is_stmt 1                # 05-constant-time/ct_compare.c:4:62
	cmpb	$1, %r9b
	jne	.LBB1_11
.Ltmp34:
# %bb.5:
	#DEBUG_VALUE: compare_early_exit:a <- $rdi
	#DEBUG_VALUE: compare_early_exit:b <- $rsi
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- $rcx
	#DEBUG_VALUE: validate_compare:a <- $rdi
	#DEBUG_VALUE: validate_compare:b <- $rsi
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:a <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:an <- 1
	#DEBUG_VALUE: lab_ranges_overlap:b <- $rsi
	#DEBUG_VALUE: lab_ranges_overlap:bn <- $rdx
	#DEBUG_VALUE: lab_ranges_overlap:aa <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rsi
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rsi
	.loc	1 18 15                         # 05-constant-time/../include/lab_status.h:18:15
	movq	%rcx, %r9
	subq	%rsi, %r9
	.loc	1 18 12 is_stmt 0               # 05-constant-time/../include/lab_status.h:18:12
	xorl	%r10d, %r10d
	cmpq	%rdx, %r9
	setae	%r10b
	xorl	%r9d, %r9d
	.loc	1 18 15                         # 05-constant-time/../include/lab_status.h:18:15
	cmpq	%rsi, %rcx
	.loc	1 18 12                         # 05-constant-time/../include/lab_status.h:18:12
	setne	%r9b
	cmovbel	%r9d, %r10d
.Ltmp35:
	.loc	0 4 9 is_stmt 1                 # 05-constant-time/ct_compare.c:4:9
	cmpb	$1, %r10b
	#DEBUG_VALUE: lab_ranges_overlap:aa <- $rcx
	jne	.LBB1_11
.Ltmp36:
# %bb.6:
	#DEBUG_VALUE: compare_early_exit:a <- $rdi
	#DEBUG_VALUE: compare_early_exit:b <- $rsi
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- $rcx
	#DEBUG_VALUE: validate_compare:a <- $rdi
	#DEBUG_VALUE: validate_compare:b <- $rsi
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:a <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:an <- 1
	#DEBUG_VALUE: lab_ranges_overlap:b <- $rsi
	#DEBUG_VALUE: lab_ranges_overlap:bn <- $rdx
	#DEBUG_VALUE: lab_ranges_overlap:aa <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rsi
	.loc	0 0 9 is_stmt 0                 # 05-constant-time/ct_compare.c:0:9
	xorl	%eax, %eax
.Ltmp37:
	.p2align	4, 0x90
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: compare_early_exit:a <- $rdi
	#DEBUG_VALUE: compare_early_exit:b <- $rsi
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- $rcx
	#DEBUG_VALUE: i <- $rax
	.loc	0 20 13 is_stmt 1               # 05-constant-time/ct_compare.c:20:13
	movzbl	(%rdi,%rax), %r9d
	.loc	0 20 18 is_stmt 0               # 05-constant-time/ct_compare.c:20:18
	cmpb	(%rsi,%rax), %r9b
.Ltmp38:
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	.loc	0 20 13                         # 05-constant-time/ct_compare.c:20:13
	jne	.LBB1_9
.Ltmp39:
# %bb.7:                                #   in Loop: Header=BB1_8 Depth=1
	#DEBUG_VALUE: compare_early_exit:a <- $rdi
	#DEBUG_VALUE: compare_early_exit:b <- $rsi
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- $rcx
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	.loc	0 19 36 is_stmt 1               # 05-constant-time/ct_compare.c:19:36
	incq	%rax
.Ltmp40:
	#DEBUG_VALUE: i <- $rax
	.loc	0 19 26 is_stmt 0               # 05-constant-time/ct_compare.c:19:26
	cmpq	%rax, %rdx
	jne	.LBB1_8
	jmp	.LBB1_10
.Ltmp41:
.LBB1_9:
	#DEBUG_VALUE: compare_early_exit:a <- $rdi
	#DEBUG_VALUE: compare_early_exit:b <- $rsi
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- $rcx
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	.loc	0 0 26                          # 05-constant-time/ct_compare.c:0:26
	xorl	%r8d, %r8d
.Ltmp42:
.LBB1_10:
	#DEBUG_VALUE: compare_early_exit:a <- $rdi
	#DEBUG_VALUE: compare_early_exit:b <- $rsi
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- $rcx
	#DEBUG_VALUE: validate_compare:a <- $rdi
	#DEBUG_VALUE: validate_compare:b <- $rsi
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- $rcx
	movb	%r8b, (%rcx)
	xorl	%eax, %eax
.Ltmp43:
.LBB1_11:
	#DEBUG_VALUE: compare_early_exit:a <- $rdi
	#DEBUG_VALUE: compare_early_exit:b <- $rsi
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- $rcx
	.loc	0 23 1 is_stmt 1                # 05-constant-time/ct_compare.c:23:1
	retq
.Ltmp44:
.Lfunc_end1:
	.size	compare_early_exit, .Lfunc_end1-compare_early_exit
	.cfi_endproc
                                        # -- End function
	.globl	insecure_compare                # -- Begin function insecure_compare
	.p2align	4, 0x90
	.type	insecure_compare,@function
insecure_compare:                       # @insecure_compare
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: insecure_compare:a <- $rdi
	#DEBUG_VALUE: insecure_compare:b <- $rsi
	#DEBUG_VALUE: insecure_compare:n <- $rdx
	#DEBUG_VALUE: insecure_compare:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_deref] $rsp
	#DEBUG_VALUE: insecure_compare:equal <- 0
	#DEBUG_VALUE: compare_early_exit:a <- undef
	#DEBUG_VALUE: compare_early_exit:b <- undef
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: validate_compare:a <- undef
	#DEBUG_VALUE: validate_compare:b <- undef
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	.loc	0 3 34 prologue_end             # 05-constant-time/ct_compare.c:3:34
	testq	%rdx, %rdx
	.loc	0 3 39 is_stmt 0                # 05-constant-time/ct_compare.c:3:39
	je	.LBB2_8
.Ltmp45:
# %bb.1:
	#DEBUG_VALUE: insecure_compare:a <- $rdi
	#DEBUG_VALUE: insecure_compare:b <- $rsi
	#DEBUG_VALUE: insecure_compare:n <- $rdx
	#DEBUG_VALUE: insecure_compare:equal <- 0
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	.loc	0 0 39                          # 05-constant-time/ct_compare.c:0:39
	xorl	%eax, %eax
	.loc	0 3 45                          # 05-constant-time/ct_compare.c:3:45
	testq	%rdi, %rdi
	.loc	0 3 53                          # 05-constant-time/ct_compare.c:3:53
	je	.LBB2_12
.Ltmp46:
# %bb.2:
	#DEBUG_VALUE: insecure_compare:a <- $rdi
	#DEBUG_VALUE: insecure_compare:b <- $rsi
	#DEBUG_VALUE: insecure_compare:n <- $rdx
	#DEBUG_VALUE: insecure_compare:equal <- 0
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	testq	%rsi, %rsi
	je	.LBB2_12
.Ltmp47:
# %bb.3:
	#DEBUG_VALUE: insecure_compare:a <- $rdi
	#DEBUG_VALUE: insecure_compare:b <- $rsi
	#DEBUG_VALUE: insecure_compare:n <- $rdx
	#DEBUG_VALUE: insecure_compare:equal <- 0
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: lab_ranges_overlap:an <- 1
	#DEBUG_VALUE: lab_ranges_overlap:a <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: lab_ranges_overlap:b <- $rdi
	#DEBUG_VALUE: lab_ranges_overlap:bn <- $rdx
	#DEBUG_VALUE: lab_ranges_overlap:aa <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rdi
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rdi
	.loc	0 0 53                          # 05-constant-time/ct_compare.c:0:53
	leaq	-1(%rsp), %rcx
	#DEBUG_VALUE: lab_ranges_overlap:aa <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
.Ltmp48:
	.loc	1 18 15 is_stmt 1               # 05-constant-time/../include/lab_status.h:18:15
	movq	%rcx, %r8
	subq	%rdi, %r8
	.loc	1 18 12 is_stmt 0               # 05-constant-time/../include/lab_status.h:18:12
	xorl	%r9d, %r9d
	cmpq	%rdx, %r8
	setae	%r9b
	xorl	%r8d, %r8d
	.loc	1 18 15                         # 05-constant-time/../include/lab_status.h:18:15
	cmpq	%rdi, %rcx
	.loc	1 18 12                         # 05-constant-time/../include/lab_status.h:18:12
	setne	%r8b
	cmovbel	%r8d, %r9d
.Ltmp49:
	.loc	0 4 62 is_stmt 1                # 05-constant-time/ct_compare.c:4:62
	cmpb	$1, %r9b
	jne	.LBB2_12
.Ltmp50:
# %bb.4:
	#DEBUG_VALUE: insecure_compare:a <- $rdi
	#DEBUG_VALUE: insecure_compare:b <- $rsi
	#DEBUG_VALUE: insecure_compare:n <- $rdx
	#DEBUG_VALUE: insecure_compare:equal <- 0
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: lab_ranges_overlap:a <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: lab_ranges_overlap:an <- 1
	#DEBUG_VALUE: lab_ranges_overlap:b <- $rsi
	#DEBUG_VALUE: lab_ranges_overlap:bn <- $rdx
	#DEBUG_VALUE: lab_ranges_overlap:aa <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rsi
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rsi
	.loc	1 18 15                         # 05-constant-time/../include/lab_status.h:18:15
	movq	%rcx, %r8
	subq	%rsi, %r8
	.loc	1 18 12 is_stmt 0               # 05-constant-time/../include/lab_status.h:18:12
	xorl	%r9d, %r9d
	cmpq	%rdx, %r8
	setae	%r9b
	xorl	%r8d, %r8d
	.loc	1 18 15                         # 05-constant-time/../include/lab_status.h:18:15
	cmpq	%rsi, %rcx
	.loc	1 18 12                         # 05-constant-time/../include/lab_status.h:18:12
	setne	%r8b
	cmovbel	%r8d, %r9d
	movl	$0, %ecx
.Ltmp51:
	.loc	0 4 9 is_stmt 1                 # 05-constant-time/ct_compare.c:4:9
	cmpb	$1, %r9b
	#DEBUG_VALUE: lab_ranges_overlap:aa <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	jne	.LBB2_10
.Ltmp52:
# %bb.5:
	#DEBUG_VALUE: insecure_compare:a <- $rdi
	#DEBUG_VALUE: insecure_compare:b <- $rsi
	#DEBUG_VALUE: insecure_compare:n <- $rdx
	#DEBUG_VALUE: insecure_compare:equal <- 0
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: lab_ranges_overlap:a <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: lab_ranges_overlap:an <- 1
	#DEBUG_VALUE: lab_ranges_overlap:b <- $rsi
	#DEBUG_VALUE: lab_ranges_overlap:bn <- $rdx
	#DEBUG_VALUE: lab_ranges_overlap:aa <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rsi
	.loc	0 0 9 is_stmt 0                 # 05-constant-time/ct_compare.c:0:9
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.Ltmp53:
	.p2align	4, 0x90
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: insecure_compare:a <- $rdi
	#DEBUG_VALUE: insecure_compare:b <- $rsi
	#DEBUG_VALUE: insecure_compare:n <- $rdx
	#DEBUG_VALUE: insecure_compare:equal <- 0
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- $rcx
	.loc	0 20 13 is_stmt 1               # 05-constant-time/ct_compare.c:20:13
	movzbl	(%rdi,%rcx), %r8d
	.loc	0 20 18 is_stmt 0               # 05-constant-time/ct_compare.c:20:18
	cmpb	(%rsi,%rcx), %r8b
.Ltmp54:
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rcx
	.loc	0 20 13                         # 05-constant-time/ct_compare.c:20:13
	jne	.LBB2_9
.Ltmp55:
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	#DEBUG_VALUE: insecure_compare:a <- $rdi
	#DEBUG_VALUE: insecure_compare:b <- $rsi
	#DEBUG_VALUE: insecure_compare:n <- $rdx
	#DEBUG_VALUE: insecure_compare:equal <- 0
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rcx
	.loc	0 19 36 is_stmt 1               # 05-constant-time/ct_compare.c:19:36
	incq	%rcx
.Ltmp56:
	#DEBUG_VALUE: i <- $rcx
	.loc	0 19 26 is_stmt 0               # 05-constant-time/ct_compare.c:19:26
	cmpq	%rcx, %rdx
.Ltmp57:
	.loc	0 19 5                          # 05-constant-time/ct_compare.c:19:5
	jne	.LBB2_6
.Ltmp58:
.LBB2_8:
	#DEBUG_VALUE: insecure_compare:a <- $rdi
	#DEBUG_VALUE: insecure_compare:b <- $rsi
	#DEBUG_VALUE: insecure_compare:n <- $rdx
	#DEBUG_VALUE: insecure_compare:equal <- 0
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	.loc	0 0 5                           # 05-constant-time/ct_compare.c:0:5
	movl	$1, %eax
.Ltmp59:
.LBB2_9:
	#DEBUG_VALUE: insecure_compare:a <- $rdi
	#DEBUG_VALUE: insecure_compare:b <- $rsi
	#DEBUG_VALUE: insecure_compare:n <- $rdx
	#DEBUG_VALUE: insecure_compare:equal <- 0
	#DEBUG_VALUE: compare_early_exit:length <- $rdx
	#DEBUG_VALUE: compare_early_exit:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	movl	$1, %ecx
.Ltmp60:
.LBB2_10:
	#DEBUG_VALUE: insecure_compare:a <- $rdi
	#DEBUG_VALUE: insecure_compare:b <- $rsi
	#DEBUG_VALUE: insecure_compare:n <- $rdx
	#DEBUG_VALUE: insecure_compare:equal <- 0
	.loc	0 26 58 is_stmt 1               # 05-constant-time/ct_compare.c:26:58
	andl	%ecx, %eax
                                        # kill: def $eax killed $eax killed $rax
	.loc	0 26 5 is_stmt 0                # 05-constant-time/ct_compare.c:26:5
	retq
.Ltmp61:
.LBB2_12:
	#DEBUG_VALUE: insecure_compare:a <- $rdi
	#DEBUG_VALUE: insecure_compare:b <- $rsi
	#DEBUG_VALUE: insecure_compare:n <- $rdx
	#DEBUG_VALUE: insecure_compare:equal <- 0
	.loc	0 0 5                           # 05-constant-time/ct_compare.c:0:5
	xorl	%ecx, %ecx
	.loc	0 26 58                         # 05-constant-time/ct_compare.c:26:58
	andl	%ecx, %eax
                                        # kill: def $eax killed $eax killed $rax
	.loc	0 26 5                          # 05-constant-time/ct_compare.c:26:5
	retq
.Ltmp62:
.Lfunc_end2:
	.size	insecure_compare, .Lfunc_end2-insecure_compare
	.cfi_endproc
                                        # -- End function
	.globl	constant_time_compare           # -- Begin function constant_time_compare
	.p2align	4, 0x90
	.type	constant_time_compare,@function
constant_time_compare:                  # @constant_time_compare
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_deref] $rsp
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	#DEBUG_VALUE: compare_full_scan:a <- undef
	#DEBUG_VALUE: compare_full_scan:b <- undef
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: validate_compare:a <- undef
	#DEBUG_VALUE: validate_compare:b <- undef
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	.loc	0 3 34 prologue_end is_stmt 1   # 05-constant-time/ct_compare.c:3:34
	testq	%rdx, %rdx
	.loc	0 3 39 is_stmt 0                # 05-constant-time/ct_compare.c:3:39
	je	.LBB3_1
.Ltmp63:
# %bb.2:
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	.loc	0 0 39                          # 05-constant-time/ct_compare.c:0:39
	xorl	%eax, %eax
	.loc	0 3 45                          # 05-constant-time/ct_compare.c:3:45
	testq	%rdi, %rdi
	.loc	0 3 53                          # 05-constant-time/ct_compare.c:3:53
	je	.LBB3_19
.Ltmp64:
# %bb.3:
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	testq	%rsi, %rsi
	je	.LBB3_19
.Ltmp65:
# %bb.4:
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: lab_ranges_overlap:an <- 1
	#DEBUG_VALUE: lab_ranges_overlap:a <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: lab_ranges_overlap:b <- $rdi
	#DEBUG_VALUE: lab_ranges_overlap:bn <- $rdx
	#DEBUG_VALUE: lab_ranges_overlap:aa <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rdi
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rdi
	.loc	0 0 53                          # 05-constant-time/ct_compare.c:0:53
	leaq	-1(%rsp), %rcx
	#DEBUG_VALUE: lab_ranges_overlap:aa <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
.Ltmp66:
	.loc	1 18 15 is_stmt 1               # 05-constant-time/../include/lab_status.h:18:15
	movq	%rcx, %r8
	subq	%rdi, %r8
	.loc	1 18 12 is_stmt 0               # 05-constant-time/../include/lab_status.h:18:12
	xorl	%r9d, %r9d
	cmpq	%rdx, %r8
	setae	%r9b
	xorl	%r8d, %r8d
	.loc	1 18 15                         # 05-constant-time/../include/lab_status.h:18:15
	cmpq	%rdi, %rcx
	.loc	1 18 12                         # 05-constant-time/../include/lab_status.h:18:12
	setne	%r8b
	cmovbel	%r8d, %r9d
.Ltmp67:
	.loc	0 4 62 is_stmt 1                # 05-constant-time/ct_compare.c:4:62
	cmpb	$1, %r9b
	jne	.LBB3_19
.Ltmp68:
# %bb.5:
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: validate_compare:length <- $rdx
	#DEBUG_VALUE: validate_compare:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: lab_ranges_overlap:a <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: lab_ranges_overlap:an <- 1
	#DEBUG_VALUE: lab_ranges_overlap:b <- $rsi
	#DEBUG_VALUE: lab_ranges_overlap:bn <- $rdx
	#DEBUG_VALUE: lab_ranges_overlap:aa <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rsi
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rsi
	.loc	1 18 15                         # 05-constant-time/../include/lab_status.h:18:15
	movq	%rcx, %r8
	subq	%rsi, %r8
	.loc	1 18 12 is_stmt 0               # 05-constant-time/../include/lab_status.h:18:12
	xorl	%r9d, %r9d
	cmpq	%rdx, %r8
	setae	%r9b
	xorl	%r8d, %r8d
	.loc	1 18 15                         # 05-constant-time/../include/lab_status.h:18:15
	cmpq	%rsi, %rcx
	.loc	1 18 12                         # 05-constant-time/../include/lab_status.h:18:12
	setne	%r8b
	cmovbel	%r8d, %r9d
.Ltmp69:
	.loc	0 4 9 is_stmt 1                 # 05-constant-time/ct_compare.c:4:9
	cmpb	$1, %r9b
	#DEBUG_VALUE: lab_ranges_overlap:aa <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	jne	.LBB3_19
.Ltmp70:
# %bb.6:
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	.loc	0 12 5                          # 05-constant-time/ct_compare.c:12:5
	cmpq	$8, %rdx
	jae	.LBB3_9
.Ltmp71:
# %bb.7:
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	.loc	0 0 5 is_stmt 0                 # 05-constant-time/ct_compare.c:0:5
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.LBB3_8
.Ltmp72:
.LBB3_1:
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	movl	$1, %eax
	.loc	0 30 5 is_stmt 1                # 05-constant-time/ct_compare.c:30:5
	retq
.Ltmp73:
.LBB3_9:
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	.loc	0 12 5                          # 05-constant-time/ct_compare.c:12:5
	cmpq	$32, %rdx
	jae	.LBB3_11
.Ltmp74:
# %bb.10:
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	.loc	0 0 5 is_stmt 0                 # 05-constant-time/ct_compare.c:0:5
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.LBB3_15
.Ltmp75:
.LBB3_11:
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	.loc	0 12 5                          # 05-constant-time/ct_compare.c:12:5
	movq	%rdx, %rax
	andq	$-32, %rax
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	pxor	%xmm1, %xmm1
.Ltmp76:
	.p2align	4, 0x90
.LBB3_12:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	.loc	0 12 65                         # 05-constant-time/ct_compare.c:12:65
	movdqu	(%rdi,%rcx), %xmm2
	movdqu	16(%rdi,%rcx), %xmm3
	.loc	0 12 72                         # 05-constant-time/ct_compare.c:12:72
	movdqu	(%rsi,%rcx), %xmm4
	.loc	0 12 70                         # 05-constant-time/ct_compare.c:12:70
	pxor	%xmm2, %xmm4
	.loc	0 12 52                         # 05-constant-time/ct_compare.c:12:52
	por	%xmm4, %xmm0
	.loc	0 12 72                         # 05-constant-time/ct_compare.c:12:72
	movdqu	16(%rsi,%rcx), %xmm2
	.loc	0 12 70                         # 05-constant-time/ct_compare.c:12:70
	pxor	%xmm3, %xmm2
	.loc	0 12 52                         # 05-constant-time/ct_compare.c:12:52
	por	%xmm2, %xmm1
	.loc	0 12 36                         # 05-constant-time/ct_compare.c:12:36
	addq	$32, %rcx
	cmpq	%rcx, %rax
	jne	.LBB3_12
.Ltmp77:
# %bb.13:
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	.loc	0 12 5                          # 05-constant-time/ct_compare.c:12:5
	por	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	por	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$16, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrlw	$8, %xmm1
	por	%xmm0, %xmm1
	movd	%xmm1, %ecx
	cmpq	%rdx, %rax
	je	.LBB3_18
.Ltmp78:
# %bb.14:
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	testb	$24, %dl
	je	.LBB3_8
.Ltmp79:
.LBB3_15:
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	.loc	0 0 5                           # 05-constant-time/ct_compare.c:0:5
	movq	%rax, %r8
	.loc	0 12 5                          # 05-constant-time/ct_compare.c:12:5
	movq	%rdx, %rax
	andq	$-8, %rax
	movzbl	%cl, %ecx
	movd	%ecx, %xmm0
.Ltmp80:
	.p2align	4, 0x90
.LBB3_16:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	.loc	0 12 72                         # 05-constant-time/ct_compare.c:12:72
	movq	(%rsi,%r8), %rcx
	.loc	0 12 70                         # 05-constant-time/ct_compare.c:12:70
	xorq	(%rdi,%r8), %rcx
	movq	%rcx, %xmm1
	.loc	0 12 52                         # 05-constant-time/ct_compare.c:12:52
	por	%xmm1, %xmm0
	.loc	0 12 36                         # 05-constant-time/ct_compare.c:12:36
	addq	$8, %r8
	cmpq	%r8, %rax
	jne	.LBB3_16
.Ltmp81:
# %bb.17:
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	.loc	0 12 5                          # 05-constant-time/ct_compare.c:12:5
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$16, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrlw	$8, %xmm1
	por	%xmm0, %xmm1
	movd	%xmm1, %ecx
	cmpq	%rdx, %rax
	je	.LBB3_18
.Ltmp82:
	.p2align	4, 0x90
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: i <- $rax
	#DEBUG_VALUE: compare_full_scan:difference <- undef
	.loc	0 12 72                         # 05-constant-time/ct_compare.c:12:72
	movzbl	(%rsi,%rax), %r8d
	.loc	0 12 70                         # 05-constant-time/ct_compare.c:12:70
	xorb	(%rdi,%rax), %r8b
	.loc	0 12 52                         # 05-constant-time/ct_compare.c:12:52
	orb	%r8b, %cl
.Ltmp83:
	#DEBUG_VALUE: compare_full_scan:difference <- $cl
	.loc	0 12 36                         # 05-constant-time/ct_compare.c:12:36
	incq	%rax
.Ltmp84:
	#DEBUG_VALUE: i <- $rax
	.loc	0 12 26                         # 05-constant-time/ct_compare.c:12:26
	cmpq	%rax, %rdx
.Ltmp85:
	.loc	0 12 5                          # 05-constant-time/ct_compare.c:12:5
	jne	.LBB3_8
.Ltmp86:
.LBB3_18:
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	#DEBUG_VALUE: compare_full_scan:length <- $rdx
	#DEBUG_VALUE: compare_full_scan:equal <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsp
	.loc	0 13 25 is_stmt 1               # 05-constant-time/ct_compare.c:13:25
	xorl	%eax, %eax
	testb	%cl, %cl
	sete	%al
.Ltmp87:
.LBB3_19:
	#DEBUG_VALUE: constant_time_compare:a <- $rdi
	#DEBUG_VALUE: constant_time_compare:b <- $rsi
	#DEBUG_VALUE: constant_time_compare:n <- $rdx
	#DEBUG_VALUE: constant_time_compare:equal <- 0
	.loc	0 30 5                          # 05-constant-time/ct_compare.c:30:5
	retq
.Ltmp88:
.Lfunc_end3:
	.size	constant_time_compare, .Lfunc_end3-constant_time_compare
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	8                               # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
	.long	.Ldebug_loc5-.Lloclists_table_base0
	.long	.Ldebug_loc6-.Lloclists_table_base0
	.long	.Ldebug_loc7-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_list_header_end0:
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	37                              # DW_FORM_strx1
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	114                             # DW_AT_str_offsets_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	37                              # DW_FORM_strx1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	115                             # DW_AT_addr_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	116                             # DW_AT_rnglists_base
	.byte	23                              # DW_FORM_sec_offset
	.ascii	"\214\001"                      # DW_AT_loclists_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	4                               # DW_TAG_enumeration_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x50b DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x21 DW_TAG_enumeration_type
	.long	76                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x33:0x3 DW_TAG_enumerator
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x36:0x3 DW_TAG_enumerator
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x39:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3c:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3f:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x42:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x45:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x48:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x4c:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x50:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	14                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x58:0x8 DW_TAG_typedef
	.long	96                              # DW_AT_type
	.byte	13                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x60:0x4 DW_TAG_base_type
	.byte	12                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x64:0x1 DW_TAG_pointer_type
	.byte	5                               # Abbrev [5] 0x65:0x8 DW_TAG_typedef
	.long	109                             # DW_AT_type
	.byte	16                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x6d:0x4 DW_TAG_base_type
	.byte	15                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x71:0x29 DW_TAG_subprogram
	.byte	17                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	154                             # DW_AT_type
                                        # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x79:0x8 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x81:0x8 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x89:0x8 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
	.long	172                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x91:0x8 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
	.long	180                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x9a:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	18                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa2:0x5 DW_TAG_pointer_type
	.long	167                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xa7:0x5 DW_TAG_const_type
	.long	80                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0xac:0x8 DW_TAG_typedef
	.long	109                             # DW_AT_type
	.byte	22                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb4:0x5 DW_TAG_pointer_type
	.long	185                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xb9:0x4 DW_TAG_base_type
	.byte	24                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0xbd:0x39 DW_TAG_subprogram
	.byte	25                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	246                             # DW_AT_type
                                        # DW_AT_inline
	.byte	8                               # Abbrev [8] 0xc5:0x8 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	250                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xcd:0x8 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	172                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xd5:0x8 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	250                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xdd:0x8 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	172                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xe5:0x8 DW_TAG_variable
	.byte	29                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	101                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xed:0x8 DW_TAG_variable
	.byte	30                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	101                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xf6:0x4 DW_TAG_base_type
	.byte	26                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0xfa:0x5 DW_TAG_pointer_type
	.long	255                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xff:0x1 DW_TAG_const_type
	.byte	13                              # Abbrev [13] 0x100:0xd5 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	985                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x10c:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	993                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x113:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	1001                            # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x11a:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	1009                            # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x121:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	1017                            # DW_AT_abstract_origin
	.byte	15                              # Abbrev [15] 0x128:0x6 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.long	1025                            # DW_AT_abstract_origin
	.byte	16                              # Abbrev [16] 0x12e:0x5 DW_TAG_variable
	.long	1033                            # DW_AT_abstract_origin
	.byte	17                              # Abbrev [17] 0x133:0x98 DW_TAG_inlined_subroutine
	.long	113                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp8-.Ltmp0                   # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	9                               # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x140:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	121                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x147:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	129                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x14e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	137                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x155:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	145                             # DW_AT_abstract_origin
	.byte	17                              # Abbrev [17] 0x15c:0x37 DW_TAG_inlined_subroutine
	.long	189                             # DW_AT_abstract_origin
	.byte	2                               # DW_AT_low_pc
	.long	.Ltmp5-.Ltmp4                   # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	4                               # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x169:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	197                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x170:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	205                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x176:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	213                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x17d:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	221                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x184:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	82
	.long	229                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x18b:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	237                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x193:0x37 DW_TAG_inlined_subroutine
	.long	189                             # DW_AT_abstract_origin
	.byte	3                               # DW_AT_low_pc
	.long	.Ltmp7-.Ltmp6                   # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	5                               # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x1a0:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	197                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x1a7:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	205                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x1ad:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	213                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x1b4:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	221                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x1bb:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	82
	.long	229                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x1c2:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	84
	.long	237                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x1cb:0x9 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	15                              # Abbrev [15] 0x1cd:0x6 DW_TAG_variable
	.byte	0                               # DW_AT_location
	.long	1042                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1d5:0xd3 DW_TAG_subprogram
	.byte	4                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	680                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x1e1:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	688                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x1e8:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	696                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x1ef:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	704                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x1f6:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	712                             # DW_AT_abstract_origin
	.byte	16                              # Abbrev [16] 0x1fd:0x5 DW_TAG_variable
	.long	720                             # DW_AT_abstract_origin
	.byte	17                              # Abbrev [17] 0x202:0x98 DW_TAG_inlined_subroutine
	.long	113                             # DW_AT_abstract_origin
	.byte	5                               # DW_AT_low_pc
	.long	.Ltmp36-.Ltmp28                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	17                              # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x20f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	121                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x216:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	129                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x21d:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	137                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x224:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	145                             # DW_AT_abstract_origin
	.byte	17                              # Abbrev [17] 0x22b:0x37 DW_TAG_inlined_subroutine
	.long	189                             # DW_AT_abstract_origin
	.byte	6                               # DW_AT_low_pc
	.long	.Ltmp33-.Ltmp32                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	4                               # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x238:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	197                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x23f:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	205                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x245:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	213                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x24c:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	221                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x253:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	82
	.long	229                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x25a:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	237                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x262:0x37 DW_TAG_inlined_subroutine
	.long	189                             # DW_AT_abstract_origin
	.byte	7                               # DW_AT_low_pc
	.long	.Ltmp35-.Ltmp34                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	5                               # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x26f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	197                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x276:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	205                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x27c:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	213                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x283:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	221                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x28a:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	82
	.long	229                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x291:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	84
	.long	237                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x29a:0xd DW_TAG_lexical_block
	.byte	8                               # DW_AT_low_pc
	.long	.Ltmp41-.Ltmp37                 # DW_AT_high_pc
	.byte	15                              # Abbrev [15] 0x2a0:0x6 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.long	729                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x2a8:0x3b DW_TAG_subprogram
	.byte	31                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	154                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x2b0:0x8 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2b8:0x8 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2c0:0x8 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	172                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2c8:0x8 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	180                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2d0:0x8 DW_TAG_variable
	.byte	32                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	154                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x2d8:0xa DW_TAG_lexical_block
	.byte	11                              # Abbrev [11] 0x2d9:0x8 DW_TAG_variable
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	172                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x2e3:0xf6 DW_TAG_subprogram
	.byte	9                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	246                             # DW_AT_type
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x2f2:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	1292                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x2fc:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	1292                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x306:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	172                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x310:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	185                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x319:0xbf DW_TAG_inlined_subroutine
	.long	680                             # DW_AT_abstract_origin
	.byte	9                               # DW_AT_low_pc
	.long	.Ltmp58-.Lfunc_begin2           # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	26                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x326:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	704                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x32d:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.byte	127
	.byte	159
	.long	712                             # DW_AT_abstract_origin
	.byte	17                              # Abbrev [17] 0x336:0x94 DW_TAG_inlined_subroutine
	.long	113                             # DW_AT_abstract_origin
	.byte	9                               # DW_AT_low_pc
	.long	.Ltmp52-.Lfunc_begin2           # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	17                              # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x343:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	137                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x34a:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.byte	127
	.byte	159
	.long	145                             # DW_AT_abstract_origin
	.byte	17                              # Abbrev [17] 0x353:0x3b DW_TAG_inlined_subroutine
	.long	189                             # DW_AT_abstract_origin
	.byte	10                              # DW_AT_low_pc
	.long	.Ltmp49-.Ltmp48                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	4                               # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x360:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.byte	127
	.byte	159
	.long	197                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x369:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	205                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x36f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	213                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x376:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	221                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x37d:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.byte	127
	.byte	159
	.long	229                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x386:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	237                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x38e:0x3b DW_TAG_inlined_subroutine
	.long	189                             # DW_AT_abstract_origin
	.byte	11                              # DW_AT_low_pc
	.long	.Ltmp51-.Ltmp50                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	5                               # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x39b:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.byte	127
	.byte	159
	.long	197                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x3a4:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	205                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x3aa:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	213                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x3b1:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	221                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x3b8:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.byte	127
	.byte	159
	.long	229                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x3c1:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	84
	.long	237                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x3ca:0xd DW_TAG_lexical_block
	.byte	12                              # DW_AT_low_pc
	.long	.Ltmp58-.Ltmp53                 # DW_AT_high_pc
	.byte	15                              # Abbrev [15] 0x3d0:0x6 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.long	729                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x3d9:0x43 DW_TAG_subprogram
	.byte	34                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	154                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x3e1:0x8 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3e9:0x8 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.long	162                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3f1:0x8 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.long	172                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3f9:0x8 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.long	180                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x401:0x8 DW_TAG_variable
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.long	80                              # DW_AT_type
	.byte	11                              # Abbrev [11] 0x409:0x8 DW_TAG_variable
	.byte	32                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.long	154                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x411:0xa DW_TAG_lexical_block
	.byte	11                              # Abbrev [11] 0x412:0x8 DW_TAG_variable
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.long	172                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x41c:0xf0 DW_TAG_subprogram
	.byte	13                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	246                             # DW_AT_type
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x42b:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	1292                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x435:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	1292                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x43f:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	172                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x449:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	185                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x452:0xb9 DW_TAG_inlined_subroutine
	.long	985                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	30                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x45b:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.long	1009                            # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x461:0x6 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.long	1017                            # DW_AT_abstract_origin
	.byte	15                              # Abbrev [15] 0x467:0x6 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.long	1025                            # DW_AT_abstract_origin
	.byte	17                              # Abbrev [17] 0x46d:0x94 DW_TAG_inlined_subroutine
	.long	113                             # DW_AT_abstract_origin
	.byte	13                              # DW_AT_low_pc
	.long	.Ltmp70-.Lfunc_begin3           # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	9                               # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x47a:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	137                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x481:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.byte	127
	.byte	159
	.long	145                             # DW_AT_abstract_origin
	.byte	17                              # Abbrev [17] 0x48a:0x3b DW_TAG_inlined_subroutine
	.long	189                             # DW_AT_abstract_origin
	.byte	14                              # DW_AT_low_pc
	.long	.Ltmp67-.Ltmp66                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	4                               # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x497:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.byte	127
	.byte	159
	.long	197                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x4a0:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	205                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x4a6:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	213                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x4ad:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	221                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x4b4:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.byte	127
	.byte	159
	.long	229                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x4bd:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	237                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x4c5:0x3b DW_TAG_inlined_subroutine
	.long	189                             # DW_AT_abstract_origin
	.byte	15                              # DW_AT_low_pc
	.long	.Ltmp69-.Ltmp68                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	5                               # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x4d2:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.byte	127
	.byte	159
	.long	197                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x4db:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	205                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x4e1:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	213                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x4e8:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	221                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x4ef:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.byte	127
	.byte	159
	.long	229                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x4f8:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	84
	.long	237                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x501:0x9 DW_TAG_lexical_block
	.byte	2                               # DW_AT_ranges
	.byte	15                              # Abbrev [15] 0x503:0x6 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.long	1042                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x50c:0x5 DW_TAG_pointer_type
	.long	1297                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x511:0x5 DW_TAG_const_type
	.long	96                              # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	3                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
	.long	.Ldebug_ranges2-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	160                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 18.1.3 (1ubuntu1)" # string offset=0
.Linfo_string1:
	.asciz	"05-constant-time/ct_compare.c" # string offset=39
.Linfo_string2:
	.asciz	"/home/runner/work/lowlevel-crypto/lowlevel-crypto" # string offset=69
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=119
.Linfo_string4:
	.asciz	"LAB_OK"                        # string offset=132
.Linfo_string5:
	.asciz	"LAB_INVALID_ARGUMENT"          # string offset=139
.Linfo_string6:
	.asciz	"LAB_CAPACITY_ERROR"            # string offset=160
.Linfo_string7:
	.asciz	"LAB_EMPTY_KEY"                 # string offset=179
.Linfo_string8:
	.asciz	"LAB_OVERLAP_ERROR"             # string offset=193
.Linfo_string9:
	.asciz	"LAB_LIMIT_ERROR"               # string offset=211
.Linfo_string10:
	.asciz	"LAB_IO_ERROR"                  # string offset=227
.Linfo_string11:
	.asciz	"LAB_ALLOCATION_ERROR"          # string offset=240
.Linfo_string12:
	.asciz	"unsigned char"                 # string offset=261
.Linfo_string13:
	.asciz	"__uint8_t"                     # string offset=275
.Linfo_string14:
	.asciz	"uint8_t"                       # string offset=285
.Linfo_string15:
	.asciz	"unsigned long"                 # string offset=293
.Linfo_string16:
	.asciz	"uintptr_t"                     # string offset=307
.Linfo_string17:
	.asciz	"validate_compare"              # string offset=317
.Linfo_string18:
	.asciz	"lab_status"                    # string offset=334
.Linfo_string19:
	.asciz	"a"                             # string offset=345
.Linfo_string20:
	.asciz	"b"                             # string offset=347
.Linfo_string21:
	.asciz	"length"                        # string offset=349
.Linfo_string22:
	.asciz	"size_t"                        # string offset=356
.Linfo_string23:
	.asciz	"equal"                         # string offset=363
.Linfo_string24:
	.asciz	"_Bool"                         # string offset=369
.Linfo_string25:
	.asciz	"lab_ranges_overlap"            # string offset=375
.Linfo_string26:
	.asciz	"int"                           # string offset=394
.Linfo_string27:
	.asciz	"an"                            # string offset=398
.Linfo_string28:
	.asciz	"bn"                            # string offset=401
.Linfo_string29:
	.asciz	"aa"                            # string offset=404
.Linfo_string30:
	.asciz	"bb"                            # string offset=407
.Linfo_string31:
	.asciz	"compare_early_exit"            # string offset=410
.Linfo_string32:
	.asciz	"status"                        # string offset=429
.Linfo_string33:
	.asciz	"i"                             # string offset=436
.Linfo_string34:
	.asciz	"compare_full_scan"             # string offset=438
.Linfo_string35:
	.asciz	"difference"                    # string offset=456
.Linfo_string36:
	.asciz	"insecure_compare"              # string offset=467
.Linfo_string37:
	.asciz	"constant_time_compare"         # string offset=484
.Linfo_string38:
	.asciz	"n"                             # string offset=506
	.section	.debug_str_offsets,"",@progbits
	.long	.Linfo_string0
	.long	.Linfo_string1
	.long	.Linfo_string2
	.long	.Linfo_string3
	.long	.Linfo_string4
	.long	.Linfo_string5
	.long	.Linfo_string6
	.long	.Linfo_string7
	.long	.Linfo_string8
	.long	.Linfo_string9
	.long	.Linfo_string10
	.long	.Linfo_string11
	.long	.Linfo_string12
	.long	.Linfo_string13
	.long	.Linfo_string14
	.long	.Linfo_string15
	.long	.Linfo_string16
	.long	.Linfo_string17
	.long	.Linfo_string18
	.long	.Linfo_string19
	.long	.Linfo_string20
	.long	.Linfo_string21
	.long	.Linfo_string22
	.long	.Linfo_string23
	.long	.Linfo_string24
	.long	.Linfo_string25
	.long	.Linfo_string26
	.long	.Linfo_string27
	.long	.Linfo_string28
	.long	.Linfo_string29
	.long	.Linfo_string30
	.long	.Linfo_string31
	.long	.Linfo_string32
	.long	.Linfo_string33
	.long	.Linfo_string34
	.long	.Linfo_string35
	.long	.Linfo_string36
	.long	.Linfo_string37
	.long	.Linfo_string38
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp0
	.quad	.Ltmp4
	.quad	.Ltmp6
	.quad	.Lfunc_begin1
	.quad	.Ltmp28
	.quad	.Ltmp32
	.quad	.Ltmp34
	.quad	.Ltmp37
	.quad	.Lfunc_begin2
	.quad	.Ltmp48
	.quad	.Ltmp50
	.quad	.Ltmp53
	.quad	.Lfunc_begin3
	.quad	.Ltmp66
	.quad	.Ltmp68
.Ldebug_addr_end0:
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.section	.debug_line,"",@progbits
.Lline_table_start0:
