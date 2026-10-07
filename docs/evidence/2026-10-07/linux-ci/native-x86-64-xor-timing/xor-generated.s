	.text
	.file	"xor_cipher.c"
	.file	0 "/home/runner/work/lowlevel-crypto/lowlevel-crypto" "01-xor/xor_cipher.c" md5 0xfb84d2ad91182e0ff367ba57852ada66
	.file	1 "01-xor/../include" "lab_status.h" md5 0xdf6d340501e8ba3ccb72a16d75d9200e
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xe1865d9fe29fe1b5ced550b7ba458f9e
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x256fcabbefa27ca8cf5e6d37525e6e16
	.file	4 "/usr/lib/llvm-18/lib/clang/18/include" "__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	5 "/usr/include" "stdint.h" md5 0xbfb03fa9c46a839e35c32b929fbdbb8e
	.globl	xor_apply                       # -- Begin function xor_apply
	.p2align	4, 0x90
	.type	xor_apply,@function
xor_apply:                              # @xor_apply
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: xor_apply:data <- $rdi
	#DEBUG_VALUE: xor_apply:capacity <- $rsi
	#DEBUG_VALUE: xor_apply:length <- $rdx
	#DEBUG_VALUE: xor_apply:key <- $ecx
	#DEBUG_VALUE: lab_validate_mutable:data <- $rdi
	#DEBUG_VALUE: lab_validate_mutable:capacity <- $rsi
	#DEBUG_VALUE: lab_validate_mutable:length <- $rdx
	.loc	1 10 9 prologue_end             # 01-xor/../include/lab_status.h:10:9
	testq	%rdx, %rdx
	setne	%al
	testq	%rdi, %rdi
	sete	%r8b
	andb	%al, %r8b
.Ltmp0:
	.loc	1 10 16 is_stmt 0               # 01-xor/../include/lab_status.h:10:16
	cmpq	%rsi, %rdx
.Ltmp1:
	.loc	1 10 9                          # 01-xor/../include/lab_status.h:10:9
	movzbl	%r8b, %esi
.Ltmp2:
	#DEBUG_VALUE: xor_apply:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	1 0 9                           # 01-xor/../include/lab_status.h:0:9
	movl	$2, %eax
	.loc	1 10 9                          # 01-xor/../include/lab_status.h:10:9
	cmovbel	%esi, %eax
.Ltmp3:
	#DEBUG_VALUE: xor_apply:status <- $eax
	.loc	0 5 16 is_stmt 1                # 01-xor/xor_cipher.c:5:16
	testl	%eax, %eax
.Ltmp4:
	.loc	0 5 9 is_stmt 0                 # 01-xor/xor_cipher.c:5:9
	je	.LBB0_1
.Ltmp5:
.LBB0_15:
	#DEBUG_VALUE: xor_apply:data <- $rdi
	#DEBUG_VALUE: xor_apply:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_apply:length <- $rdx
	#DEBUG_VALUE: xor_apply:key <- $ecx
	.loc	0 8 1 is_stmt 1                 # 01-xor/xor_cipher.c:8:1
	retq
.Ltmp6:
.LBB0_1:
	#DEBUG_VALUE: xor_apply:data <- $rdi
	#DEBUG_VALUE: xor_apply:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_apply:length <- $rdx
	#DEBUG_VALUE: xor_apply:key <- $ecx
	#DEBUG_VALUE: xor_apply:status <- $eax
	#DEBUG_VALUE: i <- 0
	.loc	0 6 26                          # 01-xor/xor_cipher.c:6:26
	testq	%rdx, %rdx
.Ltmp7:
	.loc	0 6 5 is_stmt 0                 # 01-xor/xor_cipher.c:6:5
	je	.LBB0_14
.Ltmp8:
# %bb.2:
	#DEBUG_VALUE: xor_apply:data <- $rdi
	#DEBUG_VALUE: xor_apply:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_apply:length <- $rdx
	#DEBUG_VALUE: xor_apply:key <- $ecx
	#DEBUG_VALUE: xor_apply:status <- $eax
	#DEBUG_VALUE: i <- 0
	cmpq	$8, %rdx
	jae	.LBB0_4
.Ltmp9:
# %bb.3:
	#DEBUG_VALUE: xor_apply:data <- $rdi
	#DEBUG_VALUE: xor_apply:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_apply:length <- $rdx
	#DEBUG_VALUE: xor_apply:key <- $ecx
	#DEBUG_VALUE: xor_apply:status <- $eax
	#DEBUG_VALUE: i <- 0
	.loc	0 0 5                           # 01-xor/xor_cipher.c:0:5
	xorl	%esi, %esi
	jmp	.LBB0_13
.Ltmp10:
.LBB0_4:
	#DEBUG_VALUE: xor_apply:data <- $rdi
	#DEBUG_VALUE: xor_apply:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_apply:length <- $rdx
	#DEBUG_VALUE: xor_apply:key <- $ecx
	#DEBUG_VALUE: xor_apply:status <- $eax
	#DEBUG_VALUE: i <- 0
	movzbl	%cl, %r8d
	.loc	0 6 5                           # 01-xor/xor_cipher.c:6:5
	cmpq	$32, %rdx
	jae	.LBB0_6
.Ltmp11:
# %bb.5:
	#DEBUG_VALUE: xor_apply:data <- $rdi
	#DEBUG_VALUE: xor_apply:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_apply:length <- $rdx
	#DEBUG_VALUE: xor_apply:key <- $ecx
	#DEBUG_VALUE: xor_apply:status <- $eax
	#DEBUG_VALUE: i <- 0
	.loc	0 0 5                           # 01-xor/xor_cipher.c:0:5
	xorl	%esi, %esi
	jmp	.LBB0_10
.Ltmp12:
.LBB0_6:
	#DEBUG_VALUE: xor_apply:data <- $rdi
	#DEBUG_VALUE: xor_apply:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_apply:length <- $rdx
	#DEBUG_VALUE: xor_apply:key <- $ecx
	#DEBUG_VALUE: xor_apply:status <- $eax
	#DEBUG_VALUE: i <- 0
	.loc	0 6 5                           # 01-xor/xor_cipher.c:6:5
	movq	%rdx, %rsi
	andq	$-32, %rsi
	movd	%r8d, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	xorl	%eax, %eax
.Ltmp13:
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: xor_apply:data <- $rdi
	#DEBUG_VALUE: xor_apply:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_apply:length <- $rdx
	#DEBUG_VALUE: xor_apply:key <- $ecx
	#DEBUG_VALUE: i <- 0
	.loc	0 6 49                          # 01-xor/xor_cipher.c:6:49
	movdqu	(%rdi,%rax), %xmm1
	movdqu	16(%rdi,%rax), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	movdqu	%xmm1, (%rdi,%rax)
	movdqu	%xmm2, 16(%rdi,%rax)
	.loc	0 6 36                          # 01-xor/xor_cipher.c:6:36
	addq	$32, %rax
	cmpq	%rax, %rsi
	jne	.LBB0_7
.Ltmp14:
# %bb.8:
	#DEBUG_VALUE: xor_apply:data <- $rdi
	#DEBUG_VALUE: xor_apply:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_apply:length <- $rdx
	#DEBUG_VALUE: xor_apply:key <- $ecx
	#DEBUG_VALUE: i <- 0
	.loc	0 0 36                          # 01-xor/xor_cipher.c:0:36
	xorl	%eax, %eax
	.loc	0 6 5                           # 01-xor/xor_cipher.c:6:5
	cmpq	%rdx, %rsi
	je	.LBB0_15
.Ltmp15:
# %bb.9:
	#DEBUG_VALUE: xor_apply:data <- $rdi
	#DEBUG_VALUE: xor_apply:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_apply:length <- $rdx
	#DEBUG_VALUE: xor_apply:key <- $ecx
	#DEBUG_VALUE: i <- 0
	testb	$24, %dl
	je	.LBB0_13
.Ltmp16:
.LBB0_10:
	#DEBUG_VALUE: xor_apply:data <- $rdi
	#DEBUG_VALUE: xor_apply:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_apply:length <- $rdx
	#DEBUG_VALUE: xor_apply:key <- $ecx
	#DEBUG_VALUE: i <- 0
	.loc	0 0 5                           # 01-xor/xor_cipher.c:0:5
	movq	%rsi, %rax
	.loc	0 6 5                           # 01-xor/xor_cipher.c:6:5
	movq	%rdx, %rsi
	andq	$-8, %rsi
	movd	%r8d, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
.Ltmp17:
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: xor_apply:data <- $rdi
	#DEBUG_VALUE: xor_apply:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_apply:length <- $rdx
	#DEBUG_VALUE: xor_apply:key <- $ecx
	#DEBUG_VALUE: i <- 0
	.loc	0 6 49                          # 01-xor/xor_cipher.c:6:49
	movq	(%rdi,%rax), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm0, %xmm1
	movq	%xmm1, (%rdi,%rax)
	.loc	0 6 36                          # 01-xor/xor_cipher.c:6:36
	addq	$8, %rax
	cmpq	%rax, %rsi
	jne	.LBB0_11
.Ltmp18:
# %bb.12:
	#DEBUG_VALUE: xor_apply:data <- $rdi
	#DEBUG_VALUE: xor_apply:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_apply:length <- $rdx
	#DEBUG_VALUE: xor_apply:key <- $ecx
	#DEBUG_VALUE: i <- 0
	.loc	0 0 36                          # 01-xor/xor_cipher.c:0:36
	xorl	%eax, %eax
	.loc	0 6 5                           # 01-xor/xor_cipher.c:6:5
	cmpq	%rdx, %rsi
	je	.LBB0_15
.Ltmp19:
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: xor_apply:data <- $rdi
	#DEBUG_VALUE: xor_apply:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_apply:length <- $rdx
	#DEBUG_VALUE: xor_apply:key <- $ecx
	#DEBUG_VALUE: i <- $rsi
	.loc	0 6 49                          # 01-xor/xor_cipher.c:6:49
	xorb	%cl, (%rdi,%rsi)
	.loc	0 6 36                          # 01-xor/xor_cipher.c:6:36
	incq	%rsi
.Ltmp20:
	#DEBUG_VALUE: i <- $rsi
	.loc	0 6 26                          # 01-xor/xor_cipher.c:6:26
	cmpq	%rsi, %rdx
.Ltmp21:
	.loc	0 6 5                           # 01-xor/xor_cipher.c:6:5
	jne	.LBB0_13
.Ltmp22:
.LBB0_14:
	#DEBUG_VALUE: xor_apply:data <- $rdi
	#DEBUG_VALUE: xor_apply:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_apply:length <- $rdx
	#DEBUG_VALUE: xor_apply:key <- $ecx
	.loc	0 0 5                           # 01-xor/xor_cipher.c:0:5
	xorl	%eax, %eax
	.loc	0 8 1 is_stmt 1                 # 01-xor/xor_cipher.c:8:1
	retq
.Ltmp23:
.Lfunc_end0:
	.size	xor_apply, .Lfunc_end0-xor_apply
	.cfi_endproc
                                        # -- End function
	.globl	xor_repeat                      # -- Begin function xor_repeat
	.p2align	4, 0x90
	.type	xor_repeat,@function
xor_repeat:                             # @xor_repeat
.Lfunc_begin1:
	.loc	0 10 0                          # 01-xor/xor_cipher.c:10:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- $rsi
	#DEBUG_VALUE: xor_repeat:length <- $rdx
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	#DEBUG_VALUE: lab_validate_mutable:data <- $rdi
	#DEBUG_VALUE: lab_validate_mutable:capacity <- $rsi
	#DEBUG_VALUE: lab_validate_mutable:length <- $rdx
	movq	%rdx, %r9
.Ltmp24:
	.loc	1 10 9 prologue_end             # 01-xor/../include/lab_status.h:10:9
	testq	%rdx, %rdx
	setne	%al
	testq	%rdi, %rdi
	sete	%dl
.Ltmp25:
	#DEBUG_VALUE: lab_validate_mutable:length <- $r9
	#DEBUG_VALUE: xor_repeat:length <- $r9
	andb	%al, %dl
.Ltmp26:
	.loc	1 10 16 is_stmt 0               # 01-xor/../include/lab_status.h:10:16
	cmpq	%rsi, %r9
.Ltmp27:
	.loc	1 10 9                          # 01-xor/../include/lab_status.h:10:9
	movzbl	%dl, %eax
	movl	$2, %esi
