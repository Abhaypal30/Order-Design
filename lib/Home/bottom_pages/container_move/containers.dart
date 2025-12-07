import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orderdesign/Colors/colors.dart';
import 'package:orderdesign/widgets/Big_text.dart';



class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,

      child: CarouselSlider(
        items: [
          //1st Image of Slider
          Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Appcolor.color0,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 120,
                      height: 110,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                      ),
                      child: Center(child: SvgPicture.asset("assets/images/orders.svg", fit: BoxFit.contain,)),

                    ),
                    
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                            color: Appcolor.color5,
                            borderRadius: BorderRadius.circular(14)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: BigText(
                            text: 'Orders',
                            color: Colors.white,
                            size: 14,
                          )),
                        )),
                  ],
                ),
              ),
            ),
          Align(
  alignment: const Alignment(0.7, -1.0),
  child: Container(
    decoration: BoxDecoration(
      color: Appcolor.color5,
      borderRadius: const BorderRadius.all(
        Radius.circular(18),
      ),
    ),
    height: MediaQuery.of(context).size.height * 0.1,
    width: MediaQuery.of(context).size.width * 0.35,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 15, color: Colors.white),
        children: [
          TextSpan(text: 'You have '),
          TextSpan(
            text: '3',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          TextSpan(text: ' active'),
        ],
      ),
    ),
    Center(
      child: Text(
        'Order from',
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    ),
  ],
)
    ),
  ),
),

// Add some gap - move avatars down from -0.3 to -0.5
const Align(alignment: Alignment(0.7, -0.3), child: CircleAvatar()),
const Align(alignment: Alignment(0.5, -0.3), child: CircleAvatar()),
const Align(alignment: Alignment(0.3, -0.3), child: CircleAvatar()),


Align(
  alignment: const Alignment(0.6, 0.6), 
  child: Container(
    height: MediaQuery.of(context).size.height * 0.08,
    width: MediaQuery.of(context).size.width * 0.3,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '02',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          TextSpan(
            text: '  Pending',
            style: TextStyle(
              fontSize: 13,
              color: const Color.fromARGB(255, 31, 31, 31),
            ),
          ),
        ],
      ),
    ),
    // SizedBox(height: 4),
    BigText(
      text: 'Order From',
      size: 13,
    )
  ],
),
    ),
  ),
),
            const Align(alignment: Alignment(0.4, 0.87), child: CircleAvatar()),
            const Align(alignment: Alignment(0.5, 0.87), child: CircleAvatar()),
          ]),

          //2nd Image of Slider

          Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Appcolor.color1,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 120,
                      height: 110,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white

                      ),
                      child: Center(child: SvgPicture.asset("assets/images/TIme.svg", fit: BoxFit.contain,),),
                    ),
                    
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                        width: 130,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Appcolor.color6,
                            borderRadius: BorderRadius.circular(16)),
                        child:  Center(
                            child: BigText(
                          text: 'Subscription',
                          color: Colors.white,
                          size: 14,
                        ))),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.6, -1.0),
              child: Container(
                width: 150,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Appcolor.color6),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:RichText(
  text: TextSpan(
    
    children: [
      TextSpan(
        text: '03',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      TextSpan(text: ' deliveries', style: TextStyle(fontSize: 18, color: Colors.white)),
    ],
  ),
)
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.7, 0.10),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
 
  children: [
    RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '10',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          TextSpan(
            text: '  Active',
            style: TextStyle(
              fontSize: 13,
              color:  const Color.fromARGB(255, 73, 71, 71),
            ),
          ),
        ],
      ),
    ),
    
    BigText(
      text: 'Subscription',
      size: 13,
      color: Colors.black,
    )
  ],
),
                ),
              ),
            ),
            const Align(alignment: Alignment(0.3, -0.3), child: CircleAvatar()),
            const Align(alignment: Alignment(0.5, -0.3), child: CircleAvatar()),
            const Align(alignment: Alignment(0.7, -0.3), child: CircleAvatar()),
            Align(
              alignment: const Alignment(0.8, 0.9),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '119',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          TextSpan(
            text: '  Pending',
            style: TextStyle(
              fontSize: 13,
              color: const Color.fromARGB(255, 73, 71, 71),
            ),
          ),
        ],
      ),
    ),
    BigText(
      text: 'Deliveries',
      size: 13,
      color: Colors.black,
    )
                    ],
                  ),
                ),
              ),
            ),
          ]),

          //3rd Image of Slider
          Stack(children: [
            Container(
              width: 700,
              decoration: BoxDecoration(
                color: Appcolor.color2,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 120,
                      height: 110,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white

                      ),
                      child: Center(child: SvgPicture.asset("assets/images/customers.svg", fit: BoxFit.contain,),),
                    ),
                   
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                        width: 150,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Appcolor.color7,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: BigText(
                            text: 'View Customers',
                           color: Colors.white,
                          size: 14,
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.7, -1.0),
              child: Container(
                width: 150,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Appcolor.color7,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '15',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          TextSpan(
            text: '  New Customer',
            style: TextStyle(
              fontSize: 13,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
                      
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.8, 0.0),
              child: Container(
                width: 110,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "1.8%",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
            ),
            const Align(alignment: Alignment(0.3, -0.4), child: CircleAvatar()),
            const Align(alignment: Alignment(0.5, -0.4), child: CircleAvatar()),
            const Align(alignment: Alignment(0.7, -0.4), child: CircleAvatar()),
            const Align(alignment: Alignment(0.8, -0.4), child: CircleAvatar( backgroundColor:Colors.white, radius:  13,child: Icon(Icons.add, ),)),
            Align(
              alignment: const Alignment(0.5, 0.9),
              child: Container(
                width: 100,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                         
                             RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '10',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          TextSpan(
            text: '  Active',
            style: TextStyle(
              fontSize: 13,
              color:  const Color.fromARGB(255, 73, 71, 71),
            ),
          ),
        ],
      ),
    ),
    
   
                        ],
                      ),
                       BigText(
      text: 'Subscription',
      size: 13,
      color: Colors.black,
    )
                      
                    ],
                  ),
                ),
              ),
            ),
            const Align(
                alignment: Alignment(0.7, 0.8),
                child: CircleAvatar(
                  radius: 15,
                )),
            const Align(
                alignment: Alignment(0.8, 0.8),
                child: CircleAvatar(
                  radius: 15,
                )),
            const Align(
                alignment: Alignment(0.9, 0.8),
                child: CircleAvatar(
                  radius: 15,
                )),
          ]),
        ],
        //Slider Container properties
        options: CarouselOptions(
          // height: 180.0,
          enlargeCenterPage: true,
          // autoPlay: true,
          disableCenter: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          viewportFraction: 1,
        ),
      ),
    );
  }
}
