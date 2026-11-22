cask "grid-studio" do
  version "1.0.0"
  sha256 "29d49025be1ca393d5e5840223857d3b9a6dd8690e5e5409f579ce590b35d4fe"

  url "https://github.com/adigold/GridStudio/releases/download/v#{version}/Grid-Studio-#{version}.zip"
  name "Grid Studio"
  desc "Use a monome grid as a MIDI controller"
  homepage "https://github.com/adigold/GridStudio"

  livecheck do
    url "https://raw.githubusercontent.com/adigold/GridStudio/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Grid Studio.app"

  zap trash: [
    "~/Library/Caches/com.adigoldstein.gridstudio",
    "~/Library/HTTPStorages/com.adigoldstein.gridstudio",
    "~/Library/Preferences/com.adigoldstein.gridstudio.plist",
    "~/Library/Saved Application State/com.adigoldstein.gridstudio.savedState",
  ]
end
