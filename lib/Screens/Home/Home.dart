import 'package:flutter/material.dart';
import 'package:sendin_mobile/Screens/Home/Dashboard/Dashboard.dart';
import 'package:sendin_mobile/Screens/Home/Payment/Payment_homepage.dart';
import 'package:sendin_mobile/Screens/Home/Profile/Profile_page.dart';
import 'package:sendin_mobile/Screens/Policy/Policy_details.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  bool PolDetails = false;
  late PageController pageController;
  String title = "Dashboard";
  int _pageIndex = 0;

  void callback(bool value){
    setState(() {
      PolDetails = value;
      title = "Policy Details";
    });
  }

  void Navitap(int page){
    if(page==0){
      setState(() {
        PolDetails = false;
        title = "Dashboard";
      });
    }
    pageController.jumpToPage(page);
  }

  void OnpageChange(int page){
    setState(() {
      switch (page) {
        case 0:
         PolDetails == false? title = "Dashboard":title = "Policy Details";
         _pageIndex = 0;
          break;
        case 1:
         title = "Payment Details";
         _pageIndex = 1;
          break;
        case 2:
         title = "Profile";
         _pageIndex = 2;
          break;
        default:
        title ="Dashboard";
      }
    });
  }

  @override
  void initState() {
    pageController=PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){},
          icon: Badge(
            backgroundColor: Colors.orange,
            child: Icon(
              Icons.rocket
              ),
          ),
            ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0
              ),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 196, 19, 6),
            ),
          )
        ],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: OnpageChange,
        children: [
          PolDetails ? PolicyDetailsPage():DashboardPage(callback: callback,),
          PaymentHomePage(),
          ProfilePage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _pageIndex,
        elevation: 4,
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color.fromARGB(255, 51, 39, 186),
        unselectedLabelStyle: TextStyle(
          color: Colors.grey
        ),
        selectedLabelStyle: TextStyle(
          color: Color.fromARGB(255, 51, 39, 186)
        ),
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 51, 39, 186),
              ),
            icon: Icon(
              Icons.home,
              color: Colors.grey,
              ),
            label: "Home"
              ),
          BottomNavigationBarItem(
            activeIcon:  Icon(
              Icons.receipt,
              color: Color.fromARGB(255, 51, 39, 186),
              ),
            icon: Icon(
              Icons.receipt,
              color: Colors.grey,
              ),
            label: "Payment"
              ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person_2,
              color: Color.fromARGB(255, 51, 39, 186)
              ),
            icon: Icon(
              Icons.person_2,
              color: Colors.grey
              ),
            label: "Profile"
              ),
        ],
        onTap: Navitap,
        ),
    );
  }
}