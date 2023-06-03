import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 40,),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("lib/assets/images/formal.jpg"),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(8, 5),
                    color: Colors.deepOrange.withOpacity(.2),
                    spreadRadius: 2,
                    blurRadius: 18, 
                  )
                ]
              ),
              child: ListTile(
                title: const Text("Name"),
                subtitle: const Text("Ahmed"),
                leading: Icon(CupertinoIcons.person),
                trailing: Icon(Icons.arrow_forward, color: Colors.grey,),
                tileColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(8, 5),
                    color: Colors.deepOrange.withOpacity(.2),
                    spreadRadius: 2,
                    blurRadius: 18, 
                  )
                ]
              ),
              child: ListTile(
                title: const Text("Whatssapp"),
                subtitle: const Text("0893123456789"),
                leading: Icon(CupertinoIcons.phone_circle),
                trailing: Icon(Icons.arrow_forward, color: Colors.grey,),
                tileColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(8, 5),
                    color: Colors.deepOrange.withOpacity(.2),
                    spreadRadius: 2,
                    blurRadius: 18, 
                  )
                ]
              ),
              child: ListTile(
                title: const Text("Alamat"),
                subtitle: const Text("Indramayu"),
                leading: Icon(CupertinoIcons.location_circle),
                trailing: Icon(Icons.arrow_forward, color: Colors.grey,),
                tileColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(8, 5),
                    color: Colors.deepOrange.withOpacity(.2),
                    spreadRadius: 2,
                    blurRadius: 18, 
                  )
                ]
              ),
              child: ListTile(
                title: const Text("Email"),
                subtitle: const Text("ahmed@gmail.com"),
                leading: Icon(CupertinoIcons.mail),
                trailing: Icon(Icons.arrow_forward, color: Colors.grey,),
                tileColor: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: (){}, child: const Text("Edit Profile"),)
          ],
        ),
      ),
    );
  }
}