.data
# Set the ascii string "hello world\n" to _hello
_hello:
	.asciz "hello world\n"
_fortytwo:
	.asciz "42\n"

.text
.globl main
main:
	#subq $8, %rsp

	# Move 0 to al, an arithmatic register which is used to tell printf how 
	# many vecor arguments it has (?)
	movb $0, %al
	# Load the address of _hello into non-volatile register rdi 
	leaq _hello, %rdi
	leaq _fortytwo, %rsi
	# Call the function printf, which takes 
	call printf

	# We've seen this before
	movq $0, %rdi
	call _exit
