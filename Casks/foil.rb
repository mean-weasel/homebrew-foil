cask "foil" do
  version "1.15.0"
  sha256 "f6206bc863e65178d58dcd6c4c2509ce1d7882e77d1546ec2c876e0ebd756d7b"

  url "https://github.com/usefoil/foil/releases/download/v1.15.0/Foil-1.15.0-macos.dmg"
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
