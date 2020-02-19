<<<<<<< HEAD
@ Natasha Mullings
@ Arithmetic2 Program: Register = val2 + 9 + val3 - val1
.section .data
val1: .word 6		@32-bit variable val1 in memory
val2: .word 11		@32-bit variable val2 in memory
val3: .word 16		@32-bit variable val3 in memory
Register: .word 0	@32-bit variable Register in memory
.section .text
.globl _start
_start:
	ldr r0,=val1	@load the memory address of val1 into r0
	ldr r0,[r0]	@load the value val1 into r0
	ldr r1,=val2	@load the memory address of val2 into r1
	ldr r1,[r1]	@load the value val2 into r0
	ldr r2,=val3	@load the memory address of val3 into r2
	ldr r2,[r2]	@load the value val3 into r2
	add r1,r1,#9	@add 9 to r1 and store into r1
	add r1,r1,r2	@add r2 to r1 and store into r1
	sub r1,r1,r0	@substract r0 from r1 and store into r1
	ldr r0,=Register @load the memory address of Register into r0
	str  r1,[r0]	@store r1 into memory Register

	mov r7,#1 	@Program Termination: exit syscall
	svc #0 		@Program Termination: wake kernel
 .end
=======
@arithmetic2
.section .data
val1: .word 6
val2: .word 11
val3: .word 16

.section .text
.globl _start
_start:
  ldr r1,=val2  	@loading address val2 into r1
  ldr r1,[r1]    	@loading the value into r1
  ldr r2,=val3  	@loading address val3 into r2
  ldr r2,[r2]		@loading the value into r2
  add r1, r1, r2	@adding r1 to r2 and storing the value into r1
  add r1, #9		@adding immediate 9 to r1
  ldr r2,=val1		@loading address val1 into r2
  ldr r2, [r2]		@loading the value into r2
  sub r1, r2		@subtracting r2 from r1

  mov r7, #1	@Program Termination: exit syscall
  svc #0	@Program Termination: wake kernal
.end
>>>>>>> 4d3ca36f314b8013e234e099e54d7688132eb8f1
