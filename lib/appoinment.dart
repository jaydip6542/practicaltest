import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Appoinment   extends StatefulWidget {
  const Appoinment({Key? key}) : super(key: key);

  @override
  State<Appoinment> createState() => _AppoinmentState();
}

class _AppoinmentState extends State<Appoinment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffc8cef0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 60, left: 20, right: 20),
                      height: 30,
                      width: 25,
                      child: Image.asset(
                        'assest/backbutton.png',
                        color: Colors.blue,
                      )
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 150),
              height: 50,
              width: 50,
              child: Center(
                child: Image.asset('assest/righticon.png',color: Color(0xFF204be9),),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Text('Thank You!',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 15),
              child: Text('Your Appoinment Created',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 15),
              child: Text('You booked an appoinment on April 20, at 02:00 PM',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                ),
              ),
            )

          ],
        ),

      ),
      bottomNavigationBar: Container(
        height: 50,
        width: MediaQuery.of(context).size.width-110,
        margin: EdgeInsets.only(left: 20,right: 20),
        decoration: BoxDecoration(
            color: Color(0xff0066fb),
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text('Done',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold

              ),
            )
        ),
      ),
    );
  }
}
