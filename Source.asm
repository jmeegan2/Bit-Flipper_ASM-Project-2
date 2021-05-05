
;Currently working on how to display the side numbers 5/3
;can i just put in a call to print a number before call sampletext




; EXTERNAL DEPENDENCIES
INCLUDE		Irvine32.inc
INCLUDELIB	Irvine32.lib

; EXECUTION MODE PARAMETERS
.386
.model flat, stdcall
.stack 4096
; PROTOTYPES
ExitProcess PROTO, dwExitCode:DWORD



; DATA SEGMENT
.data
HelloByte	Byte "Hello",0
; CODE SEGMENT


.code
main PROC

mov edx, offset HelloByte
call writestring

main endp
 invoke ExitProcess, 0
END main		