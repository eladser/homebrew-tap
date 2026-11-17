class Mtop < Formula
  desc "htop for your local AI"
  homepage "https://github.com/eladser/mtop"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eladser/mtop/releases/download/v1.6.0/mtop_1.6.0_darwin_arm64.zip"
      sha256 "889c9d9c2a8edf78c6164023577ad84252fc69f365ab90922229d675a5cbd8f1"
    end
    on_intel do
      url "https://github.com/eladser/mtop/releases/download/v1.6.0/mtop_1.6.0_darwin_amd64.zip"
      sha256 "0f4a231b65a34187520e5f1eca00e109ed56ffe9ed462affdd3d78e620ff45bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eladser/mtop/releases/download/v1.6.0/mtop_1.6.0_linux_arm64.zip"
      sha256 "4b7a3c8fa779fa323c39eeec282209772dcf33d7145e2c1fdf95115efb20c75a"
    end
    on_intel do
      url "https://github.com/eladser/mtop/releases/download/v1.6.0/mtop_1.6.0_linux_amd64.zip"
      sha256 "f4d5af8520f48413da72a4ace83bf6ef60fa7994d820a095cb5beeff347c35d7"
    end
  end

  def install
    bin.install "mtop"
  end

  test do
    assert_match "mtop 1.6.0", shell_output("#{bin}/mtop -version")
  end
end
