class Localgpt < Formula
    desc "Run LocalGPT using Docker and Ollama"
    homepage "https://github.com/soujashmandal/localgpt"
    url "https://github.com/soujashmandal/localgpt/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "379c68035e668a22e7e11b33cb9874da432ef82abc0810f1790fb6da1d03f416"
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