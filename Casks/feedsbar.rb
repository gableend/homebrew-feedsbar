cask "feedsbar" do
  version "1.2.20"
  sha256 "d18c8e531d930c0d84d299aaf0c54b2ba5913aaa9e8467c7b8c52320edf460c9"

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
