#include <iostream>
using namespace std;

int main() {
    int n, input, inject = 0;
    int a[1010];
    cin >> n;
    for(int i = 0;i < n;i++) {
        cin >> input;
        a[i] = input;
        inject += input;
    }
    int ave = inject / n;
    for(int i = 0;i < n;i++) {
        cout << abs(a[i] - ave) << endl;
    }
}