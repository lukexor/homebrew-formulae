cask "tetanes" do
  arch arm: "arm64", intel: "x86_64"

  version "0.13.0"

  on_arm do
    sha256 "75c3b400200464276706a10152dfe66928582ae282af09fd2c363fe612cb3d71"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-aarch64-apple.tar.gz"
  end
  on_intel do
    sha256 "b5c2152a29f46bd97623bc45c0a54b8a71c8b88886cbe4d774276a9517337bd4"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-x86_64-apple.tar.gz"
  end

  name "TetaNES"
  desc "Cross-platform NES emulator written in Rust using wgpu"
  homepage "https://github.com/lukexor/tetanes"

  app "TetaNES.app"
end
