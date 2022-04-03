class Difftastic < Formula
  desc 'Difftastic is an experimental diff tool that compares files based on their syntax.'
  homepage 'https://github.com/wilfred/difftastic'
  version '0.25.0'
  license 'MIT'

  url "#{homepage}/archive/refs/tags/#{version}.tar.gz"
  sha256 'f63ce86ab0b9a2b036b4c61d9601d7046dd79c91be0a0e5a9b3b2a4a7fa66eee'

  depends_on 'rust' => :build

  def install
    system 'cargo', 'install', *std_cargo_args
  end
end
