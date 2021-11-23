import 'package:flutter/material.dart';
import 'travo2.dart';
import 'travo1.dart';

class DataList extends StatefulWidget {
  @override
  _DataListState createState() => new _DataListState();
}

class _DataListState extends State<DataList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: SafeArea(
      child: new Container(
          color: Colors.white,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    clipBehavior: Clip.antiAlias,
                    child: 
                    Column(
                      children: [
                        ListTile(
                          title: const Text('Nama Perangkat : Travo 1'),
                        subtitle: Text(
                            'Posisi Penempatan/Alamat Perangkat : ',
                            style: TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                          ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('JL. Raya Bromo no.24',
                            style: TextStyle(color: Colors.black.withOpacity(0.6)),
                          ), 
                        ),
                        ButtonBar(
                          alignment: MainAxisAlignment.start,
                          children: [
                            // ignore: deprecated_member_use
                            RaisedButton(
                           child: Text("Information detail"),
                            onPressed: (){
                         Navigator.push(context, MaterialPageRoute(
                         builder: (context) => Travo1()
                             ));
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ), 
                  Card(
                    clipBehavior: Clip.antiAlias,
                    child: 
                    Column(
                      children: [
                        ListTile(
                          title: const Text('Nama Perangkat : Travo 2'),
                          subtitle: Text(
                            'Posisi Penempatan/Alamat Perangkat : ',
                            style: TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Jl. Raya Bojongsoang no.32',
                            style: TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                        ),
                        ButtonBar(
                          alignment: MainAxisAlignment.start,
                          children: [
                            // ignore: deprecated_member_use
                            RaisedButton(
                           child: Text("Information detail"),
                            onPressed: (){
                         Navigator.push(context, MaterialPageRoute(
                         builder: (context) => Travo2()
                             ));
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  
                ]),
          )),
    ));
  }
}