.Ltmp28:
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	cmovbel	%eax, %esi
.Ltmp29:
	#DEBUG_VALUE: xor_repeat:status <- $esi
	.loc	0 12 16 is_stmt 1               # 01-xor/xor_cipher.c:12:16
	testl	%esi, %esi
.Ltmp30:
	.loc	0 12 9 is_stmt 0                # 01-xor/xor_cipher.c:12:9
	je	.LBB1_1
.Ltmp31:
.LBB1_23:
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	.loc	0 18 1 is_stmt 1                # 01-xor/xor_cipher.c:18:1
	movl	%esi, %eax
	retq
.Ltmp32:
.LBB1_1:
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	#DEBUG_VALUE: xor_repeat:status <- $esi
	.loc	0 13 20                         # 01-xor/xor_cipher.c:13:20
	testq	%r8, %r8
.Ltmp33:
	.loc	0 13 9 is_stmt 0                # 01-xor/xor_cipher.c:13:9
	je	.LBB1_2
.Ltmp34:
# %bb.3:
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	#DEBUG_VALUE: xor_repeat:status <- $esi
	.loc	0 14 13 is_stmt 1               # 01-xor/xor_cipher.c:14:13
	testq	%rcx, %rcx
.Ltmp35:
	.loc	0 14 9 is_stmt 0                # 01-xor/xor_cipher.c:14:9
	je	.LBB1_4
.Ltmp36:
# %bb.5:
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	#DEBUG_VALUE: xor_repeat:status <- $esi
	#DEBUG_VALUE: lab_ranges_overlap:a <- $rdi
	#DEBUG_VALUE: lab_ranges_overlap:an <- $r9
	#DEBUG_VALUE: lab_ranges_overlap:b <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:bn <- $r8
	#DEBUG_VALUE: lab_ranges_overlap:aa <- $rdi
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rcx
	.loc	1 17 12 is_stmt 1               # 01-xor/../include/lab_status.h:17:12
	testq	%r9, %r9
	.loc	1 17 17 is_stmt 0               # 01-xor/../include/lab_status.h:17:17
	je	.LBB1_6
.Ltmp37:
# %bb.7:
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	#DEBUG_VALUE: xor_repeat:status <- $esi
	#DEBUG_VALUE: lab_ranges_overlap:a <- $rdi
	#DEBUG_VALUE: lab_ranges_overlap:an <- $r9
	#DEBUG_VALUE: lab_ranges_overlap:b <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:bn <- $r8
	#DEBUG_VALUE: lab_ranges_overlap:aa <- $rdi
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:aa <- $rdi
	.loc	1 18 15 is_stmt 1               # 01-xor/../include/lab_status.h:18:15
	movq	%rdi, %rax
	subq	%rcx, %rax
	movq	%rax, %rdx
	negq	%rdx
	.loc	1 18 12 is_stmt 0               # 01-xor/../include/lab_status.h:18:12
	xorl	%r10d, %r10d
	cmpq	%r9, %rdx
	setae	%r10b
	xorl	%edx, %edx
	cmpq	%r8, %rax
	setae	%dl
	.loc	1 18 15                         # 01-xor/../include/lab_status.h:18:15
	cmpq	%rcx, %rdi
	.loc	1 18 12                         # 01-xor/../include/lab_status.h:18:12
	cmoval	%edx, %r10d
	movl	$4, %esi
.Ltmp38:
	.loc	0 15 9 is_stmt 1                # 01-xor/xor_cipher.c:15:9
	cmpb	$1, %r10b
	jne	.LBB1_23
.Ltmp39:
# %bb.8:
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	.loc	0 0 9 is_stmt 0                 # 01-xor/xor_cipher.c:0:9
	xorl	%esi, %esi
.Ltmp40:
	.loc	0 16 5 is_stmt 1                # 01-xor/xor_cipher.c:16:5
	cmpq	$1, %r9
	jne	.LBB1_10
.Ltmp41:
# %bb.9:
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	.loc	0 0 5 is_stmt 0                 # 01-xor/xor_cipher.c:0:5
	xorl	%r10d, %r10d
.Ltmp42:
.LBB1_18:
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	.loc	0 16 5                          # 01-xor/xor_cipher.c:16:5
	testb	$1, %r9b
	je	.LBB1_23
.Ltmp43:
# %bb.19:
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	#DEBUG_VALUE: i <- $r10
	.loc	0 16 58                         # 01-xor/xor_cipher.c:16:58
	movq	%r10, %rax
	orq	%r8, %rax
	shrq	$32, %rax
	je	.LBB1_20
.Ltmp44:
# %bb.21:
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	#DEBUG_VALUE: i <- $r10
	movq	%r10, %rax
	xorl	%edx, %edx
	divq	%r8
	jmp	.LBB1_22
.Ltmp45:
.LBB1_2:
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	#DEBUG_VALUE: xor_repeat:status <- $esi
	.loc	0 0 58                          # 01-xor/xor_cipher.c:0:58
	movl	$3, %esi
.Ltmp46:
	.loc	0 18 1 is_stmt 1                # 01-xor/xor_cipher.c:18:1
	movl	%esi, %eax
	retq
.Ltmp47:
.LBB1_4:
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	#DEBUG_VALUE: xor_repeat:status <- $esi
	.loc	0 0 1 is_stmt 0                 # 01-xor/xor_cipher.c:0:1
	movl	$1, %esi
.Ltmp48:
	.loc	0 18 1                          # 01-xor/xor_cipher.c:18:1
	movl	%esi, %eax
	retq
.Ltmp49:
.LBB1_6:
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	#DEBUG_VALUE: xor_repeat:status <- $esi
	.loc	0 0 1                           # 01-xor/xor_cipher.c:0:1
	xorl	%esi, %esi
.Ltmp50:
	.loc	0 18 1                          # 01-xor/xor_cipher.c:18:1
	movl	%esi, %eax
	retq
.Ltmp51:
.LBB1_10:
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	.loc	0 16 5 is_stmt 1                # 01-xor/xor_cipher.c:16:5
	movq	%r9, %r11
	andq	$-2, %r11
	xorl	%r10d, %r10d
	jmp	.LBB1_11
.Ltmp52:
	.p2align	4, 0x90
.LBB1_16:                               #   in Loop: Header=BB1_11 Depth=1
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $r10
	.loc	0 16 58 is_stmt 0               # 01-xor/xor_cipher.c:16:58
	xorl	%edx, %edx
	divq	%r8
.Ltmp53:
.LBB1_17:                               #   in Loop: Header=BB1_11 Depth=1
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $r10
	.loc	0 16 52                         # 01-xor/xor_cipher.c:16:52
	movzbl	(%rcx,%rdx), %eax
	.loc	0 16 49                         # 01-xor/xor_cipher.c:16:49
	xorb	%al, 1(%rdi,%r10)
	.loc	0 16 36                         # 01-xor/xor_cipher.c:16:36
	addq	$2, %r10
.Ltmp54:
	#DEBUG_VALUE: i <- $r10
	.loc	0 16 5                          # 01-xor/xor_cipher.c:16:5
	cmpq	%r10, %r11
	je	.LBB1_18
.Ltmp55:
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	#DEBUG_VALUE: i <- $r10
	.loc	0 16 58                         # 01-xor/xor_cipher.c:16:58
	movq	%r10, %rax
	orq	%r8, %rax
	shrq	$32, %rax
	je	.LBB1_12
.Ltmp56:
# %bb.13:                               #   in Loop: Header=BB1_11 Depth=1
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	#DEBUG_VALUE: i <- $r10
	movq	%r10, %rax
	xorl	%edx, %edx
	divq	%r8
	jmp	.LBB1_14
.Ltmp57:
	.p2align	4, 0x90
.LBB1_12:                               #   in Loop: Header=BB1_11 Depth=1
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	#DEBUG_VALUE: i <- $r10
	movl	%r10d, %eax
	xorl	%edx, %edx
	divl	%r8d
                                        # kill: def $edx killed $edx def $rdx
.Ltmp58:
.LBB1_14:                               #   in Loop: Header=BB1_11 Depth=1
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	#DEBUG_VALUE: i <- $r10
	.loc	0 16 52                         # 01-xor/xor_cipher.c:16:52
	movzbl	(%rcx,%rdx), %eax
	.loc	0 16 49                         # 01-xor/xor_cipher.c:16:49
	xorb	%al, (%rdi,%r10)
.Ltmp59:
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $r10
	.loc	0 16 58                         # 01-xor/xor_cipher.c:16:58
	leaq	1(%r10), %rax
	movq	%rax, %rdx
	orq	%r8, %rdx
	shrq	$32, %rdx
	jne	.LBB1_16
.Ltmp60:
# %bb.15:                               #   in Loop: Header=BB1_11 Depth=1
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $r10
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r8d
                                        # kill: def $edx killed $edx def $rdx
	jmp	.LBB1_17
.Ltmp61:
.LBB1_20:
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	#DEBUG_VALUE: i <- $r10
	movl	%r10d, %eax
	xorl	%edx, %edx
	divl	%r8d
                                        # kill: def $edx killed $edx def $rdx
.Ltmp62:
.LBB1_22:
	#DEBUG_VALUE: xor_repeat:data <- $rdi
	#DEBUG_VALUE: xor_repeat:capacity <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_repeat:length <- $r9
	#DEBUG_VALUE: xor_repeat:key <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $r8
	#DEBUG_VALUE: i <- $r10
	.loc	0 16 52                         # 01-xor/xor_cipher.c:16:52
	movzbl	(%rcx,%rdx), %eax
	.loc	0 16 49                         # 01-xor/xor_cipher.c:16:49
	xorb	%al, (%rdi,%r10)
.Ltmp63:
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r10
	.loc	0 18 1 is_stmt 1                # 01-xor/xor_cipher.c:18:1
	movl	%esi, %eax
	retq
.Ltmp64:
.Lfunc_end1:
	.size	xor_repeat, .Lfunc_end1-xor_repeat
	.cfi_endproc
                                        # -- End function
	.globl	xor_single                      # -- Begin function xor_single
	.p2align	4, 0x90
	.type	xor_single,@function
xor_single:                             # @xor_single
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: xor_single:text <- $rdi
	#DEBUG_VALUE: xor_single:key <- $esi
	.loc	0 20 14 prologue_end            # 01-xor/xor_cipher.c:20:14
	testq	%rdi, %rdi
.Ltmp65:
	.loc	0 20 9 is_stmt 0                # 01-xor/xor_cipher.c:20:9
	je	.LBB2_15
.Ltmp66:
# %bb.1:
	#DEBUG_VALUE: xor_single:text <- $rdi
	#DEBUG_VALUE: xor_single:key <- $esi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
.Ltmp67:
	.loc	0 21 25 is_stmt 1               # 01-xor/xor_cipher.c:21:25
	callq	strlen@PLT
.Ltmp68:
	#DEBUG_VALUE: xor_single:text <- $r14
	#DEBUG_VALUE: xor_single:key <- $ebx
	#DEBUG_VALUE: length <- $rax
	#DEBUG_VALUE: xor_apply:capacity <- $rax
	#DEBUG_VALUE: xor_apply:length <- $rax
	#DEBUG_VALUE: xor_apply:data <- $r14
	#DEBUG_VALUE: xor_apply:key <- $bl
	#DEBUG_VALUE: xor_apply:status <- 0
	#DEBUG_VALUE: i <- 0
	.loc	0 6 26                          # 01-xor/xor_cipher.c:6:26
	testq	%rax, %rax
.Ltmp69:
	.loc	0 6 5 is_stmt 0                 # 01-xor/xor_cipher.c:6:5
	je	.LBB2_14
.Ltmp70:
# %bb.2:
	#DEBUG_VALUE: xor_single:text <- $r14
	#DEBUG_VALUE: xor_single:key <- $ebx
	#DEBUG_VALUE: length <- $rax
	#DEBUG_VALUE: xor_apply:capacity <- $rax
	#DEBUG_VALUE: xor_apply:length <- $rax
	#DEBUG_VALUE: xor_apply:data <- $r14
	#DEBUG_VALUE: xor_apply:key <- $bl
	#DEBUG_VALUE: xor_apply:status <- 0
	#DEBUG_VALUE: i <- 0
	cmpq	$8, %rax
	jae	.LBB2_5
