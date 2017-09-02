TARGET=baseRep
LIBS=-L"C:\Users\alulab14\Downloads\graphics\freeglut\lib" -lfreeglut  -L"C:\Users\alulab14\Downloads\graphics\glew-1.13.0\src" -lGLEW -lglu32 -lopengl32
CFLAGS=-I"C:\Users\alulab14\Downloads\graphics\freeglut\include" -I"C:\Users\alulab14\Downloads\graphics\glew-1.13.0\include" -I"C:\Users\alulab14\Downloads\graphics\glm-0.9.7.3\glm"

.PHONY: default all clean

default: $(TARGET)
all: default

OBJECTS = baseRep.o shader_utils.o
HEADERS =

%.o:	%.cpp $(HEADERS)
	g++ $(CFLAGS) -c $< -o $@

$(TARGET):	$(OBJECTS)
	g++ $(OBJECTS) $(LIBS) -o $@

clean:
	-rm -f *.o
	-rm -f $(TARGET)
