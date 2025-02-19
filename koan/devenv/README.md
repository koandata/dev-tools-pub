# Direnv `.envrc` for Devenv

## Background

Devenv v1.4.0 had a new AI feature to help people write Nix code for Devenv, as part of the new
`devenv generate` sub-command.
It also had Telemetry functionality to help train the AI.

Unfortunately, the Telemetry functionality uploads the entirety of the user's repo (and code)
indiscriminately, and there's no easy way to disable this.

## Mitigation

In order to protect Koan and its customers from leaking their code via Devenv v1.4.0, we've wrapped
the standard Devenv `direnvrc` with some guard code to block it.
The guard code basically checks whether the `devenv version` command show version `1.4.0`.

## Devenv v1.4.1

The problem code was removed for Devenv v1.4.1.
- https://github.com/cachix/devenv/issues/1733#event-16341613278
- https://github.com/cachix/devenv/releases/tag/v1.4.1
- https://github.com/NixOS/nixpkgs/pull/383011

## Usage

In order to use this, replace the Devenv-created `.envrc` with the following code:

``` shell
source_url "https://raw.githubusercontent.com/koandata/dev-tools-pub/main/koan/devenv/direnvrc" "sha256-hhCwcVzYXh1zUaFFaeVY5paGvLgo/lgEO888bAyMwxo="

use koan_devenv
```
