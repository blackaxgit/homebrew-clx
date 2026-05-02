# typed: false
# frozen_string_literal: true

class Clx < Formula
  desc "Intelligent command validation and context persistence for Claude Code"
  homepage "https://github.com/blackaxgit/clx"
  version "0.7.2"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/blackaxgit/clx/releases/download/v0.7.2/clx-aarch64-apple-darwin.tar.gz"
      sha256 "784e26dfe6e491e557dace16515e4ee9e789d4057e6131fe276576fc049a4878"
    end
    on_intel do
      url "https://github.com/blackaxgit/clx/releases/download/v0.7.2/clx-x86_64-apple-darwin.tar.gz"
      sha256 "e4be7971d6e4a351d29b8532b71a174a92febe26617358d7ee9eed18504a01cb"
    end
  end

  def install
    bin.install "bin/clx"
    bin.install "bin/clx-hook"
    bin.install "bin/clx-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clx --version")
  end
end
