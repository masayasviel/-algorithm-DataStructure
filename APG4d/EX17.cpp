#include <iostream>
using namespace std;
 
int main() {
    int N, S;
    cin >> N >> S;
    int A[101], P[101], ans = 0;
    for(int i = 0;i < N;i++) cin >> A[i];
    for(int i = 0;i < N;i++) cin >> P[i];

    for(int i = 0;i < N;i++) {
        for(int j = 0;j < N;j++) {
            if(A[i] + P[j] == S) ans++;
        }
    }

    cout << ans << endl;
}