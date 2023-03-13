Param(
  [Parameter(ParameterSetName = "Home")]
  [switch]$HomeParam
)

$ROOT = "$HOME\.profile.d"
$PROFILE_DIR = "$ROOT\profile"
$STAGING_DIR = "$ROOT\staging"
$INSTALL_DIR = "$ROOT\staging\install"

########################################
# Helpers
########################################

function Log {
  Write-Host $args -ForegroundColor Green
}

function Stage {
  $Source = $PROFILE_DIR.Replace("\", "\\")
  $Items = Get-ChildItem -LiteralPath $Source -Recurse

  foreach ($Item in $Items)
  {
    Write-Output $Item
  }
}

########################################
# Commands
########################################

function Install {
  Home
}

function Home {
  Log "Linking home files"
}

if ($HomeParam) {
  Stage
  Home
}
else {
  Stage
  Install
}

