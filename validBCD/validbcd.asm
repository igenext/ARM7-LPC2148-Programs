	area test, code, readonly
		
	ldr r0, =0x40000000
	ldr r5, =0x04
	
l4	ldr r1, [r0]
	ldr r4, =0x07
	ldr r2, =0x0f
	ldr r7, =0x09
	
l2	and r3, r1, r2
	cmp r3, r7
	ble l1
	b l
	
l1  lsr r1, #4
	sub r4, #1
	cmp r4, #0
	beq l3
	b l2
	
l3	add r6, #1
l	add r0, #4
	sub r5, #1
	cmp r5, #0
	bne l4
l5  b l5
	end