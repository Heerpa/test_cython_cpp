#include "CCat.h"

CCat::CCat() : CMammal() {
    std::cout << "Cat being born.";
}

CCat::~CCat() {
    std::cout << "Cat dying.";
}

void CCat::eat() {
    std::cout << "Cat eating mice.";
}
