func.func @broadcast_add(%mat: memref<3x3xf64>, %vec: memref<3xf64>) -> memref<3x3xf64> {
  affine.for %arg1 = 0 to 3 {
    affine.for %arg3 = 0 to 3 {
      %0 = affine.load %mat[%arg1, %arg3] : memref<3x3xf64>
      %1 = affine.load %vec[%arg3] : memref<3xf64>
      %2 = arith.addf %0, %1 : f64
      affine.store %2, %mat[%arg1, %arg3] : memref<3x3xf64>
    }
  }
  return %mat : memref<3x3xf64>
}