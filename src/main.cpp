#include <iostream>
#include "calculator.h"

int main ()
{
	Calculator calc;
	std::cout << "Add(2, 3) = " << calc.Add (2, 3) << std::endl;
	std::cout << "Sub(5, 2) = " << calc.Sub (5, 2) << std::endl;
	return 0;
}