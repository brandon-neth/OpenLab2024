## Prompt 5: C+Chapel Interoperability

The fifth challenge uses Chapel's C interoperability features to write a Chapel program that makes calls to the Rebound library, a library for N-body simulations. 

### Setup

#### Clone and Build the Rebound Library

To continue with this challenge, you will need to download and build the `rebound.o` shared library. The following sequence of commands should suffice, run from outside of this repository. This will also set the `REBOUND_SRC` environment variable, which will be used later on.

```
git clone https://github.com/brandon-neth/rebound.git
cd rebound/src
make
export REBOUND_SRC=$(pwd)
```

This should produce the `librebound.so` file within the `src` directory of rebound. 

#### Build and Link with Rebound Library

Once the Rebound library is built, we can compile the starting Chapel driver code, found in `driver.chpl`, with the following command run from this directory:
```
chpl -I$REBOUND_SRC -L$REBOUND_SRC driver.chpl -lrebound
```

### Writing Interoperating Code

Once you've got the driver building and running, you're set to go! Try recreating some of the examples using Rebound in the [examples directory](https://github.com/brandon-neth/rebound/tree/main/examples). [This](https://github.com/brandon-neth/rebound/tree/main/examples/simplest) is a good one to get started with. 

Once you've created an example or two, consider writing some Chapel code that implements similar functionality using the Rebound data types. How does the code structure compare to the C library code? Can you parallelize the computation without porting the entire library? Let your creativity guide you, and have fun!



