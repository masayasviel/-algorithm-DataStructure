#include <iostream>
#include <deque>
#include <tuple>
using namespace std;

typedef pair<int, int> ii;
const int MAX = 1010;
const int INF = 1000000000;
 
int main() {
    int H, W, sy, sx, gy, gx;
    int dx[4] = {0, 1, 0, -1}, dy[4] = {1, 0, -1, 0};
    int dist[MAX][MAX];
    char maze[MAX][MAX];
    bool vis[MAX][MAX];
    deque<ii> q;
    cin >> H >> W >> sy >> sx >> gy >> gx;
    sy--; sx--; gy--; gx--;
    for(int h = 0;h < H;h++){
        for(int w = 0;w < W;w++){
            dist[h][w] = INF;
            vis[h][w] = false;
            cin >> maze[h][w];
        }
    }
    q.push_front(ii(sx, sy));
    dist[sy][sx] = 0;
    while(!q.empty()) {
        int x, y;
        tie(x, y) = q.front();
        q.pop_front();
        if(vis[y][x]) continue;
        vis[y][x] = true;
        if(x == gx && y == gy) break;
        for(int i = 0;i < 4;i++) {
            int cx = x + dx[i], cy = y + dy[i];
            if(cx < 0 || cx >= W || cy < 0 || cy >= H) continue;
            if(maze[cy][cx] == '#') continue;
            if(dist[y][x] < dist[cy][cx]){
                dist[cy][cx] = dist[y][x];
                q.push_front(ii(cx, cy));
            }
        }
        for(int h = -2; h <= 2; h++){
            for(int w = -2; w <= 2; w++){
                int cx = x + w, cy = y + h;
                if(cx < 0 || cx >= W || cy < 0 || cy >= H) continue;
                if(maze[cy][cx] == '#') continue;
                if(dist[y][x] + 1 < dist[cy][cx]){
                    dist[cy][cx] = dist[y][x] + 1;
                    q.push_back(ii(cx, cy));
                }
            }
        }
    }
    if(dist[gy][gx] == INF) cout << -1 << endl;
    else cout << dist[gy][gx] << endl;
    return 0;
}