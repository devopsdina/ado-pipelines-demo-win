# ado-pipelines-demo-win

A quick example of an azure devops yaml file to run against a windows hosted agent with pester test results.

## Tests

If you want to run tests locally you must have pester installed:
`Install-Module Pester -Force -SkipPublisherCheck`

From the root of the repo or from the automation folder, you should be able to run:
`invoke-pester`