CLIPPER_DLL = clipper.dll
BINDING_DLL = binding.dll
DEMO_EXE = demo.exe

all : $(DEMO_EXE)

$(DEMO_EXE) : $(BINDING_DLL)
	g++ -c ./sources/main.cpp
	g++ -o $@ main.o -L. -lbinding -lclipper -L lua-5.3.5/src/ -llua

$(BINDING_DLL) : $(CLIPPER_DLL)
	g++ -c -DBUILDING_CLIPPER_BINDING ./sources/clipper-binding.cpp
	g++ -shared -o $@ clipper-binding.o -L lua-5.3.5/src/ -llua

$(CLIPPER_DLL) : $(LUA_DLL)
	g++ -c -Duse_int32 ./clipper_ver6.4.2/cpp/clipper.cpp
	g++ -shared -o $@ clipper.o

$(LUA_DLL):
	cd ./lua-5.3.5/src/
	make mingw

clean :
	rm *.exe *.dll *.o