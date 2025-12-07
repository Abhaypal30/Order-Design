import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orderdesign/Home/bottom_pages/Home.dart';

// import 'package:project/Home/bottom_pages/container_move/container.dart';
// import 'package:project/Home/calender.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
          fontFamily: GoogleFonts.roboto().fontFamily,
          primarySwatch: const MaterialColor(
            
            0xff2c3d63,
            <int, Color>{
              50: Color(0xff2c3d63),
              100: Color(0xff2c3d63),
              200: Color(0xff2c3d63),
              300: Color(0xff2c3d63),
              400: Color(0xff2c3d63),
              500: Color(0xff2c3d63),
              600: Color(0xff2c3d63),
              700: Color(0xff2c3d63),
              800: Color(0xff2c3d63),
              900: Color(0xff2c3d63),
            },
          )),
      home: const Home_page(),
    );
  }
}
