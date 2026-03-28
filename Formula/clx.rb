# typed: false
# frozen_string_literal: true

class Clx < Formula
  desc "Intelligent command validation and context persistence for Claude Code"
  homepage "https://github.com/blackaxgit/clx"
  version "0.5.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/blackaxgit/clx/releases/download/v0.5.1/clx-aarch64-apple-darwin.tar.gz"
      sha256 "f5d776d1cbc2fc61609289ff9fccae7cf5a34f94f3c9f3dfd8e019fb4a938980"
    end
    on_intel do
      url "https://github.com/blackaxgit/clx/releases/download/v0.5.1/clx-x86_64-apple-darwin.tar.gz"
      sha256 "5ec6b5ad812e0f86bd27bc99c0150af5557fa333203cef06d0a69c305da8da5b"
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
