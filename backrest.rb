# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Backrest < Formula
  desc "Backrest is a web UI and orchestrator for restic backup."
  homepage "https://github.com/garethgeorge/backrest"
  version "1.2.1"

  on_macos do
    on_intel do
      url "https://github.com/garethgeorge/backrest/releases/download/v1.2.1/backrest_Darwin_x86_64.tar.gz"
      sha256 "cc6fdee07c0959d4b5c414dd3fd3170582bac1e587cadf1367f2d0d067930dbb"

      def install
        bin.install "backrest"
      end
    end
    on_arm do
      url "https://github.com/garethgeorge/backrest/releases/download/v1.2.1/backrest_Darwin_arm64.tar.gz"
      sha256 "e37de537dd030cd0aff0dd1e7f0dbf771c08ad00d05b0629d9f5943d73182527"

      def install
        bin.install "backrest"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/garethgeorge/backrest/releases/download/v1.2.1/backrest_Linux_x86_64.tar.gz"
        sha256 "b43bbfc3ca8703b3f7af3927fffbe95f9cb194f2192931722a94a719fea3e970"

        def install
          bin.install "backrest"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/garethgeorge/backrest/releases/download/v1.2.1/backrest_Linux_armv6.tar.gz"
        sha256 "542104311c525cacbbba2ec181dfeff18350a9217c24cba4602878c4de2fa9de"

        def install
          bin.install "backrest"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/garethgeorge/backrest/releases/download/v1.2.1/backrest_Linux_arm64.tar.gz"
        sha256 "1bfb1c5a8bab11f38499fe4698b759895d4290e286d98874f2a53239eaa17ccc"

        def install
          bin.install "backrest"
        end
      end
    end
  end

  service do
    run opt_bin/"backrest"
    error_log_path var/"log/backrest.log"
    log_path var/"log/backrest.log"
  end
end
