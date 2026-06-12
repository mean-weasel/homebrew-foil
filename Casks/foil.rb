cask "foil" do
  version "1.13.5"
  sha256 "20ee96db3f064ed204fa492e0a8971cc29c79bd12833d4fec9214de49757aa6f"

  url "https://github.com/usefoil/foil/releases/download/v1.13.5/Foil-1.13.5-macos.dmg"
  name "Foil"
  desc "Menu bar speech-to-text transcription with cloud and local providers"
  homepage "https://github.com/usefoil/foil"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Foil.app"

  zap trash: [
    "~/Library/Application Support/com.neonwatty.Foil",
    "~/Library/Preferences/com.neonwatty.Foil.plist",
    "~/Library/Caches/com.neonwatty.Foil",
  ]
end
