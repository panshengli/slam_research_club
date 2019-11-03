#include "hello_cv_1.h"
#include <string>
#include <iostream>

int main()
{
    hello_cv_1::HelloCv_1 helloCv_1_;
    
    std::cout << helloCv_1_.getMsgsContent("Hello_OpenCV") << std::endl;
    return 0;
}

