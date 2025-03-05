{
  description = "Bluish color scheme for Neovim";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-24.11";

    huey = {
      url = "github:oahlen/huey";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    huey,
    ...
  }: let
    lib = import ./lib.nix {};
  in {
    devShells = lib.forEachDefaultSystem (system: let
      pkgs = import nixpkgs {inherit system;};
    in {
      default = pkgs.mkShell {
        buildInputs = [
          huey.packages.${system}.default
        ];
      };
    });
  };
}
