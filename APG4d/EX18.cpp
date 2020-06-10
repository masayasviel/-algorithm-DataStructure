#include <iostream>
using namespace std;
 
int main() {
    int N, M, A, B;
    cin >> N >> M;
    char ans[110][110];
    for(int i = 0;i < 110;i++)
        for(int j = 0;j < 110;j++)
            ans[i][j] = '-';

    for(int i = 0;i < M;i++) {
        cin >> A >> B;
        A--; B--;
        ans[A][B] = 'o';
        ans[B][A] = 'x';
    }
    
    for(int i = 0;i < N;i++){
        for(int j = 0;j < N;j++) {
            printf("%c", ans[i][j]);
            if(j != (N-1)) printf(" ");
        }
        printf("\n");
    }            
}