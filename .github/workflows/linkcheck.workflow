workflow "Hugo Link Check" {
  resolves = "linkcheck"
  on = "push"
}

action "linkcheck" {
  uses = "marccampbell/hugo-linkcheck-action@v0.1.3"

  secrets = ["GITHUB_TOKEN"]
  env = {
    HUGO_CONFIG = "./config/_default/config.toml"
    HUGO_ROOT = "./hugo"
    HUGO_FINAL_URL = "https://bkleinen.github.io
  }
}
