cask "sorla" do
  version "1.2.3"
  sha256 "2eed225c6a4d7f1ec2d6066046e1c468a309f40e401b7310c07f887a4dc2ae60"

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
