class How2 < Formula
  desc "AI for your terminal"
  homepage "https://how2terminal.com"
  if Hardware::CPU.intel?
    url "https://github.com/santinic/how2/releases/download/v3.0.2/how2-macos-x64.tar.gz"
    sha256 "c5b18ff96f4bf9f82db0729555cd1ef33e2eb703ac60b474dba0e5832d76ef5c"
  else
    url "https://github.com/santinic/how2/releases/download/v3.0.2/how2-macos-arm64.tar.gz"
    sha256 "c7f9fbe53a704fdfb20c5ac914deea7da849bd3022387f6a5881f43d099bf585"
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
