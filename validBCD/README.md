## Program to Count the number of valid BCD numbers

### ALGORITHM:
1. Load the starting memory address in register r0.
2. Load the total numbers to be validated in register r5.
3. Load the contents of pointer r0 to r1.
4. Load 0x07 in r4, to make account of total logical shifts to be performed.
5. Load 0x0f in r2, to retrieve last 4 bits of the number to be validated.
6. Load 0x09 in r7, to check if the retrieved number is greater than nine.
7. Make AND operation with r1 (number retrieved from memory) with r2 (0x0f) and store
it in r3.
8. r3 will have last 4 bits of the number.(Since BCD requires 4 bits to represent).
9. Compare r3 and r7, if r3 is greater than 0x09 (r7) increment the memory by 4, decrement
r5 by 1 to ensure that the number is validated and repeat the process from [3].
10. Else Logically shift the number by 4 bits and subtract r4 by one, if the number is shifted
for Seven times (i.e. r4 becomes zero) increment r6 by one increment the memory by 4
and repeat from [3].
11. Repeat the process until r5 becomes zero.
12. Register r6, will have the total number of valid BCDs.
