# typed: false
# frozen_string_literal: true

class Clx < Formula
  desc "Intelligent command validation and context persistence for Claude Code"
  homepage "https://github.com/blackaxgit/clx"
  version "0.6.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/blackaxgit/clx/releases/download/v0.6.0/clx-aarch64-apple-darwin.tar.gz"
      sha256 "f64db02510e7f6f17725476dab9a06902b1d87679d299805a24f7b5f3b9907b3"
    end
    on_intel do
      url "https://github.com/blackaxgit/clx/releases/download/v0.6.0/clx-x86_64-apple-darwin.tar.gz"
      sha256 "0d801fdaea6c21c29689ec8e533681eae417f3f21e09a56afab305b1d0a0064d"
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
