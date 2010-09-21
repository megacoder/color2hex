PREFIX	=/opt
BINDIR	=${PREFIX}/bin

SCRIPTS	=color2hex rgb2hex colorCalc

C2HARGS	=gold
R2HARGS	=1 2 3

all:	${SCRIPTS}

check:	${SCRIPTS}
	echo "${C2HARGS}" | ./color2hex
	echo "${R2HARGS}" | ./rgb2hex

install: ${SCRIPTS}
	install -d ${BINDIR}
	install -c ${SCRIPTS} ${BINDIR}/

uninstall:
	cd ${BINDIR} && ${RM} ${SCRIPTS}
