class Inject < Formula
  desc "CLI that resolves secret references in .env-style files instead of storing plaintext secrets"
  homepage "https://github.com/syringex/syringe"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/syringex/syringe/releases/download/v0.2.0/inject_0.2.0_darwin_arm64.tar.gz"
      sha256 "10b737003e87631755893ad299d6feb67c2cfb5f5ed413c55686076aaec23f54"
    end
    on_intel do
      url "https://github.com/syringex/syringe/releases/download/v0.2.0/inject_0.2.0_darwin_amd64.tar.gz"
      sha256 "8a9f097ad480dbdab1563351d98071bb8f924f427b23e453378424a59e34215a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/syringex/syringe/releases/download/v0.2.0/inject_0.2.0_linux_arm64.tar.gz"
      sha256 "661d41839fdae5b194d347468a76860d0d0c0cd5a4ef70b0b41a1e7d0ad28428"
    end
    on_intel do
      url "https://github.com/syringex/syringe/releases/download/v0.2.0/inject_0.2.0_linux_amd64.tar.gz"
      sha256 "052d99ec0f847cf36a19351994da635c898792d75a00eff0213c88c23fd41329"
    end
  end

  def install
    bin.install "inject"
  end

  test do
    assert_match "inject #{version}", shell_output("#{bin}/inject version")
  end
end
