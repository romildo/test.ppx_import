{ nixpkgs ? import <nixpkgs> {} } :

let
  inherit (nixpkgs) pkgs;
  ocamlPackages = pkgs.ocamlPackages;
in

pkgs.mkShell {
  name = "my-ocaml-env";
  buildInputs = [
    ocamlPackages.dune_2
    ocamlPackages.findlib
    ocamlPackages.ocaml
    ocamlPackages.ppxlib
    ocamlPackages.ppx_deriving
    ocamlPackages.ppx_import
  ];
}
