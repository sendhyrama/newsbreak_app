import "package:flutter/material.dart";

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile Page'),
          automaticallyImplyLeading: false, // Set this property to false
        ),
        body: Center(
          child: Text('Profile Screen', style: TextStyle(fontSize: 40)),
        ));
  }
}
