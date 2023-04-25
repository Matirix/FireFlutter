import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../custom_app_bar.dart';

class FeatureThree extends StatefulWidget {
  const FeatureThree({super.key});

  @override
  State<FeatureThree> createState() => _FeatureThreeState();
}

class _FeatureThreeState extends State<FeatureThree> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(title: "Feature 3"),
        body: Center(
          child: Text('Feature 3'),
        ));
  }
}
