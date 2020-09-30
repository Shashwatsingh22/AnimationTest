import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

  var controler;
  var animation;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:5), () => Navigator.pushNamed(context,"/home"));

    controler = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );

    animation = CurvedAnimation(parent: controler, curve: Curves.easeInToLinear)
      ..addListener(() {
        setState(() {
        });
      });

    controler.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controler.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  Container(
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         decoration: BoxDecoration(
           image:DecorationImage(
           fit:BoxFit.cover,
           image: AssetImage('assets/splash_main.jpg'),
         ),
         ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Center(
               child: Container(
                 width: MediaQuery.of(context).size.width*0.5,
                 height: MediaQuery.of(context).size.height*0.3,
                 decoration: BoxDecoration(
               image:DecorationImage(
               fit:BoxFit.cover,
               image: AssetImage('assets/splash_logo2.gif'),
             ),
             ),
               )
             ),

             Center(
               child:Container(
                 width: MediaQuery.of(context).size.width*0.6*animation.value,
                 height: MediaQuery.of(context).size.height*0.2*animation.value,
                 margin: EdgeInsets.only(top: 50),
                 //color: Colors.amber,
                 child: Center(
                   child: Text(
                     "Welcome To Animation World 😍😍",
                     style:GoogleFonts.slackey(
                     color: Color(0xFFFCFCFC),
                     decoration:TextDecoration.none,
                     fontSize:30*animation.value,
                 ),),
                 ),
               ) ,),
               Center(
               child:Container(
                 width: MediaQuery.of(context).size.width*0.8*animation.value,
                 height: MediaQuery.of(context).size.height*0.2*animation.value,
                 margin: EdgeInsets.only(top: 50),
                 //color: Colors.amber,
                 child: Center(
                   child: Text(
                     "Let's Goo !! 👉👉",
                     style:GoogleFonts.slackey(
                     color: Color(0xFFFCFCFC),
                     decoration:TextDecoration.none,
                     fontSize:30*animation.value,
                 ),),
                 ),
               ) ,)
           ],
         ),
    );
  }
}