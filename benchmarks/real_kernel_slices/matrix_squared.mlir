func.func @matrix_squared(%mat: memref<3x3xf64>, %cst: f64) -> memref<3x3xf64> {
  affine.for %arg2 = 0 to 3 {
    affine.for %arg4 = 0 to 3 {
      %1 = affine.load %mat[%arg2, %arg4] : memref<3x3xf64>
      %2 = arith.mulf %1, %1 : f64
      affine.store %2, %mat[%arg2, %arg4] : memref<3x3xf64>
    }
  }
  return %mat : memref<3x3xf64>
}