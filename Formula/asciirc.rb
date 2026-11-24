class Asciirc < Formula
  desc "Terminal Rocket.Chat client in the style of irssi"
  homepage "https://github.com/tamasgal/asciirc"
  url "https://github.com/tamasgal/asciirc/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "59f6b6de55e69f999d013e4875c66a113b9dcd000172f8964bd5cd8256d18340"
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
