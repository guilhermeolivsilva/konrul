module {
  func.func @matrix_sum(%mat: memref<3x3xf64>) -> memref<f64> {
    %sum = memref.alloca() : memref<f64>
    %c0 = arith.constant 0.0 : f64
    affine.store %c0, %sum[] : memref<f64>

    affine.for %i = 0 to 3 {
      affine.for %j = 0 to 3 {
        %0 = affine.load %sum[] : memref<f64>
        %1 = affine.load %mat[%i, %j] : memref<3x3xf64>
        %2 = arith.addf %0, %1 : f64
        affine.store %2, %sum[] : memref<f64>
      }
    }
    return %sum : memref<f64>
  }
}
