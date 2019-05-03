# distutils: sources = [src/animalcpplibrary/CCat.cpp]
# distutils: language = c++
# distutils: include_dirs = src/animalcpplibrary/
# cython: language_level=3

cimport c_cat
# from mammal import PyMammal
from mammal cimport PyMammal

cdef class PyCat(PyMammal):
    def __cinit__(self):
        if self.thisptr:
            del self.thisptr
        print('cinit Cat: allocating instance.')
        self.thisptr = new c_cat.CCat()

    def __dealloc__(self):
        if self.thisptr:
            print('dealloc Cat: deallocating instance')
            del self.thisptr

    def eat(self):
        if self.thisptr:
            (<c_cat.CCat*>self.thisptr).eat()
