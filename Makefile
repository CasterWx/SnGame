all:
	g++ -o sn sn.cpp -lglut -lGL -lGLU
clean:
	-rm -f sn