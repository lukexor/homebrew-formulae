cask "tetanes" do
  desc "A cross-platform NES emulator written in Rust using wgpu"
  homepage "https://github.com/lukexor/tetanes"
  version "0.12.0"
  if Hardware::CPU.intel?
    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-x86_64-apple.tar.gz"
    sha256 "32e5a3f35c5629a54e19afb34e3a20745b497943c1daa56b0fa2ebf1bddf7596"
  else
    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-aarch64-apple.tar.gz"
    sha256 "4e4c19c80d6cfae60e11d87439aa5e39f93d81ec3d6c23188869eb0d6af52585"
  end
  license "MIT"

  app "TetaNES.app"
end
