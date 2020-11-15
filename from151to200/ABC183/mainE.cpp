#include <iostream>
using namespace std;

const int MOD = 1000000007;
const int MAX = 2010;

int main() {
    int H, W;
    char S[MAX][MAX];
    cin >> H >> W;
    for (int y = 0;y < H;y++) {
        for (int x = 0;x < W;x++) {
            cin >> S[y][x];
        }
    }

    int dp[MAX][MAX];
    long long row[MAX][MAX], column[MAX][MAX], slant[MAX][MAX];

    dp[0][0] = 1;
    
    for (int y = 0;y < H;y++) {
        for (int x = 0;x < W;x++) {
            if (x == 0 && y == 0) continue;
            if (S[y][x] == '#') continue;
            if (x > 0) row[y][x] = (row[y][x-1] + dp[y][x-1]) % MOD;
            if (y > 0) column[y][x] = (column[y-1][x] + dp[y-1][x]) % MOD;
            if (x > 0 && y > 0) slant[y][x] = (slant[y-1][x-1] + dp[y-1][x-1]) % MOD;
            dp[y][x] = (row[y][x] + column[y][x] + slant[y][x]) % MOD;
        }
    }

    cout << dp[H-1][W-1] << endl;
}