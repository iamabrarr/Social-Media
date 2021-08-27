import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:scoialmedia/Views/ChatScreen/ChatScreen.dart';
import 'package:scoialmedia/Views/MyProfileScreen/MyProfileScreen.dart';
import 'package:scoialmedia/Views/SearchScreen/SearchScreen.dart';
import '../HomeScreen/Home.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _isSelectedIndex = 0;
  List<Widget> _widgetOptions = [
    Body(),
    SearchScreen(),
    ChatScreen(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_isSelectedIndex),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                MdiIcons.homeVariantOutline,
              ),
              label: " ",
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.search,
              ),
              label: " ",
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(null),
            //   label: "",
            // ),
            BottomNavigationBarItem(
              icon: const Icon(MdiIcons.chatOutline),
              label: " ",
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.person_outline,
              ),
              label: " ",
            ),
          ],
          selectedItemColor: Colors.purple[700],
          unselectedItemColor: Colors.grey,
          currentIndex: _isSelectedIndex,
          onTap: (index) {
            setState(() {
              _isSelectedIndex = index;
            });
          },
        ),
      ),
      // floatingActionButtonLocation:
      //     FloatingActionButtonLocation.miniCenterDocked,
      // floatingActionButton: FloatingActionButton(
      //   elevation: 5,
      //   backgroundColor: Colors.purple,
      //   child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
      //   onPressed: () {},
      // ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.purple[800]),
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
            icon: Image.asset(
              'assets/Icons/directmsg.png',
              height: 25,
              width: 25,
            ),
            onPressed: () {}),
      ],
    );
  }
}
