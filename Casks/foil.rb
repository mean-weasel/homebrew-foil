cask "foil" do
  version "1.13.13"
  sha256 "33f682b44b558f84f26622536fe7b162fece6053afb5fe4c38f01e58451d2e79"

  url "https://github.com/usefoil/foil/releases/download/v1.13.13/Foil-1.13.13-macos.dmg"
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
