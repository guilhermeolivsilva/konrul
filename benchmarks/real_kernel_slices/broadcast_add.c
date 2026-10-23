void broadcast_add(int* mat, int* vec, int m, int n)
{
  for (int i = 0; i < m; ++i) {
    for (int j = 0; j < n; ++j) {
      mat[i * n + j] += vec[j];
    }
  }
}
