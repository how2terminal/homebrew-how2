class How2 < Formula
  desc "AI for your terminal"
  homepage "https://how2terminal.com"
  if Hardware::CPU.intel?
    url "https://github.com/santinic/how2/releases/download/v3.0.3/how2-macos-x64.tar.gz"
    sha256 "1c46d6ad92cf5114982a330d8c270d1459d0dae269ccb6e5830016598f23ac29"
  else
    url "https://github.com/santinic/how2/releases/download/v3.0.3/how2-macos-arm64.tar.gz"
    sha256 "004cb1f85c6de89de2960960d6f8f6f025035da53c4696a2af09bec70cc08eab"
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
