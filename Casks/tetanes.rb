cask "tetanes" do
  arch arm: "arm64", intel: "x86_64"

  version "0.19.0"

  on_arm do
    sha256 "79a6ef6b4d684b6d3715df059f84fd37e0a0c0e872fc62f769affd117bb62028"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-aarch64-apple.tar.gz"
  end
  on_intel do
    sha256 "183e237f39fd6674f504a775c580f0dcf6efeb189a7fc77dca662edbef4a12cc"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-x86_64-apple.tar.gz"
  end

  name "TetaNES"
  desc "Cross-platform NES emulator written in Rust using wgpu"
  homepage "https://github.com/lukexor/tetanes"

  depends_on :macos

  app "TetaNES.app"
end
