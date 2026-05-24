# nix/modules/nixos.nix — auto-generated from tempfile.caixa.lisp
# description: "A library for managing temporary files and directories."
{ config, lib, pkgs, ... }:
let
  cfg = config.services.tempfile;
in {
  options.services.tempfile = {
    enable = lib.mkEnableOption "tempfile";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.tempfile or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
