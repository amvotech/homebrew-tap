class ColdResumeGuard < Formula
  desc "Prevent cold-cache token spikes and quota exhaustion in Claude Code & Codex CLI"
  homepage "https://l2cache.app/claude-pro-weekly-limit"
  url "https://github.com/l2cache-app/claude-cold-resume-guard/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "e13315ec1ff3943db8fbdd5ccc5b03f308df444468787f4b9a91b1bc89845a3d"
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
