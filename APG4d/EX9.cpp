#include <iostream>
using namespace std;
 
int main() {
    int x, a, b;
    cin >> x >> a >> b;
    int ans1 = x + 1;
    int ans2 = ans1 * (a+b);
    int ans3 = ans2 * ans2;
    int ans4 = ans3 - 1;
    cout << ans1 << "\n" << ans2 << "\n" << ans3 << "\n" << ans4 << endl;
}