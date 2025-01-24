class Gcli < Formula
  desc "gcli helps you do stuff, or remember how to do stuff, in the terminal"
  homepage "https://github.com/coopslarhette/gcli"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url do
        require 'net/http'
        require 'json'
        
        latest_release = JSON.parse(Net::HTTP.get(URI("https://api.github.com/repos/coopslarhette/gcli/releases/latest")))
        asset = latest_release["assets"].find { |a| a["name"] == "gcli-arm64.tar.gz" }
        asset["browser_download_url"]
      end
      sha256 do
        require 'net/http'
        require 'json'
        
        latest_release = JSON.parse(Net::HTTP.get(URI("https://api.github.com/repos/coopslarhette/gcli/releases/latest")))
        asset = latest_release["assets"].find { |a| a["name"] == "gcli-arm64.tar.gz" }
        URI.open(asset["browser_download_url"]).then { |f| Digest::SHA256.file(f).hexdigest }
      end
    else
      url do
        require 'net/http'
        require 'json'
        
        latest_release = JSON.parse(Net::HTTP.get(URI("https://api.github.com/repos/coopslarhette/gcli/releases/latest")))
        asset = latest_release["assets"].find { |a| a["name"] == "gcli-x64.tar.gz" }
        asset["browser_download_url"]
      end
      sha256 do
        require 'net/http'
        require 'json'
        
        latest_release = JSON.parse(Net::HTTP.get(URI("https://api.github.com/repos/coopslarhette/gcli/releases/latest")))
        asset = latest_release["assets"].find { |a| a["name"] == "gcli-x64.tar.gz" }
        URI.open(asset["browser_download_url"]).then { |f| Digest::SHA256.file(f).hexdigest }
      end
    end
  end

  def install
    bin.install "gcli-arm64" => "gcli" if Hardware::CPU.arm?
    bin.install "gcli-x64" => "gcli" if Hardware::CPU.intel?
  end
end
