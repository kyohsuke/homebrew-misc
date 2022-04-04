cask "macface-nagato" do
  version "20060910"
  sha256 "276069208114eb8ca283abcf343dd7a4989a74bb86cf00ead65f949a3d40dba7"

  url "https://drive.google.com/uc?export=download&id=1Jj6E9k4VQoHiY8MEjxuDUk59zC4suhad", verified: "drive.google.com"
  name "MacFace - Face Pattern :: Nagato Yuki"
  desc "Nagato Face Pattern of MacFace"
  homepage "http://www.eris.ais.ne.jp/~himitu/soft/macface/nagato/"

  depends_on cask: "macface"

  artifact "nagato.mcface", target: "/Applications/macface/nagato.mcface"
end
