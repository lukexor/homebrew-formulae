cask "tetanes" do
  arch arm: "arm64", intel: "x86_64"

  version "0.18.0"

  on_arm do
    sha256 "188d2f26446e7c3d3462e5a95edbe157925d7422a6d9489545f5e91c3de15097"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-aarch64-apple.tar.gz"
  end
  on_intel do
    sha256 "777fdb64e366dace5039a5d9962e486a021ce0a48d167323a47b0305f1bbc9f4"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-x86_64-apple.tar.gz"
  end

  name "TetaNES"
  desc "Cross-platform NES emulator written in Rust using wgpu"
  homepage "https://github.com/lukexor/tetanes"

  depends_on :macos

  app "TetaNES.app"
end
