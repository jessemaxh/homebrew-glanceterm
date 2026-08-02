cask "glanceterm" do
  # version / sha256 / url are kept in sync with the latest stable GlanceTerm
  # release by .github/workflows/update-cask.yml. Currently pinned to the
  # v0.0.0-citest test build until the first stable release ships.
  version "0.3.9"
  sha256 "b5f5a95b60043548e0be6ca954d110c6bafa23c7aa2e7241cb4e228b0f380174"

  url "https://github.com/jessemaxh/GlanceTerm/releases/download/v0.3.9/GlanceTerm-0.3.9-macos-arm64.dmg"
  name "GlanceTerm"
  desc "Terminal with a sidebar for managing many AI coding agents at once"
  homepage "https://github.com/jessemaxh/GlanceTerm"

  depends_on arch: :arm64

  app "GlanceTerm.app"

  zap trash: [
    "~/.glanceterm",
    "~/Library/Application Support/GlanceTerm",
    "~/Library/Preferences/com.souplin.glanceterm.plist",
    "~/Library/Saved Application State/com.souplin.glanceterm.savedState",
    "~/Library/Caches/com.souplin.glanceterm",
  ]
end
