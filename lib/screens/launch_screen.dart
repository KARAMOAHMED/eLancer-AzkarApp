import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context, '/azkar_screen');

    }
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Container(
        alignment: AlignmentDirectional.center,
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end : AlignmentDirectional.bottomEnd,
            colors: [
              Colors.brown.shade800,
              Colors.brown.shade300,
            ]
          )
        ),
         child:  const Text(" تطبيق مسبحتي  ",
        style: TextStyle(
        fontFamily: "Montserrat",
            fontSize: 24,
          fontWeight: FontWeight.bold,
      ),
      ),

      ),

    );
  }
}
