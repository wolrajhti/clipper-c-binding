.PHONY : dll
.PHONY : exe

DLL = clipper-binding.dll

EXE = clipper-binding.exe

dll: $(DLL)

$(DLL) :
	gcc -c -DBUILDING_CLIPPER_BINDING clipper-binding.cpp
	gcc -m32 -shared -o $@ clipper-binding.o -Wl,--out-implib,libclipper-binding.a

exe : $(EXE)

$(EXE) :
	g++ -c main.cpp
	g++ -o $@ main.o -L. -lclipper-binding