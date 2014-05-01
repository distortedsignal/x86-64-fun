.text
.globl main
main:
	subq $8, %rsp
	movq $0, %rdi
	call _exit
