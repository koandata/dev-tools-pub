{ pkgs, lib, config, inputs, ... }:

{
  # We'd rather stick with the NixOS community packages:
  cachix.enable = false;

  packages = with pkgs; [
    git
  ];

  # enterShell = ''
  #   echo "Entering devenv shell..."
  # '';

  pre-commit.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/

  # https://devenv.sh/basics/
  # https://devenv.sh/packages/
  # https://devenv.sh/languages/
  # https://devenv.sh/processes/
  # https://devenv.sh/services/
  # https://devenv.sh/scripts/
  # https://devenv.sh/tasks/
  # https://devenv.sh/tests/
  # https://devenv.sh/pre-commit-hooks/
}
