#include <gtest/gtest.h>

#include <armadillo>

#include <iostream>

TEST (Foo, bar)
{
}

int main()
{
    using namespace arma;
    using namespace std;

    mat A = randu<mat>(4, 5);
    cout << A << endl;
}
