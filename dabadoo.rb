class Dabadoo < Formula
  desc "Focused window borders for your mac"
  homepage "https://github.com/jakenvac/dabadoo"
  url "https://github.com/jakenvac/dabadoo/releases/download/0.1.1/dabadoo"
  sha256 "a22f1cba08f696924b15cdcc2a2078bee22a9465a575cb3fc26d59d1959f3d83"

  depends_on :macos

  def install
    bin.install "dabadoo"
  end

  # Service definition with plist
  service do
    run [opt_bin/"dabadoo"]
    keep_alive true
    working_dir var
    log_path var/"log/dabadoo.log"
    error_log_path var/"log/dabadoo.err.log"
  end
end
