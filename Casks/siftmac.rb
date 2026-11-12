cask "siftmac" do
  version "0.2.5"
  sha256 "8e8251c60cb3170461629af3c292badec1b0dbeb4d44658f8ed2303630f924fc"

  url "https://siftmac.com/SiftMac_#{version}.dmg"
  name "SiftMac"
  desc "Disk cleaner that explains every item before removing it"
  homepage "https://siftmac.com/"

  livecheck do
    url "https://siftmac.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "SiftMac.app"

  uninstall launchctl: "com.siftmac.SiftMac.shelf",
            quit:      "com.siftmac.SiftMac"

  zap trash: [
    "~/Library/Application Support/SiftMac",
    "~/Library/Caches/com.siftmac.SiftMac",
    "~/Library/HTTPStorages/com.siftmac.SiftMac",
    "~/Library/Preferences/com.siftmac.SiftMac.plist",
    "~/Library/Saved Application State/com.siftmac.SiftMac.savedState",
  ]
end
