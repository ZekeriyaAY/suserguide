\pagebreak
\pagebreak

# Sunucuya Uzaktan Bağlanma

CLI(komut satırı, terminal) ve GUI(uzak masaüstü, arayüz) ile erişim için ayrı ayrı anlatımlar aşağıda bulunuyor.
Her erişim yönteminin de Windows, macOS ve GNU/Linux için ayrı anlatımları bulunmaktadır.
İhtiyacınız olan adımları takip edebilirsiniz.


## CLI(Komut Satırı Arayüzü) ile Bağlanma

### GNU/Linux

Herhangi ek programa ihtiyaç duymadan kullandığınız Linux dağıtımının terminalini açarak devam edebilirsiniz.
Bazı dağıtımlarda ***`CTRL+ALT+T`*** klavye kombinasyonu ile terminali açabilirsiniz.

```bash
ssh KULLANICI-ADI@SUNUCU-IP-ADRESI
```

![SSH Bağlantısı](images/03/ssh-linux-connection-1.png){width=85%}\
Eğer sertifika onayı gibi bir yazı çıkarsa **`yes`** yazarak devam edebilirsiniz.\
![SSH Bağlantısı](images/03/ssh-linux-connection-2.png){width=85%}

> ***SSH ile bağlantı adımında bir sorun yaşadıysanız [`Sorun Giderme`] başlığına göz atın.***


### Windows

> ***SSH ile bağlantı adımında bir sorun yaşadıysanız [`Sorun Giderme`] başlığına göz atın.***


### macOS

> ***SSH ile bağlantı adımında bir sorun yaşadıysanız [`Sorun Giderme`] başlığına göz atın.***


\pagebreak


## GUI(Grafiksel Kullanıcı Arayüzü) ile Bağlanma

### Windows

### macOS

### GNU/Linux
Birçok Linux dağıtımında Remmina programını kullanarak RDP bağlantısı yapılabiliyor.
Bu yüzden anlatımda Remmina kullanılacaktır.

Remmina'nın resmi kurulum kılavuzu olan ***[`How to install Remmina?`]*** yazısında kullandığınız Linux dağıtımına uygun adımları takip ederek kurabilirsiniz.


#### Remmina Bağlantı Profili Oluşturma

1. Uygulamayı açtıktan sonra sol üst köşede bulunan **`+`** simgesine tıklayarak yeni bağlantı profili oluşturun.\
![Remmina Bağlantı Profili Oluşturma](images/03/remmina-profile-create.png)

1. Profilleri kolay ayırt edebilmek için isim verebilirsiniz. Örnekte **`Test Server 2`** adı verilmektedir.

1. **`RDP`** protokolünü seçin.

1. **`Basic`** sekmesindeki **`Server`** alanına bağlantı kuracağınız sunucunun IP adresini girin.

1. Eğer ***[`Remmina Düşük Ekran Çözünürlüğü`]*** sorununu yaşarsanız **`Basic`** sekmesinin altında bulunan **`Resolution`** kısmını **`Use initial window size`** seçeneğinden **`Use client resolution`** seçeneğine değiştirerek çözebilirsiniz.

1. İlgili yerleri doldurduktan sonra **`Save`** butonuna basarak profili kaydedebilirsiniz.

![Örnek Bağlantı Profili Ayarları](images/03/remmina-profile-settings.png)


#### Remmina Profiline Bağlanma

1. Oluşturulan profile çift tıklayarak bağlantıyı başlatın.\
![Oluşturulan Bağlantı Profili](images/03/remmina-profile.png)

1. İlk bağlantıda sertifika onayı isteyecektir. Bu sertifikayı kabul ederek devam edin.\
![RDP Sertifika Onayı](images/03/rdp-certificate.png)

1. Xrdp giriş ekranına Linux kullanıcı adı ve parolanızı doldurun.

1. Doğru bilgileri girdikten sonra **`OK`** butonuna basarak giriş yapın.\
![Xrdp Login Ekranı](images/03/xrdp-login.png)

1. Remmina kullanarak GUI bağlantısı gerçekleştirildi.\
![Remmina Başarılı Bağlantı](images/03/remmina-connection-successful.png)\

Bağlantı sonrasında GUI masaüstü çözünürlüğünüz çok düşük ise ***[`Remmina Düşük Ekran Çözünürlüğü`]*** adımını takip ederek çözebilirsiniz.

RDP bağlantısını gerçekleştirdikten sonra oturumu ***[`RDP Oturumunu Güvenli Kapatma`]*** adımını takip ederek kapatmayı unutmayın!\

> ***Remmina ile RDP bağlantısı adımında bir sorun yaşadıysanız [`Sorun Giderme`] başlığına göz atın.***


\pagebreak


### RDP Oturumunu Güvenli Kapatma

RDP oturumlarının aşağıda anlatıldığı şekilde kapatılması daha sonraki bağlantılarda ***[`RDP Login Sonrası Siyah Ekran`]*** problemi yaşamamanız için önemlidir.

> Bu adım Windows, macOS ve Linux işletim sisteminde benzer şekilde gerçekleştiğinden her işletim sistemi için ayrı ayrı anlatılmamıştır.\

Sunucu ile ilgili işiniz bittikten sonra RDP programını direkt kapatmamanız önerilir.

1. Linux hesabınızdan çıkış yapın.\
![Linux Hesabından Logout Olma](images/03/remmina-safe-logout.png)
![Logout Onayı](images/03/remmina-safe-logout-confirmation.png)

1. Hesabınızdan çıkış yaptıktan sonra RDP programını kapatabilirsiniz.\
![Remmina Bağlantısını Sonlandırma](images/03/remmina-safe-disconnect.png)\

> ***RDP oturumunu kapatma adımındada bir sorun yaşadıysanız [`Sorun Giderme`] başlığına göz atın.***
