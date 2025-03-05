{
  defaultSystems ? [
    "aarch64-linux"
    "aarch64-darwin"
    "x86_64-darwin"
    "x86_64-linux"
  ],
}: let
  forEachSystem = systems: f:
    builtins.listToAttrs (map (system: {
        name = system;
        value = f system;
      })
      systems);

  forEachDefaultSystem = forEachSystem defaultSystems;
in {
  inherit forEachSystem forEachDefaultSystem;
}
