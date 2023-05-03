JASMINC = /Users/pedrofreitas/Desktop/PassCert/jasmin/compiler/./jasminc
JASMINC = jasminc

ASSEMBLEY_PROGRAM = implementation/Blake2b.s

%.japp: %.jazz
	gpp -o $@ $<

%.s: %.japp
	$(JASMINC) $(JFLAGS) -pasm $< > $@ || rm -f $@

all: $(ASSEMBLEY_PROGRAM)

main:
	gcc main.c $(ASSEMBLEY_PROGRAM) -o blake2b


checksafety:
	$(JASMINC) -checksafety implementation/Blake2b.japp

clean:
	@rm -f $(ASSEMBLEY_PROGRAM) blake2b
