{ src,
  version,
  lib,
  rustPlatform,
  rustfmt,
  pkg-config,
  protobuf,
  udev,
  openssl,
  llvmPackages,
  perl,
  clang,
  perf-libs,
  cpu-arch,
  cargoOutputHashes ? {},
  extraTools ? [] }:

rustPlatform.buildRustPackage {
  pname = "solana";
  version = "${version}-${cpu-arch}";

  inherit src;

  doCheck = false;

  #buildType = "debug";
  #dontStrip = true;

  RUSTFLAGS="-C target-cpu=${cpu-arch}";

  nativeBuildInputs = [
    pkg-config
    protobuf
    perl
    clang
    rustfmt
  ] ++ extraTools;

  # Needed so bindgen can find libclang.so
  LIBCLANG_PATH="${llvmPackages.libclang.lib}/lib";

  buildInputs = [
    udev
    llvmPackages.clang-unwrapped.lib
    openssl
    protobuf
    clang
    rustfmt
  ];

  postInstall = ''
    cp -r ${perf-libs.out} $out/bin/perf-libs
  '';

  #sourceRoot = ".";
  cargoLock = {
    lockFile = "${src}/Cargo.lock";
    outputHashes = cargoOutputHashes;
  };

  #autoPatchelfIgnoreMissingDeps=true;

  #installPhase = ''
  #  #cp -r solana-release/bin/* $out/bin/
  #  for f in solana-release/bin/*; do
  #    if [[ -f "$f" && -x "$f" ]]
  #    then
  #      echo "Installing $f" > /dev/stderr
  #      install -m755 -D "$f" "$out/bin/$(basename $f)"
  #    else
  #      cp -r "$f" $out/bin
  #    fi
  #  done
  #'';

  # meta = with lib; {
  #   homepage = "https://studio-link.com";
  #   description = "Voip transfer";
  #   platforms = platforms.linux;
  # };
}


