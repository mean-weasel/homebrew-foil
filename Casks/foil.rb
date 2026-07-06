cask "foil" do
  version "1.13.11"
  sha256 "4805e6ca60d7bc8597673dbbee89289997363a8c4fe2e0b6c428c6d245fecd57"

  url "https://github.com/usefoil/foil/releases/download/v1.13.11/Foil-1.13.11-macos.dmg"
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
