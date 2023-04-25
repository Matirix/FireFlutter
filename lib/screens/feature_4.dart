import 'package:flutter/material.dart';
import '../custom_app_bar.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FeatureFour extends StatefulWidget {
  const FeatureFour({super.key});

  @override
  State<FeatureFour> createState() => _FeatureFourState();
}

class _FeatureFourState extends State<FeatureFour> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(title: "Feature 4"),
        body: Center(
          child: Text('Feature 4'),
        ));
  }
}
