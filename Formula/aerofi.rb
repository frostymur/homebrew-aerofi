class Aerofi < Formula
  desc "Lightweight, keyboard- and mouse-driven script launcher for macOS"
  homepage "https://github.com/frostymur/aerofi"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/frostymur/aerofi/releases/download/v0.1.6/aerofi-mac-arm64.tar.gz"
    sha256 "6942ef950985c287c8d0d37d6eee5638780ab4e01740ef602d59499ea3e0a1dc"
  else
    url "https://github.com/frostymur/aerofi/releases/download/v0.1.6/aerofi-mac-x86_64.tar.gz"
    sha256 "127b9a19bb34accd34f614132deaabb18c430782ec7d0d1e58c938ee70347b89"
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
