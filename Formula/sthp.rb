class Sthp < Formula
  desc "Executable to convert SOCKS5 proxy into HTTP proxy"
  homepage "https://github.com/KaranGauswami/socks-to-http-proxy"
  url "https://github.com/KaranGauswami/socks-to-http-proxy/archive/v0.3.0.tar.gz", verified: "github.com"
  sha256 "087c9158558279b98f9c9fd2a7b3f37431e1dd391b626e779a35b11514115fbe"
  head "https://github.com/KaranGauswami/socks-to-http-proxy.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
