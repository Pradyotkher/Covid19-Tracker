import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'statusScreen.dart';
import 'computation.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'navigation_bar.dart';
class WaitingScreen extends StatefulWidget {
  @override
  _WaitingScreenState createState() => _WaitingScreenState();
}

class _WaitingScreenState extends State<WaitingScreen> {
  GetInfo getInfo= GetInfo();
void getInformationData() async{
  var data = await getInfo.getDecodeData();
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return NavigationPage(status: data);
  }));
}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getInformationData();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.grey,
          size: 80,
        ),

      ),
    );
  }
}

//Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            SizedBox(
//              height: 40,
//            ),
//            Container(
//              child: Image(
//                image: AssetImage('images/2650005.jpg'),
//              ),
//            ),
//            SizedBox(
//              height: 20,
//            ),
//            Text(
//              'Beware, you might be next!',
//              style: TextStyle(
//                fontSize: 30,
//                color: Colors.grey,
//                fontWeight: FontWeight.bold,
//              ),
//            )
//          ],
//        ),