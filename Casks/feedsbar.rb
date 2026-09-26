cask "feedsbar" do
  version "1.2.15"
  sha256 "8f65193382fea433d229dff8e45b24aa7462f369bf13370a30fe3a5aaa8e2a30"

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
