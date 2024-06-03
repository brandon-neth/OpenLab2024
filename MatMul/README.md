## Prompt 4: Matrix Multiplication Playground

The final challenge is an open ended one. Your task is a classic one: speed up matrix multiplication. In `MatMul.chpl`, you will find functions for generating matrices of different shapes; a naive, sequential, single-locale implementation of matrix multiplication; and profiling code that will evaluate the throughput of your solution.

Your goal is to maximize the throughput of the matrix multiplication. Some directions to consider include parallelizing with shared memory and distributed parallelism, tiling transformations, and GPU execution. Consider both the average performance across all matrices and the performance for specific matrix shapes.

