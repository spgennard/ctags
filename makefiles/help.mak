# -*- makefile -*-
.PHONY: help
help:
	@echo "Compilation targets:"
	@echo ""
	@echo "make                              - Build $(CTAGS_PROG)"
	@echo "make V=1                          - Build $(CTAGS_PROG) - verbose output"
	@echo "make -f mk_mingw.mak              - Build $(CTAGS_PROG) using MinGW"
	@echo "make -f mk_mingw.mak V=1          - Build $(CTAGS_PROG) using MinGW - verbose output"
	@echo ""
	@echo "Testing targets:"
	@echo ""
	@echo "make units                        - Run parser unit test cases"
	@echo "make tmain                        - Run ctags main functionality test cases"
	@echo "make fuzz                         - Verify that all parsers are able to properly process each available test unit"
	@echo "make noise                        - Verify the behavior of parsers for broken input: a character injected or removed randomly"
	@echo "make chop                         - Verify the behavior of parsers for broken input: randomly truncated"
	@echo "make roundtrip                    - Verify the behavior of readtags command"
	@echo
	@echo "Arguments that can be used in testing targets:"
	@echo "VG=1                              - Run test cases with Valgrind memory profiler"
	@echo "LANGUAGES=<language>[,<language>] - Only run test cases of the selected languages"
	@echo "CATEGORIES=<category>             - Only run tests available under folder Units/<category>.r"
