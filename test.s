	.file	"test.c"
	.text
	.section	.rodata
.LC0:
	.string	"hello world"
.LC1:
	.string	"my age is:%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	call	my_name
	movl	$0, %eax
	call	my_age
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	movl	$0, %eax
	call	verify_age
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
.LC2:
	.string	"suraj dhiman"
	.text
	.globl	my_name
	.type	my_name, @function
my_name:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	my_name, .-my_name
	.section	.rodata
.LC3:
	.string	"enter age:"
.LC4:
	.string	"%d"
	.text
	.globl	my_age
	.type	my_age, @function
my_age:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	my_age, .-my_age
	.section	.rodata
.LC5:
	.string	"adult"
.LC6:
	.string	"minnor"
	.text
	.globl	verify_age
	.type	verify_age, @function
verify_age:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$17, -4(%rbp)
	jle	.L8
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L9
.L8:
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L9:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	verify_age, .-verify_age
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
