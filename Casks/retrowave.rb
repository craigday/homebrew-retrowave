cask "retrowave" do
  version "0.1.1"
  sha256 "bdb822f17ee64a969f78f210ce42bea81c1a80468942b9751d771912fc04812e"

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
