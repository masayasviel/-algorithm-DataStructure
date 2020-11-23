#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;

const long long INF = 1LL << 60;

int main() {
    int N;
    long long T;
    cin >> N >> T;
    vector<int> inputs(N+1);
    for (int i = 0;i < N;i++) cin >> inputs[i];

    // group A
    vector<long long> A;
    for (int bit = 0;bit < (1 << N/2);bit++) {
        long long sum = 0;
        for (int i = 0;i < (N/2);i++) {
            if (bit & (1LL << i)) sum += inputs[i];
        }
        A.push_back(sum);
    }

    // group B
    vector<long long> B;
    for (int bit = 0;bit < (1 << (N - N/2));bit++) {
        long long sum = 0;
        for (int i = 0;i < (N - N/2);i++) {
            if (bit & (1LL << i)) {
                sum += inputs[N/2 + i];
            }
        }
        B.push_back(sum);
    }
    sort(B.begin(), B.end());
    B.push_back(INF);

    long long ans = 0;
    for (long long a : A) {
        if (a > T) continue;
        auto it = upper_bound(B.begin(), B.end(), T - a) - B.begin() - 1;
        long long tmp = B[it] + a;
        ans = tmp > ans ? tmp : ans;
    }

    cout << ans << endl;
}