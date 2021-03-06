import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/components/navigation_drawer_widget.dart';
import 'package:social_media_profile_screen/utilities/constants.dart';

class HavestScreen extends StatelessWidget {
  const HavestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        shadowColor: Colors.orangeAccent,
        title: Text("havest", style: kappbarTitle),
      ),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
