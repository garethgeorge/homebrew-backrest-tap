# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Backrest < Formula
  desc "Backrest is a web UI and orchestrator for restic backup."
  homepage "https://github.com/garethgeorge/backrest"
  version "1.7.3"

  on_macos do
    on_intel do
      url "https://github.com/garethgeorge/backrest/releases/download/v1.7.3/backrest_Darwin_x86_64.tar.gz"
      sha256 "266cee0d7a1208c57b40506ed9c14567c27fb143737185e22c8a7cc813f5ab5e"

      def install
        bin.install "backrest"
      end
    end
    on_arm do
      url "https://github.com/garethgeorge/backrest/releases/download/v1.7.3/backrest_Darwin_arm64.tar.gz"
      sha256 "4ceed2f100ee1aa7db230912262463db9ae1516b7efd5a0afaff5551193e41b7"

      def install
        bin.install "backrest"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/garethgeorge/backrest/releases/download/v1.7.3/backrest_Linux_x86_64.tar.gz"
        sha256 "f2e576e173eea391a5a4d17b927da89abf1c0056e9acc0a7b7837e2784f29b1a"

        def install
          bin.install "backrest"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/garethgeorge/backrest/releases/download/v1.7.3/backrest_Linux_armv6.tar.gz"
        sha256 "27f061a72b078761dedd39316108705e737321087c8f4476d51a6fb7eaa23414"

        def install
          bin.install "backrest"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/garethgeorge/backrest/releases/download/v1.7.3/backrest_Linux_arm64.tar.gz"
        sha256 "164edd2686a235533ae1a62e8bf29a314b18f9f4f2efd14350a8a4255be24071"

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
