cask "feedsbar" do
  version "1.2.8"
  sha256 "72d8bb576b5d203c6fb706dd715ca4ecc8326b231e74c2d918e11cf0fa3b4979"

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
