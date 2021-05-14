
; EXTERNAL DEPENDENCIES
INCLUDE		Irvine32.inc
INCLUDELIB	Irvine32.lib

; EXECUTION MODE PARAMETERS
.386
.model flat, stdcall
.stack 4096
; PROTOTYPES
ExitProcess PROTO, dwExitCode:DWORD

;SYMBOLIC CONSTANTS 
NUMBER_OF_BITS = 1d



; DATA SEGMENT
.data
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
;numberOne					EQU		49d		; 49 is the base-10 ASCII code for the number one		
sampleText					BYTE	"This is the sample text that shows in different colors.", 0Dh, 0Ah, 0
number7			byte  "7", 0
number6			byte  "6", 0
number5         byte  "5", 0
number4         byte  "4", 0
number3         byte  "3", 0
number2         byte  "2", 0
number1        byte	  "1", 0
number0         byte  "0", 0
BitPosition		BYTE " BIT POSITION ", 0
BitCode			BYTE "     BIT CODE ", 0
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
pressKey		byte	"Press a key corresponding to the bit you would like to cycle...",0
Press0			byte    "Press the '0' key to shift the bit in position 0.",0
Press1			byte    "Press the '1' key to shift the bit in position 1.",0
Press2			byte    "Press the '2' key to shift the bit in position 2.",0
Press3			byte    "Press the '3' key to shift the bit in position 3.",0
Press4			byte    "Press the '4' key to shift the bit in position 4.",0
Press5			byte    "Press the '5' key to shift the bit in position 5.",0
Press6			byte    "Press the '6' key to shift the bit in position 6.",0
Press7			byte    "Press the '7' key to shift the bit in position 7.",0
userEntry		byte	": ",0
bitZero			byte	" 0 ",0
foregroundColorCounter		BYTE	2
foregroundColorCounter2		BYTE	2
sampleZero				byte    " 0 ",0

bit7			BYTE	0, 1
bit6			BYTE	0, 1	
bit5			BYTE	0, 1		
bit4			BYTE	0, 1	
bit3			BYTE	0, 1	
bit2			BYTE	0, 1	
bit1			BYTE	0, 1	
bit0			BYTE	0, 1	

; CODE SEGMENT
.code
main PROC

InfiniteLoopBegin:
call crlf
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
call writestring
mov edx, offset tConnector
call writestring
mov edx, offset flatlines
call writestring
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
mov edx, offset spaceC
call writestring
mov edx, offset number7
call writestring
mov edx,offset spaceC
call writestring
call writestring
mov edx, offset straightLineD
call writestring
mov edx, offset spaceC
call writestring
mov edx, offset number6
call writestring
mov edx, offset spaceC
call writestring	
call writestring
mov edx, offset straightLineD
call writestring
mov edx, offset spaceC
call writestring
mov edx, offset number5
call writestring
mov edx, offset spaceC
call writestring	
call writestring
mov edx, offset straightLineD
call writestring
mov edx, offset spaceC
call writestring
mov edx, offset number4
call writestring
mov edx, offset spaceC
call writestring	
call writestring
mov edx, offset straightLineD
call writestring
mov edx, offset spaceC
call writestring
mov edx, offset number3
call writestring
mov edx, offset spaceC
call writestring	
call writestring
mov edx, offset straightLineD
call writestring
mov edx, offset spaceC
call writestring
mov edx, offset number2
call writestring
mov edx, offset spaceC
call writestring	
call writestring
mov edx, offset straightLineD
call writestring
mov edx, offset spaceC
call writestring
mov edx, offset number1
call writestring
mov edx, offset spaceC
call writestring	
call writestring
mov edx, offset straightLineD
call writestring
mov edx, offset spaceC
call writestring
mov edx, offset number0
call writestring
mov edx, offset spaceC
call writestring	
call writestring
mov edx, offset straightLineD
call writestring
call crlf

;Line 3 of display starts here
mov edx, offset tShapeConnectorL
call writestring
mov edx, offset flatlines
call writestring
call writestring
call writestring
call writestring
call writestring
call writestring
call writestring
mov edx, offset fourWayC
call writestring
mov edx, offset flatlines
call writestring
call writestring
mov edx, offset fourWayC
call writestring 
mov edx, offset flatlines
call writestring
call writestring
mov edx, offset fourWayC
call writestring 
mov edx, offset flatlines
call writestring
call writestring
mov edx, offset fourWayC
call writestring 
mov edx, offset flatlines
call writestring
call writestring
mov edx, offset fourWayC
call writestring 
mov edx, offset flatlines
call writestring
call writestring
mov edx, offset fourWayC
call writestring 
mov edx, offset flatlines
call writestring
call writestring
mov edx, offset fourWayC
call writestring 
mov edx, offset flatlines
call writestring
call writestring
mov edx, offset fourWayC
call writestring
mov edx, offset flatlines
call writestring
call writestring
mov edx, offset tShapeConnectorR
call writestring 
call crlf
;line 4 of display starts here
;mov edx, offset

