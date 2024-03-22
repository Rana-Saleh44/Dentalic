import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trial1/components/navbar.dart';

class DocHome extends StatefulWidget {
  const DocHome({Key? key});

  @override
  State<DocHome> createState() => _DocHomeState();
}

class _DocHomeState extends State<DocHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: NavBar(),
        width: 260,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "Welcome Back!",
                  style: TextStyle(fontFamily: 'Galdeano', fontSize: 35),
                ),
              ),
            ),
            Center(
              child: Icon(
                Icons.account_box_rounded,
                size: 100,
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text("DR.Ahmed Adel Mohammed",
                  style: TextStyle(fontFamily: 'Spectral', fontSize: 20)),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Speciality: fany akwad ",
                    style: TextStyle(fontFamily: 'Galdeano', fontSize: 20),
                  ),
                ),
                Text(
                  "Education: uni ",
                  style: TextStyle(fontFamily: 'Galdeano', fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Our top services: ",
                  style: TextStyle(
                      fontFamily: 'Galdeano', fontSize: 20, color: Colors.blue),
                ),
              ),
            ),
            buildHorizontalList(),
          ],
        ),
      ),
    );
  }

  Widget buildHorizontalList() => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            5,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                width: 150,
                height: 220,
                decoration: BoxDecoration(
                    color: Color.fromARGB(186, 107, 176, 234),
                    borderRadius: BorderRadius.circular(15)),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 40),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.account_circle,
                            size: 70,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Patient management",
                        style: TextStyle(fontFamily: 'Galdeano', fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
