export FLAGS="-ggdb -m32 -Wno-deprecated -I/System/Library/Frameworks/JavaVM.framework/Headers/"
g++ $FLAGS -c -o Model.o Model.cpp
g++ $FLAGS -c -o PPMd.o PPMd.cpp
g++ $FLAGS -dynamiclib Model.o PPMd.o -o libnativeppm.jnilib -framework JavaVM
cp libnativeppm.jnilib ../libs/
rm *.o
# Use -d32 in java runtime command
