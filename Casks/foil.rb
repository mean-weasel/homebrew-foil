cask "foil" do
  version "1.13.9"
  sha256 "aff1b812f184604478b1463d7e40a358bb889fbef9d20e6ccf91e45311bca83e"

  url "https://github.com/usefoil/foil/releases/download/v1.13.9/Foil-1.13.9-macos.dmg"
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
