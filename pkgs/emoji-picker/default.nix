{ pkgs }:
with (builtins.fromJSON (builtins.readFile ./source.json));
import (builtins.fetchTarball {
  name = "emoji-picker-${rev}";
  url = "https://github.com/jmackie/emoji-picker/archive/${rev}.tar.gz";
  inherit sha256;
}) { inherit pkgs; }
