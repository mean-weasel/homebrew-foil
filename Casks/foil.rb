cask "foil" do
  version "1.13.6"
  sha256 "b6a65c7ae63b41eb4ba03ae02fd0bea86694305647e187ed80cd4dae84f787a7"

  url "https://github.com/usefoil/foil/releases/download/v1.13.6/Foil-1.13.6-macos.dmg"
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
