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

### Part 1: Simple Problem

