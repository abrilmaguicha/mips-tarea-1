.data
numeros: .asciiz "0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181 \n"

.text
.globl main
main:
  li         $v0, 4
  la         $a0, numeros
  syscall
  li         $v0, 10
  syscall
