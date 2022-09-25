

import 'package:flutter/material.dart';

class TicketWidget extends StatelessWidget {
  const TicketWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          SizedBox(height: 120),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.2)
                )
              ]
            ),
            margin: EdgeInsets.symmetric(horizontal: 16),
            height: 300,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)
                          )
                        ),
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text("ABA - LAGOS", style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700,
                              color: Colors.blueGrey
                            ),),
                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text("Estimated fare and time to reach destination", style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400,
                                  color: Colors.grey
                              ),),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)
                          )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("LUXURY"),
                            SizedBox(height: 10,),
                            Icon(Icons.car_crash_sharp),

                            SizedBox(height: 60,),

                            Text("100KM"),

                            Divider(

                            ),

                            Text("NGN 180 - NGN 200"),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                Positioned(
                  bottom: 90, left: -15,
                  child: Container(
                    height: 35, width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(1000),
                    ),
                  )
                ),

                Positioned(
                    bottom: 92, left: -15,
                    child: Container(
                      height: 30, width: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(1000),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(-10, 0),
                            blurRadius: 20, spreadRadius: 1
                          )
                        ]
                      ),
                    )
                ),


                Positioned(
                  left: 30, right: 30,
                  bottom: 95,
                  child: Row(
                    children: [
                      Text("9h"),

                      SizedBox(width: 10,),

                      Spacer(),

                      SizedBox(width: 10,),

                      Text("9h"),
                    ],
                  ),
                ),


                Positioned(
                    bottom: 90, right: -15,
                    child: Container(
                      height: 35, width: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(1000),
                      ),
                    )
                ),

                Positioned(
                    bottom: 92, right: -15,
                    child: Container(
                      height: 30, width: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(1000),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                offset: Offset(10, 0),
                                blurRadius: 20, spreadRadius: 1
                            )
                          ]
                      ),
                    )
                ),
              ],
            ),
          )


        ],
      ),
    );
  }
}
