$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

if (Test-Connection -ComputerName google.com -Quiet -Count 1) {
  $url64 = "https://github.com/SagerNet/sing-box/releases/download/v1.10.0-alpha.29/sing-box-1.10.0-alpha.29-windows-amd64.zip"
}
else {
  $url64 = "https://download.fgit.cf/SagerNet/sing-box/releases/download/v1.10.0-alpha.29/sing-box-1.10.0-alpha.29-windows-amd64.zip"
}

$checksum64 = "4dec49a0f0c18fddffef5dd7531e193fa976bbebc871003ca0bb01152534e149"

Install-ChocolateyZipPackage $packageName $url64 -checksum64 $checksum64 -UnzipLocation $toolsDir
