import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_app_template/navigation_screen.dart';
import 'package:firebase_auth_app_template/screens/feature_1.dart';
import 'package:firebase_auth_app_template/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  // When firebase is created uuncomment these lines

  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FireFlutter Template',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const SignIn(),

      /// Uncomment this line and replace the home when firebase is intialized
      // home: StreamBuilder<User?>(
      //   stream: FirebaseAuth.instance.authStateChanges(),
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData) {
      //       return const NavBar();
      //     } else {
      //       return const Login();
      //     }
      //   },
      // ),

      routes: {
        '/screens': (context) => const Screens(),
        '/feature1': (context) => const FeatureOne(),
      },
    );
  }
}
