cask "sorla" do
  version "1.2.1"
  sha256 "96d1dddca85eaa752d057cbb9cf74d5ca86aaebf2a621dfa4e999f4792e13a92"

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
