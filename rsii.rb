class Rsii < Formula
  desc "RSII - Rust AI Command-line Assistant"
  homepage "https://github.com/ioma8/rsii"
  if Hardware::CPU.intel?
    url "https://github.com/ioma8/rsii/releases/download/0.1.1/rsii-macos-x86_64.tar.gz"
    sha256 "1598358baa894fde9d849bbadf3f42da976a1eb8a02e736a5d099894e710b152"
  else
    url "https://github.com/ioma8/rsii/releases/download/0.1.1/rsii-macos-arm64.tar.gz"
    sha256 "4f72c8783924170c5320aa37fd65ba934c119ba26d88aabccf824547d0e791b3"
  end
  license "MIT"

  def install
    bin.install "rsii"
  end

  test do
    assert_match "RSII version", shell_output("#{bin}/rsii --version")
  end
end