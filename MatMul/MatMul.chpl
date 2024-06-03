use Random;
use Time;

proc generateMatrix(n: int, m: int, seed=0) {
  const D = {1..n, 1..m};
  var A: [D] real;
  fillRandom(A, seed);
  return A;
}

proc generateMatrixDistributed(n: int, m: int, seed=0) {
  const D = {1..n, 1..m} dmapped blockDist({1..n, 1..m});
  var A: [D] real;
  fillRandom(A, seed);
  return A;
}

class Multiplier {
  proc name() do return "Base";
  proc matMul(A: [] real(64), B: [] real(64)) {
    writeln("Base class implementation");
    return A;
  }
}

class naiveMultiplier: Multiplier {
  override proc name() do return "Naive";
  override proc matMul(A: [] real(64), B: [] real(64)) {
    const D1 = A.domain;
    const D2 = B.domain;
    var C: [D1.dim(0), D2.dim(1)] real = 0;

    for i in D1.dim(0) {
      for j in D2.dim(1) {
        for k in D1.dim(1) {
          C[i, j] += A[i, k] * B[k, j];
        }
      }
    }
    return C;
  }
}

proc evaluate(in multiplier: Multiplier) {
  writeln("Evaluating ", multiplier.name());
  var s: stopwatch;
  var domainTriples = ((1000,1000,1000), (1000,2000,1000), (1000,10,1000), (1000,10,100), (100000, 1, 100));
  var totalFlops = 0;
  var totalTime = 0.0;

  for (m,n,p) in domainTriples {
    var A = generateMatrix(m, n, 0);
    var B = generateMatrix(n, p, 1);
    s.restart();
    var C = multiplier.matMul(A, B);
    s.stop();
    var flop = flopCount(A, B);
    var time = s.elapsed();
    var gflops = flop / time / 1e9;
    writeln(m, "x", n, "x", p, ": ", gflops);
    totalFlops += flop;
    totalTime += time;
  }
  var totalGflops = totalFlops / totalTime / 1e9;
  writeln("Total: ", totalGflops);
}



proc flopCount(A: [?D1] real, B: [?D2] real) {
  return (D1.shape(0) * D1.shape(1)) * (2 * D2.shape(1) - 1);
}

proc main() {
  evaluate(new naiveMultiplier());
}