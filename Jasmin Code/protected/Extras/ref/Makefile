JASMINC =  /Users/pedrofreitas/Desktop/Tese/Frameworks/jasmin/compiler/./jasminc 
JASMINC = jasminc

JASMIN_PROGRAM = implementation/Blake2b.jazz
ASSEMBLEY_PROGRAM = implementation/Blake2b.s

make:
	$(JASMINC) $(JASMIN_PROGRAM) -o $(ASSEMBLEY_PROGRAM)

run-tests:
	./tests/blake2b-tests

main:
	gcc main.c $(ASSEMBLEY_PROGRAM) -o blake2b
clean:
	rm -f $(ASSEMBLEY_PROGRAM) blake2b