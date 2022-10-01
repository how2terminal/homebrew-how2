class How2 < Formula
  desc "AI for your terminal"
  homepage "https://how2terminal.com"
  url "https://github.com/santinic/how2/releases/download/v3.0.0-beta/how2-macos-x64.tar.gz"
  version "3.0.0"
  sha256 "d4becf4ea3e8c15ea355c6061a0c2d84a509166f1e9bcadb8e90f7321e02ae1e"
  license "MIT"

  def install
    bin.install "how2-macos-x64" => "how2"
  end

  test do
    system "how2"
  end
end
