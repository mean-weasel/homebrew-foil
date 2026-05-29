cask "foil" do
  version "1.13.1"
  sha256 "0105795ee9b64cdb4c055d951fea72e5e44d168b8582cacffd5abb4e38420977"

  url "https://github.com/mean-weasel/foil/releases/download/v1.13.1/Foil-1.13.1-macos.dmg"
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
