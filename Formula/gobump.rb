class Gobump < Formula
  desc 'Bumps up Go program version'
  homepage 'https://github.com/x-motemen/gobump'
  version 'v0.2.0'
  license 'MIT'

  url "#{homepage}/releases/download/#{version}/gobump_#{version}_darwin_amd64.zip"
  sha256 'ac837e8d7476b5c132d7ee3cea85d02d964e22050a3abbc2716177e56ae10be9'

  def install
    bin.install 'gobump'
  end
end
