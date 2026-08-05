# Bulk AD User Creation from CSV
$users = Import-Csv -path "C:\newusers.csv"
$password = Read-Host -Prompt "Enter temporary password" -AsSecureString

foreach ($user in $users) {
    $username = ($user.FirstName.Substring(0,1) + $user.LastName).ToLower()
    $fullname = "$($user.FirstName) $($user.LastName)"
    $oupath = "OU=$($user.OU),OU=Gallup HQ,DC=LAB,DC=local"
    if (Get-ADUser -Filter "SamAccountName -eq '$username'") {
        Write-Host "SKIPPED: $username already exists" -ForegroundColor Yellow
    }
    else {
        New-ADUser -Name $fullname `
            -GivenName $user.FirstName `
            -Surname $user.LastName `
            -SamAccountName $username `
            -UserPrincipalName "$username@lab.local" `
            -Path $oupath `
            -Department $user.Department `
            -AccountPassword $password `
            -ChangePasswordAtLogon $true `
            -Enabled $true
        Write-Host "CREATED: $fullname ($username)" -ForegroundColor Green
    }
}
