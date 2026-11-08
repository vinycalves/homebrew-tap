class Pb < Formula
  desc "CLI em Rust para as APIs do PagBank"
  homepage "https://github.com/vinycalves/pagbank-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vinycalves/pagbank-cli/releases/download/v0.2.0/pb-aarch64-apple-darwin.tar.gz"
      sha256 "5cea0c277ee89532fbc206fa720aa26f1b526db7ad4b5c33694b8e63e6abd633"
    end
    on_intel do
      url "https://github.com/vinycalves/pagbank-cli/releases/download/v0.2.0/pb-x86_64-apple-darwin.tar.gz"
      sha256 "f4631d037513c09b97e72d24279f1c400f043d2e3521a4bef927564664df82be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vinycalves/pagbank-cli/releases/download/v0.2.0/pb-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd6d8acf5d9ffc0d2f26f121a64440131d8fb893393e2b6bfa376652bcf44652"
    end
    on_intel do
      url "https://github.com/vinycalves/pagbank-cli/releases/download/v0.2.0/pb-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b71fb5772150456282d57364b1c010c7261bb4b324233e3968a2598ec7a1a7f4"
    end
  end

  def install
    bin.install "pb"
  end

  test do
    assert_match "pb #{version}", shell_output("#{bin}/pb --version")
  end
end
