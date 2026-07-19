cask "foil" do
  version "1.13.12"
  sha256 "c16504c4aa1a753290d2f75d20ff2a023e1e684d787b24b19ea92fdd27bfb342"

  url "https://github.com/usefoil/foil/releases/download/v1.13.12/Foil-1.13.12-macos.dmg"
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
