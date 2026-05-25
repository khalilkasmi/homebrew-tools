class AwsConfigGen < Formula
  desc "Interactive TUI to generate AWS SSO config profiles"
  homepage "https://github.com/khalilkasmi/aws-config-gen"
  url "https://github.com/khalilkasmi/aws-config-gen/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "d680b0d75f38b1cd8fb03a5c91102890256f85128062496474af7e1db3007187"
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
