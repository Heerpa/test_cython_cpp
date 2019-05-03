# distutils: sources = [src/animalcpplibrary/CDog.cpp, src/animalcpplibrary/CMammal.cpp]
# distutils: language = c++
# distutils: include_dirs = src/animalcpplibrary/
# cython: language_level=3

cimport c_dog

cdef class PyMammal:
    cdef c_cat.CMammal* thisptr

    def run(self):
        if self.thisptr:
            self.thisptr.run()


cdef class PyDog(PyMammal):
    def __cinit__(self):
        if self.thisptr:
            del self.thisptr
        print('cinit Dog: allocating instance.')
        self.thisptr = new c_cat.CDog()

    def __dealloc__(self):
        if self.thisptr:
            print('dealloc Dog: deallocating instance')
            del self.thisptr

    def eat(self):
        if self.thisptr:
            (<c_cat.CDog*>self.thisptr).eat()
