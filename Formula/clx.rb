# typed: false
# frozen_string_literal: true

class Clx < Formula
  desc "Intelligent command validation and context persistence for Claude Code"
  homepage "https://github.com/blackaxgit/clx"
  version "0.5.2"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/blackaxgit/clx/releases/download/v0.5.2/clx-aarch64-apple-darwin.tar.gz"
      sha256 "43775493ade4e79b258138fe9688183a8b0f277c637c3cdf3682fd487d63deaf"
    end
    on_intel do
      url "https://github.com/blackaxgit/clx/releases/download/v0.5.2/clx-x86_64-apple-darwin.tar.gz"
      sha256 "d9d8ce2908316b12faf4091a1593b2a21e1412fa02a4edff285c31d2ab7c34ae"
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
