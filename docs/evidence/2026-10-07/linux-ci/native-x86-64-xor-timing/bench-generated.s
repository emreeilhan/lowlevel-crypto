	.text
	.file	"lab_bench.c"
	.file	0 "/home/runner/work/lowlevel-crypto/lowlevel-crypto" "bench/lab_bench.c" md5 0x808f4a63e8bf43e153d128337afaab51
	.file	1 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xe1865d9fe29fe1b5ced550b7ba458f9e
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x256fcabbefa27ca8cf5e6d37525e6e16
	.file	3 "bench/../01-xor/../include" "lab_status.h" md5 0xdf6d340501e8ba3ccb72a16d75d9200e
	.file	4 "/usr/lib/llvm-18/lib/clang/18/include" "__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.loc	0 110 0                         # bench/lab_bench.c:110:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: main:argc <- $edi
	#DEBUG_VALUE: main:argv <- $rsi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$488, %rsp                      # imm = 0x1E8
	.cfi_def_cfa_offset 544
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movl	%edi, %ebx
.Ltmp0:
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 0 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 80, DW_OP_deref, DW_OP_LLVM_fragment 64 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 192 64] $rsp
	.loc	0 111 14 prologue_end           # bench/lab_bench.c:111:14
	cmpl	$2, %edi
	.loc	0 111 19 is_stmt 0              # bench/lab_bench.c:111:19
	jne	.LBB0_10
.Ltmp1:
# %bb.1:
	#DEBUG_VALUE: main:argc <- $ebx
	#DEBUG_VALUE: main:argv <- $r14
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 0 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 80, DW_OP_deref, DW_OP_LLVM_fragment 64 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 192 64] $rsp
	.loc	0 111 29                        # bench/lab_bench.c:111:29
	movq	8(%r14), %rdi
	.loc	0 111 22                        # bench/lab_bench.c:111:22
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
.Ltmp2:
	.loc	0 111 51                        # bench/lab_bench.c:111:51
	testl	%eax, %eax
.Ltmp3:
	.loc	0 111 9                         # bench/lab_bench.c:111:9
	je	.LBB0_7
.Ltmp4:
# %bb.2:
	#DEBUG_VALUE: main:argc <- $ebx
	#DEBUG_VALUE: main:argv <- $r14
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 0 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 80, DW_OP_deref, DW_OP_LLVM_fragment 64 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 192 64] $rsp
	#DEBUG_VALUE: parse:argc <- $ebx
	#DEBUG_VALUE: parse:argv <- $r14
	#DEBUG_VALUE: parse:o <- undef
	.loc	0 42 10 is_stmt 1               # bench/lab_bench.c:42:10
	movq	$64, 24(%rsp)
.Ltmp5:
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 0 64] $rsp
	movq	$1000, 80(%rsp)                 # imm = 0x3E8
.Ltmp6:
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 80, DW_OP_deref, DW_OP_LLVM_fragment 64 64] $rsp
	movq	$31, 56(%rsp)
.Ltmp7:
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 64] $rsp
	movq	$3, 40(%rsp)
.Ltmp8:
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 192 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_LLVM_fragment 256 32] 20261007
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: parsed <- undef
	#DEBUG_VALUE: main:o <- [DW_OP_LLVM_fragment 320 64] undef
	.loc	0 0 10 is_stmt 0                # bench/lab_bench.c:0:10
	jmp	.LBB0_3
.Ltmp9:
.LBB0_10:
	#DEBUG_VALUE: main:argc <- $ebx
	#DEBUG_VALUE: main:argv <- $r14
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 0 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 80, DW_OP_deref, DW_OP_LLVM_fragment 64 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 192 64] $rsp
	#DEBUG_VALUE: parse:argc <- $ebx
	#DEBUG_VALUE: parse:argv <- $r14
	#DEBUG_VALUE: parse:o <- undef
	.loc	0 42 10                         # bench/lab_bench.c:42:10
	movq	$64, 24(%rsp)
.Ltmp10:
	#DEBUG_VALUE: main:o <- [DW_OP_LLVM_fragment 0 64] 64
	movq	$1000, 80(%rsp)                 # imm = 0x3E8
.Ltmp11:
	#DEBUG_VALUE: main:o <- [DW_OP_LLVM_fragment 64 64] 1000
	movq	$31, 56(%rsp)
.Ltmp12:
	#DEBUG_VALUE: main:o <- [DW_OP_LLVM_fragment 128 64] 31
	movq	$3, 40(%rsp)
.Ltmp13:
	#DEBUG_VALUE: main:o <- [DW_OP_LLVM_fragment 192 64] 3
	#DEBUG_VALUE: main:o <- [DW_OP_LLVM_fragment 256 32] 20261007
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: parsed <- undef
	#DEBUG_VALUE: main:o <- [DW_OP_LLVM_fragment 320 64] undef
	.loc	0 43 5 is_stmt 1                # bench/lab_bench.c:43:5
	jl	.LBB0_11
.Ltmp14:
.LBB0_3:
	#DEBUG_VALUE: main:argc <- $ebx
	#DEBUG_VALUE: main:argv <- $r14
	#DEBUG_VALUE: parse:argc <- $ebx
	#DEBUG_VALUE: parse:argv <- $r14
	#DEBUG_VALUE: main:o <- [DW_OP_LLVM_fragment 256 32] 20261007
	#DEBUG_VALUE: i <- 1
	.loc	0 0 5 is_stmt 0                 # bench/lab_bench.c:0:5
	movq	%r14, 16(%rsp)                  # 8-byte Spill
.Ltmp15:
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 43 5                          # bench/lab_bench.c:43:5
	movl	%ebx, %r14d
.Ltmp16:
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: main:argc <- $r14d
	.loc	0 0 5                           # bench/lab_bench.c:0:5
	movl	$1, %r13d
	movl	$20261007, %eax                 # imm = 0x135288F
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	.L.str.6(%rip), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB0_4
.Ltmp17:
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: key <- $rbp
	#DEBUG_VALUE: value <- $rbx
	movq	%rbx, 8(%rsp)                   # 8-byte Spill
	#DEBUG_VALUE: value <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
.Ltmp18:
	#DEBUG_VALUE: main:o <- [DW_OP_LLVM_fragment 320 64] undef
.LBB0_36:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: value <- $rbx
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: parsed <- undef
	.loc	0 43 33                         # bench/lab_bench.c:43:33
	addq	$2, %r13
.Ltmp19:
	#DEBUG_VALUE: i <- $r13
	.loc	0 43 23                         # bench/lab_bench.c:43:23
	cmpq	%r14, %r13
.Ltmp20:
	.loc	0 43 5                          # bench/lab_bench.c:43:5
	jae	.LBB0_37
.Ltmp21:
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_15 Depth 2
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: i <- $r13
	.loc	0 44 15 is_stmt 1               # bench/lab_bench.c:44:15
	leaq	1(%r13), %rax
	.loc	0 44 19 is_stmt 0               # bench/lab_bench.c:44:19
	cmpq	%r14, %rax
.Ltmp22:
	.loc	0 44 13                         # bench/lab_bench.c:44:13
	je	.LBB0_40
.Ltmp23:
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	.loc	0 0 13                          # bench/lab_bench.c:0:13
	movq	16(%rsp), %rax                  # 8-byte Reload
	.loc	0 45 27 is_stmt 1               # bench/lab_bench.c:45:27
	movq	(%rax,%r13,8), %rbp
.Ltmp24:
	#DEBUG_VALUE: key <- $rbp
	.loc	0 45 45 is_stmt 0               # bench/lab_bench.c:45:45
	movq	8(%rax,%r13,8), %rbx
.Ltmp25:
	#DEBUG_VALUE: value <- $rbx
	.loc	0 46 13 is_stmt 1               # bench/lab_bench.c:46:13
	movq	%rbp, %rdi
	leaq	.L.str.26(%rip), %rsi
	callq	strcmp@PLT
.Ltmp26:
	.loc	0 46 41 is_stmt 0               # bench/lab_bench.c:46:41
	testl	%eax, %eax
.Ltmp27:
	.loc	0 46 13                         # bench/lab_bench.c:46:13
	je	.LBB0_6
.Ltmp28:
# %bb.12:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: key <- $rbp
	#DEBUG_VALUE: value <- $rbx
	.loc	0 48 13 is_stmt 1               # bench/lab_bench.c:48:13
	movq	%rbp, %rdi
	leaq	.L.str.27(%rip), %rsi
	callq	strcmp@PLT
.Ltmp29:
	.loc	0 48 35 is_stmt 0               # bench/lab_bench.c:48:35
	testl	%eax, %eax
.Ltmp30:
	.loc	0 48 13                         # bench/lab_bench.c:48:13
	je	.LBB0_13
.Ltmp31:
# %bb.20:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: key <- $rbp
	#DEBUG_VALUE: value <- $rbx
	.loc	0 53 13 is_stmt 1               # bench/lab_bench.c:53:13
	movq	%rbp, %rdi
	leaq	.L.str.28(%rip), %rsi
	callq	strcmp@PLT
.Ltmp32:
	.loc	0 53 37 is_stmt 0               # bench/lab_bench.c:53:37
	testl	%eax, %eax
.Ltmp33:
	.loc	0 53 13                         # bench/lab_bench.c:53:13
	je	.LBB0_21
.Ltmp34:
# %bb.22:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: key <- $rbp
	#DEBUG_VALUE: value <- $rbx
	.loc	0 54 18 is_stmt 1               # bench/lab_bench.c:54:18
	movq	%rbp, %rdi
	leaq	.L.str.29(%rip), %rsi
	callq	strcmp@PLT
.Ltmp35:
	.loc	0 54 42 is_stmt 0               # bench/lab_bench.c:54:42
	testl	%eax, %eax
.Ltmp36:
	.loc	0 54 18                         # bench/lab_bench.c:54:18
	je	.LBB0_23
.Ltmp37:
# %bb.24:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: key <- $rbp
	#DEBUG_VALUE: value <- $rbx
	.loc	0 55 18 is_stmt 1               # bench/lab_bench.c:55:18
	movq	%rbp, %rdi
	leaq	.L.str.30(%rip), %rsi
	callq	strcmp@PLT
.Ltmp38:
	.loc	0 55 43 is_stmt 0               # bench/lab_bench.c:55:43
	testl	%eax, %eax
.Ltmp39:
	.loc	0 55 18                         # bench/lab_bench.c:55:18
	je	.LBB0_25
.Ltmp40:
# %bb.26:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: key <- $rbp
	#DEBUG_VALUE: value <- $rbx
	.loc	0 56 18 is_stmt 1               # bench/lab_bench.c:56:18
	movq	%rbp, %rdi
	leaq	.L.str.31(%rip), %rsi
	callq	strcmp@PLT
.Ltmp41:
	.loc	0 0 18 is_stmt 0                # bench/lab_bench.c:0:18
	movl	$1000, %r15d                    # imm = 0x3E8
	leaq	40(%rsp), %r12
	.loc	0 56 42                         # bench/lab_bench.c:56:42
	testl	%eax, %eax
	je	.LBB0_27
	jmp	.LBB0_40
.Ltmp42:
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: key <- $rbp
	#DEBUG_VALUE: value <- $rbx
	#DEBUG_VALUE: number:end <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: number:text <- $rbx
	#DEBUG_VALUE: number:max <- 4294967295
	#DEBUG_VALUE: number:result <- undef
	.loc	0 34 9 is_stmt 1                # bench/lab_bench.c:34:9
	movzbl	(%rbx), %eax
	.loc	0 34 15 is_stmt 0               # bench/lab_bench.c:34:15
	testb	%al, %al
.Ltmp43:
	.loc	0 34 9                          # bench/lab_bench.c:34:9
	je	.LBB0_40
.Ltmp44:
# %bb.14:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: key <- $rbp
	#DEBUG_VALUE: value <- $rbx
	#DEBUG_VALUE: number:end <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: number:text <- $rbx
	#DEBUG_VALUE: number:max <- 4294967295
	.loc	0 35 5 is_stmt 1                # bench/lab_bench.c:35:5
	leaq	1(%rbx), %rcx
.Ltmp45:
	.p2align	4, 0x90
.LBB0_15:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: key <- $rbp
	#DEBUG_VALUE: value <- $rbx
	#DEBUG_VALUE: number:end <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: number:text <- $rbx
	#DEBUG_VALUE: number:max <- 4294967295
	#DEBUG_VALUE: p <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rcx
	.loc	0 35 62 is_stmt 0               # bench/lab_bench.c:35:62
	addb	$-58, %al
	cmpb	$-10, %al
	jb	.LBB0_40
.Ltmp46:
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: key <- $rbp
	#DEBUG_VALUE: value <- $rbx
	#DEBUG_VALUE: number:end <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: number:text <- $rbx
	#DEBUG_VALUE: number:max <- 4294967295
	#DEBUG_VALUE: p <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rcx
	#DEBUG_VALUE: p <- $rcx
	.loc	0 35 32                         # bench/lab_bench.c:35:32
	movzbl	(%rcx), %eax
.Ltmp47:
	.loc	0 35 5                          # bench/lab_bench.c:35:5
	incq	%rcx
.Ltmp48:
	.loc	0 35 35                         # bench/lab_bench.c:35:35
	testb	%al, %al
.Ltmp49:
	.loc	0 35 5                          # bench/lab_bench.c:35:5
	jne	.LBB0_15
.Ltmp50:
# %bb.17:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: key <- $rbp
	#DEBUG_VALUE: value <- $rbx
	#DEBUG_VALUE: number:end <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: number:text <- $rbx
	#DEBUG_VALUE: number:max <- 4294967295
	.loc	0 36 5 is_stmt 1                # bench/lab_bench.c:36:5
	callq	__errno_location@PLT
.Ltmp51:
	movq	%rax, %rbp
.Ltmp52:
	.loc	0 36 11 is_stmt 0               # bench/lab_bench.c:36:11
	movl	$0, (%rax)
	.loc	0 37 32 is_stmt 1               # bench/lab_bench.c:37:32
	movq	%rbx, %rdi
	leaq	96(%rsp), %rsi
	movl	$10, %edx
	callq	strtoull@PLT
.Ltmp53:
	.loc	0 0 32 is_stmt 0                # bench/lab_bench.c:0:32
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.Ltmp54:
	#DEBUG_VALUE: main:o <- [DW_OP_LLVM_fragment 256 32] undef
	#DEBUG_VALUE: number:value <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	.loc	0 38 15 is_stmt 1               # bench/lab_bench.c:38:15
	cmpl	$0, (%rbp)
	.loc	0 38 20 is_stmt 0               # bench/lab_bench.c:38:20
	jne	.LBB0_40
.Ltmp55:
# %bb.18:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: value <- $rbx
	#DEBUG_VALUE: number:end <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: number:text <- $rbx
	#DEBUG_VALUE: number:max <- 4294967295
	#DEBUG_VALUE: number:value <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	.loc	0 38 24                         # bench/lab_bench.c:38:24
	movq	96(%rsp), %rax
	.loc	0 38 28                         # bench/lab_bench.c:38:28
	cmpb	$0, (%rax)
	.loc	0 38 36                         # bench/lab_bench.c:38:36
	jne	.LBB0_40
.Ltmp56:
# %bb.19:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: value <- $rbx
	#DEBUG_VALUE: number:end <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: number:text <- $rbx
	#DEBUG_VALUE: number:max <- 4294967295
	#DEBUG_VALUE: number:value <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	.loc	0 0 36                          # bench/lab_bench.c:0:36
	movq	32(%rsp), %rax                  # 8-byte Reload
	.loc	0 38 36                         # bench/lab_bench.c:38:36
	shrq	$32, %rax
	je	.LBB0_36
	jmp	.LBB0_40
.Ltmp57:
.LBB0_21:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: key <- $rbp
	#DEBUG_VALUE: value <- $rbx
	.loc	0 0 36                          # bench/lab_bench.c:0:36
	movl	$1048576, %r15d                 # imm = 0x100000
	leaq	24(%rsp), %r12
	jmp	.LBB0_27
.Ltmp58:
.LBB0_23:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: key <- $rbp
	#DEBUG_VALUE: value <- $rbx
	movl	$1000000, %r15d                 # imm = 0xF4240
	leaq	80(%rsp), %r12
	jmp	.LBB0_27
.Ltmp59:
.LBB0_25:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: key <- $rbp
	#DEBUG_VALUE: value <- $rbx
	movl	$10000, %r15d                   # imm = 0x2710
	leaq	56(%rsp), %r12
.Ltmp60:
	.p2align	4, 0x90
.LBB0_27:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: key <- $rbp
	#DEBUG_VALUE: value <- $rbx
	#DEBUG_VALUE: max <- $r15
	#DEBUG_VALUE: field <- $r12
	#DEBUG_VALUE: number:end <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: number:text <- $rbx
	#DEBUG_VALUE: number:max <- $r15
	#DEBUG_VALUE: number:result <- undef
	.loc	0 34 9 is_stmt 1                # bench/lab_bench.c:34:9
	movzbl	(%rbx), %eax
	.loc	0 34 15 is_stmt 0               # bench/lab_bench.c:34:15
	testb	%al, %al
.Ltmp61:
	.loc	0 34 9                          # bench/lab_bench.c:34:9
	je	.LBB0_40
.Ltmp62:
# %bb.28:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: key <- $rbp
	#DEBUG_VALUE: value <- $rbx
	#DEBUG_VALUE: max <- $r15
	#DEBUG_VALUE: field <- $r12
	#DEBUG_VALUE: number:end <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: number:text <- $rbx
	#DEBUG_VALUE: number:max <- $r15
	.loc	0 35 5 is_stmt 1                # bench/lab_bench.c:35:5
	leaq	1(%rbx), %rcx
.Ltmp63:
	.p2align	4, 0x90
.LBB0_29:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: key <- $rbp
	#DEBUG_VALUE: value <- $rbx
	#DEBUG_VALUE: max <- $r15
	#DEBUG_VALUE: field <- $r12
	#DEBUG_VALUE: number:end <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: number:text <- $rbx
	#DEBUG_VALUE: number:max <- $r15
	#DEBUG_VALUE: p <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rcx
	.loc	0 35 62 is_stmt 0               # bench/lab_bench.c:35:62
	addb	$-58, %al
	cmpb	$-10, %al
	jb	.LBB0_40
.Ltmp64:
# %bb.30:                               #   in Loop: Header=BB0_29 Depth=2
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: key <- $rbp
	#DEBUG_VALUE: value <- $rbx
	#DEBUG_VALUE: max <- $r15
	#DEBUG_VALUE: field <- $r12
	#DEBUG_VALUE: number:end <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: number:text <- $rbx
	#DEBUG_VALUE: number:max <- $r15
	#DEBUG_VALUE: p <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rcx
	#DEBUG_VALUE: p <- $rcx
	.loc	0 35 32                         # bench/lab_bench.c:35:32
	movzbl	(%rcx), %eax
.Ltmp65:
	.loc	0 35 5                          # bench/lab_bench.c:35:5
	incq	%rcx
.Ltmp66:
	.loc	0 35 35                         # bench/lab_bench.c:35:35
	testb	%al, %al
.Ltmp67:
	.loc	0 35 5                          # bench/lab_bench.c:35:5
	jne	.LBB0_29
.Ltmp68:
# %bb.31:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: key <- $rbp
	#DEBUG_VALUE: value <- $rbx
	#DEBUG_VALUE: max <- $r15
	#DEBUG_VALUE: field <- $r12
	#DEBUG_VALUE: number:end <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: number:text <- $rbx
	#DEBUG_VALUE: number:max <- $r15
	.loc	0 36 5 is_stmt 1                # bench/lab_bench.c:36:5
	callq	__errno_location@PLT
.Ltmp69:
	movq	%rax, %rbp
.Ltmp70:
	.loc	0 36 11 is_stmt 0               # bench/lab_bench.c:36:11
	movl	$0, (%rax)
	.loc	0 37 32 is_stmt 1               # bench/lab_bench.c:37:32
	movq	%rbx, %rdi
	leaq	96(%rsp), %rsi
	movl	$10, %edx
	callq	strtoull@PLT
