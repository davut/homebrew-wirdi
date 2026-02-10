cask "wirdi" do
  version "1.0.1"
  sha256 "c4c92ffb07f0135953bbe037a9ee9a52a4b1c9dc3df7a4742a2d5c8905c78612"

  url "https://github.com/davut/wirdi/releases/download/v1.0.1/Wirdi.dmg"
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
