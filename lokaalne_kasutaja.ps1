# loome kasutaja jaoks parool
$KasutajaParool = ConvertTo-SecureString 'Parool1!' -AsPlainText -Force
# loome kasutaja
New-LocalUser 'kasutaja1' -Password $KasutajaParool -FullName 'Esimene kasutaja' -Description 'Local account'