#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;

int main() {
    int N;
    cin >> N;
    vector<pair<int, int> > pairs(N);
    for(int i = 0;i < N;i++) {
        int a, b;
        cin >> a >> b;
        pairs[i] = make_pair(a, b);
    }
    sort(pairs.begin(), pairs.end(), [](pair<int, int> a, pair<int, int> b) {
        return a.second < b.second;
    });

    for(pair<int, int> v : pairs) {
        cout << v.first << " " << v.second << endl;
    }
}