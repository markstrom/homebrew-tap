cask "sorla" do
  version "1.2.0"
  sha256 "40cbfed899a013291a5acb751be90d3563666d8c46faf4d59a08cb01df51e225"

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
