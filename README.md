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

## Checkpoint Tugas Individu 7
### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Widget adalah komponen dasar yang digunakan untuk membangun antarmuka pengguna dalam pengembangan aplikasi menggunakan flutter.
- **Stateless Widget**
    - Stateless Widget adalah widget yang tidak memiliki state yang dapat berubah. Jika widget tersebut dibuat, maka widget tsb tidak akan berubah selama siklus hidupnya. Stateless Widget cocok digunakan untuk komponen antarmuka pengguna yang bersifat statis, atau yang kontennya tidak berubah berdasarkan aksi pengguna atau data eksternal yang berubah.
- **Stateful Widget**
    - Stateful Widget adalah widget yang memiliki state yang dapat berubah. Widget ini bisa merespons interaksi pengguna atau perubahan data yang terjadi, dan tampilan widget dapat diperbarui sesuai perubahan state tersebut. Setiap Stateful Widget memiliki kelas yang disebut **State**, yang menyimpan data atau informasi yang bisa berubah seiring waktu atau akibat interaksi pengguna.
- **Perbedaan Dari Kedua Widget**
    - Stateless *tidak mempunyai* state yang bisa menyimpan data atau informasi yang bisa berubah akibat interaksi pengguna. Namun, Statefull mempunyai hal tersebut.
    - Untuk responsif terhadap perubahan, Statefull lebih unggul karena dapat berubah sesuai aksi yang dilakukan pengguna atau data baru. Sedangkan Stateless tidak berubah meski setelah dirender.
    - Statefull dapat memanggil `build` secara berkali - kali pada perubahan state. Namun Stateless tidak bisa dan hanya satu kali pemanggilan saja.
    - Biasanya Stateless digunakan saat ingin menampilkan teks statis, ikon, dekorasi visual yang tetap, dan lain - lain. Statefull biasanya digunakan saat ingin menampilkan tombol yang interaktif, form, input, animasi, daftar dinamis dan lain lain.
### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
1. `MaterialApp`
Digunakan sebagai root aplikasi yang mana berfungsi untuk menginisialisasi aplikasi dengan material design dan menyediakan berbagai pengaturan global, seperti theme dan home widget.
2. `Scaffold`
Scaffolf adalah struktur dasar layar dalam flutter, yang mana berfungsi untuk menyediakan struktur dasar layar utama. Contohnya seperti AppBar, Drawer, dan FloatingActionButton.
3. `AppBar`
AppBar digunakan untuk menunjukkan judul halaman dan bisa diisi dengan aksi lainnya, seperti ikon atau menu. Sama dengan NavBar pada website.
4. `Text`
Text digunakan untuk menampilkan teks di beberapa lokasi, seperti judul aplikasi di AppBar dan konten pada widget InfoCard. Teks menampilkannya secara statis.
5. `Padding`
Digunakan untuk memberikan jarak (padding) di sekitar widget lain.
6. `Column`
Digunakan untuk menata widget secara vertikal.
7. `Row`
Digunakan untuk menata widget secara horizontal.
8. `InfoCard`
InfoCard adalah widget custom yang dirancang untuk menampilkan informasi statis dalam bentuk kartu.
9. `Card`
Digunakan di InfoCard untuk memberikan gaya tampilan kartu pada informasi yang ditampilkan.
10. `GestureDetector`
Digunakan untuk menangani interaksi pengguna dengan widget, seperti mendeteksi ketika gambar diklik dan akan menampilkan SnackBar
11. `Container`
Digunakan untuk membuat kotak tampilan yang bisa diisi warna, ukuran, margin, atau padding tertentu.
12. `ClipRRect`
Digunakan di dalam Container yang membungkus gambar untuk memberikan efek sudut melingkar (rounded corners) pada gambar.
13. `Image.network`
Digunakan untuk menampilkan gambar dari URL.
14. `GridView.count`
Digunakan untuk menampilkan widget dalam bentuk grid (tata letak kotak-kotak).
15. `ItemCard`
ItemCard adalah widget custom untuk menampilkan tiap item dalam bentuk kartu dengan ikon dan teks.
16. `Material`
Digunakan sebagai pembungkus untuk InkWell, memberikan ripple effect saat kartu ditekan.
17. `InkWell`
Digunakan untuk mendeteksi aksi tekan (tap) pada kartu. Ini memungkinkan pengguna menekan ItemCard dan menampilkan pesan SnackBar.
18. `SnackBar`
Digunakan untuk menampilkan pesan pop-up sementara di bagian bawah layar ketika sebuah aksi terjadi.

### 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
`setState()` adalah merupakan fungsi yang digunakan pada Stateful Widget untuk memberi tahu framework bahwa ada perubahan pada state widget, dan tampilan perlu diperbarui atau dirender ulang dengan nilai yang terbaru. Ketika fungsi tsb dipanggil Flutter akan menjalankan ulang metode `build()` pada widget tersebut, sehingga widget bisa mencerminkan perubahan data yang ada.\
\
Variabel yang bisa terdampak oleh setState() adalah variabel yang berada di dalam kelas state (State<T>) dari StatefulWidget. Contohnya seperti:
- Variabel counter atau nilai hitungan
- Data yang dinamis atau berubah berdasarkan interaksi pengguna
- Status tampilan visual
- Data yang diambil dari server

### 4. Jelaskan perbedaan antara const dengan final.
`const` :
- Waktu inisiasi = Harus diketahui pada waktu kompilasi
- Immutable = Tidak dapat diubah
- Penggunaan Umum = Nilai konstan seperti angka dan string
- Konteks = Bisa digunakan untuk variabel dan objek kelas

`final` :
- Waktu inisiasi = Dapat diinisialisasi saat runtime
- Immutable = Tidak dapat diubah
- Penggunaan Umum = Nilai yang tidak berubah setelah diinisialisasi, namun dapat dihitung pada runtime
- Konteks = Biasanya untuk variabel di dalam metode atau kelas, tapi juga bisa di kelas global

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
1. flutter create (nama file)
2. Merapihkan `main.dart` dan membuat `menu.dart`
3. Membuat beberapa class untuk fungsi dan tampilan pada `menu.dart` seperti `MyHomePage`, `InfoCard`, dan `ItemCard`.
4. Membuat tombol untuk melihat daftar produk, menambahkan produk, dan logout didalam class `MyHomePage` dengan warna yang diambil dari ColorScheme pada class `MyApp` pada `main.dart`
5. Memberikan fungsi kepada setiap tombol. Setiap dipencet akan memunculkan *SnackBar* yang didefinisikan di dalam class `ItemCard`