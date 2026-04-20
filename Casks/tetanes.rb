cask "tetanes" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.1"

  on_arm do
    sha256 "1641d10eb2c90ec42ff63dfee412b0f1ed401c4550fcd0a9118b1bca2c1aeacc"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-aarch64-apple.tar.gz"
  end
  on_intel do
    sha256 "77ca7696bc937eb93ea94a1fdb0ef148be991e2fa6e3f2f7dad835fbde90bb35"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-x86_64-apple.tar.gz"
  end

  name "TetaNES"
  desc "Cross-platform NES emulator written in Rust using wgpu"
  homepage "https://github.com/lukexor/tetanes"

  app "TetaNES.app"
end
