{
  description = "Bluish color scheme for Neovim";

  inputs.huey.url = "github:oahlen/huey";

  outputs = {huey, ...}: let
    lib = import ./lib.nix {};
  in {
    devShells = lib.forEachDefaultSystem (system: let
      pkgs = import huey.nixpkgs {inherit system;};
    in {
      default = pkgs.mkShell {
        buildInputs = [
          huey.packages.${system}.default
        ];
      };
    });
  };
}
