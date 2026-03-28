# typed: false
# frozen_string_literal: true

class Clx < Formula
  desc "Intelligent command validation and context persistence for Claude Code"
  homepage "https://github.com/blackaxgit/clx"
  version "0.5.3"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/blackaxgit/clx/releases/download/v0.5.3/clx-aarch64-apple-darwin.tar.gz"
      sha256 "e35840fc8c8cd7bdf5d0400e0806a4643a4c39dc4dc8926a8d7805261838dffd"
    end
    on_intel do
      url "https://github.com/blackaxgit/clx/releases/download/v0.5.3/clx-x86_64-apple-darwin.tar.gz"
      sha256 "bb7982662524385b7b2f6f74033f08f8956d240b5d196a129bc4cb316cddc97f"
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
