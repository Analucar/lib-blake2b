CFLAGS = -std=c99

PROGRAM = blake2b.out
SOURCE  = main.c
     
all: $(PROGRAM)
     
$(PROGRAM): $(SOURCE) Blake2b.jazz
	jasminc Blake2b.jazz -o Blake2b.s
	$(CC) $(CFLAGS) -o $(PROGRAM) $(SOURCE) Blake2b.s
     
clean:
	rm -f $(PROGRAM)
	rm -f Blake2b.s

safety:
	jasminc -checkSCT Blake2b.jazz