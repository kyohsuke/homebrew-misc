cask 'macface-haruhi' do
  name 'MacFace - Face Pattern :: Suzumiya Haruhi'
  version :latest

  desc 'Haruhi Face Pattern of MacFace'
  homepage 'http://www.misuzilla.org/'

  url 'https://drive.google.com/uc?export=download&id=1MkW_vAw0wmIEHX-ziLninD3qSVME7s-Y', verified: 'drive.google.com'
  sha256 :no_check

  depends_on cask: 'macface'

  artifact 'haruhi.mcface', target: '/Applications/macface/haruhi.mcface'
  artifact 'haruhi-rev.mcface', target: '/Applications/macface/haruhi-rev.mcface'
end
