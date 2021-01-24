#include <iostream>
#include <cstring>
using namespace std;

const int MAX = 10010;

class SparseTable {
private:
    const int siz;
    int arr[MAX];
    int *log_table;
    int **table;
public:
    /**
     * @param n 配列のサイズ
     * @param arr 配列
     */
    SparseTable(int n, int a[]): siz(n) {
        memcpy(arr, a, sizeof(arr));
        log_table = new int[siz+1]();
        for(int i = 2;i < siz+1;i++) log_table[i] = log_table[i >> 1] + 1;
        table = new int*[siz];
        for (int i = 0; i < siz; i++) {
            table[i] = new int[log_table[siz]+1]();
            table[i][0] = i;
        }

        for (int k = 1;(1 << k) <= siz; k++) {
			for (int i = 0; i + (1 << k) <= siz; i++) {
				int first = table[i][k-1];
				int second = table[i + (1 << (k-1))][k-1];
				if (arr[first] < arr[second]) {
					table[i][k] = first;
				} else {
					table[i][k] = second;
				}

			}
		}
    };
    ~SparseTable() {
        delete[] log_table;
        for (int i = 0; i < siz; i++) {
            delete[] table[i];
        }
    };
    /**
     * 区間[s..t]内の最小値を求める
     * @param s left
     * @param t right
     * @return 最小値のインデックス
     */
    int query(int s, int t) {
        int d = t - s + 1;
		int k = log_table[d];
        if (arr[table[s][k]] < arr[table[t - (1 << k) + 1][k]]) {
			return table[s][k];
		} else {
			return table[t - (1 << k) + 1][k];
		}
    }
};


int main() {
    int n, a[MAX], i, ans = 0;
    cin >> n;
	for (int i = 0;i < n;i++) cin >> a[i];
    SparseTable sparse_table(n, a);
    for (int left = 0;left < n;left++) {
        for (int right = left;right < n;right++) {
            i = sparse_table.query(left, right);
            ans = max(ans, a[i] * (right-left+1));
        }
    }
    cout << ans << endl;
}