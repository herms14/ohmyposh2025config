
try { $null = gcm pshazz -ea stop; pshazz init 'default' } catch { }
oh-my-posh init pwsh --config C:\Users\herms\OneDrive\Scripts\ohmyposh-theme.json | Invoke-Expression
# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

set-alias tf terraform
set-alias tfv "terraform validate"
set-alias tfp "terraform plan"
set-alias tfi "terraform init"
function tfa { terraform apply -auto-approve }
