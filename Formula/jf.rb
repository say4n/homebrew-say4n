class Jf < Formula
  desc "flatten them json"
  homepage "https://github.com/say4n/jf/"
  version "0.1.1"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/say4n/jf/releases/download/v0.1.1/jf-aarch64-apple-darwin.tar.gz"
      sha256 "0fad30b89066687b7ffb421d890bf9a2598b6fbb1d2b6acfc374425d34126977"
    end
    if Hardware::CPU.intel?
      url "https://github.com/say4n/jf/releases/download/v0.1.1/jf-x86_64-apple-darwin.tar.gz"
      sha256 "64a1976a4e9027ba3678453c765cc70b3ddfbfc94eb7d025074b11e9a2d93bb4"
    end
  end
  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/say4n/jf/releases/download/v0.1.1/jf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f4034dfb758d8fa61d216a851b8146d397277bbf63e2bae5ed1faf84fde486fd"
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
