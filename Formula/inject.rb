class Inject < Formula
  desc "CLI that resolves secret references in .env-style files instead of storing plaintext secrets"
  homepage "https://github.com/syringex/syringe"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/syringex/syringe/releases/download/v0.2.1/inject_0.2.1_darwin_arm64.tar.gz"
      sha256 "7fdd1990f365f66f198d761ba9a5d045827cb2f4406a9401ebf08a8d81197925"
    end
    on_intel do
      url "https://github.com/syringex/syringe/releases/download/v0.2.1/inject_0.2.1_darwin_amd64.tar.gz"
      sha256 "32fed79b45c3dd5ff8b922151563e593c5ae7808633fcf972cea4bfd44ed5fb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/syringex/syringe/releases/download/v0.2.1/inject_0.2.1_linux_arm64.tar.gz"
      sha256 "36ed88047041bc271f6a4c58878d707cc2f2ac41f744fc8210d0680832d3a7e4"
    end
    on_intel do
      url "https://github.com/syringex/syringe/releases/download/v0.2.1/inject_0.2.1_linux_amd64.tar.gz"
      sha256 "89e091b9a66151c281a07732b92d375bb1249088ddd7c4a47d3ecceac3b54f43"
    end
  end

  def install
    bin.install "inject"
  end

  test do
    assert_match "inject #{version}", shell_output("#{bin}/inject version")
  end
end
