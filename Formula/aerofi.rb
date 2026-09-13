class Aerofi < Formula
  desc "Lightweight, keyboard- and mouse-driven script launcher for macOS"
  homepage "https://github.com/frostymur/aerofi"
  version "0.1.4"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/frostymur/aerofi/releases/download/v0.1.4/aerofi-mac-arm64.tar.gz"
    sha256 "b17b552a778580637e909bbc2cb86fc60495000704988a8a115051a2962bbfc6"
  else
    url "https://github.com/frostymur/aerofi/releases/download/v0.1.4/aerofi-mac-x86_64.tar.gz"
    sha256 "6c26f169edbee8e8beb485bb342db982f1e2253dcee1eea8678de2dbcd7c60a9"
  end

  def install
    bin.install "aerofi"
  end

  test do
    system "#{bin}/aerofi", "--version"
  end
end
