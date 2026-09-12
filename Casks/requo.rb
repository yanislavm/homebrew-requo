# This file is the canonical cask source. The release workflow copies it to
# yanislavm/homebrew-requo (at Casks/requo.rb) and stamps in the new version
# and sha256 automatically on each tagged release.
#
# To install manually from the tap:
#   brew tap yanislavm/requo
#   brew install --cask requo

cask "requo" do
  version "0.1.122"
  sha256 "d913d18ffa1dbbd3de3e29c8f7b7908d603c94cc215b493ca41e3ea5ea3cf50d"

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
