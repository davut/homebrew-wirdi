cask "wirdi" do
  version "1.0.6"
  sha256 "979447b11c2485f790684b116104ca86d6585811a0bae1f1fcbeed111f35a794"

  url "https://github.com/davut/wirdi/releases/download/v1.0.6/Wirdi.dmg"
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
