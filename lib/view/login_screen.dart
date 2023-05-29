import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpklver4/utils/global_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage("lib/assets/images/logo.png"),
              height: size.height * 0.4, //letak gambar ke atas atau bawah
            ),
            // Text("data"),
            // Text("data"),
            Form(
                child: Container(
              padding: const EdgeInsetsDirectional.symmetric(
                  vertical: BorderSide.strokeAlignCenter),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_outline_outlined),
                        labelText: "Username",
                        hintText: "Username",
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Password",
                        hintText: "Password",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: null,
                            icon: Icon(Icons.remove_red_eye_sharp))),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Forgot Password ?"),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child:
                        ElevatedButton(onPressed: () {}, child: Text("Login")),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    )));
  }
}
