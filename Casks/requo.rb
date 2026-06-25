# This file is the canonical cask source. The release workflow copies it to
# yanislavm/homebrew-requo (at Casks/requo.rb) and stamps in the new version
# and sha256 automatically on each tagged release.
#
# To install manually from the tap:
#   brew tap yanislavm/requo
#   brew install --cask requo

cask "requo" do
  version "0.1.42"
  sha256 "304f3b905eb0e47e3ac3f5ee36ace69958e4454cb078dc9f262195ac481c3ec0"

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
