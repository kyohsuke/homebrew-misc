class Ffmpeg < Formula
  desc "A complete, cross-platform solution to record, convert and stream audio and video."
  homepage "https://ffmpeg.org/"
  url "https://evermeet.cx/pub/ffmpeg/ffmpeg-6.1.1.zip", verified: "evermeet.cx"
  sha256 "7de74c26a20dd172ed49c7de6035ee0790c83e69e461c3a6895b33ae0787e513"
  version "6.1.1"

  def install
    bin.install "ffmpeg"
  end
end
