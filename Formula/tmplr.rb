# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tmplr < Formula
  desc "Quickly create new files from templates
"
  homepage "https://github.com/atomicptr/tmplr"
  version "0.1.1"
  license "GPL-3.0-later"

  on_macos do
    url "https://github.com/atomicptr/tmplr/releases/download/v0.1.1/tmplr_0.1.1_darwin_amd64.tar.gz"
    sha256 "5d544ac5565987b277e139e231f83f2fcda5dfe9e684f763806bfc5c13cbcad3"

    def install
      bin.install "tmplr"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Tmplr
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/atomicptr/tmplr/releases/download/v0.1.1/tmplr_0.1.1_linux_amd64.tar.gz"
        sha256 "ba40e97c2eb182e945bdcae09a52bd01d886bb14baa424e6dd6acdf2ddb76195"

        def install
          bin.install "tmplr"
        end
      end
    end
  end
end
