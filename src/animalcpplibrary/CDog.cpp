#include "CDog.h"

CDog::CDog() : CMammal() {
    std::cout << "Dog being born.";
}

CDog::~CDog() {
    std::cout << "Dog dying.";
}

void CDog::eat() {
    std::cout << "Dog eating dog food.";
}
