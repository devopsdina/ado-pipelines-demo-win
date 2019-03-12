function Use-HelloWorld {
  [CmdletBinding()]
  param(
    [Parameter(Mandatory=$false)]
    [string]
    $Name
  )

  if(-not ($name)) {
    Write-Output 'Hello, World!'
  } else {
    Write-Output "Hello, $($Name)!"
  }
}