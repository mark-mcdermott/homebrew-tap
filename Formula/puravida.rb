class Puravida < Formula
  desc "Create files and directories in one command"
  homepage "https://github.com/mark-mcdermott/puravida"
  url "https://github.com/mark-mcdermott/puravida/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "d3d8893955d985a304e641cfe0af4cf42f2e9ef3041ad112b3c3c8ed1e252636"
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
