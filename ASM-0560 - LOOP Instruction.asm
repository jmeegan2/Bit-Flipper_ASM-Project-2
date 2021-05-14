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
counter				DWORD	1
prompt_HowHigh		BYTE	"How high do you want to count? : ", 0
label_Complete		BYTE	"The count is complete!!!", 0

; CODE SEGMENT
.code
main PROC
	; Present user with prompt.
	MOV EDX, OFFSET prompt_HowHigh
	CALL WriteString

	; Read in an unsigned integer (assume correct formatting from user input).
	CALL ReadDec				; this will load EAX with the unsigned integer reflecting input from keyboard
	MOV ECX, EAX				; ECX is the natural loop counter.  It will decrement once everytime a LOOP
								;  instruction is encountered.

	; Count to the desired value with a loop.
countLoop_BEGIN:
	MOV EAX, counter		; display the value in 'counter'
	CALL WriteDec
	CALL Crlf

	INC counter				; increment 'counter' by 1

	MOV EAX, 1000			; delay for 1 second between each value
	CALL Delay

	LOOP countLoop_Begin	; If ECX IS NOT EQUAL to 0, decrement ECX by 1 and JMP to 'countLoop_Begin'.
							; If ECX IS EQUAL to 0, do not jump and move onto the instruction following LOOP.

	; Show count complete message.
	MOV EDX, OFFSET label_Complete
	CALL WriteString
	CALL Crlf
	
	; Exit to OS.
	INVOKE ExitProcess, 0
main ENDP

END main			; end of program OPCODES