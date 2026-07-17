cask "glanceterm" do
  # version / sha256 / url are kept in sync with the latest stable GlanceTerm
  # release by .github/workflows/update-cask.yml. Currently pinned to the
  # v0.0.0-citest test build until the first stable release ships.
  version "0.3.8"
  sha256 "e9c67596ad8c56718b2c0322f5e1c856efc73281a7a7cc6e05777a959f98bda6"

  url "https://github.com/jessemaxh/GlanceTerm/releases/download/v0.3.8/GlanceTerm-0.3.8-macos-arm64.dmg"
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
