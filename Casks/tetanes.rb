cask "tetanes" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.0"

  on_arm do
    sha256 "67382740ce1374d2f3eabb088d16ad9526ed160a57a49f3df0a21ef456be4f1b"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-aarch64-apple.tar.gz"
  end
  on_intel do
    sha256 "2cbab4a70ea3b847edd194172fb3d4e736204b8c3925c8b2856da05e5c39e30a"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-x86_64-apple.tar.gz"
  end

  name "TetaNES"
  desc "Cross-platform NES emulator written in Rust using wgpu"
  homepage "https://github.com/lukexor/tetanes"

  depends_on :macos

  app "TetaNES.app"
end
