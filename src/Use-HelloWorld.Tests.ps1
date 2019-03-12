$moduleRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
Import-Module "$moduleRoot\src\Use-HelloWorld.psm1" -Force

Describe 'Use-HelloWorld' {

  It "Runs without a name parameter" {
    { Use-HelloWorld } | Should Not Throw
  }

  It "Runs when passing a name parameters" {
    { Use-HelloWorld -Name 'Azure DevOps' } | Should Not Throw
  }

  It "Returns the proper output" {
    $result_param = Use-HelloWorld -Name 'Azure DevOps'
    $result_param | Should Be "Hello, Azure DevOps!"
    $result = Use-HelloWorld
    $result | Should Be "Hello, World!"
  }
}