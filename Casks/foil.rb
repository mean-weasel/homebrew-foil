cask "foil" do
  version "1.14.2"
  sha256 "734e2be0f8a05ab5ba027668fb40900b9e41751de44adce5f8700d95d770d684"

  url "https://github.com/usefoil/foil/releases/download/v1.14.2/Foil-1.14.2-macos.dmg"
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
