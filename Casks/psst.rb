cask "psst" do
  version :latest
  sha256 :no_check

  url "https://nightly.link/jpochyla/psst/workflows/build/master/Psst-x64.dmg.zip",
      verified: "nightly.link/jpochyla/psst/"
  name "Psst"
  desc "Fast Spotify client with native GUI, without Electron, built in Rust"
  homepage "https://github.com/jpochyla/psst"

  app "Psst.app"

  zap trash: [
    "~/Library/Caches/Psst",
    "~/Library/Application Support/Psst"
  ]

  caveats <<~EOS
    According to https://github.com/jpochyla/psst/issues/89#issuecomment-900355808 the Psst developers
    do not sign their code and this app will not work with quarantine attributes.
    To use this cask, install it with:

      brew install --cask --no-quarantine #{token}

    WARNING: quarantining is a macOS security feature and you disable it at your own risk!
  EOS
end
