cask "retrowave" do
  version "0.1.5"
  sha256 "ce1e1fcdef797081e6736e983dc1995158ce77d3b831277f9901a55d35c830e9"

  url "https://github.com/craigday/homebrew-retrowave/releases/download/v#{version}/RetroWave-#{version}.zip"
  name "RetroWave"
  desc "Retro LED spectrum analyzer for system audio in a floating window"
  homepage "https://craigday.github.io/homebrew-retrowave/"

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
