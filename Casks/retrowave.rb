cask "retrowave" do
  version "0.1.0"
  sha256 "3398d39d93854df1733a32c90952e014c0b3beb1c383434101040c5df61d4ae0"

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
      RetroWave is not notarised. If macOS refuses to open it, either
      right-click RetroWave in /Applications and choose Open, or reinstall with:

        brew reinstall --cask --no-quarantine craigday/retrowave/retrowave

      On first launch macOS asks to allow system audio recording.
    EOS
  end
end
