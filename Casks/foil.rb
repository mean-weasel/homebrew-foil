cask "foil" do
  version "1.14.1"
  sha256 "6fb5ab0ab5a20a8dd8e8b508a856f525950f87fa024519f5d961ced6b7eb6e93"

  url "https://github.com/usefoil/foil/releases/download/v1.14.1/Foil-1.14.1-macos.dmg"
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
