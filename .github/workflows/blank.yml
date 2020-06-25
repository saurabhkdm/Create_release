workflow "keyword-monitor" {
  on = "push"
  resolves = [ "keyword-releaser" ]
}

action "keyword-releaser" {
  uses = "managedkaos/keyword-releaser@master"
  secrets = ["GITHUB_TOKEN"]
  args = "FIXED"
}
