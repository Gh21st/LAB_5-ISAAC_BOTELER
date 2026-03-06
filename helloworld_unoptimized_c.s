	.file	"helloworld.c"
	.text
	.globl	a
	.data
	.align 4
	.type	a, @object
	.size	a, 4
a:
	.long	1
	.globl	c
	.type	c, @object
	.size	c, 1
c:
	.byte	97
	.globl	f
	.align 4
	.type	f, @object
	.size	f, 4
f:
	.long	1067320848
	.globl	string
	.align 16
	.type	string, @object
	.size	string, 22
string:
	.string	"the bear ate the grub"
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
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	a(%rip), %eax
	movl	%eax, a(%rip)
	addl	$1, -4(%rbp)
.L2:
	cmpl	$9, -4(%rbp)
	jle	.L3
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
