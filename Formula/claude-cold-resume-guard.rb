class ClaudeColdResumeGuard < Formula
  desc "Prevent cold-cache token spikes and quota exhaustion in Claude Code"
  homepage "https://l2cache.app/claude-pro-weekly-limit"
  url "https://github.com/amvotech/claude-cold-resume-guard/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "86fa7e310bdb22d5e4eaf91d4276c67adf9ef18dbc914ee5dd5daa62bb324e75"
  license "MIT"

  def install
    bin.install "guard.py" => "cold-resume-guard"
    bin.install_symlink bin/"cold-resume-guard" => "claude-guard"
  end

  test do
    system "#{bin}/cold-resume-guard", "--check-only"
  end
end
