# chisel-toolchain-dockerfile

This Dockerfile is designed for FPGA development using the Chisel HDL.

## Build

```bash
docker build -t chisel-fpga-toolchain .
```

## Run

```bash
docker run --rm -it -u $UID -v $PWD:/project/ -w="/project" chisel-fpga-toolchain
```

### Included Components

- **Java Development Kit (JDK):** OpenJDK 8
- **Additional Tools:** curl, wget
- **sbt (Scala Build Tool):** Installed using coursier
- **firrtl (FIRRTL Compiler):** Downloaded from Circt GitHub releases
