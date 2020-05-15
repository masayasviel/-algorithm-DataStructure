#include <iostream>
using namespace std;

int main() {
    int N, a, ans = 0;
    cin >> N;
    for(int i = 0; i < N; i++) {
        cin >> a;
        while((a & 1) != 1) {
            a /= 2;
            ans += 1;
        }
    }
    cout << ans << endl;
}