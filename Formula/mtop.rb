class Mtop < Formula
  desc "htop for your local AI"
  homepage "https://github.com/eladser/mtop"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eladser/mtop/releases/download/v1.4.0/mtop_1.4.0_darwin_arm64.zip"
      sha256 "ed13938a72bba21523f2e1094a4cce10840089bbab771b1fe9d9d2c2fb375b03"
    end
    on_intel do
      url "https://github.com/eladser/mtop/releases/download/v1.4.0/mtop_1.4.0_darwin_amd64.zip"
      sha256 "b0c7dc1273d29a6eecd23192dd0c53fa354233c7a2d8a1d3087cafdf72c64cab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eladser/mtop/releases/download/v1.4.0/mtop_1.4.0_linux_arm64.zip"
      sha256 "15cd8f15676c3f80697512ea708f050d27382fb0d5b7f183a47179e2800e2f40"
    end
    on_intel do
      url "https://github.com/eladser/mtop/releases/download/v1.4.0/mtop_1.4.0_linux_amd64.zip"
      sha256 "b9c704c5c542a75072b351dd0d69257290389571bc4c40b4e3599cf56e3c1dab"
    end
  end

  def install
    bin.install "mtop"
  end

  test do
    assert_match "mtop 1.4.0", shell_output("#{bin}/mtop -version")
  end
end
