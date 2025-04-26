class Sthp < Formula
  desc "Executable to convert SOCKS5 proxy into HTTP proxy"
  homepage "https://github.com/KaranGauswami/socks-to-http-proxy"
  url "https://github.com/KaranGauswami/socks-to-http-proxy/archive/refs/tags/#{version}.tar.gz"
  version "0.5.0-beta2"
  sha256 "f401b6f726e9148c70b15f53b44a2db43f97a2446c6a80d84529dff347d1bb68"

  head "https://github.com/KaranGauswami/socks-to-http-proxy.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
