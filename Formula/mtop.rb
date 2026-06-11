class Mtop < Formula
  desc "htop for your local AI"
  homepage "https://github.com/eladser/mtop"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eladser/mtop/releases/download/v1.2.0/mtop_1.2.0_darwin_arm64.zip"
      sha256 "2f66886fb636bddd8c3c952a5333c6fcf4007f9d8b8deeafd333d25f90d98ad7"
    end
    on_intel do
      url "https://github.com/eladser/mtop/releases/download/v1.2.0/mtop_1.2.0_darwin_amd64.zip"
      sha256 "369b00de824cc45a121738f143caa99ec68e11a3fb30dce9051a08b722ac595c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eladser/mtop/releases/download/v1.2.0/mtop_1.2.0_linux_arm64.zip"
      sha256 "cb3a53ada80b5f6a2b945413608e968e49d6dfbf59120f1d31672df2514cb288"
    end
    on_intel do
      url "https://github.com/eladser/mtop/releases/download/v1.2.0/mtop_1.2.0_linux_amd64.zip"
      sha256 "6b0f073672fa3e3eb0c54ff36c3a42ede28aa9985dcfd4a6b7ca19906828ac5c"
    end
  end

  def install
    bin.install "mtop"
  end

  test do
    assert_match "mtop 1.2.0", shell_output("#{bin}/mtop -version")
  end
end
