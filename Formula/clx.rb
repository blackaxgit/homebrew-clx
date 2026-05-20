# typed: false
# frozen_string_literal: true

class Clx < Formula
  desc "Intelligent command validation and context persistence for Claude Code"
  homepage "https://github.com/blackaxgit/clx"
  version "0.8.2"
  license "MPL-2.0"

  # Apple Silicon only. Intel macOS is unsupported from 0.8.0
  # (no prebuilt ONNX Runtime for the bge-reranker dependency).
  on_macos do
    on_arm do
      url "https://github.com/blackaxgit/clx/releases/download/v0.8.2/clx-aarch64-apple-darwin.tar.gz"
      sha256 "485a8d0db9f06c150b87429e334e0e5a2116da2992d11e799434ed68982a204b"
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
