# typed: false
# frozen_string_literal: true

class Clx < Formula
  desc "Intelligent command validation and context persistence for Claude Code"
  homepage "https://github.com/blackaxgit/clx"
  version "0.6.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/blackaxgit/clx/releases/download/v0.6.1/clx-aarch64-apple-darwin.tar.gz"
      sha256 "702b01179c8a7e4ad37a4e537a522ee724440cb0962e2610443b93f9b8634b43"
    end
    on_intel do
      url "https://github.com/blackaxgit/clx/releases/download/v0.6.1/clx-x86_64-apple-darwin.tar.gz"
      sha256 "a4c23a8bd7ea339f99fb3089335ed47c3124a1cd7577221582ba876beaaa0b14"
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
