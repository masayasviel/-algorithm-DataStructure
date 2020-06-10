#include <iostream>
using namespace std;

const int N = 5; 
int main() {
    int A[N];
    for(int i = 0;i < N;i++) cin >> A[i];
    int prev = A[0];
    bool ans = false;
    for(int i = 1;i < N;i++) {
        if(prev == A[i]) ans = true;
        prev = A[i];
    }
    cout << (ans ? "YES" : "NO") << endl;
}