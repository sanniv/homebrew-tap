cask "sanniv-browserosaurus" do
  version "20.12.0"
  sha256 "8f366b196a32ee09045fe413bd57e444eef1d3ac33b38bf6812b65e8bbf8aac4"

  url "https://github.com/sanniv/sanniv-browserosaurus/releases/download/v#{version}-spaces-fix/sanniv-browserosaurus-#{version}.zip"
  name "sanniv-browserosaurus"
  desc "Browserosaurus fork fixing the multiple-desktops/Spaces picker bug (upstream #595)"
  homepage "https://github.com/sanniv/sanniv-browserosaurus"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Browserosaurus.app"

  caveats <<~EOS
    This build is not code-signed. Install with:
      brew install --cask --no-quarantine sanniv/tap/sanniv-browserosaurus
    If macOS still reports the app as damaged, run:
      xattr -dr com.apple.quarantine /Applications/Browserosaurus.app
  EOS

  zap trash: [
    "~/Library/Application Support/Browserosaurus",
    "~/Library/Logs/Browserosaurus.debug.log",
    "~/Library/Preferences/com.browserosaurus.plist",
  ]
end
