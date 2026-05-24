# nix/modules/home-manager.nix — auto-generated from tempfile.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.tempfile; in {
  options.programs.tempfile = {
    enable = lib.mkEnableOption "tempfile";
    package = lib.mkOption { type = lib.types.package; default = pkgs.tempfile or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
