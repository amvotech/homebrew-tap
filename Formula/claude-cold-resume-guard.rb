class ClaudeColdResumeGuard < Formula
  desc "Prevent cold-cache token spikes and quota exhaustion in Claude Code"
  homepage "https://l2cache.app/claude-pro-weekly-limit"
  url "https://github.com/amvotech/claude-cold-resume-guard/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "86aee06cd430b70847a4e1a208b17c37fd71611a4db09511f820a4264c89f14c"
  license "MIT"

  def install
    bin.install "guard.py" => "cold-resume-guard"
    bin.install_symlink bin/"cold-resume-guard" => "claude-guard"
  end

  test do
    system "#{bin}/cold-resume-guard", "--check-only"
  end
end
