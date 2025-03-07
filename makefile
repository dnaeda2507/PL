mylang: mylang.l
	lex mylang.l
	gcc -o mylang lex.yy.c -ll

clean:
	rm -f myprog lex.yy.c mylang
