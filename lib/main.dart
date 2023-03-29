import 'package:flutter/material.dart';
import 'package:myflutter/demos/file_http_test.dart';
import 'package:myflutter/pages/chatpage.dart';
import 'package:myflutter/pages/friendspage.dart';
import 'package:myflutter/pages/discoverpage.dart';
import 'package:myflutter/pages/minepage.dart';
import 'package:myflutter/demos/file_operation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      // home: FileOperationRoute(),
      // home: HttpTestRoute(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [ChatPage(), FriendsPage(), DiscoverPage(), MinePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        selectedFontSize: 12.0,
        currentIndex: _currentIndex,
        fixedColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/tabbar_chat.png',
                height: 20,
                width: 20,
              ),
              activeIcon: Image.asset(
                'images/tabbar_chat_hl.png',
                height: 20,
                width: 20,
              ),
              label: '微信'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/tabbar_friends.png',
                height: 20,
                width: 20,
              ),
              activeIcon: Image.asset(
                'images/tabbar_friends_hl.png',
                height: 20,
                width: 20,
              ),
              label: '通讯录'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/tabbar_discover.png',
                height: 20,
                width: 20,
              ),
              activeIcon: Image.asset(
                'images/tabbar_discover_hl.png',
                height: 20,
                width: 20,
              ),
              label: '发现'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/tabbar_mine.png',
                height: 20,
                width: 20,
              ),
              activeIcon: Image.asset(
                'images/tabbar_mine_hl.png',
                height: 20,
                width: 20,
              ),
              label: '我的'),
        ],
      ),
    );
  }
}