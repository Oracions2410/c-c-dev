	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"Hello, world!"
	.align 8
.LC1:
	.string	"Bienvenue dans mon super programme !"
	.align 8
.LC2:
	.string	"------------------------------------"
.LC5:
	.string	"Character : %d\n"
.LC6:
	.string	"Number : %d\n"
.LC7:
	.string	"Long Number : %ld\n"
.LC8:
	.string	"Float Number : %f\n"
.LC9:
	.string	"Double Number : %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movb	$4, -25(%rbp)
	movl	$256, -24(%rbp)
	movabsq	$4343432234, %rax
	movq	%rax, -16(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsbl	-25(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cvtss2sd	-20(%rbp), %xmm0
	leaq	.LC8(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	leaq	.LC9(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC3:
	.long	1079840342
	.align 8
.LC4:
	.long	4077709170
	.long	1119828983
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
