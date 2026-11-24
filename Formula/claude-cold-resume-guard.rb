class ClaudeColdResumeGuard < Formula
  desc "Prevent cold-cache token spikes and quota exhaustion in Claude Code"
  homepage "https://l2cache.app/claude-pro-weekly-limit"
  url "https://github.com/amvotech/claude-cold-resume-guard/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "df2096825c51711f85fb63e5debe954829473f92068163838a3a227029432105"
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
