#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int main() {
    string s;
    cin >> s;
    cout << 1 + count(s.begin(), s.end(), '+') - count(s.begin(), s.end(), '-') << endl;
}