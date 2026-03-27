# typed: false
# frozen_string_literal: true

class Clx < Formula
  desc "Intelligent command validation and context persistence for Claude Code"
  homepage "https://github.com/blackaxgit/clx"
  version "0.5.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/blackaxgit/clx/releases/download/v0.5.0/clx-aarch64-apple-darwin.tar.gz"
      sha256 "6604c70d145ab7c5b352a25275152a2f12ba4fed8aac28cb1ff0834260f6b090"
    end
    on_intel do
      url "https://github.com/blackaxgit/clx/releases/download/v0.5.0/clx-x86_64-apple-darwin.tar.gz"
      sha256 "310e06181d54808e6ddc8158f76d9f90be995a0eb86f39f9a848a3efb8f5d1b1"
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
