cask "retrowave" do
  version "0.1.4"
  sha256 "8b4c06f27b14d51cef844549be792efbcd7127742998b800f133f5bdf9130b0a"

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
