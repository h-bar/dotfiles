# Köfteist Köfte config dosyaları

Bu dosyaları direkt olarak kullanıcı dizininize attığınız taktirde ayarlar geçerli olacaktır.

Ancak unutmamanız gereken bir nokta var, bu ayarlar spesifik cihazlara göre ayarlanmıştır. Lütfen kendinize göre uygularken bunları yapılandırmayı unutmayın.
Bu değişikliklerden bazıları:
* Ekran isimleri
* Dropdown terminal boyutu
* Ön tanımlı uygulamalar (tarayıcı, terminal)


## i3 config dosyasını oluşturma
i3 config dosyası ham haliyle yer almamaktadır. i3configlerinde insert tarzı bir özellik olmadığından ve birden fazla cihazda ufak birkaç ayarın değişmesi gerektiğinden `.config/i3` dizini altında `config_base`, `config_header_dummy`, `config_footer_dummy` diye üç dosya mevcuttur. Buradaki `config_header_dummy` ve `config_footer_dummy` dosyalarının `config_header` ve `config_footer` şeklinde iki kopyasını oluşturup bu ikisi içerisinde kendinize göre değişikliklerinizi yaptıktan sonra dotfiles klasörü içindeki `config_build.sh` dosyasını çalıştırmanız yeterlidir. Ev dizininiz içerisinde bir ader `.config/i3/config` dosyası oluşacaktır.
