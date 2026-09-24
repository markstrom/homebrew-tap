cask "sorla" do
  version "1.0.3"
  sha256 "adc228796bf1c6e5dbc8ed46b579a358176feb52e0bc34f6fe6b0139233cddf3"

  url "https://github.com/markstrom/sorla/releases/download/v#{version}/Sorla-#{version}.dmg"
  name "Sorla"
  desc "Swedish push-to-talk dictation that runs on-device"
  homepage "https://sorla.zerolabs.se/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Sorla.app"

  uninstall quit: "com.sorla.app"

  zap trash: [
    "~/Library/Application Support/Sorla",
    "~/Library/Preferences/com.sorla.app.plist",
  ]
end
