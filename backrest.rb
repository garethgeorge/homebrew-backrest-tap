# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Backrest < Formula
  desc "Backrest is a web UI and orchestrator for restic backup."
  homepage "https://github.com/garethgeorge/backrest"
  version "1.8.1"

  on_macos do
    on_intel do
      url "https://github.com/garethgeorge/backrest/releases/download/v1.8.1/backrest_Darwin_x86_64.tar.gz"
      sha256 "23b27fde1e128b39ff4c02b158362af6a38f67fd08a681e93dfe44f9f7a42ada"

      def install
        bin.install "backrest"
      end
    end
    on_arm do
      url "https://github.com/garethgeorge/backrest/releases/download/v1.8.1/backrest_Darwin_arm64.tar.gz"
      sha256 "fc1919ce32451c2b95f99165a7ef1376d9275c36c01615373b7b7b85f0375659"

      def install
        bin.install "backrest"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/garethgeorge/backrest/releases/download/v1.8.1/backrest_Linux_x86_64.tar.gz"
        sha256 "db4d5a84308bcc4339ccbc47a5a52db7f818382e54296d8430f04264f2153689"

        def install
          bin.install "backrest"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/garethgeorge/backrest/releases/download/v1.8.1/backrest_Linux_armv6.tar.gz"
        sha256 "8c05c9449112d96e2f610521174cd68b9eab084a1ed589cfd39d87a924e2f019"

        def install
          bin.install "backrest"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/garethgeorge/backrest/releases/download/v1.8.1/backrest_Linux_arm64.tar.gz"
        sha256 "a8a542bbd4ac8c16ab51078c4bab615a5cead8e63c70042c48b881264cfeeb6b"

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
