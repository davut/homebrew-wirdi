cask "wirdi" do
  version "1.0.5"
  sha256 "734361c99750ed1c706eb945b7171d0bfb6313fd214cc43c965139241ec67f13"

  url "https://github.com/davut/wirdi/releases/download/v1.0.5/Wirdi.dmg"
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
