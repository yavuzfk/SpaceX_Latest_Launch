import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:spacex_latest_launch/utily/spintkit_values.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> with SpinKitValues {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpinKitFadingCube(
        color: SpinKitValues.spinKitColor,
        size: SpinKitValues.averageSize,
      ),
    );
  }
}


