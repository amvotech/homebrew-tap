class ClaudeColdResumeGuard < Formula
  desc "Prevent cold-cache token spikes and quota exhaustion in Claude Code & Codex CLI"
  homepage "https://l2cache.app/claude-pro-weekly-limit"
  url "https://github.com/amvotech/claude-cold-resume-guard/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "26334499451df1586fc5d55ed09bd81239ff40e25b41ab3757b5f92211f809c1"
  license "MIT"

  def install
    bin.install "guard.py" => "cold-resume-guard"
    chmod 0755, bin/"cold-resume-guard"
    bin.install_symlink bin/"cold-resume-guard" => "claude-guard"
    bin.install_symlink bin/"cold-resume-guard" => "codex-guard"
  end

  test do
    system "#{bin}/cold-resume-guard", "--check-only"
  end
end
