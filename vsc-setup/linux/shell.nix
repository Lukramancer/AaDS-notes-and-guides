{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

pkgs.mkShell {
  buildInputs = [
    pkgs.gcc
    pkgs.gdb
    pkgs.vscode  # This is the standard, proprietary Microsoft VS Code release
    pkgs.vscodium
  ];

  shellHook = ''
    echo "=== C/C++ Development Environment ==="
    echo "GCC version: $(gcc --version | head -n 1)"
    echo "GDB version: $(gdb --version | head -n 1)"
    echo "VS Code: $(code --version | head -n 1)"
    echo "====================================="
  '';
}
