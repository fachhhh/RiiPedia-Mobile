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

## Checkpoint Tugas Individu 8
### 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
**Kegunaan `const` dalam flutter adalah**
1. Optimalisasi Memory yang mana objek yang dideklarasikan sebagai `const` hanya akan dibuat satu kali dan disimpan di memori. Artinya saat suatu objek yang sama digunakan berulang ulang maka tidak perlu membuat objek baru lagi
2. Immutability. Objek atau widget yang dideklarasikan dengan const tidak dapat diubah dan membuat aplikasi lebih stabil karena nilai dari objek tidak dimodifikasi.
3. Efisiensi Build. Setiap kali ada perubahan pada UI maka tidak perlu di-rebuild setiap kali ada perubahan state atau saat UI diperbarui.
**Keuntungan menggunakan `const` adalah**
1. Peningkatan performa karena tidak perlu membuat objek baru setap kali ada perubahan.
2. Mengurangi penggunaan memori karena objek hanya dibuat satu kali.
3. Kode lebih stabil karena immutable.

**Kapan Sebaiknya Menggunakan `const`**
1. Widget Stateless yang Tidak Berubah
2. Dalam Hierarki Widget yang Bersarang
3. Variabel yang Didefinisikan Sekali

**Kapan Sebaiknya Tidak Menggunakan `const`**
1. Pada Widget yang Menggunakan State atau Data yang Berubah
2. Objek yang Dibuat Berdasarkan Perhitungan Runtime

### 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
**Column**\
Widget yang digunakan untuk menyusun widget secara vertikal (dari atas ke bawah). Setiap widget child di dalam Column akan ditumpuk dalam satu kolom.

**Row**\
Widget yang digunakan untuk menyusun widget secara horizontal (dari kiri ke kanan). Setiap widget child di dalam Row akan disusun secara berjajar dalam satu baris.

**Perbedaan**
- Arah Susunan
    - Column digunakan Menyusun child secara vertikal.
    - Row digunakan Menyusun child secara horizontal.
- Fungsi `MainAxisAlignment` dan `CrossAxisAlignment`
    - Pada Column, MainAxisAlignment mengatur tata letak vertikal, sedangkan CrossAxisAlignment mengatur posisi horizontal.
    - Pada Row, MainAxisAlignment mengatur tata letak horizontal, sedangkan CrossAxisAlignment mengatur posisi vertikal.

**Contoh Implementasi Row**
```
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
    Container(
      width: 100,
      height: 100,
      color: Colors.red,
      child: Center(child: Text('Box 1')),
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.green,
      child: Center(child: Text('Box 2')),
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.blue,
      child: Center(child: Text('Box 3')),
    ),
  ],
)
```
Pada contoh di atas, mainAxisAlignment diatur ke `MainAxisAlignment.center`, sehingga semua Container akan disusun di *tengah layar* secara **vertikal**. crossAxisAlignment diatur ke `CrossAxisAlignment.center`, sehingga setiap container diposisikan di *tengah layar* secara **horizontal**.

**Contoh Implementasi Row**
```
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
    Container(
      width: 100,
      height: 100,
      color: Colors.red,
      child: Center(child: Text('Box 1')),
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.green,
      child: Center(child: Text('Box 2')),
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.blue,
      child: Center(child: Text('Box 3')),
    ),
  ],
)
```
Pada contoh di atas, mainAxisAlignment diatur ke `MainAxisAlignment.spaceEvenly`, yang memberikan *jarak yang merata* di antara setiap container. crossAxisAlignment diatur ke `CrossAxisAlignment.center`, sehingga setiap container akan *ditempatkan di tengah* secara **vertikal**.

### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Untuk di tugas ini saya hanya baru menggunakan `TextFormField` saja karena kebutuhan untuk menambahkan produk pada aplikasi E-Commerce. `TextFormField` berguna untuk mengumpulkan input teks dari pengguna, seperti nama produk, deskripsi, atau harga barang. Selain `TextFormField`, masih ada beberapa elemen input seperti:
- `Checkbox`: Digunakan untuk pilihan ya/tidak atau setuju/tidak setuju, seperti pada syarat dan ketentuan.
- `Radio`: Digunakan untuk pilihan tunggal di antara beberapa opsi, misalnya jenis kelamin (Laki-laki/Perempuan).
- `DropdownButtonFormField`: Untuk pilihan yang memiliki banyak opsi tetapi hanya satu yang bisa dipilih pada satu waktu. Ini sangat berguna untuk input seperti negara atau kota.
- `Slider`: Digunakan untuk mengatur nilai dalam rentang tertentu, misalnya mengatur level volume atau umur.
- `Switch`: Digunakan untuk pilihan hidup/mati, seperti mengaktifkan atau menonaktifkan notifikasi.
- `DatePicker`: Untuk input tanggal, memungkinkan pengguna memilih tanggal tertentu, misalnya tanggal lahir.
- `TimePicker`: Untuk input waktu, memungkinkan pengguna memilih waktu, misalnya untuk janji atau pengingat.

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Dalam tugas ini saya mengatur tema secara keseluruhan pada file [main.dart](https://github.com/fachhhh/RiiPedia-Mobile/blob/main/lib/main.dart) dengan menggunakan `MaterialApp` dan `Theme`. ThemeData dapat digunakan untuk menentukan tema aplikasi secara global di setiap widget yang di implementasikan.

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Terdapat 3 Method `Navigator` yang sudah disediakan flutter untuk digunakan.
- **Navigator.push**
    - Method `push()` digunakan untuk menambahkan suatu route ke dalam stack route yang dikelola oleh navigator. Route yang ditambahkan akan menjadi route yang aktif setelah method ini dipanggil.
- **Navigator.pop**
    - Method `pop()` digunakan untuk menghapus route yang aktif dari stack route yang dikelola oleh navigator. Jika tidak ada route lain di bawahnya, maka aplikasi akan kembali ke halaman utama.
- **Navigator.pushReplacement**
    - Method `pushReplacement()` digunakan untuk mengganti route yang aktif dengan route baru. Route baru akan menjadi route yang aktif setelah method ini dipanggil.