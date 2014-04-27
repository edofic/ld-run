all: ld

ld: 
	ghc --make -O -o ld -outputdir build Main.hs

clean: 
	rm -rf build ld

install: ld
	sudo cp ld /usr/local/bin/ld

uninstall:
	sudo rm /usr/local/bin/ld