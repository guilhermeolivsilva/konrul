int matrix_sum(int* mat, int m, int n)
{
  int sum = 0;
  for (int i = 0; i < m; ++i) {
    for (int j = 0; j < n; ++j) {
      sum += mat[i * n + j];
    }
  }
  return sum;
}
