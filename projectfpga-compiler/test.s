	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"test.cpp"
	.def	"?testfunction@@YAXH@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?testfunction@@YAXH@Z"         # -- Begin function ?testfunction@@YAXH@Z
	.p2align	4, 0x90
"?testfunction@@YAXH@Z":                # @"?testfunction@@YAXH@Z"
.seh_proc "?testfunction@@YAXH@Z"
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movl	%ecx, 4(%rsp)
	popq	%rax
	retq
	.seh_endproc
                                        # -- End function
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
.seh_proc main
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	$320, 36(%rsp)                  # imm = 0x140
	movl	36(%rsp), %eax
	addl	$300, %eax                      # imm = 0x12C
	movl	%eax, 32(%rsp)
	movl	36(%rsp), %ecx
	callq	"?testfunction@@YAXH@Z"
	xorl	%eax, %eax
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	"?counter@@YAHHH@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?counter@@YAHHH@Z"             # -- Begin function ?counter@@YAHHH@Z
	.p2align	4, 0x90
"?counter@@YAHHH@Z":                    # @"?counter@@YAHHH@Z"
.seh_proc "?counter@@YAHHH@Z"
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movl	%edx, 20(%rsp)
	movl	%ecx, 16(%rsp)
	cmpl	$12, 12(%rsp)
	jne	.LBB2_2
# %bb.1:
	movl	8(%rsp), %eax
	subl	$9, %eax
	imull	$7, %eax, %ecx
	movl	$54, %eax
	subl	%ecx, %eax
	imull	$3, 4(%rsp), %ecx
	addl	%ecx, %eax
	subl	(%rsp), %eax
	movl	%eax, 12(%rsp)
	movl	$20, 8(%rsp)
	jmp	.LBB2_15
.LBB2_2:
	movl	(%rsp), %eax
	cmpl	12(%rsp), %eax
	jl	.LBB2_4
# %bb.3:
	movl	$12, 12(%rsp)
	jmp	.LBB2_14
.LBB2_4:
	movl	(%rsp), %eax
	cmpl	12(%rsp), %eax
	jl	.LBB2_6
# %bb.5:
	movl	$12, 12(%rsp)
	jmp	.LBB2_13
.LBB2_6:
	movl	(%rsp), %eax
	cmpl	12(%rsp), %eax
	jl	.LBB2_8
# %bb.7:
	movl	$12, 12(%rsp)
	jmp	.LBB2_12
.LBB2_8:
	movl	(%rsp), %eax
	cmpl	12(%rsp), %eax
	jl	.LBB2_10
# %bb.9:
	movl	$12, 12(%rsp)
	jmp	.LBB2_11
.LBB2_10:
	movl	$12, 4(%rsp)
.LBB2_11:
	jmp	.LBB2_12
.LBB2_12:
	jmp	.LBB2_13
.LBB2_13:
	jmp	.LBB2_14
.LBB2_14:
	jmp	.LBB2_15
.LBB2_15:
	xorl	%eax, %eax
	addq	$24, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.addrsig
	.addrsig_sym "?testfunction@@YAXH@Z"
