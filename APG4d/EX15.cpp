#include <iostream>
using namespace std;

void sum_score(int& n, int& x) {
    int tmp;
    for(int i = 0;i < n;i++) {
        cin >> tmp;
        x += tmp;
    }
}
 
int main() {
    int n, a = 0, b = 0, c = 0;
    cin >> n;
    sum_score(n, a);
    sum_score(n, b);
    sum_score(n, c);
    cout << a * b * c << endl;
}