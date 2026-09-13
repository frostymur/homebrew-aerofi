class Aerofi < Formula
  desc "Lightweight, keyboard- and mouse-driven script launcher for macOS"
  homepage "https://github.com/frostymur/aerofi"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/frostymur/aerofi/releases/download/v0.1.6/aerofi-mac-arm64.tar.gz"
    sha256 "5c6a97fed989a6549bbad6d71560415def20d13fd9f809c312d665806efcc37d"
  else
    url "https://github.com/frostymur/aerofi/releases/download/v0.1.6/aerofi-mac-x86_64.tar.gz"
    sha256 "5b5dfc84bdf722c74c4fc2635704836c10e9b77a052c080055bb28655b0f23f4"
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
