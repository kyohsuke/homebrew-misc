cask "macface" do
  version "1.3.2"
  sha256 "39fb3007f011c5ad2b5f3e2c9d924a1a2af17ee476353b37db48f37cf976cad2"

  url "https://github.com/MacFace/MacFace/releases/download/v#{version}/MacFace-#{version}.dmg", verified: "github.com/"
  name "MacFace"
  desc "Emotional CPU Meter"
  homepage "https://macface.github.io/"

  app "MacFace.app", target: "/Applications/macface/MacFace.app"

  ["kikiki-rin.mcface", "readme.rtf", "顔パターンファイルの作り方.rtf"].each do |filename|
    artifact filename, target: "/Applications/macface/#{filename}"
  end

  uninstall_postflight do
    ["kikiki-rin.mcface", "readme.rtf", "顔パターンファイルの作り方.rtf"].each do |filename|
      system_command "/bin/rm", args: ["-f", "/Applications/macface/#{filename}"]
    end
  end
end
