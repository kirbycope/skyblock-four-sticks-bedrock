![skyblock-four-sticks-bedrock](/skyblock-four-sticks-bedrock.png)

# skyblock-four-sticks-bedrock
4-Player SkyBlock

## Installation
1. Download the [mctemplate](https://github.com/kirbycope/skyblock-four-sticks-bedrock/raw/main/skyblock-four-sticks.mctemplate)
1. Double-click the mctemplate file
1. Load world

## Releasing
Pushing a tag that starts with `v` (for example `git tag v1.0.0 && git push origin v1.0.0`) runs the Release workflow in `.github/workflows/release.yml`, which builds the world template and attaches `skyblock-four-sticks-bedrock.mctemplate` to a GitHub Release.

To build it locally, run `python tools/build_addon.py`. It writes `build/skyblock-four-sticks-bedrock.mctemplate`, which git ignores, and leaves the committed `skyblock-four-sticks-bedrock.mctemplate` as it is.
