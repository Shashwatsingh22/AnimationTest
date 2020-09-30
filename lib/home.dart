import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToHome extends StatefulWidget {
  ToHome({Key key}) : super(key: key);

  @override
  _ToHomeState createState() => _ToHomeState();
}

class _ToHomeState extends State<ToHome> with SingleTickerProviderStateMixin {

  var controler;
  var animation;

  @override
  void initState() {
    super.initState();
    final player = AudioCache();
    player.play("taki.mp3");
    controler = AnimationController(
      vsync: this,
      duration: Duration(seconds: 32),
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
    int intControl=(animation.value*10).round();
    return  
         Container(
            width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
           color:Colors.white,
           child: Container(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
           color:Color.fromRGBO(204*intControl, 246*intControl, 200*intControl, 10),
           child: Column(
            children : [
             Card(
            elevation: 15*animation.value,
            child: Container(
            width:MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height*0.333,
            color:Color.fromRGBO(250*intControl, 190*intControl, 167*intControl, 10),
            child: Center(
              child: Text(
                       "Liked 😍 it !!",
                       style:GoogleFonts.slackey(
                       color: Color(0xFFFCFCFC),
                       decoration:TextDecoration.none,
                       fontSize:30*animation.value,
                   ),
                   ),
            ),
                ),   
             ),
             
             Container(
            width:MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height*0.333,
            decoration: BoxDecoration(
                 image:DecorationImage(
                 fit:BoxFit.cover,
                 image: AssetImage('assets/main_image.gif'),
               ),
               ),
               
               ),
      Card(
        elevation: 15 * animation.value,
        child: GestureDetector(
          onTap: () async {
            animation.forward(from: 0.6);
          },
           child:  Container(
            width:MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height*0.314,
            color:Color.fromRGBO(156*intControl, 173*intControl, 164*intControl, 10),
           child: Center(
             child: Text(
                         "👆 Tap Play Again !!",
                         style:GoogleFonts.slackey(
                         color: Color(0xFFFCFCFC),
                         decoration:TextDecoration.none,
                         fontSize:30*animation.value,
                     ),
                     ),
           ),
            )
            ),
      )]
           ),
         ));
  }
}
