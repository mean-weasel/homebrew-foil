cask "foil" do
  version "1.13.10"
  sha256 "1d025a1fb0cecabd472df6e986fc0b6555635f98de1f2a850030597a21a5d0f6"

  url "https://github.com/usefoil/foil/releases/download/v1.13.10/Foil-1.13.10-macos.dmg"
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
