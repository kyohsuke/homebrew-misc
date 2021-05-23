cask 'dockart' do
  version '2.2'
  sha256 '98d74d5ffbde08b8e8158f5672aede9eadb832352e8fb57d5e646d891b4512f0'

  name 'DockArt'
  homepage 'http://www.splook.com/Software/DockArt.html'
  url "http://www.splook.com/Software/DockArt_files/DockArt#{version.split('.').first}.zip"

  artifact 'Dockart 2.2/DockArt.bundle', target: "#{ENV['HOME']}/Library/iTunes/iTunes Plug-Ins/DockArt.bundle"
end
