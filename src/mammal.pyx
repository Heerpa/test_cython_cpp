# distutils: sources = [src/animalcpplibrary/CMammal.cpp]
# distutils: language = c++
# distutils: include_dirs = src/animalcpplibrary/
# cython: language_level=3

cimport c_mammal

cdef class PyMammal:
    cdef c_cat.CMammal* thisptr

    def run(self):
        if self.thisptr:
            self.thisptr.run()
