cask "glanceterm" do
  # version / sha256 / url are kept in sync with the latest stable GlanceTerm
  # release by .github/workflows/update-cask.yml. Currently pinned to the
  # v0.0.0-citest test build until the first stable release ships.
  version "0.3.3"
  sha256 "5bb5f83d635029467065f7f27fd0a7c2cb40717a19fe05dc62e011a01c340268"

  url "https://github.com/jessemaxh/GlanceTerm/releases/download/v0.3.3/GlanceTerm-0.3.3-macos-arm64.dmg"
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
