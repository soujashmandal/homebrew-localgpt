class Localgpt < Formula
    desc "Run LocalGPT using Docker and Ollama"
    homepage "https://github.com/soujashmandal/localgpt"
    url "https://github.com/soujashmandal/localgpt/archive/refs/tags/v1.0.1.tar.gz"
    sha256 "ff6c7f4aa8e5d158ac03b52879dbd684f019f81829b8c20a10a65d0e0bd39653"
    license "MIT"
  
    depends_on "docker"
  
    def install
      bin.install "bin/localgpt"
    end
  
    service do
      run [opt_bin/"localgpt", "start"]
      keep_alive true
    end
  end