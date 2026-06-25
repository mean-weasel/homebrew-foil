cask "foil" do
  version "1.13.7"
  sha256 "4658dad9acdf22b7fe05ef1d07731ef5edc1d256ddf2a9f6f5eaa9f45cddfc5f"

  url "https://github.com/usefoil/foil/releases/download/v1.13.7/Foil-1.13.7-macos.dmg"
  name "Foil"
  desc "Menu bar speech-to-text transcription with cloud and local providers"
  homepage "https://github.com/usefoil/foil"

  auto_updates true
  depends_on macos: :sonoma

  app "Foil.app"

  zap trash: [
    "~/Library/Application Support/com.neonwatty.Foil",
    "~/Library/Preferences/com.neonwatty.Foil.plist",
    "~/Library/Caches/com.neonwatty.Foil",
  ]
end
