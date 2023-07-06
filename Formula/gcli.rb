class Getfilesize < Formula
  desc "gcli helps you do stuff, or remember how to do stuff, in the terminal"
  homepage "https://github.com/coopslarhette/gcli"
  url "https://github.com/coopslarhette/gcli/releases/download/0.0.1/gen-cli.tar.gz"
  sha256 "0973a31ead9fb7ed31ea53d2d0923cb7cd16e29a54352673c9228493b9fe7f6f"
  license "MIT"
  version "0.0.1"

  def install
    bin.install "gcli"
  end
end
