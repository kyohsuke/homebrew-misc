class Files < Formula
  desc "Fast file find"
  homepage "https://github.com/mattn/files"
  url "https://github.com/mattn/files/releases/download/v0.3.8/files_v0.3.8_darwin_amd64.zip"
  version "0.3.8"
  sha256 "187594f54037e6261c116e04c57a1c8d9f113ded8d3b26e9b61440b6a53c93e5"
  license "MIT"

  def install
    bin.install "files"
  end
end
