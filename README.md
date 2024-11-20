# RiiPedia Mobile
Riipedia adalah toko konsinyasi dan penyedia jasa titip barang dari Jakarta ke Tokyo, serta mitra resmi brand anime Jepang. Kami menawarkan beragam koleksi hobi Jepang: manga, action figure, Nintendo Switch, dan oleh-oleh Jepang lainnya. Nikmati pengalaman belanja mudah dengan akses ke produk-produk resmi dari Jepang langsung di genggaman Anda!

## Made By
- Hadyan Fachri
- 2306245030
- PBP A

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Wiki for README.md Archieve
- [Tugas individu 7](https://github.com/fachhhh/RiiPedia-Mobile/wiki/Archieve-Tugas-Individu-7-PBP)
- [Tugas individu 8](https://github.com/fachhhh/RiiPedia-Mobile/wiki/Archieve-Tugas-Individu-8-PBP)

## Checkpoint Tugas Individu 9
### 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Ada Beberapa alasan mengapa kita perlu membuat model:
- Struktur dan validasi data\
    Sama halnya dengan django, model memberikan struktur yang jelas untuk data. Selain itu bisa menentukan field apa yang diperlukan beserta tipe data setiap field. Kemudian model juga dapat memvalidasi data secara otomatis sebelum data dikirim atau diterima
- Kemudahan pengelolaan data\
    Dengan model, kita dapat mempermudah pengelolaan data dalam bentuk objek yang mudah diakses. Selain itu model dapat memanfaatkan fitur ORM (Object Relational Mapping) untuk berinteraksi dengan database.
- Keamanan dan kompatibilitas\
    Data yang dikirim atau diterima ke API harus sesuai dengan Format yang telah ditentukan. Selain itu model mencegah data yang tidak diinginkan atau berbahaya masuk ke sistem.

Jika kita tidak membuat model, sebenarnya tidak selalu error meski ada beberapa resiko error yang mungkin terjadi seperti Inkompatibilitas Format Data yang mana tidak bisa memproses jika struktur data json tidak konsisten. Lalu ada kesalahan parsing yang mana data json tidak sesuai ekspektasi. Kemudian bisa juga terjadi data yang diterima atau dikirim tidak sesuai. Dalam pov programmer, akan sulit untuk memantain proyek skala besar dalam hal debugging atau yang lain.

### 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
1. Melakukan Permintaan HTTP (GET, POST)
2. Menerima dan Mengelola Respon HTTP
3. Manajemen Header dan Data
4. Mendukung Operasi Synchronous dan Asynchronous
5. Mendukung Protokol Tambahan
6. Membantu Debugging dan Logging

### 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest adalah sebuah objek atau utilitas yang bertugas menangani pengambilan dan penyimpanan cookie dari server. CookieRequest digunakan juga untuk menyisipkan cookie ke dalam setiap permintaan HTTP (GET/POST) yang membutuhkan autentukasi berbasis cookie. Lalu dapat mempermudah pengelolaan state session pengguna dalam aplikasi.

Fungsi utama CookieRequest:
- Managemen Sesi\
    Menyimpan cookie sehingga bisa digunakan untuk permintaan dalam tahap selanjutnya. Selain itu mempertahankan state pengguna tanpa perlu mengirimkan data otentikasi di setiap permintaan.
- Mempermudah proses autentikasi\   
    Ketika cookie memerlukan validasi, CookieRequest akan memastikan cookie yang relevan dalam header permintaan HTTP.
- Penyimpanan dan sinkronasi cookie\
    CookieRequest menyimpan cookie dalam memori atau penyimpanan lokal sehingga tetap dapat digunakan bahkan setelah aplikasi ditutup dan dibuka kembali.
- Keamanan data\
    Mengelola cookie secara terpusat untuk mengurangi resiko kebocoran data dan data hanya bisa diakses oleh CookieRequest.

Mengapa Instance CookieRequest Perlu Dibagikan ke Semua Komponen?
- Konsistensi Data\
    Dengan membagikan instance CookieRequest, semua permintaan akan menggunakan cookie yang tersimpan secara konsisten.
- State Management\
    Dengan instance CookieRequest, state sesi pengguna dikelola di satu tempat yang dapat diakses oleh semua komponen.
- Efisiensi\
    Dengan membuat objek CookieRequest, penggunaan instance yang sama menghemat memori dan meningkatkan efisiensi aplikasi.
- Kemudahan Integrasi\
    Komponen tidak perlu khawatir tentang bagaimana cara menyisipkan cookie atau menangani otentikasi, karena semuanya dikelola oleh CookieRequest.

### 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
1. Input Data pada Flutter\
    Pengguna memasukkan data melalui widget input, seperti TextField atau TextFormField. Data ini disimpan dalam variabel lokal atau state aplikasi untuk diproses lebih lanjut.

2. Validasi Data di Flutter\
    Sebelum mengirim data ke server, validasi dilakukan pada sisi aplikasi Flutter untuk memastikan data sesuai dengan aturan yang telah ditetapkan (misalnya, email valid, angka dalam rentang tertentu).

3. Pengiriman Data ke Server\
    Setelah data divalidasi, Flutter mengirimkan data ke server menggunakan protokol HTTP. Biasanya, data dikirim dalam format JSON melalui metode POST, PUT, atau PATCH.\
    Data JSON: Data dikonversi menjadi format JSON menggunakan json.encode.\
    HTTP POST: Flutter mengirimkan permintaan HTTP POST ke server dengan body berupa data JSON.\
    Respons Server: Server memproses data dan mengembalikan respons (misalnya, status sukses atau error).
    
4. Pemrosesan Data di Backend\
    Proses di Server:\
    Endpoint API: Server (misalnya Django) menerima permintaan dari Flutter melalui endpoint yang ditentukan, seperti /api/data/.\
    Validasi dan Penyimpanan: Server memvalidasi data yang diterima, lalu menyimpannya ke database jika valid.\
    Respons JSON: Server mengirimkan respons ke Flutter, biasanya berupa data yang baru disimpan atau status operasi.

5. Pengambilan Data dari Server\
    Flutter juga dapat mengambil data dari server menggunakan metode GET. Data yang diambil biasanya dalam format JSON.

### 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
1. Register\
    Pengguna mengisi form registrasi (misalnya TextFormField) di aplikasi Flutter.\
    Flutter memvalidasi data input (seperti email format valid, password minimal 8 karakter).\
    Jika valid, Flutter mengirim data ke backend Django melalui permintaan HTTP POST.\
    Endpoint Registrasi: Django REST Framework (DRF) menyediakan endpoint seperti /api/register/.\
    Validasi Backend: Django memastikan data valid (email unik, password aman).\
    Simpan Data: Django menyimpan data pengguna di database menggunakan model User.

2. Login\
    Pengguna memasukkan username dan password di Flutter.\
    Flutter mengirim permintaan HTTP POST ke endpoint login Django.\
    Jika login berhasil, backend mengirimkan token autentikasi (seperti JWT atau TokenAuth) ke Flutter.\
    Endpoint Login: Django memvalidasi data login melalui endpoint /api/login/.\
    Validasi Kredensial: Django memverifikasi username dan password menggunakan fungsi authenticate.\
    Pembuatan Token: Jika valid, Django membuat dan mengirimkan token autentikasi ke Flutter.

3. Pengambilan Menu (Data Setelah Login)\
    Simpan Token: Flutter menyimpan token yang diterima dari backend (misalnya, di Secure Storage).\
    Permintaan Data: Flutter mengirim permintaan HTTP GET ke server untuk mengambil data menu dengan menyertakan token autentikasi di header.\
    Tampilan Data: Data menu ditampilkan di aplikasi.

4. Logout\
    Pengguna menekan tombol logout.\
    Flutter menghapus token yang disimpan (di memori atau storage).\
    Flutter dapat mengirim permintaan ke Django untuk mencabut token (opsional).\
    Endpoint Logout (Opsional): Django menerima permintaan untuk mencabut token.\
    Hapus Token: Django menghapus token dari database atau menandainya sebagai tidak valid.
    
### 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
1. menambahkan file login.dart untuk login, register.dart untuk regist, dan list_productentry untuk liat daftar produk