;
; ROMDUMP 1.0
;
; ROM Dumper 1.0
;

Source_address: equ 04000H
Source_slot: equ 001H
Size: equ 04000H
Slot_register: equ 0A8H

	db 0FEH
	dw Begin
	dw End - 1
	dw Execute
	
	org 0A000H
	
Begin:
	
Execute:
	di
	
	ld c, Slot_register
	in b, (c)
	exx
	
	ld a, %00001100
	or b
	ld b, a
	ld a, %11110011 + Source_slot * %100
	and b
	ld b, a
	
	ld c, Slot_register
	out (c), b
	
	ld hl, Source_address
	ld de, Data
	ld bc, Size
	ldir
	
	exx
	out (c), b
	
	ei
	ret
    
Data:
    ds VIRTUAL Size

End: