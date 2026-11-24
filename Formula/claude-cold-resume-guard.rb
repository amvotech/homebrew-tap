class ClaudeColdResumeGuard < Formula
  desc "Prevent cold-cache token spikes and quota exhaustion in Claude Code"
  homepage "https://l2cache.app/claude-pro-weekly-limit"
  url "https://github.com/amvotech/claude-cold-resume-guard/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "1235731f163aefb09311542c0feeb982fd9d92efc358fd0d3db12839ebf57c3f"
  license "MIT"

  def install
    bin.install "guard.py" => "cold-resume-guard"
    bin.install_symlink bin/"cold-resume-guard" => "claude-guard"
  end

  test do
    system "#{bin}/cold-resume-guard", "--check-only"
  end
end
