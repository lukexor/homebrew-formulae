cask "tetanes" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.1"

  on_arm do
    sha256 "9c80080155b2a7e83a2170bce05847c2dc25ea3a64106230da5821f1483b21d0"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-aarch64-apple.tar.gz"
  end
  on_intel do
    sha256 "e01d34eba0e2282a6155a2c8cdcdc8bfc52007dbc24aad9c2b57f783f6435b0a"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-x86_64-apple.tar.gz"
  end

  name "TetaNES"
  desc "Cross-platform NES emulator written in Rust using wgpu"
  homepage "https://github.com/lukexor/tetanes"

  app "TetaNES.app"
end
