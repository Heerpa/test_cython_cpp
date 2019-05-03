# distutils: sources = src/animalcpplibrary/CCat.cpp
# distutils: language = c++
# distutils: include_dirs = src/animalcpplibrary/
# cython: language_level=3

cimport c_cat

cdef class PyCat:
    cdef c_cat.CCat* thisptr

    def __cinit__(self):
        print('cinit Cat: allocating instance.')
        self.thisptr = new c_cat.CCat()

    def __dealloc__(self):
        if self.thisptr:
            print('dealloc Cat: deallocating instance')
            del self.thisptr

    def eat(self):
        if self.thisptr:
            self.thisptr.eat()
