#include "doctest.h"
#include "triangle.h"

TEST_CASE("Testing triangles")
{
    CHECK(triangle(5) == "*\n**\n***\n****\n*****\n");
}