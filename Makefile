# Source scores live in scores/*.ly and include the Clairnote notation
# library from lib/. Generated output (PDF, etc.) is written to build/
# and is not checked in.

LILYPOND := lilypond
SCORES   := $(wildcard scores/*.ly)
PDFS     := $(patsubst scores/%.ly,build/%.pdf,$(SCORES))

.PHONY: all clean

all: $(PDFS)

build/%.pdf: scores/%.ly lib/clairnote.ly | build
	$(LILYPOND) -I $(CURDIR)/lib -o build/$* $<

build:
	mkdir -p build

clean:
	rm -rf build
