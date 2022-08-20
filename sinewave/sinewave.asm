	area test, code, readonly
		
pinsel1 equ 0xe002c004
dacr equ 0xe006c000
	
	ldr r1, =pinsel1
	ldr r2, =0x00080000
	str r2, [r1]
	
	ldr r1, =dacr
l1  ldr r2, =0x0c
	ldr r3, =sindata
l	ldr r4, [r3]
	lsl r5, r4, #6
	str r5, [r1]
	add r3, #4
	subs r2, #1
	bne l
	b l1
	
	align 
sindata
	dcd 0x1ff, 0x2fe, 0x3b9, 0x3ff
	dcd 0x3ba, 0x2fe, 0x1ff, 0xff
	dcd 0x044, 0x0, 0x044, 0xff
		
	end