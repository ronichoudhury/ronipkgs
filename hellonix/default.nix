{ stdenv }:

stdenv.mkDerivation {
  name = "hellonix";
  builder = ./builder.sh;
  src = ./hellonix.c;
}
