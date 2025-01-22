class Rsii < Formula
  desc "RSII - Rust AI Command-line Assistant"
  homepage "https://github.com/ioma8/rsii"
  url "https://github.com/ioma8/rsii/archive/refs/tags/0.1.1.tar.gz"
  sha256 "81caec15c60b09b49f95092f235058c91074ca2ccb9804c322bda2991134a35e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/rsii", "--version"
  end
end
