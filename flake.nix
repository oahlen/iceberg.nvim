{
  description = "Bluish color scheme for Neovim";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-24.11";

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
    nixpkgs,
    huey,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {inherit system;};
    in {
      devShells.default = pkgs.mkShell {
        buildInputs = [
          huey.packages.${system}.default
        ];
      };
    });
}
