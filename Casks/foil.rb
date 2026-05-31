cask "foil" do
  version "1.13.4"
  sha256 "1390e585aec6f50c2f779103ad0136fa974caa64acca91f0e787d4438bec5e1c"

  url "https://github.com/mean-weasel/foil/releases/download/v1.13.4/Foil-1.13.4-macos.dmg"
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
