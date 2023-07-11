import 'package:flutter/material.dart';
import 'package:uas_ppl_aplikasi_penjadwalan/register.dart';
import 'function/func_login.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uas_ppl_aplikasi_penjadwalan/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController ctl_user = TextEditingController();
  TextEditingController ctl_pwd = TextEditingController();

  showToast() {
    setState(() {
      Fluttertoast.showToast(
          msg: 'Kamu lupa passwordnya apa?',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset(
                    'images/kertajati.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: ctl_user,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    hintText: 'Input Username Anda',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                child: TextField(
                  controller: ctl_pwd,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Input Password Anda',
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Register()));
                        },
                        child: const Text(
                          'Sign up',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            fontFamily: 'Roboto',
                            color: Color.fromRGBO(40, 167, 69, 1),
                          ),
                        ),
                      )),
                  Container(
                    // margin: EdgeInsets.only(right: 0.0),
                    child: MaterialButton(
                      onPressed: () {
                        showToast();
                      },
                      child: const Text(
                        'Forget Password',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      login(context, ctl_user.text, ctl_pwd.text);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(40, 167, 69, 1),
                    ),
                    child: const Text("Login",
                        style:
                            TextStyle(fontSize: 25.0, fontFamily: 'Righteous')),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                child: Text(
                  'Dengan Mengeklik Tombol Login, Anda Menyetujui Syarat dan Ketentuan Aplikasi Kegaiatan Kertajati, Kebijakan Privasi dan Kebijakan Cookie',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // ]
      // ),
    );
  }
}
