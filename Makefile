.PHONY : dll
.PHONY : exe

DLL = clipper-binding.dll

EXE = clipper-binding.exe

dll: $(DLL)

$(DLL) :
	g++ -m32 -c -DBUILDING_CLIPPER_BINDING ./sources/clipper-binding.cpp
	g++ -m32 -shared -o $@ clipper-binding.o

exe : $(EXE)

$(EXE) :
	g++ -c ./sources/main.cpp
	g++ -o $@ main.o -L. -lclipper-binding

clean :
	rm *.exe *.dll *.o