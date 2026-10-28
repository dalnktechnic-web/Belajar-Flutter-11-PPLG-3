
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F6FC),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Header profil
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(25),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 15),
                const CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.electrical_services,
                    size: 50,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'TOKO ELEKTRONIK REYHAN KECHIE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Toko Peralatan Elektronik',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

           //1
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Informasi Toko',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),

          const SizedBox(height: 10),

          _profileItem(
            Icons.store,
            'Nama Toko',
            'TOKO ELEKTRONIK REYHAN KECHIE',
          ),

          _profileItem(
            Icons.description,
            'Deskripsi',
            'Menyediakan berbagai produk elektronik.',
          ),

          _profileItem(
            Icons.phone,
            'Nomor Telepon',
            'Belum ditambahkan',
          ),

          _profileItem(
            Icons.location_on,
            'Alamat',
            'Belum ditambahkan',
          ),

          _profileItem(
            Icons.access_time,
            'Jam Operasional',
            'Senin - Sabtu, 08.00 - 21.00',
          ),

          const SizedBox(height: 20),

          const Center(
            child: Text(
              'TOKO ELEKTRONIK REYHAN KECHIE',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  static Widget _profileItem(
    IconData icon,
    String title,
    String subtitle,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      color: Colors.white,
      elevation: 1,
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.blue,
          size: 28,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
      ),
    );
  }
}
