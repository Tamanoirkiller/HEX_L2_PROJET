HEX: obj/HEX.o obj/Interface.o obj/hexagone.o obj/board.o obj/game.o obj/queue.o
		gcc obj/HEX.o obj/Interface.o obj/hexagone.o obj/board.o obj/game.o obj/queue.o -o HEX -g -ggdb `sdl-config --cflags --libs` -lSDL_image -lSDL_ttf

obj/HEX.o: src/HEX.c
		gcc -c src/HEX.c -o obj/HEX.o -Wall -g -ggdb -O0

obj/Interface.o: src/Interface.c
		gcc -c src/Interface.c -o obj/Interface.o -Wall -g -ggdb -O0

obj/hexagone.o: src/hexagone.c
		gcc -c src/hexagone.c -o obj/hexagone.o -Wall -g -ggdb -O0

obj/board.o: src/board.c
		gcc -c src/board.c -o obj/board.o -Wall -g -ggdb -O0

obj/game.o: src/game.c
		gcc -c src/game.c -o obj/game.o -Wall -g -ggdb -O0

obj/queue.o: src/queue.c
		gcc -c src/queue.c -o obj/queue.o -Wall -g -ggdb -O0

clean:
		rm -f obj/*.o HEX
