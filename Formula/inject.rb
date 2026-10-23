class Inject < Formula
  desc "CLI that resolves secret references in .env-style files instead of storing plaintext secrets"
  homepage "https://github.com/syringex/syringe"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/syringex/syringe/releases/download/v0.2.2/inject_0.2.2_darwin_arm64.tar.gz"
      sha256 "8f378953c3693a9d5b02b9224537afabf0e22b78479da282bd126a361c5d8d4b"
    end
    on_intel do
      url "https://github.com/syringex/syringe/releases/download/v0.2.2/inject_0.2.2_darwin_amd64.tar.gz"
      sha256 "58892c20de6a31585ac346eeac28b25bce997013dbd001f0356f5f974d8ce820"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/syringex/syringe/releases/download/v0.2.2/inject_0.2.2_linux_arm64.tar.gz"
      sha256 "2ebbe003c7e43644f2a11667818fdf17c82e4bb92b71abf78d6d530ebf3f04ac"
    end
    on_intel do
      url "https://github.com/syringex/syringe/releases/download/v0.2.2/inject_0.2.2_linux_amd64.tar.gz"
      sha256 "324a06e3326668bb344ba6f836cf12ef21e3b6374a750af1620a32f166c584c1"
    end
  end

  def install
    bin.install "inject"
  end

  test do
    assert_match "inject #{version}", shell_output("#{bin}/inject version")
  end
end
