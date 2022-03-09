class Difftastic < Formula
  desc 'Difftastic is an experimental diff tool that compares files based on their syntax.'
  homepage 'https://github.com/wilfred/difftastic'
  version '0.21.0'
  license 'MIT'

  url "#{homepage}/archive/refs/tags/#{version}.tar.gz"
  sha256 'b65b03b462fcd765c8b606c6d6bdf55d8b0df7844c2f112763a15a5e96511794'

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
