Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

scoop install curl
scoop install git

scoop bucket add java
scoop install openjdk

scoop install kotlin
scoop install gradle
scoop install python37
scoop install docker

