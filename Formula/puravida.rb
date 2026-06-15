class Puravida < Formula
  desc "Create files and directories in one command"
  homepage "https://github.com/mark-mcdermott/puravida"
  url "https://github.com/mark-mcdermott/puravida/archive/refs/tags/v2.1.1.tar.gz"
  sha256 "e794642499c9192c3d864c9f4db7a227df812d3da5543c6bf3c1c2193ec13389"
  license "MIT"

  def install
    bin.install "puravida"
    man1.install "man/puravida.1"
  end

  test do
    assert_match "puravida #{version}", shell_output("#{bin}/puravida --version")
    system bin/"puravida", "example.txt"
    assert_path_exists testpath/"example.txt"
  end
end
