class Gcli < Formula
 desc "gcli helps you do stuff, or remember how to do stuff, in the terminal"
 homepage "https://github.com/coopslarhette/gcli"
 version "0.0.2"
 license "MIT"

 on_macos do
   if Hardware::CPU.arm?
     url "https://github.com/coopslarhette/gcli/releases/download/v0.0.2/gcli-arm64.tar.gz"
     sha256 "d9699b4a97da3931e91a8198a5198dee6f4de95c5dbcd63032888f4e69de9fb7"
   else
     url "https://github.com/coopslarhette/gcli/releases/download/v0.0.2/gcli-x64.tar.gz"
     sha256 "a7584e0157650e463ba9705606397a4e11d8cfb89935187a365235c7af87e236"
   end
 end

 def install
   bin.install "gcli-arm64" => "gcli" if Hardware::CPU.arm?
   bin.install "gcli-x64" => "gcli" if Hardware::CPU.intel?
 end
end
