class How2 < Formula
  desc "AI for your terminal"
  homepage "https://how2terminal.com"
  if Hardware::CPU.intel?
    url "https://github.com/santinic/how2/releases/download/v3.0.3/how2-macos-x64.tar.gz"
    sha256 "d4c8b1df1f29e4c631fdd40283870ad4594c0d2a2010f2133aa82d6a8dacde5b"
  else
    url "https://github.com/santinic/how2/releases/download/v3.0.3/how2-macos-arm64.tar.gz"
    sha256 "129d056799c46130d65ef5731a0848aeb8322ac85c5a069fc15d93552e9f2716"
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
