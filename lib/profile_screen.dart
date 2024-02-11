import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:newsbreak_app/auth_screen.dart";

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
        child: TextButton(
          onPressed: () {
            _signOut(context);
            print(
                "User signed out: ${FirebaseAuth.instance.currentUser!.email}");
          },
          child: const Text(
            "Sign Out",
            style: TextStyle(
              color: Color(0xffffffff),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _signOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      // Navigate to the login or authentication screen after sign-out
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => AuthScreen()));

      // Show snackbar after successful sign-out
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Signed Out!"),
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
    } catch (e) {
      // Handle sign-out errors
      print("Error signing out: $e");

      // Show snackbar for sign-out failure
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Sign Out failed: $e"),
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
    }
  }
}