.Ltmp71:
# %bb.3:
	#DEBUG_VALUE: xor_single:text <- $r14
	#DEBUG_VALUE: xor_single:key <- $ebx
	#DEBUG_VALUE: length <- $rax
	#DEBUG_VALUE: xor_apply:capacity <- $rax
	#DEBUG_VALUE: xor_apply:length <- $rax
	#DEBUG_VALUE: xor_apply:data <- $r14
	#DEBUG_VALUE: xor_apply:key <- $bl
	#DEBUG_VALUE: xor_apply:status <- 0
	#DEBUG_VALUE: i <- 0
	.loc	0 0 5                           # 01-xor/xor_cipher.c:0:5
	xorl	%ecx, %ecx
	jmp	.LBB2_4
.Ltmp72:
.LBB2_5:
	#DEBUG_VALUE: xor_single:text <- $r14
	#DEBUG_VALUE: xor_single:key <- $ebx
	#DEBUG_VALUE: length <- $rax
	#DEBUG_VALUE: xor_apply:capacity <- $rax
	#DEBUG_VALUE: xor_apply:length <- $rax
	#DEBUG_VALUE: xor_apply:data <- $r14
	#DEBUG_VALUE: xor_apply:key <- $bl
	#DEBUG_VALUE: xor_apply:status <- 0
	#DEBUG_VALUE: i <- 0
	movzbl	%bl, %edx
	.loc	0 6 5                           # 01-xor/xor_cipher.c:6:5
	cmpq	$32, %rax
	jae	.LBB2_7
.Ltmp73:
# %bb.6:
	#DEBUG_VALUE: xor_single:text <- $r14
	#DEBUG_VALUE: xor_single:key <- $ebx
	#DEBUG_VALUE: length <- $rax
	#DEBUG_VALUE: xor_apply:capacity <- $rax
	#DEBUG_VALUE: xor_apply:length <- $rax
	#DEBUG_VALUE: xor_apply:data <- $r14
	#DEBUG_VALUE: xor_apply:key <- $bl
	#DEBUG_VALUE: xor_apply:status <- 0
	#DEBUG_VALUE: i <- 0
	.loc	0 0 5                           # 01-xor/xor_cipher.c:0:5
	xorl	%ecx, %ecx
	jmp	.LBB2_11
.Ltmp74:
.LBB2_7:
	#DEBUG_VALUE: xor_single:text <- $r14
	#DEBUG_VALUE: xor_single:key <- $ebx
	#DEBUG_VALUE: length <- $rax
	#DEBUG_VALUE: xor_apply:capacity <- $rax
	#DEBUG_VALUE: xor_apply:length <- $rax
	#DEBUG_VALUE: xor_apply:data <- $r14
	#DEBUG_VALUE: xor_apply:key <- $bl
	#DEBUG_VALUE: xor_apply:status <- 0
	#DEBUG_VALUE: i <- 0
	.loc	0 6 5                           # 01-xor/xor_cipher.c:6:5
	movq	%rax, %rcx
	andq	$-32, %rcx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	xorl	%esi, %esi
.Ltmp75:
	.p2align	4, 0x90
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: xor_single:text <- $r14
	#DEBUG_VALUE: xor_single:key <- $ebx
	#DEBUG_VALUE: length <- $rax
	#DEBUG_VALUE: xor_apply:capacity <- $rax
	#DEBUG_VALUE: xor_apply:length <- $rax
	#DEBUG_VALUE: xor_apply:data <- $r14
	#DEBUG_VALUE: xor_apply:key <- $bl
	#DEBUG_VALUE: xor_apply:status <- 0
	#DEBUG_VALUE: i <- 0
	.loc	0 6 49                          # 01-xor/xor_cipher.c:6:49
	movdqu	(%r14,%rsi), %xmm1
	movdqu	16(%r14,%rsi), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	movdqu	%xmm1, (%r14,%rsi)
	movdqu	%xmm2, 16(%r14,%rsi)
	.loc	0 6 36                          # 01-xor/xor_cipher.c:6:36
	addq	$32, %rsi
	cmpq	%rsi, %rcx
	jne	.LBB2_8
.Ltmp76:
# %bb.9:
	#DEBUG_VALUE: xor_single:text <- $r14
	#DEBUG_VALUE: xor_single:key <- $ebx
	#DEBUG_VALUE: length <- $rax
	#DEBUG_VALUE: xor_apply:capacity <- $rax
	#DEBUG_VALUE: xor_apply:length <- $rax
	#DEBUG_VALUE: xor_apply:data <- $r14
	#DEBUG_VALUE: xor_apply:key <- $bl
	#DEBUG_VALUE: xor_apply:status <- 0
	#DEBUG_VALUE: i <- 0
	.loc	0 6 5                           # 01-xor/xor_cipher.c:6:5
	cmpq	%rcx, %rax
	je	.LBB2_14
.Ltmp77:
# %bb.10:
	#DEBUG_VALUE: xor_single:text <- $r14
	#DEBUG_VALUE: xor_single:key <- $ebx
	#DEBUG_VALUE: length <- $rax
	#DEBUG_VALUE: xor_apply:capacity <- $rax
	#DEBUG_VALUE: xor_apply:length <- $rax
	#DEBUG_VALUE: xor_apply:data <- $r14
	#DEBUG_VALUE: xor_apply:key <- $bl
	#DEBUG_VALUE: xor_apply:status <- 0
	#DEBUG_VALUE: i <- 0
	testb	$24, %al
	je	.LBB2_4
.Ltmp78:
.LBB2_11:
	#DEBUG_VALUE: xor_single:text <- $r14
	#DEBUG_VALUE: xor_single:key <- $ebx
	#DEBUG_VALUE: length <- $rax
	#DEBUG_VALUE: xor_apply:capacity <- $rax
	#DEBUG_VALUE: xor_apply:length <- $rax
	#DEBUG_VALUE: xor_apply:data <- $r14
	#DEBUG_VALUE: xor_apply:key <- $bl
	#DEBUG_VALUE: xor_apply:status <- 0
	#DEBUG_VALUE: i <- 0
	.loc	0 0 5                           # 01-xor/xor_cipher.c:0:5
	movq	%rcx, %rsi
	.loc	0 6 5                           # 01-xor/xor_cipher.c:6:5
	movq	%rax, %rcx
	andq	$-8, %rcx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
.Ltmp79:
	.p2align	4, 0x90
.LBB2_12:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: xor_single:text <- $r14
	#DEBUG_VALUE: xor_single:key <- $ebx
	#DEBUG_VALUE: length <- $rax
	#DEBUG_VALUE: xor_apply:capacity <- $rax
	#DEBUG_VALUE: xor_apply:length <- $rax
	#DEBUG_VALUE: xor_apply:data <- $r14
	#DEBUG_VALUE: xor_apply:key <- $bl
	#DEBUG_VALUE: xor_apply:status <- 0
	#DEBUG_VALUE: i <- 0
	.loc	0 6 49                          # 01-xor/xor_cipher.c:6:49
	movq	(%r14,%rsi), %xmm1              # xmm1 = mem[0],zero
	pxor	%xmm0, %xmm1
	movq	%xmm1, (%r14,%rsi)
	.loc	0 6 36                          # 01-xor/xor_cipher.c:6:36
	addq	$8, %rsi
	cmpq	%rsi, %rcx
	jne	.LBB2_12
	jmp	.LBB2_13
.Ltmp80:
.LBB2_4:
	#DEBUG_VALUE: xor_single:text <- $r14
	#DEBUG_VALUE: xor_single:key <- $ebx
	#DEBUG_VALUE: length <- $rax
	#DEBUG_VALUE: xor_apply:capacity <- $rax
	#DEBUG_VALUE: xor_apply:length <- $rax
	#DEBUG_VALUE: xor_apply:data <- $r14
	#DEBUG_VALUE: xor_apply:key <- $bl
	#DEBUG_VALUE: xor_apply:status <- 0
	#DEBUG_VALUE: i <- $rcx
	.loc	0 6 49                          # 01-xor/xor_cipher.c:6:49
	xorb	%bl, (%r14,%rcx)
	.loc	0 6 36                          # 01-xor/xor_cipher.c:6:36
	incq	%rcx
.Ltmp81:
	#DEBUG_VALUE: i <- $rcx
.LBB2_13:
	#DEBUG_VALUE: xor_single:text <- $r14
	#DEBUG_VALUE: xor_single:key <- $ebx
	#DEBUG_VALUE: length <- $rax
	#DEBUG_VALUE: xor_apply:capacity <- $rax
	#DEBUG_VALUE: xor_apply:length <- $rax
	#DEBUG_VALUE: xor_apply:data <- $r14
	#DEBUG_VALUE: xor_apply:key <- $bl
	#DEBUG_VALUE: xor_apply:status <- 0
	.loc	0 6 0                           # 01-xor/xor_cipher.c:6:0
	cmpq	%rcx, %rax
	.loc	0 6 5                           # 01-xor/xor_cipher.c:6:5
	jne	.LBB2_4
.Ltmp82:
.LBB2_14:
	#DEBUG_VALUE: xor_single:text <- $r14
	#DEBUG_VALUE: xor_single:key <- $ebx
	#DEBUG_VALUE: length <- $rax
	#DEBUG_VALUE: xor_apply:capacity <- $rax
	#DEBUG_VALUE: xor_apply:length <- $rax
	#DEBUG_VALUE: xor_apply:data <- $r14
	#DEBUG_VALUE: xor_apply:key <- $bl
	#DEBUG_VALUE: xor_apply:status <- 0
	.loc	0 0 5                           # 01-xor/xor_cipher.c:0:5
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp83:
	#DEBUG_VALUE: xor_single:key <- [DW_OP_LLVM_entry_value 1] $esi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp84:
	#DEBUG_VALUE: xor_single:text <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
.LBB2_15:
	#DEBUG_VALUE: xor_single:text <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: xor_single:key <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 24 1 is_stmt 1                # 01-xor/xor_cipher.c:24:1
	retq
.Ltmp85:
.Lfunc_end2:
	.size	xor_single, .Lfunc_end2-xor_single
	.cfi_endproc
	.file	6 "/usr/include" "string.h" md5 0x165db1185644f68894fa9e0d17055d70
                                        # -- End function
	.globl	xor_multi                       # -- Begin function xor_multi
	.p2align	4, 0x90
	.type	xor_multi,@function
xor_multi:                              # @xor_multi
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: xor_multi:text <- $rdi
	#DEBUG_VALUE: xor_multi:key <- $rsi
	#DEBUG_VALUE: xor_multi:key_len <- $edx
	.loc	0 26 14 prologue_end            # 01-xor/xor_cipher.c:26:14
	testq	%rdi, %rdi
	.loc	0 26 22 is_stmt 0               # 01-xor/xor_cipher.c:26:22
	je	.LBB3_21
.Ltmp86:
# %bb.1:
	#DEBUG_VALUE: xor_multi:text <- $rdi
	#DEBUG_VALUE: xor_multi:key <- $rsi
	#DEBUG_VALUE: xor_multi:key_len <- $edx
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	testq	%rsi, %rsi
	je	.LBB3_20
.Ltmp87:
# %bb.2:
	#DEBUG_VALUE: xor_multi:text <- $rdi
	#DEBUG_VALUE: xor_multi:key <- $r14
	#DEBUG_VALUE: xor_multi:key_len <- $edx
	.loc	0 0 22                          # 01-xor/xor_cipher.c:0:22
	movl	%edx, %ebp
	.loc	0 26 22                         # 01-xor/xor_cipher.c:26:22
	testl	%edx, %edx
	jle	.LBB3_20
.Ltmp88:
# %bb.3:
	#DEBUG_VALUE: xor_multi:text <- $rdi
	#DEBUG_VALUE: xor_multi:key <- $r14
	#DEBUG_VALUE: xor_multi:key_len <- $ebp
	.loc	0 0 22                          # 01-xor/xor_cipher.c:0:22
	movq	%rdi, %rbx
.Ltmp89:
	.loc	0 27 25 is_stmt 1               # 01-xor/xor_cipher.c:27:25
	callq	strlen@PLT
