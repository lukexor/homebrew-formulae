cask "tetanes" do
  desc "A cross-platform NES emulator written in Rust using wgpu"
  homepage "https://github.com/lukexor/tetanes"
  version "0.11.0"
  if Hardware::CPU.intel?
    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-x86_64-apple.tar.gz"
    sha256 "e502772e2719ecfc6d809ec30926b5fd6ea3bc1b602c471fc6e4c024e02d09ec"
  else
    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-aarch64-apple.tar.gz"
    sha256 "339c22993bf2c378be41e9f20d4cbf89a8a590e973a2f402f0014317746fd3dc"
  end
  license "MIT"

  app "TetaNES.app"
end
