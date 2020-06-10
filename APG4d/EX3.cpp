#include <iostream>
#include <vector>
#include <numeric>
using namespace std;

int main() {
    vector<int> v(100);
    iota(v.begin(),v.end(), 1);
    cout << accumulate(v.begin(), v.end(), 0) << endl;
}