.Ltmp90:
	#DEBUG_VALUE: xor_multi:text <- $rbx
	#DEBUG_VALUE: length <- $rax
	#DEBUG_VALUE: xor_repeat:capacity <- $rax
	#DEBUG_VALUE: xor_repeat:length <- $rax
	#DEBUG_VALUE: lab_ranges_overlap:an <- $rax
	#DEBUG_VALUE: xor_repeat:key_length <- $ebp
	#DEBUG_VALUE: lab_ranges_overlap:bn <- $ebp
	#DEBUG_VALUE: xor_repeat:data <- $rbx
	#DEBUG_VALUE: xor_repeat:key <- $r14
	#DEBUG_VALUE: xor_repeat:status <- 0
	#DEBUG_VALUE: lab_ranges_overlap:a <- $rbx
	#DEBUG_VALUE: lab_ranges_overlap:b <- $r14
	#DEBUG_VALUE: lab_ranges_overlap:aa <- $rbx
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $r14
	.loc	1 17 12                         # 01-xor/../include/lab_status.h:17:12
	testq	%rax, %rax
	.loc	1 17 17 is_stmt 0               # 01-xor/../include/lab_status.h:17:17
	je	.LBB3_20
.Ltmp91:
# %bb.4:
	#DEBUG_VALUE: xor_multi:text <- $rbx
	#DEBUG_VALUE: xor_multi:key <- $r14
	#DEBUG_VALUE: xor_multi:key_len <- $ebp
	#DEBUG_VALUE: length <- $rax
	#DEBUG_VALUE: xor_repeat:capacity <- $rax
	#DEBUG_VALUE: xor_repeat:length <- $rax
	#DEBUG_VALUE: lab_ranges_overlap:an <- $rax
	#DEBUG_VALUE: xor_repeat:key_length <- $ebp
	#DEBUG_VALUE: lab_ranges_overlap:bn <- $ebp
	#DEBUG_VALUE: xor_repeat:data <- $rbx
	#DEBUG_VALUE: xor_repeat:key <- $r14
	#DEBUG_VALUE: xor_repeat:status <- 0
	#DEBUG_VALUE: lab_ranges_overlap:a <- $rbx
	#DEBUG_VALUE: lab_ranges_overlap:b <- $r14
	#DEBUG_VALUE: lab_ranges_overlap:aa <- $rbx
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $r14
	.loc	1 0 17                          # 01-xor/../include/lab_status.h:0:17
	movq	%rax, %rcx
	movl	%ebp, %edi
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $r14
	#DEBUG_VALUE: lab_ranges_overlap:aa <- $rbx
	.loc	1 18 15 is_stmt 1               # 01-xor/../include/lab_status.h:18:15
	movq	%rbx, %rax
.Ltmp92:
	#DEBUG_VALUE: lab_ranges_overlap:an <- $rcx
	#DEBUG_VALUE: xor_repeat:length <- $rcx
	#DEBUG_VALUE: xor_repeat:capacity <- $rcx
	#DEBUG_VALUE: length <- $rcx
	subq	%r14, %rax
	movq	%rax, %rdx
	negq	%rdx
	.loc	1 18 12 is_stmt 0               # 01-xor/../include/lab_status.h:18:12
	xorl	%esi, %esi
	cmpq	%rcx, %rdx
	setae	%sil
	xorl	%edx, %edx
	cmpq	%rdi, %rax
	setae	%dl
	.loc	1 18 15                         # 01-xor/../include/lab_status.h:18:15
	cmpq	%r14, %rbx
	.loc	1 18 12                         # 01-xor/../include/lab_status.h:18:12
	cmoval	%edx, %esi
.Ltmp93:
	.loc	0 15 9 is_stmt 1                # 01-xor/xor_cipher.c:15:9
	cmpb	$1, %sil
	jne	.LBB3_20
.Ltmp94:
# %bb.5:
	#DEBUG_VALUE: xor_multi:text <- $rbx
	#DEBUG_VALUE: xor_multi:key <- $r14
	#DEBUG_VALUE: xor_multi:key_len <- $ebp
	#DEBUG_VALUE: length <- $rcx
	#DEBUG_VALUE: xor_repeat:capacity <- $rcx
	#DEBUG_VALUE: xor_repeat:length <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $ebp
	#DEBUG_VALUE: xor_repeat:data <- $rbx
	#DEBUG_VALUE: xor_repeat:key <- $r14
	#DEBUG_VALUE: xor_repeat:status <- 0
	.loc	0 16 5                          # 01-xor/xor_cipher.c:16:5
	cmpq	$1, %rcx
	jne	.LBB3_7
.Ltmp95:
# %bb.6:
	#DEBUG_VALUE: xor_multi:text <- $rbx
	#DEBUG_VALUE: xor_multi:key <- $r14
	#DEBUG_VALUE: xor_multi:key_len <- $ebp
	#DEBUG_VALUE: length <- $rcx
	#DEBUG_VALUE: xor_repeat:capacity <- $rcx
	#DEBUG_VALUE: xor_repeat:length <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $ebp
	#DEBUG_VALUE: xor_repeat:data <- $rbx
	#DEBUG_VALUE: xor_repeat:key <- $r14
	#DEBUG_VALUE: xor_repeat:status <- 0
	.loc	0 0 5 is_stmt 0                 # 01-xor/xor_cipher.c:0:5
	xorl	%esi, %esi
.Ltmp96:
.LBB3_15:
	#DEBUG_VALUE: xor_multi:text <- $rbx
	#DEBUG_VALUE: xor_multi:key <- $r14
	#DEBUG_VALUE: xor_multi:key_len <- $ebp
	#DEBUG_VALUE: length <- $rcx
	#DEBUG_VALUE: xor_repeat:capacity <- $rcx
	#DEBUG_VALUE: xor_repeat:length <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $ebp
	#DEBUG_VALUE: xor_repeat:data <- $rbx
	#DEBUG_VALUE: xor_repeat:key <- $r14
	#DEBUG_VALUE: xor_repeat:status <- 0
	.loc	0 16 5                          # 01-xor/xor_cipher.c:16:5
	testb	$1, %cl
	je	.LBB3_20
.Ltmp97:
# %bb.16:
	#DEBUG_VALUE: xor_multi:text <- $rbx
	#DEBUG_VALUE: xor_multi:key <- $r14
	#DEBUG_VALUE: xor_multi:key_len <- $ebp
	#DEBUG_VALUE: length <- $rcx
	#DEBUG_VALUE: xor_repeat:capacity <- $rcx
	#DEBUG_VALUE: xor_repeat:length <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $ebp
	#DEBUG_VALUE: xor_repeat:data <- $rbx
	#DEBUG_VALUE: xor_repeat:key <- $r14
	#DEBUG_VALUE: xor_repeat:status <- 0
	#DEBUG_VALUE: i <- $rsi
	.loc	0 16 58                         # 01-xor/xor_cipher.c:16:58
	movq	%rsi, %rax
	shrq	$32, %rax
	je	.LBB3_17
.Ltmp98:
# %bb.18:
	#DEBUG_VALUE: xor_multi:text <- $rbx
	#DEBUG_VALUE: xor_multi:key <- $r14
	#DEBUG_VALUE: xor_multi:key_len <- $ebp
	#DEBUG_VALUE: length <- $rcx
	#DEBUG_VALUE: xor_repeat:capacity <- $rcx
	#DEBUG_VALUE: xor_repeat:length <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $ebp
	#DEBUG_VALUE: xor_repeat:data <- $rbx
	#DEBUG_VALUE: xor_repeat:key <- $r14
	#DEBUG_VALUE: xor_repeat:status <- 0
	#DEBUG_VALUE: i <- $rsi
	movq	%rsi, %rax
	xorl	%edx, %edx
	divq	%rdi
	jmp	.LBB3_19
.Ltmp99:
.LBB3_7:
	#DEBUG_VALUE: xor_multi:text <- $rbx
	#DEBUG_VALUE: xor_multi:key <- $r14
	#DEBUG_VALUE: xor_multi:key_len <- $ebp
	#DEBUG_VALUE: length <- $rcx
	#DEBUG_VALUE: xor_repeat:capacity <- $rcx
	#DEBUG_VALUE: xor_repeat:length <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $ebp
	#DEBUG_VALUE: xor_repeat:data <- $rbx
	#DEBUG_VALUE: xor_repeat:key <- $r14
	#DEBUG_VALUE: xor_repeat:status <- 0
	.loc	0 16 5                          # 01-xor/xor_cipher.c:16:5
	movq	%rcx, %r8
	andq	$-2, %r8
	xorl	%esi, %esi
	jmp	.LBB3_8
.Ltmp100:
	.p2align	4, 0x90
.LBB3_13:                               #   in Loop: Header=BB3_8 Depth=1
	#DEBUG_VALUE: xor_multi:text <- $rbx
	#DEBUG_VALUE: xor_multi:key <- $r14
	#DEBUG_VALUE: xor_multi:key_len <- $ebp
	#DEBUG_VALUE: length <- $rcx
	#DEBUG_VALUE: xor_repeat:capacity <- $rcx
	#DEBUG_VALUE: xor_repeat:length <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $ebp
	#DEBUG_VALUE: xor_repeat:data <- $rbx
	#DEBUG_VALUE: xor_repeat:key <- $r14
	#DEBUG_VALUE: xor_repeat:status <- 0
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $rsi
	.loc	0 16 58                         # 01-xor/xor_cipher.c:16:58
	xorl	%edx, %edx
	divq	%rdi
.Ltmp101:
.LBB3_14:                               #   in Loop: Header=BB3_8 Depth=1
	#DEBUG_VALUE: xor_multi:text <- $rbx
	#DEBUG_VALUE: xor_multi:key <- $r14
	#DEBUG_VALUE: xor_multi:key_len <- $ebp
	#DEBUG_VALUE: length <- $rcx
	#DEBUG_VALUE: xor_repeat:capacity <- $rcx
	#DEBUG_VALUE: xor_repeat:length <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $ebp
	#DEBUG_VALUE: xor_repeat:data <- $rbx
	#DEBUG_VALUE: xor_repeat:key <- $r14
	#DEBUG_VALUE: xor_repeat:status <- 0
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $rsi
	.loc	0 16 52                         # 01-xor/xor_cipher.c:16:52
	movzbl	(%r14,%rdx), %eax
	.loc	0 16 49                         # 01-xor/xor_cipher.c:16:49
	xorb	%al, 1(%rbx,%rsi)
	.loc	0 16 36                         # 01-xor/xor_cipher.c:16:36
	addq	$2, %rsi
.Ltmp102:
	#DEBUG_VALUE: i <- $rsi
	.loc	0 16 5                          # 01-xor/xor_cipher.c:16:5
	cmpq	%rsi, %r8
	je	.LBB3_15
.Ltmp103:
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: xor_multi:text <- $rbx
	#DEBUG_VALUE: xor_multi:key <- $r14
	#DEBUG_VALUE: xor_multi:key_len <- $ebp
	#DEBUG_VALUE: length <- $rcx
	#DEBUG_VALUE: xor_repeat:capacity <- $rcx
	#DEBUG_VALUE: xor_repeat:length <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $ebp
	#DEBUG_VALUE: xor_repeat:data <- $rbx
	#DEBUG_VALUE: xor_repeat:key <- $r14
	#DEBUG_VALUE: xor_repeat:status <- 0
	#DEBUG_VALUE: i <- $rsi
	.loc	0 16 58                         # 01-xor/xor_cipher.c:16:58
	movq	%rsi, %rax
	shrq	$32, %rax
	je	.LBB3_9
.Ltmp104:
# %bb.10:                               #   in Loop: Header=BB3_8 Depth=1
	#DEBUG_VALUE: xor_multi:text <- $rbx
	#DEBUG_VALUE: xor_multi:key <- $r14
	#DEBUG_VALUE: xor_multi:key_len <- $ebp
	#DEBUG_VALUE: length <- $rcx
	#DEBUG_VALUE: xor_repeat:capacity <- $rcx
	#DEBUG_VALUE: xor_repeat:length <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $ebp
	#DEBUG_VALUE: xor_repeat:data <- $rbx
	#DEBUG_VALUE: xor_repeat:key <- $r14
	#DEBUG_VALUE: xor_repeat:status <- 0
	#DEBUG_VALUE: i <- $rsi
	movq	%rsi, %rax
	xorl	%edx, %edx
	divq	%rdi
	jmp	.LBB3_11
.Ltmp105:
	.p2align	4, 0x90
