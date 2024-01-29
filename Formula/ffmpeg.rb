class Ffmpeg < Formula
  version "6.1.1"
  sha256 "7de74c26a20dd172ed49c7de6035ee0790c83e69e461c3a6895b33ae0787e513"

  desc "Complete, cross-platform solution to record, convert and stream audio and video"
  url "https://evermeet.cx/pub/ffmpeg/ffmpeg-#{version}.zip", verified: "evermeet.cx"
  homepage "https://ffmpeg.org/"

  def install
    bin.install "ffmpeg"
  end
end
