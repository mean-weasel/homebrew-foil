cask "foil" do
  version "1.14.3"
  sha256 "4921a970436f1cf09205f95e1765a838b02b7c04df22921c4c122c9885cdc158"

  url "https://github.com/usefoil/foil/releases/download/v1.14.3/Foil-1.14.3-macos.dmg"
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
