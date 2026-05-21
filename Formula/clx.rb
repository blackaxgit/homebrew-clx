# typed: false
# frozen_string_literal: true

class Clx < Formula
  desc "Intelligent command validation and context persistence for Claude Code"
  homepage "https://github.com/blackaxgit/clx"
  version "0.9.0"
  license "MPL-2.0"

  # Apple Silicon only. Intel macOS is unsupported from 0.8.0
  # (no prebuilt ONNX Runtime for the bge-reranker dependency).
  on_macos do
    on_arm do
      url "https://github.com/blackaxgit/clx/releases/download/v0.9.0/clx-aarch64-apple-darwin.tar.gz"
      sha256 "ffbb201aa0b15e2af2ca2825fc7c096f8c80b68934d3f01be7b0d422c02bb106"
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
