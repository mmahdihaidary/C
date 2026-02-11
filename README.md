# C Project Build Guide

## Overview
A simple C project demonstrating build configurations with both CMake and Make build systems.

---

## Building with CMake

### Quick Start
```bash
# Generate build files and compile
cmake -B build -G Ninja && cmake --build build

# Run the executable
./build/hello       # Linux/Mac
.\build\hello.exe   # Windows
```

### Step-by-Step Instructions
1. Generate build files

```bash
cmake -B build -G Ninja
# This creates a build/ directory with Ninja build files.
```

2. Compile the project

```bash
cmake --build build
```

Or navigate to build directory and use Ninja directly:

```bash
cd build && ninja
```

3. Run the executable
The compiled binary will be in the build/ directory:

- Windows: build\hello.exe
- Linux/Mac: build/hello


### Remove build directory and start fresh
```bash
rm -rf build                    # Linux/Mac
rm -r build -Force              # Windows PowerShell

cmake -B build -G Ninja
cmake --build build
```


## Building with Make
Quick Start

```bash
make run
```

#### Available Commands

```bash
make          # Compile the project
make run      # Compile and run the executable
make clean    # Remove all build artifacts
make test     # Compile and run with test flag
```

### Manual Steps

```bash
# Build the project
make

# Run the executable
./hello       # Linux/Mac
.\hello.exe   # Windows
```
