## Prompt 4: Matrix Multiplication Playground

The final challenge is an open ended one. Your task is a classic one: speed up matrix multiplication. In `MatMul.chpl`, you will find functions for generating matrices of different shapes; a naive, sequential, single-locale implementation of matrix multiplication; and profiling code that will evaluate the throughput of your solution.

Your goal is to maximize the throughput of the matrix multiplication. Some directions to consider include parallelizing with shared memory and distributed parallelism, tiling transformations, and GPU execution. Consider both the average performance across all matrices and the performance for specific matrix shapes.

When compiling, don't forget the `--fast` flag!

#### Adding a Multiplier

To add an implementation of a matrix multiplication algorithm, create a new class definition that is a subclass of the `Multiplier` class. 
Implement a `name` method that returns the name of your multiplication approach and then implement your multiplication within the `matMul` method. 
Finally, add a call to `evaluate` to the body of the `main` method, passing an instance of your newly defined class.

### Useful Documentation Links

- [Forall Loops Primer](https://chapel-lang.org/docs/primers/forallLoops.html)
- [Reductions Primer](https://chapel-lang.org/docs/primers/reductions.html)
- [GPU Programming Technical Notes](https://chapel-lang.org/docs/technotes/gpu.html)
- [GPU Module](https://chapel-lang.org/docs/modules/standard/GPU.html)
- [Distributions Primer](https://chapel-lang.org/docs/primers/distributions.html)
- [Parallel Iterators Primer](https://chapel-lang.org/docs/primers/parIters.html)
- [Memory Consistency Model](https://chapel-lang.org/docs/language/spec/memory-consistency-model.html)