.LBB3_9:                                #   in Loop: Header=BB3_8 Depth=1
	#DEBUG_VALUE: xor_multi:text <- $rbx
	#DEBUG_VALUE: xor_multi:key <- $r14
	#DEBUG_VALUE: xor_multi:key_len <- $ebp
	#DEBUG_VALUE: length <- $rcx
	#DEBUG_VALUE: xor_repeat:capacity <- $rcx
	#DEBUG_VALUE: xor_repeat:length <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $ebp
	#DEBUG_VALUE: xor_repeat:data <- $rbx
	#DEBUG_VALUE: xor_repeat:key <- $r14
	#DEBUG_VALUE: xor_repeat:status <- 0
	#DEBUG_VALUE: i <- $rsi
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $edx killed $edx def $rdx
.Ltmp106:
.LBB3_11:                               #   in Loop: Header=BB3_8 Depth=1
	#DEBUG_VALUE: xor_multi:text <- $rbx
	#DEBUG_VALUE: xor_multi:key <- $r14
	#DEBUG_VALUE: xor_multi:key_len <- $ebp
	#DEBUG_VALUE: length <- $rcx
	#DEBUG_VALUE: xor_repeat:capacity <- $rcx
	#DEBUG_VALUE: xor_repeat:length <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $ebp
	#DEBUG_VALUE: xor_repeat:data <- $rbx
	#DEBUG_VALUE: xor_repeat:key <- $r14
	#DEBUG_VALUE: xor_repeat:status <- 0
	#DEBUG_VALUE: i <- $rsi
	.loc	0 16 52                         # 01-xor/xor_cipher.c:16:52
	movzbl	(%r14,%rdx), %eax
	.loc	0 16 49                         # 01-xor/xor_cipher.c:16:49
	xorb	%al, (%rbx,%rsi)
.Ltmp107:
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $rsi
	.loc	0 16 58                         # 01-xor/xor_cipher.c:16:58
	leaq	1(%rsi), %rax
	movq	%rax, %rdx
	shrq	$32, %rdx
	jne	.LBB3_13
.Ltmp108:
# %bb.12:                               #   in Loop: Header=BB3_8 Depth=1
	#DEBUG_VALUE: xor_multi:text <- $rbx
	#DEBUG_VALUE: xor_multi:key <- $r14
	#DEBUG_VALUE: xor_multi:key_len <- $ebp
	#DEBUG_VALUE: length <- $rcx
	#DEBUG_VALUE: xor_repeat:capacity <- $rcx
	#DEBUG_VALUE: xor_repeat:length <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $ebp
	#DEBUG_VALUE: xor_repeat:data <- $rbx
	#DEBUG_VALUE: xor_repeat:key <- $r14
	#DEBUG_VALUE: xor_repeat:status <- 0
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $rsi
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $edx killed $edx def $rdx
	jmp	.LBB3_14
.Ltmp109:
.LBB3_17:
	#DEBUG_VALUE: xor_multi:text <- $rbx
	#DEBUG_VALUE: xor_multi:key <- $r14
	#DEBUG_VALUE: xor_multi:key_len <- $ebp
	#DEBUG_VALUE: length <- $rcx
	#DEBUG_VALUE: xor_repeat:capacity <- $rcx
	#DEBUG_VALUE: xor_repeat:length <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $ebp
	#DEBUG_VALUE: xor_repeat:data <- $rbx
	#DEBUG_VALUE: xor_repeat:key <- $r14
	#DEBUG_VALUE: xor_repeat:status <- 0
	#DEBUG_VALUE: i <- $rsi
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $edx killed $edx def $rdx
.Ltmp110:
.LBB3_19:
	#DEBUG_VALUE: xor_multi:text <- $rbx
	#DEBUG_VALUE: xor_multi:key <- $r14
	#DEBUG_VALUE: xor_multi:key_len <- $ebp
	#DEBUG_VALUE: length <- $rcx
	#DEBUG_VALUE: xor_repeat:capacity <- $rcx
	#DEBUG_VALUE: xor_repeat:length <- $rcx
	#DEBUG_VALUE: xor_repeat:key_length <- $ebp
	#DEBUG_VALUE: xor_repeat:data <- $rbx
	#DEBUG_VALUE: xor_repeat:key <- $r14
	#DEBUG_VALUE: xor_repeat:status <- 0
	#DEBUG_VALUE: i <- $rsi
	.loc	0 16 52                         # 01-xor/xor_cipher.c:16:52
	movzbl	(%r14,%rdx), %eax
	.loc	0 16 49                         # 01-xor/xor_cipher.c:16:49
	xorb	%al, (%rbx,%rsi)
.Ltmp111:
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rsi
.LBB3_20:
	#DEBUG_VALUE: xor_multi:text <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: xor_multi:key <- $r14
	#DEBUG_VALUE: xor_multi:key_len <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 0 49                          # 01-xor/xor_cipher.c:0:49
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp112:
	#DEBUG_VALUE: xor_multi:key <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %rbp
.Ltmp113:
.LBB3_21:
	#DEBUG_VALUE: xor_multi:text <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: xor_multi:key <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xor_multi:key_len <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 31 1 is_stmt 1                # 01-xor/xor_cipher.c:31:1
	retq
.Ltmp114:
.Lfunc_end3:
	.size	xor_multi, .Lfunc_end3-xor_multi
	.cfi_endproc
                                        # -- End function
	.globl	frequency_attack                # -- Begin function frequency_attack
	.p2align	4, 0x90
	.type	frequency_attack,@function
frequency_attack:                       # @frequency_attack
.Lfunc_begin4:
	.loc	0 32 0                          # 01-xor/xor_cipher.c:32:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: frequency_attack:ciphertext <- $rdi
	#DEBUG_VALUE: frequency_attack:len <- $esi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$2048, %rsp                     # imm = 0x800
	.cfi_def_cfa_offset 2080
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	%rsp, %rdi
.Ltmp115:
	#DEBUG_VALUE: frequency_attack:ciphertext <- $rbx
	xorl	%ebp, %ebp
.Ltmp116:
	.loc	0 33 12 prologue_end            # 01-xor/xor_cipher.c:33:12
	movl	$2048, %edx                     # imm = 0x800
	xorl	%esi, %esi
.Ltmp117:
	#DEBUG_VALUE: frequency_attack:len <- $r14d
	callq	memset@PLT
.Ltmp118:
	#DEBUG_VALUE: frequency_attack:most_frequent <- 0
	.loc	0 0 12 is_stmt 0                # 01-xor/xor_cipher.c:0:12
	testq	%rbx, %rbx
.Ltmp119:
	.loc	0 35 18 is_stmt 1               # 01-xor/xor_cipher.c:35:18
	je	.LBB4_18
.Ltmp120:
# %bb.1:
	#DEBUG_VALUE: frequency_attack:ciphertext <- $rbx
	#DEBUG_VALUE: frequency_attack:len <- $r14d
	#DEBUG_VALUE: frequency_attack:most_frequent <- 0
	testl	%r14d, %r14d
	jle	.LBB4_18
.Ltmp121:
# %bb.2:
	#DEBUG_VALUE: frequency_attack:ciphertext <- $rbx
	#DEBUG_VALUE: frequency_attack:len <- $r14d
	#DEBUG_VALUE: frequency_attack:most_frequent <- 0
	.loc	0 0 18 is_stmt 0                # 01-xor/xor_cipher.c:0:18
	movl	%r14d, %ecx
.Ltmp122:
	#DEBUG_VALUE: i <- 0
	.loc	0 36 5 is_stmt 1                # 01-xor/xor_cipher.c:36:5
	leaq	-1(%rcx), %rdx
	movl	%ecx, %eax
	andl	$3, %eax
	cmpq	$3, %rdx
	jae	.LBB4_4
.Ltmp123:
# %bb.3:
	#DEBUG_VALUE: frequency_attack:ciphertext <- $rbx
	#DEBUG_VALUE: frequency_attack:len <- $r14d
	#DEBUG_VALUE: frequency_attack:most_frequent <- 0
	#DEBUG_VALUE: i <- 0
	.loc	0 0 5 is_stmt 0                 # 01-xor/xor_cipher.c:0:5
	xorl	%edx, %edx
	jmp	.LBB4_6
.Ltmp124:
.LBB4_4:
	#DEBUG_VALUE: frequency_attack:ciphertext <- $rbx
	#DEBUG_VALUE: frequency_attack:len <- $r14d
	#DEBUG_VALUE: frequency_attack:most_frequent <- 0
	#DEBUG_VALUE: i <- 0
	.loc	0 36 5                          # 01-xor/xor_cipher.c:36:5
	andl	$2147483644, %ecx               # imm = 0x7FFFFFFC
	xorl	%edx, %edx
.Ltmp125:
	.p2align	4, 0x90
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: frequency_attack:ciphertext <- $rbx
	#DEBUG_VALUE: frequency_attack:len <- $r14d
	#DEBUG_VALUE: frequency_attack:most_frequent <- 0
	#DEBUG_VALUE: i <- $rdx
	.loc	0 36 69                         # 01-xor/xor_cipher.c:36:69
	movzbl	(%rbx,%rdx), %esi
	.loc	0 36 46                         # 01-xor/xor_cipher.c:36:46
	incq	(%rsp,%rsi,8)
.Ltmp126:
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $rdx
	.loc	0 36 69                         # 01-xor/xor_cipher.c:36:69
	movzbl	1(%rbx,%rdx), %esi
	.loc	0 36 46                         # 01-xor/xor_cipher.c:36:46
	incq	(%rsp,%rsi,8)
.Ltmp127:
	#DEBUG_VALUE: i <- [DW_OP_constu 2, DW_OP_or, DW_OP_stack_value] $rdx
	.loc	0 36 69                         # 01-xor/xor_cipher.c:36:69
	movzbl	2(%rbx,%rdx), %esi
	.loc	0 36 46                         # 01-xor/xor_cipher.c:36:46
	incq	(%rsp,%rsi,8)
.Ltmp128:
	#DEBUG_VALUE: i <- [DW_OP_constu 3, DW_OP_or, DW_OP_stack_value] $rdx
	.loc	0 36 69                         # 01-xor/xor_cipher.c:36:69
	movzbl	3(%rbx,%rdx), %esi
	.loc	0 36 46                         # 01-xor/xor_cipher.c:36:46
	incq	(%rsp,%rsi,8)
	.loc	0 36 41                         # 01-xor/xor_cipher.c:36:41
	addq	$4, %rdx
.Ltmp129:
	#DEBUG_VALUE: i <- $rdx
	.loc	0 36 5                          # 01-xor/xor_cipher.c:36:5
	cmpq	%rdx, %rcx
	jne	.LBB4_5
.Ltmp130:
.LBB4_6:
	#DEBUG_VALUE: frequency_attack:ciphertext <- $rbx
	#DEBUG_VALUE: frequency_attack:len <- $r14d
	#DEBUG_VALUE: frequency_attack:most_frequent <- 0
	testq	%rax, %rax
	je	.LBB4_9
.Ltmp131:
# %bb.7:
	#DEBUG_VALUE: frequency_attack:ciphertext <- $rbx
	#DEBUG_VALUE: frequency_attack:len <- $r14d
	#DEBUG_VALUE: frequency_attack:most_frequent <- 0
	addq	%rdx, %rbx
.Ltmp132:
	#DEBUG_VALUE: frequency_attack:ciphertext <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 5                           # 01-xor/xor_cipher.c:0:5
	xorl	%ecx, %ecx
.Ltmp133:
	.p2align	4, 0x90
.LBB4_8:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: frequency_attack:ciphertext <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: frequency_attack:len <- $r14d
	#DEBUG_VALUE: frequency_attack:most_frequent <- 0
	#DEBUG_VALUE: i <- undef
	.loc	0 36 69                         # 01-xor/xor_cipher.c:36:69
	movzbl	(%rbx,%rcx), %edx
	.loc	0 36 46                         # 01-xor/xor_cipher.c:36:46
	incq	(%rsp,%rdx,8)
.Ltmp134:
	.loc	0 36 5                          # 01-xor/xor_cipher.c:36:5
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB4_8
.Ltmp135:
.LBB4_9:
	#DEBUG_VALUE: frequency_attack:ciphertext <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: frequency_attack:len <- $r14d
	#DEBUG_VALUE: frequency_attack:most_frequent <- 0
	.loc	0 0 5                           # 01-xor/xor_cipher.c:0:5
	movl	$1, %eax
	xorl	%ebp, %ebp
	jmp	.LBB4_10
.Ltmp136:
	.p2align	4, 0x90
.LBB4_16:                               #   in Loop: Header=BB4_10 Depth=1
	#DEBUG_VALUE: frequency_attack:ciphertext <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: frequency_attack:len <- $r14d
	#DEBUG_VALUE: frequency_attack:most_frequent <- $edx
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $rax
	#DEBUG_VALUE: frequency_attack:most_frequent <- $bpl
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 3, DW_OP_stack_value] $rax
	.loc	0 37 26 is_stmt 1               # 01-xor/xor_cipher.c:37:26
	addq	$3, %rax
