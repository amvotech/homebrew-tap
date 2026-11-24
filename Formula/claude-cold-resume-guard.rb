class ClaudeColdResumeGuard < Formula
  desc "Prevent cold-cache token spikes and quota exhaustion in Claude Code"
  homepage "https://l2cache.app/claude-pro-weekly-limit"
  url "https://github.com/amvotech/claude-cold-resume-guard/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "b71600fe067bcad7dd061c43172bb874539b5bb14a62d0bb51c85c0b7996f4ba"
  license "MIT"

  def install
    bin.install "guard.py" => "cold-resume-guard"
    chmod 0755, bin/"cold-resume-guard"
    bin.install_symlink bin/"cold-resume-guard" => "claude-guard"
  end

  test do
    system "#{bin}/cold-resume-guard", "--check-only"
  end
end
