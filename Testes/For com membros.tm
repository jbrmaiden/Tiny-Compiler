* TINY Compilation to TM Code
* File: Testes/For com membros.tm
* Standard prelude:
  0:     LD  6,0(0) 	load maxaddress from location 0
  1:     ST  0,0(0) 	clear location 0
* End of standard prelude.
* -> assign
* -> Const
  2:    LDC  0,1(0) 	load const
* <- Const
  3:     ST  0,0(5) 	assign: store value
* <- assign
* -> ENTRANDO NO  FOR!!
* -> assign
* -> Const
  4:    LDC  0,1(0) 	load const
* <- Const
  5:     ST  0,1(5) 	assign: store value
* <- assign
* for: Antes da expressão e do body
* -> Op
* -> Id
  6:     LD  0,1(5) 	load id value
* <- Id
  7:     ST  0,0(6) 	op: push left
* -> Const
  8:    LDC  0,6(0) 	load const
* <- Const
  9:     LD  1,0(6) 	op: load left
 10:    SUB  0,1,0 	op <
 11:    JLT  0,2(7) 	br if true
 12:    LDC  0,0(0) 	false case
 13:    LDA  7,1(7) 	unconditional jmp
 14:    LDC  0,1(0) 	true case
* <- Op
 15:    JNE  0,1(7) 	repeat: jmp back to body
* Aqui vai ser o espaço para sair do loop 
* -> assign
* -> Op
* -> Id
 17:     LD  0,0(5) 	load id value
* <- Id
 18:     ST  0,0(6) 	op: push left
* -> Id
 19:     LD  0,1(5) 	load id value
* <- Id
 20:     LD  1,0(6) 	op: load left
 21:    MUL  0,1,0 	op *
* <- Op
 22:     ST  0,0(5) 	assign: store value
* <- assign
* -> Id
 23:     LD  0,1(5) 	load id value
* <- Id
 24:    OUT  0,0,0 	write ac
* -> assign
* -> Op
* -> Id
 25:     LD  0,1(5) 	load id value
* <- Id
 26:     ST  0,0(6) 	op: push left
* -> Const
 27:    LDC  0,1(0) 	load const
* <- Const
 28:     LD  1,0(6) 	op: load left
 29:    ADD  0,1,0 	op +
* <- Op
 30:     ST  0,1(5) 	assign: store value
* <- assign
 31:    LDA  7,-26(7) 	Voltar para o loop
 16:    LDA  7,15(7) 	jmp to end
* <- FOR
* -> Id
 32:     LD  0,0(5) 	load id value
* <- Id
 33:    OUT  0,0,0 	write ac
* End of execution.
 34:   HALT  0,0,0 	
