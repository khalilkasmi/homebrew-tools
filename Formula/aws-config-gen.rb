class AwsConfigGen < Formula
  desc "Interactive TUI to generate AWS SSO config profiles"
  homepage "https://github.com/khalilkasmi/aws-config-gen"
  url "https://github.com/khalilkasmi/aws-config-gen/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "" # TODO: fill after first release
  license "MIT"

  depends_on "awscli"
  depends_on "fzf"
  depends_on "jq"

  def install
    bin.install "aws-config-gen"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/aws-config-gen --help", 1)
  end
end
