class Files < Formula
  desc "Fast file find"
  homepage "https://github.com/mattn/files"
  url "https://github.com/mattn/files/releases/download/v#{version}/files_v#{version}_darwin_amd64.zip"
  version "0.3.8"
  sha256 "a8c82710fcf4b7299a23dbab0bbbb2acafba0f1e6db69a47608cfbe984939ca9"

  license "MIT"

  def install
    bin.install "files"
  end
end
