; Listing generated by Microsoft (R) Optimizing Compiler Version 19.31.31107.0 

include listing.inc

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

msvcjmc	SEGMENT
__F32AA0BD_concurrencysal@h DB 01H
__5A3A63C4_sal@h DB 01H
__6BEC7B3D_vadefs@h DB 01H
__1BC54112_vcruntime@h DB 01H
__6569C2CA_corecrt@h DB 01H
__A2143F22_corecrt_stdio_config@h DB 01H
__829E1958_corecrt_wstdio@h DB 01H
__6DFAE8B8_stdio@h DB 01H
__3C1805D2_Source@cpp DB 01H
msvcjmc	ENDS
PUBLIC	?Akbar_clearUsingIndex@@YAXQEAHH@Z		; Akbar_clearUsingIndex
PUBLIC	main
PUBLIC	__JustMyCode_Default
EXTRN	_RTC_InitBase:PROC
EXTRN	_RTC_Shutdown:PROC
EXTRN	__CheckForDebuggerJustMyCode:PROC
;	COMDAT pdata
pdata	SEGMENT
$pdata$?Akbar_clearUsingIndex@@YAXQEAHH@Z DD imagerel $LN6
	DD	imagerel $LN6+93
	DD	imagerel $unwind$?Akbar_clearUsingIndex@@YAXQEAHH@Z
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$main DD	imagerel $LN3
	DD	imagerel $LN3+61
	DD	imagerel $unwind$main
pdata	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
_RTC_Shutdown.rtc$TMZ DQ FLAT:_RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
_RTC_InitBase.rtc$IMZ DQ FLAT:_RTC_InitBase
rtc$IMZ	ENDS
_DATA	SEGMENT
?Array@?1??main@@9@4PAHA DD 01H				; `main'::`2'::Array
	DD	02H
	DD	03H
	DD	04H
	DD	05H
	DD	06H
	DD	07H
	DD	08H
	DD	09H
	DD	0ffffffffH
_DATA	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$main DD	025050f01H
	DD	010a230fH
	DD	070030021H
	DD	05002H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$?Akbar_clearUsingIndex@@YAXQEAHH@Z DD 025051701H
	DD	01122317H
	DD	0700b0021H
	DD	0500aH
xdata	ENDS
; Function compile flags: /Odt
;	COMDAT __JustMyCode_Default
_TEXT	SEGMENT
__JustMyCode_Default PROC				; COMDAT
	ret	0
__JustMyCode_Default ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT main
_TEXT	SEGMENT
size$ = 4
main	PROC						; COMDAT
; File C:\Users\Dell\OneDrive - The City College of New York\Desktop\Project1\Project1\Source.cpp
; Line 4
$LN3:
	push	rbp
	push	rdi
	sub	rsp, 264				; 00000108H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__3C1805D2_Source@cpp
	call	__CheckForDebuggerJustMyCode
; Line 6
	mov	DWORD PTR size$[rbp], 10
; Line 7
	mov	edx, DWORD PTR size$[rbp]
	lea	rcx, OFFSET FLAT:?Array@?1??main@@9@4PAHA
	call	?Akbar_clearUsingIndex@@YAXQEAHH@Z	; Akbar_clearUsingIndex
; Line 8
	xor	eax, eax
	lea	rsp, QWORD PTR [rbp+232]
	pop	rdi
	pop	rbp
	ret	0
main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?Akbar_clearUsingIndex@@YAXQEAHH@Z
_TEXT	SEGMENT
i$ = 4
Array$ = 256
size$ = 264
?Akbar_clearUsingIndex@@YAXQEAHH@Z PROC			; Akbar_clearUsingIndex, COMDAT
; File C:\Users\Dell\OneDrive - The City College of New York\Desktop\Project1\Project1\Source.cpp
; Line 11
$LN6:
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	push	rbp
	push	rdi
	sub	rsp, 264				; 00000108H
	lea	rbp, QWORD PTR [rsp+32]
	lea	rcx, OFFSET FLAT:__3C1805D2_Source@cpp
	call	__CheckForDebuggerJustMyCode
; Line 13
	mov	DWORD PTR i$[rbp], 0
	jmp	SHORT $LN4@Akbar_clea
$LN2@Akbar_clea:
	mov	eax, DWORD PTR i$[rbp]
	inc	eax
	mov	DWORD PTR i$[rbp], eax
$LN4@Akbar_clea:
	mov	eax, DWORD PTR size$[rbp]
	cmp	DWORD PTR i$[rbp], eax
	jge	SHORT $LN3@Akbar_clea
; Line 14
	movsxd	rax, DWORD PTR i$[rbp]
	mov	rcx, QWORD PTR Array$[rbp]
	mov	DWORD PTR [rcx+rax*4], 0
	jmp	SHORT $LN2@Akbar_clea
$LN3@Akbar_clea:
; Line 15
	lea	rsp, QWORD PTR [rbp+232]
	pop	rdi
	pop	rbp
	ret	0
?Akbar_clearUsingIndex@@YAXQEAHH@Z ENDP			; Akbar_clearUsingIndex
_TEXT	ENDS
END
