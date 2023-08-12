# After installing nix, invoke nix-shell in the directory containing this file

{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-23.05.tar.gz") {} }:

pkgs.mkShell {
  buildInputs = [
    # Use the Node package to provide our JS deps
    pkgs.nodejs
    # JS build dependencies
    pkgs.nodePackages.create-react-app
    # Yarn for dependency management
    pkgs.yarn
  ];
}
