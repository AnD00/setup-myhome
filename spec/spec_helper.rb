require "serverspec"
require "yaml"

set :backend, :exec

def load_configuration(key)
  configuration = YAML.load_file "local.yml"
  packs = configuration[0]["vars"][key] || []
  packs.map do |package|
    package.kind_of?(Hash) ? package["name"] : package
  end
end

def homebrew_packages
  load_configuration "brew_packages"
end

def homebrew_cask_packages
  load_configuration "brew_cask_packages"
end

def homebrew_caskroom
  env = Shellwords.shellsplit(ENV["HOMEBREW_CASK_OPTS"] || "").map do |option|
    option.split("=")
  end
  Hash[*env.flatten]["--caskroom"] || "/usr/local/Caskroom"
end
