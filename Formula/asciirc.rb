class Asciirc < Formula
  desc "Terminal Rocket.Chat client in the style of irssi"
  homepage "https://github.com/tamasgal/asciirc"
  url "https://github.com/tamasgal/asciirc/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "4ba65e2c2af4b58fdd87a45345621a28ae806bbb67eb44069bf1c0d8fdd4d25b"
  license "MIT"

  depends_on "pkgconf" => :build
  depends_on "openssl@4"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    assert_match "asciirc #{version}", shell_output("#{bin}/asciirc -v")
  end
end
