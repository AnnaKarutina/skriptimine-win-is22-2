# vajalikud parameetrid
param(
$KasutajaNimi,
$TaisNimi,
$KontoKirjeldus
)
# loome kasutaja jaoks parool
$KasutajaParool = ConvertTo-SecureString 'Parool1!' -AsPlainText -Force
# loome kasutaja
New-LocalUser $KasutajaNimi -Password $KasutajaParool -FullName $TaisNimi -Description $KontoKirjeldus