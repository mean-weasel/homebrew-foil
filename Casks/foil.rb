cask "foil" do
  version "1.13.8"
  sha256 "88514efe98d14392644b2d5b1d74ddb6199fad0ab4faca3091ae033c755ad848"

  url "https://github.com/usefoil/foil/releases/download/v1.13.8/Foil-1.13.8-macos.dmg"
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
