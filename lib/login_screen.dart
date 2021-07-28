import 'package:flutter/material.dart';
import 'package:untitled/components/custom_button.dart';
import 'package:untitled/main.dart';
import 'package:untitled/package_list_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: MyColors.primary),
        elevation: 0.0,
        actions: [
          TextButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16))),
                    builder: (context) {
                      return SafeArea(
                        child: Container(
                          padding: EdgeInsets.only(
                            top: 8.0,
                            left: 16.0,
                            right: 16.0,
                            bottom: 16.0,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('images/icon_bottom_sheet.png'),
                              SizedBox(
                                height: 24,
                              ),
                              Container(
                                width: 600,
                                child: Text(
                                  "Hubungi Kami Menggunakan",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                width: 600,
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child:
                                          Image.asset('images/icon_phone.png'),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Image.asset(
                                          'images/icon_telegram.png'),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Image.asset('images/icon_wa.png'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Text("Lupa Kata Sandi")),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            width: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  child: Text(
                    "Masuk",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Masukan email anda', labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Masukan kata sandi',
                      labelText: 'Kata Sandi',
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(_obscureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                      )),
                  controller: _passwordController,
                  obscureText: _obscureText,
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButton(
                    title: "Masuk",
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                PackageListScreen(
                              email: _emailController.text,
                            ),
                          ),
                          (route) => false);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
