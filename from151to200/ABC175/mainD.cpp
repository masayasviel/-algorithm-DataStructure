#include <iostream>
#include <vector>
using namespace std;

int main() {
    int n;
    long long k;
    int perm[5010];
    long long nums[5010];
    long long ans = -1e18;
    cin >> n >> k;
    for(int i = 0;i < n;i++) cin >> perm[i];
    for(int i = 0;i < n;i++) cin >> nums[i];

    for (int i = 0;i < n;i++) {
        long long s = nums[i];
        vector<long long> dp;
        dp.push_back(s);
        for(int idx_p = perm[i]-1;idx_p != i; idx_p = perm[idx_p]-1) {
            s += nums[idx_p];
            dp.push_back(s);
        }
        int len = dp.size();
        for(int j = 0;j < len;j++) {
            long long rest = k - j - 1;
			if(rest < 0) break;
			ans = max(ans, dp[j] + (rest / len) * max(s, 0LL));
        }
    }
    cout << ans << endl;
    return 0;
}