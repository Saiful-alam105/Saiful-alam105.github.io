param(
  [string]$HostName = "127.0.0.1",
  [switch]$Production
)

# Run the Jekyll server with live reload.
#   .\tools\run.ps1              -> dev server at http://127.0.0.1:4000
#   .\tools\run.ps1 -Production  -> production-mode server

if ($Production) {
  $env:JEKYLL_ENV = "production"
}

& bundle exec jekyll s -l -H $HostName
