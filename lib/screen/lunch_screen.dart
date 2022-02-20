import 'package:flutter/material.dart';
class LunchScreen extends StatefulWidget {
  const LunchScreen({Key? key}) : super(key: key);

  @override
  _LunchScreenState createState() => _LunchScreenState();
}

class _LunchScreenState extends State<LunchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4),()=>Navigator.pushReplacementNamed(context, '/home_screen'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
                end: Alignment.bottomLeft,
            colors: [
              Colors.teal.shade800,
              Colors.teal.shade200
            ]
          )
        ),
        alignment: Alignment.center,
        child:
           const Center(child: Text("Azkar app",style: TextStyle(color: Colors.black54,fontSize: 26,fontWeight: FontWeight.bold),))

      ),
    );
  }
}
