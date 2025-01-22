class Rsii < Formula
  desc "RSII - Rust AI Command-line Assistant"
  homepage "https://github.com/ioma8/rsii"
  url "https://github.com/ioma8/rsii/archive/refs/tags/0.1.0.tar.gz"
  sha256 "293ba538787768e60407f3468e0b316300da03f3ca319bca5e9c3b582ae958c6"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/rsii", "--version"
  end
end
