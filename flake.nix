{
  description = "Solana validators (Labs and Jito)";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";
  inputs.fenix = {
    url = "github:nix-community/fenix";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  inputs.arch-support.url = "github:litxio/nix-cpu-arch-support";

  inputs.solana-src-1_16_19 = {
    url = "git+https://github.com/solana-labs/solana.git?ref=refs/tags/v1.16.19";
    flake = false;
  };

  inputs.solana-src-1_16_21 = {
    url = "git+https://github.com/solana-labs/solana.git?ref=refs/tags/v1.16.21";
    flake = false;
  };

  inputs.solana-src-1_16_23 = {
    url = "git+https://github.com/solana-labs/solana.git?ref=refs/tags/v1.16.23";
    flake = false;
  };

  inputs.solana-src-1_16_24 = {
    url = "git+https://github.com/solana-labs/solana.git?ref=refs/tags/v1.16.24";
    flake = false;
  };

  inputs.solana-src-1_16_25 = {
    url = "git+https://github.com/solana-labs/solana.git?ref=refs/tags/v1.16.25";
    flake = false;
  };

  inputs.jito-solana-src-1_16_18 = {
    url = "git+https://github.com/jito-foundation/jito-solana.git?ref=refs/tags/v1.16.18-jito&submodules=1";
    flake = false;
  };

  inputs.jito-solana-src-1_16_19 = {
    url = "git+https://github.com/jito-foundation/jito-solana.git?ref=refs/tags/v1.16.19-jito&submodules=1";
    flake = false;
  };

  inputs.jito-solana-src-1_16_21 = {
    url = "git+https://github.com/jito-foundation/jito-solana.git?ref=refs/tags/v1.16.21-jito&submodules=1";
    flake = false;
  };

  inputs.jito-solana-src-1_16_23 = {
    url = "git+https://github.com/jito-foundation/jito-solana.git?ref=refs/tags/v1.16.23-jito&submodules=1";
    flake = false;
  };

  inputs.jito-solana-src-1_16_24 = {
    url = "git+https://github.com/jito-foundation/jito-solana.git?ref=refs/tags/v1.16.24-jito&submodules=1";
    flake = false;
  };

  outputs = inputs@{ self, nixpkgs, fenix, arch-support, ... }:
    let pkgs = import nixpkgs { system = "x86_64-linux"; };

        bins = [ "solana"
                 "solana-bench-tps"
                 "solana-faucet"
                 "solana-gossip"
                 "solana-install"
                 "solana-keygen"
                 "solana-ledger-tool"
                 "solana-log-analyzer"
                 "solana-net-shaper"
                 #"solana-sys-tuner"
                 "solana-validator"
                 "rbpf-cli"
                 "cargo-build-bpf"
                 "cargo-build-sbf"
                 "cargo-test-bpf"
                 "cargo-test-sbf"
                 "solana-dos"
                 "solana-install-init"
                 "solana-stake-accounts"
                 "solana-test-validator"
                 "solana-tokens"
                 "solana-watchtower"
                 "solana-genesis" ];

        toolchain_1_69_0 = #fenix.packages.x86_64-linux.latest;
          fenix.packages.x86_64-linux.toolchainOf {
            channel = "1.69.0";
            sha256 = "sha256-eMJethw5ZLrJHmoN2/l0bIyQjoTX1NsvalWSscTixpI=";
          };

        # Doesn't compile yet
        # toolchain_1_74_0 = #fenix.packages.x86_64-linux.latest;
        #   fenix.packages.x86_64-linux.toolchainOf {
        #     channel = "1.74.0";
        #     sha256 = "sha256-U2yfueFohJHjif7anmJB5vZbpP7G6bICH4ZsjtufRoU=";
        #   };

        toolchain_1_72_1 = #fenix.packages.x86_64-linux.latest;
          fenix.packages.x86_64-linux.toolchainOf {
            channel = "1.72.1";
            sha256 = "sha256-dxE7lmCFWlq0nl/wKcmYvpP9zqQbBitAQgZ1zx9Ooik=";
          };

        build = version: cpu-arch: src: toolchain:
          let
            rustPlatform = pkgs.makeRustPlatform {
              inherit (toolchain) cargo rustc rustfmt rust-src;
            };
          in pkgs.callPackage ./default.nix {
            inherit cpu-arch;
            inherit version;
            inherit src;
            inherit rustPlatform;
            inherit (toolchain) rustfmt;
            inherit perf-libs;
            extraTools = [fenix.packages.x86_64-linux.rust-analyzer
                          (toolchain.withComponents [
                            "cargo" "rustc" "rust-src" "rustfmt" "clippy"
                          ])
                         ];
          };

        apps =
          # Plain names for plain solana
          (pkgs.lib.genAttrs bins (name : {
            type = "app";
            program = "${self.packages.x86_64-linux.solana}/bin/${name}";
          }))
          //
          # Prefix names for Jito bins with "jito-"
          (builtins.listToAttrs (builtins.map (name: {
            name = "jito-${name}";
            value = {
              type = "app";
              program = "${self.packages.x86_64-linux.jito-solana}/bin/${name}";
            };
          }) bins));

        perf-libs-version = "v0.19.3";
        perf-libs = pkgs.fetchzip {
          url = "https://github.com/solana-labs/solana-perf-libs/releases/download/${perf-libs-version}/solana-perf.tgz";
          sha256 = "sha256-fvbz2uqVmThAUQwyuDYaF7ajmMUbbatE9LMVHDKCYWY=";
          stripRoot = false;
        };
    in
      {
        packages.x86_64-linux = arch-support.lib.eachCpuFlattened {

          solana-1_16_19 = arch:
            build "1.16.19" arch inputs.solana-src-1_16_19 toolchain_1_69_0;
          solana-1_16_21 = arch:
            build "1.16.21" arch inputs.solana-src-1_16_21 toolchain_1_69_0;
          solana-1_16_23 = arch:
            build "1.16.23" arch inputs.solana-src-1_16_23 toolchain_1_69_0;
          solana-1_16_24 = arch:
            build "1.16.24" arch inputs.solana-src-1_16_24 toolchain_1_69_0;
          solana-1_16_25 = arch:
            build "1.16.25" arch inputs.solana-src-1_16_25 toolchain_1_69_0;
          solana = arch: self.packages.x86_64-linux."solana-1_16_25/${arch}";

          jito-solana-1_16_18 = arch:
            build "1.16.18-jito" arch inputs.jito-solana-src-1_16_18 toolchain_1_69_0;
          jito-solana-1_16_19 = arch:
            build "1.16.19-jito" arch inputs.jito-solana-src-1_16_19 toolchain_1_69_0;
          jito-solana-1_16_21 = arch:
            build "1.16.21-jito" arch inputs.jito-solana-src-1_16_21 toolchain_1_72_1;
          jito-solana-1_16_23 = arch:
            build "1.16.23-jito" arch inputs.jito-solana-src-1_16_23 toolchain_1_72_1;
          jito-solana-1_16_24 = arch:
            build "1.16.24-jito" arch inputs.jito-solana-src-1_16_24 toolchain_1_72_1;

          jito-solana = arch: self.packages.x86_64-linux."jito-solana-1_16_24/${arch}";
        };

        #packages.x86_64-linux.default = self.packages.x86_64-linux.jito-solana;

        apps.x86_64-linux = apps;
      };
}
