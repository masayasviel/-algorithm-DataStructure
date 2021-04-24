#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

const int MAX = 100010;

int *C;
vector<vector<int>> graph;
vector<int> ans;
int cnt[MAX];

void dfs(int v, int p = -1) {
    if(cnt[C[v]] == 0) ans.push_back(v+1);
    cnt[C[v]]++;
    for (int u : graph[v]) {
        if (u == p) continue;
        dfs(u, v);
    }
    cnt[C[v]]--;
}

int main() {
    int N;
    cin >> N;
    C = new int[N];
    for (int i = 0;i < N;i++) cin >> C[i];
    graph.resize(N);
    for (int i = 0;i < N - 1;i++) {
        int a, b;
        cin >> a >> b;
        a--; b--;
        graph[a].push_back(b);
        graph[b].push_back(a);
    }
    dfs(0);
    sort(ans.begin(), ans.end());
    for (int v: ans) cout << v << endl;

    delete C;
    return 0;
}