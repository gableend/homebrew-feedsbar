cask "feedsbar" do
  version "1.2.18"
  sha256 "34999e75e5a263fc9a60a9fa798c8860be1054c4449075d73cd30736e4be120e"

  url "https://feeds.bar/releases/FeedsBar-#{version}.dmg"
  name "FeedsBar"
  desc "Always-on news ticker for the desktop"
  homepage "https://feeds.bar/"

  livecheck do
    url "https://feedsbar-edge-api.netlify.app/.netlify/functions/v1_manifest"
    regex(%r{/FeedsBar[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: :sonoma

  app "FeedsBar.app"

  zap trash: [
    "~/Library/Containers/com.graemechard.FeedsBar",
    "~/Library/Preferences/com.graemechard.FeedsBar.plist",
  ]
end
