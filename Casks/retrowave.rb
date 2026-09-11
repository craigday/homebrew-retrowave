cask "retrowave" do
  version "0.1.2"
  sha256 "15b38f1f199c0b233a9b5ee002cc4df91cf95c4b418b464db4e62b16c447fdbf"

  url "https://github.com/craigday/homebrew-retrowave/releases/download/v#{version}/RetroWave-#{version}.zip"
  name "RetroWave"
  desc "Retro LED spectrum analyzer for system audio in a floating window"
  homepage "https://github.com/craigday/homebrew-retrowave"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "RetroWave.app"

  zap trash: "~/Library/Preferences/com.craigday.retrowave.plist"

  caveats do
    <<~EOS
      On first launch macOS asks to allow system audio recording.
    EOS
  end
end
