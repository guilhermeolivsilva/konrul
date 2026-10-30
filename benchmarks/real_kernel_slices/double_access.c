void double_access(int* vecA, int* vecB, int n)
{
  for (int i = 1; i < n; ++i) {
    vecB[i] += vecA[i] + vecA[i - 1];
  }
}
