{ buildPythonPackage, fetchurl, lib, python27Packages, libyaml }:

let
  free = lib.licenses.free;
in
  buildPythonPackage rec {
    name = "PyYAML-3.11";

    src = fetchurl {
      url = "http://pyyaml.org/download/pyyaml/${name}.zip";
      md5 = "89cbc92cda979042533b640b76e6e055";
    };

    doCheck = false;

    propagatedBuildInputs = [ libyaml ];

    meta = {
      description = "The next generation YAML parser and emitter for Python";
      homepage = http://pyyaml.org;
      license = free; # !?
    };
  }
