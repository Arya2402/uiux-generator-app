$list = cmdkey /list
foreach ($line in $list) {
    if ($line -match 'github') {
        if ($line -match '^\s*Target:\s*(.+)$') {
            $t = $Matches[1].Trim()
            Write-Output "Deleting: $t"
            cmdkey /delete:"$t"
        }
    }
}
Write-Output "=== After delete ==="
cmdkey /list
