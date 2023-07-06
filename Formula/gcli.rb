class Gcli < Formula
  desc "gcli helps you do stuff, or remember how to do stuff, in the terminal"
  homepage "https://github.com/coopslarhette/gcli"
  url "https://github.com/coopslarhette/gcli/releases/download/0.0.1/gen-cli.tar.gz"
  sha256 "8e8337535cb5053093ae07cf5fb1aa293750756b127381847f44aa091fb84b73"
  license "MIT"
  version "0.0.1"

  def install
    bin.install "gcli"
  end
end
