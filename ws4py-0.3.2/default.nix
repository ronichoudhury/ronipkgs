{ buildPythonPackage, fetchurl, lib, python27Packages }:

buildPythonPackage rec {
  name = "ws4py-0.3.2";

  src = fetchurl {
    url = https://pypi.python.org/packages/source/w/ws4py/ws4py-0.3.2.tar.gz;
    md5 = "22fc2d79734473aa5cbb489161842354";
  };

  # python zip complains about old timestamps
  preConfigure = ''
    find -print0 | xargs -0 touch
  '';

  # Tests depend on other packages
  doCheck = false;

  meta = {
    homepage = https://ws4py.readthedocs.org;
    description = "A WebSocket package for Python";
    maintainers = [ lib.maintainers.rickynils ];
  };
}
