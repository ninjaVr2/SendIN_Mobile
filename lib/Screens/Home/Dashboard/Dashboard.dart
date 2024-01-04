
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
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(55)
                          ),
                          color: Color.fromARGB(255, 51, 39, 186),
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
                                    horizontal: 35,
                                    vertical: 20
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Policy Number",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),),
                                          ColoredBox(
                                            color: Colors.orange,
                                            child: Padding(
                                              padding: const EdgeInsets.all(7.0),
                                              child: Text(
                                                "Gold", 
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12
                                                ),
                                                ),
                                            ),
                                            )
                                        ],
                                      ),
                                      Text(
                                        "123456789",
                                       style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold
                                            ))
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
                                      Text("Name",
                                       style: TextStyle(
                                              color: Colors.white
                                            
                                            )),
                                      Text("Gordon Ramsey",
                                       style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold
                                            )),
                                      Divider(
                                        color: Colors.white,
                                        height: 40,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.symmetric(
                                                  vertical: 5
                                                ),
                                                child: Text(
                                                  "Something value",
                                                  style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.white,
                                                ),
                                                  ),
                                              ),
                                              Text(
                                                "\$92.09",
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold
                                              ),)
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.symmetric(
                                                  vertical: 5
                                                ),
                                                child: Text(
                                                  "Something Due",
                                                  style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.white,
                                                ),
                                                ),
                                              ),
                                              Text(
                                                "\$1500",
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold
                                              ),
                                              )
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.symmetric(
                                                  vertical: 5
                                                ),
                                                child: Text(
                                                  "Date",
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.white,
                                                ),
                                                ),
                                              ),
                                              Text(
                                                "DD/MM/YYYY",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold
                                              ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 20,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ElevatedButton(
                                            onPressed: (){}, 
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(255, 51, 39, 186),
                                                side: BorderSide(
                                                  color: Colors.white30
                                                ),
                                                textStyle: TextStyle(
                                                  color: Colors.white
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5)
                                                ),
                                                ),
                                            child: Text(
                                              "Policy Detail",
                                              style: TextStyle(
                                                color: Colors.white
                                              ),
                                              )
                                              ),
                                          ElevatedButton(
                                            onPressed: (){}, 
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                side: BorderSide(
                                                  color: Colors.white30
                                                ),
                                                textStyle: TextStyle(
                                                  color: Colors.white
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5)
                                                ),
                                                ),
                                            child: Text(
                                              "Make a Payment",
                                              style: TextStyle(
                                                color: Color.fromARGB(255, 51, 39, 186)
                                              )
                                              )
                                              )
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
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 20
                  ),
                  child:Text(
                    "Our Recommended Products For You",
                    style: TextStyle(
                      fontSize: 15,
                  ),
                  ),
                ),
                Container(
                  //width: MediaQuery.of(context).size.width*0.9,
                  height: MediaQuery.of(context).size.height*0.22,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 280,
                        margin: EdgeInsets.symmetric(
                          horizontal: 10
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/imgs/img1.png'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              Colors.black38,
                               BlendMode.darken
                               )
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text( 
                                "Up to",
                                style: TextStyle(
                                  color: Colors.white
                                ),
                                ),
                                 Text( 
                                "40%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                                ),
                                ),
                                 Text( 
                                "Discount",
                                style: TextStyle(
                                  color: Colors.white
                                ),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                         Text( 
                                          "For you",
                                          style: TextStyle(
                                            color: Colors.white
                                          ),
                                          ),
                                           Text( 
                                          "Faamily Holiday",
                                          style: TextStyle(
                                            color: Colors.white
                                          ),
                                          )
                                      ],
                                    ),
                                    ElevatedButton(onPressed: (){}, child: Text("Take a break"))
                                  ],
                                )
                            ],
                          ),
                        )
                      ),
                      Container(
                        width: 280,
                        margin: EdgeInsets.only(
                          right: 10
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/imgs/img2.png'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              Colors.black38, 
                              BlendMode.darken
                              )
                          ),
                        ),
                        child: Text("Card 2"),
                      ),
                      Container(
                        width: 280,
                        margin: EdgeInsets.only(
                          right: 10
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/imgs/img3.png'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                            Colors.black38, 
                              BlendMode.darken)
                          ),
                        ),
                        child: Text("Card 3"),
                      ),
                      
                      // Text("Card 1"),
                      // Text("Card 2"),
                      // Text("Card 3"),
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
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(
              bottom:110.0
              ),
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 51, 39, 186),
              onPressed: (){},
              shape: CircleBorder(),
              child: Icon(
                Icons.chat_bubble_outline_outlined,
                color: Colors.white,
              ),
              ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}