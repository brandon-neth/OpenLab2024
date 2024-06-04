## Prompt 1: Conway's Game of Life

The first challenge is to implement Conway's Game of Life in Chapel. Your program should read in an input file detailing the shape of the board and its initial conditions, then progress the simulation a given number of steps.

#### The Rules
From [Wikipedia](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life):

The universe of the Game of Life is [an infinite, two-dimensional orthogonal grid of square](https://en.wikipedia.org/wiki/Square_tiling "Square tiling") _cells_, each of which is in one of two possible states, _live_ or _dead_ (or _populated_ and _unpopulated_, respectively). Every cell interacts with its eight _[neighbors](https://en.wikipedia.org/wiki/Moore_neighborhood "Moore neighborhood")_, which are the cells that are horizontally, vertically, or diagonally adjacent. At each step in time, the following transitions occur:
1. Any alive cell with fewer than two live neighbors dies, as if by underpopulation.
2. Any alive cell with two or three live neighbors lives on to the next generation.
3. Any alive cell with more than three live neighbors dies, as if by overpopulation.
4. Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.

#### Input Files
The input files, found in this directory with the extension `.life`, are formatted as follows. The first line contains two positive integers denoting the shape of the board. Each subsequent line contains the 1-indexed position of a cell that should start in the alive state. 


#### Bonus: Visualizer
Once you have your code that progresses the simulation, you can write the simulation as a `.mp4` with the help of the following code. Make sure you are using an array of booleans to represent your game. Furthermore, ensure you have access to the `ffmpeg` command on your machine.

```
use Image;

config const imageScale:int = 4;
var img = new mediaPipe("life.mp4", imageType.bmp);

proc processFrameData(data) do
  return scale(
           interpolateColor(data, 0x000000, 0x00FF00, (false, true)),
           imageScale
         );


//add the following line to the end of your simulation loop
img.writeFrame(processFrameData(/*YourGridVariable*/));
```
