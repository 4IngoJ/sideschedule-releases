cask "sideschedule" do
  version "0.13.2"
  sha256 "f060b05008a8efaae80c7fe238be719a605c4462c768bb93bd3c70d205c65144"

  url "https://github.com/4IngoJ/sideschedule-releases/releases/download/v#{version}/SideSchedule-#{version}.dmg"
  name "SideSchedule"
  desc "Day-calendar sidebar that reserves screen space instead of overlaying it"
  # The sideschedule source repo is intentionally private (see its own
  # README) — pointing homepage there 404s for anyone Homebrew's audit
  # or a user's browser sends here. This is the actual public site.
  homepage "https://4ingoj.github.io/sideschedule-releases/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself via Sparkle, so this tells `brew outdated`/
  # `brew upgrade` to leave it alone by default (Sparkle already has it
  # covered) rather than fight over which one is the source of truth.
  # `brew upgrade --cask --greedy` still picks up a version bump here if
  # someone wants brew, not Sparkle, driving the update.
  auto_updates true
  # Matches LSMinimumSystemVersion in Scripts/Info.plist — without this,
  # brew installs happily on an unsupported OS and the failure only shows
  # up as the app silently refusing to launch.
  depends_on macos: :ventura

  app "SideSchedule.app"

  zap trash: [
    "~/Library/Caches/com.ingojurz.sideschedule",
    "~/Library/Preferences/com.ingojurz.sideschedule.plist",
    "~/Library/Saved Application State/com.ingojurz.sideschedule.savedState",
  ]
end
