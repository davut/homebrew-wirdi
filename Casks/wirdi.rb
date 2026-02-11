cask "wirdi" do
  version "1.0.4"
  sha256 "deeef93c428c3d152fe66484a74b70a124b14d0c4a5254b46f8e90f2c4b90f19"

  url "https://github.com/davut/wirdi/releases/download/v1.0.4/Wirdi.dmg"
  name "Wirdi"
  desc "Quran reading companion with word-by-word tracking in a Dynamic Island overlay"
  homepage "https://github.com/davut/wirdi"

  depends_on macos: ">= :sequoia"

  app "Wirdi.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Wirdi.app"]
  end

  zap trash: [
    "~/Library/Preferences/co.owlapps.wirdi.plist",
    "~/Library/Saved Application State/co.owlapps.wirdi.savedState",
  ]
end
