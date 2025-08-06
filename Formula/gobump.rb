class Gobump < Formula
  ostype = OS.mac? ? :darwin : :linux
  cputype = Hardware::CPU.arch
  cputype = :amd64 if cputype == :x86_64

  sha256s = {
    darwin: {
      amd64: "350441f42ee1be56425c1c32badfcfe2a815d5ad85c1d2da32bdeda7ee39121f",
      arm64: "eef84efb0558d400ce4893ecf18219656569834ff0b3be0b4d9445de6a06fa1d",
    },
    linux:  {
      amd64: "bbf104fb83d9dc53b1a1c2a7e57f1b425d889dd0d198697537e363e4feca2222",
      arm64: "c2aa36213db878ef0c4c2cdcb30913379523cb00bc056398994a348b6b998fb8",
    },
  }

  desc "Bumps up Go program version"
  homepage "https://github.com/x-motemen/gobump"
  url "https://github.com/x-motemen/gobump/releases/download/v#{version}/gobump_v#{version}_#{ostype}_#{cputype}.zip"
  version "0.3.0"
  sha256 sha256s[ostype][cputype]
  license "MIT"

  def install
    bin.install "gobump"
  end
end
