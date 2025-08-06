cask "macface-haruhi" do
  version :latest
  sha256 :no_check

  url "https://drive.google.com/uc?export=download&id=1MkW_vAw0wmIEHX-ziLninD3qSVME7s-Y",
      verified: "drive.google.com/"
  name "MacFace - Face Pattern :: Suzumiya Haruhi"
  desc "Haruhi Face Pattern of MacFace"
  homepage "http://www.misuzilla.org/"

  depends_on cask: "macface"

  artifact "haruhi.mcface", target: "/Applications/macface/haruhi.mcface"
  artifact "haruhi-rev.mcface", target: "/Applications/macface/haruhi-rev.mcface"
end
