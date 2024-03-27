import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trial1/views/login_view.dart';

class NavBar extends StatelessWidget {
  NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: const Text(
                "Ahmed adel",
                style: TextStyle(fontFamily: 'Galdeano'),
              ),
              accountEmail: Text(
                "bala7@gmail.com",
                style: TextStyle(fontFamily: 'Galdeano'),
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    "assets/profile.jpg",
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/denta logo.png",
                  ),
                  fit: BoxFit.cover,
                ),
              )),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text(
              "Favorites",
              style: TextStyle(fontFamily: 'Galdeano', fontSize: 16),
            ),
            onTap: () {
              Navigator.of(context).pop(); // Close the drawer
              ;
            },
          ),

          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(
              "Settings",
              style: TextStyle(fontFamily: 'Galdeano', fontSize: 16),
            ),
            onTap: () {},
          ),

          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text(
              "Log out",
              style: TextStyle(fontFamily: 'Galdeano', fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => login()));
            },
          ),
          // ... (other code)
        ],
      ),
    );
  }
}
