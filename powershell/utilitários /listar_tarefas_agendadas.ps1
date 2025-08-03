<#
.SINOPSE
Lista tarefas agendadas no sistema.

.AUTOR
Fábio Wlademir
#>

Get-ScheduledTask | Select-Object TaskName, State, LastRunTime
