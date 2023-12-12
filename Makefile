SHELL := powershell.exe

# Compiler options
TSC = tsc
TSFLAGS = --outDir build

# Default target
all: build

# Compile TypeScript files
build: $(wildcard *.ts)
	$(TSC) $(TSFLAGS) $^

# Clean build directory
clean:
	$(SHELL) -Command "if (Test-Path build) { rm -Recurse -Force build }"

.PHONY: all build clean
