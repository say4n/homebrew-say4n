class Jf < Formula
  desc "flatten them json"
  homepage "https://github.com/say4n/jf/"
  version "0.2.2"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/say4n/jf/releases/download/v0.2.2/jf-aarch64-apple-darwin.tar.gz"
      sha256 "10fdb39696989679cea001bd0f013ff337797d0f6a9d99d8fc89ca119fde41b3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/say4n/jf/releases/download/v0.2.2/jf-x86_64-apple-darwin.tar.gz"
      sha256 "830990dbadbbc12dc017b712aa856e3e1bd74755923f914c8a3ee9ca2d08d183"
    end
  end
  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/say4n/jf/releases/download/v0.2.2/jf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "718815a106dc43c1a31c7319f314bdb3fc26f2e667788586624f676e333c29c1"
    end
  end
  license "MIT"

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "jf"
    end
    if OS.mac? && Hardware::CPU.intel?
      bin.install "jf"
    end
    if OS.linux? && Hardware::CPU.intel?
      bin.install "jf"
    end

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end
