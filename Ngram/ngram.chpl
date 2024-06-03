config const filename = "Metamorphasis.txt";
config const inputType = "text";
config const n = 4;


proc processTextFile(inputFile) {
  /* Your code here */
}


proc processGeneFile(inputFile) {
  /* Your code here */
}


proc processFastaFile(inputFile) {
  /* Your code here, bonus! */
}


proc main() {
  var file = open(filename);
  select inputType {
    when "text" do processTextFile(file);
    when "gene" do processGeneFile(file);
    when "fasta" do processFastaFile(file)
    otherwise do writeln("Input file type not supported: ", inputType);
  }
}