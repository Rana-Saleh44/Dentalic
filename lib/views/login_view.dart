import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trial1/components/my_button.dart';
import 'package:trial1/components/mytext.dart';
import 'package:trial1/views/register_veiw.dart';

class login extends StatefulWidget {
  login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  void signin() {}
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
            child: SafeArea(
                child: Center(
                    child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              "assets/denta logo.png",
              height: 80,
            ),
            SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                        fontFamily: 'Galdeano',
                        fontSize: 20,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            mytext(
              ic: Icon(Icons.mail),
              controller: email,
              hinttext: "email",
              obsecureText: false,
              keyb: TextInputType.emailAddress,
            ),
            mytext(
              ic: Icon(Icons.lock),
              controller: password,
              hinttext: "password",
              obsecureText: true,
              keyb: TextInputType.visiblePassword,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot password?",
                    style: TextStyle(
                        fontFamily: 'Galdeano',
                        color: Colors.black,
                        fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            MyButton(
              onTap: signin,
              text: "Login",
              co: Colors.blue,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "or continue with:",
              style: TextStyle(
                  color: Color.fromARGB(143, 0, 0, 0), fontFamily: 'Galdeano'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Image.asset(
                    "assets/google logoo.png",
                    height: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Image.asset(
                    "assets/apple logoo.png",
                    height: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Image.asset(
                    "assets/face logo.png",
                    height: 30,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dont have an account ?",
                    style:
                        TextStyle(color: Colors.black, fontFamily: 'Galdeano')),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => registerPage()));
                  },
                  child: Text(
                    " Sign up",
                    style:
                        TextStyle(color: Colors.blue, fontFamily: 'Spectral'),
                  ),
                )
              ],
            )
          ],
        )))),
      ),
    );
  }
}
