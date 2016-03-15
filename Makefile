
CC=ls
RM=rm -rf *.pdf *.dvi *.out *.log *.aux *.bcf *.xml *.snm *.toc *.nav
RML=rm -rf  *.dvi *.out *.log *.aux *.bcf *.xml *.snm *.toc *.nav
PDF=dvipdf

all: create

clean:rm

create:killopenpdf
	-@latex reqs.tex
	@$(PDF) *.dvi
	@open *.pdf
	@$(RML)

onlycreate:
	-@latex reqs.tex
	@$(PDF) *.dvi
	@open *.pdf
	$(RML)

createtest:killopenpdf
	-@latex test.tex
	@$(PDF) *.dvi
	@open *.pdf
	@$(RML)

onlycreatetest:
	-@latex test.tex
	@$(PDF) *.dvi
	@open *.pdf
	@$(RML)

rm:killopenpdf
	@$(RM)   
	#@read -p "Press enter to continue"
	
killopenpdf:
	@export A=`ps -ef|grep "AdobeReader"|grep -v "AdobeCrashReporter"|grep "\-psn"|awk '{print $$2}'`;kill -9 $$A
