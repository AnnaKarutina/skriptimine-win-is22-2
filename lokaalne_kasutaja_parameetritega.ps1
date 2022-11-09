# kontroll parameetrite arvule
if($args.Count -ne 3){
    echo "Kasutusjuhend: .\skriptifailinimi.ps1 kasutajanimi täisnimi kirjeldus"
} else {
    # vajalikud parameetrid
    $KasutajaNimi = $args[0]
    $TaisNimi = $args[1]
    $KontoKirjeldus = $args[2]
    # loome kasutaja jaoks parool
    $KasutajaParool = ConvertTo-SecureString 'Parool1!' -AsPlainText -Force
    # loome kasutaja
    New-LocalUser $KasutajaNimi -Password $KasutajaParool -FullName $TaisNimi -Description $KontoKirjeldus
}