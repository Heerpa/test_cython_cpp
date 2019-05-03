cimport c_mammal


cdef extern from 'CCat.h':
    # cdef cppclass CMammal:
    #     void run()
    cdef cppclass CCat(c_mammal.CMammal):
        void eat()
