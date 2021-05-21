;ATTENTION
;Currently working on changing the colors upon the user entering choose of bit to flip 5/18
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
;May need to add something here, possibly for the color changing , high probability 


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
spaceCommand				EQU     32d		; 32 is the base-10 ASCII code for a space
tShapeConnectorRight		EQU		185d	; 185 is the base-10 ASCII code for a t shape connector on the right side 
bottomCornerLeft			EQU     200d	; 200 is the base-10 ASCII code for a open ended L shape
bottomCornerRight			EQU		188d	; 188 is the base-10 ASCII code for a open ended backwards L shape
InvertedTConnector			EQU		202d	; 202 is the base-10 ASCII code for a inverted open ended capital T
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
Colon			byte    ": ",0 
bit7			BYTE	?
bit6			BYTE	?
bit5			BYTE	?	
bit4			BYTE	?
bit3			BYTE	?
bit2			BYTE	?
bit1			BYTE	?
bit0			BYTE	?
currentColors	BYTE  lightCyan
currentColors0	BYTE  lightCyan
currentColors1	BYTE  lightCyan
currentColors2	BYTE  lightCyan
currentColors3	BYTE  lightCyan
currentColors4	BYTE  lightCyan
currentColors5	BYTE  lightCyan
currentColors6	BYTE  lightCyan
currentColors7	BYTE  lightCyan


; CODE SEGMENT
.code
main PROC

InfiniteLoopBegin:                      ;Infinite Loop beings here
call crlf
mov edx, offset cornerL                             ;Display of Graph begins 
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
mov edx, offset number7				;Numerical value displayed 
call writestring
mov edx,offset spaceC
call writestring
call writestring
mov edx, offset straightLineD
call writestring
mov edx, offset spaceC
call writestring
mov edx, offset number6				;Numerical value displayed 
call writestring
mov edx, offset spaceC
call writestring	
call writestring
mov edx, offset straightLineD
call writestring
mov edx, offset spaceC
call writestring
mov edx, offset number5				;Numerical value displayed 
call writestring
mov edx, offset spaceC
call writestring	
call writestring
mov edx, offset straightLineD
call writestring
mov edx, offset spaceC
call writestring
mov edx, offset number4				;Numerical value displayed 
call writestring
mov edx, offset spaceC
call writestring	
call writestring
mov edx, offset straightLineD
call writestring
mov edx, offset spaceC
call writestring
mov edx, offset number3				;Numerical value displayed 
call writestring
mov edx, offset spaceC
call writestring	
call writestring
mov edx, offset straightLineD
call writestring
mov edx, offset spaceC
call writestring
mov edx, offset number2				;Numerical value displayed 
call writestring
mov edx, offset spaceC
call writestring	
call writestring
mov edx, offset straightLineD
call writestring
mov edx, offset spaceC
call writestring
mov edx, offset number1				;Numerical value displayed 
call writestring
mov edx, offset spaceC
call writestring	
call writestring
mov edx, offset straightLineD
call writestring
mov edx, offset spaceC
call writestring
mov edx, offset number0				;Numerical value displayed 
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
movzx eax,currentColors7
call setTextColor
call WriteBit7							;Bit Code Value 7 displayed here 
	 mov eax,7
      call SetTextColor
mov edx, offset spaceC
call writestring
call writestring
mov edx, offset straightLineD
call writestring 
;Bit Value for bit 6
mov edx, offset spaceC
call writestring
movzx eax,currentColors6
call setTextColor
call WriteBit6							;Bit Code Value 6 displayed here 
 mov eax,7
      call SetTextColor
mov edx, offset spaceC
call writestring
call writestring
mov edx, offset straightLineD
call writestring 
;Bit Value for bit 5
mov edx, offset spaceC
call writestring
movzx eax,currentColors5
call setTextColor
	  call WriteBit5					;Bit Code Value 5 displayed here 
 mov eax,7
      call SetTextColor
mov edx, offset spaceC
call writestring
call writestring
mov edx, offset straightLineD
call writestring 
;Bit Value for bit 4
mov edx, offset spaceC
call writestring
movzx eax,currentColors4
call setTextColor
call WriteBit4								;Bit Code Value 4 displayed here 
 mov eax,7
      call SetTextColor
mov edx, offset spaceC
call writestring
call writestring
mov edx, offset straightLineD
call writestring 
;Bit Value for bit 3
mov edx, offset spaceC
call writestring
movzx eax,currentColors3
call setTextColor
call WriteBit3								;Bit Code Value 3 displayed here 
 mov eax,7
      call SetTextColor
