cask "tetanes" do
  desc "A cross-platform NES emulator written in Rust using wgpu"
  homepage "https://github.com/lukexor/tetanes"
  version "0.13.0"
  if Hardware::CPU.intel?
    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-x86_64-apple.tar.gz"
    sha256 "b5c2152a29f46bd97623bc45c0a54b8a71c8b88886cbe4d774276a9517337bd4"
  else
    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-aarch64-apple.tar.gz"
    sha256 "75c3b400200464276706a10152dfe66928582ae282af09fd2c363fe612cb3d71"
  end
  license "MIT"

  app "TetaNES.app"
end
