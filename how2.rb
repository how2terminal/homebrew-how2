class How2 < Formula
  desc "AI for your terminal"
  homepage "https://how2terminal.com"
  url "https://github.com/santinic/how2/releases/download/v3.0.3/how2.js.tar.gz"
  sha256 "4eb384b93374efae960ec3a235a25c139fe41e0d69036bb609c25c82a9ae98e0"
  license "MIT"
  depends_on "node"

  def install
    bin.install "how2.js" => "how2"
  end

  test do
    system "how2"
  end
end
