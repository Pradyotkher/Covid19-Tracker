import 'package:flutter/material.dart';
import 'statusScreen.dart';
import 'graphscreen.dart';
class NavigationPage extends StatefulWidget {
  final status;
  NavigationPage({this.status});
  int cnfrmd;
  int recovered;
  int death;

  void data(dynamic decodeData) async {
    if(decodeData==null){
        cnfrmd=0;
        recovered=0;
        death=0;
      }
      cnfrmd=decodeData['Global']['TotalConfirmed'];
      recovered=decodeData['Global']['TotalRecovered'];
      death=decodeData['Global']['TotalDeaths'];
  }
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int cnfrmd;
  int recovered;
  int death;
  void data(dynamic decodeData) async {
    setState(() {
      if(decodeData==null){
        cnfrmd=0;
        recovered=0;
        death=0;
      }
      cnfrmd=decodeData['Global']['TotalConfirmed'];
      recovered=decodeData['Global']['TotalRecovered'];
      death=decodeData['Global']['TotalDeaths'];
    });
  }

  int currentIndex=0;
  final List<Widget> children=[
    LoadingScreen(),
    GraphScreen(),
  ];
  @override
 void initState() {
    // TODO: implement initState

    data(widget.status);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,

        items: [
          BottomNavigationBarItem(

            icon: Icon(
              Icons.home,
            ),
            title: Text('Home',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq),
            title: Text(
              'Graphs',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
        onTap: (index){
          setState(() {
            currentIndex=index;
            print(currentIndex);
          });
        },
      ),
      body: children[currentIndex],
    );
  }
}
