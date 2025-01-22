class Rsii < Formula
  desc "RSII - Rust AI Command-line Assistant"
  homepage "https://github.com/ioma8/rsii"
  url "https://github.com/ioma8/rsii/releases/download/v0.1.0/rsii-0.1.0.tar.gz"
  sha256 "actual_tarball_sha256"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/rsii", "--version"
  end
end
