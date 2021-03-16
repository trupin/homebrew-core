class Lucid < Formula
  desc "Command-line tool for Lucid"
  homepage "https://github.com/scribd/Lucid"
  url "https://github.com/scribd/Lucid/archive/1.0.0.tar.gz"
  sha256 "298b3a42047930956bb1bbab9a22fc57433b10842089af31d6df86e459125234"
  license "MIT"

  depends_on xcode: ["11.4", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/lucid", "--help"
  end
end
