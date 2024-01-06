

 import 'package:flutter/material.dart';

 bottomsheet(BuildContext context, Widget widget){
  showModalBottomSheet(
     context: context,
     builder: (builder) {
          return Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height *0.6,
                  color: Colors.white,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                    )
                  ),
                  child:widget
                );
     },);
 }

//  Widget BottomContainer(BuildContext context){
//   return Container(
//     width: MediaQuery.of(context).size.width,
//     height: MediaQuery.of(context).size.height *0.6,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(20),
//         topRight: Radius.circular(20)
//       )
//     ),
//     child:widget
//   );
//  }