class AwsConfigGen < Formula
  desc "Interactive TUI to generate AWS SSO config profiles"
  homepage "https://github.com/khalilkasmi/aws-config-gen"
  url "https://github.com/khalilkasmi/aws-config-gen/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "81de7d7ded5add728ea7bc56a2500bb7ed971a0711e48b406240f870d02e79b6"
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
