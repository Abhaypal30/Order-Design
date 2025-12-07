import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:orderdesign/Colors/colors.dart';
import 'package:orderdesign/Home/bottom_pages/container_move/containers.dart';
import 'package:orderdesign/Home/calender.dart';
import 'package:orderdesign/widgets/Big_text.dart';
import 'package:orderdesign/widgets/small_text.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('MMMM, dd y');
    final DateFormat formatter1 = DateFormat('LLL, y');
    final String formatted = formatter.format(now);
    final String formattedmonth = formatter1.format(now);
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 RichText(
  text: TextSpan(
    children: [
      TextSpan(
        text: 'Welcome, ',
        style: TextStyle(
          fontSize: 20,
          color: const Color.fromARGB(255, 90, 88, 88),
          fontWeight: FontWeight.normal,
        ),
      ),
      TextSpan(
        text: 'Mypcot !!',
        style: TextStyle(
          fontSize: 23,
          color: Appcolor.color4,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  ),
),
const SizedBox(height: 5,),
                  SmallText(
                    text: 'here is dashboard.....',
                    size: 16,
                    color: const Color.fromARGB(255, 162, 158, 158),
                  ),
                ],
              ),
             Padding(
  padding: const EdgeInsets.only(right: 8.0, top: 8),
  child: Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 8,
          offset: Offset(0, 2),
          spreadRadius: 0,
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Image.asset("assets/images/search1.png",
fit: BoxFit.cover,      )
    ),
  ),
),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Flexible(child: ContainerPage()),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallText(
                    text: formatted,
                    size: 12,
                    color: Color(0xff2c3d63),
                  ),
                  BigText(text: 'Today'),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10.0,
                          blurStyle: BlurStyle.outer,
                          spreadRadius: -08),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("TIMELINE"), Icon(Icons.arrow_drop_down)],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.25,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10.0,
                          blurStyle: BlurStyle.outer,
                          spreadRadius: -08),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/images/Group911.svg',
                    ),
                    Text(
                      formattedmonth.toUpperCase(),
                    ),
                  ],
                ),
              ),
            ],
          ),
         HorizontalCalendar (),
          // SizedBox(
          //   height: 20,
          // ),
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(18),
            child: Container(
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.22,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          BigText(text: 'New order Created', color: Color(0xff2C3D63), size: 19,),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SmallText(
                        text: 'New Order create with Order',
                        color: Colors.black,
                        size: 15,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SmallText(
                        text: '09:00 AM',
                        color: Appcolor.color8,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(Icons.arrow_forward_rounded, color: Appcolor.color8)
                    ],
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffFE804E)
                    ),
                    child: Center(child: SvgPicture.asset("assets/images/Group900.svg",  width: 60,height: 60,)),
                  )
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