.Ltmp137:
	cmpq	$256, %rax                      # imm = 0x100
.Ltmp138:
	.loc	0 37 5 is_stmt 0                # 01-xor/xor_cipher.c:37:5
	je	.LBB4_17
.Ltmp139:
.LBB4_10:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: frequency_attack:ciphertext <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: frequency_attack:len <- $r14d
	#DEBUG_VALUE: i <- $rax
	#DEBUG_VALUE: frequency_attack:most_frequent <- $bpl
	.loc	0 38 30 is_stmt 1               # 01-xor/xor_cipher.c:38:30
	movzbl	%bpl, %ecx
	.loc	0 38 13 is_stmt 0               # 01-xor/xor_cipher.c:38:13
	movq	(%rsp,%rax,8), %rdx
.Ltmp140:
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	.loc	0 0 13                          # 01-xor/xor_cipher.c:0:13
	movl	%eax, %ebp
.Ltmp141:
	.loc	0 38 28                         # 01-xor/xor_cipher.c:38:28
	cmpq	(%rsp,%rcx,8), %rdx
.Ltmp142:
	.loc	0 38 13                         # 01-xor/xor_cipher.c:38:13
	ja	.LBB4_12
.Ltmp143:
# %bb.11:                               #   in Loop: Header=BB4_10 Depth=1
	#DEBUG_VALUE: frequency_attack:ciphertext <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: frequency_attack:len <- $r14d
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	.loc	0 0 13                          # 01-xor/xor_cipher.c:0:13
	movl	%ecx, %ebp
.Ltmp144:
.LBB4_12:                               #   in Loop: Header=BB4_10 Depth=1
	#DEBUG_VALUE: frequency_attack:ciphertext <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: frequency_attack:len <- $r14d
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	movq	8(%rsp,%rax,8), %rcx
.Ltmp145:
	.loc	0 38 30                         # 01-xor/xor_cipher.c:38:30
	movzbl	%bpl, %edx
.Ltmp146:
	#DEBUG_VALUE: frequency_attack:most_frequent <- $edx
	.loc	0 38 28                         # 01-xor/xor_cipher.c:38:28
	cmpq	(%rsp,%rdx,8), %rcx
.Ltmp147:
	.loc	0 38 13                         # 01-xor/xor_cipher.c:38:13
	jbe	.LBB4_14
.Ltmp148:
# %bb.13:                               #   in Loop: Header=BB4_10 Depth=1
	#DEBUG_VALUE: frequency_attack:ciphertext <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: frequency_attack:len <- $r14d
	#DEBUG_VALUE: frequency_attack:most_frequent <- $edx
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	.loc	0 0 13                          # 01-xor/xor_cipher.c:0:13
	leal	1(%rax), %ecx
	movzbl	%cl, %ebp
.Ltmp149:
.LBB4_14:                               #   in Loop: Header=BB4_10 Depth=1
	#DEBUG_VALUE: frequency_attack:ciphertext <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: frequency_attack:len <- $r14d
	#DEBUG_VALUE: frequency_attack:most_frequent <- $edx
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $rax
	.loc	0 38 13                         # 01-xor/xor_cipher.c:38:13
	movq	16(%rsp,%rax,8), %rcx
	.loc	0 38 30                         # 01-xor/xor_cipher.c:38:30
	movzbl	%bpl, %edx
.Ltmp150:
	#DEBUG_VALUE: frequency_attack:most_frequent <- $edx
	.loc	0 38 28                         # 01-xor/xor_cipher.c:38:28
	cmpq	(%rsp,%rdx,8), %rcx
.Ltmp151:
	.loc	0 38 13                         # 01-xor/xor_cipher.c:38:13
	jbe	.LBB4_16
.Ltmp152:
# %bb.15:                               #   in Loop: Header=BB4_10 Depth=1
	#DEBUG_VALUE: frequency_attack:ciphertext <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: frequency_attack:len <- $r14d
	#DEBUG_VALUE: frequency_attack:most_frequent <- $edx
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $rax
	.loc	0 0 13                          # 01-xor/xor_cipher.c:0:13
	leal	2(%rax), %ecx
	movzbl	%cl, %ebp
	jmp	.LBB4_16
.Ltmp153:
.LBB4_17:
	#DEBUG_VALUE: frequency_attack:ciphertext <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: frequency_attack:len <- $r14d
	#DEBUG_VALUE: frequency_attack:most_frequent <- $bpl
	.loc	0 39 33 is_stmt 1               # 01-xor/xor_cipher.c:39:33
	xorb	$101, %bpl
.Ltmp154:
.LBB4_18:
	#DEBUG_VALUE: frequency_attack:ciphertext <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: frequency_attack:len <- $r14d
	.loc	0 40 1                          # 01-xor/xor_cipher.c:40:1
	movl	%ebp, %eax
	.loc	0 40 1 epilogue_begin is_stmt 0 # 01-xor/xor_cipher.c:40:1
	addq	$2048, %rsp                     # imm = 0x800
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp155:
	#DEBUG_VALUE: frequency_attack:len <- [DW_OP_LLVM_entry_value 1] $esi
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp156:
.Lfunc_end4:
	.size	frequency_attack, .Lfunc_end4-frequency_attack
	.cfi_endproc
                                        # -- End function
	.globl	known_plaintext_attack          # -- Begin function known_plaintext_attack
	.p2align	4, 0x90
	.type	known_plaintext_attack,@function
known_plaintext_attack:                 # @known_plaintext_attack
.Lfunc_begin5:
	.loc	0 41 0 is_stmt 1                # 01-xor/xor_cipher.c:41:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: known_plaintext_attack:known_plain <- $edi
	#DEBUG_VALUE: known_plaintext_attack:known_cipher <- $esi
	movl	%edi, %eax
.Ltmp157:
	.loc	0 42 40 prologue_end            # 01-xor/xor_cipher.c:42:40
	xorl	%esi, %eax
                                        # kill: def $al killed $al killed $eax
	.loc	0 42 5 is_stmt 0                # 01-xor/xor_cipher.c:42:5
	retq
.Ltmp158:
.Lfunc_end5:
	.size	known_plaintext_attack, .Lfunc_end5-known_plaintext_attack
	.cfi_endproc
                                        # -- End function
	.globl	xor_constant_time               # -- Begin function xor_constant_time
	.p2align	4, 0x90
	.type	xor_constant_time,@function
xor_constant_time:                      # @xor_constant_time
.Lfunc_begin6:
	.loc	0 46 0 is_stmt 1                # 01-xor/xor_cipher.c:46:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $edx
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r8d
	testl	%r8d, %r8d
.Ltmp159:
	.loc	0 47 17 prologue_end            # 01-xor/xor_cipher.c:47:17
	je	.LBB6_25
.Ltmp160:
# %bb.1:
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $edx
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r8d
	testq	%rsi, %rsi
	je	.LBB6_25
.Ltmp161:
# %bb.2:
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $edx
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r8d
	testl	%edx, %edx
	jle	.LBB6_25
.Ltmp162:
# %bb.3:
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $edx
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r8d
	testl	%r8d, %r8d
	js	.LBB6_25
.Ltmp163:
# %bb.4:
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $edx
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r8d
	.loc	0 49 19                         # 01-xor/xor_cipher.c:49:19
	testq	%rdi, %rdi
	.loc	0 49 27 is_stmt 0               # 01-xor/xor_cipher.c:49:27
	je	.LBB6_25
.Ltmp164:
# %bb.5:
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $edx
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r8d
	testq	%rcx, %rcx
	je	.LBB6_25
.Ltmp165:
# %bb.6:
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $edx
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r8d
	.loc	0 0 27                          # 01-xor/xor_cipher.c:0:27
	movl	%r8d, %r10d
.Ltmp166:
	#DEBUG_VALUE: lab_ranges_overlap:an <- $r8d
	movl	%edx, %r9d
.Ltmp167:
	#DEBUG_VALUE: lab_ranges_overlap:bn <- $edx
	#DEBUG_VALUE: lab_ranges_overlap:a <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:b <- $rsi
	#DEBUG_VALUE: lab_ranges_overlap:aa <- $rcx
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rsi
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rsi
	#DEBUG_VALUE: lab_ranges_overlap:aa <- $rcx
	.loc	1 18 15 is_stmt 1               # 01-xor/../include/lab_status.h:18:15
	movq	%rcx, %rax
	subq	%rsi, %rax
	movq	%rax, %rdx
.Ltmp168:
	#DEBUG_VALUE: lab_ranges_overlap:bn <- $r9d
	#DEBUG_VALUE: xor_constant_time:key_len <- $r9d
	negq	%rdx
	.loc	1 18 12 is_stmt 0               # 01-xor/../include/lab_status.h:18:12
	xorl	%r11d, %r11d
	cmpq	%r10, %rdx
	setae	%r11b
	xorl	%edx, %edx
	cmpq	%r9, %rax
	setae	%dl
	.loc	1 18 15                         # 01-xor/../include/lab_status.h:18:15
	cmpq	%rsi, %rcx
	.loc	1 18 12                         # 01-xor/../include/lab_status.h:18:12
	cmoval	%edx, %r11d
.Ltmp169:
	.loc	0 50 9 is_stmt 1                # 01-xor/xor_cipher.c:50:9
	cmpb	$1, %r11b
	jne	.LBB6_25
.Ltmp170:
# %bb.7:
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $r9d
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r8d
	.loc	0 51 27                         # 01-xor/xor_cipher.c:51:27
	movq	%rcx, %rax
	subq	%rdi, %rax
	.loc	0 51 54 is_stmt 0               # 01-xor/xor_cipher.c:51:54
	je	.LBB6_9
.Ltmp171:
# %bb.8:
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $r9d
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r8d
	#DEBUG_VALUE: lab_ranges_overlap:bb <- $rdi
	.loc	1 18 15 is_stmt 1               # 01-xor/../include/lab_status.h:18:15
	negq	%rax
	movq	%rcx, %rdx
	subq	%rdi, %rdx
	.loc	1 18 12 is_stmt 0               # 01-xor/../include/lab_status.h:18:12
	cmovbeq	%rax, %rdx
	cmpq	%r10, %rdx
.Ltmp172:
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: lab_ranges_overlap:aa <- $rcx
	.loc	0 51 9 is_stmt 1                # 01-xor/xor_cipher.c:51:9
	jb	.LBB6_25
.Ltmp173:
.LBB6_9:
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $r9d
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r8d
	.loc	0 53 5                          # 01-xor/xor_cipher.c:53:5
	cmpl	$1, %r8d
	jne	.LBB6_14
.Ltmp174:
# %bb.10:
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $r9d
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r8d
	.loc	0 0 5 is_stmt 0                 # 01-xor/xor_cipher.c:0:5
	xorl	%r8d, %r8d
.Ltmp175:
	#DEBUG_VALUE: xor_constant_time:len <- $r10d
	.loc	0 53 5                          # 01-xor/xor_cipher.c:53:5
	testb	$1, %r10b
	jne	.LBB6_12
.Ltmp176:
.LBB6_25:
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- [DW_OP_LLVM_entry_value 1] $r8d
	.loc	0 55 1 is_stmt 1                # 01-xor/xor_cipher.c:55:1
	retq
.Ltmp177:
.LBB6_14:
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $r9d
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r8d
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.loc	0 53 5                          # 01-xor/xor_cipher.c:53:5
	movl	%r10d, %r11d
	andl	$-2, %r11d
	xorl	%r8d, %r8d
.Ltmp178:
	#DEBUG_VALUE: xor_constant_time:len <- $r10d
	.loc	0 0 5 is_stmt 0                 # 01-xor/xor_cipher.c:0:5
	jmp	.LBB6_15
.Ltmp179:
	.p2align	4, 0x90
.LBB6_20:                               #   in Loop: Header=BB6_15 Depth=1
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $r9d
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r10d
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $r8
	.loc	0 54 64 is_stmt 1               # 01-xor/xor_cipher.c:54:64
	xorl	%edx, %edx
	divq	%r9
.Ltmp180:
.LBB6_21:                               #   in Loop: Header=BB6_15 Depth=1
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $r9d
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r10d
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $r8
	.loc	0 54 47 is_stmt 0               # 01-xor/xor_cipher.c:54:47
	xorb	(%rsi,%rdx), %bl
	.loc	0 54 16                         # 01-xor/xor_cipher.c:54:16
	movb	%bl, 1(%rcx,%r8)
	.loc	0 53 41 is_stmt 1               # 01-xor/xor_cipher.c:53:41
	addq	$2, %r8
