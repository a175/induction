MAINHTML=../docs/index.html
MAINPDF=../docs/x2.pdf
MAINTEX=../src/p.tex
BASETEX=../src/x2.tex
MAINHTMLHRAD=../tools/htmlbase/index.0.html
MAINHTMLFOOT=../tools/htmlbase/index.1.html 


all: html pdf
html: ${MAINHTML}
pdf: ${MAINPDF}

${MAINHTML}: ${MAINTEX} ${MAINHTMLHRAD} ${MAINHTMLFOOT}
	bash ../tools/0.sh ${MAINTEX} ${MAINHTMLHRAD} ${MAINHTMLFOOT} > ${MAINHTML}

${MAINPDF}: ${MAINTEX} ${BASETEX}
	cd ../src/ && make && cp x2.pdf ${MAINPDF} && cd ../tools/

