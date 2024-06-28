# elsa-proj/Makefile
# Just recursively invokes sub-module builds.

all:
	$(MAKE) -C smflex
	$(MAKE) -C smbase
	$(MAKE) -C ast
	$(MAKE) -C elkhound
	$(MAKE) -C elsa
	@echo
	@echo "elsa-proj 'make' finished."

check:
	$(MAKE) -C smflex check
	$(MAKE) -C smbase check
	$(MAKE) -C ast check
	$(MAKE) -C elkhound check
	$(MAKE) -C elsa check
	@echo
	@echo "elsa-proj 'make check' finished."

clean:
	$(MAKE) -C smflex clean
	$(MAKE) -C smbase clean
	$(MAKE) -C ast clean
	$(MAKE) -C elkhound clean
	$(MAKE) -C elsa clean
	@echo
	@echo "elsa-proj 'make clean' finished."

distclean:
	$(MAKE) -C smflex distclean
	$(MAKE) -C smbase distclean
	$(MAKE) -C ast distclean
	$(MAKE) -C elkhound distclean
	$(MAKE) -C elsa distclean
	@echo
	@echo "elsa-proj 'make distclean' finished."

git-status:
	(cd smbase; git status)
	(cd smflex; git status)
	(cd ast; git status)
	(cd elkhound; git status)
	(cd elsa; git status)
	git status

# EOF
