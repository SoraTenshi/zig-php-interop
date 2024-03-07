CWD := $(dir $(abspath $(firstword $(MAKEFILE_LIST))))
LIB_PATH := $(CWD)zig-out/lib/
PHP_FILE := this.php

.PHONY: compile run all

compile:
	zig build

run:
	LD_LIBRARY_PATH=$(LIB_PATH) php src/php/$(PHP_FILE)

all: compile run
