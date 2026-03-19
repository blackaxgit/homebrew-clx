# typed: false
# frozen_string_literal: true

class Clx < Formula
  desc "Intelligent command validation and context persistence for Claude Code"
  homepage "https://github.com/blackaxgit/clx"
  version "0.1.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/blackaxgit/clx/releases/download/v0.1.0/clx-aarch64-apple-darwin.tar.gz"
      sha256 "2d66a618e502c9afd32925cbec2b51a81134c024bcd1c5b6a6dd1a391a4444c3"
    end
    on_intel do
      url "https://github.com/blackaxgit/clx/releases/download/v0.1.0/clx-x86_64-apple-darwin.tar.gz"
      sha256 "7828eb5462e269f42564bc1922013068477d7f8f6a9f9bc4d02ec53278a0e0ee"
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
