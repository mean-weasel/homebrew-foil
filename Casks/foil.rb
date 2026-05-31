cask "foil" do
  version "1.13.3"
  sha256 "e662fa96a3f5c77ae2cd6811ddd679eec2ce4418e47c9db1a48904a35e7ec9e0"

  url "https://github.com/mean-weasel/foil/releases/download/v1.13.3/Foil-1.13.3-macos.dmg"
  name "Foil"
  desc "Menu bar speech-to-text transcription with cloud and local providers"
  homepage "https://github.com/mean-weasel/foil"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Foil.app"

  zap trash: [
    "~/Library/Application Support/com.neonwatty.Foil",
    "~/Library/Preferences/com.neonwatty.Foil.plist",
    "~/Library/Caches/com.neonwatty.Foil",
  ]
end
