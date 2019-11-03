#ifndef HELLO_CV_1_H_
#define HELLO_CV_1_H_
#include <string>
#include <iostream>
namespace hello_cv_1
{
class HelloCv_1
{
    public:
      HelloCv_1();
      ~HelloCv_1();
      std::string getMsgsContent(std::string say_something);
    private:
      std::string say_something; 
};
}
#endif
