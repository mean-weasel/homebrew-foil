cask "foil" do
  version "1.15.1"
  sha256 "ed095a3f5bd5def5bad6da3f8f6419abc778c74fc9f025f08db3d544a2d70154"

  url "https://github.com/usefoil/foil/releases/download/v1.15.1/Foil-1.15.1-macos.dmg"
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
