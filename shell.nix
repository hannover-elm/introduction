{ pkgs ? import <nixpkgs> {} }:
with pkgs; mkShell {
  buildInputs = [ nodejs elmPackages.elm ];
  shellHook = "export PATH=node_modules/.bin:$PATH";
}
