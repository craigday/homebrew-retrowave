cask "retrowave" do
  version "0.1.3"
  sha256 "357bfa1f53b57781d9a65351c1065feba0cbcc828ffa8a56f38b9a3d5ec56c58"

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
