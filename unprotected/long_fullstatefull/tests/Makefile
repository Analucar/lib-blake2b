JASMINC = /Users/pedrofreitas/Desktop/PassCert/jasmin/compiler/./jasminc
JASMINC = jasminc

ASSEMBLEY_PROGRAM = ../implementation/Blake2b.s

%.japp: %.jazz
	gpp -o $@ $<

%.s: %.japp
	$(JASMINC) $(JFLAGS) -pasm $< > $@ || rm -f $@

all: $(ASSEMBLEY_PROGRAM)

main:
	gcc lib/*.c lib/performance/*.c lib/functional/*.c main.c $(ASSEMBLEY_PROGRAM) -o blake2b-tests

clean:
	@rm -f *.japp $(ASSEMBLEY_PROGRAM) blake2b-tests











