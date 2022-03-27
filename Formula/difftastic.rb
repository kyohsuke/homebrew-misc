class Difftastic < Formula
  desc 'Difftastic is an experimental diff tool that compares files based on their syntax.'
  homepage 'https://github.com/wilfred/difftastic'
  version '0.24.0'
  license 'MIT'

  url "#{homepage}/archive/refs/tags/#{version}.tar.gz"
  sha256 '195bc08b36132b4fea90942243dece209573f6123bd8c60dabaad869e7441489'

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
