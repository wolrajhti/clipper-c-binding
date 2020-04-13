CLIPPER_DLL = clipper.dll
BINDING_DLL = binding.dll
DEMO_EXE = demo.exe

all : $(DEMO_EXE)

$(DEMO_EXE) : $(BINDING_DLL)
	g++ -c ./sources/main.cpp
	g++ -o $@ main.o -L. -lbinding -lclipper

$(BINDING_DLL) : $(CLIPPER_DLL)
	g++ -m32 -c -DBUILDING_CLIPPER_BINDING ./sources/clipper-binding.cpp
	g++ -m32 -shared -o $@ clipper-binding.o

$(CLIPPER_DLL) :
	g++ -m32 -c -Duse_int32 ./clipper_ver6.4.2/cpp/clipper.cpp
	g++ -m32 -shared -o $@ clipper.o

clean :
	rm *.exe *.dll *.o