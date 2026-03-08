class AwsConfigGen < Formula
  desc "Interactive TUI to generate AWS SSO config profiles"
  homepage "https://github.com/khalilkasmi/aws-config-gen"
  url "https://github.com/khalilkasmi/aws-config-gen/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "9ba68498a58eecac3df6380cf09e6e8f296840aad5dc6ed615c78bf581656ccd"
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
