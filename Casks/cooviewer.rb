cask "cooviewer" do
  version "1.2b25"
  sha256 "b085124c540ce6e7cf2f8dbf1c2a0dc7ae47133d9afbc73357ac98ea168cf09e"

  url "https://github.com/coo-ona/cooViewer/releases/download/#{version}/cooViewer.zip", verified: "github.com/"
  name "cooViewer"
  desc "Simple comic viewer"
  homepage "https://coo-ona.github.io/cooViewer/"

  app "cooviewer/cooViewer.app"
end
