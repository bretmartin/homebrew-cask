cask "telavox-flow" do
  version "1.116.0"
  sha256 "ee56248fe07ade61c3ee1d2cde295cfa8c9d4131c0b0bec1682d95c8001e2d9c"

  url "https://s3.eu-west-2.amazonaws.com/flow-desktop/Telavox-#{version}.dmg",
      verified: "s3.eu-west-2.amazonaws.com/flow-desktop/"
  name "Telavox Flow"
  desc "Communication and collaboration platform"
  homepage "https://telavox.com/en/apps/"

  livecheck do
    url "https://deopappmanager.telavox.com/flow/download/mac/latest"
    strategy :header_match
  end

  auto_updates true

  app "Telavox.app"

  zap trash: [
    "~/Library/Application Support/Flow",
    "~/Library/Logs/Flow",
    "~/Library/Saved Application State/telavox.flow.desktop.savedState",
  ]
end
