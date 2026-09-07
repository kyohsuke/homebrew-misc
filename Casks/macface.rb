cask "macface" do
  version "1.3.2"
  sha256 "39fb3007f011c5ad2b5f3e2c9d924a1a2af17ee476353b37db48f37cf976cad2"

  url "https://github.com/MacFace/MacFace/releases/download/v#{version}/MacFace-#{version}.dmg"
  name "MacFace"
  desc "Emotional CPU Meter"
  homepage "https://macface.github.io/"

  app "MacFace.app", target: "/Applications/macface/MacFace.app"
  artifact "kikiki-rin.mcface", target: "/Applications/macface/kikiki-rin.mcface"
  artifact "readme.rtf", target: "/Applications/macface/readme.rtf"
  artifact "顔パターンファイルの作り方.rtf", target: "/Applications/macface/顔パターンファイルの作り方.rtf"
end
