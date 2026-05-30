# typed: false
# frozen_string_literal: true

class Clx < Formula
  desc "Intelligent command validation and context persistence for Claude Code"
  homepage "https://github.com/blackaxgit/clx"
  version "0.10.1"
  license "MPL-2.0"

  # Apple Silicon only. Intel macOS is unsupported from 0.8.0
  # (no prebuilt ONNX Runtime for the bge-reranker dependency).
  on_macos do
    on_arm do
      url "https://github.com/blackaxgit/clx/releases/download/v0.10.1/clx-aarch64-apple-darwin.tar.gz"
      sha256 "a8f34b3542dbafcbb4e0d9882bacb675100b4d8d7ee293b70687ce60bae31fbc"
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
