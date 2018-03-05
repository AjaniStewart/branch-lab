#include <string>

std::string triangle(int height)
{
    std::string s = "";
    for (int i = 0; i < height; ++i)
    {
        for (int j = 0; j < i + 1; ++j)
            s += "*";
        s += "\n";
    }   
    return s;
}

