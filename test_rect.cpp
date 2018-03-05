#include "doctest.h"
#include "rect.h"
#include <string>

using namespace std;

TEST_CASE("Testing Box")
{
    string s = box(4, 3);
    CHECK(s == "****\n****\n****\n");
}