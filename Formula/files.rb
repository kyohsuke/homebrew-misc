class Files < Formula
  version "0.3.8"
  sha256 "a8c82710fcf4b7299a23dbab0bbbb2acafba0f1e6db69a47608cfbe984939ca9"

  desc "Fast file find"
  url "https://github.com/mattn/files/releases/download/v#{version}/files_v#{version}_darwin_amd64.zip"
  homepage "https://github.com/mattn/files"
  license "MIT"

  def install
    bin.install "files"
  end
end
