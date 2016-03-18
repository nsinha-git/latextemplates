
CC=ls
RM=rm -rf *.pdf *.dvi *.out *.log *.aux *.bcf *.xml
RML=rm -rf  *.dvi *.out *.log *.aux *.bcf *.xml
PDF=dvipdf

all: create

clean:rm



create:killopenpdf
	@latex *.tex
	@$(PDF) *.dvi
	@open *.pdf
	@$(RML)

createnokill:
	@latex *.tex
	@$(PDF) *.dvi
	@open *.pdf
	$(RML)


rm:killopenpdf
	@$(RM)   
	@read -p "Press enter to continue"
	
killopenpdf:
	@export A=`ps -ef|grep "AdobeReader"|grep -v "AdobeCrashReporter"|grep "\-psn"|awk '{print $$2}'`;kill -9 $$A
