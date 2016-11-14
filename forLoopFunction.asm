TTL forLoopFunction

	AREA RESET,DATA,READONLY

	EXPORT __Vectors ;

__Vectors	DCD 0x20002000
		DCD Reset_Handler

	AREA MYCODE,CODE,READONLY

	ENTRY

	EXPORT Reset_Handler

Reset_Handler
	MOV32R1, #0
	ADRLR2, A
	MOV32  R0, #0
	MOV32R3, #2
loop
	BL size
	CMP R0, R5
	BL next
	BGE Exit
	SUB R1, R2, R3 
	STR R1, [R2, R0, LSL #2]
	BLT loop


A	SPACE 8,1

size
	MOV32 R5, #2
	BX R14

next
	ADDR0, R0, #1
	BX R14

Exit
	B Exit

	END
