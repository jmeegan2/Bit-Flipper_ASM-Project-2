
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

ShowNewline		TEXTEQU	<CALL Crlf>



numberZero					EQU		48d		; 48 is the base-10 ASCII code for the number zero
cornerLeft					EQU		201d	; 201 is the base-10 ASCII code for open ended left corner
theDoubleLinesSymbol		EQU		205d	; 205 is the base-10 ASCII code for "="
tShapeConnector				EQU		203d	; 203 is the base-10 ASCII code for t shape open ended connector
cornerRight					EQU		187d	; 187 is the base-10 ASCII code for open ended right corner 
straightLinesDown			EQU		186d	; 186 is the base-10 ASCII code for straight double line down
tShapeConnectorLeft			EQU		204d	; 204 is the base-10 ASCII code for t shape open connector on left side 
fourWayConnector			EQU		206d	; 206 is the base-10 ASCII code for four way connector with open ends
letterSalph					EQU		83d		; 83 is the base-10 ASCII code for a letter S
letterFalph					EQU		70d		; 70 is the base-10 ASCII code for a letter F
letterZalph					EQU		90d		; 90 is the base-10 ASCII code for a letter Z
letterRalph					EQU		82d		; 82 is the base-10 ASCII code for a letter R
letterEalph					EQU		69d		; 69 is the base-10 ASCII code for a letter E
letterAalph					EQU		65d		; 65 is the base-10 ASCII code for a letter A
letterPalph					EQU		80d		; 80 is the base-10 ASCII code for a letter P
letterCalph					EQU		67d		; 67 is the base-10 ASCII code for a letter C
spaceCommand				EQU     32d		; 32 is the base-10 ASCII code for a space
tShapeConnectorRight		EQU		185d	; 185 is the base-10 ASCII code for a t shape connector on the right side 
bottomCornerLeft			EQU     200d	; 200 is the base-10 ASCII code for a open ended L shape
bottomCornerRight			EQU		188d	; 188 is the base-10 ASCII code for a open ended backwards L shape
InvertedTConnector			EQU		202d	; 202 is the base-10 ASCII code for a inverted open ended capital T

numberOne					EQU		49d		; 49 is the base-10 ASCII code for the number one		



;Most people set up a strategy with a bitfield mask.
;Use AND or OR against a pre-defined bitfield that isolates the bit in question.
;i.e. XXXX XXXX AND 0001 0000
;that would be a test that would only result in a non-zero value if the 4th bit from the left was "1".
;A strategy based around that idea is what most people develop.



BitPosition		BYTE " BIT POSITION ", 0
cornerL			BYTE	1	DUP(cornerLeft), 0
flatLines		BYTE	2 DUP(theDoubleLinesSymbol), 0
tConnector		BYTE	1 DUP(tShapeConnector),0
cornerR			BYTE	1 DUP(cornerRight), 0
straightLineD	BYTE    1 DUP(straightLinesDown), 0
letterS			BYTE	1 DUP(letterSalph), 0
letterF			BYTE	1 DUP(letterFalph), 0
letterZ			BYTE	1 DUP(letterZalph), 0
letterR			BYTE	1 DUP(letterRalph), 0
letterE			BYTE	1 DUP(letterEalph), 0
letterA			BYTE	1 DUP(letterAalph), 0
letterP			BYTE	1 DUP(letterPalph), 0
letterC			BYTE	1 DUP(letterCalph), 0
spaceC			byte	1 DUP(spaceCommand), 0
tShapeConnectorL BYTE   1 DUP(tShapeConnectorLeft), 0
fourWayC		BYTE	1 DUP(fourWayConnector), 0
tShapeConnectorR BYTE   1 DUP(tShapeConnectorRight), 0
bottomCornerL	BYTE	1 DUP(bottomCornerLeft), 0
bottomCornerR	BYTE	1 DUP(bottomCornerRight), 0
invertedTC		BYTE	1 DUP(invertedTConnector), 0
numberZeroD		BYTE	1 DUP(numberZero), 0
number1			BYTE	1 DUP(numberOne), 0
; CODE SEGMENT


.code
main PROC

ShowNewLine

mov edx, offset cornerL
call writestring

mov edx, offset flatlines
call writestring
call writestring
call writestring
call writestring
call writestring
call writestring
call writestring

MOV EDX, OFFSET tConnector
	CALL WriteString 

mov edx, offset flatlines
call writestring
call writestring
mov edx, offset tConnector
call writestring
mov edx, offset flatlines
call writestring
call writestring
mov edx, offset tConnector
call writestring
mov edx, offset flatlines
call writestring
call writestring
mov edx, offset tConnector
call writestring
mov edx, offset flatlines
call writestring
mov edx, offset tConnector
call writestring
mov edx, offset flatlines
call writestring
mov edx, offset tConnector
call writestring
mov edx, offset flatlines
call writestring
mov edx, offset tConnector
call writestring
mov edx, offset flatlines
call writestring
mov edx, offset tConnector
call writestring
mov edx, offset flatlines
call writestring
mov edx, offset cornerR
call writestring
call crlf
;END of First Line of visual  graph

;2nd line starts here 
mov edx, offset straightLineD
call writestring

mov edx, offset BitPosition			;Text BIT POSITION appears 
call writestring


mov edx, offset straightLineD
call writestring



main endp
 invoke ExitProcess, 0
END main		