class Files < Formula
  desc 'Fast file find'
  homepage 'https://github.com/mattn/files'
  version '0.3.3'
  license 'MIT'

  url "#{homepage}/releases/download/v#{version}/files_v#{version}_darwin_amd64.zip"
  sha256 '187594f54037e6261c116e04c57a1c8d9f113ded8d3b26e9b61440b6a53c93e5'

  def install
    bin.install 'files'
  end
end
