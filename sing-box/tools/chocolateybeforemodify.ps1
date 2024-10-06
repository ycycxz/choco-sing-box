$ErrorActionPreference = 'Stop'

Get-Process -Name 'sing-box' -ErrorAction SilentlyContinue | Stop-Process
