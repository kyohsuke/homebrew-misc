class Files < Formula
  desc "Fast file find"
  homepage "https://github.com/mattn/files"
  url "https://github.com/mattn/files/archive/refs/tags/v#{version}.tar.gz"
  version "0.3.9"
  sha256 "2e6568c1920b464f090a9fa7a6d422fa66e342496371d1055ffe187da1fda874"
  license "MIT"
  head "https://github.com/mattn/files.git", branch: "master"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end
end
