class How2 < Formula
  desc "AI for your terminal"
  homepage "https://how2terminal.com"
  if Hardware::CPU.intel?
    url "https://github.com/santinic/how2/releases/download/v3.0.3/how2-macos-x64.tar.gz"
    sha256 "ee0a59d7d13ebd56a483387d13443a449b651a8c8edf562c6a2e463714da4900"
  else
    url "https://github.com/santinic/how2/releases/download/v3.0.3/how2-macos-arm64.tar.gz"
    sha256 "0af24f7bd98a8ffba3b55c94dda84e39083a1bb2a9dc6375a2b58289a4a6295e"
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
