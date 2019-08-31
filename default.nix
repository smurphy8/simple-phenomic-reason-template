with (import <nixpkgs> {});
with (import /home/scott/toolchains/yarn2nix { inherit pkgs; });
rec {
   example-reason-react-app= mkYarnPackage {
    name = "example-reason-react-app";
    src = ./.;
    packageJSON = ./package.json;
    yarnLock = ./yarn.lock;
    # NOTE: this is optional and generated dynamically if omitted
    yarnNix = ./yarn.nix;
  };
}
