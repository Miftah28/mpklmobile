import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(isDark? Icons.sunny : Icons.monochrome_photos)),
        title: Text("Home"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(isDark? Icons.sunny : Icons.monochrome_photos))
        ],
      ),
      body: Text("Profile"),
    );
  }
}