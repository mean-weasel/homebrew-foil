cask "foil" do
  version "1.13.0"
  sha256 "ed7e2212fbc5b82800aea89b4dd5faada4d6fa97db9c3ff21983469ae93831a4"

  url "https://github.com/mean-weasel/foil/releases/download/v#{version}/Foil-#{version}-macos.dmg"
  name "Foil"
  desc "Menu bar speech-to-text transcription with cloud and local providers"
  homepage "https://github.com/mean-weasel/foil"

  auto_updates true
  depends_on macos: :sonoma

  app "Foil.app"

  zap trash: [
    "~/Library/Application Support/com.neonwatty.Foil",
    "~/Library/Caches/com.neonwatty.Foil",
    "~/Library/Preferences/com.neonwatty.Foil.plist",
  ]
end
