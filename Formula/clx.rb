# typed: false
# frozen_string_literal: true

class Clx < Formula
  desc "Intelligent command validation and context persistence for Claude Code"
  homepage "https://github.com/blackaxgit/clx"
  version "0.2.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/blackaxgit/clx/releases/download/v0.2.0/clx-aarch64-apple-darwin.tar.gz"
      sha256 "364bae6560928bc97ad2db5209c6d37ebfa020da096c3cb4b04d7d06915cdc82"
    end
    on_intel do
      url "https://github.com/blackaxgit/clx/releases/download/v0.2.0/clx-x86_64-apple-darwin.tar.gz"
      sha256 "38143213e933baf7c722e87a2bb9f051f5759179fe3b35338330cfedc38a19a2"
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
