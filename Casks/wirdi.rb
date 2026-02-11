cask "wirdi" do
  version "1.0.4"
  sha256 "c5ca9cf4c0c576a45e7b25dca935d4da32693571e40ce2ecb4739edb88e72428"

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
