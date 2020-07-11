import 'package:flutter/material.dart';
import 'statusScreen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'waiting.dart';
class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  image: DecorationImage(
                    image: NetworkImage('https://www.genengnews.com/wp-content/uploads/2020/02/Feb27_2020_CDC_Coronavirus.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(bottom: 90),
                  alignment: Alignment.bottomLeft,
                  child: TypewriterAnimatedTextKit(
                    isRepeatingAnimation: false,
                    speed: Duration(milliseconds: 500),
                    text: [
                      'COVID19 STATUS'
                    ],
                    textStyle: TextStyle(
                        color: Colors.grey.shade50,
                        fontWeight: FontWeight.w800,
                        fontSize: 40
                    ),

                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              padding: EdgeInsets.only(bottom: 20),
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: MaterialButton(
                child: Text(
                  'GET STATUS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                color: Color(0xffEA1556),
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return WaitingScreen();
                    }));
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
