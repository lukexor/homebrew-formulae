cask "tetanes" do
  arch arm: "arm64", intel: "x86_64"

  version "tetanes-core-v0.14.2"

  on_arm do
    sha256 "2da852b40e9bf9e8b21cb1db2597a5cbdebb9653cd38a484aa2d8f26e684cb96"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-aarch64-apple.tar.gz"
  end
  on_intel do
    sha256 "bffcafbc9467a1ecae420b5fafee942ad3c9afcb084caeca99cc60adb50f3b89"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-x86_64-apple.tar.gz"
  end

  name "TetaNES"
  desc "Cross-platform NES emulator written in Rust using wgpu"
  homepage "https://github.com/lukexor/tetanes"

  app "TetaNES.app"
end