mov edx, offset spaceC
call writestring
call writestring
mov edx, offset straightLineD
call writestring 
;Bit Value for bit 2
mov edx, offset spaceC
call writestring
movzx eax,currentColors2 
call setTextColor
call WriteBit2							;Bit Code Value 2 displayed here 
 mov eax,7
      call SetTextColor
mov edx, offset spaceC
call writestring
call writestring
mov edx, offset straightLineD
call writestring 
;Bit Value for bit 1
mov edx, offset spaceC
call writestring
movzx eax,currentColors1 
call setTextColor
call WriteBit1							;Bit Code Value 1 displayed here 
mov eax,7
      call SetTextColor
mov edx, offset spaceC
call writestring
call writestring
mov edx, offset straightLineD
call writestring 
;Bit Value for bit 0
mov edx, offset spaceC
call writestring
movzx eax,currentColors0 
call setTextColor
call WriteBit0							;Bit Code Value 0 displayed here 
 mov eax,7
     call SetTextColor
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
mov edx, offset pressKey        ;"Press a key corresponding to the bit you would like to cycle..."
call writestring
call crlf
mov edx, offset press0          ;"Press the '0' key to shift the bit in position 0."
call writestring
call crlf
mov edx, offset press1          ;"Press the '1' key to shift the bit in position 0."
call writestring
call crlf
mov edx, offset press2          ;"Press the '2' key to shift the bit in position 0."
call writestring
call crlf
mov edx, offset press3          ;"Press the '3' key to shift the bit in position 0."    
call writestring
call crlf
mov edx, offset press4          ;"Press the '4' key to shift the bit in position 0."
call writestring
call crlf
mov edx, offset press5          ;"Press the '5' key to shift the bit in position 0."
call writestring
call crlf
mov edx, offset press6          ;"Press the '6' key to shift the bit in position 0."
call writestring
call crlf
mov edx, offset press7          ;"Press the '7' key to shift the bit in position 0."
call writestring
call crlf
mov edx, offset colon	        ;": "
call writestring 
CALL ReadChar					; Get input from user
		MOVZX EAX, AL					; Keeps only the ASCII code
		SUB AL, 48						; Converts ASCII code to the number
		CALL ClrScr				
mov ecx, eax
TestingBitZeroLoop_Begin:				;Conditional loop for bit0
    CMP  eax, 0
    Jz equalTo0
    jmp over0
equalTo0:
    cmp bit0, 00000000b
    Jz equalTo0_2				;The 0_2 means if it is equal to 0 than it will go into another part of the loop to test what the current value
    JMP greaterThan0_2			;of the loop bit is . If it is 0 than it will be flipped and if its is 1 than it will be flippped to 0.
equalTo0_2:
    mov bit0, 00000001b
    jmp over0
    greaterThan0_2:
    CALL nextColor0
    mov bit0, 00000000b
    jmp over0		
LOOP TestingBitZeroLoop_Begin				;End of conditional loop
    over0:
TestingBitOneLoop_Begin:					;Conditional loop for bit1
    CMP  eax, 1
    Jz equalTo1
    jmp over1
equalTo1:
    cmp bit1, 00000000b
    Jz equalTo1_2				;The 1_2 means if it is equal to 1 than it will go into another part of the loop to test what the current value
    JMP greaterThan1_2			;of the loop bit is . If it is 0 than it will be flipped and if its is 1 than it will be flippped to 0.
equalTo1_2:
    mov bit1, 00000001b
    jmp over1
greaterThan1_2:
    call nextColor0
    mov bit1, 00000000b
    jmp over1			
LOOP TestingBitOneLoop_Begin				;End of conditional loop
	over1:

TestingBitTwoLoop_Begin:					;Conditional loop for bit2
    CMP  eax, 2
    Jz equalTo2
    jmp over2
equalTo2:
    cmp bit2, 00000000b
    Jz equalTo2_2				;The 2_2 means if it is equal to 2 than it will go into another part of the loop to test what the current value
    JMP greaterThan2_2			;of the loop bit is . If it is 0 than it will be flipped and if its is 1 than it will be flippped to 0.
    equalTo2_2:
    mov bit2, 00000001b
    jmp over2
greaterThan2_2:
    call nextColor0
    mov bit2, 00000000b
    jmp over2	
	
LOOP TestingBitTwoLoop_Begin				;End of conditional loop
	over2:
TestingBitThreeLoop_Begin:					;Conditional loop for bit3
    CMP  eax, 3
    Jz equalTo3
    jmp over3
equalTo3:
    cmp bit3, 00000000b
    Jz equalTo3_2				;The 3_2 means if it is equal to 3 than it will go into another part of the loop to test what the current value
    JMP greaterThan3_2			;of the loop bit is . If it is 0 than it will be flipped and if its is 1 than it will be flippped to 0.
