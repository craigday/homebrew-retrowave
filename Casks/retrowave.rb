cask "retrowave" do
  version "0.1.0"
  sha256 "bdcbb0dfd6f2405937908091db2d5355acf20e0cdeabffae3ef152ce4d2ef0d1"

  url "https://github.com/craigday/retrowave/releases/download/v#{version}/RetroWave-#{version}.zip"
  name "RetroWave"
  desc "Retro LED spectrum analyzer for system audio in a floating window"
  homepage "https://github.com/craigday/retrowave"

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