.Ltmp71:
	#DEBUG_VALUE: number:value <- $rax
	.loc	0 38 15                         # bench/lab_bench.c:38:15
	cmpl	$0, (%rbp)
	.loc	0 38 20 is_stmt 0               # bench/lab_bench.c:38:20
	jne	.LBB0_40
.Ltmp72:
# %bb.32:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: value <- $rbx
	#DEBUG_VALUE: max <- $r15
	#DEBUG_VALUE: field <- $r12
	#DEBUG_VALUE: number:end <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: number:text <- $rbx
	#DEBUG_VALUE: number:max <- $r15
	#DEBUG_VALUE: number:value <- $rax
	.loc	0 38 24                         # bench/lab_bench.c:38:24
	movq	96(%rsp), %rcx
	.loc	0 38 28                         # bench/lab_bench.c:38:28
	cmpb	$0, (%rcx)
	.loc	0 38 36                         # bench/lab_bench.c:38:36
	jne	.LBB0_40
.Ltmp73:
# %bb.33:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: value <- $rbx
	#DEBUG_VALUE: max <- $r15
	#DEBUG_VALUE: field <- $r12
	#DEBUG_VALUE: number:end <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: number:text <- $rbx
	#DEBUG_VALUE: number:max <- $r15
	#DEBUG_VALUE: number:value <- $rax
	cmpq	%r15, %rax
	ja	.LBB0_40
.Ltmp74:
# %bb.34:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: value <- $rbx
	#DEBUG_VALUE: max <- $r15
	#DEBUG_VALUE: field <- $r12
	#DEBUG_VALUE: parsed <- $rax
	.loc	0 0 36                          # bench/lab_bench.c:0:36
	testq	%rax, %rax
	.loc	0 58 42 is_stmt 1               # bench/lab_bench.c:58:42
	je	.LBB0_40
.Ltmp75:
# %bb.35:                               #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse:argc <- $r14d
	#DEBUG_VALUE: parse:argv <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: i <- $r13
	#DEBUG_VALUE: parsed <- $rax
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: value <- $rbx
	#DEBUG_VALUE: max <- $r15
	#DEBUG_VALUE: field <- $r12
	.loc	0 59 16                         # bench/lab_bench.c:59:16
	movq	%rax, (%r12)
	jmp	.LBB0_36
.Ltmp76:
.LBB0_11:
	#DEBUG_VALUE: main:argc <- $ebx
	#DEBUG_VALUE: main:argv <- $r14
	#DEBUG_VALUE: main:o <- [DW_OP_LLVM_fragment 0 64] 64
	#DEBUG_VALUE: main:o <- [DW_OP_LLVM_fragment 64 64] 1000
	#DEBUG_VALUE: main:o <- [DW_OP_LLVM_fragment 128 64] 31
	#DEBUG_VALUE: main:o <- [DW_OP_LLVM_fragment 192 64] 3
	#DEBUG_VALUE: parse:argc <- $ebx
	#DEBUG_VALUE: parse:argv <- $r14
	#DEBUG_VALUE: main:o <- [DW_OP_LLVM_fragment 256 32] 20261007
	#DEBUG_VALUE: i <- 1
	.loc	0 0 16 is_stmt 0                # bench/lab_bench.c:0:16
	movl	$20261007, %eax                 # imm = 0x135288F
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	.L.str.6(%rip), %rax
.Ltmp77:
	#DEBUG_VALUE: main:o <- [DW_OP_LLVM_fragment 320 64] $rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
.Ltmp78:
.LBB0_37:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	.loc	0 61 12 is_stmt 1               # bench/lab_bench.c:61:12
	leaq	.L.str.6(%rip), %rsi
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	strcmp@PLT
.Ltmp79:
	.loc	0 61 45 is_stmt 0               # bench/lab_bench.c:61:45
	testl	%eax, %eax
	.loc	0 61 50                         # bench/lab_bench.c:61:50
	je	.LBB0_42
.Ltmp80:
# %bb.38:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	.loc	0 61 53                         # bench/lab_bench.c:61:53
	leaq	.L.str.32(%rip), %rsi
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	strcmp@PLT
.Ltmp81:
	.loc	0 61 84                         # bench/lab_bench.c:61:84
	testl	%eax, %eax
	.loc	0 61 89                         # bench/lab_bench.c:61:89
	je	.LBB0_42
.Ltmp82:
# %bb.39:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	.loc	0 61 92                         # bench/lab_bench.c:61:92
	leaq	.L.str.2(%rip), %rsi
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	strcmp@PLT
.Ltmp83:
	.loc	0 61 125                        # bench/lab_bench.c:61:125
	testl	%eax, %eax
.Ltmp84:
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	.loc	0 113 9 is_stmt 1               # bench/lab_bench.c:113:9
	jne	.LBB0_40
.Ltmp85:
.LBB0_42:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	.loc	0 116 9                         # bench/lab_bench.c:116:9
	leaq	.L.str.2(%rip), %rsi
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	strcmp@PLT
.Ltmp86:
	.loc	0 116 41 is_stmt 0              # bench/lab_bench.c:116:41
	testl	%eax, %eax
.Ltmp87:
	.loc	0 116 9                         # bench/lab_bench.c:116:9
	je	.LBB0_43
.Ltmp88:
# %bb.44:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	.loc	0 126 27 is_stmt 1              # bench/lab_bench.c:126:27
	movq	24(%rsp), %rbx
	.loc	0 126 18 is_stmt 0              # bench/lab_bench.c:126:18
	movq	%rbx, %rdi
	callq	malloc@PLT
.Ltmp89:
	movq	%rax, %r12
.Ltmp90:
	#DEBUG_VALUE: main:a <- $r12
	.loc	0 126 41                        # bench/lab_bench.c:126:41
	movq	%rbx, %rdi
	callq	malloc@PLT
.Ltmp91:
	movq	%rax, %r15
.Ltmp92:
	#DEBUG_VALUE: main:b <- $r15
	.loc	0 127 11 is_stmt 1              # bench/lab_bench.c:127:11
	testq	%r12, %r12
	.loc	0 127 19 is_stmt 0              # bench/lab_bench.c:127:19
	je	.LBB0_121
.Ltmp93:
# %bb.45:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	testq	%r15, %r15
	je	.LBB0_121
.Ltmp94:
# %bb.46:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: main:state <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- 0
	.loc	0 129 26 is_stmt 1              # bench/lab_bench.c:129:26
	testq	%rbx, %rbx
.Ltmp95:
	.loc	0 129 5 is_stmt 0               # bench/lab_bench.c:129:5
	je	.LBB0_52
.Ltmp96:
# %bb.47:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: main:state <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- 0
	movl	%ebx, %eax
	andl	$3, %eax
	cmpq	$4, %rbx
	jae	.LBB0_59
.Ltmp97:
# %bb.48:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: main:state <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- 0
	.loc	0 0 5                           # bench/lab_bench.c:0:5
	xorl	%ecx, %ecx
	movq	32(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	jmp	.LBB0_49
.Ltmp98:
.LBB0_40:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	.loc	0 114 162 is_stmt 1             # bench/lab_bench.c:114:162
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 114 9 is_stmt 0               # bench/lab_bench.c:114:9
	leaq	.L.str.1(%rip), %rdi
	movl	$142, %esi
.Ltmp99:
.LBB0_41:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	.loc	0 0 0                           # bench/lab_bench.c:0:0
	movl	$1, %edx
	callq	fwrite@PLT
.Ltmp100:
	movl	$2, %eax
	jmp	.LBB0_120
.Ltmp101:
.LBB0_7:
	#DEBUG_VALUE: main:argc <- $ebx
	#DEBUG_VALUE: main:argv <- $r14
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 0 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 80, DW_OP_deref, DW_OP_LLVM_fragment 64 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 192 64] $rsp
	#DEBUG_VALUE: print_context:system <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	leaq	96(%rsp), %rdi
.Ltmp102:
	.loc	0 97 9 is_stmt 1                # bench/lab_bench.c:97:9
	callq	uname@PLT
.Ltmp103:
	movl	%eax, %ecx
	movl	$1, %eax
	.loc	0 97 24 is_stmt 0               # bench/lab_bench.c:97:24
	testl	%ecx, %ecx
.Ltmp104:
	.loc	0 97 9                          # bench/lab_bench.c:97:9
	jne	.LBB0_120
.Ltmp105:
# %bb.8:
	#DEBUG_VALUE: main:argc <- $ebx
	#DEBUG_VALUE: main:argv <- $r14
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 0 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 80, DW_OP_deref, DW_OP_LLVM_fragment 64 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 192 64] $rsp
	#DEBUG_VALUE: print_context:system <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: print_context:translation <- 0
	.loc	0 107 109 is_stmt 1             # bench/lab_bench.c:107:109
	leaq	356(%rsp), %rdx
	.loc	0 107 9 is_stmt 0               # bench/lab_bench.c:107:9
	leaq	.L.str.25(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
.Ltmp106:
	#DEBUG_VALUE: print_context:arch <- $rsi
	leaq	.L.str.22(%rip), %rcx
.Ltmp107:
	#DEBUG_VALUE: print_context:execution <- $rcx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp108:
	movl	%eax, %ecx
	movl	$1, %eax
	.loc	0 107 129                       # bench/lab_bench.c:107:129
	testl	%ecx, %ecx
	.loc	0 107 133                       # bench/lab_bench.c:107:133
	js	.LBB0_120
.Ltmp109:
# %bb.9:
	#DEBUG_VALUE: main:argc <- $ebx
	#DEBUG_VALUE: main:argv <- $r14
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 24, DW_OP_deref, DW_OP_LLVM_fragment 0 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 80, DW_OP_deref, DW_OP_LLVM_fragment 64 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 56, DW_OP_deref, DW_OP_LLVM_fragment 128 64] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 40, DW_OP_deref, DW_OP_LLVM_fragment 192 64] $rsp
	#DEBUG_VALUE: print_context:system <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: print_context:translation <- 0
	.loc	0 107 143                       # bench/lab_bench.c:107:143
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 107 136                       # bench/lab_bench.c:107:136
	callq	fflush@PLT
.Ltmp110:
	movl	%eax, %ecx
	.loc	0 107 151                       # bench/lab_bench.c:107:151
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
	jmp	.LBB0_120
.Ltmp111:
.LBB0_59:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: main:state <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- 0
	.loc	0 129 5 is_stmt 1               # bench/lab_bench.c:129:5
	andq	$-4, %rbx
	xorl	%ecx, %ecx
	movq	32(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
.Ltmp112:
	.p2align	4, 0x90
.LBB0_60:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: main:state <- $edx
	#DEBUG_VALUE: i <- $rcx
	#DEBUG_VALUE: main:state <- $edx
	#DEBUG_VALUE: random_next:state <- undef
	.loc	0 64 21                         # bench/lab_bench.c:64:21
	imull	$1664525, %edx, %edx            # imm = 0x19660D
.Ltmp113:
	.loc	0 64 41 is_stmt 0               # bench/lab_bench.c:64:41
	addl	$1013904223, %edx               # imm = 0x3C6EF35F
.Ltmp114:
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $rcx
	.loc	0 64 21                         # bench/lab_bench.c:64:21
	imull	$1664525, %edx, %esi            # imm = 0x19660D
.Ltmp115:
	#DEBUG_VALUE: main:state <- $edx
	.loc	0 129 80 is_stmt 1              # bench/lab_bench.c:129:80
	shrl	$24, %edx
.Ltmp116:
	.loc	0 129 48 is_stmt 0              # bench/lab_bench.c:129:48
	movb	%dl, (%r12,%rcx)
.Ltmp117:
	.loc	0 64 41 is_stmt 1               # bench/lab_bench.c:64:41
	addl	$1013904223, %esi               # imm = 0x3C6EF35F
.Ltmp118:
	#DEBUG_VALUE: i <- [DW_OP_constu 2, DW_OP_or, DW_OP_stack_value] $rcx
	.loc	0 64 21 is_stmt 0               # bench/lab_bench.c:64:21
	imull	$1664525, %esi, %edi            # imm = 0x19660D
.Ltmp119:
	#DEBUG_VALUE: main:state <- $esi
	.loc	0 129 80 is_stmt 1              # bench/lab_bench.c:129:80
	shrl	$24, %esi
.Ltmp120:
	.loc	0 129 48 is_stmt 0              # bench/lab_bench.c:129:48
	movb	%sil, 1(%r12,%rcx)
.Ltmp121:
	.loc	0 64 41 is_stmt 1               # bench/lab_bench.c:64:41
	addl	$1013904223, %edi               # imm = 0x3C6EF35F
.Ltmp122:
	#DEBUG_VALUE: i <- [DW_OP_constu 3, DW_OP_or, DW_OP_stack_value] $rcx
	.loc	0 64 21 is_stmt 0               # bench/lab_bench.c:64:21
	imull	$1664525, %edi, %edx            # imm = 0x19660D
.Ltmp123:
	#DEBUG_VALUE: main:state <- $edi
	.loc	0 129 80 is_stmt 1              # bench/lab_bench.c:129:80
	shrl	$24, %edi
.Ltmp124:
	.loc	0 129 48 is_stmt 0              # bench/lab_bench.c:129:48
	movb	%dil, 2(%r12,%rcx)
.Ltmp125:
	.loc	0 64 41 is_stmt 1               # bench/lab_bench.c:64:41
	addl	$1013904223, %edx               # imm = 0x3C6EF35F
.Ltmp126:
	#DEBUG_VALUE: main:state <- $edx
	.loc	0 129 80                        # bench/lab_bench.c:129:80
	movl	%edx, %esi
	shrl	$24, %esi
	.loc	0 129 48 is_stmt 0              # bench/lab_bench.c:129:48
	movb	%sil, 3(%r12,%rcx)
	.loc	0 129 38                        # bench/lab_bench.c:129:38
	addq	$4, %rcx
.Ltmp127:
	#DEBUG_VALUE: i <- $rcx
	.loc	0 129 5                         # bench/lab_bench.c:129:5
	cmpq	%rcx, %rbx
	jne	.LBB0_60
.Ltmp128:
.LBB0_49:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: main:state <- $edx
	testq	%rax, %rax
	je	.LBB0_52
.Ltmp129:
# %bb.50:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: main:state <- $edx
	movq	%r12, %rsi
	addq	%rcx, %rsi
	xorl	%ecx, %ecx
.Ltmp130:
	.p2align	4, 0x90
.LBB0_51:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: main:state <- $edx
	#DEBUG_VALUE: i <- undef
	#DEBUG_VALUE: main:state <- $edx
	#DEBUG_VALUE: random_next:state <- undef
	.loc	0 64 21 is_stmt 1               # bench/lab_bench.c:64:21
	imull	$1664525, %edx, %edx            # imm = 0x19660D
.Ltmp131:
	.loc	0 64 41 is_stmt 0               # bench/lab_bench.c:64:41
	addl	$1013904223, %edx               # imm = 0x3C6EF35F
.Ltmp132:
	#DEBUG_VALUE: main:state <- $edx
	.loc	0 129 80 is_stmt 1              # bench/lab_bench.c:129:80
	movl	%edx, %edi
	shrl	$24, %edi
	.loc	0 129 48 is_stmt 0              # bench/lab_bench.c:129:48
	movb	%dil, (%rsi,%rcx)
.Ltmp133:
	.loc	0 129 5                         # bench/lab_bench.c:129:5
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB0_51
.Ltmp134:
.LBB0_52:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	.loc	0 130 9 is_stmt 1               # bench/lab_bench.c:130:9
	leaq	.L.str.5(%rip), %rdi
	callq	puts@PLT
.Ltmp135:
	.loc	0 130 103 is_stmt 0             # bench/lab_bench.c:130:103
	cmpl	$-1, %eax
.Ltmp136:
	.loc	0 130 9                         # bench/lab_bench.c:130:9
	je	.LBB0_105
.Ltmp137:
# %bb.53:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	.loc	0 131 9 is_stmt 1               # bench/lab_bench.c:131:9
	leaq	.L.str.6(%rip), %rsi
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	strcmp@PLT
.Ltmp138:
	.loc	0 131 41 is_stmt 0              # bench/lab_bench.c:131:41
	testl	%eax, %eax
.Ltmp139:
	.loc	0 131 9                         # bench/lab_bench.c:131:9
	je	.LBB0_61
.Ltmp140:
# %bb.54:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: elapsed <- undef
	#DEBUG_VALUE: s <- 0
	.loc	0 154 45 is_stmt 1              # bench/lab_bench.c:154:45
	movq	56(%rsp), %rax
	.loc	0 154 30 is_stmt 0              # bench/lab_bench.c:154:30
	addq	40(%rsp), %rax
.Ltmp141:
	.loc	0 154 9                         # bench/lab_bench.c:154:9
	jne	.LBB0_55
.Ltmp142:
.LBB0_117:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	.loc	0 164 5 is_stmt 1               # bench/lab_bench.c:164:5
	movq	%r12, %rdi
	callq	free@PLT
.Ltmp143:
	.loc	0 164 14 is_stmt 0              # bench/lab_bench.c:164:14
	movq	%r15, %rdi
	callq	free@PLT
.Ltmp144:
	.loc	0 165 16 is_stmt 1              # bench/lab_bench.c:165:16
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 165 9 is_stmt 0               # bench/lab_bench.c:165:9
	callq	fflush@PLT
.Ltmp145:
	movl	%eax, %ecx
	xorl	%eax, %eax
	.loc	0 165 24                        # bench/lab_bench.c:165:24
	testl	%ecx, %ecx
.Ltmp146:
	.loc	0 165 9                         # bench/lab_bench.c:165:9
	je	.LBB0_120
.Ltmp147:
# %bb.118:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	.loc	0 165 60                        # bench/lab_bench.c:165:60
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 165 32                        # bench/lab_bench.c:165:32
	leaq	.L.str.19(%rip), %rdi
	movl	$17, %esi
	jmp	.LBB0_119
.Ltmp148:
.LBB0_61:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: elapsed <- undef
	#DEBUG_VALUE: c <- 0
	.loc	0 0 32                          # bench/lab_bench.c:0:32
	leaq	.L.str.33(%rip), %rbp
	xorl	%r14d, %r14d
	jmp	.LBB0_62
.Ltmp149:
	.p2align	4, 0x90
.LBB0_93:                               #   in Loop: Header=BB0_62 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: elapsed <- undef
	movq	88(%rsp), %r14                  # 8-byte Reload
.Ltmp150:
	.loc	0 135 35 is_stmt 1              # bench/lab_bench.c:135:35
	incq	%r14
.Ltmp151:
	#DEBUG_VALUE: c <- $r14
	.loc	0 135 30 is_stmt 0              # bench/lab_bench.c:135:30
	cmpq	$4, %r14
.Ltmp152:
	.loc	0 135 9                         # bench/lab_bench.c:135:9
	je	.LBB0_117
.Ltmp153:
.LBB0_62:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_69 Depth 2
                                        #       Child Loop BB0_73 Depth 3
                                        #       Child Loop BB0_84 Depth 3
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- $r14
	#DEBUG_VALUE: elapsed <- undef
	.loc	0 136 28 is_stmt 1              # bench/lab_bench.c:136:28
	movq	24(%rsp), %rbx
	.loc	0 136 13 is_stmt 0              # bench/lab_bench.c:136:13
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.Ltmp154:
	.loc	0 137 17 is_stmt 1              # bench/lab_bench.c:137:17
	testq	%r14, %r14
	je	.LBB0_67
.Ltmp155:
# %bb.63:                               #   in Loop: Header=BB0_62 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- $r14
	cmpq	$1, %r14
	jne	.LBB0_65
.Ltmp156:
# %bb.64:                               #   in Loop: Header=BB0_62 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- $r14
	.loc	0 0 17 is_stmt 0                # bench/lab_bench.c:0:17
	xorl	%ebx, %ebx
	jmp	.LBB0_66
.Ltmp157:
.LBB0_65:                               #   in Loop: Header=BB0_62 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- $r14
	.loc	0 137 40                        # bench/lab_bench.c:137:40
	movq	%rbx, %rax
	shrq	%rax
	decq	%rbx
	.loc	0 137 42                        # bench/lab_bench.c:137:42
	cmpq	$2, %r14
	.loc	0 137 40                        # bench/lab_bench.c:137:40
	cmoveq	%rax, %rbx
.Ltmp158:
.LBB0_66:                               #   in Loop: Header=BB0_62 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- $r14
	.loc	0 137 78                        # bench/lab_bench.c:137:78
	notb	(%r15,%rbx)
.Ltmp159:
.LBB0_67:                               #   in Loop: Header=BB0_62 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- $r14
	#DEBUG_VALUE: s <- 0
	#DEBUG_VALUE: elapsed <- undef
	.loc	0 0 78                          # bench/lab_bench.c:0:78
	movq	%r14, 88(%rsp)                  # 8-byte Spill
.Ltmp160:
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	.loc	0 138 38 is_stmt 1              # bench/lab_bench.c:138:38
	movq	40(%rsp), %rbx
	movq	56(%rsp), %rax
	.loc	0 138 34 is_stmt 0              # bench/lab_bench.c:138:34
	addq	%rbx, %rax
.Ltmp161:
	.loc	0 138 13                        # bench/lab_bench.c:138:13
	je	.LBB0_93
.Ltmp162:
# %bb.68:                               #   in Loop: Header=BB0_62 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- 0
	.loc	0 0 13                          # bench/lab_bench.c:0:13
	xorl	%r14d, %r14d
	jmp	.LBB0_69
.Ltmp163:
	.p2align	4, 0x90
.LBB0_91:                               #   in Loop: Header=BB0_69 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 138 38                        # bench/lab_bench.c:138:38
	movq	40(%rsp), %rbx
.Ltmp164:
.LBB0_92:                               #   in Loop: Header=BB0_69 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 2
	#DEBUG_VALUE: elapsed <- undef
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 64, DW_OP_deref] $rsp
	.loc	0 0 38                          # bench/lab_bench.c:0:38
	movq	56(%rsp), %rax
	.loc	0 138 45                        # bench/lab_bench.c:138:45
	addq	%rbx, %rax
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %r14
	.loc	0 138 34                        # bench/lab_bench.c:138:34
	cmpq	%rax, %rcx
