cask "feedsbar" do
  version "1.2.12"
  sha256 "d396cb11ec046d876c3d0c44ae2ce89549343bc46d06eb66b262989d3d851ad6"

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
