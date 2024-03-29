default: dog

dog:
	dune exec bin/dog.exe -- dot/node_attrs.dot

from:
	dune exec bin/from_test.exe -- dot/node_attrs.dot

run:
	dune exec bin/main.exe

build:
	dune build

test:
	dune runtest -f

utop:
	dune utop . -- -implicit-bindings

promote:
	dune runtest -f --auto-promote

install:
	dune install

uninstall:
	dune uninstall

clean:
	dune clean

.PHONY: default dog build install uninstall test clean