class Asciirc < Formula
  desc "Terminal Rocket.Chat client in the style of irssi"
  homepage "https://github.com/tamasgal/asciirc"
  url "https://github.com/tamasgal/asciirc/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "6916659d25a431d156bcad22b9aeef1a247c2aff528305b7d5d8d2bbf224ef47"
  license "MIT"

  depends_on "pkgconf" => :build
  depends_on "openssl@4"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    assert_match "asciirc 1.0.0", shell_output("#{bin}/asciirc -v")
  end
end
