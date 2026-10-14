{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  outputs = { self, nixpkgs }:
    {
      devShells.x86_64-linux.default = nixpkgs.legacyPackages.x86_64-linux.mkShell {
        packages = [ nixpkgs.legacyPackages.x86_64-linux.beam29Packages.erlang nixpkgs.legacyPackages.x86_64-linux.gleam ];
      };
    };
}
