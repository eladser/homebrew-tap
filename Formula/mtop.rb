class Mtop < Formula
  desc "htop for your local AI"
  homepage "https://github.com/eladser/mtop"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eladser/mtop/releases/download/v1.5.0/mtop_1.5.0_darwin_arm64.zip"
      sha256 "db287e45fb6bb78dec1eaefcf6b0f4f26ad44085699d3a94e5d00397c6960702"
    end
    on_intel do
      url "https://github.com/eladser/mtop/releases/download/v1.5.0/mtop_1.5.0_darwin_amd64.zip"
      sha256 "77b94ad0dc8da16330c14aee54ceb949bbec1eafc1ec461f8f870f694472904e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eladser/mtop/releases/download/v1.5.0/mtop_1.5.0_linux_arm64.zip"
      sha256 "7cbe6757056a61ffe2297031ed6c49997ad72367a159dd6380baa92776a849c9"
    end
    on_intel do
      url "https://github.com/eladser/mtop/releases/download/v1.5.0/mtop_1.5.0_linux_amd64.zip"
      sha256 "684d7496657f0442bccd14ceb0b71783838ef6ace5d19ff447d6378c7c6a73fb"
    end
  end

  def install
    bin.install "mtop"
  end

  test do
    assert_match "mtop 1.5.0", shell_output("#{bin}/mtop -version")
  end
end
