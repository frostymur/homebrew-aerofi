class Aerofi < Formula
  desc "Lightweight, keyboard- and mouse-driven script launcher for macOS"
  homepage "https://github.com/frostymur/aerofi"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/frostymur/aerofi/releases/download/v0.1.9/aerofi-mac-arm64.tar.gz"
    sha256 "88eff79c10b25cbf8adf65e1a7e35379c9d3dae8457b9902225ac9222b98b560"
  else
    url "https://github.com/frostymur/aerofi/releases/download/v0.1.9/aerofi-mac-x86_64.tar.gz"
    sha256 "8b6eb89a5ac17c166431fd74191c133eae407174d39af67ec14b0ec231b1f94e"
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
