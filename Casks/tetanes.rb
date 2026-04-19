cask "tetanes" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.0"

  on_arm do
    sha256 "1b024c213abb438ccaff45db1475980f73cf6d802d5a42d10aadf9626edad22f"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-aarch64-apple.tar.gz"
  end
  on_intel do
    sha256 "da5d32d06d6b523f124402bc1b8a47228ff415bafa7d1a365377c9e5f4c465ef"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-x86_64-apple.tar.gz"
  end

  name "TetaNES"
  desc "Cross-platform NES emulator written in Rust using wgpu"
  homepage "https://github.com/lukexor/tetanes"

  app "TetaNES.app"
end
