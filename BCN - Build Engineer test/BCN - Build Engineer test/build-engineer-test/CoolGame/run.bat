
echo off

echo "Starting Project Compilation ... "

echo "Creating Build Folder  ...  Starting"
rmdir/S /Q build

mkdir build\test 

echo "Creating Build Folder  ... Done "

echo "Creating Test Folder ...  Starting"
REM rd /S /Q test

copy CMakeLists_tests.txt build\test /Y
ren build\test\CMakeLists_tests.txt CMakeLists.txt

echo "Creating Build Folder  ... Done "
cmake -S . -B Build -G "Unix Makefiles" .

cd build

make
make CTEST_OUTPUT_ON_FAILURE=1 test
REM make test VERBOSE=1

cd ..

