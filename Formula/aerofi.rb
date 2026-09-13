class Aerofi < Formula
  desc "Lightweight, keyboard- and mouse-driven script launcher for macOS"
  homepage "https://github.com/frostymur/aerofi"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/frostymur/aerofi/releases/download/v0.1.7/aerofi-mac-arm64.tar.gz"
    sha256 "07734e8cf070175d1fb12a5c469112daa03a806e4d5ff9f834c25a8f5a930986"
  else
    url "https://github.com/frostymur/aerofi/releases/download/v0.1.7/aerofi-mac-x86_64.tar.gz"
    sha256 "4ff007e70f49db03ddb5d2670f5e96d4ea0a69f689431bfce02095d1499a9444"
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
