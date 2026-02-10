cask "wirdi" do
  version "1.0.3"
  sha256 "6275d64766481d81d3bb195e4730b586e8f4359b348a9eccd49e696fd847501f"

  url "https://github.com/davut/wirdi/releases/download/v1.0.3/Wirdi.dmg"
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
