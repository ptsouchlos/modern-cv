# Interactive use: `nix-shell`
# Non-interactive use: `nix-shell --run 'just test'`
{
  pkgs ?
    import
      (fetchTarball "https://github.com/NixOS/nixpkgs/archive/4fe25e12eb9f4c744966dd3de5a05246cf098601.tar.gz")
      { },
}:
pkgs.mkShellNoCC {
  env.FONTCONFIG_FILE = pkgs.makeFontsConf {
    fontDirectories = [
      pkgs.font-awesome
      pkgs.roboto
      pkgs.source-sans
    ];
    includes = [ ];
  };

  packages = [
    pkgs.just # for `just`, `just test`, etc.
    pkgs.nixfmt # pedantix dependency
    pkgs.pedantix # For `pedantix shell.nix`
    pkgs.perl # scripts/setup dependency
    (pkgs.typst.withPackages (ps: [
      (ps.modern-cv.overrideAttrs {
        src = pkgs.lib.cleanSource ./.;
        version = (pkgs.lib.fromTOML (pkgs.lib.readFile ./typst.toml)).package.version;
      })
    ]))
    pkgs.typstyle # For `just format`
    pkgs.tytanic # Typst test runner
  ];
}
