#include <iostream>
using namespace std;
 
int main() {
    int n, a, b;
    char op;
    cin >> n >> a;
    for(int i = 1; i <= n;i++) {
        cin >> op >> b;
        switch(op) {
            case '+':
                a += b;
                cout << i << ":" << a << endl;
                break;
            case '-':
                a -= b;
                cout << i << ":"  << a << endl;
                break;
            case '*':
                a *= b;
                cout << i << ":" << a << endl;
                break;
            case '/':
                if(b == 0) {
                    cout << "error" << endl;
                    return 0;
                } else {
                    a /= b;
                    cout << i << ":" << a << endl;
                }
                break;
            default:
                cout << "error" << endl;
                return 0;
        }
    }
}