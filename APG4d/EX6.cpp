#include <iostream>
using namespace std;

int main() {
    int a, b;
    char op;
    cin >> a >> op >> b;
    switch(op) {
    case '+':
        cout << a+b << endl;
        break;
    case '-':
        cout << a-b << endl;
        break;
    case '*':
        cout << a*b << endl;
        break;
    case '/':
        if(b == 0) cout << "error" << endl;
        else cout << a/b << endl;
        break;
    default:
        cout << "error" << endl;
        break;
    }
}