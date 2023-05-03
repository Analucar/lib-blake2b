#JASMINC = /Users/pedrofreitas/Desktop/PassCert/jasmin/compiler/./jasminc
JASMINC = jasminc

ASSEMBLEY_PROGRAM = ../implementation/Blake2b.s
API = api/blake2b.c

%.japp: %.jazz
	gpp -o $@ $<

%.s: %.japp
	$(JASMINC) $(JFLAGS) -pasm $< > $@ || rm -f $@

all: $(ASSEMBLEY_PROGRAM)

main:
	gcc $(API) main.c $(ASSEMBLEY_PROGRAM) -o blake2b

clean:
	@rm -f *.japp $(ASSEMBLEY_PROGRAM) blake2b
