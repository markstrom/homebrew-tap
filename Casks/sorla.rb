cask "sorla" do
  version "1.2.2"
  sha256 "402430cbbaa1ee2ff809e837be0fdd477a65bc805678e289ed930bb3a468e9d4"

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
