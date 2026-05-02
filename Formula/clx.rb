# typed: false
# frozen_string_literal: true

class Clx < Formula
  desc "Intelligent command validation and context persistence for Claude Code"
  homepage "https://github.com/blackaxgit/clx"
  version "0.7.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/blackaxgit/clx/releases/download/v0.7.1/clx-aarch64-apple-darwin.tar.gz"
      sha256 "04726e4812ecaec742c3ffdf323af56a75a311db434bdf4b4f45152da3fc2070"
    end
    on_intel do
      url "https://github.com/blackaxgit/clx/releases/download/v0.7.1/clx-x86_64-apple-darwin.tar.gz"
      sha256 "7b74ba109ccb3dd1b319c1a3c8c69583d786ae107d3a8a1029d9ee3c34ec1c2e"
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
