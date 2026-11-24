class ClaudeColdResumeGuard < Formula
  desc "Prevent cold-cache token spikes and quota exhaustion in Claude Code & Codex CLI"
  homepage "https://l2cache.app/claude-pro-weekly-limit"
  url "https://github.com/amvotech/claude-cold-resume-guard/archive/refs/tags/v0.1.9.tar.gz"
  sha256 "9247757f6e456667531feb7dc855543f5695155181b193f34e8b21173cc69983"
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
