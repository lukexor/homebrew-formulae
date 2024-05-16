cask "tetanes" do
  desc "A cross-platform NES emulator written in Rust using wgpu"
  homepage "https://github.com/lukexor/tetanes"
  version "0.10.0"
  if Hardware::CPU.intel?
    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v0.10.0/tetanes-x86_64-apple.tar.gz"
    sha256 "0f2920c1ee125872357d69f3cb4400796f2014a3dbb379c9d54b5f49cfc6ce8f"
  else
    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v0.10.0/tetanes-aarch64-apple.tar.gz"
    sha256 "9708c3cf28a5c635ea7fd50cfa128b4639748b2fcec55dc502869e8c471db83b"
  end
  license "MIT"

  app "TetaNES.app"
end
