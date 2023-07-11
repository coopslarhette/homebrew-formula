class Gcli < Formula
  desc "gcli helps you do stuff, or remember how to do stuff, in the terminal"
  homepage "https://github.com/coopslarhette/gcli"
  url "https://github.com/coopslarhette/gcli/releases/download/0.0.1/gcli.tar.gz"
  sha256 "f68b5ab248aa75c1bb69452cc66d05ca432319bde518f2514d58af091f3d58e3"
  license "MIT"
  version "0.0.1"

  def install
    bin.install "gcli"
  end
end
