# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Backrest < Formula
  desc "Backrest is a web UI and orchestrator for restic backup."
  homepage "https://github.com/garethgeorge/backrest"
  version "1.8.0"

  on_macos do
    on_intel do
      url "https://github.com/garethgeorge/backrest/releases/download/v1.8.0/backrest_Darwin_x86_64.tar.gz"
      sha256 "95365655c79f3c4613a825438efa7610fbf6d5dd29dd1bfebf38b12a56079158"

      def install
        bin.install "backrest"
      end
    end
    on_arm do
      url "https://github.com/garethgeorge/backrest/releases/download/v1.8.0/backrest_Darwin_arm64.tar.gz"
      sha256 "6ed1bb9ab644b39e1924ec9362d14674f626580a51dffabee4e61c1f82cca66e"

      def install
        bin.install "backrest"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/garethgeorge/backrest/releases/download/v1.8.0/backrest_Linux_x86_64.tar.gz"
        sha256 "95da544154c4e570a8a750d22b6a3a69b46ee537bfeef7b3d5d999ca917aeab8"

        def install
          bin.install "backrest"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/garethgeorge/backrest/releases/download/v1.8.0/backrest_Linux_armv6.tar.gz"
        sha256 "891e708cfa1b2e2245870cf46c2f75ccf03880ca3a605422fc4f5a8d316c3469"

        def install
          bin.install "backrest"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/garethgeorge/backrest/releases/download/v1.8.0/backrest_Linux_arm64.tar.gz"
        sha256 "cfcdf455b0b62372e1350c4b9e9d58d40dc5276e3a97687329df516f967804d6"

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
