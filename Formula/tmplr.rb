# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tmplr < Formula
  desc "Quickly create new files from templates
"
  homepage "https://github.com/atomicptr/tmplr"
  version "0.1.3"
  license "GPL-3.0-or-later"

  on_macos do
    url "https://github.com/atomicptr/tmplr/releases/download/v0.1.3/tmplr_0.1.3_darwin_amd64.tar.gz"
    sha256 "669ffc1cdc294c92a2d841e2d82e737cf93c4d62509e606ce6e22fb67e450985"

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
        url "https://github.com/atomicptr/tmplr/releases/download/v0.1.3/tmplr_0.1.3_linux_amd64.tar.gz"
        sha256 "1ebdc336e563bdc6c369e940bce02ec0c80cf81513c8e1fe87bd748db0fd842c"

        def install
          bin.install "tmplr"
        end
      end
    end
  end
end
