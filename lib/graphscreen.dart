import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/rendering.dart';
class GraphScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'CURRENT STATUS WORLDWIDE',
          ),
        ),
      ),
      body: Charts(),
    );
  }
}
class Charts extends StatefulWidget {
  @override
  _ChartsState createState() => _ChartsState();
}

class _ChartsState extends State<Charts> {

  List<PieChartSectionData> _sections = List<PieChartSectionData>();
  List<PieChartSectionData> _list= List<PieChartSectionData>();
@override
  void initState() {
    // TODO: implement initState
}
  @override
  Widget build(BuildContext context) {
    PieChartSectionData _item1= PieChartSectionData(
      showTitle: true,
      color: Colors.blueAccent,
      value: 42,
      title:'42 %',
      radius: 150,
      titleStyle: TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
    );
    PieChartSectionData _item2= PieChartSectionData(
      showTitle: true,

      color: Colors.red,
      value: 6,
      title:'6 %',
      radius: 150,
      titleStyle: TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
    );
    PieChartSectionData _item3= PieChartSectionData(
      showTitle: true,
      color: Colors.green,
      value: 53,
      title:'53 %',
      radius: 150,
      titleStyle: TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
    );
    _sections=[_item1, _item2,_item3];

    PieChartSectionData _itemdeath= PieChartSectionData(
      showTitle: true,
      color: Colors.red,
      value: 2,
      title:'2%',
      radius: 80,
      titleStyle: TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
    );
    PieChartSectionData _itemRecov= PieChartSectionData(
      showTitle: true,
      color: Colors.blue,
      value: 42.4,
      title:'42.4%',
      radius: 80,
      titleStyle: TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
    );
    PieChartSectionData _itemActive= PieChartSectionData(
      showTitle: true,
      color: Colors.green,
      value: 55.6,
      title:'55.6%',
      radius: 80,
      titleStyle: TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
    );
    _list=[_itemActive,_itemdeath,_itemRecov];
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.green
                  ),
                ),
                SizedBox(width: 15,),

                Text(
                  'Confirmed Cases',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.red
                  ),
                ),
                SizedBox(width: 15,),
                Text(
                    'Death Cases',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blue
                  ),
                ),
                SizedBox(width: 15,),

                Text(
                    'Recovered Cases',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],

        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: AspectRatio(aspectRatio: 1,
            child:PieChart(PieChartData(
              sections:_sections,
              borderData: FlBorderData(show: false),
              centerSpaceRadius: 50,
              sectionsSpace: 20,
            ),
            ) ,
          ),
        ),
        SizedBox(
          height:10
        ),
        Container(
          width: double.infinity,
          height: 1000,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xff272B4D),
            borderRadius: BorderRadius.only(topRight: Radius.circular(100)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                'COVID19 IN INDIA',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                child: AspectRatio(aspectRatio: 1,
                  child:PieChart(PieChartData(
                    sections:_list,
                    borderData: FlBorderData(show: false),
                    centerSpaceRadius: 30,
                    sectionsSpace: 10,
                  ),
                  ) ,
                ),
              ),

              Text(
                  'India has shown an alarming rise in COVID19 cases, statistics show that it took 109 days for India to reach 1 Lakh cases, but it took less than 10 days to reach 1.5 Lakhs, this is an alarming situation. The graph below shows the day wise increase in cases in the month of May. ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: Image(
                  image: NetworkImage('https://images.indianexpress.com/2020/05/explained-9.jpg'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
