class Llamatop < Formula
  desc "Monitor llama.cpp and Apple Silicon activity"
  homepage "https://github.com/fragmede/llamatop"
  url "https://github.com/fragmede/llamatop/releases/download/v0.5.0/llamatop-0.5.0-macos-arm64.tar.gz"
  sha256 "bb06322de7ec16ec7761b91bd191f46efe86dd98b21e62bd4a6d5df5fed7c9ed"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "llamatop"
  end

  test do
    assert_match "LlamaTop #{version}", shell_output("#{bin}/llamatop --version")
    assert_match "LLAMATOP", shell_output("#{bin}/llamatop --once")
  end
end
