$ErrorActionPreference = "Stop"

# Build the site for production and run html-proofer on the output.
#   .\tools\test.ps1

if (Test-Path "_site") {
  Remove-Item -Recurse -Force "_site"
}

$env:JEKYLL_ENV = "production"
& bundle exec jekyll b -d "_site"
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

& bundle exec htmlproofer "_site" `
  --disable-external `
  --ignore-urls "/^http:\/\/127.0.0.1/,/^http:\/\/0.0.0.0/,/^http:\/\/localhost/"
exit $LASTEXITCODE
