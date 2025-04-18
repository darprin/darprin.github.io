MANUAL_LIST=rvx_install_manual

all: ${MANUAL_LIST}

${MANUAL_LIST}:
	-mkdir figures
	cd $@ && pandoc $@.tex -s -o $@.html
	-cd $@ && cp -r ./figures/* ${CURDIR}/figures
	mv -f ./$@/$@.html ${CURDIR}

.PHONY: ${MANUAL_LIST}
