TARGET=transformaciones
LIBS=-L"..\graphics\init\freeglut\lib" -lfreeglut -L"..\graphics\init\glew-1.13.0\src" -lGLEW -lglu32 -lopengl32
CFLAGS=-I"..\graphics\init\glew-1.13.0\include" -I"..\graphics\init\freeglut\include" -I"..\graphics\init\glm-0.9.7.3\glm"


.PHONY: default all clean

default: $(TARGET)
all: default

OBJECTS = transformaciones.o shader_utils.o
HEADERS =

%.o:	%.cpp $(HEADERS)
	g++ $(CFLAGS) -c $< -o $@

$(TARGET):	$(OBJECTS)
	g++ $(OBJECTS) $(LIBS) -o $@

clean:
	-rm -f *.o
	-rm -f $(TARGET)
