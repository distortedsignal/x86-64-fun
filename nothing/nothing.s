# Hey, look, it's a text section!
.text
# Direction to the linker that there is a function here called "main" that it 
# can link into
.globl main
# Beginning of the main section
main:
	# Apparently unneded subtract call
	#subq $8, %rsp
	# Load 0 into the first argument of any subsequent function call
	movq $0, %rdi
	# Call _exit with 0 as the first argument (set in line 11)
	call _exit
