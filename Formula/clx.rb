# typed: false
# frozen_string_literal: true

class Clx < Formula
  desc "Intelligent command validation and context persistence for Claude Code"
  homepage "https://github.com/blackaxgit/clx"
  version "0.3.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/blackaxgit/clx/releases/download/v0.3.0/clx-aarch64-apple-darwin.tar.gz"
      sha256 "886a934a5cedd2a904e69409f4882046c98e9f3e4c50315bd3accfb6cc538bd9"
    end
    on_intel do
      url "https://github.com/blackaxgit/clx/releases/download/v0.3.0/clx-x86_64-apple-darwin.tar.gz"
      sha256 "01f7cd80be9d4b076ec8c4366bce7245d323341f4b69378bc207d950e0f61fb1"
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
