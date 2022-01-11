PANDOC := $(patsubst %.md,%.pandoc,$(wildcard *.md))
HANDOUTS := $(patsubst %.md,%.md.handout.pdf,$(wildcard *.md))

all : $(PANDOC) $(HANDOUTS)

%.pandoc : %.md
	./columns.pl $^ $@

%.pdf : %.pandoc
	pandoc -f markdown+tex_math_double_backslash+pipe_tables style.yaml $^ -t beamer -o $@

%.html : %.md
	pandoc -f gfm+pipe_tables style.yaml $^ -t revealjs -s -o $@

%.tex : %.pandoc
	pandoc -f markdown+tex_math_double_backslash+pipe_tables style.yaml $^ -t beamer -s -o $@ 
		

clobber : 
	rm -f $(PANDOC)
	rm -f $(HANDOUTS)
