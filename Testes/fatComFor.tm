* TINY Compilation to TM Code
* File: Testes/fatComFor.tm
* Standard prelude:
  0:     LD  6,0(0) 	load maxaddress from location 0
  1:     ST  0,0(0) 	clear location 0
* End of standard prelude.
  2:     IN  0,0,0 	read integer value
  3:     ST  0,0(5) 	read: store value
* -> if
* -> Op
* -> Const
  4:    LDC  0,0(0) 	load const
* <- Const
  5:     ST  0,0(6) 	op: push left
* -> Id
  6:     LD  0,0(5) 	load id value
* <- Id
  7:     LD  1,0(6) 	op: load left
  8:    SUB  0,1,0 	op <
  9:    JLT  0,2(7) 	br if true
 10:    LDC  0,0(0) 	false case
 11:    LDA  7,1(7) 	unconditional jmp
 12:    LDC  0,1(0) 	true case
* <- Op
* if: jump to else belongs here
* -> assign
* -> Const
 14:    LDC  0,1(0) 	load const
* <- Const
 15:     ST  0,1(5) 	assign: store value
* <- assign
* -> ENTRANDO NO  FOR!!
* -> assign
* -> Const
 16:    LDC  0,1(0) 	load const
* <- Const
 17:     ST  0,2(5) 	assign: store value
* <- assign
* for: Antes da expressão e do body
* -> Op
* -> Id
 18:     LD  0,2(5) 	load id value
* <- Id
 19:     ST  0,0(6) 	op: push left
* -> Op
* -> Id
 20:     LD  0,0(5) 	load id value
* <- Id
 21:     ST  0,-1(6) 	op: push left
* -> Const
 22:    LDC  0,1(0) 	load const
* <- Const
 23:     LD  1,-1(6) 	op: load left
 24:    ADD  0,1,0 	op +
* <- Op
 25:     LD  1,0(6) 	op: load left
 26:    SUB  0,1,0 	op <
 27:    JLT  0,2(7) 	br if true
 28:    LDC  0,0(0) 	false case
 29:    LDA  7,1(7) 	unconditional jmp
 30:    LDC  0,1(0) 	true case
* <- Op
 31:    JNE  0,1(7) 	repeat: jmp back to body
* Aqui vai ser o espaço para sair do loop 
* -> assign
* -> Op
* -> Id
 33:     LD  0,1(5) 	load id value
* <- Id
 34:     ST  0,0(6) 	op: push left
* -> Id
 35:     LD  0,2(5) 	load id value
* <- Id
 36:     LD  1,0(6) 	op: load left
 37:    MUL  0,1,0 	op *
* <- Op
 38:     ST  0,1(5) 	assign: store value
* <- assign
* -> assign
* -> Op
* -> Id
 39:     LD  0,2(5) 	load id value
* <- Id
 40:     ST  0,0(6) 	op: push left
* -> Const
 41:    LDC  0,1(0) 	load const
* <- Const
 42:     LD  1,0(6) 	op: load left
 43:    ADD  0,1,0 	op +
* <- Op
 44:     ST  0,2(5) 	assign: store value
* <- assign
 45:    LDA  7,-28(7) 	Voltar para o loop
 32:    LDA  7,13(7) 	jmp to end
* <- FOR
* -> Id
 46:     LD  0,1(5) 	load id value
* <- Id
 47:    OUT  0,0,0 	write ac
* if: jump to end belongs here
 13:    JEQ  0,35(7) 	if: jmp to else
 48:    LDA  7,0(7) 	jmp to end
* <- if
* End of execution.
 49:   HALT  0,0,0 	
