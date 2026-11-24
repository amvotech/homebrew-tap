class ClaudeColdResumeGuard < Formula
  desc "Prevent cold-cache token spikes and quota exhaustion in Claude Code & Codex CLI"
  homepage "https://l2cache.app/claude-pro-weekly-limit"
  url "https://github.com/amvotech/claude-cold-resume-guard/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "2d9aa01d4cb9fa6b473e5021dfdea447a90881f801ba80e6c8f34fc4d4c48d99"
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
