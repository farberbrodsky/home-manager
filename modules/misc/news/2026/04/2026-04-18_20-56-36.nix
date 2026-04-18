{ pkgs, ... }:
{
  time = "2026-04-18T17:56:36+00:00";
  condition = pkgs.stdenv.hostPlatform.isLinux;
  message = ''
    A new module is available: 'programs.pi-coding-agent'.

    Pi is a minimal terminal coding harness. Adapt pi to your workflows,
    not the other way around, without having to fork and modify pi internals.
  '';
}
