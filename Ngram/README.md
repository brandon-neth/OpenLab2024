## Prompt 3: N-gram Counting

The third challenge is to implement an n-gram counting program that reads an input file and counts the unique n-grams. Your program should output the number of unique n-grams and the 10 most common ones. 

An n-gram is a sequence of n symbols. For this challenge, there are two input types: text corpora and gene data. For the text corpora, the symbols to consider are individual words. For the gene data, the symbols are the four nucleotides (A, T, C, and G).

#### Program Inputs

You will find the start to the solution in the `ngram.chpl` file in this directory. Because text and gene corpora are formatted differently, your solution will need to account for both. Text corpora are space separated strings, while gene corpora are unseparated characters.

The input file, file type, and value to use for `n` are provided to the program as configuration constants, which can be supplied as command line arguments. For example, to calculate the 7-grams of the gene file `small_genes.txt`, you would run the command `./ngram --filename=small_genes.txt --inputType=gene --n=7`.

#### Bonus: Alternative Gene Data Format

A common format for representing nucleotide sequences is the [FASTA format](https://zhanggroup.org/FASTA/). This format can also represent peptide sequences. For an extra challenge, implement a reader that processes files in FASTA format. Some examples are included in this directory with the `.fasta` extension.


### Useful Documentation Links

- [IO Module](https://chapel-lang.org/docs/modules/standard/IO.html)
- [Configuration Variables](https://chapel-lang.org/docs/language/spec/variables.html#configuration-variables)
- [ConcurrentMap Module](https://chapel-lang.org/docs/modules/packages/ConcurrentMap.html)
- [ParallelIO Module](https://chapel-lang.org/docs/modules/packages/ParallelIO.html)