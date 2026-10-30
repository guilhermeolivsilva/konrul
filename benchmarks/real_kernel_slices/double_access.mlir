module {
  func.func @double_access(%arg0: memref<10x10xf32>, %arg1: memref<10x10xf32>) {
    affine.for %arg2 = 0 to 10 {
      affine.for %arg3 = 1 to 10 step 2 {
        %11 = affine.load %arg0[%arg2, %arg3 - 1] : memref<10x10xf32>
        %12 = affine.load %arg0[%arg2, %arg3] : memref<10x10xf32>
        %15 = arith.addf %11, %12 : f32
        affine.store %15, %arg1[%arg2, %arg3] : memref<10x10xf32>
      }
    }
    return
  }
}