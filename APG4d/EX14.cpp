#include <iostream>
using namespace std;

int main() {
    int inputs[3];
    for(int i = 0;i < 3;i++) cin >> inputs[i];
    int ans_max = -1;
    int ans_min = 1000;
    for(int v : inputs) {
        ans_max = v > ans_max ? v : ans_max;
        ans_min = ans_min > v ? v : ans_min;
    }
    cout << ans_max - ans_min << endl;
}