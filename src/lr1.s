.data
N:
.word 6 #row
M:
.word 6 #column
matrix:
.word 5, 74, 5, 64, 34, 7
.word 6, 65, 4, 41, 44, 5
.word 9, 41, 1, 85, 31, 1
.word 7, 96, 9, 46, 54, 8
.word 7, 96, 9, 11, 81, 3
.word 4, 27, 1, 73, 10, 9

.text

main:
lw a0, M
lw a1, N
la a2, matrix
call main_diagonal
call printResult
call exit


# Prints row elements
# a0 - number of elements in a row
# a1 - address of the row
printResult:
mv t0, a0
mv t1, a1

# Print element
addi a0, x0, 1
mv   a1, t0
ecall
# Print space
addi a0, x0, 11
addi a1, x0, 32
ecall
addi a0, x0, 1
mv   a1, t1
ecall
# Print space
addi a0, x0, 11
addi a1, x0, 32
ecall

ret


# Ends the program
exit:
addi a0, x0, 10
ecall


# Finds row with the maximum sum
# a0 - number of rows
# a1 - number of columns
# a2 - address of the matrix
# returns:
# a0 - sum
main_diagonal:
# t0 - sum_lr
# t1 - sum_rl
# t2 - address of cell
# t3 - iteration count
# t4 - skip iterator
# t5 - current element value
# t6 - element iterator

# init
mv t0, x0
mv t2, a2
mv t3, a0
ble t3, a1, 1f
mv t3, a1


1:
mv t6, t3
lui t0, 0x00000
mv t0, x0

2:
addi t4, a1, 1
lw t5, 0(t2)
add t0, t0, t5

3:
addi t4, t4, -1
addi t2, t2, 4
bnez t4, 3b

addi t6, t6, -1
bnez t6, 2b

mv t6, t3
lui t1, 0x00000
mv t1, x0
mv t2, a2

5:
addi t4, a1, -1
6:
addi t4, t4, -1
addi t2, t2, 4
bnez t4, 6b

lw t5, 0(t2)
add t1, t1, t5
addi t6, t6, -1
bnez t6, 5b

mv a0, t0
mv a1, t1
ret