

import 'package:flutter/material.dart';

class PaymentHomePage extends StatefulWidget {
  const PaymentHomePage({super.key});

  @override
  State<PaymentHomePage> createState() => _PaymentHomePageState();
}

class _PaymentHomePageState extends State<PaymentHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   leading: Icon(Icons.calendar_month),
      //   title: Text("Make a Payment"),
      //   elevation: 4,
      //   backgroundColor: Colors.white,
      //   actions: [
      //     IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
      //   ],
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Card(
                  elevation: 1,
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(Icons.calendar_month),
                        Padding(
                          padding: const EdgeInsets.only( left: 15.0),
                          child: Text("Make a Payment"),
                        ),
                        Expanded(child: Container()),
                        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Text("Payment History"),
              Container(
                height: MediaQuery.of(context).size.height*0.63,
                child: ListView(
                  children: [
                    Card(
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 7, 20, 213),
                            child: Text(
                              "\$",
                              style: TextStyle(
                                color: Colors.white
                              ),
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only( left: 15.0),
                            child: Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Date"),
                                  Text("Pay premium \$430 to #123456789"),
                                ],
                              ),
                            ),
                          ),
                          
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
        ),
    );
  }
}