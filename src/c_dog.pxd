# cimport c_mammal


cdef extern from 'CDog.h':
    cdef cppclass CMammal:
        void run()
    cdef cppclass CDog(CMammal):
        void eat()
