#include <iostream>
#define DOCTEST_CONFIG_IMPLEMENT
#include "doctest.h"
#include "shapes.h"
#include "triangle.h"

using std::cout;
using std::endl;
using std::string;

int main()
{
  string s;

  s = box(4,3);
  cout << s << endl;

  s = triangle(5);
  cout << s << endl;
  return 0;
}
