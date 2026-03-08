class AwsConfigGen < Formula
  desc "Interactive TUI to generate AWS SSO config profiles"
  homepage "https://github.com/khalilkasmi/aws-config-gen"
  url "https://github.com/khalilkasmi/aws-config-gen/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "c6d582fe9ca0349569f7296ff18e178becdf75f66c101e88f1707d6281efc8d2"
  license "MIT"

  depends_on "uv"
  depends_on "fzf"

  def install
    bin.install "aws-config-gen"
  end

  test do
    assert_match "usage:", shell_output("#{bin}/aws-config-gen --help")
  end
end
