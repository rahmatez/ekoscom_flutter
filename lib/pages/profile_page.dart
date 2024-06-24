import 'package:agriplant/pages/orders_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 15),
            child: CircleAvatar(
              radius: 62,
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: const CircleAvatar(
                radius: 60,
                foregroundImage: NetworkImage(
                    'https://media.licdn.com/dms/image/D4E03AQGtjt1-IHFDvA/profile-displayphoto-shrink_200_200/0/1699112593588?e=2147483647&v=beta&t=iqeShTswEiAiuR50UP9O9GMXK_ROXl_YqJ7J1CuVq78'),
              ),
            ),
          ),
          Center(
            child: Text(
              "Jovi Inzagi",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Center(
            child: Text(
              "joviinzaghi@gmail.com",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          const SizedBox(height: 25),
          ListTile(
            title: const Text("Pesanan Saya"),
            leading: const Icon(IconlyLight.bag),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrdersPage(),
                  ));
            },
          ),
          ListTile(
            title: const Text("Tentang"),
            leading: const Icon(IconlyLight.infoSquare),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Keluar"),
            leading: const Icon(IconlyLight.logout),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
