CXX=g++
CXXFLAGS=-fPIC -shared -Wl,-soname,_caffe.so -DCPU_ONLY=1 -lcaffe 
INCLUDE=-I/usr/include/python3.6/ 
LIB=-L/usr/lib -L/usr/lib/x86_64-linux-gnu/

default : _caffe.so

app : 
	${CXX} ${CXXFLAGS} ${INCLUDE} _caffe.cpp -o _caffe.so

clean :
	rm _caffe.so *.o
