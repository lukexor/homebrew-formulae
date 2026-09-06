cask "tetanes" do
  arch arm: "arm64", intel: "x86_64"

  version "0.16.0"

  on_arm do
    sha256 "447daf3721672b7ec9afd8cc1fa093af5a06ca2efb3f4f47cc87aad46c2bc2e1"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-aarch64-apple.tar.gz"
  end
  on_intel do
    sha256 "3aed82897d3c1772ca1a9b9a9fad3081deda29696ff2a48caa1b3d6c8b41d89f"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-x86_64-apple.tar.gz"
  end

  name "TetaNES"
  desc "Cross-platform NES emulator written in Rust using wgpu"
  homepage "https://github.com/lukexor/tetanes"

  depends_on :macos

  app "TetaNES.app"
end
