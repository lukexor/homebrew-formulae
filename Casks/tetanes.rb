cask "tetanes" do
  arch arm: "arm64", intel: "x86_64"

  version "0.15.0"

  on_arm do
    sha256 "32ace03f5cb1ceb1582d53166b9267c2b90d528b89747f10abd8d01d15e761f3"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-aarch64-apple.tar.gz"
  end
  on_intel do
    sha256 "3c82bc4c13764539911965d0350602041fe0a6d0e0f296ddfbf06b584fda253c"

    url "https://github.com/lukexor/tetanes/releases/download/tetanes-v#{version}/tetanes-#{version}-x86_64-apple.tar.gz"
  end

  name "TetaNES"
  desc "Cross-platform NES emulator written in Rust using wgpu"
  homepage "https://github.com/lukexor/tetanes"

  depends_on :macos

  app "TetaNES.app"
end
