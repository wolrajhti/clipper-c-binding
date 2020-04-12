.PHONY : dll
.PHONY : exe

DLL = clipper-binding.dll

EXE = clipper-binding.exe

dll: $(DLL)

$(DLL) :
	gcc -c -DBUILDING_CLIPPER_BINDING ./sources/clipper-binding.cpp
	gcc -m32 -shared -o $@ clipper-binding.o

exe : $(EXE)

$(EXE) :
	g++ -c ./sources/main.cpp
	g++ -o $@ main.o -L. -lclipper-binding

clean :
	rm *.exe *.dll *.o