;////////////////////////////////////
;BitCode display value is here 
;////////////////////////////////////
mov edx, offset straightLineD
call writestring 
mov edx ,offset BitCode					;Text display of BIT CODE 
call writestring
mov edx, offset straightLineD
call writestring 
;Bit Value for bit 7
mov edx, offset spaceC
call writestring
MOVZX EAX, bit7 + 0
call writedec
mov edx, offset spaceC
call writestring
call writestring
mov edx, offset straightLineD
call writestring 
;Bit Value for bit 6
mov edx, offset spaceC
call writestring
MOVZX EAX, bit6 + 0	
call writedec
mov edx, offset spaceC
call writestring
call writestring
mov edx, offset straightLineD
call writestring 
;Bit Value for bit 5
mov edx, offset spaceC
call writestring
MOVZX EAX, bit5 + 0	
call writedec
mov edx, offset spaceC
call writestring
call writestring
mov edx, offset straightLineD
call writestring 
;Bit Value for bit 4
mov edx, offset spaceC
call writestring
MOVZX EAX, bit4 + 0	
call writedec
mov edx, offset spaceC
call writestring
call writestring
mov edx, offset straightLineD
call writestring 
;Bit Value for bit 3
mov edx, offset spaceC
call writestring
MOVZX EAX, bit3 + 0	
call writedec
mov edx, offset spaceC
call writestring
call writestring
mov edx, offset straightLineD
call writestring 
;Bit Value for bit 2
mov edx, offset spaceC
call writestring
MOVZX EAX, bit2 + 0	
call writedec
mov edx, offset spaceC
call writestring
call writestring
mov edx, offset straightLineD
call writestring 
;Bit Value for bit 1
mov edx, offset spaceC
call writestring
MOVZX EAX, bit1 + 0	
call writedec
mov edx, offset spaceC
call writestring
call writestring
mov edx, offset straightLineD
call writestring 
;Bit Value for bit 0
mov edx, offset spaceC
call writestring
MOVZX EAX, bit0 + 0	
call writedec
mov edx, offset spaceC
call writestring
call writestring
mov edx, offset straightLineD
call writestring 
call crlf
;/////////////////////////////////
;END of display for bit value 
;////////////////////////////////
;5th line of display
mov edx, offset bottomCornerL
call writestring
mov edx, offset flatlines
call writestring
call writestring
call writestring
call writestring
call writestring
call writestring
call writestring
mov edx, offset InvertedTC
call writestring
mov edx, offset flatlines
call writestring
call writestring
mov edx, offset InvertedTC
call writestring
mov edx, offset flatlines
call writestring
call writestring
mov edx, offset InvertedTC
call writestring
mov edx, offset flatlines
call writestring
call writestring
mov edx, offset InvertedTC
call writestring
mov edx, offset flatlines
call writestring
call writestring
mov edx, offset InvertedTC
call writestring
mov edx, offset flatlines
call writestring
call writestring
mov edx, offset InvertedTC
call writestring
mov edx, offset flatlines
call writestring
call writestring
mov edx, offset InvertedTC
call writestring
mov edx, offset flatlines
call writestring
call writestring
mov edx, offset InvertedTC
call writestring
mov edx, offset flatlines
call writestring
call writestring
mov edx, offset bottomCornerR
call writestring
call crlf
call crlf
;Start of visual display that asks the user what bit he wants to flip
mov edx, offset pressKey
call writestring
call crlf
mov edx, offset press0
call writestring
call crlf
mov edx, offset press1
call writestring
call crlf
mov edx, offset press2
call writestring
call crlf
mov edx, offset press3
call writestring
call crlf
mov edx, offset press4
call writestring
call crlf
mov edx, offset press5
call writestring
call crlf
mov edx, offset press6
call writestring
call crlf
mov edx, offset press7
call writestring
call crlf

;trying something out 
MOVZX EAX, [bit2 + 1]	
call writedec
MOVzx ECX, [bit2 + 1]	
call writedec
call crlf
mov edx, offset userEntry	;just a ":" displayed
call writestring
CALL ReadDec				;allows user to input a value , the display will not refresh until the user enters the selection and hits the enter key
	CALL Delay
	MOV EAX, 	1							; load EAX with the number of milliseconds to stall
	JMP InfiniteLoopBegin				; Jump back to the 'endlessLoopBegin' label. Told to put in endless loop
									
	
main endp
;Preserve this 
		END main