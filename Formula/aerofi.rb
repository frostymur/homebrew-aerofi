class Aerofi < Formula
  desc "Lightweight, keyboard- and mouse-driven script launcher for macOS"
  homepage "https://github.com/frostymur/aerofi"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/frostymur/aerofi/releases/download/v0.1.8/aerofi-mac-arm64.tar.gz"
    sha256 "2de0dfc55095a2309d875e5496e11980b9cfc909f469b66440d615eb882ef276"
  else
    url "https://github.com/frostymur/aerofi/releases/download/v0.1.8/aerofi-mac-x86_64.tar.gz"
    sha256 "d4bdecafe0e58d7ce0cc66509f57eec50894f8000b74391b7b1e08ed9819e4a1"
  end

  def install
    bin.install "aerofi"
  end

  service do
    run opt_bin/"aerofi"
    keep_alive true
    process_type :interactive
  end

  test do
    system bin/"aerofi", "--version"
  end
end
