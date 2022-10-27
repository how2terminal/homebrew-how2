class How2 < Formula
  desc "AI for your terminal"
  homepage "https://how2terminal.com"
  url "https://github.com/santinic/how2/releases/download/v3.0.3/how2.js.tar.gz"
  sha256 "bb08cb033f68270598f72853d78131341f4499aec3710d3d9fe0ef69fd52f17b"
  license "MIT"
  depends_on "node"

  def install
    bin.install "how2.js" => "how2"
  end

  test do
    system "how2"
  end
end