.Ltmp165:
	.loc	0 138 13                        # bench/lab_bench.c:138:13
	jae	.LBB0_93
.Ltmp166:
.LBB0_69:                               #   Parent Loop BB0_62 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_73 Depth 3
                                        #       Child Loop BB0_84 Depth 3
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- $r14
	#DEBUG_VALUE: elapsed <- undef
	#DEBUG_VALUE: order <- 0
	.loc	0 0 13                          # bench/lab_bench.c:0:13
	movq	%r14, 16(%rsp)                  # 8-byte Spill
.Ltmp167:
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	.loc	0 140 46 is_stmt 1              # bench/lab_bench.c:140:46
	andl	$1, %r14d
.Ltmp168:
	#DEBUG_VALUE: alg <- $r14d
	.loc	0 142 39                        # bench/lab_bench.c:142:39
	movl	%r14d, %eax
	leaq	.L__const.main.functions(%rip), %rcx
	movq	(%rcx,%rax,8), %r13
.Ltmp169:
	#DEBUG_VALUE: time_compare:fn <- $r13
	#DEBUG_VALUE: equal <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: time_compare:a <- $r12
	#DEBUG_VALUE: time_compare:b <- $r15
	#DEBUG_VALUE: time_compare:o <- undef
	#DEBUG_VALUE: time_compare:elapsed <- undef
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: now_ns:result <- undef
	.loc	0 21 9                          # bench/lab_bench.c:21:9
	movq	%rbp, %rdi
	callq	getenv@PLT
.Ltmp170:
	.loc	0 21 40 is_stmt 0               # bench/lab_bench.c:21:40
	testq	%rax, %rax
	.loc	0 21 48                         # bench/lab_bench.c:21:48
	jne	.LBB0_105
.Ltmp171:
# %bb.70:                               #   in Loop: Header=BB0_69 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 0
	#DEBUG_VALUE: alg <- $r14d
	#DEBUG_VALUE: time_compare:fn <- $r13
	#DEBUG_VALUE: time_compare:a <- $r12
	#DEBUG_VALUE: time_compare:b <- $r15
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	.loc	0 21 51                         # bench/lab_bench.c:21:51
	movl	$1, %edi
	leaq	96(%rsp), %rsi
	callq	clock_gettime@PLT
.Ltmp172:
	.loc	0 21 89                         # bench/lab_bench.c:21:89
	testl	%eax, %eax
.Ltmp173:
	.loc	0 21 9                          # bench/lab_bench.c:21:9
	jne	.LBB0_105
.Ltmp174:
# %bb.71:                               #   in Loop: Header=BB0_69 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 0
	#DEBUG_VALUE: alg <- $r14d
	#DEBUG_VALUE: time_compare:fn <- $r13
	#DEBUG_VALUE: time_compare:a <- $r12
	#DEBUG_VALUE: time_compare:b <- $r15
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	.loc	0 0 9                           # bench/lab_bench.c:0:9
	movq	%rbx, 64(%rsp)                  # 8-byte Spill
	.loc	0 22 37 is_stmt 1               # bench/lab_bench.c:22:37
	imulq	$1000000000, 96(%rsp), %rax     # imm = 0x3B9ACA00
	.loc	0 22 60 is_stmt 0               # bench/lab_bench.c:22:60
	addq	104(%rsp), %rax
.Ltmp175:
	#DEBUG_VALUE: time_compare:start <- $rax
	#DEBUG_VALUE: r <- 0
	.loc	0 0 60                          # bench/lab_bench.c:0:60
	movq	%rax, 72(%rsp)                  # 8-byte Spill
