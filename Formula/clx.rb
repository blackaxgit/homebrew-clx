# typed: false
# frozen_string_literal: true

class Clx < Formula
  desc "Intelligent command validation and context persistence for Claude Code"
  homepage "https://github.com/blackaxgit/clx"
  version "0.2.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/blackaxgit/clx/releases/download/v0.2.1/clx-aarch64-apple-darwin.tar.gz"
      sha256 "da26c9519f02604b7019ab6c215b93f4ecf8e56f733e4755bbd6380e5ecdb69b"
    end
    on_intel do
      url "https://github.com/blackaxgit/clx/releases/download/v0.2.1/clx-x86_64-apple-darwin.tar.gz"
      sha256 "045aad8462031ca52abab9ee079589601d09b055a036ed677c861c52e4d1e028"
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
