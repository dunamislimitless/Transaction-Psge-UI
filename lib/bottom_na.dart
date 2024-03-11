import 'package:flutter/material.dart';
import 'package:kralen_test1/homepage.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _Index = 0;
  final List<Widget> _BottomNavigationList = [
    Container(
      child: const Center(
        child: Text(
          'Welcome \n to  \n Buy My Car \n App! \n \n go to the nest screen. ',
          style: TextStyle(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    ),
    Container(
      child: const Center(
        child: Text(
          'A little step forward!',
          style: TextStyle(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    ),
    Container(
        child: const Center(
      child: Text(
        'Transaction Status',
        style: TextStyle(
            fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    )),
    const BuyCar(),
    Container()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _BottomNavigationList[_Index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _Index,
        onTap: (int index) {
          setState(() {
            _Index = index;
          });
        },
        backgroundColor: const Color(0XFFFFFFFF),
        selectedItemColor: const Color(0XFF0B0830),
        //unselectedItemColor: const Color(0xFFE7E6EA),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'Wallets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flight_takeoff_outlined),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile ',
          ),
        ],
      ),
    );
  }
}
