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
myValueMakesADifference		BYTE	6d
valueGreaterThanFive		BYTE	"The value is greater than five...", 0Dh, 0Ah, 0
valueLessThanFive			BYTE	"The value is less than five...", 0Dh, 0Ah, 0
valueEqualToFive			BYTE	"The value is equal to five...", 0Dh, 0Ah, 0

; CODE SEGMENT
.code
main PROC
	; --- CMP INSTRUCTION ---
	; The CMP instruction compares two operands and sets ZF and CF according to
	;  the flags results obtained from subtracting the [src] operand from the [dst] operand.
	
	; Consider the following scenarios to gain clarity on how CMP is used to control program flow.
	; Sample Usage: CMP [dst], [src]
	; -- If [dst] is larger than [src] then the result of [dst] - [src] would not be zero.  Furthermore, 
	;  CF would not be set since the expression [dst] - [src] would not result in an underflow borrow
	;  from the carry flag.
	; -- If [dst] is smaller than [src] then the result of [dst] - [src] would also not be zero.  However,
	;  when a larger value is subtracted from a smaller value, the CF would would need to be borrowed from
	;  during the subtraction.  This would result in an underflow, which sets CF to 1.
	; -- If [dst] is the same value as [src], the result of the subtraction would be zero.  This would cause ZF
	;  to be set to 1.  Since the subtraction didn't result in an underflow (we are hiting zero on the dot), we
	;  can assume CF will not get set.
	; CONCLUSION
	; As a result of these observations, we can make the following assumptions about [dst] and [src] based
	;  on the values in CF and ZF at the conclusion of a CMP instruction:
	;  If [dst] < [src]		---> CF = 1; ZF = 0
	;  If [dst] > [src]		---> CF = 0; ZF = 0
	;  If [dst] = [src]		---> CF = 0; ZF = 1

	
	; --- JC, JNC, JZ, JNZ, JMP INSTRUCTIONS ---
	; These are all conditional jump instructions.  CMP causes some predictable results to appear in CF and ZF, so
	;  we can take advantage of this to make decisions in our program.  A jump instruction can be followed by a label
	;  and based on the instruction used, program execution can be made to jump to a new execution point of stay
	;  at the current position and move to the next instruciton in a conditional manner.
	; --- JC	- jump if CF = 1
	; --- JNC	- jump if CF = 0
	; --- JZ	- jump is ZF = 1
	; --- JNZ	- jump is ZF = 0
	; --- JMP	- jumps everytime

	; Use the CMP instruction to set CF and ZF appropriately.
	; NOTE: This sort of comparison only works for unsigned representations.  Comparing signed
	;       values will require jumps based on the contents of other flags (SF, OF, ZF)
	CMP myValueMakesADifference, 5
	JZ equalTo
	JC lessThan
	JMP greaterThan

	equalTo:							; This is a 'label'.  Labels are the targets of jumping instructions.
	MOV EDX, OFFSET valueEqualToFive
	CALL WriteString
	JMP over

	lessThan:
	MOV EDX, OFFSET valueLessThanFive
	CALL WriteString
	JMP over

	greaterThan:
	MOV EDX, OFFSET valueGreaterThanFive
	CALL WriteString
	JMP over			; not really necessary

	over:
	; return to OS
	INVOKE ExitProcess, 0
main ENDP

END main			; end of program OPCODES