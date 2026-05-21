# typed: false
# frozen_string_literal: true

class Clx < Formula
  desc "Intelligent command validation and context persistence for Claude Code"
  homepage "https://github.com/blackaxgit/clx"
  version "0.8.1"
  license "MPL-2.0"

  # Apple Silicon only. Intel macOS is unsupported from 0.8.0
  # (no prebuilt ONNX Runtime for the bge-reranker dependency).
  on_macos do
    on_arm do
      url "https://github.com/blackaxgit/clx/releases/download/v0.8.1/clx-aarch64-apple-darwin.tar.gz"
      sha256 "c4d39a86a23bfec9cc6a3645fa03bef74c6fb955630484e08ed4cbe0d63d31cd"
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
