# This file is the canonical cask source. The release workflow copies it to
# yanislavm/homebrew-requo (at Casks/requo.rb) and stamps in the new version
# and sha256 automatically on each tagged release.
#
# To install manually from the tap:
#   brew tap yanislavm/requo
#   brew install --cask requo

cask "requo" do
  version "0.1.65"
  sha256 "63826f39e5cb4468ac95e2a912f3ec5da858e3f772363b8f20539b08d302f9a3"

  url "https://github.com/yanislavm/requo-releases/releases/download/v#{version}/requo-v#{version}-darwin-universal.dmg"
  name "requo"
  desc "Local-first, Git-friendly API client"
  homepage "https://github.com/yanislavm/requo"

  app "requo.app"

  zap trash: [
    "~/Library/Application Support/requo",
    "~/Library/Preferences/io.requo.app.plist",
    "~/Library/Saved Application State/io.requo.app.savedState",
  ]
end
