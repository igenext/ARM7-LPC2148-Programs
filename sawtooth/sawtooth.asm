	area test, code, readonly
pinsel1 equ 0xe002c004
dacr equ 0xe006c000
	
	ldr r1, =pinsel1
	ldr r2, =0x00080000
	str r2,[r1]
	ldr r6, =0x000003ff
	ldr r0, =dacr
	ldr r3, =0x0
	str r3, [r0]
	
d	lsl r3, r4, #6
	str r3,[r0]
	add r4,r4,#1
	cmp r4,r6
	blt d
	ldr r4, =0x0
	b d
	
	end