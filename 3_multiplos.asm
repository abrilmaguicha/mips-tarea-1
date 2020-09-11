.data
newline: .asciiz "\n"

.text
.globl main
main:
  li              $s0, 1                  #se le asigna el valor 1 al contador (i) 
  li              $s1, 101              

  loop:
  beq             $s0, $s1, exit          #si se llega  al valor 101 se debe salir del loop

  rem             $s2, $s0, 3             #el resto de s0/3 se guarda en s2
  beq             $s2, $zero, print       #si resto=0, se debe imprimir el valor de s0
  rem             $s2, $s0, 5             #el resto de s0/5 se guarda en s2
  beq             $s2, $zero, print       #si resto=0, se debe imprimir el valor de s0
  
  j endprint

  #se imprime \n entre cada s0
  print:
  li              $v0, 1
  move            $a0, $s0
  syscall
  li              $v0, 4
  la              $a0, newline
  syscall

  endprint:
  addi            $s0, $s0, 1             #incrementa (i++)

  j loop

  #termina el programa
  exit:
  li              $v0, 10
  syscall
