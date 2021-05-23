cask 'macface-haruhi' do
  version 'latest'
  sha256 '91bc041a0119140d830886ab9146fd05932fd6fff8991ef542fa0a681d7c620a'

  url 'https://drive.google.com/uc?export=download&id=1MkW_vAw0wmIEHX-ziLninD3qSVME7s-Y',
      verified: 'https://drive.google.com/uc?export=download&id=1MkW_vAw0wmIEHX-ziLninD3qSVME7s-Y'

  name 'MacFace - Face Pattern :: Suzumiya Haruhi'
  homepage 'http://www.misuzilla.org/'

  depends_on cask: 'macface'

  artifact 'haruhi.mcface', target: '/Applications/macface/haruhi.mcface'
  artifact 'haruhi-rev.mcface', target: '/Applications/macface/haruhi-rev.mcface'
end
