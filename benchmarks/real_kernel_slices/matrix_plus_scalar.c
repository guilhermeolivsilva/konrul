void matrix_plus_scalar(int* mat, int cst, int m, int n)
{
  for (int i = 0; i < m; ++i) {
    for (int j = 0; j < n; ++j) {
      mat[i * n + j] += cst;
    }
  }
}
