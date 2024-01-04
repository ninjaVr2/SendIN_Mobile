
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 16
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children:[
                      Container(
                        width: MediaQuery.of(context).size.width ,
                        height: 300,
                      ),
                      Container(
                      //  color: Color.fromARGB(255, 51, 39, 186),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 250,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 21, 15, 84),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(""),
                      ),
                      Positioned(
                        top: 5,
                        left: -60,
                        child: Card(
                          clipBehavior: Clip.none,
                          elevation: 3,
                          shadowColor: Colors.transparent,
                          color: Color.fromARGB(255, 51, 39, 186),
                          shape: RoundedRectangleBorder(),
                          child: Container(
                            width: 400,
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 35
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Policy Number"),
                                          ColoredBox(
                                            color: Colors.yellow,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("Gold"),
                                            ),
                                            )
                                        ],
                                      ),
                                      Text("123456789")
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 35
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Something"),
                                      Text("Something bigger"),
                                      Divider(
                                        color: Colors.white,
                                        height: 40,
                                      ),
                                      Row(),
                                      Row(),
                                      SizedBox(height: 20,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ElevatedButton(onPressed: (){}, child: Text("Policy Detail")),
                                          ElevatedButton(onPressed: (){}, child: Text("Make a Payment"))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]
                    ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 20
                  ),
                  child:Text("Our Recommended Products For You"),
                ),
                Container(
                  //width: MediaQuery.of(context).size.width*0.9,
                  height: MediaQuery.of(context).size.height*0.2,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Text("Card 1"),
                      Text("Card 2"),
                      Text("Card 3"),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 20
                  ),
                  child:Text("News & Updates"),
                ),
                Container(
                  //height: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    vertical: 10
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Image 1"),
                          Text("Card 1"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Image 2"),
                          Text("Card 2"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Image 3"),
                          Text("Card 3"),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          )
          ),
    );
  }
}