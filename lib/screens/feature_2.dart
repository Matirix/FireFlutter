import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../custom_app_bar.dart';

class FeatureTwo extends StatefulWidget {
  const FeatureTwo({super.key});

  @override
  State<FeatureTwo> createState() => FeatureTwoState();
}

class FeatureTwoState extends State<FeatureTwo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(title: "Feature 2"),
        body: Center(
          child: Text('Feature 2'),
        ));
  }
}
