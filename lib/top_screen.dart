import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled/components/custom_button.dart';
import 'package:untitled/ethic_screen.dart';
import 'package:untitled/login_screen.dart';
import 'package:untitled/main.dart';
import 'package:untitled/register_screen.dart';

class TopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            width: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/icon_login.png"),
                SizedBox(
                  height: 32,
                ),
                Text(
                  "SELAMAT DATANG DI SOLUSI SPA",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 32,
                ),
                CustomButton(
                  title: "Masuk Jika Sudah Punya Akun",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                CustomButton(
                  title: "Daftar Akun Baru",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegisterScreen();
                    }));
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          fontFamily: 'Roboto'),
                      children: [
                        TextSpan(
                            text:
                                "Dengan mengetuk daftar akun baru, saya menyetujui "),
                        TextSpan(
                            text: "Etika Layanan",
                            style: TextStyle(
                                color: MyColors.primary,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return EthicScreen();
                                }));
                              }),
                        TextSpan(text: ' dari Solusi Spa.')
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
