class Localgpt < Formula
    desc "Run LocalGPT using Docker and Ollama"
    homepage "https://github.com/soujashmandal/localgpt"
    url "https://github.com/soujashmandal/localgpt/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "PUT_SHA256_HERE"
    license "MIT"
  
    depends_on "docker"
  
    def install
      bin.install "localgpt"
    end
  
    service do
      run [opt_bin/"localgpt", "start"]
      keep_alive true
    end
  end