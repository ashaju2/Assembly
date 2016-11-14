           TTL forLoop

           AREA RESET,DATA,READONLY

           EXPORT __Vectors ;

__Vectors  DCD 0x20002000
           DCD Reset_Handler

           AREA MYCODE,CODE,READONLY

           ENTRY

           EXPORT Reset_Handler

Reset_Handler
       MOV32R1, #0
       ADR LR2, A
       MOV32  R0, #0
       MOV32R3, #100
loop
       CMP R0, #100
       RSB R1, R2, R3 
       STR R1, [R2, R0, LSL #2]
       ADD R0, R0, #1
       B   loop

A      SPACE 400,1

       END
