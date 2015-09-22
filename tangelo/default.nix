{ buildPythonPackage, fetchurl, lib, python27Packages, pyyaml, ws4py }:

let
  apache-license = lib.licenses.asl20;
in
  buildPythonPackage rec {
    version = "0.9.0";
    name = "tangelo-${version}";
    src = fetchurl {
      url = "https://pypi.python.org/packages/source/t/tangelo/tangelo-0.9.0.tar.gz";
      md5 = "1551a0d11de408e9cfb67f6fce66aa60";
    };

    doCheck = false;

    propagatedBuildInputs = [
      python27Packages.cherrypy
      pyyaml
      ws4py
    ];
    
    meta = {
      description = "Tangelo is a Python-based web server framework bundled with clientside tools to help you supercharge your web applications with the power of Python";
      homepage = "http://kitware.github.io/tangelo";
      license = apache-license;
      maintainers = ["roni.choudhury"];
    };
  }
