	area test, code, readonly
	ldr r0, =0x08
	ldr r3, =0x01
	ldr r1, =0x40000000
l	ldr r2,[r1]
	and r2,r3
	cmp r2,r3
	addeq r4,#1 ; r4 -> total odd numbers
	add r1,#4
	sub r0, #1
	cmp r0, #0
	bne l
l1	b l1
	end