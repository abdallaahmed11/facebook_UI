import 'package:flutter/material.dart';
import 'package:facebook/widgets/images.dart';
import 'login.dart';
class Screen extends StatefulWidget {
  static const String routeName = "screen";

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Login.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    body:Container(
      width: double.infinity,
      child: Column(
        children: [

            Expanded(child: Image.asset(images.applogo,width: MediaQuery.of(context).size.width*.3,)),
            Image.asset(images.meta,width: MediaQuery.of(context).size.width*.3,),


        ],
      ),
    ),




    )




    ;
  }
}
