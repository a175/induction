LATEX=platex
#LATEX=pdflatex
#BIBTEX=bibtex
BIBTEX=pbibtex
DVI2PDF=dvipdfmx
TEXFILE=x2
MAINTEXFILES=p.tex

all: pdf
dvi: ${TEXFILE}.dvi
pdf: ${TEXFILE}.pdf
bbl: ${TEXFILE}.bbl


${TEXFILE}.dvi: ${TEXFILE}.tex ${TEXFILE}.bbl
	${LATEX} ${TEXFILE} && ${LATEX} ${TEXFILE}
${TEXFILE}.pdf: ${TEXFILE}.dvi
	${DVI2PDF} ${TEXFILE}.dvi
${TEXFILE}.bbl:
	${LATEX} ${TEXFILE} && ${BIBTEX} ${TEXFILE}


view:
	evince ${TEXFILE}.pdf &
clean:
	rm -f ${TEXFILE}.dvi ${TEXFILE}.pdf ${TEXFILE}.log ${TEXFILE}.aux texput.log ${TEXFILE}.out ${TEXFILE}.bbl ${TEXFILE}.blg
