cimport c_mammal

cdef extern from 'animnalcpplibrary/CCat.h':
    cdef cppclass CCat:c_mammal.CMammal
        void eat()
