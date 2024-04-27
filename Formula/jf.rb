class Jf < Formula
  desc "flatten them json"
  homepage "https://github.com/say4n/jf/"
  version "0.2.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/say4n/jf/releases/download/v0.2.0/jf-aarch64-apple-darwin.tar.gz"
      sha256 "9c5764c6715288626624e1608b35ad77bb5ef0bb71398dc3df1989050f303a1d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/say4n/jf/releases/download/v0.2.0/jf-x86_64-apple-darwin.tar.gz"
      sha256 "10d08f6836713aa5cad1d9f24dfbda97cd9f202a3e30d0ab7bd595eaeb82b64d"
    end
  end
  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/say4n/jf/releases/download/v0.2.0/jf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b37d523689bee0f77af70abd06068eeff1eedc32e40a231f2bae935e733d2f1"
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
