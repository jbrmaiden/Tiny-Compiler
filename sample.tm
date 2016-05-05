* TINY Compilation to TM Code
* File: Testes/sample.tm
* Standard prelude:
  0:     LD  6,0(0) 	load maxaddress from location 0
  1:     ST  0,0(0) 	clear location 0
* End of standard prelude.
* -> assign
* -> Const
  2:    LDC  0,1123(0) 	load const
* <- Const
  3:     ST  0,0(5) 	assign: store value
* <- assign
* -> Id
  4:     LD  0,0(5) 	load id value
* <- Id
  5:    OUT  0,0,0 	write ac
* End of execution.
  6:   HALT  0,0,0 	
