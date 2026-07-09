cask "glanceterm" do
  # version / sha256 / url are kept in sync with the latest stable GlanceTerm
  # release by .github/workflows/update-cask.yml. Currently pinned to the
  # v0.0.0-citest test build until the first stable release ships.
  version "0.3.5"
  sha256 "97ea9a441d3404f4f5262f4a00b8e7dc05606072690f62a2f8d32652c02dd97a"

  url "https://github.com/jessemaxh/GlanceTerm/releases/download/v0.3.5/GlanceTerm-0.3.5-macos-arm64.dmg"
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
