#include <iostream>
using namespace std;

const int MAX = 10010;

int main() {
    int n, a[MAX], ans = 0, x;
    cin >> n;
	for (int i = 0;i < n;i++) cin >> a[i];
    for (int i = 0;i < n;i++) {
        x = a[i];
        for (int j = i;j < n;j++) {
            x = min(x, a[j]);
            ans = max(ans, x * (j - i + 1));
        }
    }
    cout << ans << endl;
}