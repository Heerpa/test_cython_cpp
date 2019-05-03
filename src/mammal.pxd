cimport c_mammal

cdef class PyMammal:
    cdef c_mammal.CMammal* thisptr

    cdef void run(self)
