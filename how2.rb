class How2 < Formula
  desc "AI for your terminal"
  homepage "https://how2terminal.com"
  if Hardware::CPU.intel?
    url "https://github.com/santinic/how2/releases/download/v3.0.3/how2-macos-x64.tar.gz"
    sha256 "376fac34c586535f0fcd81120e2041595f1d7c4d1b74e4fde64f0a4c85bced80"
  else
    url "https://github.com/santinic/how2/releases/download/v3.0.3/how2-macos-arm64.tar.gz"
    sha256 "c90219428e65594c24216dc7e626e8bc7c7178deac24d81fb1475cb7938ac5ea"
  end
  license "MIT"

  def install
    if Hardware::CPU.intel?
      bin.install "how2-macos-x64" => "how2"
    else
      bin.install "how2-macos-arm64" => "how2"
    end
  end

  test do
    system "how2"
  end
end
