class AwsConfigGen < Formula
  desc "Interactive TUI to generate AWS SSO config profiles"
  homepage "https://github.com/khalilkasmi/aws-config-gen"
  url "https://github.com/khalilkasmi/aws-config-gen/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "d585dabbf21bd2de061c679b499fd589ca0cddefcff48d509b238585812e32e8"
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