.Ltmp181:
	#DEBUG_VALUE: i <- $r8
	.loc	0 53 5 is_stmt 0                # 01-xor/xor_cipher.c:53:5
	cmpq	%r8, %r11
	je	.LBB6_22
.Ltmp182:
.LBB6_15:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $r9d
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r10d
	#DEBUG_VALUE: i <- $r8
	.loc	0 54 34 is_stmt 1               # 01-xor/xor_cipher.c:54:34
	movzbl	(%rdi,%r8), %ebx
	.loc	0 54 64 is_stmt 0               # 01-xor/xor_cipher.c:54:64
	movq	%r8, %rax
	shrq	$32, %rax
	je	.LBB6_16
.Ltmp183:
# %bb.17:                               #   in Loop: Header=BB6_15 Depth=1
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $r9d
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r10d
	#DEBUG_VALUE: i <- $r8
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%r9
	jmp	.LBB6_18
.Ltmp184:
	.p2align	4, 0x90
.LBB6_16:                               #   in Loop: Header=BB6_15 Depth=1
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $r9d
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r10d
	#DEBUG_VALUE: i <- $r8
	movl	%r8d, %eax
	xorl	%edx, %edx
	divl	%r9d
                                        # kill: def $edx killed $edx def $rdx
.Ltmp185:
.LBB6_18:                               #   in Loop: Header=BB6_15 Depth=1
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $r9d
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r10d
	#DEBUG_VALUE: i <- $r8
	.loc	0 54 47                         # 01-xor/xor_cipher.c:54:47
	xorb	(%rsi,%rdx), %bl
	.loc	0 54 16                         # 01-xor/xor_cipher.c:54:16
	movb	%bl, (%rcx,%r8)
.Ltmp186:
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $r8
	.loc	0 54 34                         # 01-xor/xor_cipher.c:54:34
	leaq	1(%r8), %rax
	movzbl	1(%rdi,%r8), %ebx
	.loc	0 54 64                         # 01-xor/xor_cipher.c:54:64
	movq	%rax, %rdx
	shrq	$32, %rdx
	jne	.LBB6_20
.Ltmp187:
# %bb.19:                               #   in Loop: Header=BB6_15 Depth=1
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $r9d
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r10d
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $r8
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r9d
                                        # kill: def $edx killed $edx def $rdx
	jmp	.LBB6_21
.Ltmp188:
.LBB6_22:
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $r9d
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r10d
	#DEBUG_VALUE: i <- $r8
	.loc	0 0 64                          # 01-xor/xor_cipher.c:0:64
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.loc	0 53 5 is_stmt 1                # 01-xor/xor_cipher.c:53:5
	testb	$1, %r10b
	je	.LBB6_25
.Ltmp189:
.LBB6_12:
	#DEBUG_VALUE: xor_constant_time:plaintext <- $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $r9d
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r10d
	#DEBUG_VALUE: i <- $r8
	.loc	0 54 34                         # 01-xor/xor_cipher.c:54:34
	movzbl	(%rdi,%r8), %edi
.Ltmp190:
	#DEBUG_VALUE: xor_constant_time:plaintext <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 54 64 is_stmt 0               # 01-xor/xor_cipher.c:54:64
	movq	%r8, %rax
	shrq	$32, %rax
	je	.LBB6_13
.Ltmp191:
# %bb.23:
	#DEBUG_VALUE: xor_constant_time:plaintext <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $r9d
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r10d
	#DEBUG_VALUE: i <- $r8
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%r9
	jmp	.LBB6_24
.Ltmp192:
.LBB6_13:
	#DEBUG_VALUE: xor_constant_time:plaintext <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $r9d
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r10d
	#DEBUG_VALUE: i <- $r8
	movl	%r8d, %eax
	xorl	%edx, %edx
	divl	%r9d
                                        # kill: def $edx killed $edx def $rdx
.Ltmp193:
.LBB6_24:
	#DEBUG_VALUE: xor_constant_time:plaintext <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: xor_constant_time:key <- $rsi
	#DEBUG_VALUE: xor_constant_time:key_len <- $r9d
	#DEBUG_VALUE: xor_constant_time:out <- $rcx
	#DEBUG_VALUE: xor_constant_time:len <- $r10d
	#DEBUG_VALUE: i <- $r8
	.loc	0 54 47                         # 01-xor/xor_cipher.c:54:47
	xorb	(%rsi,%rdx), %dil
	.loc	0 54 16                         # 01-xor/xor_cipher.c:54:16
	movb	%dil, (%rcx,%r8)
.Ltmp194:
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r8
	.loc	0 55 1 is_stmt 1                # 01-xor/xor_cipher.c:55:1
	retq
.Ltmp195:
.Lfunc_end6:
	.size	xor_constant_time, .Lfunc_end6-xor_constant_time
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	32                              # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
	.long	.Ldebug_loc5-.Lloclists_table_base0
	.long	.Ldebug_loc6-.Lloclists_table_base0
	.long	.Ldebug_loc7-.Lloclists_table_base0
	.long	.Ldebug_loc8-.Lloclists_table_base0
	.long	.Ldebug_loc9-.Lloclists_table_base0
	.long	.Ldebug_loc10-.Lloclists_table_base0
	.long	.Ldebug_loc11-.Lloclists_table_base0
	.long	.Ldebug_loc12-.Lloclists_table_base0
	.long	.Ldebug_loc13-.Lloclists_table_base0
	.long	.Ldebug_loc14-.Lloclists_table_base0
	.long	.Ldebug_loc15-.Lloclists_table_base0
	.long	.Ldebug_loc16-.Lloclists_table_base0
	.long	.Ldebug_loc17-.Lloclists_table_base0
	.long	.Ldebug_loc18-.Lloclists_table_base0
	.long	.Ldebug_loc19-.Lloclists_table_base0
	.long	.Ldebug_loc20-.Lloclists_table_base0
	.long	.Ldebug_loc21-.Lloclists_table_base0
	.long	.Ldebug_loc22-.Lloclists_table_base0
	.long	.Ldebug_loc23-.Lloclists_table_base0
	.long	.Ldebug_loc24-.Lloclists_table_base0
	.long	.Ldebug_loc25-.Lloclists_table_base0
	.long	.Ldebug_loc26-.Lloclists_table_base0
	.long	.Ldebug_loc27-.Lloclists_table_base0
	.long	.Ldebug_loc28-.Lloclists_table_base0
	.long	.Ldebug_loc29-.Lloclists_table_base0
	.long	.Ldebug_loc30-.Lloclists_table_base0
	.long	.Ldebug_loc31-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	49                              # DW_OP_lit1
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	49                              # DW_OP_lit1
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp80-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp99-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	49                              # DW_OP_lit1
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	49                              # DW_OP_lit1
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp117-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp117-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp155-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp155-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp136-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp136-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp146-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp153-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp153-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp154-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	49                              # DW_OP_lit1
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	50                              # DW_OP_lit2
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	51                              # DW_OP_lit3
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp136-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp140-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp190-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp190-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp168-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp176-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp176-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp177-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp177-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp175-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp175-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp176-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp176-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp177-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # super-register DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp177-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp178-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp178-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp167-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp168-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp170-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp179-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp181-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	0                               # 0
	.byte	49                              # DW_OP_lit1
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp181-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp186-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp186-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	0                               # 0
	.byte	49                              # DW_OP_lit1
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp188-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp194-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp194-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
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
	.byte	17                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
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
	.byte	25                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
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
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
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
	.byte	32                              # Abbreviation Code
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
	.byte	33                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
	.byte	53                              # DW_TAG_volatile_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
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
	.byte	1                               # Abbrev [1] 0xc:0x4cb DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	5                               # Abbrev [5] 0x50:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x51:0x5 DW_TAG_pointer_type
	.long	86                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0x56:0x8 DW_TAG_typedef
	.long	94                              # DW_AT_type
	.byte	14                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x5e:0x8 DW_TAG_typedef
	.long	102                             # DW_AT_type
	.byte	13                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x66:0x4 DW_TAG_base_type
	.byte	12                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x6a:0x5 DW_TAG_pointer_type
	.long	111                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x6f:0x5 DW_TAG_const_type
	.long	86                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0x74:0x8 DW_TAG_typedef
	.long	124                             # DW_AT_type
	.byte	16                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x7c:0x4 DW_TAG_base_type
	.byte	15                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x80:0x4 DW_TAG_base_type
	.byte	17                              # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x84:0x5 DW_TAG_pointer_type
	.long	137                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x89:0x1 DW_TAG_const_type
	.byte	7                               # Abbrev [7] 0x8a:0x8 DW_TAG_typedef
	.long	124                             # DW_AT_type
	.byte	18                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x92:0x21 DW_TAG_subprogram
	.byte	19                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	179                             # DW_AT_type
                                        # DW_AT_inline
	.byte	11                              # Abbrev [11] 0x9a:0x8 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.long	132                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xa2:0x8 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.long	116                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xaa:0x8 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.long	116                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xb3:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xbb:0x5d DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	491                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0xc7:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	499                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0xce:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.long	507                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0xd4:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	515                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0xdb:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	523                             # DW_AT_abstract_origin
	.byte	15                              # Abbrev [15] 0xe2:0x6 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.long	531                             # DW_AT_abstract_origin
	.byte	16                              # Abbrev [16] 0xe8:0x22 DW_TAG_inlined_subroutine
	.long	146                             # DW_AT_abstract_origin
	.byte	0                               # DW_AT_low_pc
	.long	.Ltmp3-.Lfunc_begin0            # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	4                               # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0xf5:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	154                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0xfc:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.long	162                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x102:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	170                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x10a:0xd DW_TAG_lexical_block
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp22-.Ltmp6                  # DW_AT_high_pc
	.byte	15                              # Abbrev [15] 0x110:0x6 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.long	540                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x118:0x39 DW_TAG_subprogram
	.byte	24                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	337                             # DW_AT_type
                                        # DW_AT_inline
	.byte	11                              # Abbrev [11] 0x120:0x8 DW_TAG_formal_parameter
	.byte	26                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	132                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x128:0x8 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	116                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x130:0x8 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	132                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x138:0x8 DW_TAG_formal_parameter
	.byte	29                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	116                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x140:0x8 DW_TAG_variable
	.byte	30                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	138                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x148:0x8 DW_TAG_variable
	.byte	31                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	138                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x151:0x4 DW_TAG_base_type
	.byte	25                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x155:0x96 DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	688                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x161:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	696                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x168:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.long	704                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x16e:0x6 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.long	712                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x174:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	720                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x17b:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	88
	.long	728                             # DW_AT_abstract_origin
	.byte	15                              # Abbrev [15] 0x182:0x6 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.long	736                             # DW_AT_abstract_origin
	.byte	16                              # Abbrev [16] 0x188:0x21 DW_TAG_inlined_subroutine
	.long	146                             # DW_AT_abstract_origin
	.byte	3                               # DW_AT_low_pc
	.long	.Ltmp29-.Ltmp24                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	11                              # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x195:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	154                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x19c:0x6 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.long	162                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x1a2:0x6 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.long	170                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x1a9:0x38 DW_TAG_inlined_subroutine
	.long	280                             # DW_AT_abstract_origin
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp38-.Ltmp36                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	15                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x1b6:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	288                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x1bd:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	89
	.long	296                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x1c4:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	304                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x1cb:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	88
	.long	312                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x1d2:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	320                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x1d9:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	82
	.long	328                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x1e1:0x9 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	15                              # Abbrev [15] 0x1e3:0x6 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.long	745                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x1eb:0x3b DW_TAG_subprogram
	.byte	32                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	3                               # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	179                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	11                              # Abbrev [11] 0x1f3:0x8 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	3                               # DW_AT_decl_line
	.long	81                              # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1fb:0x8 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	3                               # DW_AT_decl_line
	.long	116                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x203:0x8 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	3                               # DW_AT_decl_line
	.long	116                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x20b:0x8 DW_TAG_formal_parameter
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	3                               # DW_AT_decl_line
	.long	86                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x213:0x8 DW_TAG_variable
	.byte	34                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	4                               # DW_AT_decl_line
	.long	179                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x21b:0xa DW_TAG_lexical_block
	.byte	18                              # Abbrev [18] 0x21c:0x8 DW_TAG_variable
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.long	116                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x226:0x71 DW_TAG_subprogram
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x231:0x9 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.byte	44                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	1206                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x23a:0x9 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	128                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x243:0x4d DW_TAG_lexical_block
	.byte	6                               # DW_AT_low_pc
	.long	.Ltmp82-.Ltmp67                 # DW_AT_high_pc
	.byte	25                              # Abbrev [25] 0x249:0x9 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.long	116                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x252:0x3d DW_TAG_inlined_subroutine
	.long	491                             # DW_AT_abstract_origin
	.byte	7                               # DW_AT_low_pc
	.long	.Ltmp82-.Ltmp68                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	22                              # DW_AT_call_line
	.byte	15                              # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x25f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	499                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x266:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	80
	.long	507                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x26d:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	80
	.long	515                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x274:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	523                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x27b:0x6 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.long	531                             # DW_AT_abstract_origin
	.byte	17                              # Abbrev [17] 0x281:0xd DW_TAG_lexical_block
	.byte	7                               # DW_AT_low_pc
	.long	.Ltmp82-.Ltmp68                 # DW_AT_high_pc
	.byte	15                              # Abbrev [15] 0x287:0x6 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.long	540                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x290:0x6 DW_TAG_call_site
	.long	663                             # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x297:0xf DW_TAG_subprogram
	.byte	36                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	407                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	124                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	29                              # Abbrev [29] 0x2a0:0x5 DW_TAG_formal_parameter
	.long	678                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x2a6:0x5 DW_TAG_pointer_type
	.long	683                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2ab:0x5 DW_TAG_const_type
	.long	128                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x2b0:0x43 DW_TAG_subprogram
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	179                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	11                              # Abbrev [11] 0x2b8:0x8 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.long	81                              # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2c0:0x8 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.long	116                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2c8:0x8 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.long	116                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2d0:0x8 DW_TAG_formal_parameter
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	10                              # DW_AT_decl_line
	.long	106                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2d8:0x8 DW_TAG_formal_parameter
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	10                              # DW_AT_decl_line
	.long	116                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2e0:0x8 DW_TAG_variable
	.byte	34                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.long	179                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x2e8:0xa DW_TAG_lexical_block
	.byte	18                              # Abbrev [18] 0x2e9:0x8 DW_TAG_variable
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	116                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x2f3:0xb6 DW_TAG_subprogram
	.byte	8                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	40                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x2fe:0x9 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.byte	44                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	1206                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x307:0x9 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	678                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x310:0x9 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.byte	45                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	337                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x319:0x89 DW_TAG_lexical_block
	.byte	9                               # DW_AT_low_pc
	.long	.Ltmp111-.Ltmp89                # DW_AT_high_pc
	.byte	25                              # Abbrev [25] 0x31f:0x9 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	116                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x328:0x79 DW_TAG_inlined_subroutine
	.long	688                             # DW_AT_abstract_origin
	.byte	10                              # DW_AT_low_pc
	.long	.Ltmp111-.Ltmp90                # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	28                              # DW_AT_call_line
	.byte	15                              # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x335:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	696                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x33c:0x6 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.long	704                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x342:0x6 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.long	712                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x348:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	720                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x34f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	728                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x356:0x6 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.long	736                             # DW_AT_abstract_origin
	.byte	16                              # Abbrev [16] 0x35c:0x37 DW_TAG_inlined_subroutine
	.long	280                             # DW_AT_abstract_origin
	.byte	10                              # DW_AT_low_pc
	.long	.Ltmp93-.Ltmp90                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	15                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x369:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	288                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x370:0x6 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.long	296                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x376:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	304                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x37d:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	312                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x384:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	83
	.long	320                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x38b:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	94
	.long	328                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x393:0xd DW_TAG_lexical_block
	.byte	11                              # DW_AT_low_pc
	.long	.Ltmp111-.Ltmp94                # DW_AT_high_pc
	.byte	15                              # Abbrev [15] 0x399:0x6 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.long	745                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x3a2:0x6 DW_TAG_call_site
	.long	663                             # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x3a9:0x56 DW_TAG_subprogram
	.byte	12                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	128                             # DW_AT_type
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x3b8:0x9 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_location
	.byte	48                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	678                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x3c1:0x9 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_location
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	337                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x3ca:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.byte	46                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	1211                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x3d5:0x9 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	50                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	86                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x3de:0x10 DW_TAG_lexical_block
	.byte	13                              # DW_AT_low_pc
	.long	.Ltmp135-.Ltmp122               # DW_AT_high_pc
	.byte	25                              # Abbrev [25] 0x3e4:0x9 DW_TAG_variable
	.byte	25                              # DW_AT_location
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	116                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x3ee:0x10 DW_TAG_lexical_block
	.byte	14                              # DW_AT_low_pc
	.long	.Ltmp152-.Ltmp136               # DW_AT_high_pc
	.byte	25                              # Abbrev [25] 0x3f4:0x9 DW_TAG_variable
	.byte	26                              # DW_AT_location
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	116                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x3ff:0x24 DW_TAG_subprogram
	.byte	15                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	42                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	128                             # DW_AT_type
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x40e:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	128                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x418:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	128                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x423:0x93 DW_TAG_subprogram
	.byte	16                              # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	43                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x42e:0x9 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_location
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	678                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x437:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	678                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x441:0x9 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_location
	.byte	45                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	337                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x44a:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.byte	54                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	1228                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x454:0x9 DW_TAG_formal_parameter
	.byte	29                              # DW_AT_location
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	337                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x45d:0x37 DW_TAG_inlined_subroutine
	.long	280                             # DW_AT_abstract_origin
	.byte	17                              # DW_AT_low_pc
	.long	.Ltmp169-.Ltmp167               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	50                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x46a:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	288                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x471:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	88
	.long	296                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x478:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	304                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x47f:0x6 DW_TAG_formal_parameter
	.byte	30                              # DW_AT_location
	.long	312                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x485:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	82
	.long	320                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x48c:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	84
	.long	328                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x494:0x15 DW_TAG_inlined_subroutine
	.long	280                             # DW_AT_abstract_origin
	.byte	18                              # DW_AT_low_pc
	.long	.Ltmp172-.Ltmp171               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	52                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x4a1:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	328                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x4a9:0xc DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	25                              # Abbrev [25] 0x4ab:0x9 DW_TAG_variable
	.byte	31                              # DW_AT_location
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	116                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x4b6:0x5 DW_TAG_pointer_type
	.long	128                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x4bb:0xd DW_TAG_array_type
	.long	116                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x4c0:0x7 DW_TAG_subrange_type
	.long	1224                            # DW_AT_type
	.short	256                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x4c8:0x4 DW_TAG_base_type
	.byte	47                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	6                               # Abbrev [6] 0x4cc:0x5 DW_TAG_pointer_type
	.long	1233                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x4d1:0x5 DW_TAG_volatile_type
	.long	128                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	2                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp173-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp176-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp177-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp194-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	224                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 18.1.3 (1ubuntu1)" # string offset=0
