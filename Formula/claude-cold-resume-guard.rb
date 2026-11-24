class ClaudeColdResumeGuard < Formula
  desc "Prevent cold-cache token spikes and quota exhaustion in Claude Code & Codex CLI"
  homepage "https://l2cache.app/claude-pro-weekly-limit"
  url "https://github.com/amvotech/claude-cold-resume-guard/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "0fc3e0caee3ed5c015b846aaf6697bce68f0e344d2454f3816c921938c328492"
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
