.text
start:
	# Initialise stack pointer
	la $sp, _stack_top
    j  0x00400000

print_char:

.data
msg:  .asciiz "Hello world!"
