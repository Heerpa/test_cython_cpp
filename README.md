# test_cython_cpp

Tests the integration of a c++ project (with inheritance) into python

In the C++ library, there is a CMammal class that is inherited by
CCat and CDog classes.


# issues:
- multiple includes:
  - with the naive c++-setup:  (this is Commit: a0876b43af3f9a53c62e779ed77b306cf6d2256f)
    - CCat.h includes CMammal.h in order for CCat to inherit CMammal
    - c_mammal.pxd includes CMammal.h
    - c_cat.pxd includes CCat.h
    - -> CMammal.h is included twice, so the compiler complains about multiple definitions of CMammal
  - one way to avoid this would be to (this is Commit: 97eeee45ccf103574ae454bef833b5a23c46bf4a)
    - define it together with CCat in the "cdef extern from 'CCat.h'" block of c_cat.pxd. as CCat.h includes CMammal.h, we have access to it here and avoid the multiple definitions above
    - and do the same with the Dog. So, we need to copy all Cython-Mammal code to all inheriting classes.
  - -> are there alternatives?




# interesting and relevant posts
- undefined symbols, doesn't help here: https://stackoverflow.com/questions/45653307/cython-undefined-symbol-with-c-wrapper/45655654#45655654
- cython and c-inheritance: https://stackoverflow.com/questions/10298371/cython-and-c-inheritance
- http://docs.cython.org/en/latest/src/userguide/sharing_declarations.html#sharing-extension-types
