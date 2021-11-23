import 'package:flutter/material.dart';

class Travo2 extends StatefulWidget {
  @override
  _Travo2State createState() => new _Travo2State();
}

class _Travo2State extends State<Travo2> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar( backgroundColor: Color(0xffFFFFFF),
      iconTheme: IconThemeData(color: Colors.black),
        title: Text('Travo 2', style: TextStyle(color: Colors.blue)), 
        ),
        body: ListView(
          children: <Widget>[
            _top(),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                
                  
                ],
              ),
              ),
              SizedBox(height: 20.0),
              Container(
                height:200.0,
                child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 3/2),
                children: <Widget>[
                  _gridItem(Icons.timer_sharp),
                  _gridItem1(Icons.alarm_sharp),
                  _gridItem2(Icons.download_rounded),
                  _gridItem3(Icons.share_outlined),
                  _gridItem4(Icons.timer),
                  _gridItem5(Icons.av_timer_rounded),
                ],
                 ),
                 )
          ],
        )
    );
  }
}

_gridItem(icon) {
  return Column(
    children: <Widget> [
      CircleAvatar(
        child: Icon(
          icon, size: 16.0,
          color: Colors.white,
        ),
        backgroundColor: Colors.blueAccent.withOpacity(0.9),
      ),
      SizedBox(height:10.0),
      Text(
        "Statistics", 
      style: TextStyle(
        fontSize: 11.0,
      ),
      )
    ],
  );
}

_gridItem1(icon) {
  return Column(
    children: <Widget> [
      CircleAvatar(
        child: Icon(
          icon, size: 16.0,
          color: Colors.white,
        ),
        backgroundColor: Colors.blueAccent.withOpacity(0.9),
      ),
      SizedBox(height:10.0),
      Text(
        "Alarm", 
      style: TextStyle(
        fontSize: 11.0,
      ),
      )
    ],
  );
}

_gridItem2(icon) {
  return Column(
    children: <Widget> [
      CircleAvatar(
        child: Icon(
          icon, size: 16.0,
          color: Colors.white,
        ),
        backgroundColor: Colors.blueAccent.withOpacity(0.9),
      ),
      SizedBox(height:10.0),
      Text(
        "Download", 
      style: TextStyle(
        fontSize: 11.0,
      ),
      )
    ],
  );
}

_gridItem3(icon) {
  return Column(
    children: <Widget> [
      CircleAvatar(
        child: Icon(
          icon, size: 16.0,
          color: Colors.white,
        ),
        backgroundColor: Colors.blueAccent.withOpacity(0.9),
      ),
      SizedBox(height:10.0),
      Text(
        "Share", 
      style: TextStyle(
        fontSize: 11.0,
      ),
      )
    ],
  );
}

_gridItem4(icon) {
  return Column(
    children: <Widget> [
      CircleAvatar(
        child: Icon(
          icon, size: 16.0,
          color: Colors.white,
        ),
        backgroundColor: Colors.blueAccent.withOpacity(0.9),
      ),
      SizedBox(height:10.0),
      Text(
        "Timer", 
      style: TextStyle(
        fontSize: 11.0,
      ),
      )
    ],
  );
}

_gridItem5(icon) {
  return Column(
    children: <Widget> [
      CircleAvatar(
        child: Icon(
          icon, size: 16.0,
          color: Colors.white,
        ),
        backgroundColor: Colors.blueAccent.withOpacity(0.9),
      ),
      SizedBox(height:10.0),
      Text(
        "Countdown", 
      style: TextStyle(
        fontSize: 11.0,
      ),
      )
    ],
  );
}

_top() {
  return Container(
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Colors.blueAccent,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30.0),
        bottomRight: Radius.circular(30.0),
      )
    ),
    child: Column(
      children: <Widget>[    
            DataTable(  
              columns: [  
                DataColumn(label: Text(  
                    'ENERGY NOW',  
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white)  
                )
                ),  
                DataColumn(label: Text(  
                    'CURRENT',  
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white)  
                )),  
                DataColumn(label: Text(  
                    'VOLTAGE',  
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white)  
                )),  
              ],  
              rows: [  
                DataRow(cells: [  
                  DataCell(Text('W')),  
                  DataCell(Text('A')),  
                  DataCell(Text('V')),  
                ]),  
                DataRow(cells: [  
                  DataCell(Text('0')),  
                  DataCell(Text('0')),  
                  DataCell(Text('210.39')),  
                ]),    
              ],  
            ),  
          ],
      ),
  );
}