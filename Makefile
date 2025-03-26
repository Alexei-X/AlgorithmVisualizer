CC = g++ -std=c++11
CFLAGS = -I/opt/homebrew/Cellar/sdl2/2.32.0/include/SDL2/ -I/opt/homebrew/Cellar/sdl2_image/2.8.5/include/SDL2/
LDFLAGS = -L/opt/homebrew/Cellar/sdl2/2.32.0/lib/ -lSDL2 -L/opt/homebrew/Cellar/sdl2_image/2.8.5/lib/ -lSDL2_image

all: src/main.cpp
	$(CC) $(CFLAGS) $(LDFLAGS) -o app src/main.cpp

clean:
	rm *.o app
