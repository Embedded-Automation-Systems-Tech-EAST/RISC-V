	.file	"hello.c"
	.text
	.section	.rodata
.LC0:
	.string	"Hello, world!"
.LC1:
	.string	">>Enter Any Number : "
.LC2:
	.string	"%d"
.LC3:
	.string	"\033[0;31m"
	.align 8
.LC4:
	.string	">>Multiple Successive Wrong Inputs"
	.align 8
.LC5:
	.string	">>Wrong Input.\n>>Input Should be a Number\n>>Try Again"
.LC6:
	.string	"\033[0m"
.LC7:
	.string	"The Entered Number = %d\n"
	.text
	.globl	hello
	.type	hello, @function
hello:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
.L2:
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.L3
	addl	$1, -20(%rbp)
	nop
.L4:
	call	getchar@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	isspace@PLT
	testl	%eax, %eax
	je	.L4
	movq	stdin(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ungetc@PLT
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$2, -20(%rbp)
	jle	.L5
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L7
.L5:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L2
.L3:
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %eax
.L7:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	hello, .-hello
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
