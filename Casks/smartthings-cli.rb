cask "smartthings-cli" do
  version "1.0.0-beta.10"
  sha256 "7db14bac6f9aee792f53d2046e8ec51555a5bd580998441cba2c4480e9c1450a"

  language

  url "https://github.com/SmartThingsCommunity/smartthings-cli/releases/download/%40smartthings%2Fcli%40#{version}/smartthings-macos.zip"
  name "smartthings-cli"
  desc "Samsung SmartThings CLI"
  homepage "https://github.com/SmartThingsCommunity/smartthings-cli"

  binary "smartthings"
end
