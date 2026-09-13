class Aerofi < Formula
  desc "Lightweight, keyboard- and mouse-driven script launcher for macOS"
  homepage "https://github.com/frostymur/aerofi"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/frostymur/aerofi/releases/download/v0.1.5/aerofi-mac-arm64.tar.gz"
    sha256 "c9728a0c6445f8ec5889d8f6480e5851f9d86789b562e906c073695d34f2f1d1"
  else
    url "https://github.com/frostymur/aerofi/releases/download/v0.1.5/aerofi-mac-x86_64.tar.gz"
    sha256 "5089945ff5fa06b7a7758f77ae499c1b84130ba5d3ff424dcbfa09fa8389bb33"
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
