class Gcli < Formula
  desc "gcli helps you do stuff, or remember how to do stuff, in the terminal"
  homepage "https://github.com/coopslarhette/gcli"
  license "MIT"
  
  latest_tag = begin
    require 'net/http'
    require 'json'
    JSON.parse(Net::HTTP.get(URI("https://api.github.com/repos/coopslarhette/gcli/releases/latest")))["tag_name"]
  end

  version latest_tag.sub(/^v/, '')

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coopslarhette/gcli/releases/download/#{latest_tag}/gcli-arm64.tar.gz"
    else
      url "https://github.com/coopslarhette/gcli/releases/download/#{latest_tag}/gcli-x64.tar.gz"
    end
  end

  def install
    bin.install "gcli-arm64" => "gcli" if Hardware::CPU.arm?
    bin.install "gcli-x64" => "gcli" if Hardware::CPU.intel?
  end
end
