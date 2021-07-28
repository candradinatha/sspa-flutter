import 'package:flutter/material.dart';
import 'package:untitled/components/custom_button.dart';
import 'package:untitled/main.dart';
import 'package:untitled/package_list_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _obscureText = true;
  bool _obscureConfirmText = true;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: MyColors.primary),
        elevation: 0.0,
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
                    "Buat Akun",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Masukan nama lengkap anda',
                      labelText: 'Nama Lengkap'),
                  keyboardType: TextInputType.name,
                  controller: _nameController,
                ),
                SizedBox(
                  height: 16,
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
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Konfirmasi kata sandi anda',
                      labelText: 'Konfirmasi Kata Sandi',
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            _obscureConfirmText = !_obscureConfirmText;
                          });
                        },
                        child: Icon(_obscureConfirmText
                            ? Icons.visibility_off
                            : Icons.visibility),
                      )),
                  controller: _passwordConfirmController,
                  obscureText: _obscureConfirmText,
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButton(
                    title: "Daftar Akun Baru",
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
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _passwordConfirmController.dispose();
    super.dispose();
  }
}
