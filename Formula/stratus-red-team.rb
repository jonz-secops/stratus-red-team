# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StratusRedTeam < Formula
  desc ""
  homepage "https://stratus-red-team.cloud"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DataDog/stratus-red-team/releases/download/v1.0.0/stratus-red-team_1.0.0_Darwin_arm64.tar.gz"
      sha256 "4343a04ba0175b85002ee9a5c9b97ca59f481832cbe3be2e1a7288e52ab61947"

      def install
        bin.install "stratus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/DataDog/stratus-red-team/releases/download/v1.0.0/stratus-red-team_1.0.0_Darwin_x86_64.tar.gz"
      sha256 "0197bdf94565fc1fb04d5e5887e60d70f04f2122fba54baab6cfbf1cce4b52fc"

      def install
        bin.install "stratus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/DataDog/stratus-red-team/releases/download/v1.0.0/stratus-red-team_1.0.0_Linux_x86_64.tar.gz"
      sha256 "67405eda2124003a4ce8605108cb396770ef08c28725161dfeccf382dd9bd9ae"

      def install
        bin.install "stratus"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/DataDog/stratus-red-team/releases/download/v1.0.0/stratus-red-team_1.0.0_Linux_arm64.tar.gz"
      sha256 "dbc47d780596c7f44d139c159976f3724f3995e99ecfc04f7f3a9ef351ca7829"

      def install
        bin.install "stratus"
      end
    end
  end
end