.Linfo_string1:
	.asciz	"01-xor/xor_cipher.c"           # string offset=39
.Linfo_string2:
	.asciz	"/home/runner/work/lowlevel-crypto/lowlevel-crypto" # string offset=59
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=109
.Linfo_string4:
	.asciz	"LAB_OK"                        # string offset=122
.Linfo_string5:
	.asciz	"LAB_INVALID_ARGUMENT"          # string offset=129
.Linfo_string6:
	.asciz	"LAB_CAPACITY_ERROR"            # string offset=150
.Linfo_string7:
	.asciz	"LAB_EMPTY_KEY"                 # string offset=169
.Linfo_string8:
	.asciz	"LAB_OVERLAP_ERROR"             # string offset=183
.Linfo_string9:
	.asciz	"LAB_LIMIT_ERROR"               # string offset=201
.Linfo_string10:
	.asciz	"LAB_IO_ERROR"                  # string offset=217
.Linfo_string11:
	.asciz	"LAB_ALLOCATION_ERROR"          # string offset=230
.Linfo_string12:
	.asciz	"unsigned char"                 # string offset=251
.Linfo_string13:
	.asciz	"__uint8_t"                     # string offset=265
.Linfo_string14:
	.asciz	"uint8_t"                       # string offset=275
.Linfo_string15:
	.asciz	"unsigned long"                 # string offset=283
.Linfo_string16:
	.asciz	"size_t"                        # string offset=297
.Linfo_string17:
	.asciz	"char"                          # string offset=304
.Linfo_string18:
	.asciz	"uintptr_t"                     # string offset=309
.Linfo_string19:
	.asciz	"lab_validate_mutable"          # string offset=319
.Linfo_string20:
	.asciz	"lab_status"                    # string offset=340
.Linfo_string21:
	.asciz	"data"                          # string offset=351
.Linfo_string22:
	.asciz	"capacity"                      # string offset=356
.Linfo_string23:
	.asciz	"length"                        # string offset=365
.Linfo_string24:
	.asciz	"lab_ranges_overlap"            # string offset=372
.Linfo_string25:
	.asciz	"int"                           # string offset=391
.Linfo_string26:
	.asciz	"a"                             # string offset=395
.Linfo_string27:
	.asciz	"an"                            # string offset=397
.Linfo_string28:
	.asciz	"b"                             # string offset=400
.Linfo_string29:
	.asciz	"bn"                            # string offset=402
.Linfo_string30:
	.asciz	"aa"                            # string offset=405
.Linfo_string31:
	.asciz	"bb"                            # string offset=408
.Linfo_string32:
	.asciz	"xor_apply"                     # string offset=411
.Linfo_string33:
	.asciz	"key"                           # string offset=421
.Linfo_string34:
	.asciz	"status"                        # string offset=425
.Linfo_string35:
	.asciz	"i"                             # string offset=432
.Linfo_string36:
	.asciz	"strlen"                        # string offset=434
.Linfo_string37:
	.asciz	"xor_repeat"                    # string offset=441
.Linfo_string38:
	.asciz	"key_length"                    # string offset=452
.Linfo_string39:
	.asciz	"xor_single"                    # string offset=463
.Linfo_string40:
	.asciz	"xor_multi"                     # string offset=474
.Linfo_string41:
	.asciz	"frequency_attack"              # string offset=484
.Linfo_string42:
	.asciz	"known_plaintext_attack"        # string offset=501
.Linfo_string43:
	.asciz	"xor_constant_time"             # string offset=524
.Linfo_string44:
	.asciz	"text"                          # string offset=542
.Linfo_string45:
	.asciz	"key_len"                       # string offset=547
.Linfo_string46:
	.asciz	"frequencies"                   # string offset=555
.Linfo_string47:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=567
.Linfo_string48:
	.asciz	"ciphertext"                    # string offset=587
.Linfo_string49:
	.asciz	"len"                           # string offset=598
.Linfo_string50:
	.asciz	"most_frequent"                 # string offset=602
.Linfo_string51:
	.asciz	"known_plain"                   # string offset=616
.Linfo_string52:
	.asciz	"known_cipher"                  # string offset=628
.Linfo_string53:
	.asciz	"plaintext"                     # string offset=641
.Linfo_string54:
	.asciz	"out"                           # string offset=651
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
	.long	.Linfo_string39
	.long	.Linfo_string40
	.long	.Linfo_string41
	.long	.Linfo_string42
	.long	.Linfo_string43
	.long	.Linfo_string44
	.long	.Linfo_string45
	.long	.Linfo_string46
	.long	.Linfo_string47
	.long	.Linfo_string48
	.long	.Linfo_string49
	.long	.Linfo_string50
	.long	.Linfo_string51
	.long	.Linfo_string52
	.long	.Linfo_string53
	.long	.Linfo_string54
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp6
	.quad	.Lfunc_begin1
	.quad	.Ltmp24
	.quad	.Ltmp36
	.quad	.Lfunc_begin2
	.quad	.Ltmp67
	.quad	.Ltmp68
	.quad	.Lfunc_begin3
	.quad	.Ltmp89
	.quad	.Ltmp90
	.quad	.Ltmp94
	.quad	.Lfunc_begin4
	.quad	.Ltmp122
	.quad	.Ltmp136
	.quad	.Lfunc_begin5
	.quad	.Lfunc_begin6
	.quad	.Ltmp167
	.quad	.Ltmp171
.Ldebug_addr_end0:
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.section	.debug_line,"",@progbits
.Lline_table_start0:
