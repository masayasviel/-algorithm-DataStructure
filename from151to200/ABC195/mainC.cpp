#include <iostream>
using namespace std;

int main() {
    long long n;
    cin >> n;
    long long x = 1000;
    long long ans = 0;
    while(n >= x) {
        ans += n-x+1;
        x *= 1000;
    }
    cout << ans << endl;
    return 0;
}