$Job = 'Job'

$Var = @{
    Name = 'Value1'
    Name2 = 'Value2'

}

$Var2 = @{
    Name_2 = 'Value1_2'
    Name2_2 = 'Value2_2'

}

Start-ThreadJob  -Name $Job -ScriptBlock {
    write-host "Name: $($args[0].Name)  Name2: $($args[0].Name2)"
    write-host "Name: $($args[1].Name_2)  Name2: $($args[1].Name2_2 )"

} -ArgumentList $Var , $Var2

Receive-Job -Name $Job -AutoRemoveJob -Wait

Get-Job