equalTo3_2:
    mov bit3, 00000001b
    jmp over3
greaterThan3_2:
    call nextColor0
    mov bit3, 00000000b
    jmp over7			
	
LOOP TestingBitThreeLoop_Begin				;End of conditional loop
	over3:
TestingBitFourLoop_Begin:					;Conditional loop for bit4
    CMP  eax, 4
    Jz equalTo4
    jmp over4
equalTo4:
    cmp bit4, 00000000b
    Jz equalTo4_2				;The 4_2 means if it is equal to 4 than it will go into another part of the loop to test what the current value
    JMP greaterThan4_2			;of the loop bit is . If it is 0 than it will be flipped and if its is 1 than it will be flippped to 0.
equalTo4_2:
    mov bit4, 00000001b
    jmp over4
greaterThan4_2:
    call nextColor0
    mov bit4, 00000000b
    jmp over7		
	
LOOP TestingBitFourLoop_Begin				;End of conditional loop
	over4:
TestingBitFiveLoop_Begin:						;Conditional loop for bit5
    CMP  eax, 5
    Jz equalTo5
    jmp over5
equalTo5:
    cmp bit5, 00000000b
    Jz equalTo5_2				;The 5_2 means if it is equal to 5 than it will go into another part of the loop to test what the current value
    JMP greaterThan5_2			;of the loop bit is . If it is 0 than it will be flipped and if its is 1 than it will be flippped to 0.
equalTo5_2:
    mov bit5, 00000001b
    jmp over5
greaterThan5_2:
    call nextColor0
    mov bit5, 00000000b
    jmp over7

LOOP TestingBitFiveLoop_Begin			;End of conditional loop
	over5:
TestingBitSixLoop_Begin:				;Conditional loop for bit6
    CMP  eax, 6
    Jz equalTo6
    jmp over6
equalTo6:
cmp bit6, 00000000b
    Jz equalTo6_2				;The 6_2 means if it is equal to 6 than it will go into another part of the loop to test what the current value
    JMP greaterThan6_2			;of the loop bit is . If it is 0 than it will be flipped and if its is 1 than it will be flippped to 0.
equalTo6_2:
    mov bit6, 00000001b
    jmp over6
greaterThan6_2:
    call nextColor0
    mov bit6, 00000000b
jmp over7
			
	
LOOP TestingBitSixLoop_Begin				;End of conditional loop
	over6:
TestingBitSevenLoop_Begin:					;Conditional loop for bit7 
    CMP  eax, 7
    Jz equalTo7
    jmp over7
equalTo7:
    cmp bit7, 00000000b
    Jz equalTo7_2				;The 7_2 means if it is equal to 7 than it will go into another part of the loop to test what the current value
    JMP greaterThan7_2			;of the loop bit is . If it is 0 than it will be flipped and if its is 1 than it will be flippped to 0.
equalTo7_2:
    mov bit7, 00000001b
    jmp over7
greaterThan7_2:
    call nextColor0
    mov bit7, 00000000b
    jmp over7
LOOP TestingBitSevenLoop_Begin				;End of conditional loop
	over7:

	JMP InfiniteLoopBegin				; Jump back to the 'InfiniteLoopBegin' label. Rubric states to put in infinite loop
									;In order to do the color switching properly call 1 after zero and put the inc text color by one 
									;therefor the text
main endp
;Preserve this 
WriteBit0 PROC USES EAX EBX EDX										;Write procedure for bit0
	; Load registers with appropriate display information.
	movzx EAX, bit0
	call Writedec
	ret
WriteBit0 ENDP
WriteBit1 PROC USES EAX EBX EDX										;Write procedure for bit1
	movzx EAX, bit1
	call Writedec
	ret
WriteBit1 ENDP
WriteBit2 PROC USES EAX EBX EDX										;Write procedure for bit2
	; Load registers with appropriate display information.
	movzx EAX, bit2
	call Writedec
	ret
WriteBit2 ENDP	
WriteBit3 PROC USES EAX EBX EDX									;Write procedure for bit3
	; Load registers with appropriate display information.
	movzx EAX, bit3
	call Writedec
	ret
WriteBit3 ENDP
WriteBit4 PROC USES EAX EBX EDX									;Write procedure for bit4						
	; Load registers with appropriate display information.
	movzx EAX, bit4
	call Writedec
	ret
WriteBit4 ENDP
WriteBit5 PROC USES EAX EBX EDX									;Write procedure for bit5
	; Load registers with appropriate display information.
	movzx EAX, bit5
	call Writedec
	ret
