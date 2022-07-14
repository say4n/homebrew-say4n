cask "smartthings-cli" do
    version "1.0.0-beta.10"
    sha256 ""

    language

    url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/%40smartthings%2Fcli%40#{version}/smartthings-macos.zip"
    name "smartthings-cli"
    desc "Samsung SmartThings CLI"
    homepage "https://github.com/SmartThingsCommunity/smartthings-cli"

    binary "smartthings"
end