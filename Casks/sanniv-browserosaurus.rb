cask "sanniv-browserosaurus" do
  version "20.12.1"
  sha256 "203b442eca0dffc07761bea245a68a81672fa9ac399d079d5e186bfef662e052"

  url "https://github.com/sanniv/sanniv-browserosaurus/releases/download/v#{version}-spaces-fix/sanniv-browserosaurus-#{version}.zip"
  name "sanniv-browserosaurus"
  desc "Browserosaurus fork fixing the multiple-desktops/Spaces picker bug (upstream #595)"
  homepage "https://github.com/sanniv/sanniv-browserosaurus"

  depends_on arch: :arm64

  app "Browserosaurus.app"

  postflight do
    # Unsigned build: strip quarantine or macOS reports it as damaged
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Browserosaurus.app"]
  end

  caveats <<~EOS
    If macOS reports the app as damaged on first launch, run:
      xattr -dr com.apple.quarantine /Applications/Browserosaurus.app
  EOS

  zap trash: [
    "~/Library/Application Support/Browserosaurus",
    "~/Library/Logs/Browserosaurus.debug.log",
    "~/Library/Preferences/com.browserosaurus.plist",
  ]
end