WriteBit5 ENDP
WriteBit6 PROC USES EAX EBX EDX								    ;Write procedure for bit6
	; Load registers with appropriate display information.
	movzx EAX, bit6
	call Writedec
	ret
WriteBit6 ENDP
WriteBit7 PROC USES EAX EBX EDX									;Write procedure for bit7
	; Load registers with appropriate display information.
	movzx EAX, bit7
	call Writedec
	ret
WriteBit7 ENDP
nextColor PROC
    PUSHAD
    
    ; Get current color from array
    MOVZX EBX, currentColors[EAX]

    ; Next color with basically switch case
    ; LIGHTCYAN, LIGHTGREEN, LIGHTRED, YELLOW, WHITE, repeat
    
    ; Check if it's lightCyan
    CMP EBX, lightCyan
    ; Skip changing to lightGreen if it isn't lightCyan
    JNE notCyan
        MOV currentColors[EAX], lightGreen
    notCyan:
    
    ; Check if it's lightGreen
    CMP EBX, lightGreen
    ; Skip changing to lightRed if it isn't lightGreen
    JNE notGreen
        MOV currentColors[EAX], lightRed
    notGreen:
    
    ; Check if it's lightRed
    CMP EBX, lightRed
    ; Skip changing to yellow if it isn't lightRed
    JNE notRed
        MOV currentColors[EAX], yellow
    notRed:
    
    ; Check if it's yellow
    CMP EBX, yellow
    ; Skip changing to white if it isn't yellow
    JNE notYellow
        MOV currentColors[EAX], white
    notYellow:

    ; Check if it's white
    CMP EBX, white
    ; Skip changing to lightCyan if it isn't white
    JNE notWhite
        MOV currentColors[EAX], lightCyan
    notWhite:
    
    POPAD
    RET
nextColor ENDP
nextColor0 PROC
    PUSHAD
    
    ; Get current color from array
    MOVZX EBX, currentColors0[EAX]

    ; Next color with basically switch case
    ; LIGHTCYAN, LIGHTGREEN, LIGHTRED, YELLOW, WHITE, repeat
    
    ; Check if it's lightCyan
    CMP EBX, lightCyan
    ; Skip changing to lightGreen if it isn't lightCyan
    JNE notCyan
        MOV currentColors0[EAX], lightGreen
    notCyan:
    
    ; Check if it's lightGreen
    CMP EBX, lightGreen
    ; Skip changing to lightRed if it isn't lightGreen
    JNE notGreen
        MOV currentColors0[EAX], lightRed
    notGreen:
    
    ; Check if it's lightRed
    CMP EBX, lightRed
    ; Skip changing to yellow if it isn't lightRed
    JNE notRed
        MOV currentColors0[EAX], yellow
    notRed:
    
    ; Check if it's yellow
    CMP EBX, yellow
    ; Skip changing to white if it isn't yellow
    JNE notYellow
        MOV currentColors0[EAX], white
    notYellow:

    ; Check if it's white
    CMP EBX, white
    ; Skip changing to lightCyan if it isn't white
    JNE notWhite
        MOV currentColors0[EAX], lightCyan
    notWhite:
    
    POPAD
    RET
nextColor0 ENDP
nextColor1 PROC
    PUSHAD
    
    ; Get current color from array
    MOVZX EBX, currentColors1[EAX]

    ; Next color with basically switch case
    ; LIGHTCYAN, LIGHTGREEN, LIGHTRED, YELLOW, WHITE, repeat
    
    ; Check if it's lightCyan
    CMP EBX, lightCyan
    ; Skip changing to lightGreen if it isn't lightCyan
    JNE notCyan
        MOV currentColors1[EAX], lightGreen
    notCyan:
    
    ; Check if it's lightGreen
    CMP EBX, lightGreen
    ; Skip changing to lightRed if it isn't lightGreen
    JNE notGreen
        MOV currentColors1[EAX], lightRed
    notGreen:
    
    ; Check if it's lightRed
    CMP EBX, lightRed
    ; Skip changing to yellow if it isn't lightRed
    JNE notRed
        MOV currentColors1[EAX], yellow
    notRed:
    
    ; Check if it's yellow
    CMP EBX, yellow
    ; Skip changing to white if it isn't yellow
    JNE notYellow
        MOV currentColors1[EAX], white
    notYellow:

    ; Check if it's white
    CMP EBX, white
    ; Skip changing to lightCyan if it isn't white
    JNE notWhite
        MOV currentColors1[EAX], lightCyan
    notWhite:
    
    POPAD
    RET
nextColor1 ENDP


		END main