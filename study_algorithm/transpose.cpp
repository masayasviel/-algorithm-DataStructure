#include <iostream>
using namespace std;

const int HEIGTH = 10;
const int WIDTH = 15;

int main() {
   // constructor
   int **A = new int*[HEIGTH];
   int **A_t = new int*[WIDTH];
   for (int h = 0; h < HEIGTH; h++) {
      A[h] = new int[WIDTH];
      // 番号付け
      for (int w = 0; w < WIDTH; w++) {
         A[h][w] = h*WIDTH+w+1;
      }
   }
   for (int i = 0; i < WIDTH; i++) {
      A_t[i] = new int[HEIGTH];
   }

   // transpose
   int block_size = 8;
   for (int b = 0; b < WIDTH; b += block_size) {
      for (int y = 0; y < HEIGTH ; y++) {
         for (int i = 0; i < block_size; i++) {
            int x = min(b+i, WIDTH-1);
            A_t[x][y] = A[y][x];
            // printf("[%d, %d]\n", x, y);
         }
      }
   }

   // print
   for (int h = 0; h < WIDTH; h++) {
      for (int w = 0; w < HEIGTH; w++) {
         printf("%03d ", A_t[h][w]);
      }
      printf("\n");
   }   

   // destructor
   for (int i = 0; i < HEIGTH; i++) {
      delete[] A[i];
   }
   for (int i = 0; i < WIDTH; i++) {
      delete[] A_t[i];
   }
   delete[] A;
   delete[] A_t;
   return 0;
}