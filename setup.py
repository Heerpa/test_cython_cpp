from Cython.Build import cythonize
from setuptools import setup, find_packages, Extension


setup(
    name="animals",
    author="myself",
    packages=find_packages(exclude=['tests']),
    long_description='very long description',
    install_requires=['cython'],
    ext_modules=cythonize(
        [
         Extension("animals.cat", ["src/cat.pyx"]),
         ]),
    include_package_data=True,
    zip_safe=False,
)
