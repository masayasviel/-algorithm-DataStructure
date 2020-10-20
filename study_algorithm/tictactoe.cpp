#include <iostream>
using namespace std;

char board[3][3] = {
    {' ', ' ', ' '},
    {' ', ' ', ' '},
    {' ', ' ', ' '}
};

bool checkGame() {
    bool flag;
    for (int i = 0;i < 3; i++) {
        if (board[i][0] != ' ') continue;
        flag = (board[i][0] == board[i][1]) && (board[i][1] == board[i][2]) && (board[i][2] == board[i][0]);
        if (flag) return true;
    }
    for (int i = 0; i < 3; i++) {
        if (board[0][i] != ' ') continue;
        flag = (board[0][i] == board[1][i]) && (board[1][i] == board[2][i]) && (board[2][i] == board[0][i]);
        if (flag) return true;
    }
    flag = (board[0][0] == board[1][1]) && (board[1][1] == board[2][2]) && (board[2][2] == board[0][0]);
    if (flag) return true;
    flag = (board[0][2] == board[1][1]) && (board[1][1] == board[2][0]) && (board[2][0] == board[0][2]);
    return flag;
}

bool checkBoard(int x, int y) {
    return board[y][x] != ' ';
}

void printboard() {
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            printf("%c|", board[i][j]);
        }
        printf("\n");
    }
}

int main() {
    int x, y;
    int count = 0;
    while (count < 9 || !checkGame()) {
        cin >> x >> y;
        while (checkBoard(x, y)) {
            cin >> x >> y;
        }
        if(count % 2 == 0) {
            board[y][x] = 'o';
        } else {
            board[y][x] = 'x';
        }
        count++;
        printboard();
    }
}