#include <iostream>
#include <string>
using namespace std;
 
int main() {
    int pattern, price, N;
    string text;
    cin >> pattern;
    if(pattern == 1) {
        cin >> price;
    } else {
        cin >> text >> price;
        cout << text << "!" << endl;
    }
    cin >> N;
    cout << price * N << endl;
}