.Ltmp176:
	#DEBUG_VALUE: time_compare:start <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	.loc	0 74 31 is_stmt 1               # bench/lab_bench.c:74:31
	movq	80(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	.loc	0 74 26 is_stmt 0               # bench/lab_bench.c:74:26
	testq	%rax, %rax
.Ltmp177:
	.loc	0 74 5                          # bench/lab_bench.c:74:5
	je	.LBB0_75
.Ltmp178:
# %bb.72:                               #   in Loop: Header=BB0_69 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 0
	#DEBUG_VALUE: alg <- $r14d
	#DEBUG_VALUE: time_compare:fn <- $r13
	#DEBUG_VALUE: time_compare:a <- $r12
	#DEBUG_VALUE: time_compare:b <- $r15
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: time_compare:start <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: r <- 0
	.loc	0 0 5                           # bench/lab_bench.c:0:5
	movq	24(%rsp), %rbx
	movq	48(%rsp), %rbp                  # 8-byte Reload
.Ltmp179:
	.p2align	4, 0x90
.LBB0_73:                               #   Parent Loop BB0_62 Depth=1
                                        #     Parent Loop BB0_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 0
	#DEBUG_VALUE: alg <- $r14d
	#DEBUG_VALUE: time_compare:fn <- $r13
	#DEBUG_VALUE: time_compare:a <- $r12
	#DEBUG_VALUE: time_compare:b <- $r15
	#DEBUG_VALUE: time_compare:start <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: r <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_stack_value] $rbp, $rsp
	.loc	0 76 13 is_stmt 1               # bench/lab_bench.c:76:13
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	leaq	96(%rsp), %rcx
	callq	*%r13
.Ltmp180:
	.loc	0 76 41 is_stmt 0               # bench/lab_bench.c:76:41
	testl	%eax, %eax
.Ltmp181:
	.loc	0 76 13                         # bench/lab_bench.c:76:13
	jne	.LBB0_105
.Ltmp182:
# %bb.74:                               #   in Loop: Header=BB0_73 Depth=3
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 0
	#DEBUG_VALUE: alg <- $r14d
	#DEBUG_VALUE: time_compare:fn <- $r13
	#DEBUG_VALUE: time_compare:a <- $r12
	#DEBUG_VALUE: time_compare:b <- $r15
	#DEBUG_VALUE: time_compare:start <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: r <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_stack_value] $rbp, $rsp
	.loc	0 77 34 is_stmt 1               # bench/lab_bench.c:77:34
	movzbl	96(%rsp), %eax
	.loc	0 77 21 is_stmt 0               # bench/lab_bench.c:77:21
	addq	%rax, result_sink(%rip)
.Ltmp183:
	#DEBUG_VALUE: r <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $rbp, $rsp
	.loc	0 74 26 is_stmt 1               # bench/lab_bench.c:74:26
	decq	%rbp
.Ltmp184:
	.loc	0 74 5 is_stmt 0                # bench/lab_bench.c:74:5
	jne	.LBB0_73
.Ltmp185:
.LBB0_75:                               #   in Loop: Header=BB0_69 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 0
	#DEBUG_VALUE: alg <- $r14d
	#DEBUG_VALUE: time_compare:fn <- $r13
	#DEBUG_VALUE: time_compare:a <- $r12
	#DEBUG_VALUE: time_compare:b <- $r15
	#DEBUG_VALUE: time_compare:start <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: now_ns:result <- undef
	.loc	0 0 5                           # bench/lab_bench.c:0:5
	leaq	.L.str.33(%rip), %rbx
.Ltmp186:
	.loc	0 21 9 is_stmt 1                # bench/lab_bench.c:21:9
	movq	%rbx, %rdi
	callq	getenv@PLT
.Ltmp187:
	.loc	0 21 40 is_stmt 0               # bench/lab_bench.c:21:40
	testq	%rax, %rax
	.loc	0 21 48                         # bench/lab_bench.c:21:48
	jne	.LBB0_105
.Ltmp188:
# %bb.76:                               #   in Loop: Header=BB0_69 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 0
	#DEBUG_VALUE: alg <- $r14d
	#DEBUG_VALUE: time_compare:fn <- $r13
	#DEBUG_VALUE: time_compare:a <- $r12
	#DEBUG_VALUE: time_compare:b <- $r15
	#DEBUG_VALUE: time_compare:start <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	.loc	0 21 51                         # bench/lab_bench.c:21:51
	movl	$1, %edi
	leaq	96(%rsp), %rsi
	callq	clock_gettime@PLT
.Ltmp189:
	.loc	0 21 89                         # bench/lab_bench.c:21:89
	testl	%eax, %eax
.Ltmp190:
	.loc	0 21 9                          # bench/lab_bench.c:21:9
	jne	.LBB0_105
.Ltmp191:
# %bb.77:                               #   in Loop: Header=BB0_69 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 0
	#DEBUG_VALUE: alg <- $r14d
	#DEBUG_VALUE: time_compare:fn <- $r13
	#DEBUG_VALUE: time_compare:a <- $r12
	#DEBUG_VALUE: time_compare:b <- $r15
	#DEBUG_VALUE: time_compare:start <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	.loc	0 22 37 is_stmt 1               # bench/lab_bench.c:22:37
	imulq	$1000000000, 96(%rsp), %r10     # imm = 0x3B9ACA00
	.loc	0 22 60 is_stmt 0               # bench/lab_bench.c:22:60
	addq	104(%rsp), %r10
.Ltmp192:
	#DEBUG_VALUE: time_compare:stop <- $r10
	.loc	0 79 32 is_stmt 1               # bench/lab_bench.c:79:32
	subq	72(%rsp), %r10                  # 8-byte Folded Reload
.Ltmp193:
	.loc	0 0 32 is_stmt 0                # bench/lab_bench.c:0:32
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp194:
	.loc	0 79 9                          # bench/lab_bench.c:79:9
	jb	.LBB0_105
.Ltmp195:
# %bb.78:                               #   in Loop: Header=BB0_69 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 0
	#DEBUG_VALUE: alg <- $r14d
	#DEBUG_VALUE: elapsed <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_minus, DW_OP_stack_value] undef, undef
	.loc	0 143 27 is_stmt 1              # bench/lab_bench.c:143:27
	movq	%rdx, %rcx
	subq	64(%rsp), %rcx                  # 8-byte Folded Reload
	.loc	0 143 39 is_stmt 0              # bench/lab_bench.c:143:39
	jb	.LBB0_80
.Ltmp196:
# %bb.79:                               #   in Loop: Header=BB0_69 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 0
	#DEBUG_VALUE: alg <- $r14d
	#DEBUG_VALUE: elapsed <- undef
	.loc	0 143 52                        # bench/lab_bench.c:143:52
	leaq	.L__const.main.conditions(%rip), %rax
	movq	88(%rsp), %rdx                  # 8-byte Reload
	movq	(%rax,%rdx,8), %rdx
	.loc	0 143 88                        # bench/lab_bench.c:143:88
	leaq	.L__const.main.names(%rip), %rax
	movq	(%rax,%r14,8), %r9
.Ltmp197:
	#DEBUG_VALUE: emit:algorithm <- $r9
	#DEBUG_VALUE: emit:o <- undef
	#DEBUG_VALUE: emit:condition <- $rdx
	#DEBUG_VALUE: emit:sample <- undef
	#DEBUG_VALUE: emit:position <- 0
	#DEBUG_VALUE: emit:elapsed <- undef
	.loc	0 92 12 is_stmt 1               # bench/lab_bench.c:92:12
	subq	$8, %rsp
.Ltmp198:
	.cfi_adjust_cfa_offset 8
	leaq	.L.str.34(%rip), %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	pushq	result_sink(%rip)
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	56(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	80(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	64(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	printf@PLT
.Ltmp199:
	.loc	0 0 12 is_stmt 0                # bench/lab_bench.c:0:12
	movq	64(%rsp), %rdx                  # 8-byte Reload
	.loc	0 92 12                         # bench/lab_bench.c:92:12
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	.loc	0 93 127 is_stmt 1              # bench/lab_bench.c:93:127
	testl	%eax, %eax
.Ltmp200:
	.loc	0 143 25                        # bench/lab_bench.c:143:25
	js	.LBB0_105
.Ltmp201:
.LBB0_80:                               #   in Loop: Header=BB0_69 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 0
	#DEBUG_VALUE: alg <- $r14d
	#DEBUG_VALUE: elapsed <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_minus, DW_OP_stack_value] undef, undef
	#DEBUG_VALUE: order <- 1
	.loc	0 140 37                        # bench/lab_bench.c:140:37
	leaq	1(%rdx), %rbp
	.loc	0 140 46 is_stmt 0              # bench/lab_bench.c:140:46
	movl	%ebp, %r13d
	andl	$1, %r13d
.Ltmp202:
	#DEBUG_VALUE: alg <- $r13d
	.loc	0 142 39 is_stmt 1              # bench/lab_bench.c:142:39
	movl	%r13d, %eax
	leaq	.L__const.main.functions(%rip), %rcx
	movq	(%rcx,%rax,8), %r14
.Ltmp203:
	#DEBUG_VALUE: time_compare:fn <- $r14
	#DEBUG_VALUE: equal <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: time_compare:a <- $r12
	#DEBUG_VALUE: time_compare:b <- $r15
	#DEBUG_VALUE: time_compare:o <- undef
	#DEBUG_VALUE: time_compare:elapsed <- undef
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: now_ns:result <- undef
	.loc	0 21 9                          # bench/lab_bench.c:21:9
	movq	%rbx, %rdi
	callq	getenv@PLT
.Ltmp204:
	.loc	0 21 40 is_stmt 0               # bench/lab_bench.c:21:40
	testq	%rax, %rax
	.loc	0 21 48                         # bench/lab_bench.c:21:48
	jne	.LBB0_105
.Ltmp205:
# %bb.81:                               #   in Loop: Header=BB0_69 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 1
	#DEBUG_VALUE: alg <- $r13d
	#DEBUG_VALUE: time_compare:fn <- $r14
	#DEBUG_VALUE: time_compare:a <- $r12
	#DEBUG_VALUE: time_compare:b <- $r15
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	.loc	0 21 51                         # bench/lab_bench.c:21:51
	movl	$1, %edi
	leaq	96(%rsp), %rsi
	callq	clock_gettime@PLT
.Ltmp206:
	.loc	0 21 89                         # bench/lab_bench.c:21:89
	testl	%eax, %eax
.Ltmp207:
	.loc	0 21 9                          # bench/lab_bench.c:21:9
	jne	.LBB0_105
.Ltmp208:
# %bb.82:                               #   in Loop: Header=BB0_69 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 1
	#DEBUG_VALUE: alg <- $r13d
	#DEBUG_VALUE: time_compare:fn <- $r14
	#DEBUG_VALUE: time_compare:a <- $r12
	#DEBUG_VALUE: time_compare:b <- $r15
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	.loc	0 0 9                           # bench/lab_bench.c:0:9
	movq	%rbp, 64(%rsp)                  # 8-byte Spill
	.loc	0 22 37 is_stmt 1               # bench/lab_bench.c:22:37
	imulq	$1000000000, 96(%rsp), %rax     # imm = 0x3B9ACA00
	.loc	0 22 60 is_stmt 0               # bench/lab_bench.c:22:60
	addq	104(%rsp), %rax
.Ltmp209:
	#DEBUG_VALUE: time_compare:start <- $rax
	#DEBUG_VALUE: r <- 0
	.loc	0 0 60                          # bench/lab_bench.c:0:60
	movq	%rax, 72(%rsp)                  # 8-byte Spill
.Ltmp210:
	#DEBUG_VALUE: time_compare:start <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	.loc	0 74 31 is_stmt 1               # bench/lab_bench.c:74:31
	movq	80(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	.loc	0 74 26 is_stmt 0               # bench/lab_bench.c:74:26
	testq	%rax, %rax
.Ltmp211:
	.loc	0 74 5                          # bench/lab_bench.c:74:5
	je	.LBB0_86
.Ltmp212:
# %bb.83:                               #   in Loop: Header=BB0_69 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 1
	#DEBUG_VALUE: alg <- $r13d
	#DEBUG_VALUE: time_compare:fn <- $r14
	#DEBUG_VALUE: time_compare:a <- $r12
	#DEBUG_VALUE: time_compare:b <- $r15
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: time_compare:start <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: r <- 0
	.loc	0 0 5                           # bench/lab_bench.c:0:5
	movq	24(%rsp), %rbx
	movq	48(%rsp), %rbp                  # 8-byte Reload
.Ltmp213:
	.p2align	4, 0x90
.LBB0_84:                               #   Parent Loop BB0_62 Depth=1
                                        #     Parent Loop BB0_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 1
	#DEBUG_VALUE: alg <- $r13d
	#DEBUG_VALUE: time_compare:fn <- $r14
	#DEBUG_VALUE: time_compare:a <- $r12
	#DEBUG_VALUE: time_compare:b <- $r15
	#DEBUG_VALUE: time_compare:start <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: r <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_stack_value] $rbp, $rsp
	.loc	0 76 13 is_stmt 1               # bench/lab_bench.c:76:13
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	leaq	96(%rsp), %rcx
	callq	*%r14
.Ltmp214:
	.loc	0 76 41 is_stmt 0               # bench/lab_bench.c:76:41
	testl	%eax, %eax
.Ltmp215:
	.loc	0 76 13                         # bench/lab_bench.c:76:13
	jne	.LBB0_105
.Ltmp216:
# %bb.85:                               #   in Loop: Header=BB0_84 Depth=3
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 1
	#DEBUG_VALUE: alg <- $r13d
	#DEBUG_VALUE: time_compare:fn <- $r14
	#DEBUG_VALUE: time_compare:a <- $r12
	#DEBUG_VALUE: time_compare:b <- $r15
	#DEBUG_VALUE: time_compare:start <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: r <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_stack_value] $rbp, $rsp
	.loc	0 77 34 is_stmt 1               # bench/lab_bench.c:77:34
	movzbl	96(%rsp), %eax
	.loc	0 77 21 is_stmt 0               # bench/lab_bench.c:77:21
	addq	%rax, result_sink(%rip)
.Ltmp217:
	#DEBUG_VALUE: r <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 48, DW_OP_deref, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $rbp, $rsp
	.loc	0 74 26 is_stmt 1               # bench/lab_bench.c:74:26
	decq	%rbp
.Ltmp218:
	.loc	0 74 5 is_stmt 0                # bench/lab_bench.c:74:5
	jne	.LBB0_84
.Ltmp219:
.LBB0_86:                               #   in Loop: Header=BB0_69 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 1
	#DEBUG_VALUE: alg <- $r13d
	#DEBUG_VALUE: time_compare:fn <- $r14
	#DEBUG_VALUE: time_compare:a <- $r12
	#DEBUG_VALUE: time_compare:b <- $r15
	#DEBUG_VALUE: time_compare:start <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: now_ns:result <- undef
	.loc	0 0 5                           # bench/lab_bench.c:0:5
	leaq	.L.str.33(%rip), %rbp
.Ltmp220:
	.loc	0 21 9 is_stmt 1                # bench/lab_bench.c:21:9
	movq	%rbp, %rdi
	callq	getenv@PLT
.Ltmp221:
	.loc	0 21 40 is_stmt 0               # bench/lab_bench.c:21:40
	testq	%rax, %rax
	.loc	0 21 48                         # bench/lab_bench.c:21:48
	jne	.LBB0_105
.Ltmp222:
# %bb.87:                               #   in Loop: Header=BB0_69 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 1
	#DEBUG_VALUE: alg <- $r13d
	#DEBUG_VALUE: time_compare:fn <- $r14
	#DEBUG_VALUE: time_compare:a <- $r12
	#DEBUG_VALUE: time_compare:b <- $r15
	#DEBUG_VALUE: time_compare:start <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	.loc	0 21 51                         # bench/lab_bench.c:21:51
	movl	$1, %edi
	leaq	96(%rsp), %rsi
	callq	clock_gettime@PLT
.Ltmp223:
	.loc	0 21 89                         # bench/lab_bench.c:21:89
	testl	%eax, %eax
.Ltmp224:
	.loc	0 21 9                          # bench/lab_bench.c:21:9
	jne	.LBB0_105
.Ltmp225:
# %bb.88:                               #   in Loop: Header=BB0_69 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 1
	#DEBUG_VALUE: alg <- $r13d
	#DEBUG_VALUE: time_compare:fn <- $r14
	#DEBUG_VALUE: time_compare:a <- $r12
	#DEBUG_VALUE: time_compare:b <- $r15
	#DEBUG_VALUE: time_compare:start <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	.loc	0 22 37 is_stmt 1               # bench/lab_bench.c:22:37
	imulq	$1000000000, 96(%rsp), %r10     # imm = 0x3B9ACA00
	.loc	0 22 60 is_stmt 0               # bench/lab_bench.c:22:60
	addq	104(%rsp), %r10
.Ltmp226:
	#DEBUG_VALUE: time_compare:stop <- $r10
	.loc	0 79 32 is_stmt 1               # bench/lab_bench.c:79:32
	subq	72(%rsp), %r10                  # 8-byte Folded Reload
.Ltmp227:
	.loc	0 0 32 is_stmt 0                # bench/lab_bench.c:0:32
	movq	16(%rsp), %r11                  # 8-byte Reload
.Ltmp228:
	.loc	0 79 9                          # bench/lab_bench.c:79:9
	jb	.LBB0_105
.Ltmp229:
# %bb.89:                               #   in Loop: Header=BB0_69 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 1
	#DEBUG_VALUE: alg <- $r13d
	#DEBUG_VALUE: elapsed <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_minus, DW_OP_stack_value] undef, undef
	.loc	0 143 32 is_stmt 1              # bench/lab_bench.c:143:32
	movq	40(%rsp), %rbx
	.loc	0 143 27 is_stmt 0              # bench/lab_bench.c:143:27
	subq	%rbx, %r11
	.loc	0 143 39                        # bench/lab_bench.c:143:39
	jb	.LBB0_92
.Ltmp230:
# %bb.90:                               #   in Loop: Header=BB0_69 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: c <- [DW_OP_plus_uconst 88, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- 1
	#DEBUG_VALUE: alg <- $r13d
	#DEBUG_VALUE: elapsed <- undef
	.loc	0 143 52                        # bench/lab_bench.c:143:52
	leaq	.L__const.main.conditions(%rip), %rax
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	(%rax,%rcx,8), %rdx
	.loc	0 143 88                        # bench/lab_bench.c:143:88
	leaq	.L__const.main.names(%rip), %rax
	movq	(%rax,%r13,8), %r9
.Ltmp231:
	#DEBUG_VALUE: emit:algorithm <- $r9
	#DEBUG_VALUE: emit:o <- undef
	#DEBUG_VALUE: emit:condition <- $rdx
	#DEBUG_VALUE: emit:sample <- undef
	#DEBUG_VALUE: emit:position <- 1
	#DEBUG_VALUE: emit:elapsed <- undef
	.loc	0 92 12 is_stmt 1               # bench/lab_bench.c:92:12
	subq	$8, %rsp
.Ltmp232:
	.cfi_adjust_cfa_offset 8
	movl	$1, %r8d
	leaq	.L.str.34(%rip), %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r11, %rcx
	xorl	%eax, %eax
	pushq	result_sink(%rip)
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	56(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	80(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	64(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	printf@PLT
.Ltmp233:
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	.loc	0 93 127                        # bench/lab_bench.c:93:127
	testl	%eax, %eax
.Ltmp234:
	.loc	0 143 25                        # bench/lab_bench.c:143:25
	jns	.LBB0_91
.Ltmp235:
.LBB0_105:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_LABEL: main:failure
	.loc	0 168 5                         # bench/lab_bench.c:168:5
	movq	%r12, %rdi
	callq	free@PLT
.Ltmp236:
	.loc	0 168 14 is_stmt 0              # bench/lab_bench.c:168:14
	movq	%r15, %rdi
	callq	free@PLT
.Ltmp237:
	.loc	0 168 66                        # bench/lab_bench.c:168:66
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 168 23                        # bench/lab_bench.c:168:23
	leaq	.L.str.20(%rip), %rdi
	movl	$32, %esi
.Ltmp238:
.LBB0_119:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	.loc	0 0 0                           # bench/lab_bench.c:0:0
	movl	$1, %edx
	callq	fwrite@PLT
.Ltmp239:
	movl	$1, %eax
.Ltmp240:
.LBB0_120:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 169 1 epilogue_begin is_stmt 1 # bench/lab_bench.c:169:1
	addq	$488, %rsp                      # imm = 0x1E8
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp241:
.LBB0_55:
	.cfi_def_cfa_offset 544
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- 0
	.loc	0 0 1 is_stmt 0                 # bench/lab_bench.c:0:1
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
.Ltmp242:
.LBB0_56:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_57 Depth 2
                                        #       Child Loop BB0_104 Depth 3
                                        #       Child Loop BB0_109 Depth 3
                                        #       Child Loop BB0_112 Depth 3
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	movb	$1, %bl
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: elapsed <- undef
	#DEBUG_VALUE: order <- 0
	xorl	%r14d, %r14d
	jmp	.LBB0_57
.Ltmp243:
	.p2align	4, 0x90
.LBB0_115:                              #   in Loop: Header=BB0_57 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: alg <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: elapsed <- undef
	#DEBUG_VALUE: order <- [DW_OP_plus_uconst 72, DW_OP_deref, DW_OP_plus_uconst 1, DW_OP_stack_value] $rsp
	movl	$1, %r14d
.Ltmp244:
	.loc	0 155 13 is_stmt 1              # bench/lab_bench.c:155:13
	testb	$1, 48(%rsp)                    # 1-byte Folded Reload
	movl	$0, %ebx
	je	.LBB0_116
.Ltmp245:
.LBB0_57:                               #   Parent Loop BB0_56 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_104 Depth 3
                                        #       Child Loop BB0_109 Depth 3
                                        #       Child Loop BB0_112 Depth 3
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- $r14
	.loc	0 0 13 is_stmt 0                # bench/lab_bench.c:0:13
	movq	16(%rsp), %rax                  # 8-byte Reload
.Ltmp246:
	.loc	0 156 33 is_stmt 1              # bench/lab_bench.c:156:33
	leaq	(%r14,%rax), %rbp
.Ltmp247:
	#DEBUG_VALUE: alg <- [DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rbp
	.loc	0 0 33 is_stmt 0                # bench/lab_bench.c:0:33
	movq	8(%rsp), %rdi                   # 8-byte Reload
.Ltmp248:
	.loc	0 157 21 is_stmt 1              # bench/lab_bench.c:157:21
	leaq	.L.str.2(%rip), %rsi
	callq	strcmp@PLT
.Ltmp249:
	.loc	0 157 53 is_stmt 0              # bench/lab_bench.c:157:53
	testl	%eax, %eax
.Ltmp250:
	.loc	0 157 21                        # bench/lab_bench.c:157:21
	je	.LBB0_58
.Ltmp251:
# %bb.94:                               #   in Loop: Header=BB0_57 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- $r14
	#DEBUG_VALUE: alg <- [DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rbp
	.loc	0 158 22 is_stmt 1              # bench/lab_bench.c:158:22
	movl	%ebp, %eax
	andb	$1, %al
	negb	%al
	.loc	0 158 54 is_stmt 0              # bench/lab_bench.c:158:54
	movq	24(%rsp), %r13
	.loc	0 158 22                        # bench/lab_bench.c:158:22
	movzbl	%al, %esi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	memset@PLT
.Ltmp252:
	.loc	0 0 22                          # bench/lab_bench.c:0:22
	jmp	.LBB0_95
.Ltmp253:
	.p2align	4, 0x90
.LBB0_58:                               #   in Loop: Header=BB0_57 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- $r14
	#DEBUG_VALUE: alg <- [DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rbp
	.loc	0 157 74 is_stmt 1              # bench/lab_bench.c:157:74
	movq	24(%rsp), %r13
	.loc	0 157 59 is_stmt 0              # bench/lab_bench.c:157:59
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	memcpy@PLT
.Ltmp254:
.LBB0_95:                               #   in Loop: Header=BB0_57 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- $r14
	#DEBUG_VALUE: alg <- [DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: time_xor:data <- $r15
	#DEBUG_VALUE: time_xor:o <- undef
	#DEBUG_VALUE: time_xor:elapsed <- undef
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: now_ns:result <- undef
	.loc	0 21 9 is_stmt 1                # bench/lab_bench.c:21:9
	leaq	.L.str.33(%rip), %rdi
	callq	getenv@PLT
.Ltmp255:
	.loc	0 21 40 is_stmt 0               # bench/lab_bench.c:21:40
	testq	%rax, %rax
.Ltmp256:
	#DEBUG_VALUE: time_xor:fn <- undef
	.loc	0 21 48                         # bench/lab_bench.c:21:48
	jne	.LBB0_105
.Ltmp257:
# %bb.96:                               #   in Loop: Header=BB0_57 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- $r14
	#DEBUG_VALUE: alg <- [DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: time_xor:data <- $r15
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	.loc	0 21 51                         # bench/lab_bench.c:21:51
	movl	$1, %edi
	leaq	96(%rsp), %rsi
	callq	clock_gettime@PLT
.Ltmp258:
	.loc	0 21 89                         # bench/lab_bench.c:21:89
	testl	%eax, %eax
.Ltmp259:
	.loc	0 21 9                          # bench/lab_bench.c:21:9
	jne	.LBB0_105
.Ltmp260:
# %bb.97:                               #   in Loop: Header=BB0_57 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- $r14
	#DEBUG_VALUE: alg <- [DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: time_xor:data <- $r15
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	.loc	0 0 9                           # bench/lab_bench.c:0:9
	movq	%rbp, 64(%rsp)                  # 8-byte Spill
.Ltmp261:
	#DEBUG_VALUE: alg <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rsp
	movq	%r14, 72(%rsp)                  # 8-byte Spill
.Ltmp262:
	#DEBUG_VALUE: order <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	movl	%ebx, 48(%rsp)                  # 4-byte Spill
	.loc	0 22 37 is_stmt 1               # bench/lab_bench.c:22:37
	imulq	$1000000000, 96(%rsp), %rbx     # imm = 0x3B9ACA00
	.loc	0 22 60 is_stmt 0               # bench/lab_bench.c:22:60
	addq	104(%rsp), %rbx
.Ltmp263:
	#DEBUG_VALUE: time_xor:start <- $rbx
	#DEBUG_VALUE: r <- 0
	.loc	0 85 31 is_stmt 1               # bench/lab_bench.c:85:31
	movq	80(%rsp), %rbp
	movq	%rbp, %r14
	.loc	0 85 26 is_stmt 0               # bench/lab_bench.c:85:26
	testq	%rbp, %rbp
.Ltmp264:
	.loc	0 85 5                          # bench/lab_bench.c:85:5
	je	.LBB0_98
.Ltmp265:
	.p2align	4, 0x90
.LBB0_104:                              #   Parent Loop BB0_56 Depth=1
                                        #     Parent Loop BB0_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: alg <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: time_xor:data <- $r15
	#DEBUG_VALUE: time_xor:start <- $rbx
	#DEBUG_VALUE: r <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_stack_value] $r14, $rbp
	.loc	0 86 13 is_stmt 1               # bench/lab_bench.c:86:13
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r13, %rdx
	movl	$42, %ecx
	callq	xor_apply@PLT
.Ltmp266:
	.loc	0 86 48 is_stmt 0               # bench/lab_bench.c:86:48
	testl	%eax, %eax
.Ltmp267:
	#DEBUG_VALUE: r <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r14
	.loc	0 86 13                         # bench/lab_bench.c:86:13
	jne	.LBB0_105
.Ltmp268:
# %bb.103:                              #   in Loop: Header=BB0_104 Depth=3
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: alg <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: time_xor:data <- $r15
	#DEBUG_VALUE: time_xor:start <- $rbx
	#DEBUG_VALUE: r <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r14
	#DEBUG_VALUE: r <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r14, $rbp
	.loc	0 85 26 is_stmt 1               # bench/lab_bench.c:85:26
	decq	%r14
.Ltmp269:
	.loc	0 85 5 is_stmt 0                # bench/lab_bench.c:85:5
	jne	.LBB0_104
.Ltmp270:
.LBB0_98:                               #   in Loop: Header=BB0_57 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: alg <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: time_xor:data <- $r15
	#DEBUG_VALUE: time_xor:start <- $rbx
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	#DEBUG_VALUE: now_ns:result <- undef
	.loc	0 21 9 is_stmt 1                # bench/lab_bench.c:21:9
	leaq	.L.str.33(%rip), %rdi
	callq	getenv@PLT
.Ltmp271:
	.loc	0 21 40 is_stmt 0               # bench/lab_bench.c:21:40
	testq	%rax, %rax
	.loc	0 21 48                         # bench/lab_bench.c:21:48
	jne	.LBB0_105
.Ltmp272:
# %bb.99:                               #   in Loop: Header=BB0_57 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: alg <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: time_xor:data <- $r15
	#DEBUG_VALUE: time_xor:start <- $rbx
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	.loc	0 21 51                         # bench/lab_bench.c:21:51
	movl	$1, %edi
	leaq	96(%rsp), %rsi
	callq	clock_gettime@PLT
.Ltmp273:
	.loc	0 21 89                         # bench/lab_bench.c:21:89
	testl	%eax, %eax
	jne	.LBB0_105
.Ltmp274:
# %bb.100:                              #   in Loop: Header=BB0_57 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: alg <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: time_xor:data <- $r15
	#DEBUG_VALUE: time_xor:start <- $rbx
	#DEBUG_VALUE: now_ns:time <- [DW_OP_plus_uconst 96, DW_OP_deref] $rsp
	.loc	0 22 37 is_stmt 1               # bench/lab_bench.c:22:37
	imulq	$1000000000, 96(%rsp), %r10     # imm = 0x3B9ACA00
	.loc	0 22 60 is_stmt 0               # bench/lab_bench.c:22:60
	addq	104(%rsp), %r10
.Ltmp275:
	#DEBUG_VALUE: time_xor:stop <- $r10
	.loc	0 87 32 is_stmt 1               # bench/lab_bench.c:87:32
	subq	%rbx, %r10
.Ltmp276:
	.loc	0 87 9 is_stmt 0                # bench/lab_bench.c:87:9
	jb	.LBB0_105
.Ltmp277:
# %bb.101:                              #   in Loop: Header=BB0_57 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: alg <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: time_xor:data <- $r15
	#DEBUG_VALUE: time_xor:start <- $rbx
	#DEBUG_VALUE: checksum:data <- $r15
	#DEBUG_VALUE: checksum:length <- $r13
	#DEBUG_VALUE: checksum:sum <- 0
	#DEBUG_VALUE: i <- 0
	.loc	0 67 44 is_stmt 1               # bench/lab_bench.c:67:44
	testq	%r13, %r13
.Ltmp278:
	.loc	0 67 23 is_stmt 0               # bench/lab_bench.c:67:23
	je	.LBB0_102
.Ltmp279:
# %bb.106:                              #   in Loop: Header=BB0_57 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: alg <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: time_xor:data <- $r15
	#DEBUG_VALUE: time_xor:start <- $rbx
	#DEBUG_VALUE: checksum:data <- $r15
	#DEBUG_VALUE: checksum:length <- $r13
	#DEBUG_VALUE: checksum:sum <- 0
	#DEBUG_VALUE: i <- 0
	cmpq	$8, %r13
	jae	.LBB0_108
.Ltmp280:
# %bb.107:                              #   in Loop: Header=BB0_57 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: alg <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: time_xor:data <- $r15
	#DEBUG_VALUE: time_xor:start <- $rbx
	#DEBUG_VALUE: checksum:data <- $r15
	#DEBUG_VALUE: checksum:length <- $r13
	#DEBUG_VALUE: checksum:sum <- 0
	#DEBUG_VALUE: i <- 0
	.loc	0 0 23                          # bench/lab_bench.c:0:23
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.LBB0_110
.Ltmp281:
	.p2align	4, 0x90
.LBB0_102:                              #   in Loop: Header=BB0_57 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: alg <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: time_xor:data <- $r15
	#DEBUG_VALUE: time_xor:start <- $rbx
	#DEBUG_VALUE: checksum:data <- $r15
	#DEBUG_VALUE: checksum:length <- $r13
	#DEBUG_VALUE: checksum:sum <- 0
	#DEBUG_VALUE: i <- 0
	xorl	%ecx, %ecx
	jmp	.LBB0_113
.Ltmp282:
	.p2align	4, 0x90
.LBB0_108:                              #   in Loop: Header=BB0_57 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: alg <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: time_xor:data <- $r15
	#DEBUG_VALUE: time_xor:start <- $rbx
	#DEBUG_VALUE: checksum:data <- $r15
	#DEBUG_VALUE: checksum:length <- $r13
	#DEBUG_VALUE: checksum:sum <- 0
	#DEBUG_VALUE: i <- 0
	.loc	0 67 23                         # bench/lab_bench.c:67:23
	movq	%r13, %rdx
	andq	$-8, %rdx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.Ltmp283:
	.p2align	4, 0x90
.LBB0_109:                              #   Parent Loop BB0_56 Depth=1
                                        #     Parent Loop BB0_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: alg <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: time_xor:data <- $r15
	#DEBUG_VALUE: time_xor:start <- $rbx
	#DEBUG_VALUE: checksum:data <- $r15
	#DEBUG_VALUE: checksum:length <- $r13
	#DEBUG_VALUE: i <- $rax
	#DEBUG_VALUE: checksum:sum <- $rcx
	.loc	0 67 66                         # bench/lab_bench.c:67:66
	movzbl	(%r15,%rax), %esi
	.loc	0 67 63                         # bench/lab_bench.c:67:63
	addq	%rcx, %rsi
.Ltmp284:
	#DEBUG_VALUE: checksum:sum <- $rsi
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $rax
	.loc	0 67 66                         # bench/lab_bench.c:67:66
	movzbl	1(%r15,%rax), %ecx
.Ltmp285:
	#DEBUG_VALUE: checksum:sum <- undef
	#DEBUG_VALUE: i <- [DW_OP_constu 2, DW_OP_or, DW_OP_stack_value] $rax
	movzbl	2(%r15,%rax), %edi
	.loc	0 67 63                         # bench/lab_bench.c:67:63
	addq	%rcx, %rdi
	addq	%rsi, %rdi
.Ltmp286:
	#DEBUG_VALUE: checksum:sum <- $rdi
	#DEBUG_VALUE: i <- [DW_OP_constu 3, DW_OP_or, DW_OP_stack_value] $rax
	.loc	0 67 66                         # bench/lab_bench.c:67:66
	movzbl	3(%r15,%rax), %ecx
.Ltmp287:
	#DEBUG_VALUE: checksum:sum <- undef
	#DEBUG_VALUE: i <- [DW_OP_constu 4, DW_OP_or, DW_OP_stack_value] $rax
	movzbl	4(%r15,%rax), %esi
	.loc	0 67 63                         # bench/lab_bench.c:67:63
	addq	%rcx, %rsi
	#DEBUG_VALUE: checksum:sum <- undef
.Ltmp288:
	#DEBUG_VALUE: i <- [DW_OP_constu 5, DW_OP_or, DW_OP_stack_value] $rax
	.loc	0 67 66                         # bench/lab_bench.c:67:66
	movzbl	5(%r15,%rax), %r8d
	.loc	0 67 63                         # bench/lab_bench.c:67:63
	addq	%rsi, %r8
	addq	%rdi, %r8
.Ltmp289:
	#DEBUG_VALUE: checksum:sum <- $r8
	#DEBUG_VALUE: i <- [DW_OP_constu 6, DW_OP_or, DW_OP_stack_value] $rax
	.loc	0 67 66                         # bench/lab_bench.c:67:66
	movzbl	6(%r15,%rax), %esi
.Ltmp290:
	#DEBUG_VALUE: checksum:sum <- undef
	#DEBUG_VALUE: i <- [DW_OP_constu 7, DW_OP_or, DW_OP_stack_value] $rax
	movzbl	7(%r15,%rax), %ecx
	.loc	0 67 63                         # bench/lab_bench.c:67:63
	addq	%rsi, %rcx
	addq	%r8, %rcx
.Ltmp291:
	#DEBUG_VALUE: checksum:sum <- $rcx
	.loc	0 67 54                         # bench/lab_bench.c:67:54
	addq	$8, %rax
.Ltmp292:
	#DEBUG_VALUE: i <- $rax
	.loc	0 67 23                         # bench/lab_bench.c:67:23
	cmpq	%rax, %rdx
	jne	.LBB0_109
.Ltmp293:
.LBB0_110:                              #   in Loop: Header=BB0_57 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: alg <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: time_xor:data <- $r15
	#DEBUG_VALUE: time_xor:start <- $rbx
	#DEBUG_VALUE: checksum:data <- $r15
	#DEBUG_VALUE: checksum:length <- $r13
	movl	%r13d, %edx
	andl	$7, %edx
	je	.LBB0_113
.Ltmp294:
# %bb.111:                              #   in Loop: Header=BB0_57 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: alg <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: time_xor:data <- $r15
	#DEBUG_VALUE: time_xor:start <- $rbx
	#DEBUG_VALUE: checksum:data <- $r15
	#DEBUG_VALUE: checksum:length <- $r13
	addq	%r15, %rax
	xorl	%esi, %esi
.Ltmp295:
	.p2align	4, 0x90
.LBB0_112:                              #   Parent Loop BB0_56 Depth=1
                                        #     Parent Loop BB0_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: alg <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: time_xor:data <- $r15
	#DEBUG_VALUE: time_xor:start <- $rbx
	#DEBUG_VALUE: checksum:data <- $r15
	#DEBUG_VALUE: checksum:length <- $r13
	#DEBUG_VALUE: i <- undef
	#DEBUG_VALUE: checksum:sum <- $rcx
	.loc	0 67 66                         # bench/lab_bench.c:67:66
	movzbl	(%rax,%rsi), %edi
	.loc	0 67 63                         # bench/lab_bench.c:67:63
	addq	%rdi, %rcx
.Ltmp296:
	#DEBUG_VALUE: checksum:sum <- $rcx
	.loc	0 67 23                         # bench/lab_bench.c:67:23
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB0_112
.Ltmp297:
.LBB0_113:                              #   in Loop: Header=BB0_57 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: alg <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: time_xor:data <- $r15
	#DEBUG_VALUE: time_xor:start <- $rbx
	.loc	0 88 17 is_stmt 1               # bench/lab_bench.c:88:17
	addq	%rcx, result_sink(%rip)
.Ltmp298:
	#DEBUG_VALUE: elapsed <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_minus, DW_OP_stack_value] undef, undef
	.loc	0 0 17 is_stmt 0                # bench/lab_bench.c:0:17
	movq	16(%rsp), %rcx                  # 8-byte Reload
.Ltmp299:
	.loc	0 161 23 is_stmt 1              # bench/lab_bench.c:161:23
	subq	40(%rsp), %rcx
	.loc	0 161 35 is_stmt 0              # bench/lab_bench.c:161:35
	jb	.LBB0_115
.Ltmp300:
# %bb.114:                              #   in Loop: Header=BB0_57 Depth=2
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: order <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: alg <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rsp
	.loc	0 0 35                          # bench/lab_bench.c:0:35
	movq	64(%rsp), %rdx                  # 8-byte Reload
	andl	$1, %edx
.Ltmp301:
	#DEBUG_VALUE: elapsed <- undef
	leaq	.Lreltable.main(%rip), %rax
.Ltmp302:
	.loc	0 161 48                        # bench/lab_bench.c:161:48
	movslq	(%rax,%rdx,4), %rdx
	addq	%rax, %rdx
.Ltmp303:
	#DEBUG_VALUE: emit:sample <- undef
	#DEBUG_VALUE: emit:o <- undef
	#DEBUG_VALUE: emit:condition <- $rdx
	#DEBUG_VALUE: emit:position <- [DW_OP_plus_uconst 72, DW_OP_deref] $rsp
	#DEBUG_VALUE: emit:elapsed <- undef
	#DEBUG_VALUE: emit:algorithm <- undef
	.loc	0 92 12 is_stmt 1               # bench/lab_bench.c:92:12
	subq	$8, %rsp
.Ltmp304:
	.cfi_adjust_cfa_offset 8
	leaq	.L.str.34(%rip), %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	80(%rsp), %r8                   # 8-byte Reload
	leaq	.L.str.17(%rip), %r9
	xorl	%eax, %eax
	pushq	result_sink(%rip)
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	56(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	callq	printf@PLT
.Ltmp305:
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	.loc	0 93 127                        # bench/lab_bench.c:93:127
	testl	%eax, %eax
	jns	.LBB0_115
	jmp	.LBB0_105
.Ltmp306:
.LBB0_116:                              #   in Loop: Header=BB0_56 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: alg <- [DW_OP_plus_uconst 64, DW_OP_deref, DW_OP_constu 1, DW_OP_and, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: elapsed <- undef
	.loc	0 0 127 is_stmt 0               # bench/lab_bench.c:0:127
	movq	16(%rsp), %rdx                  # 8-byte Reload
	.loc	0 154 54 is_stmt 1              # bench/lab_bench.c:154:54
	incq	%rdx
.Ltmp307:
	#DEBUG_VALUE: s <- $rdx
	.loc	0 154 45 is_stmt 0              # bench/lab_bench.c:154:45
	movq	56(%rsp), %rax
	.loc	0 154 41                        # bench/lab_bench.c:154:41
	addq	40(%rsp), %rax
	movq	%rdx, %rcx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
.Ltmp308:
	#DEBUG_VALUE: s <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 154 30                        # bench/lab_bench.c:154:30
	cmpq	%rax, %rdx
.Ltmp309:
	.loc	0 154 9                         # bench/lab_bench.c:154:9
	jb	.LBB0_56
	jmp	.LBB0_117
.Ltmp310:
.LBB0_43:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	.loc	0 118 90 is_stmt 1              # bench/lab_bench.c:118:90
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 118 9 is_stmt 0               # bench/lab_bench.c:118:9
	leaq	.L.str.3(%rip), %rdi
	movl	$70, %esi
	jmp	.LBB0_41
.Ltmp311:
.LBB0_121:
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_LLVM_fragment 256 32] $rsp
	#DEBUG_VALUE: main:o <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 320 64] $rsp
	#DEBUG_VALUE: main:a <- $r12
	#DEBUG_VALUE: main:b <- $r15
	.loc	0 127 35 is_stmt 1              # bench/lab_bench.c:127:35
	movq	%r12, %rdi
	callq	free@PLT
.Ltmp312:
	.loc	0 127 44 is_stmt 0              # bench/lab_bench.c:127:44
	movq	%r15, %rdi
	callq	free@PLT
.Ltmp313:
	.loc	0 127 82                        # bench/lab_bench.c:127:82
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 127 53                        # bench/lab_bench.c:127:53
	leaq	.L.str.4(%rip), %rdi
	movl	$18, %esi
	jmp	.LBB0_119
.Ltmp314:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.file	5 "/usr/include/x86_64-linux-gnu/sys" "utsname.h" md5 0x7ef4658eb4be402346dede6a12ec1279
	.file	6 "/usr/include/x86_64-linux-gnu/bits/types" "struct_timespec.h" md5 0x55dc154df3f21a5aa944dcafba9b43f6
	.file	7 "/usr/include" "string.h" md5 0x165db1185644f68894fa9e0d17055d70
	.file	8 "/usr/include" "errno.h" md5 0x047d5cf117ed2ec1460c1b2e072a4e50
	.file	9 "/usr/include" "stdlib.h" md5 0x7fa2ecb2348a66f8b44ab9a15abd0b72
	.file	10 "/usr/include" "stdio.h" md5 0x1e435c46987a169d9f9186f63a512303
	.file	11 "/usr/include/x86_64-linux-gnu/bits/types" "struct_FILE.h" md5 0x7a6d4a00a37ee6b9a40cd04bd01f5d00
	.file	12 "/usr/include/x86_64-linux-gnu/bits/types" "FILE.h" md5 0x571f9fb6223c42439075fdde11a0de5d
	.file	13 "/usr/include" "time.h" md5 0x0f2fb4d8bdeb2539d9a74dd8d835207f
	.file	14 "/usr/include/x86_64-linux-gnu/bits/types" "clockid_t.h" md5 0x099a80153c2ad48bc7f5f4a188cb6d24
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"--context"
	.size	.L.str, 10

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Invalid options: --experiment compare|xor-c|xor-asm --length 1..1048576 --rounds 1..1000000 --samples 1..10000 --warmup 1..1000 --seed uint32\n"
	.size	.L.str.1, 143

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"xor-asm"
	.size	.L.str.2, 8

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"ASM benchmark not built. Native x86-64 correctness is required first.\n"
	.size	.L.str.3, 71

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Allocation failed\n"
	.size	.L.str.4, 19

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"experiment,condition,sample,order,algorithm,length,rounds,seed,elapsed_ns,result_sink"
	.size	.L.str.5, 86

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"compare"
	.size	.L.str.6, 8

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"equal"
	.size	.L.str.7, 6

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"mismatch-first"
	.size	.L.str.8, 15

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"mismatch-middle"
	.size	.L.str.9, 16

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"mismatch-last"
	.size	.L.str.10, 14

	.type	.L__const.main.conditions,@object # @__const.main.conditions
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const.main.conditions:
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.size	.L__const.main.conditions, 32

	.type	.L__const.main.functions,@object # @__const.main.functions
	.p2align	4, 0x0
.L__const.main.functions:
	.quad	compare_early_exit
	.quad	compare_full_scan
	.size	.L__const.main.functions, 16

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"early-exit"
	.size	.L.str.11, 11

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"full-scan"
	.size	.L.str.12, 10

	.type	.L__const.main.names,@object    # @__const.main.names
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const.main.names:
	.quad	.L.str.11
	.quad	.L.str.12
	.size	.L__const.main.names, 16

	.type	.L.str.14,@object               # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"zeros"
	.size	.L.str.14, 6

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"ff"
	.size	.L.str.15, 3

	.type	.Lreltable.main,@object         # @reltable.main
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.Lreltable.main:
	.long	.L.str.14-.Lreltable.main
	.long	.L.str.15-.Lreltable.main
	.size	.Lreltable.main, 8

	.type	.L.str.17,@object               # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"c"
	.size	.L.str.17, 2

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"CSV write failed\n"
	.size	.L.str.19, 18

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Timer, API or CSV output failed\n"
	.size	.L.str.20, 33

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"x86_64"
	.size	.L.str.21, 7

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"native"
	.size	.L.str.22, 7

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"{\"compiled_arch\":\"%s\",\"runtime_machine\":\"%s\",\"execution\":\"%s\"}\n"
	.size	.L.str.25, 64

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"--experiment"
	.size	.L.str.26, 13

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"--seed"
	.size	.L.str.27, 7

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"--length"
	.size	.L.str.28, 9

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"--rounds"
	.size	.L.str.29, 9

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"--samples"
	.size	.L.str.30, 10

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"--warmup"
	.size	.L.str.31, 9

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"xor-c"
	.size	.L.str.32, 6

	.type	result_sink,@object             # @result_sink
	.local	result_sink
	.comm	result_sink,8,8
	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"LAB_BENCH_FAIL_TIMER"
	.size	.L.str.33, 21

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"%s,%s,%zu,%zu,%s,%zu,%zu,%u,%lu,%lu\n"
	.size	.L.str.34, 37

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	47                              # Offset entry count
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
	.long	.Ldebug_loc32-.Lloclists_table_base0
	.long	.Ldebug_loc33-.Lloclists_table_base0
	.long	.Ldebug_loc34-.Lloclists_table_base0
	.long	.Ldebug_loc35-.Lloclists_table_base0
	.long	.Ldebug_loc36-.Lloclists_table_base0
	.long	.Ldebug_loc37-.Lloclists_table_base0
	.long	.Ldebug_loc38-.Lloclists_table_base0
	.long	.Ldebug_loc39-.Lloclists_table_base0
	.long	.Ldebug_loc40-.Lloclists_table_base0
	.long	.Ldebug_loc41-.Lloclists_table_base0
	.long	.Ldebug_loc42-.Lloclists_table_base0
	.long	.Ldebug_loc43-.Lloclists_table_base0
	.long	.Ldebug_loc44-.Lloclists_table_base0
	.long	.Ldebug_loc45-.Lloclists_table_base0
	.long	.Ldebug_loc46-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # super-register DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # super-register DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	17                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	25                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	16                              # DW_OP_constu
	.byte	143                             # 20261007
	.byte	209                             # 
	.byte	212                             # 
	.byte	9                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	17                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	18                              # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	64                              # 64
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	19                              # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	64                              # 64
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	16                              # DW_OP_constu
	.byte	232                             # 1000
	.byte	7                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	19                              # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	64                              # 64
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	16                              # DW_OP_constu
	.byte	232                             # 1000
	.byte	7                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	79                              # DW_OP_lit31
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	27                              # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	64                              # 64
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	16                              # DW_OP_constu
	.byte	232                             # 1000
	.byte	7                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	79                              # DW_OP_lit31
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	16                              # DW_OP_constu
	.byte	143                             # 20261007
	.byte	209                             # 
	.byte	212                             # 
	.byte	9                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	10                              # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	32                              # 32
	.byte	16                              # DW_OP_constu
	.byte	143                             # 20261007
	.byte	209                             # 
	.byte	212                             # 
	.byte	9                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	12                              # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	32                              # 32
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	6                               # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	40                              # 40
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	12                              # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	32                              # 32
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp77-.Lfunc_begin0          #   ending offset
	.byte	27                              # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	64                              # 64
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	16                              # DW_OP_constu
	.byte	232                             # 1000
	.byte	7                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	79                              # DW_OP_lit31
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	16                              # DW_OP_constu
	.byte	143                             # 20261007
	.byte	209                             # 
	.byte	212                             # 
	.byte	9                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	32                              # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	64                              # 64
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	16                              # DW_OP_constu
	.byte	232                             # 1000
	.byte	7                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	79                              # DW_OP_lit31
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	16                              # DW_OP_constu
	.byte	143                             # 20261007
	.byte	209                             # 
	.byte	212                             # 
	.byte	9                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	80                              # DW_OP_reg0
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	12                              # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	32                              # 32
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	40                              # 40
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	17                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	208                             # 80
	.byte	0                               # 
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp198-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	32                              # 32
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp201-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp232-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	32                              # 32
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp235-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp240-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	32                              # 32
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp241-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp304-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	32                              # 32
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp306-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	12                              # Loc expr size
	.byte	147                             # DW_OP_piece
	.byte	32                              # 32
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp240-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp241-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp310-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp311-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp240-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp241-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp310-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp311-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp134-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp118-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	49                              # DW_OP_lit1
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	50                              # DW_OP_lit2
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	51                              # DW_OP_lit3
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp106-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp140-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp142-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp243-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp304-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp306-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp307-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp307-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp308-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp308-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp310-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	216                             # 88
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp160-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp160-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp198-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	216                             # 88
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp201-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp232-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	216                             # 88
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp163-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp163-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp164-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp164-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp166-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp167-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp167-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp198-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp201-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp232-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp166-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp201-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp201-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp235-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp168-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp202-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp202-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp235-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp169-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp195-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp203-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp229-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp169-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp195-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp203-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp229-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp169-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp195-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp203-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp229-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp169-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp178-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	224                             # 96
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp203-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp212-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	224                             # 96
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp175-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp176-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp176-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp195-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp209-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp210-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp229-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp175-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp179-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp179-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp183-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	6                               # DW_OP_deref
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp183-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp184-.Lfunc_begin0         #   ending offset
	.byte	13                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	6                               # DW_OP_deref
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp209-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp213-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp213-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp217-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	6                               # DW_OP_deref
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp217-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp218-.Lfunc_begin0         #   ending offset
	.byte	13                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	6                               # DW_OP_deref
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp185-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp195-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	224                             # 96
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp219-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp229-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	224                             # 96
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp192-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp193-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp226-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp227-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp197-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp199-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp231-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc36:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp197-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp199-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp231-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc37:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp197-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp201-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp231-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp235-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc38:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp243-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp245-.Lfunc_begin0         #   ending offset
	.byte	7                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	6                               # DW_OP_deref
	.byte	35                              # DW_OP_plus_uconst
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp245-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp262-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp262-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp304-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc39:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp247-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp261-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	49                              # DW_OP_lit1
	.byte	26                              # DW_OP_and
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp261-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp304-.Lfunc_begin0         #   ending offset
	.byte	7                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 64
	.byte	0                               # 
	.byte	6                               # DW_OP_deref
	.byte	49                              # DW_OP_lit1
	.byte	26                              # DW_OP_and
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc40:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp263-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp300-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc41:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp263-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp265-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp265-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp267-.Lfunc_begin0         #   ending offset
	.byte	9                               # Loc expr size
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp267-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp268-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	126                             # DW_OP_breg14
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp268-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp269-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc42:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp275-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp276-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc43:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp277-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp283-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp283-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp284-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp284-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp285-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp286-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp287-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp289-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp290-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp291-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp293-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp295-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp297-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc44:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp277-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp283-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp283-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp284-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp284-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp285-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	49                              # DW_OP_lit1
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp285-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp286-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	50                              # DW_OP_lit2
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp286-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp287-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	51                              # DW_OP_lit3
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp287-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp288-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	52                              # DW_OP_lit4
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp288-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp289-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	53                              # DW_OP_lit5
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp289-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp290-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	54                              # DW_OP_lit6
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp290-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp292-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	55                              # DW_OP_lit7
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp292-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp293-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc45:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp303-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp305-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc46:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp303-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp304-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	200                             # 72
	.byte	0                               # 
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
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	53                              # DW_TAG_volatile_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
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
	.byte	28                              # Abbreviation Code
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
	.byte	29                              # Abbreviation Code
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
	.byte	30                              # Abbreviation Code
	.byte	10                              # DW_TAG_label
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
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
	.byte	32                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
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
	.byte	40                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	42                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	1                               # DW_CHILDREN_yes
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	43                              # Abbreviation Code
	.byte	73                              # DW_TAG_call_site_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	126                             # DW_AT_call_value
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	44                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	1                               # DW_CHILDREN_yes
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	45                              # Abbreviation Code
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	46                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	47                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	48                              # Abbreviation Code
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
	.byte	49                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	50                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	51                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	52                              # Abbreviation Code
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
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
	.byte	1                               # Abbrev [1] 0xc:0xe26 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	31                              # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0xa DW_TAG_variable
	.long	53                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x35:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x3a:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	10                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x41:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x45:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	2                               # Abbrev [2] 0x49:0xa DW_TAG_variable
	.long	83                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               # Abbrev [3] 0x53:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x58:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	143                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x5f:0xa DW_TAG_variable
	.long	105                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	3                               # Abbrev [3] 0x69:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x6e:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x75:0xa DW_TAG_variable
	.long	127                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	3                               # Abbrev [3] 0x7f:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x84:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	71                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x8b:0xa DW_TAG_variable
	.long	149                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	4
	.byte	3                               # Abbrev [3] 0x95:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x9a:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	19                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xa1:0xa DW_TAG_variable
	.long	171                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	5
	.byte	3                               # Abbrev [3] 0xab:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0xb0:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	86                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xb7:0xa DW_TAG_variable
	.long	105                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	6
	.byte	2                               # Abbrev [2] 0xc1:0xa DW_TAG_variable
	.long	203                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	7
	.byte	3                               # Abbrev [3] 0xcb:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0xd0:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xd7:0xa DW_TAG_variable
	.long	225                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	8
	.byte	3                               # Abbrev [3] 0xe1:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0xe6:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	15                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xed:0xa DW_TAG_variable
	.long	247                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	9
	.byte	3                               # Abbrev [3] 0xf7:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0xfc:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x103:0xa DW_TAG_variable
	.long	269                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	10
	.byte	3                               # Abbrev [3] 0x10d:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x112:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	14                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x119:0xa DW_TAG_variable
	.long	291                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	11
	.byte	3                               # Abbrev [3] 0x123:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x128:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	11                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x12f:0xa DW_TAG_variable
	.long	53                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	12
	.byte	2                               # Abbrev [2] 0x139:0xa DW_TAG_variable
	.long	203                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	13
	.byte	2                               # Abbrev [2] 0x143:0xa DW_TAG_variable
	.long	333                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	14
	.byte	3                               # Abbrev [3] 0x14d:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x152:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x159:0xa DW_TAG_variable
	.long	355                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	15
	.byte	3                               # Abbrev [3] 0x163:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x168:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x16f:0xa DW_TAG_variable
	.long	377                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	16
	.byte	3                               # Abbrev [3] 0x179:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x17e:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	18                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x185:0xa DW_TAG_variable
	.long	399                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	17
	.byte	3                               # Abbrev [3] 0x18f:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x194:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	33                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x19b:0xa DW_TAG_variable
	.long	421                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	18
	.byte	3                               # Abbrev [3] 0x1a5:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1aa:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	7                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x1b1:0xa DW_TAG_variable
	.long	421                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	19
	.byte	7                               # Abbrev [7] 0x1bb:0x7 DW_TAG_variable
	.long	291                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x1c2:0x7 DW_TAG_variable
	.long	105                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x1c9:0xa DW_TAG_variable
	.long	467                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	20
	.byte	3                               # Abbrev [3] 0x1d3:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1d8:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x1df:0xa DW_TAG_variable
	.long	489                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	21
	.byte	3                               # Abbrev [3] 0x1e9:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1ee:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	13                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x1f5:0xa DW_TAG_variable
	.long	421                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	22
	.byte	2                               # Abbrev [2] 0x1ff:0xa DW_TAG_variable
	.long	521                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	23
	.byte	3                               # Abbrev [3] 0x209:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x20e:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	9                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x215:0xa DW_TAG_variable
	.long	521                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	24
	.byte	2                               # Abbrev [2] 0x21f:0xa DW_TAG_variable
	.long	53                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	25
	.byte	2                               # Abbrev [2] 0x229:0xa DW_TAG_variable
	.long	521                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	26
	.byte	2                               # Abbrev [2] 0x233:0xa DW_TAG_variable
	.long	203                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	27
	.byte	2                               # Abbrev [2] 0x23d:0xa DW_TAG_variable
	.long	583                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	28
	.byte	3                               # Abbrev [3] 0x247:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x24c:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	21                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x253:0xb DW_TAG_variable
	.byte	5                               # DW_AT_name
	.long	606                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	29
	.byte	9                               # Abbrev [9] 0x25e:0x5 DW_TAG_volatile_type
	.long	611                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x263:0x8 DW_TAG_typedef
	.long	619                             # DW_AT_type
	.byte	8                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x26b:0x8 DW_TAG_typedef
	.long	627                             # DW_AT_type
	.byte	7                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x273:0x4 DW_TAG_base_type
	.byte	6                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x277:0xa DW_TAG_variable
	.long	641                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	30
	.byte	3                               # Abbrev [3] 0x281:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x286:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	37                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x28d:0x21 DW_TAG_enumeration_type
	.long	686                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x295:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0x298:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0x29b:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0x29e:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0x2a1:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0x2a4:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0x2a7:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0x2aa:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x2ae:0x4 DW_TAG_base_type
	.byte	9                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x2b2:0x1 DW_TAG_pointer_type
	.byte	10                              # Abbrev [10] 0x2b3:0x8 DW_TAG_typedef
	.long	699                             # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2bb:0x8 DW_TAG_typedef
	.long	707                             # DW_AT_type
	.byte	19                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x2c3:0x4 DW_TAG_base_type
	.byte	18                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x2c7:0x8 DW_TAG_typedef
	.long	719                             # DW_AT_type
	.byte	22                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2cf:0x8 DW_TAG_typedef
	.long	686                             # DW_AT_type
	.byte	21                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2d7:0x8 DW_TAG_typedef
	.long	627                             # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x2df:0x55 DW_TAG_subprogram
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	820                             # DW_AT_type
                                        # DW_AT_inline
	.byte	15                              # Abbrev [15] 0x2e7:0x8 DW_TAG_formal_parameter
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	820                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x2ef:0x8 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	824                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x2f7:0x8 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	834                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x2ff:0x34 DW_TAG_lexical_block
	.byte	17                              # Abbrev [17] 0x300:0x8 DW_TAG_variable
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.long	820                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x308:0x2a DW_TAG_lexical_block
	.byte	17                              # Abbrev [17] 0x309:0x8 DW_TAG_variable
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	611                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x311:0x8 DW_TAG_variable
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	906                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x319:0x8 DW_TAG_variable
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	906                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x321:0x8 DW_TAG_variable
	.byte	40                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	611                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x329:0x8 DW_TAG_variable
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	916                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x334:0x4 DW_TAG_base_type
	.byte	25                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	18                              # Abbrev [18] 0x338:0x5 DW_TAG_pointer_type
	.long	829                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x33d:0x5 DW_TAG_pointer_type
	.long	65                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x342:0x5 DW_TAG_pointer_type
	.long	839                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x347:0x8 DW_TAG_typedef
	.long	847                             # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x34f:0x3b DW_TAG_structure_type
	.byte	48                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x353:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x35c:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x365:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x36e:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x377:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	711                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x380:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	906                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x38a:0x5 DW_TAG_pointer_type
	.long	911                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x38f:0x5 DW_TAG_const_type
	.long	65                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x394:0x5 DW_TAG_pointer_type
	.long	727                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x399:0x3b DW_TAG_subprogram
	.byte	42                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	820                             # DW_AT_type
                                        # DW_AT_inline
	.byte	15                              # Abbrev [15] 0x3a1:0x8 DW_TAG_formal_parameter
	.byte	43                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	906                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x3a9:0x8 DW_TAG_formal_parameter
	.byte	40                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	611                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x3b1:0x8 DW_TAG_formal_parameter
	.byte	44                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	980                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x3b9:0x8 DW_TAG_variable
	.byte	45                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	829                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x3c1:0x8 DW_TAG_variable
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	985                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x3c9:0xa DW_TAG_lexical_block
	.byte	17                              # Abbrev [17] 0x3ca:0x8 DW_TAG_variable
	.byte	47                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	906                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x3d4:0x5 DW_TAG_pointer_type
	.long	611                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x3d9:0x4 DW_TAG_base_type
	.byte	46                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	14                              # Abbrev [14] 0x3dd:0x29 DW_TAG_subprogram
	.byte	48                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	820                             # DW_AT_type
                                        # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x3e5:0x8 DW_TAG_variable
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.long	1030                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x3ed:0x8 DW_TAG_variable
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.long	820                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x3f5:0x8 DW_TAG_variable
	.byte	58                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.long	906                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x3fd:0x8 DW_TAG_variable
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.long	906                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x406:0x3f DW_TAG_structure_type
	.byte	56                              # DW_AT_name
	.short	390                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x40c:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	1093                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x415:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	1093                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	65                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x41e:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	1093                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	130                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x427:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	1093                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	195                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x430:0xa DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	1093                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.short	260                             # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x43a:0xa DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	1093                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.short	325                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x445:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x44a:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	65                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x451:0x11 DW_TAG_subprogram
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	711                             # DW_AT_type
                                        # DW_AT_inline
	.byte	15                              # Abbrev [15] 0x459:0x8 DW_TAG_formal_parameter
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.long	1122                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x462:0x5 DW_TAG_pointer_type
	.long	711                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x467:0x19 DW_TAG_subprogram
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	820                             # DW_AT_type
                                        # DW_AT_inline
	.byte	15                              # Abbrev [15] 0x46f:0x8 DW_TAG_formal_parameter
	.byte	44                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	980                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x477:0x8 DW_TAG_variable
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	1152                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x480:0x18 DW_TAG_structure_type
	.byte	69                              # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x485:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	1176                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x48e:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	1188                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x498:0x8 DW_TAG_typedef
	.long	1184                            # DW_AT_type
	.byte	66                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x4a0:0x4 DW_TAG_base_type
	.byte	65                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x4a4:0x8 DW_TAG_typedef
	.long	1184                            # DW_AT_type
	.byte	68                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x4ac:0x55 DW_TAG_subprogram
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	820                             # DW_AT_type
                                        # DW_AT_inline
	.byte	15                              # Abbrev [15] 0x4b4:0x8 DW_TAG_formal_parameter
	.byte	71                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	1281                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x4bc:0x8 DW_TAG_formal_parameter
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	1328                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x4c4:0x8 DW_TAG_formal_parameter
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	1328                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x4cc:0x8 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	1347                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x4d4:0x8 DW_TAG_formal_parameter
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	980                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x4dc:0x8 DW_TAG_variable
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.long	611                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x4e4:0x8 DW_TAG_variable
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.long	611                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x4ec:0x14 DW_TAG_lexical_block
	.byte	17                              # Abbrev [17] 0x4ed:0x8 DW_TAG_variable
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	727                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x4f5:0xa DW_TAG_lexical_block
	.byte	17                              # Abbrev [17] 0x4f6:0x8 DW_TAG_variable
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.long	1343                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x501:0x8 DW_TAG_typedef
	.long	1289                            # DW_AT_type
	.byte	74                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x509:0x5 DW_TAG_pointer_type
	.long	1294                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x50e:0x1a DW_TAG_subroutine_type
	.long	1320                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	26                              # Abbrev [26] 0x513:0x5 DW_TAG_formal_parameter
	.long	1328                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x518:0x5 DW_TAG_formal_parameter
	.long	1328                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x51d:0x5 DW_TAG_formal_parameter
	.long	727                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x522:0x5 DW_TAG_formal_parameter
	.long	1338                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x528:0x8 DW_TAG_typedef
	.long	653                             # DW_AT_type
	.byte	72                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x530:0x5 DW_TAG_pointer_type
	.long	1333                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x535:0x5 DW_TAG_const_type
	.long	691                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x53a:0x5 DW_TAG_pointer_type
	.long	1343                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x53f:0x4 DW_TAG_base_type
	.byte	73                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	18                              # Abbrev [18] 0x543:0x5 DW_TAG_pointer_type
	.long	1352                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x548:0x5 DW_TAG_const_type
	.long	839                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x54d:0x39 DW_TAG_subprogram
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	820                             # DW_AT_type
                                        # DW_AT_inline
	.byte	15                              # Abbrev [15] 0x555:0x8 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	1347                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x55d:0x8 DW_TAG_formal_parameter
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	906                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x565:0x8 DW_TAG_formal_parameter
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	727                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x56d:0x8 DW_TAG_formal_parameter
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	727                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x575:0x8 DW_TAG_formal_parameter
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	906                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x57d:0x8 DW_TAG_formal_parameter
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	611                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x586:0x43 DW_TAG_subprogram
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	820                             # DW_AT_type
                                        # DW_AT_inline
	.byte	15                              # Abbrev [15] 0x58e:0x8 DW_TAG_formal_parameter
	.byte	71                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	1481                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x596:0x8 DW_TAG_formal_parameter
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	1520                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x59e:0x8 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	1347                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x5a6:0x8 DW_TAG_formal_parameter
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	980                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x5ae:0x8 DW_TAG_variable
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	611                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x5b6:0x8 DW_TAG_variable
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	611                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x5be:0xa DW_TAG_lexical_block
	.byte	17                              # Abbrev [17] 0x5bf:0x8 DW_TAG_variable
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	727                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5c9:0x8 DW_TAG_typedef
	.long	1489                            # DW_AT_type
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x5d1:0x5 DW_TAG_pointer_type
	.long	1494                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x5d6:0x1a DW_TAG_subroutine_type
	.long	1320                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	26                              # Abbrev [26] 0x5db:0x5 DW_TAG_formal_parameter
	.long	1520                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x5e0:0x5 DW_TAG_formal_parameter
	.long	727                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x5e5:0x5 DW_TAG_formal_parameter
	.long	727                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x5ea:0x5 DW_TAG_formal_parameter
	.long	691                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x5f0:0x5 DW_TAG_pointer_type
	.long	691                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x5f5:0x2b DW_TAG_subprogram
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	611                             # DW_AT_type
                                        # DW_AT_inline
	.byte	15                              # Abbrev [15] 0x5fd:0x8 DW_TAG_formal_parameter
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.long	1328                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x605:0x8 DW_TAG_formal_parameter
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.long	727                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x60d:0x8 DW_TAG_variable
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	611                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x615:0xa DW_TAG_lexical_block
	.byte	17                              # Abbrev [17] 0x616:0x8 DW_TAG_variable
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	727                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x620:0x5a2 DW_TAG_subprogram
	.byte	31                              # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	5                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.ascii	"\340{"
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	144                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	820                             # DW_AT_type
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x633:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.long	820                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x63c:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	27                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.long	824                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x645:0x9 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.long	839                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x64e:0x9 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.long	1520                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x657:0x9 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.long	1520                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x660:0x9 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.long	711                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x669:0x5 DW_TAG_label
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	97                              # DW_AT_low_pc
	.byte	31                              # Abbrev [31] 0x66e:0x29 DW_TAG_inlined_subroutine
	.long	989                             # DW_AT_abstract_origin
	.byte	32                              # DW_AT_low_pc
	.long	.Ltmp111-.Ltmp102               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	111                             # DW_AT_call_line
	.byte	64                              # DW_AT_call_column
	.byte	32                              # Abbrev [32] 0x67b:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\340"
	.long	997                             # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x684:0x6 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.long	1005                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x68a:0x6 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.long	1013                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x690:0x6 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.long	1021                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x697:0xbf DW_TAG_inlined_subroutine
	.long	735                             # DW_AT_abstract_origin
	.byte	33                              # DW_AT_low_pc
	.long	.Ltmp84-.Ltmp4                  # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	113                             # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x6a4:0x6 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.long	743                             # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x6aa:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.long	751                             # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x6b0:0xa5 DW_TAG_lexical_block
	.byte	34                              # DW_AT_low_pc
	.long	.Ltmp76-.Ltmp13                 # DW_AT_high_pc
	.byte	33                              # Abbrev [33] 0x6b6:0x6 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.long	768                             # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x6bc:0x98 DW_TAG_lexical_block
	.byte	35                              # DW_AT_low_pc
	.long	.Ltmp76-.Ltmp21                 # DW_AT_high_pc
	.byte	33                              # Abbrev [33] 0x6c2:0x6 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.long	777                             # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x6c8:0x6 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.long	785                             # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x6ce:0x6 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.long	793                             # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x6d4:0x6 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.long	801                             # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x6da:0x6 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.long	809                             # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0x6e0:0x3b DW_TAG_inlined_subroutine
	.long	921                             # DW_AT_abstract_origin
	.byte	36                              # DW_AT_low_pc
	.long	.Ltmp57-.Ltmp42                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	49                              # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	36                              # Abbrev [36] 0x6ed:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	929                             # DW_AT_abstract_origin
	.byte	37                              # Abbrev [37] 0x6f4:0xa DW_TAG_formal_parameter
	.ascii	"\377\377\377\377\017"          # DW_AT_const_value
	.long	937                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x6fe:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\340"
	.long	953                             # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x707:0x6 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.long	961                             # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x70d:0xd DW_TAG_lexical_block
	.byte	37                              # DW_AT_low_pc
	.long	.Ltmp50-.Ltmp44                 # DW_AT_high_pc
	.byte	33                              # Abbrev [33] 0x713:0x6 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.long	970                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x71b:0x38 DW_TAG_inlined_subroutine
	.long	921                             # DW_AT_abstract_origin
	.byte	38                              # DW_AT_low_pc
	.long	.Ltmp74-.Ltmp60                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	58                              # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	36                              # Abbrev [36] 0x728:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	929                             # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x72f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	937                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x736:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\340"
	.long	953                             # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x73f:0x6 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.long	961                             # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x745:0xd DW_TAG_lexical_block
	.byte	39                              # DW_AT_low_pc
	.long	.Ltmp68-.Ltmp62                 # DW_AT_high_pc
	.byte	33                              # Abbrev [33] 0x74b:0x6 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.long	970                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x756:0x15 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	29                              # Abbrev [29] 0x758:0x9 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.long	727                             # DW_AT_type
	.byte	39                              # Abbrev [39] 0x761:0x9 DW_TAG_inlined_subroutine
	.long	1105                            # DW_AT_abstract_origin
	.byte	1                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	129                             # DW_AT_call_line
	.byte	60                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x76b:0xf4 DW_TAG_lexical_block
	.byte	2                               # DW_AT_ranges
	.byte	17                              # Abbrev [17] 0x76d:0x8 DW_TAG_variable
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.long	3621                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x775:0x8 DW_TAG_variable
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.long	3609                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x77d:0x8 DW_TAG_variable
	.byte	152                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.long	3609                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x785:0xd9 DW_TAG_lexical_block
	.byte	3                               # DW_AT_ranges
	.byte	29                              # Abbrev [29] 0x787:0x9 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.long	727                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x790:0xcd DW_TAG_lexical_block
	.byte	40                              # DW_AT_low_pc
	.long	.Ltmp306-.Ltmp244               # DW_AT_high_pc
	.byte	29                              # Abbrev [29] 0x796:0x9 DW_TAG_variable
	.byte	38                              # DW_AT_location
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.long	727                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x79f:0xbd DW_TAG_lexical_block
	.byte	41                              # DW_AT_low_pc
	.long	.Ltmp306-.Ltmp246               # DW_AT_high_pc
	.byte	29                              # Abbrev [29] 0x7a5:0x9 DW_TAG_variable
	.byte	39                              # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.long	727                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x7ae:0x8 DW_TAG_variable
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.long	611                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x7b6:0x8b DW_TAG_inlined_subroutine
	.long	1414                            # DW_AT_abstract_origin
	.byte	42                              # DW_AT_low_pc
	.long	.Ltmp299-.Ltmp254               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	160                             # DW_AT_call_line
	.byte	22                              # DW_AT_call_column
	.byte	36                              # Abbrev [36] 0x7c3:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	1430                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x7ca:0x6 DW_TAG_variable
	.byte	40                              # DW_AT_location
	.long	1454                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x7d0:0x6 DW_TAG_variable
	.byte	42                              # DW_AT_location
	.long	1462                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0x7d6:0x17 DW_TAG_inlined_subroutine
	.long	1127                            # DW_AT_abstract_origin
	.byte	42                              # DW_AT_low_pc
	.long	.Ltmp263-.Ltmp254               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	84                              # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	32                              # Abbrev [32] 0x7e3:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\340"
	.long	1143                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x7ed:0xd DW_TAG_lexical_block
	.byte	43                              # DW_AT_low_pc
	.long	.Ltmp270-.Ltmp263               # DW_AT_high_pc
	.byte	33                              # Abbrev [33] 0x7f3:0x6 DW_TAG_variable
	.byte	41                              # DW_AT_location
	.long	1471                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x7fa:0x17 DW_TAG_inlined_subroutine
	.long	1127                            # DW_AT_abstract_origin
	.byte	44                              # DW_AT_low_pc
	.long	.Ltmp275-.Ltmp270               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	87                              # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	32                              # Abbrev [32] 0x807:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\340"
	.long	1143                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x811:0x2f DW_TAG_inlined_subroutine
	.long	1525                            # DW_AT_abstract_origin
	.byte	45                              # DW_AT_low_pc
	.long	.Ltmp297-.Ltmp277               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	88                              # DW_AT_call_line
	.byte	20                              # DW_AT_call_column
	.byte	36                              # Abbrev [36] 0x81e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	1533                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x825:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	93
	.long	1541                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x82c:0x6 DW_TAG_variable
	.byte	43                              # DW_AT_location
	.long	1549                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x832:0xd DW_TAG_lexical_block
	.byte	45                              # DW_AT_low_pc
	.long	.Ltmp297-.Ltmp277               # DW_AT_high_pc
	.byte	33                              # Abbrev [33] 0x838:0x6 DW_TAG_variable
	.byte	44                              # DW_AT_location
	.long	1558                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x841:0x1a DW_TAG_inlined_subroutine
	.long	1357                            # DW_AT_abstract_origin
	.byte	46                              # DW_AT_low_pc
	.long	.Ltmp306-.Ltmp303               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	161                             # DW_AT_call_line
	.byte	39                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x84e:0x6 DW_TAG_formal_parameter
	.byte	45                              # DW_AT_location
	.long	1373                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x854:0x6 DW_TAG_formal_parameter
	.byte	46                              # DW_AT_location
	.long	1389                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x85f:0xd4 DW_TAG_lexical_block
	.byte	47                              # DW_AT_low_pc
	.long	.Ltmp235-.Ltmp150               # DW_AT_high_pc
	.byte	17                              # Abbrev [17] 0x865:0x8 DW_TAG_variable
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.long	3585                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x86d:0x8 DW_TAG_variable
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.long	3597                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x875:0x8 DW_TAG_variable
	.byte	152                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.long	3609                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x87d:0xb5 DW_TAG_lexical_block
	.byte	47                              # DW_AT_low_pc
	.long	.Ltmp235-.Ltmp150               # DW_AT_high_pc
	.byte	29                              # Abbrev [29] 0x883:0x9 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.byte	146                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.long	727                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x88c:0xa5 DW_TAG_lexical_block
	.byte	48                              # DW_AT_low_pc
	.long	.Ltmp235-.Ltmp160               # DW_AT_high_pc
	.byte	29                              # Abbrev [29] 0x892:0x9 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.long	727                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x89b:0x95 DW_TAG_lexical_block
	.byte	49                              # DW_AT_low_pc
	.long	.Ltmp235-.Ltmp167               # DW_AT_high_pc
	.byte	29                              # Abbrev [29] 0x8a1:0x9 DW_TAG_variable
	.byte	25                              # DW_AT_location
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.long	727                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x8aa:0x85 DW_TAG_lexical_block
	.byte	49                              # DW_AT_low_pc
	.long	.Ltmp235-.Ltmp167               # DW_AT_high_pc
	.byte	29                              # Abbrev [29] 0x8b0:0x9 DW_TAG_variable
	.byte	26                              # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
	.long	727                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x8b9:0x8 DW_TAG_variable
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	611                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0x8c1:0x51 DW_TAG_inlined_subroutine
	.long	1196                            # DW_AT_abstract_origin
	.byte	4                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	142                             # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x8ca:0x6 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_location
	.long	1204                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x8d0:0x6 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_location
	.long	1212                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x8d6:0x6 DW_TAG_formal_parameter
	.byte	29                              # DW_AT_location
	.long	1220                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x8dc:0x6 DW_TAG_variable
	.byte	31                              # DW_AT_location
	.long	1244                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x8e2:0x6 DW_TAG_variable
	.byte	34                              # DW_AT_location
	.long	1252                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x8e8:0x10 DW_TAG_inlined_subroutine
	.long	1127                            # DW_AT_abstract_origin
	.byte	5                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	73                              # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0x8f1:0x6 DW_TAG_variable
	.byte	30                              # DW_AT_location
	.long	1143                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x8f8:0x9 DW_TAG_lexical_block
	.byte	6                               # DW_AT_ranges
	.byte	33                              # Abbrev [33] 0x8fa:0x6 DW_TAG_variable
	.byte	32                              # DW_AT_location
	.long	1261                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x901:0x10 DW_TAG_inlined_subroutine
	.long	1127                            # DW_AT_abstract_origin
	.byte	7                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	79                              # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0x90a:0x6 DW_TAG_variable
	.byte	33                              # DW_AT_location
	.long	1143                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x912:0x1c DW_TAG_inlined_subroutine
	.long	1357                            # DW_AT_abstract_origin
	.byte	8                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	143                             # DW_AT_call_line
	.byte	43                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x91b:0x6 DW_TAG_formal_parameter
	.byte	36                              # DW_AT_location
	.long	1373                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x921:0x6 DW_TAG_formal_parameter
	.byte	37                              # DW_AT_location
	.long	1389                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x927:0x6 DW_TAG_formal_parameter
	.byte	35                              # DW_AT_location
	.long	1397                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0x933:0x6 DW_TAG_call_site
	.long	3010                            # DW_AT_call_origin
	.byte	50                              # DW_AT_call_return_pc
	.byte	42                              # Abbrev [42] 0x939:0xd DW_TAG_call_site
	.long	3010                            # DW_AT_call_origin
	.byte	51                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0x93f:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	118
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x946:0xd DW_TAG_call_site
	.long	3010                            # DW_AT_call_origin
	.byte	52                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0x94c:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	118
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x953:0xd DW_TAG_call_site
	.long	3010                            # DW_AT_call_origin
	.byte	53                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0x959:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	118
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x960:0xd DW_TAG_call_site
	.long	3010                            # DW_AT_call_origin
	.byte	54                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0x966:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	118
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x96d:0xd DW_TAG_call_site
	.long	3010                            # DW_AT_call_origin
	.byte	55                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0x973:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	118
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x97a:0xd DW_TAG_call_site
	.long	3010                            # DW_AT_call_origin
	.byte	56                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0x980:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	118
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0x987:0x6 DW_TAG_call_site
	.long	3029                            # DW_AT_call_origin
	.byte	57                              # DW_AT_call_return_pc
	.byte	42                              # Abbrev [42] 0x98d:0x19 DW_TAG_call_site
	.long	3042                            # DW_AT_call_origin
	.byte	58                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0x993:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	1                               # DW_AT_call_value
	.byte	58
	.byte	43                              # Abbrev [43] 0x998:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	3                               # DW_AT_call_value
	.byte	145
	.asciz	"\340"
	.byte	43                              # Abbrev [43] 0x99f:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0x9a6:0x6 DW_TAG_call_site
	.long	3029                            # DW_AT_call_origin
	.byte	59                              # DW_AT_call_return_pc
	.byte	42                              # Abbrev [42] 0x9ac:0x19 DW_TAG_call_site
	.long	3042                            # DW_AT_call_origin
	.byte	60                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0x9b2:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	1                               # DW_AT_call_value
	.byte	58
	.byte	43                              # Abbrev [43] 0x9b7:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	3                               # DW_AT_call_value
	.byte	145
	.asciz	"\340"
	.byte	43                              # Abbrev [43] 0x9be:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x9c5:0xf DW_TAG_call_site
	.long	3010                            # DW_AT_call_origin
	.byte	61                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0x9cb:0x8 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	4                               # DW_AT_call_value
	.byte	145
	.byte	8
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x9d4:0xf DW_TAG_call_site
	.long	3010                            # DW_AT_call_origin
	.byte	62                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0x9da:0x8 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	4                               # DW_AT_call_value
	.byte	145
	.byte	8
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x9e3:0xf DW_TAG_call_site
	.long	3010                            # DW_AT_call_origin
	.byte	63                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0x9e9:0x8 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	4                               # DW_AT_call_value
	.byte	145
	.byte	8
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x9f2:0xf DW_TAG_call_site
	.long	3010                            # DW_AT_call_origin
	.byte	64                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0x9f8:0x8 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	4                               # DW_AT_call_value
	.byte	145
	.byte	8
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xa01:0xd DW_TAG_call_site
	.long	3076                            # DW_AT_call_origin
	.byte	65                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xa07:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xa0e:0xd DW_TAG_call_site
	.long	3076                            # DW_AT_call_origin
	.byte	66                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xa14:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xa1b:0xe DW_TAG_call_site
	.long	3091                            # DW_AT_call_origin
	.byte	67                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xa21:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	3                               # DW_AT_call_value
	.byte	145
	.asciz	"\340"
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xa29:0xe DW_TAG_call_site
	.long	3110                            # DW_AT_call_origin
	.byte	68                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xa2f:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	3                               # DW_AT_call_value
	.byte	145
	.ascii	"\344\002"
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0xa37:0x6 DW_TAG_call_site
	.long	3126                            # DW_AT_call_origin
	.byte	69                              # DW_AT_call_return_pc
	.byte	41                              # Abbrev [41] 0xa3d:0x6 DW_TAG_call_site
	.long	3503                            # DW_AT_call_origin
	.byte	70                              # DW_AT_call_return_pc
	.byte	42                              # Abbrev [42] 0xa43:0xf DW_TAG_call_site
	.long	3010                            # DW_AT_call_origin
	.byte	71                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xa49:0x8 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	4                               # DW_AT_call_value
	.byte	145
	.byte	8
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xa52:0xd DW_TAG_call_site
	.long	3518                            # DW_AT_call_origin
	.byte	72                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xa58:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	124
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xa5f:0xd DW_TAG_call_site
	.long	3518                            # DW_AT_call_origin
	.byte	73                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xa65:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	127
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0xa6c:0x6 DW_TAG_call_site
	.long	3126                            # DW_AT_call_origin
	.byte	74                              # DW_AT_call_return_pc
	.byte	42                              # Abbrev [42] 0xa72:0xd DW_TAG_call_site
	.long	3529                            # DW_AT_call_origin
	.byte	75                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xa78:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	118
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xa7f:0x13 DW_TAG_call_site
	.long	3544                            # DW_AT_call_origin
	.byte	76                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xa85:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	3                               # DW_AT_call_value
	.byte	145
	.asciz	"\340"
	.byte	43                              # Abbrev [43] 0xa8c:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	49
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0xa92:0x1e DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	93
	.byte	77                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xa96:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.byte	3                               # DW_AT_call_value
	.byte	145
	.asciz	"\340"
	.byte	43                              # Abbrev [43] 0xa9d:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	43                              # Abbrev [43] 0xaa3:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	2                               # DW_AT_call_value
	.byte	127
	.byte	0
	.byte	43                              # Abbrev [43] 0xaa9:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	124
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xab0:0xd DW_TAG_call_site
	.long	3529                            # DW_AT_call_origin
	.byte	78                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xab6:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xabd:0x13 DW_TAG_call_site
	.long	3544                            # DW_AT_call_origin
	.byte	79                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xac3:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	3                               # DW_AT_call_value
	.byte	145
	.asciz	"\340"
	.byte	43                              # Abbrev [43] 0xaca:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	49
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xad0:0xc DW_TAG_call_site
	.long	3110                            # DW_AT_call_origin
	.byte	80                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xad6:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	88
	.byte	1                               # DW_AT_call_value
	.byte	48
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xadc:0xd DW_TAG_call_site
	.long	3529                            # DW_AT_call_origin
	.byte	81                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xae2:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xae9:0x13 DW_TAG_call_site
	.long	3544                            # DW_AT_call_origin
	.byte	82                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xaef:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	3                               # DW_AT_call_value
	.byte	145
	.asciz	"\340"
	.byte	43                              # Abbrev [43] 0xaf6:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	49
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0xafc:0x1e DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	94
	.byte	83                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xb00:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.byte	3                               # DW_AT_call_value
	.byte	145
	.asciz	"\340"
	.byte	43                              # Abbrev [43] 0xb07:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	2                               # DW_AT_call_value
	.byte	115
	.byte	0
	.byte	43                              # Abbrev [43] 0xb0d:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	2                               # DW_AT_call_value
	.byte	127
	.byte	0
	.byte	43                              # Abbrev [43] 0xb13:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	124
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xb1a:0xd DW_TAG_call_site
	.long	3529                            # DW_AT_call_origin
	.byte	84                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xb20:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	118
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xb27:0x13 DW_TAG_call_site
	.long	3544                            # DW_AT_call_origin
	.byte	85                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xb2d:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	3                               # DW_AT_call_value
	.byte	145
	.asciz	"\340"
	.byte	43                              # Abbrev [43] 0xb34:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	49
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xb3a:0xc DW_TAG_call_site
	.long	3110                            # DW_AT_call_origin
	.byte	86                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xb40:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	88
	.byte	1                               # DW_AT_call_value
	.byte	49
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xb46:0xd DW_TAG_call_site
	.long	3518                            # DW_AT_call_origin
	.byte	87                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xb4c:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	124
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xb53:0xd DW_TAG_call_site
	.long	3518                            # DW_AT_call_origin
	.byte	88                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xb59:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	127
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xb60:0xf DW_TAG_call_site
	.long	3010                            # DW_AT_call_origin
	.byte	89                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xb66:0x8 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	4                               # DW_AT_call_value
	.byte	145
	.byte	8
	.byte	148
	.byte	8
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0xb6f:0x6 DW_TAG_call_site
	.long	3529                            # DW_AT_call_origin
	.byte	90                              # DW_AT_call_return_pc
	.byte	42                              # Abbrev [42] 0xb75:0x13 DW_TAG_call_site
	.long	3544                            # DW_AT_call_origin
	.byte	91                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xb7b:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	3                               # DW_AT_call_value
	.byte	145
	.asciz	"\340"
	.byte	43                              # Abbrev [43] 0xb82:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	49
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0xb88:0x6 DW_TAG_call_site
	.long	3529                            # DW_AT_call_origin
	.byte	92                              # DW_AT_call_return_pc
	.byte	42                              # Abbrev [42] 0xb8e:0x13 DW_TAG_call_site
	.long	3544                            # DW_AT_call_origin
	.byte	93                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xb94:0x7 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	3                               # DW_AT_call_value
	.byte	145
	.asciz	"\340"
	.byte	43                              # Abbrev [43] 0xb9b:0x5 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	1                               # DW_AT_call_value
	.byte	49
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0xba1:0x6 DW_TAG_call_site
	.long	3110                            # DW_AT_call_origin
	.byte	94                              # DW_AT_call_return_pc
	.byte	42                              # Abbrev [42] 0xba7:0xd DW_TAG_call_site
	.long	3518                            # DW_AT_call_origin
	.byte	95                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xbad:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	124
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xbb4:0xd DW_TAG_call_site
	.long	3518                            # DW_AT_call_origin
	.byte	96                              # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0xbba:0x6 DW_TAG_call_site_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	2                               # DW_AT_call_value
	.byte	127
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0xbc2:0x13 DW_TAG_subprogram
	.byte	92                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	820                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0xbca:0x5 DW_TAG_formal_parameter
	.long	906                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0xbcf:0x5 DW_TAG_formal_parameter
	.long	906                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0xbd5:0x8 DW_TAG_subprogram
	.byte	93                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	3037                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0xbdd:0x5 DW_TAG_pointer_type
	.long	820                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0xbe2:0x18 DW_TAG_subprogram
	.byte	94                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	985                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0xbea:0x5 DW_TAG_formal_parameter
	.long	3066                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0xbef:0x5 DW_TAG_formal_parameter
	.long	3071                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0xbf4:0x5 DW_TAG_formal_parameter
	.long	820                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0xbfa:0x5 DW_TAG_restrict_type
	.long	906                             # DW_AT_type
	.byte	47                              # Abbrev [47] 0xbff:0x5 DW_TAG_restrict_type
	.long	824                             # DW_AT_type
	.byte	48                              # Abbrev [48] 0xc04:0xf DW_TAG_subprogram
	.byte	95                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.short	672                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	690                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0xc0d:0x5 DW_TAG_formal_parameter
	.long	727                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0xc13:0xe DW_TAG_subprogram
	.byte	96                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	820                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0xc1b:0x5 DW_TAG_formal_parameter
	.long	3105                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xc21:0x5 DW_TAG_pointer_type
	.long	1030                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0xc26:0x10 DW_TAG_subprogram
	.byte	97                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	363                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	820                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0xc2f:0x5 DW_TAG_formal_parameter
	.long	3066                            # DW_AT_type
	.byte	49                              # Abbrev [49] 0xc34:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0xc36:0xe DW_TAG_subprogram
	.byte	98                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	820                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0xc3e:0x5 DW_TAG_formal_parameter
	.long	3140                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xc44:0x5 DW_TAG_pointer_type
	.long	3145                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xc49:0x8 DW_TAG_typedef
	.long	3153                            # DW_AT_type
	.byte	137                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	24                              # Abbrev [24] 0xc51:0x10b DW_TAG_structure_type
	.byte	136                             # DW_AT_name
	.byte	216                             # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0xc56:0x9 DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	820                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xc5f:0x9 DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	829                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xc68:0x9 DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	829                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xc71:0x9 DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	829                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xc7a:0x9 DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	829                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xc83:0x9 DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	829                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xc8c:0x9 DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	829                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xc95:0x9 DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	829                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xc9e:0x9 DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	829                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xca7:0x9 DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	829                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xcb0:0x9 DW_TAG_member
	.byte	109                             # DW_AT_name
	.long	829                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xcb9:0x9 DW_TAG_member
	.byte	110                             # DW_AT_name
	.long	829                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xcc2:0x9 DW_TAG_member
	.byte	111                             # DW_AT_name
	.long	3420                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xccb:0x9 DW_TAG_member
	.byte	113                             # DW_AT_name
	.long	3427                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xcd4:0x9 DW_TAG_member
	.byte	114                             # DW_AT_name
	.long	820                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xcdd:0x9 DW_TAG_member
	.byte	115                             # DW_AT_name
	.long	820                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	116                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xce6:0x9 DW_TAG_member
	.byte	116                             # DW_AT_name
	.long	3432                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xcef:0x9 DW_TAG_member
	.byte	118                             # DW_AT_name
	.long	3440                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xcf8:0x9 DW_TAG_member
	.byte	120                             # DW_AT_name
	.long	3444                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	130                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xd01:0x9 DW_TAG_member
	.byte	122                             # DW_AT_name
	.long	3448                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	131                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xd0a:0x9 DW_TAG_member
	.byte	123                             # DW_AT_name
	.long	3460                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xd13:0x9 DW_TAG_member
	.byte	125                             # DW_AT_name
	.long	3469                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xd1c:0x9 DW_TAG_member
	.byte	127                             # DW_AT_name
	.long	3477                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xd25:0x9 DW_TAG_member
	.byte	129                             # DW_AT_name
	.long	3484                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xd2e:0x9 DW_TAG_member
	.byte	131                             # DW_AT_name
	.long	3427                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	168                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xd37:0x9 DW_TAG_member
	.byte	132                             # DW_AT_name
	.long	690                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xd40:0x9 DW_TAG_member
	.byte	133                             # DW_AT_name
	.long	727                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xd49:0x9 DW_TAG_member
	.byte	134                             # DW_AT_name
	.long	820                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xd52:0x9 DW_TAG_member
	.byte	135                             # DW_AT_name
	.long	3491                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	196                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xd5c:0x5 DW_TAG_pointer_type
	.long	3425                            # DW_AT_type
	.byte	50                              # Abbrev [50] 0xd61:0x2 DW_TAG_structure_type
	.byte	112                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	18                              # Abbrev [18] 0xd63:0x5 DW_TAG_pointer_type
	.long	3153                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xd68:0x8 DW_TAG_typedef
	.long	1184                            # DW_AT_type
	.byte	117                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xd70:0x4 DW_TAG_base_type
	.byte	119                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0xd74:0x4 DW_TAG_base_type
	.byte	121                             # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0xd78:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0xd7d:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xd84:0x5 DW_TAG_pointer_type
	.long	3465                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0xd89:0x4 DW_TAG_typedef
	.byte	124                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xd8d:0x8 DW_TAG_typedef
	.long	1184                            # DW_AT_type
	.byte	126                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0xd95:0x5 DW_TAG_pointer_type
	.long	3482                            # DW_AT_type
	.byte	50                              # Abbrev [50] 0xd9a:0x2 DW_TAG_structure_type
	.byte	128                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	18                              # Abbrev [18] 0xd9c:0x5 DW_TAG_pointer_type
	.long	3489                            # DW_AT_type
	.byte	50                              # Abbrev [50] 0xda1:0x2 DW_TAG_structure_type
	.byte	130                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	3                               # Abbrev [3] 0xda3:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0xda8:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	20                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	48                              # Abbrev [48] 0xdaf:0xf DW_TAG_subprogram
	.byte	138                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	724                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	820                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0xdb8:0x5 DW_TAG_formal_parameter
	.long	906                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	52                              # Abbrev [52] 0xdbe:0xb DW_TAG_subprogram
	.byte	139                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.short	687                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0xdc3:0x5 DW_TAG_formal_parameter
	.long	690                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	48                              # Abbrev [48] 0xdc9:0xf DW_TAG_subprogram
	.byte	140                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.short	773                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	829                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0xdd2:0x5 DW_TAG_formal_parameter
	.long	906                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	48                              # Abbrev [48] 0xdd8:0x14 DW_TAG_subprogram
	.byte	141                             # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.short	289                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	820                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0xde1:0x5 DW_TAG_formal_parameter
	.long	3564                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0xde6:0x5 DW_TAG_formal_parameter
	.long	3580                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xdec:0x8 DW_TAG_typedef
	.long	3572                            # DW_AT_type
	.byte	143                             # DW_AT_name
	.byte	14                              # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xdf4:0x8 DW_TAG_typedef
	.long	820                             # DW_AT_type
	.byte	142                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0xdfc:0x5 DW_TAG_pointer_type
	.long	1152                            # DW_AT_type
	.byte	3                               # Abbrev [3] 0xe01:0xc DW_TAG_array_type
	.long	906                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xe06:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xe0d:0xc DW_TAG_array_type
	.long	1281                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0xe12:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xe19:0xc DW_TAG_array_type
	.long	906                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xe1e:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xe25:0xc DW_TAG_array_type
	.long	1481                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0xe2a:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	9                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
	.long	.Ldebug_ranges2-.Lrnglists_table_base0
	.long	.Ldebug_ranges3-.Lrnglists_table_base0
	.long	.Ldebug_ranges4-.Lrnglists_table_base0
	.long	.Ldebug_ranges5-.Lrnglists_table_base0
	.long	.Ldebug_ranges6-.Lrnglists_table_base0
	.long	.Ldebug_ranges7-.Lrnglists_table_base0
	.long	.Ldebug_ranges8-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp134-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp117-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp140-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp142-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp310-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp140-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp142-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp244-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp310-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges4:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp169-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp195-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp203-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp229-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges5:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp169-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp176-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp203-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges6:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp176-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp185-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp210-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp219-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges7:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp186-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp192-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp220-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp226-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges8:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp197-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp200-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp231-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp234-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	616                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 18.1.3 (1ubuntu1)" # string offset=0
.Linfo_string1:
	.asciz	"bench/lab_bench.c"             # string offset=39
.Linfo_string2:
	.asciz	"/home/runner/work/lowlevel-crypto/lowlevel-crypto" # string offset=57
.Linfo_string3:
	.asciz	"char"                          # string offset=107
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=112
.Linfo_string5:
	.asciz	"result_sink"                   # string offset=132
.Linfo_string6:
	.asciz	"unsigned long"                 # string offset=144
.Linfo_string7:
	.asciz	"__uint64_t"                    # string offset=158
.Linfo_string8:
	.asciz	"uint64_t"                      # string offset=169
.Linfo_string9:
	.asciz	"unsigned int"                  # string offset=178
.Linfo_string10:
	.asciz	"LAB_OK"                        # string offset=191
.Linfo_string11:
	.asciz	"LAB_INVALID_ARGUMENT"          # string offset=198
.Linfo_string12:
	.asciz	"LAB_CAPACITY_ERROR"            # string offset=219
.Linfo_string13:
	.asciz	"LAB_EMPTY_KEY"                 # string offset=238
.Linfo_string14:
	.asciz	"LAB_OVERLAP_ERROR"             # string offset=252
.Linfo_string15:
	.asciz	"LAB_LIMIT_ERROR"               # string offset=270
.Linfo_string16:
	.asciz	"LAB_IO_ERROR"                  # string offset=286
.Linfo_string17:
	.asciz	"LAB_ALLOCATION_ERROR"          # string offset=299
.Linfo_string18:
	.asciz	"unsigned char"                 # string offset=320
.Linfo_string19:
	.asciz	"__uint8_t"                     # string offset=334
.Linfo_string20:
	.asciz	"uint8_t"                       # string offset=344
.Linfo_string21:
	.asciz	"__uint32_t"                    # string offset=352
.Linfo_string22:
	.asciz	"uint32_t"                      # string offset=363
.Linfo_string23:
	.asciz	"size_t"                        # string offset=372
.Linfo_string24:
	.asciz	"parse"                         # string offset=379
.Linfo_string25:
	.asciz	"int"                           # string offset=385
.Linfo_string26:
	.asciz	"argc"                          # string offset=389
.Linfo_string27:
	.asciz	"argv"                          # string offset=394
.Linfo_string28:
	.asciz	"o"                             # string offset=399
.Linfo_string29:
	.asciz	"length"                        # string offset=401
.Linfo_string30:
	.asciz	"rounds"                        # string offset=408
.Linfo_string31:
	.asciz	"samples"                       # string offset=415
.Linfo_string32:
	.asciz	"warmup"                        # string offset=423
.Linfo_string33:
	.asciz	"seed"                          # string offset=430
.Linfo_string34:
	.asciz	"experiment"                    # string offset=435
.Linfo_string35:
	.asciz	"options"                       # string offset=446
.Linfo_string36:
	.asciz	"i"                             # string offset=454
.Linfo_string37:
	.asciz	"parsed"                        # string offset=456
.Linfo_string38:
	.asciz	"key"                           # string offset=463
.Linfo_string39:
	.asciz	"value"                         # string offset=467
.Linfo_string40:
	.asciz	"max"                           # string offset=473
.Linfo_string41:
	.asciz	"field"                         # string offset=477
.Linfo_string42:
	.asciz	"number"                        # string offset=483
.Linfo_string43:
	.asciz	"text"                          # string offset=490
.Linfo_string44:
	.asciz	"result"                        # string offset=495
.Linfo_string45:
	.asciz	"end"                           # string offset=502
.Linfo_string46:
	.asciz	"unsigned long long"            # string offset=506
.Linfo_string47:
	.asciz	"p"                             # string offset=525
.Linfo_string48:
	.asciz	"print_context"                 # string offset=527
.Linfo_string49:
	.asciz	"system"                        # string offset=541
.Linfo_string50:
	.asciz	"sysname"                       # string offset=548
.Linfo_string51:
	.asciz	"nodename"                      # string offset=556
.Linfo_string52:
	.asciz	"release"                       # string offset=565
.Linfo_string53:
	.asciz	"version"                       # string offset=573
.Linfo_string54:
	.asciz	"machine"                       # string offset=581
.Linfo_string55:
	.asciz	"__domainname"                  # string offset=589
.Linfo_string56:
	.asciz	"utsname"                       # string offset=602
.Linfo_string57:
	.asciz	"translation"                   # string offset=610
.Linfo_string58:
	.asciz	"arch"                          # string offset=622
.Linfo_string59:
	.asciz	"execution"                     # string offset=627
.Linfo_string60:
	.asciz	"random_next"                   # string offset=637
.Linfo_string61:
	.asciz	"state"                         # string offset=649
.Linfo_string62:
	.asciz	"now_ns"                        # string offset=655
.Linfo_string63:
	.asciz	"time"                          # string offset=662
.Linfo_string64:
	.asciz	"tv_sec"                        # string offset=667
.Linfo_string65:
	.asciz	"long"                          # string offset=674
.Linfo_string66:
	.asciz	"__time_t"                      # string offset=679
.Linfo_string67:
	.asciz	"tv_nsec"                       # string offset=688
.Linfo_string68:
	.asciz	"__syscall_slong_t"             # string offset=696
.Linfo_string69:
	.asciz	"timespec"                      # string offset=714
.Linfo_string70:
	.asciz	"time_compare"                  # string offset=723
.Linfo_string71:
	.asciz	"fn"                            # string offset=736
.Linfo_string72:
	.asciz	"lab_status"                    # string offset=739
.Linfo_string73:
	.asciz	"_Bool"                         # string offset=750
.Linfo_string74:
	.asciz	"compare_fn"                    # string offset=756
.Linfo_string75:
	.asciz	"a"                             # string offset=767
.Linfo_string76:
	.asciz	"b"                             # string offset=769
.Linfo_string77:
	.asciz	"elapsed"                       # string offset=771
.Linfo_string78:
	.asciz	"start"                         # string offset=779
.Linfo_string79:
	.asciz	"stop"                          # string offset=785
.Linfo_string80:
	.asciz	"r"                             # string offset=790
.Linfo_string81:
	.asciz	"equal"                         # string offset=792
.Linfo_string82:
	.asciz	"emit"                          # string offset=798
.Linfo_string83:
	.asciz	"condition"                     # string offset=803
.Linfo_string84:
	.asciz	"sample"                        # string offset=813
.Linfo_string85:
	.asciz	"position"                      # string offset=820
.Linfo_string86:
	.asciz	"algorithm"                     # string offset=829
.Linfo_string87:
	.asciz	"time_xor"                      # string offset=839
.Linfo_string88:
	.asciz	"xor_fn"                        # string offset=848
.Linfo_string89:
	.asciz	"data"                          # string offset=855
.Linfo_string90:
	.asciz	"checksum"                      # string offset=860
.Linfo_string91:
	.asciz	"sum"                           # string offset=869
.Linfo_string92:
	.asciz	"strcmp"                        # string offset=873
.Linfo_string93:
	.asciz	"__errno_location"              # string offset=880
.Linfo_string94:
	.asciz	"strtoull"                      # string offset=897
.Linfo_string95:
	.asciz	"malloc"                        # string offset=906
.Linfo_string96:
	.asciz	"uname"                         # string offset=913
.Linfo_string97:
	.asciz	"printf"                        # string offset=919
.Linfo_string98:
	.asciz	"fflush"                        # string offset=926
.Linfo_string99:
	.asciz	"_flags"                        # string offset=933
.Linfo_string100:
	.asciz	"_IO_read_ptr"                  # string offset=940
.Linfo_string101:
	.asciz	"_IO_read_end"                  # string offset=953
.Linfo_string102:
	.asciz	"_IO_read_base"                 # string offset=966
.Linfo_string103:
	.asciz	"_IO_write_base"                # string offset=980
.Linfo_string104:
	.asciz	"_IO_write_ptr"                 # string offset=995
.Linfo_string105:
	.asciz	"_IO_write_end"                 # string offset=1009
.Linfo_string106:
	.asciz	"_IO_buf_base"                  # string offset=1023
.Linfo_string107:
	.asciz	"_IO_buf_end"                   # string offset=1036
.Linfo_string108:
	.asciz	"_IO_save_base"                 # string offset=1048
.Linfo_string109:
	.asciz	"_IO_backup_base"               # string offset=1062
.Linfo_string110:
	.asciz	"_IO_save_end"                  # string offset=1078
.Linfo_string111:
	.asciz	"_markers"                      # string offset=1091
.Linfo_string112:
	.asciz	"_IO_marker"                    # string offset=1100
.Linfo_string113:
	.asciz	"_chain"                        # string offset=1111
.Linfo_string114:
	.asciz	"_fileno"                       # string offset=1118
.Linfo_string115:
	.asciz	"_flags2"                       # string offset=1126
.Linfo_string116:
	.asciz	"_old_offset"                   # string offset=1134
.Linfo_string117:
	.asciz	"__off_t"                       # string offset=1146
.Linfo_string118:
	.asciz	"_cur_column"                   # string offset=1154
.Linfo_string119:
	.asciz	"unsigned short"                # string offset=1166
.Linfo_string120:
	.asciz	"_vtable_offset"                # string offset=1181
.Linfo_string121:
	.asciz	"signed char"                   # string offset=1196
.Linfo_string122:
	.asciz	"_shortbuf"                     # string offset=1208
.Linfo_string123:
	.asciz	"_lock"                         # string offset=1218
.Linfo_string124:
	.asciz	"_IO_lock_t"                    # string offset=1224
.Linfo_string125:
	.asciz	"_offset"                       # string offset=1235
.Linfo_string126:
	.asciz	"__off64_t"                     # string offset=1243
.Linfo_string127:
	.asciz	"_codecvt"                      # string offset=1253
.Linfo_string128:
	.asciz	"_IO_codecvt"                   # string offset=1262
.Linfo_string129:
	.asciz	"_wide_data"                    # string offset=1274
.Linfo_string130:
	.asciz	"_IO_wide_data"                 # string offset=1285
.Linfo_string131:
	.asciz	"_freeres_list"                 # string offset=1299
.Linfo_string132:
	.asciz	"_freeres_buf"                  # string offset=1313
.Linfo_string133:
	.asciz	"__pad5"                        # string offset=1326
.Linfo_string134:
	.asciz	"_mode"                         # string offset=1333
.Linfo_string135:
	.asciz	"_unused2"                      # string offset=1339
.Linfo_string136:
	.asciz	"_IO_FILE"                      # string offset=1348
.Linfo_string137:
	.asciz	"FILE"                          # string offset=1357
.Linfo_string138:
	.asciz	"puts"                          # string offset=1362
.Linfo_string139:
	.asciz	"free"                          # string offset=1367
.Linfo_string140:
	.asciz	"getenv"                        # string offset=1372
.Linfo_string141:
	.asciz	"clock_gettime"                 # string offset=1379
.Linfo_string142:
	.asciz	"__clockid_t"                   # string offset=1393
.Linfo_string143:
	.asciz	"clockid_t"                     # string offset=1405
.Linfo_string144:
	.asciz	"main"                          # string offset=1415
.Linfo_string145:
	.asciz	"s"                             # string offset=1420
.Linfo_string146:
	.asciz	"c"                             # string offset=1422
.Linfo_string147:
	.asciz	"order"                         # string offset=1424
.Linfo_string148:
	.asciz	"alg"                           # string offset=1430
.Linfo_string149:
	.asciz	"failure"                       # string offset=1434
.Linfo_string150:
	.asciz	"conditions"                    # string offset=1442
.Linfo_string151:
	.asciz	"functions"                     # string offset=1453
.Linfo_string152:
	.asciz	"names"                         # string offset=1463
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
	.long	.Linfo_string55
	.long	.Linfo_string56
	.long	.Linfo_string57
	.long	.Linfo_string58
	.long	.Linfo_string59
	.long	.Linfo_string60
	.long	.Linfo_string61
	.long	.Linfo_string62
	.long	.Linfo_string63
	.long	.Linfo_string64
	.long	.Linfo_string65
	.long	.Linfo_string66
	.long	.Linfo_string67
	.long	.Linfo_string68
	.long	.Linfo_string69
	.long	.Linfo_string70
	.long	.Linfo_string71
	.long	.Linfo_string72
	.long	.Linfo_string73
	.long	.Linfo_string74
	.long	.Linfo_string75
	.long	.Linfo_string76
	.long	.Linfo_string77
	.long	.Linfo_string78
	.long	.Linfo_string79
	.long	.Linfo_string80
	.long	.Linfo_string81
	.long	.Linfo_string82
	.long	.Linfo_string83
	.long	.Linfo_string84
	.long	.Linfo_string85
	.long	.Linfo_string86
	.long	.Linfo_string87
	.long	.Linfo_string88
	.long	.Linfo_string89
	.long	.Linfo_string90
	.long	.Linfo_string91
	.long	.Linfo_string92
	.long	.Linfo_string93
	.long	.Linfo_string94
	.long	.Linfo_string95
	.long	.Linfo_string96
	.long	.Linfo_string97
	.long	.Linfo_string98
	.long	.Linfo_string99
	.long	.Linfo_string100
	.long	.Linfo_string101
	.long	.Linfo_string102
	.long	.Linfo_string103
	.long	.Linfo_string104
	.long	.Linfo_string105
	.long	.Linfo_string106
	.long	.Linfo_string107
	.long	.Linfo_string108
	.long	.Linfo_string109
	.long	.Linfo_string110
	.long	.Linfo_string111
	.long	.Linfo_string112
	.long	.Linfo_string113
	.long	.Linfo_string114
	.long	.Linfo_string115
	.long	.Linfo_string116
	.long	.Linfo_string117
	.long	.Linfo_string118
	.long	.Linfo_string119
	.long	.Linfo_string120
	.long	.Linfo_string121
	.long	.Linfo_string122
	.long	.Linfo_string123
	.long	.Linfo_string124
	.long	.Linfo_string125
	.long	.Linfo_string126
	.long	.Linfo_string127
	.long	.Linfo_string128
	.long	.Linfo_string129
	.long	.Linfo_string130
	.long	.Linfo_string131
	.long	.Linfo_string132
	.long	.Linfo_string133
	.long	.Linfo_string134
	.long	.Linfo_string135
	.long	.Linfo_string136
	.long	.Linfo_string137
	.long	.Linfo_string138
	.long	.Linfo_string139
	.long	.Linfo_string140
	.long	.Linfo_string141
	.long	.Linfo_string142
	.long	.Linfo_string143
	.long	.Linfo_string144
	.long	.Linfo_string145
	.long	.Linfo_string146
	.long	.Linfo_string147
	.long	.Linfo_string148
	.long	.Linfo_string149
	.long	.Linfo_string150
	.long	.Linfo_string151
	.long	.Linfo_string152
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.17
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	result_sink
	.quad	.L.str.34
	.quad	.Lfunc_begin0
	.quad	.Ltmp102
	.quad	.Ltmp4
	.quad	.Ltmp13
	.quad	.Ltmp21
	.quad	.Ltmp42
	.quad	.Ltmp44
	.quad	.Ltmp60
	.quad	.Ltmp62
	.quad	.Ltmp244
	.quad	.Ltmp246
	.quad	.Ltmp254
	.quad	.Ltmp263
	.quad	.Ltmp270
	.quad	.Ltmp277
	.quad	.Ltmp303
	.quad	.Ltmp150
	.quad	.Ltmp160
	.quad	.Ltmp167
	.quad	.Ltmp2
	.quad	.Ltmp26
	.quad	.Ltmp29
	.quad	.Ltmp32
	.quad	.Ltmp35
	.quad	.Ltmp38
	.quad	.Ltmp41
	.quad	.Ltmp51
	.quad	.Ltmp53
	.quad	.Ltmp69
	.quad	.Ltmp71
	.quad	.Ltmp79
	.quad	.Ltmp81
	.quad	.Ltmp83
	.quad	.Ltmp86
	.quad	.Ltmp89
	.quad	.Ltmp91
	.quad	.Ltmp103
	.quad	.Ltmp108
	.quad	.Ltmp110
	.quad	.Ltmp135
	.quad	.Ltmp138
	.quad	.Ltmp143
	.quad	.Ltmp144
	.quad	.Ltmp145
	.quad	.Ltmp170
	.quad	.Ltmp172
	.quad	.Ltmp180
	.quad	.Ltmp187
	.quad	.Ltmp189
	.quad	.Ltmp199
	.quad	.Ltmp204
	.quad	.Ltmp206
	.quad	.Ltmp214
	.quad	.Ltmp221
	.quad	.Ltmp223
	.quad	.Ltmp233
	.quad	.Ltmp236
	.quad	.Ltmp237
	.quad	.Ltmp249
	.quad	.Ltmp255
	.quad	.Ltmp258
	.quad	.Ltmp271
	.quad	.Ltmp273
	.quad	.Ltmp305
	.quad	.Ltmp312
	.quad	.Ltmp313
	.quad	.Ltmp235
.Ldebug_addr_end0:
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym compare_early_exit
	.addrsig_sym compare_full_scan
	.addrsig_sym result_sink
	.section	.debug_line,"",@progbits
.Lline_table_start0:
