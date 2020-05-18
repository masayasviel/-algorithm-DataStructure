#include <iostream>
#include <queue>
using namespace std;

const int not_achieve = -100;

char maze[100][100];
int reach[100][100];
queue<vector<int>> q;

void init(int& row, int& column, int& sy, int& sx, int& gy, int& gx) {
    cin >> row >> column;
    cin >> sy >> sx;
    cin >> gy >> gx;
    --sy; --sx; --gy; --gx;
    for(int i = 0;i < row;i++){
        for(int j = 0;j < column;j++){
            cin >> maze[i][j];
            reach[i][j] = not_achieve;
        }
    }
}

void print_maze(int row, int column) {
    for(int i = 0;i < row;i++){
        for(int j = 0;j < column;j++) printf("%c", maze[i][j]);
        printf("\n");
    }
}

void search(int x, int y, int dist) {
    if(reach[y][x] != not_achieve) return;
    if(maze[y][x] == '#') {
        reach[y][x] = -1;
        return;
    }
    q.push({x, y});
    reach[y][x] = dist + 1;
}

int main() {
    int row, column, sy, sx, gy, gx;

    init(row, column, sy, sx, gy, gx);

    // print_maze(row, column);

    reach[sy][sx] = 0;
    q.push({sx, sy});

    while(!q.empty()) {
        int x = q.front()[0];
        int y = q.front()[1];
        q.pop();
        int dist = reach[y][x];
        search(x-1, y, dist);
        search(x+1, y, dist);
        search(x, y-1, dist);
        search(x, y+1, dist);
    }

    cout << reach[gy][gx] << endl;
}