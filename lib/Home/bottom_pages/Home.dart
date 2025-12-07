import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orderdesign/Home/bottom_pages/Customers.dart';
import 'package:orderdesign/Home/bottom_pages/Khata.dart';
import 'package:orderdesign/Home/bottom_pages/main_page.dart';
import 'package:orderdesign/Home/bottom_pages/order.dart';
// import 'package:project/Home/bottom_pages/Customers.dart';
// import 'package:project/Home/bottom_pages/khata.dart';
// import 'package:project/Home/bottom_pages/main_page.dart';
// import 'package:project/Home/bottom_pages/oder.dart';

// ignore: camel_case_types
class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  int currentTab = 0;

  List<Widget> Screen = [
    const MainPage(),
    const Customers_Page(),
    const Khata_Page(),
    const Oder_page()
  ];

  Widget CurrentScreen = const MainPage();
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    appBar: AppBar(
  elevation: 0,
  backgroundColor: Colors.white,
  leading: Padding(
    padding: const EdgeInsets.only(left: 8.0,),
    child: _buildIconButton('assets/images/first.svg', ),
  ),
  leadingWidth: 35,
  actions: [
    _buildIconButton('assets/images/Har.svg'),
    const SizedBox(width: 15),
    _buildIconButtonWithBadge(
      'assets/images/bell.svg',
      badgeCount: 2,
    ),
    const SizedBox(width: 15),
    
    Image.asset("assets/images/profile1.png", width: 60, height: 60,)
  ],
),
      body: PageStorage(
        child: CurrentScreen,
        bucket: bucket,
      ),
    floatingActionButton: FloatingActionButton(
  onPressed: () {},
  backgroundColor: const Color(0xFF2C3D63),
  elevation: 4,
  child: const Icon(
    Icons.add,
    color: Colors.white,
    size: 28,
  ),
),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        child: Container(
          color: Colors.white,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    CurrentScreen = const MainPage();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/Home.svg',
                      color: currentTab == 0
                          ? const Color(0xFF2C3D63)
                          : Colors.grey,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: currentTab == 0
                            ? const Color(0xFF2C3D63)
                            : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    CurrentScreen = const Customers_Page();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/Cust.svg',
                      color: currentTab == 1
                          ? const Color(0xFF2C3D63)
                          : Colors.grey,
                    ),
                    Text(
                      "Customer",
                      style: TextStyle(
                        color: currentTab == 1
                            ? const Color(0xFF2C3D63)
                            : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    CurrentScreen = const Khata_Page();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/Rs.svg',
                      color: currentTab == 2
                          ? const Color(0xFF2C3D63)
                          : Colors.grey,
                    ),
                    Text(
                      "Khata",
                      style: TextStyle(
                        color: currentTab == 2
                            ? const Color(0xFF2C3D63)
                            : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    CurrentScreen = const Oder_page();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/CA.svg',
                      color: currentTab == 3
                          ? const Color(0xFF2C3D63)
                          : Colors.grey,
                    ),
                    Text(
                      "Orders",
                      style: TextStyle(
                        color: currentTab == 3
                            ? const Color(0xFF2C3D63)
                            : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton(String assetPath) {
  return CircleAvatar(
    backgroundColor: Colors.white,
    radius: 20,
    child: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            spreadRadius: -2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: SvgPicture.asset(
          assetPath,
          width: 24, // Icon size inside the circle
          height: 24,
          fit: BoxFit.contain,
        ),
      ),
    ),
  );
}
Widget _buildIconButtonWithBadge(String assetPath, {int badgeCount = 0}) {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      _buildIconButton(assetPath),
      if (badgeCount > 0)
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            constraints: const BoxConstraints(
              minWidth: 20,
              minHeight: 20,
            ),
            child: Center(
              child: Text(
                badgeCount > 9 ? '9+' : badgeCount.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
    ],
  );
}
}
