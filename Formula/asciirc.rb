class Asciirc < Formula
  desc "Terminal Rocket.Chat client in the style of irssi"
  homepage "https://github.com/tamasgal/asciirc"
  url "https://github.com/tamasgal/asciirc/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "5295380057d35d535afe62f8e64896cc9e777dc3a6289df890629e042bb18761"
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
