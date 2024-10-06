$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

if (Test-Connection -ComputerName google.com -Quiet -Count 1) {
  $url64 = "https://github.com/SagerNet/sing-box/releases/download/v1.9.6/sing-box-1.9.6-windows-amd64.zip"
}
else {
  $url64 = "https://mirror.ghproxy.com/https://github.com/SagerNet/sing-box/releases/download/v1.9.6/sing-box-1.9.6-windows-amd64.zip"
}

$checksum64 = "db3b7fc983516dddcafcd4f74bddf02e58759a72b86af02ac4f27292a05a3131"

Install-ChocolateyZipPackage $packageName $url64 -checksum64 $checksum64 -UnzipLocation $toolsDir
