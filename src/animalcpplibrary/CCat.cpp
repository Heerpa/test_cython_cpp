#include "CCat.h"

CCat::CCat() : CMammal() {
    cout << "Cat being born."
}

CCat::~CCat() {
    cout << "Cat dying."
}

void CCat::eat() {
    cout << "Cat eating mice."
}
