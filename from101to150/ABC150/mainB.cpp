#include <iostream>
#include <string>
using namespace std;

int main() {
    int N, ans = 0;
    string S;
    cin >> N;
    cin >> S;
    for(int i = 0;i < N-2;i++) {
        if(S[i] == 'A' && S[i+1] == 'B' && S[i+2] == 'C') ans++;
    }
    cout << ans << endl;
}