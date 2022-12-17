#include <limits.h>
#include <stdio.h>

#define N 6
#define M 6

int sumLR(int iterations, int matrix[iterations][iterations]);
int sumRL(int cels, int iterations, int matrix[iterations][iterations]);

int main() {
    int matrix[M][N];

    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            scanf("%d", &matrix[i][j]);
        }
    }
    int iterations = N;

    if (N>M)
    {
        iterations=M;
    }

    int result = sumLR(iterations, matrix);

    printf("\n");
    printf("%d ", result);
    printf("\n");

    result = sumRL(N, iterations, matrix);

    printf("\n");
    printf("%d ", result);
    printf("\n");

    return 0;
}

int sumLR(int iterations, int matrix[iterations][iterations]) {
    int sumLR = 0;
    int element=0;
    for (int i = 0; i < iterations; i++) {
        sumLR+=matrix[i][element];
        element++;
    }
    return sumLR;
}

int sumRL(int cels, int iterations, int matrix[iterations][iterations]) {
    int sumRL = 0;
    int element=N-1;
    for (int i = 0; i < iterations; i++) {
        sumRL+=matrix[i][element];
        element--;
    }
    return sumRL;
}