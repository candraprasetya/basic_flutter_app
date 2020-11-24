import 'package:basic_flutter/screen/home_screen.dart';
import 'package:basic_flutter/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 120),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email kamu",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 120),
              child: TextField(
                controller: passController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password kamu",
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                child: CustomButton(
                  text: "Masuk",
                  onTap: () {
                    if (!GetUtils.isEmail(emailController.text)) {
                      Get.snackbar("Email", "Email Tidak Valid");
                    } else if (emailController.text == "candra@gmail.com" &&
                        passController.text == "candra") {
                      Get.off(HomeScreen(),
                          arguments: [emailController.text, passController]);
                    } else {
                      Get.snackbar("Akun", "Akun tidak/belum terdaftar",
                          backgroundColor: Colors.red);
                    }
                  },
                )),
          ],
        )),
      ),
    );
  }
}
