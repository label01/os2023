	.file	"hanoi-main.c"
	.text
	.section	.rodata
.LC0:
	.string	"%c -> %c\n"
.LC1:
	.string	"hanoi-nr.c"
.LC2:
	.string	"0"
	.text
	.globl	hanoi
	.type	hanoi, @function
hanoi:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$816, %rsp
	movl	%edi, -804(%rbp)
	movl	%ecx, %eax
	movl	%esi, %ecx
	movb	%cl, -808(%rbp)
	movb	%dl, -812(%rbp)
	movb	%al, -816(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-784(%rbp), %rax
	subq	$12, %rax
	movq	%rax, -800(%rbp)
	addq	$12, -800(%rbp)
	movq	-800(%rbp), %rax
	movl	$0, (%rax)
	movq	-800(%rbp), %rax
	movl	-804(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-800(%rbp), %rax
	movzbl	-808(%rbp), %edx
	movb	%dl, 8(%rax)
	movq	-800(%rbp), %rax
	movzbl	-812(%rbp), %edx
	movb	%dl, 9(%rax)
	movq	-800(%rbp), %rax
	movzbl	-816(%rbp), %edx
	movb	%dl, 10(%rax)
	jmp	.L2
.L12:
	movq	-792(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -804(%rbp)
	movq	-792(%rbp), %rax
	movzbl	8(%rax), %eax
	movb	%al, -808(%rbp)
	movq	-792(%rbp), %rax
	movzbl	9(%rax), %eax
	movb	%al, -812(%rbp)
	movq	-792(%rbp), %rax
	movzbl	10(%rax), %eax
	movb	%al, -816(%rbp)
	movq	-792(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	ja	.L14
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L5(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L5(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L5:
	.long	.L4-.L5
	.long	.L6-.L5
	.long	.L7-.L5
	.long	.L8-.L5
	.long	.L9-.L5
	.text
.L4:
	cmpl	$1, -804(%rbp)
	jne	.L15
	movsbl	-812(%rbp), %edx
	movsbl	-808(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-792(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L15
.L6:
	addq	$12, -800(%rbp)
	movl	-804(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-800(%rbp), %rax
	movl	$0, (%rax)
	movq	-800(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-800(%rbp), %rax
	movzbl	-808(%rbp), %edx
	movb	%dl, 8(%rax)
	movq	-800(%rbp), %rax
	movzbl	-816(%rbp), %edx
	movb	%dl, 9(%rax)
	movq	-800(%rbp), %rax
	movzbl	-812(%rbp), %edx
	movb	%dl, 10(%rax)
	jmp	.L11
.L7:
	addq	$12, -800(%rbp)
	movq	-800(%rbp), %rax
	movl	$0, (%rax)
	movq	-800(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-800(%rbp), %rax
	movzbl	-808(%rbp), %edx
	movb	%dl, 8(%rax)
	movq	-800(%rbp), %rax
	movzbl	-812(%rbp), %edx
	movb	%dl, 9(%rax)
	movq	-800(%rbp), %rax
	movzbl	-816(%rbp), %edx
	movb	%dl, 10(%rax)
	jmp	.L11
.L8:
	addq	$12, -800(%rbp)
	movl	-804(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-800(%rbp), %rax
	movl	$0, (%rax)
	movq	-800(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-800(%rbp), %rax
	movzbl	-816(%rbp), %edx
	movb	%dl, 8(%rax)
	movq	-800(%rbp), %rax
	movzbl	-812(%rbp), %edx
	movb	%dl, 9(%rax)
	movq	-800(%rbp), %rax
	movzbl	-808(%rbp), %edx
	movb	%dl, 10(%rax)
	jmp	.L11
.L9:
	subq	$12, -800(%rbp)
	jmp	.L11
.L14:
	leaq	__PRETTY_FUNCTION__.2288(%rip), %rcx
	movl	$24, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
.L15:
	nop
.L11:
	movq	-792(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-792(%rbp), %rax
	movl	%edx, (%rax)
.L2:
	movq	-800(%rbp), %rax
	movq	%rax, -792(%rbp)
	leaq	-784(%rbp), %rax
	cmpq	%rax, -792(%rbp)
	jnb	.L12
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	hanoi, .-hanoi
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$67, %ecx
	movl	$66, %edx
	movl	$65, %esi
	movl	$3, %edi
	call	hanoi
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.2288, @object
	.size	__PRETTY_FUNCTION__.2288, 6
__PRETTY_FUNCTION__.2288:
	.string	"hanoi"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
