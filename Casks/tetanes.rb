cask "tetanes" do
  arch arm: "arm64", intel: "x86_64"

  version "0.16.1"

  on_arm do
    sha256 "4f1300949333e90d6ac07853bfc8a7824792b478f4dabce0d4cc162be4d902e7"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-aarch64-apple.tar.gz"
  end
  on_intel do
    sha256 "c0d9b408cd3e380055e12588c17e4546169eb0d7c9ea8f8e627aa236cefd1dd1"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-x86_64-apple.tar.gz"
  end

  name "TetaNES"
  desc "Cross-platform NES emulator written in Rust using wgpu"
  homepage "https://github.com/lukexor/tetanes"

  depends_on :macos

  app "TetaNES.app"
end
