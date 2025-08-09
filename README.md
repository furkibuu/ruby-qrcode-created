# 📦 QR Kod Oluşturucu (Ruby + Sinatra)

Bu proje, Ruby ve Sinatra kullanarak basit ama işlevsel bir **QR Kod oluşturma uygulaması** sunar.  
Kullanıcılar metin girerek anında QR kod üretebilir, görüntüleyebilir, indirebilir ve son 5 QR kod geçmişine erişebilir.

<img width="1910" height="1084" alt="image" src="https://github.com/user-attachments/assets/c3631201-9a08-44ca-8026-8611f7e86253" />
<img width="1919" height="989" alt="image" src="https://github.com/user-attachments/assets/a83a1e71-159f-492c-a134-43a60e3da97a" />

---

## 🚀 Özellikler
- 📷 **Anında QR Kod Üretme** – Yazdığınız metinden anında QR kod oluşturur.
- 📥 **İndirme Desteği** – Oluşturduğunuz QR kodları PNG formatında indirebilirsiniz.
- 🕒 **Geçmiş Kaydı** – Son 5 QR kodunuzu saklar ve tekrar görüntülemenizi sağlar.
- 🌙 **Karanlık / Aydınlık Tema** – Tema değiştirme butonu ile görünümü özelleştirin.
- 💾 **Oturum Yönetimi** – Kullanıcı geçmişi session ile saklanır.

---

## 📂 Proje Yapısı
```
.
├── app.rb             # Sinatra uygulaması
├── Gemfile            # Gerekli Ruby gem listesi
├── views/
│   └── index.erb      # Ana HTML/ERB şablonu
└── .env               # SESSION_SECRET değişkeni
```

---

## ⚙️ Kurulum

1. **Ruby ve Bundler kurulu olduğundan emin olun**
   ```bash
   ruby -v
   bundler -v
   ```

2. **Depoyu klonlayın**
   ```bash
   git clone https://github.com/kullanici/ruby-qrcode-created.git
   cd ruby-qrcode-created
   ```

3. **Bağımlılıkları yükleyin**
   ```bash
   bundle install
   ```

4. **.env dosyasını oluşturun**
   ```env
   SESSION_SECRET=super_guclu_bir_anahtar
   ```

5. **Uygulamayı çalıştırın**
   ```bash
   ruby app.rb -p 4567
   ```

6. **Tarayıcıdan açın**
   ```
   http://localhost:4567
   ```

---

## 🖼 Kullanım
1. Ana sayfadaki metin kutusuna istediğiniz yazıyı girin.
2. **QR Kod Oluştur** butonuna tıklayın.
3. QR kodunuz anında ekranda görünecektir.
4. İndirmek için **📥 QR Kod İndir** butonunu kullanın.
5. Önceden oluşturduğunuz QR kodlara **📜 Geçmiş** bölümünden ulaşabilirsiniz.

---

## 📦 Kullanılan Teknolojiler
- [Ruby](https://www.ruby-lang.org/)
- [Sinatra](https://sinatrarb.com/)
- [rqrcode](https://github.com/whomwah/rqrcode)
- [chunky_png](https://github.com/wvanbergen/chunky_png)
- [dotenv](https://github.com/bkeepers/dotenv)

---

## 📜 Lisans
Bu proje MIT lisansı ile lisanslanmıştır. İstediğiniz gibi kullanabilir ve geliştirebilirsiniz.

---

💡 **Not:** Tema değişikliği ve geçmiş kaydı tamamen tarayıcı ve session üzerinden yönetilir, ek bir veritabanı gerekmez.
