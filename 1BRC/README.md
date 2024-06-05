## Prompt 2: The 1 Billion Row Challenge

The second challenge is to implement a solution to the [1 billion row challenge](https://1brc.dev/). This means writing a program that reads temperature measurements and calculates the min, max, and mean temperature at each weather station. 

You can find the challenge at [this repository](https://github.com/gunnarmorling/1brc/tree/main). We have included two input files in this directory (`1000.txt` and `1000000.txt`) to get you started. If you want to create more measurement files, there is a python script in the 1BRC repository in the `src/main/python` directory. 


Try out different optimizations: parallelization, aggregation, distribution, perhaps even GPUization!

### Useful Documentation Links

- [IO Module](https://chapel-lang.org/docs/modules/standard/IO.html)
- [Map Module](https://chapel-lang.org/docs/modules/standard/Map.html)
- [Regex Module](https://chapel-lang.org/docs/modules/standard/Regex.html)
- [ConcurrentMap Module](https://chapel-lang.org/docs/modules/packages/ConcurrentMap.html)
- [ParallelIO Module](https://chapel-lang.org/docs/modules/packages/ParallelIO.html)