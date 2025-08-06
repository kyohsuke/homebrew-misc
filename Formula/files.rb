class Files < Formula
  ostype = OS.mac? ? :darwin : :linux
  cputype = Hardware::CPU.arch
  cputype = :amd64 if cputype == :x86_64

  sha256s = {
    darwin: {
      amd64: "5ebdf907303c5327834ecaad35238d55a370512d96f43ff9d07dd6b4eb034c2d",
      arm64: "35c3b1bd51456d781b07246ee2d97778a33e67b14ed47a4810d20b0c33078243",
    },
    linux:  {
      amd64: "5659a09da4468c8cd86ce5833a8f1894028ddb9efa568a59d024901afb6ea950",
      arm64: "109b9335d4792e619479d9a624e182130bf4661d71d0c0e4a84e9fb746dbe19c",
    },
  }

  desc "Fast file find"
  homepage "https://github.com/mattn/files"
  url "https://github.com/x-motemen/gobump/releases/download/v#{version}/gobump_v#{version}_#{ostype}_#{cputype}.zip"
  version "0.3.9"
  sha256 sha256s[ostype][cputype]
  license "MIT"

  def install
    bin.install "files"
  end
end
