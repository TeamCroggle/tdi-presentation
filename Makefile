OUTDIR := out

all: out/script.pdf out/presentation.pdf

main: ${OUT}

${OUTDIR}/%.pdf: %.tex
	latexmk -pdf --output-directory=${OUTDIR} -auxdir=${OUTDIR} $<

clean:
	$(RM) -r ${OUTDIR}/*
