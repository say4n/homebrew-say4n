class Jf < Formula
  desc "flatten them json"
  homepage "https://github.com/say4n/jf/"
  version "0.2.1"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/say4n/jf/releases/download/v0.2.1/jf-aarch64-apple-darwin.tar.gz"
      sha256 "a120b8f2e4b138f6f2812add722115730b27a4f57319e8acde604c69ef756752"
    end
    if Hardware::CPU.intel?
      url "https://github.com/say4n/jf/releases/download/v0.2.1/jf-x86_64-apple-darwin.tar.gz"
      sha256 "aa9f9a5f829f55250d961c2a1297fc972d8e984eb00b3af059e9194d30df8b5f"
    end
  end
  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/say4n/jf/releases/download/v0.2.1/jf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49af9402b85e376a77559762b56992b7af2e06b20dc626917f3a9864934dad9d"
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
