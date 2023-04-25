import 'package:firebase_auth_app_template/screens/feature_1.dart';
import 'package:firebase_auth_app_template/screens/feature_2.dart';
import 'package:firebase_auth_app_template/screens/feature_3.dart';
import 'package:firebase_auth_app_template/screens/feature_4.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

/// Bottom Navigation bar. Used to switch between screens with the Screens
class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

/// Bottom navigation bar, to add more screens, add them to screens and add a
/// NavigationDestination to desitinatons.
class _ScreensState extends State<Screens> {
  int index = 0;
  // Input screens here with their components
  final screens = [
    const FeatureOne(),
    const FeatureTwo(),
    const FeatureThree(),
    const FeatureFour()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue[400],
        ),
        child: NavigationBar(
            selectedIndex: index,
            onDestinationSelected: (index) => setState(() {
                  this.index = index;
                  // print(index);
                }),
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home),
                label: "Home",
                selectedIcon: Icon(Icons.home_filled),
              ),
              NavigationDestination(
                icon: Icon(Icons.person_2),
                label: "Feature 2",
                selectedIcon: Icon(Icons.person_2_outlined),
              ),
              NavigationDestination(
                icon: Icon(Icons.people_alt),
                label: "Feature 3",
                selectedIcon: Icon(Icons.people_alt_outlined),
              ),
              NavigationDestination(
                icon: Icon(Icons.settings),
                label: "Feature 4",
                selectedIcon: Icon(Icons.settings),
              ),
            ]),
      ),
    );
  }
}
