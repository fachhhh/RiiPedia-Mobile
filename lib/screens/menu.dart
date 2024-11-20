import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:riipedia_mobile/screens/login.dart';

// Kelas ItemHomepage untuk mendefinisikan item menu
class ItemHomepage {
  final String title;  // Nama item.
  final IconData icon; // Ikon item.

  ItemHomepage(this.title, this.icon);
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  // Informasi pengguna
  final String npm = '2306245030'; // NPM
  final String name = 'Hadyan Fachri'; // Nama
  final String className = 'PBP A'; // Kelas

  // Daftar item menu
  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.shopping_bag),
    ItemHomepage("Tambah Produk", Icons.add_shopping_cart),
    ItemHomepage("Logout", Icons.logout),
  ];

  // Fungsi logout
  void logout(BuildContext context) {
    final request = Provider.of<CookieRequest>(context, listen: false);
    request.logout("http://127.0.0.1:8000/auth/logout/");
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'RiiPedia',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),

      // Drawer untuk navigasi tambahan
      drawer: const LeftDrawer(),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Baris informasi pengguna
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),

            const SizedBox(height: 16.0),

            // Teks selamat datang
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to RiiPedia',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  // Gambar
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Image tapped!")),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.grey[300],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaNQVC4uxu_pNt6stbSaFTxrTxWLtRrJ6hKg&s', // URL gambar
                          width: double.infinity,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  // Menu grid dengan tombol logout
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 3, // Jumlah kolom di grid
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: items.map((ItemHomepage item) {
                        if (item.title == "Logout") {
                          return GestureDetector(
                            onTap: () => logout(context),
                            child: ItemCard(item),
                          );
                        }
                        return ItemCard(item);
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Kartu untuk informasi pengguna
class InfoCard extends StatelessWidget {
  final String title; // Judul kartu
  final String content; // Isi kartu

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 4.0, // Lebar kartu
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
            ),
            const SizedBox(height: 4.0),
            Text(content, style: const TextStyle(fontSize: 10.0)),
          ],
        ),
      ),
    );
  }
}

// Widget untuk setiap item menu
class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(item.icon, size: 40.0, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 8.0),
            Text(
              item.title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}

// Dummy widget untuk LeftDrawer
class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'RiiPedia Menu',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context); // Navigasi ke halaman utama
            },
          ),
        ],
      ),
    );
  }
}