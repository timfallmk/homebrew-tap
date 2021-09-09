# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nextdns < Formula
  desc "NextDNS DNS/53 to DoH Proxy"
  homepage "https://nextdns.io"
  version "1.37.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.37.2/nextdns_1.37.2_darwin_amd64.tar.gz"
      sha256 "c9493a2eb7ddb8329fdb1c6b1357e32b9b007bec242940e11c67c2fe5398073a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/nextdns/nextdns/releases/download/v1.37.2/nextdns_1.37.2_darwin_arm64.tar.gz"
      sha256 "f05f351ddd29bc6e4549962dcd370ef961cda06e9f926619c0e3a44d5852a5fc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nextdns/nextdns/releases/download/v1.37.2/nextdns_1.37.2_linux_amd64.tar.gz"
      sha256 "a8f66d41d9e7858ca6f27ebf2504eb0564b9208725ea58f5f13fa28442fedb67"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/nextdns/nextdns/releases/download/v1.37.2/nextdns_1.37.2_linux_armv6.tar.gz"
      sha256 "50953d461d085402014f40624935173e2fc076f03d42144eae551d43640d08b8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nextdns/nextdns/releases/download/v1.37.2/nextdns_1.37.2_linux_arm64.tar.gz"
      sha256 "4d77f73ac06ce7c8ca8395cd792ba0a979a0fe69bf42b0acc0ce893613895fb2"
    end
  end

  def install
    bin.install "nextdns"
  end

  def caveats; <<~EOS
    To install NextDNS, run the following command:
    sudo nextdns install --config <your_conf_id>
    Then setup your DNS manually to 127.0.0.1 or by running:
    sudo nextdns activate
  EOS
  end
end
