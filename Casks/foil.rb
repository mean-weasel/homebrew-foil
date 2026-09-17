cask "foil" do
  version "1.14.0"
  sha256 "4cb078ff4a0a448bd2e1b287dfa259b3ac71ad8616e66c1957cf00774aaff482"

  url "https://github.com/usefoil/foil/releases/download/v1.14.0/Foil-1.14.0-macos.dmg"
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
