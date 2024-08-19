# Shebang (#!/bin/bash): Betiğin Bash kabuğu ile çalışacağını gösterir.
# İşletim sistemine Bash betiğinin çalışacağını söyler
#!/bin/bash

###################################################
# Global Variables
# Geri Sayım Süresini Belirleyelim(Saniye Cinsinden)
countdown_seconds=3 # saniye cinsinde

###################################################
# Geri Sayım Süresi Bittiğinde Kullanıcıya Uyarı Verelim
#while []; do 
#done
# $countdown_seconds -gt 0: Sayaç 0'dan  büyük olduğu sürece çalışsın (-gt 0)
while [ $countdown_seconds -gt 0 ]; do
    #echo "Kalan Süre: $countdown_seconds saniye"
    echo "$countdown_seconds saniye kaldı..."
    # 1 saniyede bir süre beklemek için
    sleep 1
    # Sayaçı 1 azaltarak süreyi gerçekleştir.
    countdown_seconds=$((countdown_seconds -1))
done


###################################################
# Geri Sayım Süresi Bittiğinde Uyarı Mesajı Verelim
# Escape Chacterleri (ASCII 7) ile ses tonu değiştirerek uyarı mesaj
# a: Alert veya bell (zil sesi)
# n: yeni satır 
# r: Satır başı
echo -e "\aİşlemler Başlıyor ...\n\r"


