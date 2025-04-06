cask "tetanes" do
  desc "A cross-platform NES emulator written in Rust using wgpu"
  homepage "https://github.com/lukexor/tetanes"
  version "0.12.2"
  if Hardware::CPU.intel?
    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-x86_64-apple.tar.gz"
    sha256 "9572f9d8c57fbe365d42890df486fd50fb82852193121d6a81a4b4d360db88a0"
  else
    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-aarch64-apple.tar.gz"
    sha256 "835f8a676facb94aea536a854540fdfd45924350b8c93fc308d726bd2a2cb8d1"
  end
  license "MIT"

  app "TetaNES.app"
end
