	TTL HW_5

	AREA RESET,DATA,READONLY
	
	EXPORT __Vectors ;
		
__Vectors	DCD 0x20002000
			DCD Reset_Handler
				
	AREA MYCODE,CODE,READONLY
		
	ENTRY
	
	EXPORT Reset_Handler
	
Reset_Handler
	MOV32	R1, #0
	ADRL	R2, A
	MOV32  	R0, #0
	MOV32	R3, #2
loop	
	CMP R0, #2
	ADD	R0, R0, #1	
	BGE Exit
	RSB R1, R2, R3 
	STR R1, [R2, R0, LSL #2]
	BLT loop
		
A	SPACE 8,1

Exit 
	B Exit

	END