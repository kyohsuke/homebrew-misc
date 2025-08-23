class Gobump < Formula
  desc "Bumps up Go program version"
  homepage "https://github.com/x-motemen/gobump"
  url "https://github.com/x-motemen/gobump/archive/refs/tags/#{version}.tar.gz"
  version "0.3.0"
  sha256 "4251a6e64277adbdb2b2a88dee2d380412f2c65d0aefb575d633b33080208b72"
  license "MIT"
  head "https://github.com/x-motemen/gobump.git", branch: "master"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"gobump"), "./cmd/gobump"
  end
end
