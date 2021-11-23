import 'package:flutter/material.dart';
import './datalist.dart';
import './monitoring.dart';
import './profil.dart';
import './about.dart';

class HomeMenu extends StatefulWidget {
  final String nama;
  final String password;
  const HomeMenu({ Key? key, required this.nama, required this.password}) : super(key: key);

  @override
  _HomeMenuState createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
   int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [new DataList(), new Monitoring(), new Profil(), new About()];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar( backgroundColor: Color(0xffFFFFFF),
        title: Text('Home', style: TextStyle(color: Colors.blue)), 
        ),
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _bottomNavCurrentIndex = index;
            });
          },
          currentIndex: _bottomNavCurrentIndex,
          items: [
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.ballot_outlined,
                color: Colors.blue,
              ),
              icon: new Icon(
                Icons.ballot_outlined,
                color: Colors.grey,
              ),
              title: new Text('Data List Perangkat',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 0
                          ? Colors.blue
                          : Colors.grey)),
            ),
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.search,
                color: Colors.blue,
              ),
              icon: new Icon(
                Icons.search,
                color: Colors.grey,
              ),
              title: new Text('Monitoring',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 1
                          ? Colors.blue
                          : Colors.grey)),
            ),
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.person,
                color: Colors.blue,
              ),
              icon: new Icon(
                Icons.person,
                color: Colors.grey,
              ),
              title: new Text('Profil Pengguna',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 2
                          ? Colors.blue
                          : Colors.grey)),
            ),
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.perm_device_info_rounded,
                color: Colors.blue,
              ),
              icon: new Icon(
                Icons.perm_device_info_rounded,
                color: Colors.grey,
              ),
              title: new Text('About',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 3
                          ? Colors.blue
                          : Colors.grey)),
            ),
          ],
        ));
  }
}
