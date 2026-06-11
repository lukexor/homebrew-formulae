cask "tetanes" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.2"

  on_arm do
    sha256 "98f0142d78163f409bf3881f31b495f66d6661b8f80395ab1853b9a8e9ae8d20"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-aarch64-apple.tar.gz"
  end
  on_intel do
    sha256 "5df4b4c218c584d644994e17f1fa25f1b12a1c2cbad48579e5fe5af0cf172c7e"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-x86_64-apple.tar.gz"
  end

  name "TetaNES"
  desc "Cross-platform NES emulator written in Rust using wgpu"
  homepage "https://github.com/lukexor/tetanes"

  depends_on :macos

  app "TetaNES.app"
end
