let
  nixpkgs = import <nixpkgs> {};
  callPackageWith = nixpkgs.stdenv.lib.callPackageWith;
  callPackage = callPackageWith (nixpkgs // self);
  self = {
    hellonix = callPackage ./hellonix {};
    tangelo = callPackage ./tangelo {};
    pyyaml = callPackage ./pyyaml-3.11 {};
    ws4py = callPackage ./ws4py-0.3.2 {};
  };
in 
  self
