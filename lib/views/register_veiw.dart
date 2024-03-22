import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trial1/components/my_button.dart';
import 'package:trial1/views/doctor_register.dart';
import 'package:trial1/views/login_view.dart';

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back)),
                ),
                SizedBox(
                  height: 80,
                ),
                Text(
                  "Let's Get Started!",
                  style: TextStyle(
                    fontFamily: 'Galdeano',
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Are you ready to be a part of something new?",
                  style: TextStyle(
                    fontFamily: 'Galdeano',
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                MyButton(
                  onTap: () {},
                  text: "Sign up as a doctor",
                  co: Colors.blue,
                ),
                SizedBox(
                  height: 60,
                ),
                MyButton(
                  onTap: () {},
                  text: "Sign up as a patient",
                  co: Colors.blue,
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account ?",
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Galdeano')),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => registerPage()));
                      },
                      child: Text(
                        " Login here",
                        style: TextStyle(
                            color: Colors.blue, fontFamily: 'Spectral'),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
