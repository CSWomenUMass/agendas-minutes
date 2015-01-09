agendasrc=https://raw.githubusercontent.com/CSWomenUMass/templates/master/agenda.cls
.PHONY: all cochair_meetings_all general_meetings_all

all: cochair_meetings_all general_meetings_all

agenda.cls:
	wget $(agendasrc)

cochair_meetings/agenda.cls: agenda.cls
	ln agenda.cls cochair_meetings/agenda.cls

cochair_meetings_all: cochair_meetings/agenda.cls
	pdflatex -output-directory=cochair_meetings cochair_meetings/*.tex
	rm cochair_meetings/*.log cochair_meetings/*.aux cochair_meetings/*.out

general_meetings_all:
