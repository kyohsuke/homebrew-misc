class Gobump < Formula
  desc "Bumps up Go program version"
  homepage "https://github.com/x-motemen/gobump"
  url "https://github.com/x-motemen/gobump/releases/download/v#{version}/gobump_v#{version}_darwin_amd64.zip"
  version "0.2.0"
  sha256 "ac837e8d7476b5c132d7ee3cea85d02d964e22050a3abbc2716177e56ae10be9"
  license "MIT"

  def install
    bin.install "gobump"
  end
end
