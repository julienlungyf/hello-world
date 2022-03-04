all:
	bison --graph input.y -o output.c
	dot -Tpng output.dot > output.png
im:
	bison --graph input.y -o output.c
	dot -Tpng output.dot > output.png
	feh output.png
check:
	bison --graph -Wcounterexamples input.y -o output.c
	dot -Tpng output.dot > output.png
