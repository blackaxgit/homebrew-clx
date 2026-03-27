# typed: false
# frozen_string_literal: true

class Clx < Formula
  desc "Intelligent command validation and context persistence for Claude Code"
  homepage "https://github.com/blackaxgit/clx"
  version "0.4.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/blackaxgit/clx/releases/download/v0.4.0/clx-aarch64-apple-darwin.tar.gz"
      sha256 "d80198b368e6779742e28dda7a3401b1607f24d42acd1813aa0fb59273f8ade1"
    end
    on_intel do
      url "https://github.com/blackaxgit/clx/releases/download/v0.4.0/clx-x86_64-apple-darwin.tar.gz"
      sha256 "0afaf4637e0d1e43623693ab51d2e3c5cc02ec43484f5cb42daf055f3d5c1b24"
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
