{
  description = "Bluish color scheme for Neovim";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-23.11";
    huey = {
      url = "github:oahlen/huey";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        flake-utils.follows = "flake-utils";
      };
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    huey,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {inherit system;};
    in {
      packages.default = pkgs.vimUtils.buildVimPlugin {
        pname = "iceberg-nvim";
        version = "1.0.1";
        src = ./.;
        meta.homepage = "https://github.com/oahlen/iceberg.nvim/";
      };

      devShells.default = pkgs.mkShell {
        buildInputs = [
          huey.packages.${system}.default
        ];
      };
    });
}
