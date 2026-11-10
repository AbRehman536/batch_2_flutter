import 'package:flutter/material.dart';

class AnimationsScreen extends StatefulWidget {
  const AnimationsScreen({super.key});

  @override
  State<AnimationsScreen> createState() => _AnimationsScreenState();
}

class _AnimationsScreenState extends State<AnimationsScreen> {
  bool animate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
        setState(() {
          animate = !animate;
        });
      },child: Icon(animate ? Icons.pause : Icons.play_arrow),),
      body: Center(
        child:Column(
          children: [
            ///Animated Container
            Text("Animated Container", style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20
            ),),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                setState(() {
                  animate = !animate;
                });
              },
              child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                curve: Curves.easeInOut,
                width: animate ? 220 : 120,
                height: animate ? 120 : 70,
                decoration: BoxDecoration(
                  color: animate ? Colors.red : Colors.green,
                  borderRadius: .circular(animate ? 40 : 10)
                ),
              ),
            ),
            ///Animated Opacity
            Text("Animated Opacity", style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20
            ),),
            SizedBox(height: 10,),
            AnimatedOpacity(
                opacity: animate ? 1 : 0.2,
                duration: Duration(seconds: 1),
                child: FlutterLogo(size: 80,),
            ),
            ///Animated Align
            Text("Animated Align", style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20
            ),),
            SizedBox(height: 10,),
            AnimatedAlign(
                alignment: animate ? Alignment.centerRight : Alignment.centerLeft,
                duration: Duration(seconds: 1),
                child: Icon(Icons.person,size: 80,),
              ),

            ///Animated Scale
            Text("Animated Scale", style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20
            ),),
            SizedBox(height: 10,),
            AnimatedScale(
                scale: animate ? 2 : 1,
                duration: Duration(seconds: 1),
                child: Icon(Icons.favorite,color: Colors.red,size: 50,),
            ),
            ///Animated Rotation
            Text("Animated Rotation", style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20
            ),),
            SizedBox(height: 10,),
            AnimatedRotation(
                turns: animate ? 50 : 0,
                duration: Duration(seconds: 1),
              child: Icon(Icons.refresh,size: 50,),
            ),
            ///Animated Slide
            Text("Animated Slide", style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20
            ),),
            SizedBox(height: 10,),
            AnimatedSlide(
                offset: animate ? Offset(4, 3) : Offset.zero,
                duration: Duration(seconds: 1),
                child: Icon(Icons.settings,size: 40,),
            ),
            ///Animated CrossFade
            Text("Animated Cross Fade", style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20
            ),),
            SizedBox(height: 10,),
            AnimatedCrossFade(
                firstChild: Icon(Icons.car_crash, color: Colors.green,size: 30,),
                secondChild: Icon(Icons.star, color: Colors.yellow,size: 30,),
                crossFadeState: animate
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
                duration: Duration(seconds: 1))
          ],
        ),
      ),
    );
  }
}
