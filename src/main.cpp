#include "calculator.h"
#include <iostream>

int main()
{
  std::cout << "Hello\n";

  calculator calc;
  double d1,d2;
  std::cin >> d1 >>d2;
  std::cout << "sum of your numbers is: ";
  std::cout << calc.Add(d1, d2)<<"\n";

  std::cin >> d1 >>d2;
  std::cout << "result of multiplication of your numbers is: ";
  std::cout << calc.Mul(d1, d2)<<"\n";

}