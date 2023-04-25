import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../custom_app_bar.dart';

import 'package:flutter/src/widgets/placeholder.dart';

class FeatureOne extends StatefulWidget {
  const FeatureOne({super.key});

  @override
  State<FeatureOne> createState() => FeatureOneState();
}

class FeatureOneState extends State<FeatureOne> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(title: "Feature 1"),
        body: Center(
          child: Text('Feature 1'),
        ));
  }
}
