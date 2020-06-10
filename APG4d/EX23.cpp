#include <iostream>
#include <map>

using namespace std;

int main() {
    int N, x;
    cin >> N;
    map<int, int> hash;
    for(int i = 0;i < N;i++) {
        cin >> x;
        if(hash.count(x)) {
            hash[x] += 1;
        } else {
            hash[x] = 1;
        }
    }
    int ans_key, ans_value = -1;
    for(pair<int, int> x : hash) {
        if(x.second > ans_value) tie(ans_key, ans_value) = x;
    }

    cout << ans_key << " " << ans_value << endl;
}