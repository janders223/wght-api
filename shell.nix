{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    jdk11
    gradle
    postgresql
  ];

  PGDATA="./.data";
  PGUSER="wght_admin";
  PGPASSWORD="password";
  PGDATABASE="wght";
}
