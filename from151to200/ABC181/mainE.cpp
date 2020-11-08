#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

const int INF = 0x3fffffff;
 
int main() {
    int n, m;
    cin >> n >> m;
    vector<long long> h(n);
    vector<long long> w(m+2);
    for (int i = 0;i < n;i++) cin >> h[i];
    for (int i = 1;i <= m;i++) cin >> w[i];
    w[0] = -INF;
    w[m+1] = INF;
    sort(h.begin(), h.end());
    sort(w.begin(), w.end());
    vector<long long> forward_sum(n);
    vector<long long> backward_sum(n);

    // upto
    {
        long long current = 0;
        for (int i = 0;i < n;i++) {
            if (i % 2 == 1) current += abs(h[i] - h[i-1]);
            forward_sum[i] = current;
        }
    }

    // downto
    {
        long long current = 0;
        for (int i = 0;i < n;i++) {
            int ni = n-1-i;
            if (i % 2 == 1) current += abs(h[ni] - h[ni+1]);
            backward_sum[ni] = current;
        }
    }

    long long ans = INF;

    for (int i = 0;i < n;i++) {
        long long current = 0;
        {
            int j = lower_bound(w.begin(), w.end(), h[i]) - w.begin();
            current += min(w[j] - h[i], h[i] - w[j-1]);
        }
        current += forward_sum[i] + backward_sum[i];
        if (current < ans) ans = current;
    }

    cout << ans << endl;
}