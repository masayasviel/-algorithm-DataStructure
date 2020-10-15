#include <iostream>
using namespace std;

const int MOD = 1000000007;
const int MAX_SIZE = 2010;

int H, W;

char S[MAX_SIZE][MAX_SIZE];
int Left[MAX_SIZE][MAX_SIZE];
int Right[MAX_SIZE][MAX_SIZE];
int Up[MAX_SIZE][MAX_SIZE];
int Down[MAX_SIZE][MAX_SIZE];

void init(int& K) {
    cin >> H >> W;
    for (int h = 0;h < H;h++) {
        for (int w = 0;w < W;w++) {
            cin >> S[h][w];
            if (S[h][w] == '.') K++;
        }
    }
}

void pre_left() {
    for (int i = 0; i < H; ++i) {
        int cur = 0;
        for (int j = 0; j < W; ++j) {
            if (S[i][j] == '#') cur = 0;
            else ++cur;
            Left[i][j] = cur;
        }
    }
}

void pre_right() {
    for (int i = 0; i < H; ++i) {
        int cur = 0;
        for (int j = W-1; j >= 0; --j) {
            if (S[i][j] == '#') cur = 0;
            else ++cur;
            Right[i][j] = cur;
        }
    }
}

void pre_up() {
    for (int j = 0; j < W; ++j) {
        int cur = 0;
        for (int i = 0; i < H; ++i) {
            if (S[i][j] == '#') cur = 0;
            else ++cur;
            Up[i][j] = cur;
        }
    }
}

void pre_down() {
    for (int j = 0; j < W; ++j) {
        int cur = 0;
        for (int i = H-1; i >= 0; --i) {
            if (S[i][j] == '#') cur = 0;
            else ++cur;
            Down[i][j] = cur;
        }
    }
}

long long mod(long long val) {
    long long res = val % MOD;
    if (res < 0) res += MOD;
    return res;
}

long long modpow(long long a, long long n) {
    long long res = 1;
    while (n > 0) {
        if (n & 1) res = res * a % MOD;
        a = a * a % MOD;
        n >>= 1;
    }
    return res;
}

int main() {
    int K = 0;
    long long ans = 0LL;
    init(K);

    pre_left();
    pre_right();
    pre_up();
    pre_down();

    for (int h = 0;h < H;h++) {
        for (int w = 0;w < W;w++) {
            if (S[h][w] == '#') continue;
            int tmp = Left[h][w] + Right[h][w] + Up[h][w] + Down[h][w] - 3;
            ans += mod(modpow(2, K) - modpow(2, K-tmp));
            ans %= MOD;
        }
    }

    cout << ans << endl;
}