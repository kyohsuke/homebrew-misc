cask 'macface' do
  name 'MacFace'
  version '1.3.2'

  homepage 'http://macface.github.io/'

  url "https://github.com/MacFace/MacFace/releases/download/v#{version}/MacFace-#{version}.dmg", verified: 'github.com'
  sha256 '39fb3007f011c5ad2b5f3e2c9d924a1a2af17ee476353b37db48f37cf976cad2'

  app 'MacFace.app', target: '/Applications/macface/MacFace.app'

  ['kikiki-rin.mcface', 'readme.rtf', '顔パターンファイルの作り方.rtf'].each do |filename|
    artifact filename, target: "/Applications/macface/#{filename}"
  end

  uninstall_postflight do
    system_command '/bin/rm', args: ['-rf', '/Applications/macface']
  end
end
