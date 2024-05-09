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

  inputs.solana-src-1_16_26 = {
    url = "git+https://github.com/solana-labs/solana.git?ref=refs/tags/v1.16.26";
    flake = false;
  };

  inputs.solana-src-1_16_27 = {
    url = "git+https://github.com/solana-labs/solana.git?ref=refs/tags/v1.16.27";
    flake = false;
  };

  ## Begin 1.17 series
  inputs.solana-src-1_17_16 = {
    url = "git+https://github.com/solana-labs/solana.git?ref=refs/tags/v1.17.16";
    flake = false;
  };

  inputs.solana-src-1_17_17 = {
    url = "git+https://github.com/solana-labs/solana.git?ref=refs/tags/v1.17.17";
    flake = false;
  };

  inputs.solana-src-1_17_18 = {
    url = "git+https://github.com/solana-labs/solana.git?ref=refs/tags/v1.17.18";
    flake = false;
  };

  inputs.solana-src-1_17_20 = {
    url = "git+https://github.com/solana-labs/solana.git?ref=refs/tags/v1.17.20";
    flake = false;
  };

  inputs.solana-src-1_17_22 = {
    url = "git+https://github.com/solana-labs/solana.git?ref=refs/tags/v1.17.22";
    flake = false;
  };

  inputs.solana-src-1_17_27 = {
    url = "git+https://github.com/solana-labs/solana.git?ref=refs/tags/v1.17.27";
    flake = false;
  };

  inputs.solana-src-1_17_28 = {
    url = "git+https://github.com/solana-labs/solana.git?ref=refs/tags/v1.17.28";
    flake = false;
  };

  inputs.solana-src-1_17_31 = {
    url = "git+https://github.com/solana-labs/solana.git?ref=refs/tags/v1.17.31";
    flake = false;
  };

  inputs.solana-src-1_17_33 = {
    url = "git+https://github.com/solana-labs/solana.git?ref=refs/tags/v1.17.33";
    flake = false;
  };

  # Jito Solana

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

  inputs.jito-solana-src-1_16_25 = {
    url = "git+https://github.com/jito-foundation/jito-solana.git?ref=refs/tags/v1.16.25-jito&submodules=1";
    flake = false;
  };

  inputs.jito-solana-src-1_16_26 = {
    url = "git+https://github.com/jito-foundation/jito-solana.git?ref=refs/tags/v1.16.26-jito&submodules=1";
    flake = false;
  };

  ## Begin 1.17 series
  inputs.jito-solana-src-1_17_16 = {
    url = "git+https://github.com/jito-foundation/jito-solana.git?ref=refs/tags/v1.17.16-jito&submodules=1";
    flake = false;
  };

  inputs.jito-solana-src-1_17_17 = {
    url = "git+https://github.com/jito-foundation/jito-solana.git?ref=refs/tags/v1.17.17-jito&submodules=1";
    flake = false;
  };

  inputs.jito-solana-src-1_17_18 = {
    url = "git+https://github.com/jito-foundation/jito-solana.git?ref=refs/tags/v1.17.18-jito&submodules=1";
    flake = false;
  };

  inputs.jito-solana-src-1_17_20 = {
    url = "git+https://github.com/jito-foundation/jito-solana.git?ref=refs/tags/v1.17.20-jito&submodules=1";
    flake = false;
  };

  inputs.jito-solana-src-1_17_22 = {
    url = "git+https://github.com/jito-foundation/jito-solana.git?ref=refs/tags/v1.17.22-jito&submodules=1";
    flake = false;
  };

  inputs.jito-solana-src-1_17_27 = {
    url = "git+https://github.com/jito-foundation/jito-solana.git?ref=refs/tags/v1.17.27-jito&submodules=1";
    flake = false;
  };

  inputs.jito-solana-src-1_17_28 = {
    url = "git+https://github.com/jito-foundation/jito-solana.git?ref=refs/tags/v1.17.28-jito&submodules=1";
    flake = false;
  };

  inputs.jito-solana-src-1_17_31 = {
    url = "git+https://github.com/jito-foundation/jito-solana.git?ref=refs/tags/v1.17.31-jito&submodules=1";
    flake = false;
  };

  inputs.jito-solana-src-1_17_33 = {
    url = "git+https://github.com/jito-foundation/jito-solana.git?ref=refs/tags/v1.17.33-jito&submodules=1";
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

        # NOTE: 1.69 doesn't know about znver4, so we use this as a stopgap even
        # though solana 1.16 is really on rust 1.69
        toolchain_1_72_1 = #fenix.packages.x86_64-linux.latest;
          fenix.packages.x86_64-linux.toolchainOf {
            channel = "1.72.1";
            sha256 = "sha256-dxE7lmCFWlq0nl/wKcmYvpP9zqQbBitAQgZ1zx9Ooik=";
          };

        toolchain_1_73_0 = #fenix.packages.x86_64-linux.latest;
          fenix.packages.x86_64-linux.toolchainOf {
            channel = "1.73.0";
            sha256 = "sha256-rLP8+fTxnPHoR96ZJiCa/5Ans1OojI7MLsmSqR2ip8o=";
          };

        outputHashes116 = {
          "crossbeam-epoch-0.9.5" = "sha256-Jf0RarsgJiXiZ+ddy0vp4jQ59J9m0k3sgXhWhCdhgws=";
          "ntapi-0.3.7" = "sha256-G6ZCsa3GWiI/FeGKiK9TWkmTxen7nwpXvm5FtjNtjWU=";
        };
        outputHashes117 = {
          "crossbeam-epoch-0.9.5" = "sha256-Jf0RarsgJiXiZ+ddy0vp4jQ59J9m0k3sgXhWhCdhgws=";
          "tokio-1.29.1" = "sha256-Z/kewMCqkPVTXdoBcSaFKG5GSQAdkdpj3mAzLLCjjGk=";
        };

        build = version: cpu-arch: src: toolchain: cargoOutputHashes:
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
            inherit cargoOutputHashes;

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
            build "1.16.19" arch inputs.solana-src-1_16_19 toolchain_1_69_0 outputHashes116;
          solana-1_16_21 = arch:
            build "1.16.21" arch inputs.solana-src-1_16_21 toolchain_1_72_1 outputHashes116;
          solana-1_16_23 = arch:
            build "1.16.23" arch inputs.solana-src-1_16_23 toolchain_1_72_1 outputHashes116;
          solana-1_16_24 = arch:
            build "1.16.24" arch inputs.solana-src-1_16_24 toolchain_1_72_1 outputHashes116;
          solana-1_16_25 = arch:
            build "1.16.25" arch inputs.solana-src-1_16_25 toolchain_1_72_1 outputHashes116;
          solana-1_16_26 = arch:
            build "1.16.26" arch inputs.solana-src-1_16_26 toolchain_1_72_1 outputHashes116;
          solana-1_16_27 = arch:
            build "1.16.27" arch inputs.solana-src-1_16_27 toolchain_1_72_1 outputHashes116;
          solana-1_17_16 = arch:
            build "1.17.16" arch inputs.solana-src-1_17_16 toolchain_1_73_0 outputHashes117;
          solana-1_17_17 = arch:
            build "1.17.17" arch inputs.solana-src-1_17_17 toolchain_1_73_0 outputHashes117;
          solana-1_17_18 = arch:
            build "1.17.18" arch inputs.solana-src-1_17_18 toolchain_1_73_0 outputHashes117;
          solana-1_17_20 = arch:
            build "1.17.20" arch inputs.solana-src-1_17_20 toolchain_1_73_0 outputHashes117;
          solana-1_17_22 = arch:
            build "1.17.22" arch inputs.solana-src-1_17_22 toolchain_1_73_0 outputHashes117;
          solana-1_17_27 = arch:
            build "1.17.27" arch inputs.solana-src-1_17_22 toolchain_1_73_0 outputHashes117;
          solana-1_17_28 = arch:
            build "1.17.28" arch inputs.solana-src-1_17_22 toolchain_1_73_0 outputHashes117;
          solana-1_17_31 = arch:
            build "1.17.31" arch inputs.solana-src-1_17_22 toolchain_1_73_0 outputHashes117;
          solana-1_17_33 = arch:
            build "1.17.33" arch inputs.solana-src-1_17_22 toolchain_1_73_0 outputHashes117;
          solana = arch: self.packages.x86_64-linux."solana-1_17_33/${arch}";

          jito-solana-1_16_18 = arch:
            build "1.16.18-jito" arch inputs.jito-solana-src-1_16_18 toolchain_1_69_0 outputHashes116;
          jito-solana-1_16_19 = arch:
            build "1.16.19-jito" arch inputs.jito-solana-src-1_16_19 toolchain_1_69_0 outputHashes116;
          jito-solana-1_16_21 = arch:
            build "1.16.21-jito" arch inputs.jito-solana-src-1_16_21 toolchain_1_72_1 outputHashes116;
          jito-solana-1_16_23 = arch:
            build "1.16.23-jito" arch inputs.jito-solana-src-1_16_23 toolchain_1_72_1 outputHashes116;
          jito-solana-1_16_24 = arch:
            build "1.16.24-jito" arch inputs.jito-solana-src-1_16_24 toolchain_1_72_1 outputHashes116;
          jito-solana-1_16_25 = arch:
            build "1.16.25-jito" arch inputs.jito-solana-src-1_16_25 toolchain_1_72_1 outputHashes116;
          jito-solana-1_16_26 = arch:
            build "1.16.26-jito" arch inputs.jito-solana-src-1_16_26 toolchain_1_72_1 outputHashes116;
          jito-solana-1_17_16 = arch:
            build "1.17.16-jito" arch inputs.jito-solana-src-1_17_16 toolchain_1_73_0 outputHashes117;
          jito-solana-1_17_17 = arch:
            build "1.17.17-jito" arch inputs.jito-solana-src-1_17_17 toolchain_1_73_0 outputHashes117;
          jito-solana-1_17_18 = arch:
            build "1.17.18-jito" arch inputs.jito-solana-src-1_17_18 toolchain_1_73_0 outputHashes117;
          jito-solana-1_17_20 = arch:
            build "1.17.20-jito" arch inputs.jito-solana-src-1_17_20 toolchain_1_73_0 outputHashes117;
          jito-solana-1_17_27 = arch:
            build "1.17.27" arch inputs.jito-solana-src-1_17_27 toolchain_1_73_0 outputHashes117;
          jito-solana-1_17_28 = arch:
            build "1.17.28" arch inputs.jito-solana-src-1_17_28 toolchain_1_73_0 outputHashes117;
          jito-solana-1_17_31 = arch:
            build "1.17.31" arch inputs.jito-solana-src-1_17_31 toolchain_1_73_0 outputHashes117;
          jito-solana-1_17_33 = arch:
            build "1.17.33" arch inputs.jito-solana-src-1_17_33 toolchain_1_73_0 outputHashes117;
          jito-solana = arch: self.packages.x86_64-linux."jito-solana-1_17_31/${arch}";
        };

        #packages.x86_64-linux.default = self.packages.x86_64-linux.jito-solana;

        apps.x86_64-linux = apps;

        hydraJobs.x86_64-linux = {
          "solana/znver3" = self.packages.x86_64-linux."solana/znver3";
          "solana/znver4" = self.packages.x86_64-linux."solana/znver4";
          "jito-solana/znver3" = self.packages.x86_64-linux."jito-solana/znver3";
          "jito-solana/znver4" = self.packages.x86_64-linux."jito-solana/znver4";
        };
      };
}
