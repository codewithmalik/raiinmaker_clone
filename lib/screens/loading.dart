import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/screens/login_screen.dart';
import 'package:social_media_profile_screen/utilities/constants.dart';

class LoadingScreen extends StatefulWidget {
  static final String routeName = "loading_screen";

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }

  void goToNextScreen() async {
    await Future.delayed(Duration(seconds: 5), () {
      Navigator.pushNamed(context, LoginScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              kImagePath + 'loading.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
