
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
                    vertical: 20
                  ),
                  child: Stack(
                    children:[
                      Container(
                      //  color: Color.fromARGB(255, 51, 39, 186),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 250,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 51, 39, 186),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(""),
                      ),
                      Card(
                        elevation: 3,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(),
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