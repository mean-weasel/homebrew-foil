cask "foil" do
  version "1.13.2"
  sha256 "ad8a09661d31896df77cae499b426a94713dbeba57739918ba49148be202463d"

  url "https://github.com/mean-weasel/foil/releases/download/v1.13.2/Foil-1.13.2-macos.dmg"
  name "Foil"
  desc "Menu bar speech-to-text transcription with cloud and local providers"
  homepage "https://github.com/mean-weasel/foil"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Foil.app"

  zap trash: [
    "~/Library/Application Support/com.neonwatty.Foil",
    "~/Library/Preferences/com.neonwatty.Foil.plist",
    "~/Library/Caches/com.neonwatty.Foil",
  ]
end
