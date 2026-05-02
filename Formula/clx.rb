# typed: false
# frozen_string_literal: true

class Clx < Formula
  desc "Intelligent command validation and context persistence for Claude Code"
  homepage "https://github.com/blackaxgit/clx"
  version "0.7.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/blackaxgit/clx/releases/download/v0.7.0/clx-aarch64-apple-darwin.tar.gz"
      sha256 "4422a81c8c3dd5d28385432e4b93f7f2746e7699647ca9ecdd8b166853d5f8d6"
    end
    on_intel do
      url "https://github.com/blackaxgit/clx/releases/download/v0.7.0/clx-x86_64-apple-darwin.tar.gz"
      sha256 "a5281dc490883870ab73ab045bfc300be55932261fe9807d5feba411a44ef9f6"
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
