cask "macadress-scanner" do
  version "1.1.0"
  sha256 "901d652b13d9b582e3d73ba91362f459e15499de6dec8febbd0f8841195677d1"

  url "https://macadress.com/static/scanner/MacadressScanner-#{version}-macOS.zip"
  name "Macadress Scanner"
  desc "Finds every device on your LAN and identifies its vendor and device type"
  homepage "https://macadress.com/scanner"

  app "Macadress Scanner.app"

  zap trash: [
    "~/Library/Preferences/com.macadress.scanner.plist",
    "~/Library/Saved Application State/com.macadress.scanner.savedState",
  ]
end
