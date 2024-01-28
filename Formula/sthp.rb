class Sthp < Formula
  desc "Executable to convert SOCKS5 proxy into HTTP proxy"
  homepage "https://github.com/KaranGauswami/socks-to-http-proxy"
  url "https://github.com/KaranGauswami/socks-to-http-proxy/archive/refs/tags/v#{version}.tar.gz", verified: "github.com"
  version "0.4.0"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  head "https://github.com/KaranGauswami/socks-to-http-proxy.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
